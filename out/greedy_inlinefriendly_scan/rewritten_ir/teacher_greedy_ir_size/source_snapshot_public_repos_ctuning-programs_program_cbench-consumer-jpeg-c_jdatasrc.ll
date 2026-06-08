; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_greedy_ir_size/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jdatasrc.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdatasrc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, ptr, ptr, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_stdio_src(ptr noundef %cinfo, ptr noundef %infile) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  %src = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src1, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %3 = load ptr, ptr %2, align 8
  %call = call ptr %3(ptr noundef %1, i32 noundef 0, i64 noundef 80) #2
  %src2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 5
  store ptr %call, ptr %src2, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %src3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 5
  %5 = load ptr, ptr %src3, align 8
  store ptr %5, ptr %src, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %mem4, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %call6 = call ptr %7(ptr noundef %8, i32 noundef 0, i64 noundef 4096) #2
  %buffer = getelementptr inbounds %struct.my_source_mgr, ptr %5, i64 0, i32 2
  store ptr %call6, ptr %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %src7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 5
  %10 = load ptr, ptr %src7, align 8
  store ptr %10, ptr %src, align 8
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i64 0, i32 2
  store ptr @init_source, ptr %init_source, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i64 0, i32 3
  store ptr @fill_input_buffer, ptr %fill_input_buffer, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i64 0, i32 4
  store ptr @skip_input_data, ptr %skip_input_data, align 8
  %11 = load ptr, ptr %src, align 8
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i64 0, i32 5
  store ptr @jpeg_resync_to_restart, ptr %resync_to_restart, align 8
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i64 0, i32 6
  store ptr @term_source, ptr %term_source, align 8
  %12 = load ptr, ptr %infile.addr, align 8
  %infile12 = getelementptr inbounds %struct.my_source_mgr, ptr %11, i64 0, i32 1
  store ptr %12, ptr %infile12, align 8
  %13 = load ptr, ptr %src, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 1
  store i64 0, ptr %bytes_in_buffer, align 8
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @init_source(ptr noundef %cinfo) #0 {
entry:
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src1, align 8
  %start_of_file = getelementptr inbounds %struct.my_source_mgr, ptr %0, i64 0, i32 3
  store i32 1, ptr %start_of_file, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fill_input_buffer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %src = alloca ptr, align 8
  %nbytes = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src1, align 8
  store ptr %0, ptr %src, align 8
  %buffer = getelementptr inbounds %struct.my_source_mgr, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %buffer, align 8
  %infile = getelementptr inbounds %struct.my_source_mgr, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %infile, align 8
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef 4096, ptr noundef %2) #2
  store i64 %call, ptr %nbytes, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %src, align 8
  %start_of_file = getelementptr inbounds %struct.my_source_mgr, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %start_of_file, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 41, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code5 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 116, ptr %msg_code5, align 8
  %11 = load ptr, ptr %9, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %emit_message, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13, i32 noundef -1) #2
  %14 = load ptr, ptr %src, align 8
  %buffer7 = getelementptr inbounds %struct.my_source_mgr, ptr %14, i64 0, i32 2
  %15 = load ptr, ptr %buffer7, align 8
  store i8 -1, ptr %15, align 1
  %buffer8 = getelementptr inbounds %struct.my_source_mgr, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %buffer8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 -39, ptr %arrayidx9, align 1
  store i64 2, ptr %nbytes, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %17 = load ptr, ptr %src, align 8
  %buffer11 = getelementptr inbounds %struct.my_source_mgr, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %buffer11, align 8
  store ptr %18, ptr %17, align 8
  %19 = load i64, ptr %nbytes, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %17, i64 0, i32 1
  store i64 %19, ptr %bytes_in_buffer, align 8
  %20 = load ptr, ptr %src, align 8
  %start_of_file13 = getelementptr inbounds %struct.my_source_mgr, ptr %20, i64 0, i32 3
  store i32 0, ptr %start_of_file13, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_input_data(ptr noundef %cinfo, i64 noundef %num_bytes) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %num_bytes.addr = alloca i64, align 8
  %src = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i64 %num_bytes, ptr %num_bytes.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src1, align 8
  store ptr %0, ptr %src, align 8
  %cmp = icmp sgt i64 %num_bytes, 0
  br i1 %cmp, label %while.cond, label %if.end

while.cond:                                       ; preds = %entry, %while.body
  %1 = load i64, ptr %num_bytes.addr, align 8
  %2 = load ptr, ptr %src, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i64 0, i32 1
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp2 = icmp sgt i64 %1, %3
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %src, align 8
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer4, align 8
  %6 = load i64, ptr %num_bytes.addr, align 8
  %sub = sub nsw i64 %6, %5
  store i64 %sub, ptr %num_bytes.addr, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @fill_input_buffer(ptr noundef %7)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %8 = load i64, ptr %num_bytes.addr, align 8
  %9 = load ptr, ptr %src, align 8
  %10 = load ptr, ptr %9, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %8
  store ptr %add.ptr, ptr %9, align 8
  %bytes_in_buffer7 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %bytes_in_buffer7, align 8
  %sub8 = sub i64 %11, %8
  store i64 %sub8, ptr %bytes_in_buffer7, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @jpeg_resync_to_restart(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @term_source(ptr noundef %cinfo) #0 {
entry:
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
