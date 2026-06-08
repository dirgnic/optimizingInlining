; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdtrans.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdtrans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jpeg_read_coefficients(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %1, 202
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @transdecode_master_selection(ptr noundef %2)
  %3 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 4
  store i32 209, ptr %global_state1, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state2, align 4
  %cmp3 = icmp ne i32 %5, 209
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %global_state5, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err6, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %9, ptr %arrayidx, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %if.end8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %progress, align 8
  %cmp9 = icmp ne ptr %17, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %progress11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %progress11, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %progress_monitor, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.cond
  %22 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 77
  %23 = load ptr, ptr %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %consume_input, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %24(ptr noundef %25)
  store i32 %call, ptr %retcode, align 4
  %26 = load i32, ptr %retcode, align 4
  %cmp13 = icmp eq i32 %26, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store ptr null, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end12
  %27 = load i32, ptr %retcode, align 4
  %cmp16 = icmp eq i32 %27, 2
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  br label %for.end

if.end18:                                         ; preds = %if.end15
  %28 = load ptr, ptr %cinfo.addr, align 8
  %progress19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %progress19, align 8
  %cmp20 = icmp ne ptr %29, null
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %30 = load i32, ptr %retcode, align 4
  %cmp21 = icmp eq i32 %30, 3
  br i1 %cmp21, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load i32, ptr %retcode, align 4
  %cmp22 = icmp eq i32 %31, 1
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %progress24, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i32 0, i32 1
  %34 = load i64, ptr %pass_counter, align 8
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %pass_counter, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %progress25, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %36, i32 0, i32 2
  %37 = load i64, ptr %pass_limit, align 8
  %cmp26 = icmp sge i64 %inc, %37
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then23
  %38 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 60
  %39 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %39 to i64
  %40 = load ptr, ptr %cinfo.addr, align 8
  %progress28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %progress28, align 8
  %pass_limit29 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %41, i32 0, i32 2
  %42 = load i64, ptr %pass_limit29, align 8
  %add = add nsw i64 %42, %conv
  store i64 %add, ptr %pass_limit29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %lor.lhs.false, %if.end18
  br label %for.cond

for.end:                                          ; preds = %if.then17
  %43 = load ptr, ptr %cinfo.addr, align 8
  %global_state32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 4
  store i32 210, ptr %global_state32, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 75
  %45 = load ptr, ptr %coef, align 8
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %coef_arrays, align 8
  store ptr %46, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then14
  %47 = load ptr, ptr %retval, align 8
  ret ptr %47
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @transdecode_master_selection(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %nscans = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 45
  %1 = load i32, ptr %arith_code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 1, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %error_exit, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void %6(ptr noundef %7)
  br label %if.end5

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 44
  %9 = load i32, ptr %progressive_mode, align 8
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %10 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_decoder(ptr noundef %10)
  br label %if.end

if.else4:                                         ; preds = %if.else
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_decoder(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_d_coef_controller(ptr noundef %12, i32 noundef 1)
  %13 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %realize_virt_arrays, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  %17 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 77
  %18 = load ptr, ptr %inputctl, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %start_input_pass, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  %21 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %progress, align 8
  %cmp = icmp ne ptr %22, null
  br i1 %cmp, label %if.then6, label %if.end24

if.then6:                                         ; preds = %if.end5
  %23 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 44
  %24 = load i32, ptr %progressive_mode7, align 8
  %tobool8 = icmp ne i32 %24, 0
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.then6
  %25 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 8
  %26 = load i32, ptr %num_components, align 8
  %mul = mul nsw i32 3, %26
  %add = add nsw i32 2, %mul
  store i32 %add, ptr %nscans, align 4
  br label %if.end17

if.else10:                                        ; preds = %if.then6
  %27 = load ptr, ptr %cinfo.addr, align 8
  %inputctl11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 77
  %28 = load ptr, ptr %inputctl11, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %has_multiple_scans, align 8
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %30 = load ptr, ptr %cinfo.addr, align 8
  %num_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 8
  %31 = load i32, ptr %num_components14, align 8
  store i32 %31, ptr %nscans, align 4
  br label %if.end16

if.else15:                                        ; preds = %if.else10
  store i32 1, ptr %nscans, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then9
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %progress18, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i32 0, i32 1
  store i64 0, ptr %pass_counter, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 60
  %35 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %35 to i64
  %36 = load i32, ptr %nscans, align 4
  %conv19 = sext i32 %36 to i64
  %mul20 = mul nsw i64 %conv, %conv19
  %37 = load ptr, ptr %cinfo.addr, align 8
  %progress21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %progress21, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %38, i32 0, i32 2
  store i64 %mul20, ptr %pass_limit, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %progress22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %progress22, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %40, i32 0, i32 3
  store i32 0, ptr %completed_passes, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %progress23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %progress23, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %42, i32 0, i32 4
  store i32 1, ptr %total_passes, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.end5
  ret void
}

declare void @jinit_phuff_decoder(ptr noundef) #1

declare void @jinit_huff_decoder(ptr noundef) #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
