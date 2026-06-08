; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jmemname.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jmemname.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@next_file_num = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%sJPG%dXXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/usr/tmp/\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @jpeg_get_small(ptr noundef %cinfo, i64 noundef %sizeofobject) #0 {
entry:
  %call = call ptr @malloc(i64 noundef %sizeofobject) #7
  ret ptr %call
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_free_small(ptr noundef %cinfo, ptr noundef %object, i64 noundef %sizeofobject) #0 {
entry:
  call void @free(ptr noundef %object) #8
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @jpeg_get_large(ptr noundef %cinfo, i64 noundef %sizeofobject) #0 {
entry:
  %call = call ptr @malloc(i64 noundef %sizeofobject) #7
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_free_large(ptr noundef %cinfo, ptr noundef %object, i64 noundef %sizeofobject) #0 {
entry:
  call void @free(ptr noundef %object) #8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @jpeg_mem_available(ptr noundef %cinfo, i64 noundef %min_bytes_needed, i64 noundef %max_bytes_needed, i64 noundef %already_allocated) #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %0, i64 0, i32 11
  %1 = load i64, ptr %max_memory_to_use, align 8
  %sub = sub nsw i64 %1, %already_allocated
  ret i64 %sub
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_open_backing_store(ptr noundef %cinfo, ptr noundef %info, i64 noundef %total_bytes_needed) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %temp_name = getelementptr inbounds %struct.backing_store_struct, ptr %info, i64 0, i32 4
  %0 = load i32, ptr @next_file_num, align 4
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, ptr @next_file_num, align 4
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %temp_name, i1 false, i1 true, i1 false)
  %call.i = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %temp_name, i32 noundef 0, i64 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %inc.i) #8
  %call1.i = call ptr @mktemp(ptr noundef nonnull %temp_name) #8
  %2 = load ptr, ptr %info.addr, align 8
  %temp_name1 = getelementptr inbounds %struct.backing_store_struct, ptr %2, i64 0, i32 4
  %call = call ptr @"\01_fopen"(ptr noundef nonnull %temp_name1, ptr noundef nonnull @.str) #8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %2, i64 0, i32 3
  store ptr %call, ptr %temp_file, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 62, ptr %msg_code, align 8
  %5 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  %6 = load ptr, ptr %info.addr, align 8
  %temp_name5 = getelementptr inbounds %struct.backing_store_struct, ptr %6, i64 0, i32 4
  %strncpy1 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %msg_parm, ptr noundef nonnull dereferenceable(1) %temp_name5, i64 80)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %info.addr, align 8
  store ptr @read_backing_store, ptr %10, align 8
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %10, i64 0, i32 1
  store ptr @write_backing_store, ptr %write_backing_store, align 8
  %close_backing_store = getelementptr inbounds %struct.backing_store_struct, ptr %10, i64 0, i32 2
  store ptr @close_backing_store, ptr %close_backing_store, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 106, ptr %msg_code10, align 8
  %13 = load ptr, ptr %11, align 8
  %msg_parm12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 6
  %14 = load ptr, ptr %info.addr, align 8
  %temp_name14 = getelementptr inbounds %struct.backing_store_struct, ptr %14, i64 0, i32 4
  %strncpy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %msg_parm12, ptr noundef nonnull dereferenceable(1) %temp_name14, i64 80)
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %emit_message, align 8
  call void %17(ptr noundef nonnull %15, i32 noundef 1) #8
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @read_backing_store(ptr noundef %cinfo, ptr noundef %info, ptr noundef %buffer_address, i64 noundef %file_offset, i64 noundef %byte_count) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %buffer_address.addr = alloca ptr, align 8
  %byte_count.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store ptr %buffer_address, ptr %buffer_address.addr, align 8
  store i64 %byte_count, ptr %byte_count.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %info, i64 0, i32 3
  %0 = load ptr, ptr %temp_file, align 8
  %call = call i32 @fseek(ptr noundef %0, i64 noundef %file_offset, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 64, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %buffer_address.addr, align 8
  %6 = load i64, ptr %byte_count.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  %temp_file2 = getelementptr inbounds %struct.backing_store_struct, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %temp_file2, align 8
  %call3 = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef %6, ptr noundef %8) #8
  %cmp.not = icmp eq i64 %call3, %6
  br i1 %cmp.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 63, ptr %msg_code6, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr noundef nonnull %9) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_backing_store(ptr noundef %cinfo, ptr noundef %info, ptr noundef %buffer_address, i64 noundef %file_offset, i64 noundef %byte_count) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %buffer_address.addr = alloca ptr, align 8
  %byte_count.addr = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store ptr %buffer_address, ptr %buffer_address.addr, align 8
  store i64 %byte_count, ptr %byte_count.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %info, i64 0, i32 3
  %0 = load ptr, ptr %temp_file, align 8
  %call = call i32 @fseek(ptr noundef %0, i64 noundef %file_offset, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 64, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %buffer_address.addr, align 8
  %6 = load i64, ptr %byte_count.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  %temp_file2 = getelementptr inbounds %struct.backing_store_struct, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %temp_file2, align 8
  %call3 = call i64 @"\01_fwrite"(ptr noundef %5, i64 noundef 1, i64 noundef %6, ptr noundef %8) #8
  %cmp.not = icmp eq i64 %call3, %6
  br i1 %cmp.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 65, ptr %msg_code6, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr noundef nonnull %9) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @close_backing_store(ptr noundef %cinfo, ptr noundef %info) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %temp_file = getelementptr inbounds %struct.backing_store_struct, ptr %info, i64 0, i32 3
  %0 = load ptr, ptr %temp_file, align 8
  %call = call i32 @fclose(ptr noundef %0) #8
  %temp_name = getelementptr inbounds %struct.backing_store_struct, ptr %info, i64 0, i32 4
  %call1 = call i32 @unlink(ptr noundef nonnull %temp_name) #8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 105, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %4 = load ptr, ptr %info.addr, align 8
  %temp_name4 = getelementptr inbounds %struct.backing_store_struct, ptr %4, i64 0, i32 4
  %strncpy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %msg_parm, ptr noundef nonnull dereferenceable(1) %temp_name4, i64 80)
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %emit_message, align 8
  call void %7(ptr noundef nonnull %5, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @jpeg_mem_init(ptr noundef %cinfo) #0 {
entry:
  store i32 0, ptr @next_file_num, align 4
  ret i64 1000000
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_mem_term(ptr noundef %cinfo) #0 {
entry:
  ret void
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare ptr @mktemp(ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i32 @unlink(...) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias nocapture readonly, i64) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
