; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jmemansi.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jmemansi.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jpeg_get_small(ptr noundef %cinfo, i64 noundef %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sizeofobject.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i64 %sizeofobject, ptr %sizeofobject.addr, align 8
  %0 = load i64, ptr %sizeofobject.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #4
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
  %call = call ptr @malloc(i64 noundef %0) #4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 11
  %2 = load i64, ptr %max_memory_to_use, align 8
  %3 = load i64, ptr %already_allocated.addr, align 8
  %sub = sub nsw i64 %2, %3
  ret i64 %sub
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
  %call = call ptr @tmpfile()
  %0 = load ptr, ptr %info.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %0, i32 0, i32 3
  store ptr %call, ptr %temp_file, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i32 0, i32 5
  store i32 62, ptr %msg_code, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 6
  %arraydecay = getelementptr inbounds [80 x i8], ptr %msg_parm, i64 0, i64 0
  %call2 = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef @.str, i64 noundef 80, i64 noundef 80) #5
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %info.addr, align 8
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %9, i32 0, i32 0
  store ptr @read_backing_store, ptr %read_backing_store, align 8
  %10 = load ptr, ptr %info.addr, align 8
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %10, i32 0, i32 1
  store ptr @write_backing_store, ptr %write_backing_store, align 8
  %11 = load ptr, ptr %info.addr, align 8
  %close_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %11, i32 0, i32 2
  store ptr @close_backing_store, ptr %close_backing_store, align 8
  ret void
}

declare ptr @tmpfile() #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @read_backing_store(ptr noundef %cinfo, ptr noundef %info, ptr noundef %buffer_address, i64 noundef %file_offset, i64 noundef %byte_count) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %buffer_address.addr = alloca ptr, align 8
  %file_offset.addr = alloca i64, align 8
  %byte_count.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store ptr %buffer_address, ptr %buffer_address.addr, align 8
  store i64 %file_offset, ptr %file_offset.addr, align 8
  store i64 %byte_count, ptr %byte_count.addr, align 8
  %0 = load ptr, ptr %info.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %temp_file, align 8
  %2 = load i64, ptr %file_offset.addr, align 8
  %call = call i32 @fseek(ptr noundef %1, i64 noundef %2, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 64, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %buffer_address.addr, align 8
  %10 = load i64, ptr %byte_count.addr, align 8
  %11 = load ptr, ptr %info.addr, align 8
  %temp_file2 = getelementptr inbounds %struct.backing_store_struct, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %temp_file2, align 8
  %call3 = call i64 @fread(ptr noundef %9, i64 noundef 1, i64 noundef %10, ptr noundef %12)
  %13 = load i64, ptr %byte_count.addr, align 8
  %cmp = icmp ne i64 %call3, %13
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_common_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err5, align 8
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 63, ptr %msg_code6, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_common_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err7, align 8
  %error_exit8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %error_exit8, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19)
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @write_backing_store(ptr noundef %cinfo, ptr noundef %info, ptr noundef %buffer_address, i64 noundef %file_offset, i64 noundef %byte_count) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %buffer_address.addr = alloca ptr, align 8
  %file_offset.addr = alloca i64, align 8
  %byte_count.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store ptr %buffer_address, ptr %buffer_address.addr, align 8
  store i64 %file_offset, ptr %file_offset.addr, align 8
  store i64 %byte_count, ptr %byte_count.addr, align 8
  %0 = load ptr, ptr %info.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %temp_file, align 8
  %2 = load i64, ptr %file_offset.addr, align 8
  %call = call i32 @fseek(ptr noundef %1, i64 noundef %2, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 64, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %buffer_address.addr, align 8
  %10 = load i64, ptr %byte_count.addr, align 8
  %11 = load ptr, ptr %info.addr, align 8
  %temp_file2 = getelementptr inbounds %struct.backing_store_struct, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %temp_file2, align 8
  %call3 = call i64 @"\01_fwrite"(ptr noundef %9, i64 noundef 1, i64 noundef %10, ptr noundef %12)
  %13 = load i64, ptr %byte_count.addr, align 8
  %cmp = icmp ne i64 %call3, %13
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_common_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err5, align 8
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 65, ptr %msg_code6, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_common_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err7, align 8
  %error_exit8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %error_exit8, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19)
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @close_backing_store(ptr noundef %cinfo, ptr noundef %info) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %info.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %temp_file, align 8
  %call = call i32 @fclose(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @jpeg_mem_init(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret i64 1000000
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_mem_term(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret void
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
