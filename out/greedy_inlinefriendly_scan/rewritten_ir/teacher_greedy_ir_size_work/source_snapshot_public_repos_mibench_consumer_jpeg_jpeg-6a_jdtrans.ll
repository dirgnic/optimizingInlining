; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdtrans.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdtrans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define ptr @jpeg_read_coefficients(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr.i = alloca ptr, align 8
  %nscans.i = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %0, 202
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nscans.i)
  store ptr %1, ptr %cinfo.addr.i, align 8
  %arith_code.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 45
  %2 = load i32, ptr %arith_code.i, align 4
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %3 = load ptr, ptr %cinfo.addr.i, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 1, ptr %msg_code.i, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef nonnull %3) #3
  br label %if.end5.i

if.else.i:                                        ; preds = %if.then
  %7 = load ptr, ptr %cinfo.addr.i, align 8
  %progressive_mode.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 44
  %8 = load i32, ptr %progressive_mode.i, align 8
  %tobool2.i.not = icmp eq i32 %8, 0
  br i1 %tobool2.i.not, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %9 = load ptr, ptr %cinfo.addr.i, align 8
  call void @jinit_phuff_decoder(ptr noundef %9) #3
  br label %if.end5.i

if.else4.i:                                       ; preds = %if.else.i
  %10 = load ptr, ptr %cinfo.addr.i, align 8
  call void @jinit_huff_decoder(ptr noundef %10) #3
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.else4.i, %if.then.i
  %11 = load ptr, ptr %cinfo.addr.i, align 8
  call void @jinit_d_coef_controller(ptr noundef %11, i32 noundef 1) #3
  %mem.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %mem.i, align 8
  %realize_virt_arrays.i = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %12, i64 0, i32 6
  %13 = load ptr, ptr %realize_virt_arrays.i, align 8
  call void %13(ptr noundef %11) #3
  %14 = load ptr, ptr %cinfo.addr.i, align 8
  %inputctl.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 77
  %15 = load ptr, ptr %inputctl.i, align 8
  %start_input_pass.i = getelementptr inbounds %struct.jpeg_input_controller, ptr %15, i64 0, i32 2
  %16 = load ptr, ptr %start_input_pass.i, align 8
  call void %16(ptr noundef %14) #3
  %progress.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %progress.i, align 8
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdtrans_0.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end5.i
  %18 = load ptr, ptr %cinfo.addr.i, align 8
  %progressive_mode7.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 44
  %19 = load i32, ptr %progressive_mode7.i, align 8
  %tobool8.i.not = icmp eq i32 %19, 0
  br i1 %tobool8.i.not, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then6.i
  %20 = load ptr, ptr %cinfo.addr.i, align 8
  %num_components.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 8
  %21 = load i32, ptr %num_components.i, align 8
  %mul.i = mul nsw i32 %21, 3
  %add.i = add nsw i32 %mul.i, 2
  br label %if.end17.i

