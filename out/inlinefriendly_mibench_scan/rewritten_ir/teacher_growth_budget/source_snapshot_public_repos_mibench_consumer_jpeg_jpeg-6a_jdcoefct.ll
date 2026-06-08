; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdcoefct.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdcoefct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [10 x ptr], [10 x ptr], ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }

; Function Attrs: nounwind ssp uwtable
define void @jinit_d_coef_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca ptr, align 8
  %ci = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 224) #2
  store ptr %call, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 75
  store ptr %call, ptr %coef1, align 8
  store ptr @start_input_pass, ptr %call, align 8
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %call, i64 0, i32 2
  store ptr @start_output_pass, ptr %start_output_pass, align 8
  %3 = load ptr, ptr %coef, align 8
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 6
  store ptr null, ptr %coef_bits_latch, align 8
  %4 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 43
  %6 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then
  %storemerge1 = phi ptr [ %6, %if.then ], [ %incdec.ptr, %if.end ]
  store ptr %storemerge1, ptr %compptr, align 8
  %7 = load i32, ptr %ci, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 8
  %9 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %v_samp_factor, align 4
  store i32 %11, ptr %access_rows, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 44
  %13 = load i32, ptr %progressive_mode, align 8
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %for.body
  %14 = load i32, ptr %access_rows, align 4
  %mul = mul nsw i32 %14, 3
  store i32 %mul, ptr %access_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %15 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 1
  %16 = load ptr, ptr %mem5, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %16, i64 0, i32 5
  %17 = load ptr, ptr %request_virt_barray, align 8
  %18 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 7
  %19 = load i32, ptr %width_in_blocks, align 4
  %conv = zext i32 %19 to i64
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %h_samp_factor, align 8
  %conv6 = sext i32 %20 to i64
  %call7 = call i64 @jround_up(i64 noundef %conv, i64 noundef %conv6) #2
  %conv8 = trunc i64 %call7 to i32
  %21 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 8
  %22 = load i32, ptr %height_in_blocks, align 8
  %conv9 = zext i32 %22 to i64
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %v_samp_factor10, align 4
  %conv11 = sext i32 %23 to i64
  %call12 = call i64 @jround_up(i64 noundef %conv9, i64 noundef %conv11) #2
  %conv13 = trunc i64 %call12 to i32
  %24 = load i32, ptr %access_rows, align 4
  %call14 = call ptr %17(ptr noundef %15, i32 noundef 1, i32 noundef 1, i32 noundef %conv8, i32 noundef %conv13, i32 noundef %24) #2
  %25 = load ptr, ptr %coef, align 8
  %26 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds %struct.my_coef_controller, ptr %25, i64 0, i32 5, i64 %idxprom
  store ptr %call14, ptr %arrayidx, align 8
  %27 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %ci, align 4
  %28 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %coef, align 8
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %29, i64 0, i32 1
  store ptr @consume_data, ptr %consume_data, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %29, i64 0, i32 3
  store ptr @decompress_data, ptr %decompress_data, align 8
  %whole_image17 = getelementptr inbounds %struct.my_coef_controller, ptr %29, i64 0, i32 5
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %29, i64 0, i32 4
  store ptr %whole_image17, ptr %coef_arrays, align 8
  br label %if.end36

