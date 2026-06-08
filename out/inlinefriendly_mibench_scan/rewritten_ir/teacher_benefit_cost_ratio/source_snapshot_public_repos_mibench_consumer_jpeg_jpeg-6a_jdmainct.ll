; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdmainct.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmainct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x ptr], i32, i32, [2 x ptr], i32, i32, i32, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_post_controller = type { ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_d_main_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 136) #1
  store ptr %call, ptr %main, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 74
  store ptr %call, ptr %main1, align 8
  store ptr @start_pass_main, ptr %call, align 8
  %3 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %4) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 81
  %9 = load ptr, ptr %upsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %9, i64 0, i32 2
  %10 = load i32, ptr %need_context_rows, align 8
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 59
  %12 = load i32, ptr %min_DCT_scaled_size, align 4
  %cmp = icmp slt i32 %12, 2
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 46, ptr %msg_code7, align 8
  %15 = load ptr, ptr %13, align 8
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull %13) #1
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then4
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void @alloc_funny_pointers(ptr noundef %17)
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 59
  %18 = load i32, ptr %min_DCT_scaled_size11, align 4
  %add = add nsw i32 %18, 2
  br label %if.end13

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 59
  %20 = load i32, ptr %min_DCT_scaled_size12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end10
  %storemerge = phi i32 [ %20, %if.else ], [ %add, %if.end10 ]
  store i32 %storemerge, ptr %ngroups, align 4
  store i32 0, ptr %ci, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 43
  %22 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end13
  %storemerge1 = phi ptr [ %22, %if.end13 ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge1, ptr %compptr, align 8
  %23 = load i32, ptr %ci, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 8
  %25 = load i32, ptr %num_components, align 8
  %cmp14 = icmp slt i32 %23, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 3
  %27 = load i32, ptr %v_samp_factor, align 4
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %27, %28
  %29 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 59
  %30 = load i32, ptr %min_DCT_scaled_size15, align 4
  %div = sdiv i32 %mul, %30
  store i32 %div, ptr %rgroup, align 4
  %mem16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %mem16, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %31, i64 0, i32 2
  %32 = load ptr, ptr %alloc_sarray, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 7
  %35 = load i32, ptr %width_in_blocks, align 4
  %DCT_scaled_size17 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 9
  %36 = load i32, ptr %DCT_scaled_size17, align 4
  %mul18 = mul i32 %35, %36
  %37 = load i32, ptr %rgroup, align 4
  %38 = load i32, ptr %ngroups, align 4
  %mul19 = mul nsw i32 %37, %38
  %call20 = call ptr %32(ptr noundef %33, i32 noundef 1, i32 noundef %mul18, i32 noundef %mul19) #1
  %39 = load ptr, ptr %main, align 8
  %40 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds %struct.my_main_controller, ptr %39, i64 0, i32 1, i64 %idxprom
  store ptr %call20, ptr %arrayidx, align 8
  %41 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %ci, align 4
  %42 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_main(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  switch i32 %pass_mode, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 81
  %2 = load ptr, ptr %upsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %need_context_rows, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %main, align 8
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %4, i64 0, i32 1
  store ptr @process_data_context_main, ptr %process_data, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @make_funny_pointers(ptr noundef %5)
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 5
  store i32 0, ptr %whichptr, align 8
  %6 = load ptr, ptr %main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 6
  store i32 0, ptr %context_state, align 4
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 8
  store i32 0, ptr %iMCU_row_ctr, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %7 = load ptr, ptr %main, align 8
  %process_data3 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %7, i64 0, i32 1
  store ptr @process_data_simple_main, ptr %process_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %8, i64 0, i32 2
  store i32 0, ptr %buffer_full, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %8, i64 0, i32 3
  store i32 0, ptr %rowgroup_ctr, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %9 = load ptr, ptr %main, align 8
  %process_data6 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %9, i64 0, i32 1
  store ptr @process_data_crank_post, ptr %process_data6, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr noundef nonnull %10) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @alloc_funny_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %xbuf = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %1 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %1, ptr %M, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %4 = load ptr, ptr %3, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 8
  %5 = load i32, ptr %num_components, align 8
  %mul = shl nsw i32 %5, 1
  %conv = sext i32 %mul to i64
  %mul2 = shl nsw i64 %conv, 3
  %call = call ptr %4(ptr noundef %2, i32 noundef 1, i64 noundef %mul2) #1
  %6 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 4
  store ptr %call, ptr %xbuffer, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 8
  %8 = load i32, ptr %num_components5, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 %idx.ext
  %9 = load ptr, ptr %main, align 8
  %arrayidx7 = getelementptr inbounds %struct.my_main_controller, ptr %9, i64 0, i32 4, i64 1
  store ptr %add.ptr, ptr %arrayidx7, align 8
  store i32 0, ptr %ci, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 43
  %11 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi ptr [ %11, %entry ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge, ptr %compptr, align 8
  %12 = load i32, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %num_components8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 8
  %14 = load i32, ptr %num_components8, align 8
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %v_samp_factor, align 4
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %DCT_scaled_size, align 4
  %mul10 = mul nsw i32 %16, %17
  %18 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 59
  %19 = load i32, ptr %min_DCT_scaled_size11, align 4
  %div = sdiv i32 %mul10, %19
  store i32 %div, ptr %rgroup, align 4
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %mem12, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load i32, ptr %M, align 4
  %add = add nsw i32 %23, 4
  %mul14 = mul nsw i32 %div, %add
  %mul15 = shl nsw i32 %mul14, 1
  %conv16 = sext i32 %mul15 to i64
  %mul17 = shl nsw i64 %conv16, 3
  %call18 = call ptr %21(ptr noundef %22, i32 noundef 1, i64 noundef %mul17) #1
  store ptr %call18, ptr %xbuf, align 8
  %24 = load i32, ptr %rgroup, align 4
  %idx.ext19 = sext i32 %24 to i64
  %add.ptr20 = getelementptr inbounds ptr, ptr %call18, i64 %idx.ext19
  store ptr %add.ptr20, ptr %xbuf, align 8
  %25 = load ptr, ptr %main, align 8
  %xbuffer21 = getelementptr inbounds %struct.my_main_controller, ptr %25, i64 0, i32 4
  %26 = load ptr, ptr %xbuffer21, align 8
  %27 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  store ptr %add.ptr20, ptr %arrayidx23, align 8
  %28 = load i32, ptr %rgroup, align 4
  %29 = load i32, ptr %M, align 4
  %add24 = add nsw i32 %29, 4
  %mul25 = mul nsw i32 %28, %add24
  %30 = load ptr, ptr %xbuf, align 8
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds ptr, ptr %30, i64 %idx.ext26
  store ptr %add.ptr27, ptr %xbuf, align 8
  %31 = load ptr, ptr %main, align 8
  %arrayidx29 = getelementptr inbounds %struct.my_main_controller, ptr %31, i64 0, i32 4, i64 1
  %32 = load ptr, ptr %arrayidx29, align 8
  %33 = load i32, ptr %ci, align 4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %32, i64 %idxprom30
  store ptr %add.ptr27, ptr %arrayidx31, align 8
  %34 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %ci, align 4
  %35 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @process_data_context_main(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %buffer_full, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 75
  %3 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %decompress_data, align 8
  %5 = load ptr, ptr %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %5, i64 0, i32 5
  %6 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.my_main_controller, ptr %5, i64 0, i32 4, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %call = call i32 %4(ptr noundef %2, ptr noundef %7) #1
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %sw.epilog, label %if.end

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %main, align 8
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, ptr %8, i64 0, i32 2
  store i32 1, ptr %buffer_full4, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %8, i64 0, i32 8
  %9 = load i32, ptr %iMCU_row_ctr, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %iMCU_row_ctr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %context_state, align 4
  switch i32 %11, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb18
    i32 1, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end5
  %12 = load ptr, ptr %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 76
  %13 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %post_process_data, align 8
  %15 = load ptr, ptr %main, align 8
  %whichptr7 = getelementptr inbounds %struct.my_main_controller, ptr %15, i64 0, i32 5
  %16 = load i32, ptr %whichptr7, align 8
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds %struct.my_main_controller, ptr %15, i64 0, i32 4, i64 %idxprom8
  %17 = load ptr, ptr %arrayidx9, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %18, i64 0, i32 7
  %19 = load i32, ptr %rowgroups_avail, align 8
  %20 = load ptr, ptr %output_buf.addr, align 8
  %21 = load ptr, ptr %out_row_ctr.addr, align 8
  %22 = load i32, ptr %out_rows_avail.addr, align 4
  call void %14(ptr noundef %12, ptr noundef %17, ptr noundef nonnull %rowgroup_ctr, i32 noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22) #1
  %23 = load ptr, ptr %main, align 8
  %rowgroup_ctr10 = getelementptr inbounds %struct.my_main_controller, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %rowgroup_ctr10, align 4
  %rowgroups_avail11 = getelementptr inbounds %struct.my_main_controller, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %rowgroups_avail11, align 8
  %cmp = icmp ult i32 %24, %25
  br i1 %cmp, label %sw.epilog, label %if.end13

if.end13:                                         ; preds = %sw.bb
  %26 = load ptr, ptr %main, align 8
  %context_state14 = getelementptr inbounds %struct.my_main_controller, ptr %26, i64 0, i32 6
  store i32 0, ptr %context_state14, align 4
  %27 = load ptr, ptr %out_row_ctr.addr, align 8
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %out_rows_avail.addr, align 4
  %cmp15.not = icmp ult i32 %28, %29
  br i1 %cmp15.not, label %sw.bb18, label %sw.epilog

sw.bb18:                                          ; preds = %if.end13, %if.end5
  %30 = load ptr, ptr %main, align 8
  %rowgroup_ctr19 = getelementptr inbounds %struct.my_main_controller, ptr %30, i64 0, i32 3
  store i32 0, ptr %rowgroup_ctr19, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 59
  %32 = load i32, ptr %min_DCT_scaled_size, align 4
  %sub = add nsw i32 %32, -1
  %33 = load ptr, ptr %main, align 8
  %rowgroups_avail20 = getelementptr inbounds %struct.my_main_controller, ptr %33, i64 0, i32 7
  store i32 %sub, ptr %rowgroups_avail20, align 8
  %iMCU_row_ctr21 = getelementptr inbounds %struct.my_main_controller, ptr %33, i64 0, i32 8
  %34 = load i32, ptr %iMCU_row_ctr21, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 60
  %36 = load i32, ptr %total_iMCU_rows, align 8
  %cmp22 = icmp eq i32 %34, %36
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb18
  %37 = load ptr, ptr %cinfo.addr, align 8
  call void @set_bottom_pointers(ptr noundef %37)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %sw.bb18
  %38 = load ptr, ptr %main, align 8
  %context_state25 = getelementptr inbounds %struct.my_main_controller, ptr %38, i64 0, i32 6
  store i32 1, ptr %context_state25, align 4
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end24, %if.end5
  %39 = load ptr, ptr %cinfo.addr, align 8
  %post27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 76
  %40 = load ptr, ptr %post27, align 8
  %post_process_data28 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %40, i64 0, i32 1
  %41 = load ptr, ptr %post_process_data28, align 8
  %42 = load ptr, ptr %main, align 8
  %whichptr30 = getelementptr inbounds %struct.my_main_controller, ptr %42, i64 0, i32 5
  %43 = load i32, ptr %whichptr30, align 8
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds %struct.my_main_controller, ptr %42, i64 0, i32 4, i64 %idxprom31
  %44 = load ptr, ptr %arrayidx32, align 8
  %rowgroup_ctr33 = getelementptr inbounds %struct.my_main_controller, ptr %42, i64 0, i32 3
  %45 = load ptr, ptr %main, align 8
  %rowgroups_avail34 = getelementptr inbounds %struct.my_main_controller, ptr %45, i64 0, i32 7
  %46 = load i32, ptr %rowgroups_avail34, align 8
  %47 = load ptr, ptr %output_buf.addr, align 8
  %48 = load ptr, ptr %out_row_ctr.addr, align 8
  %49 = load i32, ptr %out_rows_avail.addr, align 4
  call void %41(ptr noundef %39, ptr noundef %44, ptr noundef nonnull %rowgroup_ctr33, i32 noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49) #1
  %50 = load ptr, ptr %main, align 8
  %rowgroup_ctr35 = getelementptr inbounds %struct.my_main_controller, ptr %50, i64 0, i32 3
  %51 = load i32, ptr %rowgroup_ctr35, align 4
  %rowgroups_avail36 = getelementptr inbounds %struct.my_main_controller, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %rowgroups_avail36, align 8
  %cmp37 = icmp ult i32 %51, %52
  br i1 %cmp37, label %sw.epilog, label %if.end39

if.end39:                                         ; preds = %sw.bb26
  %53 = load ptr, ptr %main, align 8
  %iMCU_row_ctr40 = getelementptr inbounds %struct.my_main_controller, ptr %53, i64 0, i32 8
  %54 = load i32, ptr %iMCU_row_ctr40, align 4
  %cmp41 = icmp eq i32 %54, 1
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  %55 = load ptr, ptr %cinfo.addr, align 8
  call void @set_wraparound_pointers(ptr noundef %55)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %56 = load ptr, ptr %main, align 8
  %whichptr44 = getelementptr inbounds %struct.my_main_controller, ptr %56, i64 0, i32 5
  %57 = load i32, ptr %whichptr44, align 8
  %xor = xor i32 %57, 1
  store i32 %xor, ptr %whichptr44, align 8
  %buffer_full45 = getelementptr inbounds %struct.my_main_controller, ptr %56, i64 0, i32 2
  store i32 0, ptr %buffer_full45, align 8
  %58 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i64 0, i32 59
  %59 = load i32, ptr %min_DCT_scaled_size46, align 4
  %add = add nsw i32 %59, 1
  %60 = load ptr, ptr %main, align 8
  %rowgroup_ctr47 = getelementptr inbounds %struct.my_main_controller, ptr %60, i64 0, i32 3
  store i32 %add, ptr %rowgroup_ctr47, align 4
  %61 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i64 0, i32 59
  %62 = load i32, ptr %min_DCT_scaled_size48, align 4
  %add49 = add nsw i32 %62, 2
  %63 = load ptr, ptr %main, align 8
  %rowgroups_avail50 = getelementptr inbounds %struct.my_main_controller, ptr %63, i64 0, i32 7
  store i32 %add49, ptr %rowgroups_avail50, align 8
  %context_state51 = getelementptr inbounds %struct.my_main_controller, ptr %63, i64 0, i32 6
  store i32 2, ptr %context_state51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %if.end13, %sw.bb, %if.then, %if.end43, %if.end5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @make_funny_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %xbuf0 = alloca ptr, align 8
  %xbuf1 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %1 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %1, ptr %M, align 4
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 43
  %3 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %entry
  %storemerge = phi ptr [ %3, %entry ], [ %incdec.ptr, %for.inc54 ]
  store ptr %storemerge, ptr %compptr, align 8
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end56

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %v_samp_factor, align 4
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 59
  %11 = load i32, ptr %min_DCT_scaled_size2, align 4
  %div = sdiv i32 %mul, %11
  store i32 %div, ptr %rgroup, align 4
  %12 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %xbuffer, align 8
  %14 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx3, align 8
  store ptr %15, ptr %xbuf0, align 8
  %16 = load ptr, ptr %main, align 8
  %arrayidx5 = getelementptr inbounds %struct.my_main_controller, ptr %16, i64 0, i32 4, i64 1
  %17 = load ptr, ptr %arrayidx5, align 8
  %18 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %17, i64 %idxprom6
  %19 = load ptr, ptr %arrayidx7, align 8
  store ptr %19, ptr %xbuf1, align 8
  %20 = load ptr, ptr %main, align 8
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.my_main_controller, ptr %20, i64 0, i32 1, i64 %idxprom8
  %21 = load ptr, ptr %arrayidx9, align 8
  store ptr %21, ptr %buf, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.body13, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.body13 ]
  store i32 %storemerge1, ptr %i, align 4
  %22 = load i32, ptr %rgroup, align 4
  %23 = load i32, ptr %M, align 4
  %add = add nsw i32 %23, 2
  %mul11 = mul nsw i32 %22, %add
  %cmp12 = icmp slt i32 %storemerge1, %mul11
  br i1 %cmp12, label %for.body13, label %for.cond20

for.body13:                                       ; preds = %for.cond10
  %24 = load ptr, ptr %buf, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %24, i64 %idxprom14
  %26 = load ptr, ptr %arrayidx15, align 8
  %27 = load ptr, ptr %xbuf1, align 8
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %27, i64 %idxprom16
  store ptr %26, ptr %arrayidx17, align 8
  %28 = load ptr, ptr %xbuf0, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %28, i64 %idxprom18
  store ptr %26, ptr %arrayidx19, align 8
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  br label %for.cond10, !llvm.loop !9

for.cond20:                                       ; preds = %for.cond10, %for.body23
  %storemerge2 = phi i32 [ %inc42, %for.body23 ], [ 0, %for.cond10 ]
  store i32 %storemerge2, ptr %i, align 4
  %31 = load i32, ptr %rgroup, align 4
  %mul21 = shl nsw i32 %31, 1
  %cmp22 = icmp slt i32 %storemerge2, %mul21
  br i1 %cmp22, label %for.body23, label %for.cond44

for.body23:                                       ; preds = %for.cond20
  %32 = load ptr, ptr %buf, align 8
  %33 = load i32, ptr %rgroup, align 4
  %34 = load i32, ptr %M, align 4
  %mul24 = mul nsw i32 %33, %34
  %35 = load i32, ptr %i, align 4
  %add25 = add nsw i32 %mul24, %35
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %32, i64 %idxprom26
  %36 = load ptr, ptr %arrayidx27, align 8
  %37 = load ptr, ptr %xbuf1, align 8
  %38 = load i32, ptr %rgroup, align 4
  %39 = load i32, ptr %M, align 4
  %sub = add nsw i32 %39, -2
  %mul28 = mul nsw i32 %38, %sub
  %40 = load i32, ptr %i, align 4
  %add29 = add nsw i32 %mul28, %40
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %37, i64 %idxprom30
  store ptr %36, ptr %arrayidx31, align 8
  %41 = load ptr, ptr %buf, align 8
  %42 = load i32, ptr %rgroup, align 4
  %43 = load i32, ptr %M, align 4
  %sub32 = add nsw i32 %43, -2
  %mul33 = mul nsw i32 %42, %sub32
  %44 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %mul33, %44
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %41, i64 %idxprom35
  %45 = load ptr, ptr %arrayidx36, align 8
  %46 = load ptr, ptr %xbuf1, align 8
  %47 = load i32, ptr %rgroup, align 4
  %48 = load i32, ptr %M, align 4
  %mul37 = mul nsw i32 %47, %48
  %49 = load i32, ptr %i, align 4
  %add38 = add nsw i32 %mul37, %49
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %46, i64 %idxprom39
  store ptr %45, ptr %arrayidx40, align 8
  %50 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %50, 1
  br label %for.cond20, !llvm.loop !10

for.cond44:                                       ; preds = %for.cond20, %for.body46
  %storemerge3 = phi i32 [ %inc52, %for.body46 ], [ 0, %for.cond20 ]
  store i32 %storemerge3, ptr %i, align 4
  %51 = load i32, ptr %rgroup, align 4
  %cmp45 = icmp slt i32 %storemerge3, %51
  br i1 %cmp45, label %for.body46, label %for.inc54

for.body46:                                       ; preds = %for.cond44
  %52 = load ptr, ptr %xbuf0, align 8
  %53 = load ptr, ptr %52, align 8
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %rgroup, align 4
  %sub48 = sub nsw i32 %54, %55
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %52, i64 %idxprom49
  store ptr %53, ptr %arrayidx50, align 8
  %56 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %56, 1
  br label %for.cond44, !llvm.loop !11

for.inc54:                                        ; preds = %for.cond44
  %57 = load i32, ptr %ci, align 4
  %inc55 = add nsw i32 %57, 1
  store i32 %inc55, ptr %ci, align 4
  %58 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %58, i64 1
  br label %for.cond, !llvm.loop !12

for.end56:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @process_data_simple_main(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  %rowgroups_avail = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %buffer_full, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 75
  %3 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %decompress_data, align 8
  %5 = load ptr, ptr %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %5, i64 0, i32 1
  %call = call i32 %4(ptr noundef %2, ptr noundef nonnull %buffer) #1
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end12, label %if.end

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %main, align 8
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 2
  store i32 1, ptr %buffer_full4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 59
  %8 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %8, ptr %rowgroups_avail, align 4
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 76
  %9 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %post_process_data, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %main, align 8
  %buffer6 = getelementptr inbounds %struct.my_main_controller, ptr %12, i64 0, i32 1
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %rowgroups_avail, align 4
  %14 = load ptr, ptr %output_buf.addr, align 8
  %15 = load ptr, ptr %out_row_ctr.addr, align 8
  %16 = load i32, ptr %out_rows_avail.addr, align 4
  call void %10(ptr noundef %11, ptr noundef nonnull %buffer6, ptr noundef nonnull %rowgroup_ctr, i32 noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16) #1
  %17 = load ptr, ptr %main, align 8
  %rowgroup_ctr8 = getelementptr inbounds %struct.my_main_controller, ptr %17, i64 0, i32 3
  %18 = load i32, ptr %rowgroup_ctr8, align 4
  %19 = load i32, ptr %rowgroups_avail, align 4
  %cmp.not = icmp ult i32 %18, %19
  br i1 %cmp.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end5
  %20 = load ptr, ptr %main, align 8
  %buffer_full10 = getelementptr inbounds %struct.my_main_controller, ptr %20, i64 0, i32 2
  store i32 0, ptr %buffer_full10, align 8
  %rowgroup_ctr11 = getelementptr inbounds %struct.my_main_controller, ptr %20, i64 0, i32 3
  store i32 0, ptr %rowgroup_ctr11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then9, %if.end5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @process_data_crank_post(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 76
  %0 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %post_process_data, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load ptr, ptr %out_row_ctr.addr, align 8
  %5 = load i32, ptr %out_rows_avail.addr, align 4
  call void %1(ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_bottom_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %iMCUheight = alloca i32, align 4
  %rows_left = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %xbuf = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  store i32 0, ptr %ci, align 4
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  %1 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %storemerge = phi ptr [ %1, %entry ], [ %incdec.ptr, %for.inc19 ]
  store ptr %storemerge, ptr %compptr, align 8
  %2 = load i32, ptr %ci, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 8
  %4 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 0, i32 3
  %6 = load i32, ptr %v_samp_factor, align 4
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %6, %7
  store i32 %mul, ptr %iMCUheight, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 59
  %9 = load i32, ptr %min_DCT_scaled_size, align 4
  %div = sdiv i32 %mul, %9
  store i32 %div, ptr %rgroup, align 4
  %10 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 0, i32 11
  %11 = load i32, ptr %downsampled_height, align 4
  %12 = load i32, ptr %iMCUheight, align 4
  %rem = urem i32 %11, %12
  store i32 %rem, ptr %rows_left, align 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %iMCUheight, align 4
  store i32 %13, ptr %rows_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, ptr %ci, align 4
  %cmp3 = icmp eq i32 %14, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %15 = load i32, ptr %rows_left, align 4
  %sub = add nsw i32 %15, -1
  %16 = load i32, ptr %rgroup, align 4
  %div5 = sdiv i32 %sub, %16
  %add = add nsw i32 %div5, 1
  %17 = load ptr, ptr %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %17, i64 0, i32 7
  store i32 %add, ptr %rowgroups_avail, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %18 = load ptr, ptr %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %18, i64 0, i32 5
  %19 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds %struct.my_main_controller, ptr %18, i64 0, i32 4, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 %idxprom7
  %22 = load ptr, ptr %arrayidx8, align 8
  store ptr %22, ptr %xbuf, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.body12, %if.end6
  %storemerge1 = phi i32 [ 0, %if.end6 ], [ %inc, %for.body12 ]
  store i32 %storemerge1, ptr %i, align 4
  %23 = load i32, ptr %rgroup, align 4
  %mul10 = shl nsw i32 %23, 1
  %cmp11 = icmp slt i32 %storemerge1, %mul10
  br i1 %cmp11, label %for.body12, label %for.inc19

for.body12:                                       ; preds = %for.cond9
  %24 = load ptr, ptr %xbuf, align 8
  %25 = load i32, ptr %rows_left, align 4
  %sub13 = add nsw i32 %25, -1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %24, i64 %idxprom14
  %26 = load ptr, ptr %arrayidx15, align 8
  %27 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %25, %27
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %24, i64 %idxprom17
  store ptr %26, ptr %arrayidx18, align 8
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  br label %for.cond9, !llvm.loop !13

for.inc19:                                        ; preds = %for.cond9
  %29 = load i32, ptr %ci, align 4
  %inc20 = add nsw i32 %29, 1
  store i32 %inc20, ptr %ci, align 4
  %30 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 1
  br label %for.cond, !llvm.loop !14

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_wraparound_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %xbuf0 = alloca ptr, align 8
  %xbuf1 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 74
  %0 = load ptr, ptr %main1, align 8
  store ptr %0, ptr %main, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 59
  %1 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %1, ptr %M, align 4
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 43
  %3 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %storemerge = phi ptr [ %3, %entry ], [ %incdec.ptr, %for.inc39 ]
  store ptr %storemerge, ptr %compptr, align 8
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %v_samp_factor, align 4
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 59
  %11 = load i32, ptr %min_DCT_scaled_size2, align 4
  %div = sdiv i32 %mul, %11
  store i32 %div, ptr %rgroup, align 4
  %12 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %xbuffer, align 8
  %14 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx3, align 8
  store ptr %15, ptr %xbuf0, align 8
  %16 = load ptr, ptr %main, align 8
  %arrayidx5 = getelementptr inbounds %struct.my_main_controller, ptr %16, i64 0, i32 4, i64 1
  %17 = load ptr, ptr %arrayidx5, align 8
  %18 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %17, i64 %idxprom6
  %19 = load ptr, ptr %arrayidx7, align 8
  store ptr %19, ptr %xbuf1, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.body10 ]
  store i32 %storemerge1, ptr %i, align 4
  %20 = load i32, ptr %rgroup, align 4
  %cmp9 = icmp slt i32 %storemerge1, %20
  br i1 %cmp9, label %for.body10, label %for.inc39

for.body10:                                       ; preds = %for.cond8
  %21 = load ptr, ptr %xbuf0, align 8
  %22 = load i32, ptr %rgroup, align 4
  %23 = load i32, ptr %M, align 4
  %add = add nsw i32 %23, 1
  %mul11 = mul nsw i32 %22, %add
  %24 = load i32, ptr %i, align 4
  %add12 = add nsw i32 %mul11, %24
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %21, i64 %idxprom13
  %25 = load ptr, ptr %arrayidx14, align 8
  %26 = load ptr, ptr %xbuf0, align 8
  %27 = load i32, ptr %rgroup, align 4
  %sub = sub nsw i32 %24, %27
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %26, i64 %idxprom15
  store ptr %25, ptr %arrayidx16, align 8
  %28 = load ptr, ptr %xbuf1, align 8
  %29 = load i32, ptr %M, align 4
  %add17 = add nsw i32 %29, 1
  %mul18 = mul nsw i32 %27, %add17
  %30 = load i32, ptr %i, align 4
  %add19 = add nsw i32 %mul18, %30
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %28, i64 %idxprom20
  %31 = load ptr, ptr %arrayidx21, align 8
  %32 = load ptr, ptr %xbuf1, align 8
  %33 = load i32, ptr %rgroup, align 4
  %sub22 = sub nsw i32 %30, %33
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %32, i64 %idxprom23
  store ptr %31, ptr %arrayidx24, align 8
  %34 = load ptr, ptr %xbuf0, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %34, i64 %idxprom25
  %36 = load ptr, ptr %arrayidx26, align 8
  %37 = load i32, ptr %rgroup, align 4
  %38 = load i32, ptr %M, align 4
  %add27 = add nsw i32 %38, 2
  %mul28 = mul nsw i32 %37, %add27
  %39 = load i32, ptr %i, align 4
  %add29 = add nsw i32 %mul28, %39
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %34, i64 %idxprom30
  store ptr %36, ptr %arrayidx31, align 8
  %40 = load ptr, ptr %xbuf1, align 8
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %40, i64 %idxprom32
  %41 = load ptr, ptr %arrayidx33, align 8
  %42 = load i32, ptr %rgroup, align 4
  %43 = load i32, ptr %M, align 4
  %add34 = add nsw i32 %43, 2
  %mul35 = mul nsw i32 %42, %add34
  %44 = load i32, ptr %i, align 4
  %add36 = add nsw i32 %mul35, %44
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %40, i64 %idxprom37
  store ptr %41, ptr %arrayidx38, align 8
  %45 = load i32, ptr %i, align 4
  %inc = add nsw i32 %45, 1
  br label %for.cond8, !llvm.loop !15

for.inc39:                                        ; preds = %for.cond8
  %46 = load i32, ptr %ci, align 4
  %inc40 = add nsw i32 %46, 1
  store i32 %inc40, ptr %ci, align 4
  %47 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 1
  br label %for.cond, !llvm.loop !16

for.end41:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
