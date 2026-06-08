; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcmainct.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcmainct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x ptr] }
%struct.jpeg_c_main_controller = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_c_main_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 112)
  store ptr %call, ptr %main, align 8
  %4 = load ptr, ptr %main, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 52
  store ptr %4, ptr %main1, align 8
  %6 = load ptr, ptr %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_main_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_main, ptr %start_pass, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 23
  %8 = load i32, ptr %raw_data_in, align 8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end8

if.else:                                          ; preds = %if.end
  store i32 0, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 14
  %17 = load ptr, ptr %comp_info, align 8
  store ptr %17, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load i32, ptr %ci, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 12
  %20 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %mem5, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %alloc_sarray, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 7
  %26 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %26, 8
  %27 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %v_samp_factor, align 4
  %mul6 = mul nsw i32 %28, 8
  %call7 = call ptr %23(ptr noundef %24, i32 noundef 1, i32 noundef %mul, i32 noundef %mul6)
  %29 = load ptr, ptr %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 %idxprom
  store ptr %call7, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %ci, align 4
  %32 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end8

if.end8:                                          ; preds = %if.then, %for.end, %if.then3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass_main(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pass_mode, ptr %pass_mode.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 52
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 23
  %3 = load i32, ptr %raw_data_in, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %main, align 8
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, ptr %4, i32 0, i32 1
  store i32 0, ptr %cur_iMCU_row, align 8
  %5 = load ptr, ptr %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %5, i32 0, i32 2
  store i32 0, ptr %rowgroup_ctr, align 4
  %6 = load ptr, ptr %main, align 8
  %suspended = getelementptr inbounds %struct.my_main_controller, ptr %6, i32 0, i32 3
  store i32 0, ptr %suspended, align 8
  %7 = load i32, ptr %pass_mode.addr, align 4
  %8 = load ptr, ptr %main, align 8
  %pass_mode2 = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 4
  store i32 %7, ptr %pass_mode2, align 4
  %9 = load i32, ptr %pass_mode.addr, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load ptr, ptr %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, ptr %10, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_c_main_controller, ptr %pub, i32 0, i32 1
  store ptr @process_data_simple_main, ptr %process_data, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @process_data_simple_main(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_ctr, i32 noundef %in_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_ctr.addr = alloca ptr, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_ctr, ptr %in_row_ctr.addr, align 8
  store i32 %in_rows_avail, ptr %in_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 52
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %entry
  %2 = load ptr, ptr %main, align 8
  %cur_iMCU_row = getelementptr inbounds %struct.my_main_controller, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %cur_iMCU_row, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 40
  %5 = load i32, ptr %total_iMCU_rows, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %rowgroup_ctr, align 4
  %cmp2 = icmp ult i32 %7, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %cinfo.addr, align 8
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 53
  %9 = load ptr, ptr %prep, align 8
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pre_process_data, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %input_buf.addr, align 8
  %13 = load ptr, ptr %in_row_ctr.addr, align 8
  %14 = load i32, ptr %in_rows_avail.addr, align 4
  %15 = load ptr, ptr %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 0
  %16 = load ptr, ptr %main, align 8
  %rowgroup_ctr3 = getelementptr inbounds %struct.my_main_controller, ptr %16, i32 0, i32 2
  call void %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %arraydecay, ptr noundef %rowgroup_ctr3, i32 noundef 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load ptr, ptr %main, align 8
  %rowgroup_ctr4 = getelementptr inbounds %struct.my_main_controller, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %rowgroup_ctr4, align 4
  %cmp5 = icmp ne i32 %18, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %while.end

if.end7:                                          ; preds = %if.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 54
  %20 = load ptr, ptr %coef, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %compress_data, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %main, align 8
  %buffer8 = getelementptr inbounds %struct.my_main_controller, ptr %23, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [10 x ptr], ptr %buffer8, i64 0, i64 0
  %call = call i32 %21(ptr noundef %22, ptr noundef %arraydecay9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end7
  %24 = load ptr, ptr %main, align 8
  %suspended = getelementptr inbounds %struct.my_main_controller, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %suspended, align 8
  %tobool11 = icmp ne i32 %25, 0
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.then10
  %26 = load ptr, ptr %in_row_ctr.addr, align 8
  %27 = load i32, ptr %26, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %26, align 4
  %28 = load ptr, ptr %main, align 8
  %suspended13 = getelementptr inbounds %struct.my_main_controller, ptr %28, i32 0, i32 3
  store i32 1, ptr %suspended13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then10
  br label %while.end

if.end15:                                         ; preds = %if.end7
  %29 = load ptr, ptr %main, align 8
  %suspended16 = getelementptr inbounds %struct.my_main_controller, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %suspended16, align 8
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %31 = load ptr, ptr %in_row_ctr.addr, align 8
  %32 = load i32, ptr %31, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %31, align 4
  %33 = load ptr, ptr %main, align 8
  %suspended19 = getelementptr inbounds %struct.my_main_controller, ptr %33, i32 0, i32 3
  store i32 0, ptr %suspended19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %34 = load ptr, ptr %main, align 8
  %rowgroup_ctr21 = getelementptr inbounds %struct.my_main_controller, ptr %34, i32 0, i32 2
  store i32 0, ptr %rowgroup_ctr21, align 4
  %35 = load ptr, ptr %main, align 8
  %cur_iMCU_row22 = getelementptr inbounds %struct.my_main_controller, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %cur_iMCU_row22, align 8
  %inc23 = add i32 %36, 1
  store i32 %inc23, ptr %cur_iMCU_row22, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then6, %if.end14, %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