if.else10.i:                                      ; preds = %if.then6.i
  %22 = load ptr, ptr %cinfo.addr.i, align 8
  %inputctl11.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 77
  %23 = load ptr, ptr %inputctl11.i, align 8
  %has_multiple_scans.i = getelementptr inbounds %struct.jpeg_input_controller, ptr %23, i64 0, i32 4
  %24 = load i32, ptr %has_multiple_scans.i, align 8
  %tobool12.i.not = icmp eq i32 %24, 0
  br i1 %tobool12.i.not, label %if.end17.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else10.i
  %25 = load ptr, ptr %cinfo.addr.i, align 8
  %num_components14.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 8
  %26 = load i32, ptr %num_components14.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.else10.i, %if.then9.i
  %storemerge2 = phi i32 [ %add.i, %if.then9.i ], [ %26, %if.then13.i ], [ 1, %if.else10.i ]
  store i32 %storemerge2, ptr %nscans.i, align 4
  %27 = load ptr, ptr %cinfo.addr.i, align 8
  %progress18.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 2
  %28 = load ptr, ptr %progress18.i, align 8
  %pass_counter.i = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %28, i64 0, i32 1
  store i64 0, ptr %pass_counter.i, align 8
  %total_iMCU_rows.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 60
  %29 = load i32, ptr %total_iMCU_rows.i, align 8
  %conv.i = zext i32 %29 to i64
  %30 = load i32, ptr %nscans.i, align 4
  %conv19.i = sext i32 %30 to i64
  %mul20.i = mul nsw i64 %conv.i, %conv19.i
  %31 = load ptr, ptr %cinfo.addr.i, align 8
  %progress21.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 2
  %32 = load ptr, ptr %progress21.i, align 8
  %pass_limit.i = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %32, i64 0, i32 2
  store i64 %mul20.i, ptr %pass_limit.i, align 8
  %progress22.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %progress22.i, align 8
  %completed_passes.i = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i64 0, i32 3
  store i32 0, ptr %completed_passes.i, align 8
  %34 = load ptr, ptr %cinfo.addr.i, align 8
  %progress23.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 2
  %35 = load ptr, ptr %progress23.i, align 8
  %total_passes.i = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %35, i64 0, i32 4
  store i32 1, ptr %total_passes.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdtrans_0.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdtrans_0.exit: ; preds = %if.end5.i, %if.end17.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nscans.i)
  %36 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 4
  store i32 209, ptr %global_state1, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %37 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 4
  %38 = load i32, ptr %global_state2, align 4
  %cmp3.not = icmp eq i32 %38, 209
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.else
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %global_state5, align 4
  %42 = load ptr, ptr %39, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6
  store i32 %41, ptr %msg_parm, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef nonnull %43) #3
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdtrans_0.exit
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %if.end8
  %46 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i64 0, i32 2
  %47 = load ptr, ptr %progress, align 8
  %cmp9.not = icmp eq ptr %47, null
  br i1 %cmp9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %for.cond
  %48 = load ptr, ptr %cinfo.addr, align 8
  %progress11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 2
  %49 = load ptr, ptr %progress11, align 8
  %50 = load ptr, ptr %49, align 8
  call void %50(ptr noundef %48) #3
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.cond
  %51 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 77
  %52 = load ptr, ptr %inputctl, align 8
  %53 = load ptr, ptr %52, align 8
  %call = call i32 %53(ptr noundef %51) #3
  store i32 %call, ptr %retcode, align 4
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %return, label %if.end15

if.end15:                                         ; preds = %if.end12
  %54 = load i32, ptr %retcode, align 4
  %cmp16 = icmp eq i32 %54, 2
  br i1 %cmp16, label %for.end, label %if.end18

if.end18:                                         ; preds = %if.end15
  %55 = load ptr, ptr %cinfo.addr, align 8
  %progress19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i64 0, i32 2
  %56 = load ptr, ptr %progress19, align 8
  %cmp20.not = icmp eq ptr %56, null
  br i1 %cmp20.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %57 = load i32, ptr %retcode, align 4
  %cmp21 = icmp eq i32 %57, 3
  %58 = load i32, ptr %retcode, align 4
  %cmp22 = icmp eq i32 %58, 1
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %59 = load ptr, ptr %cinfo.addr, align 8
  %progress24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i64 0, i32 2
  %60 = load ptr, ptr %progress24, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %60, i64 0, i32 1
  %61 = load i64, ptr %pass_counter, align 8
  %inc = add nsw i64 %61, 1
  store i64 %inc, ptr %pass_counter, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 2
  %63 = load ptr, ptr %progress25, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %63, i64 0, i32 2
  %64 = load i64, ptr %pass_limit, align 8
  %cmp26.not = icmp slt i64 %inc, %64
  br i1 %cmp26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.then23
  %65 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i64 0, i32 60
  %66 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %66 to i64
  %progress28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %progress28, align 8
  %pass_limit29 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %67, i64 0, i32 2
  %68 = load i64, ptr %pass_limit29, align 8
  %add = add nsw i64 %68, %conv
  store i64 %add, ptr %pass_limit29, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.then27, %land.lhs.true, %if.end18
  br label %for.cond

for.end:                                          ; preds = %if.end15
  %69 = load ptr, ptr %cinfo.addr, align 8
  %global_state32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 4
  store i32 210, ptr %global_state32, align 4
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 75
  %70 = load ptr, ptr %coef, align 8
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %70, i64 0, i32 4
  %71 = load ptr, ptr %coef_arrays, align 8
  br label %return

return:                                           ; preds = %if.end12, %for.end
  %storemerge = phi ptr [ %71, %for.end ], [ null, %if.end12 ]
  ret ptr %storemerge
}

declare void @jinit_phuff_decoder(ptr noundef) #1

declare void @jinit_huff_decoder(ptr noundef) #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