if.else:                                          ; preds = %entry
  %30 = load ptr, ptr %cinfo.addr, align 8
  %mem19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i64 0, i32 1
  %31 = load ptr, ptr %mem19, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %31, i64 0, i32 1
  %32 = load ptr, ptr %alloc_large, align 8
  %call20 = call ptr %32(ptr noundef %30, i32 noundef 1, i64 noundef 1280) #2
  store ptr %call20, ptr %buffer, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.body24, %if.else
  %storemerge = phi i32 [ 0, %if.else ], [ %inc28, %for.body24 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp22 = icmp slt i32 %storemerge, 10
  br i1 %cmp22, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond21
  %33 = load ptr, ptr %buffer, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %33, i64 %idx.ext
  %35 = load ptr, ptr %coef, align 8
  %idxprom25 = sext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds %struct.my_coef_controller, ptr %35, i64 0, i32 4, i64 %idxprom25
  store ptr %add.ptr, ptr %arrayidx26, align 8
  %36 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %36, 1
  br label %for.cond21, !llvm.loop !8

for.end29:                                        ; preds = %for.cond21
  %37 = load ptr, ptr %coef, align 8
  %consume_data31 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %37, i64 0, i32 1
  store ptr @dummy_consume_data, ptr %consume_data31, align 8
  %decompress_data33 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %37, i64 0, i32 3
  store ptr @decompress_onepass, ptr %decompress_data33, align 8
  %coef_arrays35 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %37, i64 0, i32 4
  store ptr null, ptr %coef_arrays35, align 8
  br label %if.end36

if.end36:                                         ; preds = %for.end29, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_pass(ptr noundef %cinfo) #0 {
entry:
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 35
  store i32 0, ptr %input_iMCU_row, align 8
  call void @start_iMCU_row(ptr noundef %cinfo)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %0, i64 0, i32 4
  %1 = load ptr, ptr %coef_arrays, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 18
  %3 = load i32, ptr %do_block_smoothing, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @smoothing_ok(ptr noundef %4)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %5, i64 0, i32 3
  store ptr @decompress_smooth_data, ptr %decompress_data, align 8
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %coef, align 8
  %decompress_data6 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 3
  store ptr @decompress_data, ptr %decompress_data6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 37
  store i32 0, ptr %output_iMCU_row, align 8
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @consume_data(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x ptr], align 8
  %buffer_ptr = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 62
  %2 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 63, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  store ptr %5, ptr %compptr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 8
  %7 = load ptr, ptr %access_virt_barray, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %coef, align 8
  %10 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %component_index, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct.my_coef_controller, ptr %9, i64 0, i32 5, i64 %idxprom2
  %12 = load ptr, ptr %arrayidx3, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 35
  %14 = load i32, ptr %input_iMCU_row, align 8
  %15 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %14, %16
  %call = call ptr %7(ptr noundef %8, ptr noundef %12, i32 noundef %mul, i32 noundef %16, i32 noundef 1) #2
  %17 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom5
  store ptr %call, ptr %arrayidx6, align 8
  %18 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %19, i64 0, i32 2
  %20 = load i32, ptr %MCU_vert_offset, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.end50, %for.end
  %storemerge1 = phi i32 [ %20, %for.end ], [ %inc53, %for.end50 ]
  store i32 %storemerge1, ptr %yoffset, align 4
  %21 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %21, i64 0, i32 3
  %22 = load i32, ptr %MCU_rows_per_iMCU_row, align 8
  %cmp8 = icmp slt i32 %storemerge1, %22
  br i1 %cmp8, label %for.body9, label %for.end54

for.body9:                                        ; preds = %for.cond7
  %23 = load ptr, ptr %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %MCU_ctr, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc48, %for.body9
  %storemerge2 = phi i32 [ %24, %for.body9 ], [ %inc49, %for.inc48 ]
  store i32 %storemerge2, ptr %MCU_col_num, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 64
  %26 = load i32, ptr %MCUs_per_row, align 8
  %cmp11 = icmp ult i32 %storemerge2, %26
  br i1 %cmp11, label %for.body12, label %for.end50

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %blkn, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc41, %for.body12
  %storemerge3 = phi i32 [ 0, %for.body12 ], [ %inc42, %for.inc41 ]
  store i32 %storemerge3, ptr %ci, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 62
  %28 = load i32, ptr %comps_in_scan14, align 8
  %cmp15 = icmp slt i32 %storemerge3, %28
  br i1 %cmp15, label %for.body16, label %for.end43

for.body16:                                       ; preds = %for.cond13
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 63, i64 %idxprom18
  %31 = load ptr, ptr %arrayidx19, align 8
  store ptr %31, ptr %compptr, align 8
  %32 = load i32, ptr %MCU_col_num, align 4
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 13
  %33 = load i32, ptr %MCU_width, align 4
  %mul20 = mul i32 %32, %33
  store i32 %mul20, ptr %start_col, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc38, %for.body16
  %storemerge4 = phi i32 [ 0, %for.body16 ], [ %inc39, %for.inc38 ]
  store i32 %storemerge4, ptr %yindex, align 4
  %34 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 14
  %35 = load i32, ptr %MCU_height, align 8
  %cmp22 = icmp slt i32 %storemerge4, %35
  br i1 %cmp22, label %for.body23, label %for.inc41

for.body23:                                       ; preds = %for.cond21
  %36 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom24
  %37 = load ptr, ptr %arrayidx25, align 8
  %38 = load i32, ptr %yindex, align 4
  %39 = load i32, ptr %yoffset, align 4
  %add = add nsw i32 %38, %39
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %37, i64 %idxprom26
  %40 = load ptr, ptr %arrayidx27, align 8
  %41 = load i32, ptr %start_col, align 4
  %idx.ext = zext i32 %41 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %40, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.body31, %for.body23
  %storemerge5 = phi i32 [ 0, %for.body23 ], [ %inc36, %for.body31 ]
  store i32 %storemerge5, ptr %xindex, align 4
  %42 = load ptr, ptr %compptr, align 8
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 13
  %43 = load i32, ptr %MCU_width29, align 4
  %cmp30 = icmp slt i32 %storemerge5, %43
  br i1 %cmp30, label %for.body31, label %for.inc38

for.body31:                                       ; preds = %for.cond28
  %44 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %44, i64 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %45 = load ptr, ptr %coef, align 8
  %46 = load i32, ptr %blkn, align 4
  %inc32 = add nsw i32 %46, 1
  store i32 %inc32, ptr %blkn, align 4
  %idxprom33 = sext i32 %46 to i64
  %arrayidx34 = getelementptr inbounds %struct.my_coef_controller, ptr %45, i64 0, i32 4, i64 %idxprom33
  store ptr %44, ptr %arrayidx34, align 8
  %47 = load i32, ptr %xindex, align 4
  %inc36 = add nsw i32 %47, 1
  br label %for.cond28, !llvm.loop !10

for.inc38:                                        ; preds = %for.cond28
  %48 = load i32, ptr %yindex, align 4
  %inc39 = add nsw i32 %48, 1
  br label %for.cond21, !llvm.loop !11

for.inc41:                                        ; preds = %for.cond21
  %49 = load i32, ptr %ci, align 4
  %inc42 = add nsw i32 %49, 1
  br label %for.cond13, !llvm.loop !12

for.end43:                                        ; preds = %for.cond13
  %50 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i64 0, i32 79
  %51 = load ptr, ptr %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %51, i64 0, i32 1
  %52 = load ptr, ptr %decode_mcu, align 8
  %53 = load ptr, ptr %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, ptr %53, i64 0, i32 4
  %call45 = call i32 %52(ptr noundef %50, ptr noundef nonnull %MCU_buffer44) #2
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %if.then, label %for.inc48

if.then:                                          ; preds = %for.end43
  %54 = load i32, ptr %yoffset, align 4
  %55 = load ptr, ptr %coef, align 8
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, ptr %55, i64 0, i32 2
  store i32 %54, ptr %MCU_vert_offset46, align 4
  %56 = load i32, ptr %MCU_col_num, align 4
  %MCU_ctr47 = getelementptr inbounds %struct.my_coef_controller, ptr %55, i64 0, i32 1
  store i32 %56, ptr %MCU_ctr47, align 8
  store i32 0, ptr %retval, align 4
  br label %return

for.inc48:                                        ; preds = %for.end43
  %57 = load i32, ptr %MCU_col_num, align 4
  %inc49 = add i32 %57, 1
  br label %for.cond10, !llvm.loop !13

for.end50:                                        ; preds = %for.cond10
  %58 = load ptr, ptr %coef, align 8
  %MCU_ctr51 = getelementptr inbounds %struct.my_coef_controller, ptr %58, i64 0, i32 1
  store i32 0, ptr %MCU_ctr51, align 8
  %59 = load i32, ptr %yoffset, align 4
  %inc53 = add nsw i32 %59, 1
  br label %for.cond7, !llvm.loop !14

for.end54:                                        ; preds = %for.cond7
  %60 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 35
  %61 = load i32, ptr %input_iMCU_row55, align 8
  %inc56 = add i32 %61, 1
  store i32 %inc56, ptr %input_iMCU_row55, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 60
  %62 = load i32, ptr %total_iMCU_rows, align 8
  %cmp57 = icmp ult i32 %inc56, %62
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end54
  %63 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %63)
  store i32 3, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %for.end54
  %64 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 77
  %65 = load ptr, ptr %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %65, i64 0, i32 3
  %66 = load ptr, ptr %finish_input_pass, align 8
  call void %66(ptr noundef %64) #2
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then58, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decompress_data(ptr noundef %cinfo, ptr noundef %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buffer_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %inverse_DCT = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 60
  %1 = load i32, ptr %total_iMCU_rows, align 8
  %sub = add i32 %1, -1
  store i32 %sub, ptr %last_iMCU_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 34
  %3 = load i32, ptr %input_scan_number, align 4
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 36
  %4 = load i32, ptr %output_scan_number, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 34
  %6 = load i32, ptr %input_scan_number2, align 4
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 36
  %7 = load i32, ptr %output_scan_number3, align 4
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %lor.rhs
  %8 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 35
  %9 = load i32, ptr %input_iMCU_row, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 37
  %10 = load i32, ptr %output_iMCU_row, align 8
  %cmp5 = icmp ule i32 %9, %10
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %land.rhs
  %11 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 77
  %12 = load ptr, ptr %inputctl, align 8
  %13 = load ptr, ptr %12, align 8
  %call = call i32 %13(ptr noundef %11) #2
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %while.cond, !llvm.loop !15

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %lor.rhs, %land.rhs
  store i32 0, ptr %ci, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 43
  %15 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %while.end
  %storemerge = phi ptr [ %15, %while.end ], [ %incdec.ptr42, %for.inc40 ]
  store ptr %storemerge, ptr %compptr, align 8
  %16 = load i32, ptr %ci, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 8
  %18 = load i32, ptr %num_components, align 8
  %cmp7 = icmp slt i32 %16, %18
  br i1 %cmp7, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 12
  %20 = load i32, ptr %component_needed, align 8
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %for.inc40, label %if.end9

if.end9:                                          ; preds = %for.body
  %21 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %22, i64 0, i32 8
  %23 = load ptr, ptr %access_virt_barray, align 8
  %24 = load ptr, ptr %coef, align 8
  %25 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.my_coef_controller, ptr %24, i64 0, i32 5, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 37
  %28 = load i32, ptr %output_iMCU_row10, align 8
  %29 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i64 0, i32 3
  %30 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %28, %30
  %call12 = call ptr %23(ptr noundef %21, ptr noundef %26, i32 noundef %mul, i32 noundef %30, i32 noundef 0) #2
  store ptr %call12, ptr %buffer, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 37
  %32 = load i32, ptr %output_iMCU_row13, align 8
  %33 = load i32, ptr %last_iMCU_row, align 4
  %cmp14 = icmp ult i32 %32, %33
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  %34 = load ptr, ptr %compptr, align 8
  %v_samp_factor16 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 3
  %35 = load i32, ptr %v_samp_factor16, align 4
  store i32 %35, ptr %block_rows, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end9
  %36 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 0, i32 8
  %37 = load i32, ptr %height_in_blocks, align 8
  %v_samp_factor17 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %v_samp_factor17, align 4
  %rem = urem i32 %37, %38
  store i32 %rem, ptr %block_rows, align 4
  %cmp18 = icmp eq i32 %rem, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.else
  %39 = load ptr, ptr %compptr, align 8
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 3
  %40 = load i32, ptr %v_samp_factor20, align 4
  store i32 %40, ptr %block_rows, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19, %if.then15
  %41 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i64 0, i32 80
  %42 = load ptr, ptr %idct, align 8
  %43 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %43 to i64
  %arrayidx25 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %42, i64 0, i32 1, i64 %idxprom24
  %44 = load ptr, ptr %arrayidx25, align 8
  store ptr %44, ptr %inverse_DCT, align 8
  %45 = load ptr, ptr %output_buf.addr, align 8
  %idxprom26 = sext i32 %43 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %45, i64 %idxprom26
  %46 = load ptr, ptr %arrayidx27, align 8
  store ptr %46, ptr %output_ptr, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.end, %if.end22
  %storemerge1 = phi i32 [ 0, %if.end22 ], [ %inc38, %for.end ]
  store i32 %storemerge1, ptr %block_row, align 4
  %47 = load i32, ptr %block_rows, align 4
  %cmp29 = icmp slt i32 %storemerge1, %47
  br i1 %cmp29, label %for.body30, label %for.inc40

for.body30:                                       ; preds = %for.cond28
  %48 = load ptr, ptr %buffer, align 8
  %49 = load i32, ptr %block_row, align 4
  %idxprom31 = sext i32 %49 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %48, i64 %idxprom31
  %50 = load ptr, ptr %arrayidx32, align 8
  store ptr %50, ptr %buffer_ptr, align 8
  store i32 0, ptr %output_col, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body30
  %storemerge2 = phi i32 [ 0, %for.body30 ], [ %inc, %for.body35 ]
  store i32 %storemerge2, ptr %block_num, align 4
  %51 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i64 0, i32 7
  %52 = load i32, ptr %width_in_blocks, align 4
  %cmp34 = icmp ult i32 %storemerge2, %52
  br i1 %cmp34, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond33
  %53 = load ptr, ptr %inverse_DCT, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load ptr, ptr %compptr, align 8
  %56 = load ptr, ptr %buffer_ptr, align 8
  %57 = load ptr, ptr %output_ptr, align 8
  %58 = load i32, ptr %output_col, align 4
  call void %53(ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef %58) #2
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %56, i64 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %59 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i64 0, i32 9
  %60 = load i32, ptr %DCT_scaled_size, align 4
  %61 = load i32, ptr %output_col, align 4
  %add = add i32 %61, %60
  store i32 %add, ptr %output_col, align 4
  %62 = load i32, ptr %block_num, align 4
  %inc = add i32 %62, 1
  br label %for.cond33, !llvm.loop !16

for.end:                                          ; preds = %for.cond33
  %63 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size36 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 0, i32 9
  %64 = load i32, ptr %DCT_scaled_size36, align 4
  %65 = load ptr, ptr %output_ptr, align 8
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %65, i64 %idx.ext
  store ptr %add.ptr, ptr %output_ptr, align 8
  %66 = load i32, ptr %block_row, align 4
  %inc38 = add nsw i32 %66, 1
  br label %for.cond28, !llvm.loop !17

for.inc40:                                        ; preds = %for.cond28, %for.body
  %67 = load i32, ptr %ci, align 4
  %inc41 = add nsw i32 %67, 1
  store i32 %inc41, ptr %ci, align 4
  %68 = load ptr, ptr %compptr, align 8
  %incdec.ptr42 = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i64 1
  br label %for.cond, !llvm.loop !18

for.end43:                                        ; preds = %for.cond
  %69 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 37
  %70 = load i32, ptr %output_iMCU_row44, align 8
  %inc45 = add i32 %70, 1
  store i32 %inc45, ptr %output_iMCU_row44, align 8
  %total_iMCU_rows46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 60
  %71 = load i32, ptr %total_iMCU_rows46, align 8
  %cmp47 = icmp ult i32 %inc45, %71
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.end43
  store i32 3, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %for.end43
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then48, %if.then
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @dummy_consume_data(ptr noundef %cinfo) #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decompress_onepass(ptr noundef %cinfo, ptr noundef %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %useful_width = alloca i32, align 4
  %output_ptr = alloca ptr, align 8
  %start_col = alloca i32, align 4
  %output_col = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %inverse_DCT = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 64
  %1 = load i32, ptr %MCUs_per_row, align 8
  %sub = add i32 %1, -1
  store i32 %sub, ptr %last_MCU_col, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 60
  %3 = load i32, ptr %total_iMCU_rows, align 8
  %sub2 = add i32 %3, -1
  store i32 %sub2, ptr %last_iMCU_row, align 4
  %4 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %MCU_vert_offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end60, %entry
  %storemerge = phi i32 [ %5, %entry ], [ %inc63, %for.end60 ]
  store i32 %storemerge, ptr %yoffset, align 4
  %6 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %MCU_rows_per_iMCU_row, align 8
  %cmp = icmp slt i32 %storemerge, %7
  br i1 %cmp, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %MCU_ctr, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc58, %for.body
  %storemerge1 = phi i32 [ %9, %for.body ], [ %inc59, %for.inc58 ]
  store i32 %storemerge1, ptr %MCU_col_num, align 4
  %10 = load i32, ptr %last_MCU_col, align 4
  %cmp4.not = icmp ugt i32 %storemerge1, %10
  br i1 %cmp4.not, label %for.end60, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %MCU_buffer, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 66
  %14 = load i32, ptr %blocks_in_MCU, align 8
  %conv = sext i32 %14 to i64
  %mul = shl nsw i64 %conv, 7
  call void @jzero_far(ptr noundef %12, i64 noundef %mul) #2
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 79
  %15 = load ptr, ptr %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %15, i64 0, i32 1
  %16 = load ptr, ptr %decode_mcu, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %coef, align 8
  %MCU_buffer6 = getelementptr inbounds %struct.my_coef_controller, ptr %18, i64 0, i32 4
  %call = call i32 %16(ptr noundef %17, ptr noundef nonnull %MCU_buffer6) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %19 = load i32, ptr %yoffset, align 4
  %20 = load ptr, ptr %coef, align 8
  %MCU_vert_offset7 = getelementptr inbounds %struct.my_coef_controller, ptr %20, i64 0, i32 2
  store i32 %19, ptr %MCU_vert_offset7, align 4
  %21 = load i32, ptr %MCU_col_num, align 4
  %MCU_ctr8 = getelementptr inbounds %struct.my_coef_controller, ptr %20, i64 0, i32 1
  store i32 %21, ptr %MCU_ctr8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body5
  store i32 0, ptr %blkn, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc55, %if.end
  %storemerge2 = phi i32 [ 0, %if.end ], [ %inc56, %for.inc55 ]
  store i32 %storemerge2, ptr %ci, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 62
  %23 = load i32, ptr %comps_in_scan, align 8
  %cmp10 = icmp slt i32 %storemerge2, %23
  br i1 %cmp10, label %for.body12, label %for.inc58

for.body12:                                       ; preds = %for.cond9
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 63, i64 %idxprom
  %26 = load ptr, ptr %arrayidx13, align 8
  store ptr %26, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 12
  %27 = load i32, ptr %component_needed, align 8
  %tobool14.not = icmp eq i32 %27, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body12
  %28 = load ptr, ptr %compptr, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 15
  %29 = load i32, ptr %MCU_blocks, align 4
  %30 = load i32, ptr %blkn, align 4
  %add = add nsw i32 %30, %29
  store i32 %add, ptr %blkn, align 4
  br label %for.inc55

if.end16:                                         ; preds = %for.body12
  %31 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 80
  %32 = load ptr, ptr %idct, align 8
  %33 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %component_index, align 4
  %idxprom18 = sext i32 %34 to i64
  %arrayidx19 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %32, i64 0, i32 1, i64 %idxprom18
  %35 = load ptr, ptr %arrayidx19, align 8
  store ptr %35, ptr %inverse_DCT, align 8
  %36 = load i32, ptr %MCU_col_num, align 4
  %37 = load i32, ptr %last_MCU_col, align 4
  %cmp20 = icmp ult i32 %36, %37
  %38 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 13
  %39 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 17
  %cond.in = select i1 %cmp20, ptr %MCU_width, ptr %last_col_width
  %cond = load i32, ptr %cond.in, align 4
  store i32 %cond, ptr %useful_width, align 4
  %40 = load ptr, ptr %output_buf.addr, align 8
  %41 = load i32, ptr %ci, align 4
  %idxprom22 = sext i32 %41 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %40, i64 %idxprom22
  %42 = load ptr, ptr %arrayidx23, align 8
  %43 = load i32, ptr %yoffset, align 4
  %44 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 0, i32 9
  %45 = load i32, ptr %DCT_scaled_size, align 4
  %mul24 = mul nsw i32 %43, %45
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %42, i64 %idx.ext
  store ptr %add.ptr, ptr %output_ptr, align 8
  %46 = load i32, ptr %MCU_col_num, align 4
  %47 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 0, i32 16
  %48 = load i32, ptr %MCU_sample_width, align 8
  %mul25 = mul i32 %46, %48
  store i32 %mul25, ptr %start_col, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %if.end46, %if.end16
  %storemerge3 = phi i32 [ 0, %if.end16 ], [ %inc53, %if.end46 ]
  store i32 %storemerge3, ptr %yindex, align 4
  %49 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 14
  %50 = load i32, ptr %MCU_height, align 8
  %cmp27 = icmp slt i32 %storemerge3, %50
  br i1 %cmp27, label %for.body29, label %for.inc55

for.body29:                                       ; preds = %for.cond26
  %51 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 35
  %52 = load i32, ptr %input_iMCU_row, align 8
  %53 = load i32, ptr %last_iMCU_row, align 4
  %cmp30 = icmp ult i32 %52, %53
  br i1 %cmp30, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body29
  %54 = load i32, ptr %yoffset, align 4
  %55 = load i32, ptr %yindex, align 4
  %add32 = add nsw i32 %54, %55
  %56 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %56, i64 0, i32 18
  %57 = load i32, ptr %last_row_height, align 8
  %cmp33 = icmp slt i32 %add32, %57
  br i1 %cmp33, label %if.then35, label %if.end46

if.then35:                                        ; preds = %lor.lhs.false, %for.body29
  %58 = load i32, ptr %start_col, align 4
  store i32 %58, ptr %output_col, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.body39, %if.then35
  %storemerge4 = phi i32 [ 0, %if.then35 ], [ %inc, %for.body39 ]
  store i32 %storemerge4, ptr %xindex, align 4
  %59 = load i32, ptr %useful_width, align 4
  %cmp37 = icmp slt i32 %storemerge4, %59
  br i1 %cmp37, label %for.body39, label %if.end46

for.body39:                                       ; preds = %for.cond36
  %60 = load ptr, ptr %inverse_DCT, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  %62 = load ptr, ptr %compptr, align 8
  %63 = load ptr, ptr %coef, align 8
  %64 = load i32, ptr %blkn, align 4
  %65 = load i32, ptr %xindex, align 4
  %add41 = add nsw i32 %64, %65
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds %struct.my_coef_controller, ptr %63, i64 0, i32 4, i64 %idxprom42
  %66 = load ptr, ptr %arrayidx43, align 8
  %67 = load ptr, ptr %output_ptr, align 8
  %68 = load i32, ptr %output_col, align 4
  call void %60(ptr noundef %61, ptr noundef %62, ptr noundef %66, ptr noundef %67, i32 noundef %68) #2
  %69 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_component_info, ptr %69, i64 0, i32 9
  %70 = load i32, ptr %DCT_scaled_size44, align 4
  %add45 = add i32 %68, %70
  store i32 %add45, ptr %output_col, align 4
  %71 = load i32, ptr %xindex, align 4
  %inc = add nsw i32 %71, 1
  br label %for.cond36, !llvm.loop !19

if.end46:                                         ; preds = %for.cond36, %lor.lhs.false
  %72 = load ptr, ptr %compptr, align 8
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i64 0, i32 13
  %73 = load i32, ptr %MCU_width47, align 4
  %74 = load i32, ptr %blkn, align 4
  %add48 = add nsw i32 %74, %73
  store i32 %add48, ptr %blkn, align 4
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i64 0, i32 9
  %75 = load i32, ptr %DCT_scaled_size49, align 4
  %76 = load ptr, ptr %output_ptr, align 8
  %idx.ext50 = sext i32 %75 to i64
  %add.ptr51 = getelementptr inbounds ptr, ptr %76, i64 %idx.ext50
  store ptr %add.ptr51, ptr %output_ptr, align 8
  %77 = load i32, ptr %yindex, align 4
  %inc53 = add nsw i32 %77, 1
  br label %for.cond26, !llvm.loop !20

for.inc55:                                        ; preds = %for.cond26, %if.then15
  %78 = load i32, ptr %ci, align 4
  %inc56 = add nsw i32 %78, 1
  br label %for.cond9, !llvm.loop !21

for.inc58:                                        ; preds = %for.cond9
  %79 = load i32, ptr %MCU_col_num, align 4
  %inc59 = add i32 %79, 1
  br label %for.cond3, !llvm.loop !22

for.end60:                                        ; preds = %for.cond3
  %80 = load ptr, ptr %coef, align 8
  %MCU_ctr61 = getelementptr inbounds %struct.my_coef_controller, ptr %80, i64 0, i32 1
  store i32 0, ptr %MCU_ctr61, align 8
  %81 = load i32, ptr %yoffset, align 4
  %inc63 = add nsw i32 %81, 1
  br label %for.cond, !llvm.loop !23

for.end64:                                        ; preds = %for.cond
  %82 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 37
  %83 = load i32, ptr %output_iMCU_row, align 8
  %inc65 = add i32 %83, 1
  store i32 %inc65, ptr %output_iMCU_row, align 8
  %input_iMCU_row66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 35
  %84 = load i32, ptr %input_iMCU_row66, align 8
  %inc67 = add i32 %84, 1
  store i32 %inc67, ptr %input_iMCU_row66, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i64 0, i32 60
  %86 = load i32, ptr %total_iMCU_rows68, align 8
  %cmp69 = icmp ult i32 %inc67, %86
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.end64
  %87 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %87)
  store i32 3, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %for.end64
  %88 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i64 0, i32 77
  %89 = load ptr, ptr %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %89, i64 0, i32 3
  %90 = load ptr, ptr %finish_input_pass, align 8
  call void %90(ptr noundef %88) #2
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then71, %if.then
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_iMCU_row(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 62
  %1 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %2, i64 0, i32 3
  store i32 1, ptr %MCU_rows_per_iMCU_row, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 35
  %4 = load i32, ptr %input_iMCU_row, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 60
  %5 = load i32, ptr %total_iMCU_rows, align 8
  %sub = add i32 %5, -1
  %cmp2 = icmp ult i32 %4, %sub
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 63
  %7 = load ptr, ptr %cur_comp_info, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %v_samp_factor, align 4
  %9 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, ptr %9, i64 0, i32 3
  store i32 %8, ptr %MCU_rows_per_iMCU_row4, align 8
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %10 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 63
  %11 = load ptr, ptr %cur_comp_info6, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i64 0, i32 18
  %12 = load i32, ptr %last_row_height, align 8
  %13 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, ptr %13, i64 0, i32 3
  store i32 %12, ptr %MCU_rows_per_iMCU_row8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.else5, %if.then
  %14 = load ptr, ptr %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %14, i64 0, i32 1
  store i32 0, ptr %MCU_ctr, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %14, i64 0, i32 2
  store i32 0, ptr %MCU_vert_offset, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @smoothing_ok(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %smoothing_useful = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %qtable = alloca ptr, align 8
  %coef_bits = alloca ptr, align 8
  %coef_bits_latch = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  store i32 0, ptr %smoothing_useful, align 4
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 44
  %1 = load i32, ptr %progressive_mode, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 38
  %3 = load ptr, ptr %coef_bits2, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %coef, align 8
  %coef_bits_latch3 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 6
  %5 = load ptr, ptr %coef_bits_latch3, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %mem, align 8
  %8 = load ptr, ptr %7, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 8
  %9 = load i32, ptr %num_components, align 8
  %conv = sext i32 %9 to i64
  %mul = mul nsw i64 %conv, 24
  %call = call ptr %8(ptr noundef %6, i32 noundef 1, i64 noundef %mul) #2
  %10 = load ptr, ptr %coef, align 8
  %coef_bits_latch6 = getelementptr inbounds %struct.my_coef_controller, ptr %10, i64 0, i32 6
  store ptr %call, ptr %coef_bits_latch6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %coef, align 8
  %coef_bits_latch8 = getelementptr inbounds %struct.my_coef_controller, ptr %11, i64 0, i32 6
  %12 = load ptr, ptr %coef_bits_latch8, align 8
  store ptr %12, ptr %coef_bits_latch, align 8
  store i32 0, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 43
  %14 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end7
  %storemerge = phi ptr [ %14, %if.end7 ], [ %incdec.ptr, %for.end ]
  store ptr %storemerge, ptr %compptr, align 8
  %15 = load i32, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %num_components9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 8
  %17 = load i32, ptr %num_components9, align 8
  %cmp10 = icmp slt i32 %15, %17
  br i1 %cmp10, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 19
  %19 = load ptr, ptr %quant_table, align 8
  store ptr %19, ptr %qtable, align 8
  %cmp12 = icmp eq ptr %19, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.body
  %20 = load ptr, ptr %qtable, align 8
  %21 = load i16, ptr %20, align 4
  %cmp17 = icmp eq i16 %21, 0
  br i1 %cmp17, label %if.then49, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %22 = load ptr, ptr %qtable, align 8
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %22, i64 0, i64 1
  %23 = load i16, ptr %arrayidx21, align 2
  %cmp23 = icmp eq i16 %23, 0
  br i1 %cmp23, label %if.then49, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %24 = load ptr, ptr %qtable, align 8
  %arrayidx27 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 8
  %25 = load i16, ptr %arrayidx27, align 4
  %cmp29 = icmp eq i16 %25, 0
  br i1 %cmp29, label %if.then49, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %26 = load ptr, ptr %qtable, align 8
  %arrayidx33 = getelementptr inbounds [64 x i16], ptr %26, i64 0, i64 16
  %27 = load i16, ptr %arrayidx33, align 4
  %cmp35 = icmp eq i16 %27, 0
  br i1 %cmp35, label %if.then49, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %28 = load ptr, ptr %qtable, align 8
  %arrayidx39 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 9
  %29 = load i16, ptr %arrayidx39, align 2
  %cmp41 = icmp eq i16 %29, 0
  br i1 %cmp41, label %if.then49, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %30 = load ptr, ptr %qtable, align 8
  %arrayidx45 = getelementptr inbounds [64 x i16], ptr %30, i64 0, i64 2
  %31 = load i16, ptr %arrayidx45, align 4
  %cmp47 = icmp eq i16 %31, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false43, %lor.lhs.false37, %lor.lhs.false31, %lor.lhs.false25, %lor.lhs.false19, %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false43
  %32 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 38
  %33 = load ptr, ptr %coef_bits51, align 8
  %34 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [64 x i32], ptr %33, i64 %idxprom
  store ptr %arrayidx52, ptr %coef_bits, align 8
  %35 = load i32, ptr %arrayidx52, align 4
  %cmp54 = icmp slt i32 %35, 0
  br i1 %cmp54, label %if.then56, label %for.cond58

if.then56:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

for.cond58:                                       ; preds = %if.end50, %for.inc
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 1, %if.end50 ]
  store i32 %storemerge1, ptr %coefi, align 4
  %cmp59 = icmp slt i32 %storemerge1, 6
  br i1 %cmp59, label %for.body61, label %for.end

for.body61:                                       ; preds = %for.cond58
  %36 = load ptr, ptr %coef_bits, align 8
  %37 = load i32, ptr %coefi, align 4
  %idxprom62 = sext i32 %37 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %36, i64 %idxprom62
  %38 = load i32, ptr %arrayidx63, align 4
  %39 = load ptr, ptr %coef_bits_latch, align 8
  %idxprom64 = sext i32 %37 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %39, i64 %idxprom64
  store i32 %38, ptr %arrayidx65, align 4
  %40 = load ptr, ptr %coef_bits, align 8
  %41 = load i32, ptr %coefi, align 4
  %idxprom66 = sext i32 %41 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %40, i64 %idxprom66
  %42 = load i32, ptr %arrayidx67, align 4
  %cmp68.not = icmp eq i32 %42, 0
  br i1 %cmp68.not, label %for.inc, label %if.then70

if.then70:                                        ; preds = %for.body61
  store i32 1, ptr %smoothing_useful, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body61, %if.then70
  %43 = load i32, ptr %coefi, align 4
  %inc = add nsw i32 %43, 1
  br label %for.cond58, !llvm.loop !24

for.end:                                          ; preds = %for.cond58
  %44 = load ptr, ptr %coef_bits_latch, align 8
  %add.ptr = getelementptr inbounds i32, ptr %44, i64 6
  store ptr %add.ptr, ptr %coef_bits_latch, align 8
  %45 = load i32, ptr %ci, align 4
  %inc73 = add nsw i32 %45, 1
  store i32 %inc73, ptr %ci, align 4
  %46 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 1
  br label %for.cond, !llvm.loop !25

for.end74:                                        ; preds = %for.cond
  %47 = load i32, ptr %smoothing_useful, align 4
  store i32 %47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end74, %if.then56, %if.then49, %if.then14, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decompress_smooth_data(ptr noundef %cinfo, ptr noundef %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %last_block_column = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buffer_ptr = alloca ptr, align 8
  %prev_block_row = alloca ptr, align 8
  %next_block_row = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %inverse_DCT = alloca ptr, align 8
  %first_row = alloca i32, align 4
  %last_row = alloca i32, align 4
  %workspace = alloca [64 x i16], align 2
  %coef_bits = alloca ptr, align 8
  %quanttbl = alloca ptr, align 8
  %Q00 = alloca i64, align 8
  %Q01 = alloca i64, align 8
  %Q02 = alloca i64, align 8
  %Q10 = alloca i64, align 8
  %Q11 = alloca i64, align 8
  %Q20 = alloca i64, align 8
  %num = alloca i64, align 8
  %DC1 = alloca i32, align 4
  %DC2 = alloca i32, align 4
  %DC3 = alloca i32, align 4
  %DC4 = alloca i32, align 4
  %DC5 = alloca i32, align 4
  %DC6 = alloca i32, align 4
  %DC7 = alloca i32, align 4
  %DC8 = alloca i32, align 4
  %DC9 = alloca i32, align 4
  %Al = alloca i32, align 4
  %pred = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 75
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 60
  %1 = load i32, ptr %total_iMCU_rows, align 8
  %sub = add i32 %1, -1
  store i32 %sub, ptr %last_iMCU_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 34
  %3 = load i32, ptr %input_scan_number, align 4
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 36
  %4 = load i32, ptr %output_scan_number, align 4
  %cmp.not = icmp sgt i32 %3, %4
  br i1 %cmp.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 77
  %6 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %6, i64 0, i32 5
  %7 = load i32, ptr %eoi_reached, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 34
  %9 = load i32, ptr %input_scan_number2, align 4
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 36
  %10 = load i32, ptr %output_scan_number3, align 4
  %cmp4 = icmp eq i32 %9, %10
  br i1 %cmp4, label %if.then, label %if.end8

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 68
  %12 = load i32, ptr %Ss, align 4
  %cmp5 = icmp eq i32 %12, 0
  %cond = zext i1 %cmp5 to i32
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 35
  %13 = load i32, ptr %input_iMCU_row, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 37
  %15 = load i32, ptr %output_iMCU_row, align 8
  %add = add i32 %15, %cond
  %cmp6 = icmp ugt i32 %13, %add
  br i1 %cmp6, label %while.end, label %if.end8

if.end8:                                          ; preds = %if.then, %while.body
  %16 = load ptr, ptr %cinfo.addr, align 8
  %inputctl9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 77
  %17 = load ptr, ptr %inputctl9, align 8
  %18 = load ptr, ptr %17, align 8
  %call = call i32 %18(ptr noundef %16) #2
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then11, label %while.cond, !llvm.loop !26

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond, %if.then, %land.rhs
  store i32 0, ptr %ci, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 43
  %20 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc396, %while.end
  %storemerge = phi ptr [ %20, %while.end ], [ %incdec.ptr398, %for.inc396 ]
  store ptr %storemerge, ptr %compptr, align 8
  %21 = load i32, ptr %ci, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 8
  %23 = load i32, ptr %num_components, align 8
  %cmp13 = icmp slt i32 %21, %23
  br i1 %cmp13, label %for.body, label %for.end399

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 12
  %25 = load i32, ptr %component_needed, align 8
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %for.inc396, label %if.end16

if.end16:                                         ; preds = %for.body
  %26 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 37
  %27 = load i32, ptr %output_iMCU_row17, align 8
  %28 = load i32, ptr %last_iMCU_row, align 4
  %cmp18 = icmp ult i32 %27, %28
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %29 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i64 0, i32 3
  %30 = load i32, ptr %v_samp_factor, align 4
  store i32 %30, ptr %block_rows, align 4
  %mul = shl nsw i32 %30, 1
  br label %if.end25

if.else:                                          ; preds = %if.end16
  %31 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 8
  %32 = load i32, ptr %height_in_blocks, align 8
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %v_samp_factor20, align 4
  %rem = urem i32 %32, %33
  store i32 %rem, ptr %block_rows, align 4
  %cmp21 = icmp eq i32 %rem, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else
  %34 = load ptr, ptr %compptr, align 8
  %v_samp_factor23 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 3
  %35 = load i32, ptr %v_samp_factor23, align 4
  store i32 %35, ptr %block_rows, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else
  %36 = load i32, ptr %block_rows, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  %storemerge2 = phi i32 [ %36, %if.end24 ], [ %mul, %if.then19 ]
  %storemerge1 = phi i32 [ 1, %if.end24 ], [ 0, %if.then19 ]
  store i32 %storemerge2, ptr %access_rows, align 4
  store i32 %storemerge1, ptr %last_row, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 37
  %38 = load i32, ptr %output_iMCU_row26, align 8
  %cmp27.not = icmp eq i32 %38, 0
  br i1 %cmp27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.end25
  %39 = load ptr, ptr %compptr, align 8
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 3
  %40 = load i32, ptr %v_samp_factor29, align 4
  %41 = load i32, ptr %access_rows, align 4
  %add30 = add nsw i32 %41, %40
  store i32 %add30, ptr %access_rows, align 4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i64 0, i32 1
  %43 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %43, i64 0, i32 8
  %44 = load ptr, ptr %access_virt_barray, align 8
  %45 = load ptr, ptr %coef, align 8
  %46 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds %struct.my_coef_controller, ptr %45, i64 0, i32 5, i64 %idxprom
  %47 = load ptr, ptr %arrayidx, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 37
  %49 = load i32, ptr %output_iMCU_row31, align 8
  %sub32 = add i32 %49, -1
  %50 = load ptr, ptr %compptr, align 8
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i64 0, i32 3
  %51 = load i32, ptr %v_samp_factor33, align 4
  %mul34 = mul i32 %sub32, %51
  %52 = load i32, ptr %access_rows, align 4
  %call35 = call ptr %44(ptr noundef %42, ptr noundef %47, i32 noundef %mul34, i32 noundef %52, i32 noundef 0) #2
  store ptr %call35, ptr %buffer, align 8
  %53 = load ptr, ptr %compptr, align 8
  %v_samp_factor36 = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i64 0, i32 3
  %54 = load i32, ptr %v_samp_factor36, align 4
  %idx.ext = sext i32 %54 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %call35, i64 %idx.ext
  br label %if.end44

if.else37:                                        ; preds = %if.end25
  %55 = load ptr, ptr %cinfo.addr, align 8
  %mem38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i64 0, i32 1
  %56 = load ptr, ptr %mem38, align 8
  %access_virt_barray39 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %56, i64 0, i32 8
  %57 = load ptr, ptr %access_virt_barray39, align 8
  %58 = load ptr, ptr %coef, align 8
  %59 = load i32, ptr %ci, align 4
  %idxprom41 = sext i32 %59 to i64
  %arrayidx42 = getelementptr inbounds %struct.my_coef_controller, ptr %58, i64 0, i32 5, i64 %idxprom41
  %60 = load ptr, ptr %arrayidx42, align 8
  %61 = load i32, ptr %access_rows, align 4
  %call43 = call ptr %57(ptr noundef %55, ptr noundef %60, i32 noundef 0, i32 noundef %61, i32 noundef 0) #2
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %if.then28
  %storemerge4 = phi ptr [ %call43, %if.else37 ], [ %add.ptr, %if.then28 ]
  %storemerge3 = phi i32 [ 1, %if.else37 ], [ 0, %if.then28 ]
  store ptr %storemerge4, ptr %buffer, align 8
  store i32 %storemerge3, ptr %first_row, align 4
  %62 = load ptr, ptr %coef, align 8
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, ptr %62, i64 0, i32 6
  %63 = load ptr, ptr %coef_bits_latch, align 8
  %64 = load i32, ptr %ci, align 4
  %mul45 = mul nsw i32 %64, 6
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i32, ptr %63, i64 %idx.ext46
  store ptr %add.ptr47, ptr %coef_bits, align 8
  %65 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 19
  %66 = load ptr, ptr %quant_table, align 8
  store ptr %66, ptr %quanttbl, align 8
  %67 = load i16, ptr %66, align 4
  %conv = zext i16 %67 to i64
  store i64 %conv, ptr %Q00, align 8
  %arrayidx50 = getelementptr inbounds [64 x i16], ptr %66, i64 0, i64 1
  %68 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %68 to i64
  store i64 %conv51, ptr %Q01, align 8
  %69 = load ptr, ptr %quanttbl, align 8
  %arrayidx53 = getelementptr inbounds [64 x i16], ptr %69, i64 0, i64 8
  %70 = load i16, ptr %arrayidx53, align 4
  %conv54 = zext i16 %70 to i64
  store i64 %conv54, ptr %Q10, align 8
  %arrayidx56 = getelementptr inbounds [64 x i16], ptr %69, i64 0, i64 16
  %71 = load i16, ptr %arrayidx56, align 4
  %conv57 = zext i16 %71 to i64
  store i64 %conv57, ptr %Q20, align 8
  %72 = load ptr, ptr %quanttbl, align 8
  %arrayidx59 = getelementptr inbounds [64 x i16], ptr %72, i64 0, i64 9
  %73 = load i16, ptr %arrayidx59, align 2
  %conv60 = zext i16 %73 to i64
  store i64 %conv60, ptr %Q11, align 8
  %arrayidx62 = getelementptr inbounds [64 x i16], ptr %72, i64 0, i64 2
  %74 = load i16, ptr %arrayidx62, align 4
  %conv63 = zext i16 %74 to i64
  store i64 %conv63, ptr %Q02, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 80
  %76 = load ptr, ptr %idct, align 8
  %77 = load i32, ptr %ci, align 4
  %idxprom65 = sext i32 %77 to i64
  %arrayidx66 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %76, i64 0, i32 1, i64 %idxprom65
  %78 = load ptr, ptr %arrayidx66, align 8
  store ptr %78, ptr %inverse_DCT, align 8
  %79 = load ptr, ptr %output_buf.addr, align 8
  %idxprom67 = sext i32 %77 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %79, i64 %idxprom67
  %80 = load ptr, ptr %arrayidx68, align 8
  store ptr %80, ptr %output_ptr, align 8
  br label %for.cond69

for.cond69:                                       ; preds = %for.end, %if.end44
  %storemerge5 = phi i32 [ 0, %if.end44 ], [ %inc394, %for.end ]
  store i32 %storemerge5, ptr %block_row, align 4
  %81 = load i32, ptr %block_rows, align 4
  %cmp70 = icmp slt i32 %storemerge5, %81
  br i1 %cmp70, label %for.body72, label %for.inc396

for.body72:                                       ; preds = %for.cond69
  %82 = load ptr, ptr %buffer, align 8
  %83 = load i32, ptr %block_row, align 4
  %idxprom73 = sext i32 %83 to i64
  %arrayidx74 = getelementptr inbounds ptr, ptr %82, i64 %idxprom73
  %84 = load ptr, ptr %arrayidx74, align 8
  store ptr %84, ptr %buffer_ptr, align 8
  %85 = load i32, ptr %first_row, align 4
  %tobool75.not = icmp ne i32 %85, 0
  %86 = load i32, ptr %block_row, align 4
  %cmp76 = icmp eq i32 %86, 0
  %or.cond = select i1 %tobool75.not, i1 %cmp76, i1 false
  br i1 %or.cond, label %if.then78, label %if.else79

if.then78:                                        ; preds = %for.body72
  %87 = load ptr, ptr %buffer_ptr, align 8
  br label %if.end83

if.else79:                                        ; preds = %for.body72
  %88 = load ptr, ptr %buffer, align 8
  %89 = load i32, ptr %block_row, align 4
  %sub80 = add nsw i32 %89, -1
  %idxprom81 = sext i32 %sub80 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %88, i64 %idxprom81
  %90 = load ptr, ptr %arrayidx82, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else79, %if.then78
  %storemerge6 = phi ptr [ %90, %if.else79 ], [ %87, %if.then78 ]
  store ptr %storemerge6, ptr %prev_block_row, align 8
  %91 = load i32, ptr %last_row, align 4
  %tobool84.not = icmp eq i32 %91, 0
  br i1 %tobool84.not, label %if.else90, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end83
  %92 = load i32, ptr %block_row, align 4
  %93 = load i32, ptr %block_rows, align 4
  %sub86 = add nsw i32 %93, -1
  %cmp87 = icmp eq i32 %92, %sub86
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %land.lhs.true85
  %94 = load ptr, ptr %buffer_ptr, align 8
  br label %if.end94

if.else90:                                        ; preds = %land.lhs.true85, %if.end83
  %95 = load ptr, ptr %buffer, align 8
  %96 = load i32, ptr %block_row, align 4
  %add91 = add nsw i32 %96, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %95, i64 %idxprom92
  %97 = load ptr, ptr %arrayidx93, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.else90, %if.then89
  %storemerge7 = phi ptr [ %97, %if.else90 ], [ %94, %if.then89 ]
  store ptr %storemerge7, ptr %next_block_row, align 8
  %98 = load ptr, ptr %prev_block_row, align 8
  %99 = load i16, ptr %98, align 2
  %conv97 = sext i16 %99 to i32
  store i32 %conv97, ptr %DC3, align 4
  store i32 %conv97, ptr %DC2, align 4
  store i32 %conv97, ptr %DC1, align 4
  %100 = load ptr, ptr %buffer_ptr, align 8
  %101 = load i16, ptr %100, align 2
  %conv100 = sext i16 %101 to i32
  store i32 %conv100, ptr %DC6, align 4
  store i32 %conv100, ptr %DC5, align 4
  store i32 %conv100, ptr %DC4, align 4
  %102 = load ptr, ptr %next_block_row, align 8
  %103 = load i16, ptr %102, align 2
  %conv103 = sext i16 %103 to i32
  store i32 %conv103, ptr %DC9, align 4
  store i32 %conv103, ptr %DC8, align 4
  store i32 %conv103, ptr %DC7, align 4
  store i32 0, ptr %output_col, align 4
  %104 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i64 0, i32 7
  %105 = load i32, ptr %width_in_blocks, align 4
  %sub104 = add i32 %105, -1
  store i32 %sub104, ptr %last_block_column, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %if.end385, %if.end94
  %storemerge8 = phi i32 [ 0, %if.end94 ], [ %inc, %if.end385 ]
  store i32 %storemerge8, ptr %block_num, align 4
  %106 = load i32, ptr %last_block_column, align 4
  %cmp106.not = icmp ugt i32 %storemerge8, %106
  br i1 %cmp106.not, label %for.end, label %for.body108

for.body108:                                      ; preds = %for.cond105
  %107 = load ptr, ptr %buffer_ptr, align 8
  call void @jcopy_block_row(ptr noundef %107, ptr noundef nonnull %workspace, i32 noundef 1) #2
  %108 = load i32, ptr %block_num, align 4
  %109 = load i32, ptr %last_block_column, align 4
  %cmp109 = icmp ult i32 %108, %109
  br i1 %cmp109, label %if.then111, label %if.end121

if.then111:                                       ; preds = %for.body108
  %110 = load ptr, ptr %prev_block_row, align 8
  %arrayidx112 = getelementptr inbounds [64 x i16], ptr %110, i64 1
  %111 = load i16, ptr %arrayidx112, align 2
  %conv114 = sext i16 %111 to i32
  store i32 %conv114, ptr %DC3, align 4
  %112 = load ptr, ptr %buffer_ptr, align 8
  %arrayidx115 = getelementptr inbounds [64 x i16], ptr %112, i64 1
  %113 = load i16, ptr %arrayidx115, align 2
  %conv117 = sext i16 %113 to i32
  store i32 %conv117, ptr %DC6, align 4
  %114 = load ptr, ptr %next_block_row, align 8
  %arrayidx118 = getelementptr inbounds [64 x i16], ptr %114, i64 1
  %115 = load i16, ptr %arrayidx118, align 2
  %conv120 = sext i16 %115 to i32
  store i32 %conv120, ptr %DC9, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then111, %for.body108
  %116 = load ptr, ptr %coef_bits, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %116, i64 1
  %117 = load i32, ptr %arrayidx122, align 4
  store i32 %117, ptr %Al, align 4
  %cmp123.not = icmp ne i32 %117, 0
  %arrayidx126 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 1
  %118 = load i16, ptr %arrayidx126, align 2
  %cmp128 = icmp eq i16 %118, 0
  %or.cond18 = select i1 %cmp123.not, i1 %cmp128, i1 false
  br i1 %or.cond18, label %if.then130, label %if.end171

if.then130:                                       ; preds = %if.end121
  %119 = load i64, ptr %Q00, align 8
  %mul131 = mul nsw i64 %119, 36
  %120 = load i32, ptr %DC4, align 4
  %121 = load i32, ptr %DC6, align 4
  %sub132 = sub nsw i32 %120, %121
  %conv133 = sext i32 %sub132 to i64
  %mul134 = mul nsw i64 %mul131, %conv133
  store i64 %mul134, ptr %num, align 8
  %cmp135 = icmp sgt i64 %mul134, -1
  br i1 %cmp135, label %if.then137, label %if.else151

if.then137:                                       ; preds = %if.then130
  %122 = load i64, ptr %Q01, align 8
  %shl = shl i64 %122, 7
  %123 = load i64, ptr %num, align 8
  %add138 = add nsw i64 %shl, %123
  %shl139 = shl i64 %122, 8
  %div = sdiv i64 %add138, %shl139
  %conv140 = trunc i64 %div to i32
  store i32 %conv140, ptr %pred, align 4
  %124 = load i32, ptr %Al, align 4
  %cmp141 = icmp sgt i32 %124, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.end168

land.lhs.true143:                                 ; preds = %if.then137
  %125 = load i32, ptr %pred, align 4
  %126 = load i32, ptr %Al, align 4
  %shl144 = shl i32 1, %126
  %cmp145.not = icmp slt i32 %125, %shl144
  br i1 %cmp145.not, label %if.end168, label %if.then147

if.then147:                                       ; preds = %land.lhs.true143
  %127 = load i32, ptr %Al, align 4
  %notmask17 = shl nsw i32 -1, %127
  %sub149 = xor i32 %notmask17, -1
  store i32 %sub149, ptr %pred, align 4
  br label %if.end168

if.else151:                                       ; preds = %if.then130
  %128 = load i64, ptr %Q01, align 8
  %shl152 = shl i64 %128, 7
  %129 = load i64, ptr %num, align 8
  %sub153 = sub nsw i64 %shl152, %129
  %shl154 = shl i64 %128, 8
  %div155 = sdiv i64 %sub153, %shl154
  %conv156 = trunc i64 %div155 to i32
  store i32 %conv156, ptr %pred, align 4
  %130 = load i32, ptr %Al, align 4
  %cmp157 = icmp sgt i32 %130, 0
  br i1 %cmp157, label %land.lhs.true159, label %if.end166

land.lhs.true159:                                 ; preds = %if.else151
  %131 = load i32, ptr %pred, align 4
  %132 = load i32, ptr %Al, align 4
  %shl160 = shl i32 1, %132
  %cmp161.not = icmp slt i32 %131, %shl160
  br i1 %cmp161.not, label %if.end166, label %if.then163

if.then163:                                       ; preds = %land.lhs.true159
  %133 = load i32, ptr %Al, align 4
  %notmask16 = shl nsw i32 -1, %133
  %sub165 = xor i32 %notmask16, -1
  store i32 %sub165, ptr %pred, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %land.lhs.true159, %if.else151
  %134 = load i32, ptr %pred, align 4
  %sub167 = sub nsw i32 0, %134
  store i32 %sub167, ptr %pred, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then137, %land.lhs.true143, %if.then147, %if.end166
  %135 = load i32, ptr %pred, align 4
  %conv169 = trunc i32 %135 to i16
  %arrayidx170 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 1
  store i16 %conv169, ptr %arrayidx170, align 2
  br label %if.end171

if.end171:                                        ; preds = %if.end168, %if.end121
  %136 = load ptr, ptr %coef_bits, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %136, i64 2
  %137 = load i32, ptr %arrayidx172, align 4
  store i32 %137, ptr %Al, align 4
  %cmp173.not = icmp ne i32 %137, 0
  %arrayidx176 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 8
  %138 = load i16, ptr %arrayidx176, align 2
  %cmp178 = icmp eq i16 %138, 0
  %or.cond19 = select i1 %cmp173.not, i1 %cmp178, i1 false
  br i1 %or.cond19, label %if.then180, label %if.end223

if.then180:                                       ; preds = %if.end171
  %139 = load i64, ptr %Q00, align 8
  %mul181 = mul nsw i64 %139, 36
  %140 = load i32, ptr %DC2, align 4
  %141 = load i32, ptr %DC8, align 4
  %sub182 = sub nsw i32 %140, %141
  %conv183 = sext i32 %sub182 to i64
  %mul184 = mul nsw i64 %mul181, %conv183
  store i64 %mul184, ptr %num, align 8
  %cmp185 = icmp sgt i64 %mul184, -1
  br i1 %cmp185, label %if.then187, label %if.else203

if.then187:                                       ; preds = %if.then180
  %142 = load i64, ptr %Q10, align 8
  %shl188 = shl i64 %142, 7
  %143 = load i64, ptr %num, align 8
  %add189 = add nsw i64 %shl188, %143
  %shl190 = shl i64 %142, 8
  %div191 = sdiv i64 %add189, %shl190
  %conv192 = trunc i64 %div191 to i32
  store i32 %conv192, ptr %pred, align 4
  %144 = load i32, ptr %Al, align 4
  %cmp193 = icmp sgt i32 %144, 0
  br i1 %cmp193, label %land.lhs.true195, label %if.end220

land.lhs.true195:                                 ; preds = %if.then187
  %145 = load i32, ptr %pred, align 4
  %146 = load i32, ptr %Al, align 4
  %shl196 = shl i32 1, %146
  %cmp197.not = icmp slt i32 %145, %shl196
  br i1 %cmp197.not, label %if.end220, label %if.then199

if.then199:                                       ; preds = %land.lhs.true195
  %147 = load i32, ptr %Al, align 4
  %notmask15 = shl nsw i32 -1, %147
  %sub201 = xor i32 %notmask15, -1
  store i32 %sub201, ptr %pred, align 4
  br label %if.end220

if.else203:                                       ; preds = %if.then180
  %148 = load i64, ptr %Q10, align 8
  %shl204 = shl i64 %148, 7
  %149 = load i64, ptr %num, align 8
  %sub205 = sub nsw i64 %shl204, %149
  %shl206 = shl i64 %148, 8
  %div207 = sdiv i64 %sub205, %shl206
  %conv208 = trunc i64 %div207 to i32
  store i32 %conv208, ptr %pred, align 4
  %150 = load i32, ptr %Al, align 4
  %cmp209 = icmp sgt i32 %150, 0
  br i1 %cmp209, label %land.lhs.true211, label %if.end218

land.lhs.true211:                                 ; preds = %if.else203
  %151 = load i32, ptr %pred, align 4
  %152 = load i32, ptr %Al, align 4
  %shl212 = shl i32 1, %152
  %cmp213.not = icmp slt i32 %151, %shl212
  br i1 %cmp213.not, label %if.end218, label %if.then215

if.then215:                                       ; preds = %land.lhs.true211
  %153 = load i32, ptr %Al, align 4
  %notmask14 = shl nsw i32 -1, %153
  %sub217 = xor i32 %notmask14, -1
  store i32 %sub217, ptr %pred, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %land.lhs.true211, %if.else203
  %154 = load i32, ptr %pred, align 4
  %sub219 = sub nsw i32 0, %154
  store i32 %sub219, ptr %pred, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then187, %land.lhs.true195, %if.then199, %if.end218
  %155 = load i32, ptr %pred, align 4
  %conv221 = trunc i32 %155 to i16
  %arrayidx222 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 8
  store i16 %conv221, ptr %arrayidx222, align 2
  br label %if.end223

if.end223:                                        ; preds = %if.end220, %if.end171
  %156 = load ptr, ptr %coef_bits, align 8
  %arrayidx224 = getelementptr inbounds i32, ptr %156, i64 3
  %157 = load i32, ptr %arrayidx224, align 4
  store i32 %157, ptr %Al, align 4
  %cmp225.not = icmp ne i32 %157, 0
  %arrayidx228 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 16
  %158 = load i16, ptr %arrayidx228, align 2
  %cmp230 = icmp eq i16 %158, 0
  %or.cond20 = select i1 %cmp225.not, i1 %cmp230, i1 false
  br i1 %or.cond20, label %if.then232, label %if.end277

if.then232:                                       ; preds = %if.end223
  %159 = load i64, ptr %Q00, align 8
  %mul233 = mul nsw i64 %159, 9
  %160 = load i32, ptr %DC2, align 4
  %161 = load i32, ptr %DC8, align 4
  %add234 = add nsw i32 %160, %161
  %162 = load i32, ptr %DC5, align 4
  %mul235.neg = mul i32 %162, -2
  %sub236 = add i32 %mul235.neg, %add234
  %conv237 = sext i32 %sub236 to i64
  %mul238 = mul nsw i64 %mul233, %conv237
  store i64 %mul238, ptr %num, align 8
  %cmp239 = icmp sgt i64 %mul238, -1
  br i1 %cmp239, label %if.then241, label %if.else257

if.then241:                                       ; preds = %if.then232
  %163 = load i64, ptr %Q20, align 8
  %shl242 = shl i64 %163, 7
  %164 = load i64, ptr %num, align 8
  %add243 = add nsw i64 %shl242, %164
  %shl244 = shl i64 %163, 8
  %div245 = sdiv i64 %add243, %shl244
  %conv246 = trunc i64 %div245 to i32
  store i32 %conv246, ptr %pred, align 4
  %165 = load i32, ptr %Al, align 4
  %cmp247 = icmp sgt i32 %165, 0
  br i1 %cmp247, label %land.lhs.true249, label %if.end274

land.lhs.true249:                                 ; preds = %if.then241
  %166 = load i32, ptr %pred, align 4
  %167 = load i32, ptr %Al, align 4
  %shl250 = shl i32 1, %167
  %cmp251.not = icmp slt i32 %166, %shl250
  br i1 %cmp251.not, label %if.end274, label %if.then253

if.then253:                                       ; preds = %land.lhs.true249
  %168 = load i32, ptr %Al, align 4
  %notmask13 = shl nsw i32 -1, %168
  %sub255 = xor i32 %notmask13, -1
  store i32 %sub255, ptr %pred, align 4
  br label %if.end274

if.else257:                                       ; preds = %if.then232
  %169 = load i64, ptr %Q20, align 8
  %shl258 = shl i64 %169, 7
  %170 = load i64, ptr %num, align 8
  %sub259 = sub nsw i64 %shl258, %170
  %shl260 = shl i64 %169, 8
  %div261 = sdiv i64 %sub259, %shl260
  %conv262 = trunc i64 %div261 to i32
  store i32 %conv262, ptr %pred, align 4
  %171 = load i32, ptr %Al, align 4
  %cmp263 = icmp sgt i32 %171, 0
  br i1 %cmp263, label %land.lhs.true265, label %if.end272

land.lhs.true265:                                 ; preds = %if.else257
  %172 = load i32, ptr %pred, align 4
  %173 = load i32, ptr %Al, align 4
  %shl266 = shl i32 1, %173
  %cmp267.not = icmp slt i32 %172, %shl266
  br i1 %cmp267.not, label %if.end272, label %if.then269

if.then269:                                       ; preds = %land.lhs.true265
  %174 = load i32, ptr %Al, align 4
  %notmask12 = shl nsw i32 -1, %174
  %sub271 = xor i32 %notmask12, -1
  store i32 %sub271, ptr %pred, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %land.lhs.true265, %if.else257
  %175 = load i32, ptr %pred, align 4
  %sub273 = sub nsw i32 0, %175
  store i32 %sub273, ptr %pred, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.then241, %land.lhs.true249, %if.then253, %if.end272
  %176 = load i32, ptr %pred, align 4
  %conv275 = trunc i32 %176 to i16
  %arrayidx276 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 16
  store i16 %conv275, ptr %arrayidx276, align 2
  br label %if.end277

if.end277:                                        ; preds = %if.end274, %if.end223
  %177 = load ptr, ptr %coef_bits, align 8
  %arrayidx278 = getelementptr inbounds i32, ptr %177, i64 4
  %178 = load i32, ptr %arrayidx278, align 4
  store i32 %178, ptr %Al, align 4
  %cmp279.not = icmp ne i32 %178, 0
  %arrayidx282 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 9
  %179 = load i16, ptr %arrayidx282, align 2
  %cmp284 = icmp eq i16 %179, 0
  %or.cond21 = select i1 %cmp279.not, i1 %cmp284, i1 false
  br i1 %or.cond21, label %if.then286, label %if.end331

if.then286:                                       ; preds = %if.end277
  %180 = load i64, ptr %Q00, align 8
  %mul287 = mul nsw i64 %180, 5
  %181 = load i32, ptr %DC1, align 4
  %182 = load i32, ptr %DC3, align 4
  %183 = load i32, ptr %DC7, align 4
  %184 = add i32 %182, %183
  %sub289 = sub i32 %181, %184
  %185 = load i32, ptr %DC9, align 4
  %add290 = add nsw i32 %sub289, %185
  %conv291 = sext i32 %add290 to i64
  %mul292 = mul nsw i64 %mul287, %conv291
  store i64 %mul292, ptr %num, align 8
  %cmp293 = icmp sgt i64 %mul292, -1
  br i1 %cmp293, label %if.then295, label %if.else311

if.then295:                                       ; preds = %if.then286
  %186 = load i64, ptr %Q11, align 8
  %shl296 = shl i64 %186, 7
  %187 = load i64, ptr %num, align 8
  %add297 = add nsw i64 %shl296, %187
  %shl298 = shl i64 %186, 8
  %div299 = sdiv i64 %add297, %shl298
  %conv300 = trunc i64 %div299 to i32
  store i32 %conv300, ptr %pred, align 4
  %188 = load i32, ptr %Al, align 4
  %cmp301 = icmp sgt i32 %188, 0
  br i1 %cmp301, label %land.lhs.true303, label %if.end328

land.lhs.true303:                                 ; preds = %if.then295
  %189 = load i32, ptr %pred, align 4
  %190 = load i32, ptr %Al, align 4
  %shl304 = shl i32 1, %190
  %cmp305.not = icmp slt i32 %189, %shl304
  br i1 %cmp305.not, label %if.end328, label %if.then307

if.then307:                                       ; preds = %land.lhs.true303
  %191 = load i32, ptr %Al, align 4
  %notmask11 = shl nsw i32 -1, %191
  %sub309 = xor i32 %notmask11, -1
  store i32 %sub309, ptr %pred, align 4
  br label %if.end328

if.else311:                                       ; preds = %if.then286
  %192 = load i64, ptr %Q11, align 8
  %shl312 = shl i64 %192, 7
  %193 = load i64, ptr %num, align 8
  %sub313 = sub nsw i64 %shl312, %193
  %shl314 = shl i64 %192, 8
  %div315 = sdiv i64 %sub313, %shl314
  %conv316 = trunc i64 %div315 to i32
  store i32 %conv316, ptr %pred, align 4
  %194 = load i32, ptr %Al, align 4
  %cmp317 = icmp sgt i32 %194, 0
  br i1 %cmp317, label %land.lhs.true319, label %if.end326

land.lhs.true319:                                 ; preds = %if.else311
  %195 = load i32, ptr %pred, align 4
  %196 = load i32, ptr %Al, align 4
  %shl320 = shl i32 1, %196
  %cmp321.not = icmp slt i32 %195, %shl320
  br i1 %cmp321.not, label %if.end326, label %if.then323

if.then323:                                       ; preds = %land.lhs.true319
  %197 = load i32, ptr %Al, align 4
  %notmask10 = shl nsw i32 -1, %197
  %sub325 = xor i32 %notmask10, -1
  store i32 %sub325, ptr %pred, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then323, %land.lhs.true319, %if.else311
  %198 = load i32, ptr %pred, align 4
  %sub327 = sub nsw i32 0, %198
  store i32 %sub327, ptr %pred, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then295, %land.lhs.true303, %if.then307, %if.end326
  %199 = load i32, ptr %pred, align 4
  %conv329 = trunc i32 %199 to i16
  %arrayidx330 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 9
  store i16 %conv329, ptr %arrayidx330, align 2
  br label %if.end331

if.end331:                                        ; preds = %if.end328, %if.end277
  %200 = load ptr, ptr %coef_bits, align 8
  %arrayidx332 = getelementptr inbounds i32, ptr %200, i64 5
  %201 = load i32, ptr %arrayidx332, align 4
  store i32 %201, ptr %Al, align 4
  %cmp333.not = icmp ne i32 %201, 0
  %arrayidx336 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 2
  %202 = load i16, ptr %arrayidx336, align 2
  %cmp338 = icmp eq i16 %202, 0
  %or.cond22 = select i1 %cmp333.not, i1 %cmp338, i1 false
  br i1 %or.cond22, label %if.then340, label %if.end385

if.then340:                                       ; preds = %if.end331
  %203 = load i64, ptr %Q00, align 8
  %mul341 = mul nsw i64 %203, 9
  %204 = load i32, ptr %DC4, align 4
  %205 = load i32, ptr %DC6, align 4
  %add342 = add nsw i32 %204, %205
  %206 = load i32, ptr %DC5, align 4
  %mul343.neg = mul i32 %206, -2
  %sub344 = add i32 %mul343.neg, %add342
  %conv345 = sext i32 %sub344 to i64
  %mul346 = mul nsw i64 %mul341, %conv345
  store i64 %mul346, ptr %num, align 8
  %cmp347 = icmp sgt i64 %mul346, -1
  br i1 %cmp347, label %if.then349, label %if.else365

if.then349:                                       ; preds = %if.then340
  %207 = load i64, ptr %Q02, align 8
  %shl350 = shl i64 %207, 7
  %208 = load i64, ptr %num, align 8
  %add351 = add nsw i64 %shl350, %208
  %shl352 = shl i64 %207, 8
  %div353 = sdiv i64 %add351, %shl352
  %conv354 = trunc i64 %div353 to i32
  store i32 %conv354, ptr %pred, align 4
  %209 = load i32, ptr %Al, align 4
  %cmp355 = icmp sgt i32 %209, 0
  br i1 %cmp355, label %land.lhs.true357, label %if.end382

land.lhs.true357:                                 ; preds = %if.then349
  %210 = load i32, ptr %pred, align 4
  %211 = load i32, ptr %Al, align 4
  %shl358 = shl i32 1, %211
  %cmp359.not = icmp slt i32 %210, %shl358
  br i1 %cmp359.not, label %if.end382, label %if.then361

if.then361:                                       ; preds = %land.lhs.true357
  %212 = load i32, ptr %Al, align 4
  %notmask9 = shl nsw i32 -1, %212
  %sub363 = xor i32 %notmask9, -1
  store i32 %sub363, ptr %pred, align 4
  br label %if.end382

if.else365:                                       ; preds = %if.then340
  %213 = load i64, ptr %Q02, align 8
  %shl366 = shl i64 %213, 7
  %214 = load i64, ptr %num, align 8
  %sub367 = sub nsw i64 %shl366, %214
  %shl368 = shl i64 %213, 8
  %div369 = sdiv i64 %sub367, %shl368
  %conv370 = trunc i64 %div369 to i32
  store i32 %conv370, ptr %pred, align 4
  %215 = load i32, ptr %Al, align 4
  %cmp371 = icmp sgt i32 %215, 0
  br i1 %cmp371, label %land.lhs.true373, label %if.end380

land.lhs.true373:                                 ; preds = %if.else365
  %216 = load i32, ptr %pred, align 4
  %217 = load i32, ptr %Al, align 4
  %shl374 = shl i32 1, %217
  %cmp375.not = icmp slt i32 %216, %shl374
  br i1 %cmp375.not, label %if.end380, label %if.then377

if.then377:                                       ; preds = %land.lhs.true373
  %218 = load i32, ptr %Al, align 4
  %notmask = shl nsw i32 -1, %218
  %sub379 = xor i32 %notmask, -1
  store i32 %sub379, ptr %pred, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.then377, %land.lhs.true373, %if.else365
  %219 = load i32, ptr %pred, align 4
  %sub381 = sub nsw i32 0, %219
  store i32 %sub381, ptr %pred, align 4
  br label %if.end382

if.end382:                                        ; preds = %if.then349, %land.lhs.true357, %if.then361, %if.end380
  %220 = load i32, ptr %pred, align 4
  %conv383 = trunc i32 %220 to i16
  %arrayidx384 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 2
  store i16 %conv383, ptr %arrayidx384, align 2
  br label %if.end385

if.end385:                                        ; preds = %if.end382, %if.end331
  %221 = load ptr, ptr %inverse_DCT, align 8
  %222 = load ptr, ptr %cinfo.addr, align 8
  %223 = load ptr, ptr %compptr, align 8
  %224 = load ptr, ptr %output_ptr, align 8
  %225 = load i32, ptr %output_col, align 4
  call void %221(ptr noundef %222, ptr noundef %223, ptr noundef nonnull %workspace, ptr noundef %224, i32 noundef %225) #2
  %226 = load i32, ptr %DC2, align 4
  store i32 %226, ptr %DC1, align 4
  %227 = load i32, ptr %DC3, align 4
  store i32 %227, ptr %DC2, align 4
  %228 = load i32, ptr %DC5, align 4
  store i32 %228, ptr %DC4, align 4
  %229 = load i32, ptr %DC6, align 4
  store i32 %229, ptr %DC5, align 4
  %230 = load i32, ptr %DC8, align 4
  store i32 %230, ptr %DC7, align 4
  %231 = load i32, ptr %DC9, align 4
  store i32 %231, ptr %DC8, align 4
  %232 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %232, i64 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %233 = load ptr, ptr %prev_block_row, align 8
  %incdec.ptr387 = getelementptr inbounds [64 x i16], ptr %233, i64 1
  store ptr %incdec.ptr387, ptr %prev_block_row, align 8
  %234 = load ptr, ptr %next_block_row, align 8
  %incdec.ptr388 = getelementptr inbounds [64 x i16], ptr %234, i64 1
  store ptr %incdec.ptr388, ptr %next_block_row, align 8
  %235 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %235, i64 0, i32 9
  %236 = load i32, ptr %DCT_scaled_size, align 4
  %237 = load i32, ptr %output_col, align 4
  %add389 = add i32 %237, %236
  store i32 %add389, ptr %output_col, align 4
  %238 = load i32, ptr %block_num, align 4
  %inc = add i32 %238, 1
  br label %for.cond105, !llvm.loop !27

for.end:                                          ; preds = %for.cond105
  %239 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size390 = getelementptr inbounds %struct.jpeg_component_info, ptr %239, i64 0, i32 9
  %240 = load i32, ptr %DCT_scaled_size390, align 4
  %241 = load ptr, ptr %output_ptr, align 8
  %idx.ext391 = sext i32 %240 to i64
  %add.ptr392 = getelementptr inbounds ptr, ptr %241, i64 %idx.ext391
  store ptr %add.ptr392, ptr %output_ptr, align 8
  %242 = load i32, ptr %block_row, align 4
  %inc394 = add nsw i32 %242, 1
  br label %for.cond69, !llvm.loop !28

for.inc396:                                       ; preds = %for.cond69, %for.body
  %243 = load i32, ptr %ci, align 4
  %inc397 = add nsw i32 %243, 1
  store i32 %inc397, ptr %ci, align 4
  %244 = load ptr, ptr %compptr, align 8
  %incdec.ptr398 = getelementptr inbounds %struct.jpeg_component_info, ptr %244, i64 1
  br label %for.cond, !llvm.loop !29

for.end399:                                       ; preds = %for.cond
  %245 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row400 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %245, i64 0, i32 37
  %246 = load i32, ptr %output_iMCU_row400, align 8
  %inc401 = add i32 %246, 1
  store i32 %inc401, ptr %output_iMCU_row400, align 8
  %total_iMCU_rows402 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %245, i64 0, i32 60
  %247 = load i32, ptr %total_iMCU_rows402, align 8
  %cmp403 = icmp ult i32 %inc401, %247
  br i1 %cmp403, label %if.then405, label %if.end406

if.then405:                                       ; preds = %for.end399
  store i32 3, ptr %retval, align 4
  br label %return

if.end406:                                        ; preds = %for.end399
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end406, %if.then405, %if.then11
  %248 = load i32, ptr %retval, align 4
  ret i32 %248
}

declare void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jzero_far(ptr noundef, i64 noundef) #1

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
