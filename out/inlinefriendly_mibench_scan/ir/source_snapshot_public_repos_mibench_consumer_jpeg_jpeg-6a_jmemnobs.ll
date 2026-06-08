; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jmemnobs.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jmemnobs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jpeg_get_small(ptr noundef %cinfo, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sizeofobject.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load i64, ptr %sizeofobject.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #3
  ret ptr %call
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_free_small(ptr noundef %cinfo, ptr noundef %object, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %sizeofobject.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  call void @free(ptr noundef %0)
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jpeg_get_large(ptr noundef %cinfo, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sizeofobject.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load i64, ptr %sizeofobject.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #3
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_free_large(ptr noundef %cinfo, ptr noundef %object, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %sizeofobject.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %object, ptr %object.addr, align 8
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load ptr, ptr %object.addr, align 8
  call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @jpeg_mem_available(ptr noundef %cinfo, i64 noundef %min_bytes_needed, i64 noundef %max_bytes_needed, i64 noundef %already_allocated) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %min_bytes_needed.addr = alloca i64, align 8
  %max_bytes_needed.addr = alloca i64, align 8
  %already_allocated.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i64 %min_bytes_needed, ptr %min_bytes_needed.addr, align 8
  store i64 %max_bytes_needed, ptr %max_bytes_needed.addr, align 8
  store i64 %already_allocated, ptr %already_allocated.addr, align 8
  %0 = load i64, ptr %max_bytes_needed.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_open_backing_store(ptr noundef %cinfo, ptr noundef %info, i64 noundef %total_bytes_needed) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %total_bytes_needed.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store i64 %total_bytes_needed, ptr %total_bytes_needed.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i32 0, i32 5
  store i32 48, ptr %msg_code, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %error_exit, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @jpeg_mem_init(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_mem_term(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
