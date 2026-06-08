; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jdtrans.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jdtrans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jpeg_read_coefficients(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %0, 202
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @transdecode_master_selection(ptr noundef %1)
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  store i32 209, ptr %global_state1, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 4
  %3 = load i32, ptr %global_state2, align 4
  %cmp3.not = icmp eq i32 %3, 209
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.else
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %global_state5, align 4
  %7 = load ptr, ptr %4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %6, ptr %msg_parm, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %8) #2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4, %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %if.end8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %progress, align 8
  %cmp9.not = icmp eq ptr %12, null
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %for.cond
  %13 = load ptr, ptr %cinfo.addr, align 8
  %progress11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 2
  %14 = load ptr, ptr %progress11, align 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef %13) #2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.cond
  %16 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 77
  %17 = load ptr, ptr %inputctl, align 8
  %18 = load ptr, ptr %17, align 8
  %call = call i32 %18(ptr noundef %16) #2
  store i32 %call, ptr %retcode, align 4
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %return, label %if.end15

if.end15:                                         ; preds = %if.end12
  %19 = load i32, ptr %retcode, align 4
  %cmp16 = icmp eq i32 %19, 2
  br i1 %cmp16, label %for.end, label %if.end18

if.end18:                                         ; preds = %if.end15
  %20 = load ptr, ptr %cinfo.addr, align 8
  %progress19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %progress19, align 8
  %cmp20.not = icmp eq ptr %21, null
  br i1 %cmp20.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %22 = load i32, ptr %retcode, align 4
  %cmp21 = icmp eq i32 %22, 3
  %23 = load i32, ptr %retcode, align 4
  %cmp22 = icmp eq i32 %23, 1
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %cinfo.addr, align 8
  %progress24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 2
  %25 = load ptr, ptr %progress24, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %25, i64 0, i32 1
  %26 = load i64, ptr %pass_counter, align 8
  %inc = add nsw i64 %26, 1
  store i64 %inc, ptr %pass_counter, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 2
  %28 = load ptr, ptr %progress25, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %28, i64 0, i32 2
  %29 = load i64, ptr %pass_limit, align 8
  %cmp26.not = icmp slt i64 %inc, %29
  br i1 %cmp26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.then23
  %30 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i64 0, i32 60
  %31 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %31 to i64
  %progress28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %progress28, align 8
  %pass_limit29 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %32, i64 0, i32 2
  %33 = load i64, ptr %pass_limit29, align 8
  %add = add nsw i64 %33, %conv
  store i64 %add, ptr %pass_limit29, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.then27, %land.lhs.true, %if.end18
  br label %for.cond

for.end:                                          ; preds = %if.end15
  %34 = load ptr, ptr %cinfo.addr, align 8
  %global_state32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 4
  store i32 210, ptr %global_state32, align 4
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 75
  %35 = load ptr, ptr %coef, align 8
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %35, i64 0, i32 4
  %36 = load ptr, ptr %coef_arrays, align 8
  br label %return

return:                                           ; preds = %if.end12, %for.end
  %storemerge = phi ptr [ %36, %for.end ], [ null, %if.end12 ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @transdecode_master_selection(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %nscans = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 45
  %0 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 1, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #2
  br label %if.end5

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 44
  %6 = load i32, ptr %progressive_mode, align 8
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_decoder(ptr noundef %7) #2
  br label %if.end5

if.else4:                                         ; preds = %if.else
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_decoder(ptr noundef %8) #2
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else4, %if.then
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_d_coef_controller(ptr noundef %9, i32 noundef 1) #2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i64 0, i32 6
  %11 = load ptr, ptr %realize_virt_arrays, align 8
  call void %11(ptr noundef %9) #2
  %12 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 77
  %13 = load ptr, ptr %inputctl, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %13, i64 0, i32 2
  %14 = load ptr, ptr %start_input_pass, align 8
  call void %14(ptr noundef %12) #2
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %progress, align 8
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %if.end24, label %if.then6

if.then6:                                         ; preds = %if.end5
  %16 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 44
  %17 = load i32, ptr %progressive_mode7, align 8
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.then6
  %18 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 8
  %19 = load i32, ptr %num_components, align 8
  %mul = mul nsw i32 %19, 3
  %add = add nsw i32 %mul, 2
  br label %if.end17

if.else10:                                        ; preds = %if.then6
  %20 = load ptr, ptr %cinfo.addr, align 8
  %inputctl11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 77
  %21 = load ptr, ptr %inputctl11, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %21, i64 0, i32 4
  %22 = load i32, ptr %has_multiple_scans, align 8
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.else10
  %23 = load ptr, ptr %cinfo.addr, align 8
  %num_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 8
  %24 = load i32, ptr %num_components14, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.else10, %if.then9
  %storemerge1 = phi i32 [ %add, %if.then9 ], [ %24, %if.then13 ], [ 1, %if.else10 ]
  store i32 %storemerge1, ptr %nscans, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %progress18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %progress18, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 1
  store i64 0, ptr %pass_counter, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 60
  %27 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %27 to i64
  %28 = load i32, ptr %nscans, align 4
  %conv19 = sext i32 %28 to i64
  %mul20 = mul nsw i64 %conv, %conv19
  %29 = load ptr, ptr %cinfo.addr, align 8
  %progress21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 2
  %30 = load ptr, ptr %progress21, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %30, i64 0, i32 2
  store i64 %mul20, ptr %pass_limit, align 8
  %progress22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %progress22, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %31, i64 0, i32 3
  store i32 0, ptr %completed_passes, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 2
  %33 = load ptr, ptr %progress23, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i64 0, i32 4
  store i32 1, ptr %total_passes, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.end5
  ret void
}

declare void @jinit_phuff_decoder(ptr noundef) #1

declare void @jinit_huff_decoder(ptr noundef) #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) #1

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
