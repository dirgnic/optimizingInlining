; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_unix.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_unix.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@TIFFOpen.module = internal constant [9 x i8] c"TIFFOpen\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"%s: Cannot open\00", align 1
@_TIFFwarningHandler = global ptr @unixWarningHandler, align 8
@_TIFFerrorHandler = global ptr @unixErrorHandler, align 8
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Warning, \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFFdOpen(i32 noundef %fd, ptr noundef %name, ptr noundef %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %tif = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load ptr, ptr %mode.addr, align 8
  %2 = load i32, ptr %fd.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = inttoptr i64 %conv to ptr
  %call = call ptr @TIFFClientOpen(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef @_tiffReadProc, ptr noundef @_tiffWriteProc, ptr noundef @_tiffSeekProc, ptr noundef @_tiffCloseProc, ptr noundef @_tiffSizeProc, ptr noundef @_tiffMapProc, ptr noundef @_tiffUnmapProc)
  store ptr %call, ptr %tif, align 8
  %4 = load ptr, ptr %tif, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %fd.addr, align 4
  %6 = load ptr, ptr %tif, align 8
  %tif_fd = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 1
  store i32 %5, ptr %tif_fd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %tif, align 8
  ret ptr %7
}

declare ptr @TIFFClientOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @_tiffReadProc(ptr noundef %fd, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i32, ptr %size.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call i64 @"\01_read"(i32 noundef %1, ptr noundef %2, i64 noundef %conv)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_tiffWriteProc(ptr noundef %fd, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i32, ptr %size.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call i64 @"\01_write"(i32 noundef %1, ptr noundef %2, i64 noundef %conv)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_tiffSeekProc(ptr noundef %fd, i32 noundef %off, i32 noundef %whence) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  %whence.addr = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8
  store i32 %off, ptr %off.addr, align 4
  store i32 %whence, ptr %whence.addr, align 4
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  %2 = load i32, ptr %off.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, ptr %whence.addr, align 4
  %call = call i64 @lseek(i32 noundef %1, i64 noundef %conv, i32 noundef %3)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_tiffCloseProc(ptr noundef %fd) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  %call = call i32 @"\01_close"(i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_tiffSizeProc(ptr noundef %fd) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  store ptr %fd, ptr %fd.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  %call = call i32 @"\01_fstat"(i32 noundef %1, ptr noundef %sb)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 11
  %2 = load i64, ptr %st_size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %2, %cond.false ]
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @_tiffMapProc(ptr noundef %fd, ptr noundef %pbase, ptr noundef %psize) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %pbase.addr = alloca ptr, align 8
  %psize.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %pbase, ptr %pbase.addr, align 8
  store ptr %psize, ptr %psize.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %pbase.addr, align 8
  %2 = load ptr, ptr %psize.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal void @_tiffUnmapProc(ptr noundef %fd, ptr noundef %base, i32 noundef %size) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %base, ptr %base.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %base.addr, align 8
  %2 = load i32, ptr %size.addr, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFOpen(ptr noundef %name, ptr noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %fd = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  %0 = load ptr, ptr %mode.addr, align 8
  %call = call i32 @_TIFFgetMode(ptr noundef %0, ptr noundef @TIFFOpen.module)
  store i32 %call, ptr %m, align 4
  %1 = load i32, ptr %m, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load i32, ptr %m, align 4
  %call1 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %2, i32 noundef %3, i32 noundef 438)
  store i32 %call1, ptr %fd, align 4
  %4 = load i32, ptr %fd, align 4
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %name.addr, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFOpen.module, ptr noundef @.str, ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %fd, align 4
  %7 = load ptr, ptr %name.addr, align 8
  %8 = load ptr, ptr %mode.addr, align 8
  %call5 = call ptr @TIFFFdOpen(i32 noundef %6, ptr noundef %7, ptr noundef %8)
  store ptr %call5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare i32 @_TIFFgetMode(ptr noundef, ptr noundef) #1

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define ptr @_TIFFmalloc(i32 noundef %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  store i32 %s, ptr %s.addr, align 4
  %0 = load i32, ptr %s.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @malloc(i64 noundef %conv) #6
  ret ptr %call
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @_TIFFfree(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @free(ptr noundef %0)
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @_TIFFrealloc(ptr noundef %p, i32 noundef %s) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %s, ptr %s.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %s.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr @realloc(ptr noundef %0, i64 noundef %conv) #7
  ret ptr %call
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @_TIFFmemset(ptr noundef %p, i32 noundef %v, i32 noundef %c) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %v.addr, align 4
  %2 = load i32, ptr %c.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load ptr, ptr %p.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef %1, i64 noundef %conv, i64 noundef %4) #8
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define void @_TIFFmemcpy(ptr noundef %d, ptr noundef %s, i32 noundef %c) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %d.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i32, ptr %c.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load ptr, ptr %d.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %conv, i64 noundef %4) #8
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @_TIFFmemcmp(ptr noundef %p1, ptr noundef %p2, i32 noundef %c) #0 {
entry:
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %p1.addr, align 8
  %1 = load ptr, ptr %p2.addr, align 8
  %2 = load i32, ptr %c.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %conv)
  ret i32 %call
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @unixWarningHandler(ptr noundef %module, ptr noundef %fmt, ptr noundef %ap) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %module.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %module.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2)
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %fmt.addr, align 8
  %6 = load ptr, ptr %ap.addr, align 8
  %call2 = call i32 @vfprintf(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @unixErrorHandler(ptr noundef %module, ptr noundef %fmt, ptr noundef %ap) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %module.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %module.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load ptr, ptr %fmt.addr, align 8
  %5 = load ptr, ptr %ap.addr, align 8
  %call1 = call i32 @vfprintf(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.3)
  ret void
}

declare i64 @"\01_read"(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

declare i32 @"\01_fstat"(i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { allocsize(0) }
attributes #7 = { allocsize(1) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
