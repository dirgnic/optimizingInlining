; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_warning.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_warning.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@_TIFFwarningHandler = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @TIFFSetWarningHandler(ptr noundef %handler) #0 {
entry:
  %handler.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %handler, ptr %handler.addr, align 8
  %0 = load ptr, ptr @_TIFFwarningHandler, align 8
  store ptr %0, ptr %prev, align 8
  %1 = load ptr, ptr %handler.addr, align 8
  store ptr %1, ptr @_TIFFwarningHandler, align 8
  %2 = load ptr, ptr %prev, align 8
  ret ptr %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @TIFFWarning(ptr noundef %module, ptr noundef %fmt, ...) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  %0 = load ptr, ptr @_TIFFwarningHandler, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr %ap)
  %1 = load ptr, ptr @_TIFFwarningHandler, align 8
  %2 = load ptr, ptr %module.addr, align 8
  %3 = load ptr, ptr %fmt.addr, align 8
  %4 = load ptr, ptr %ap, align 8
  call void %1(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.va_end(ptr %ap)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
