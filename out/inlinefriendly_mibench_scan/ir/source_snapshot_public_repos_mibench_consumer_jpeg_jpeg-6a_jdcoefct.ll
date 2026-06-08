; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdcoefct.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdcoefct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [10 x ptr], [10 x ptr], ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 224)
  store ptr %call, ptr %coef, align 8
  %4 = load ptr, ptr %coef, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 75
  store ptr %4, ptr %coef1, align 8
  %6 = load ptr, ptr %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, ptr %6, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub, i32 0, i32 0
  store ptr @start_input_pass, ptr %start_input_pass, align 8
  %7 = load ptr, ptr %coef, align 8
  %pub2 = getelementptr inbounds %struct.my_coef_controller, ptr %7, i32 0, i32 0
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub2, i32 0, i32 2
  store ptr @start_output_pass, ptr %start_output_pass, align 8
  %8 = load ptr, ptr %coef, align 8
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, ptr %8, i32 0, i32 6
  store ptr null, ptr %coef_bits_latch, align 8
  %9 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ci, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 43
  %11 = load ptr, ptr %comp_info, align 8
  store ptr %11, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %v_samp_factor, align 4
  store i32 %16, ptr %access_rows, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 44
  %18 = load i32, ptr %progressive_mode, align 8
  %tobool3 = icmp ne i32 %18, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %19 = load i32, ptr %access_rows, align 4
  %mul = mul nsw i32 %19, 3
  store i32 %mul, ptr %access_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %20 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %mem5, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %request_virt_barray, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 7
  %25 = load i32, ptr %width_in_blocks, align 4
  %conv = zext i32 %25 to i64
  %26 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %h_samp_factor, align 8
  %conv6 = sext i32 %27 to i64
  %call7 = call i64 @jround_up(i64 noundef %conv, i64 noundef %conv6)
  %conv8 = trunc i64 %call7 to i32
  %28 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i32 0, i32 8
  %29 = load i32, ptr %height_in_blocks, align 8
  %conv9 = zext i32 %29 to i64
  %30 = load ptr, ptr %compptr, align 8
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %v_samp_factor10, align 4
  %conv11 = sext i32 %31 to i64
  %call12 = call i64 @jround_up(i64 noundef %conv9, i64 noundef %conv11)
  %conv13 = trunc i64 %call12 to i32
  %32 = load i32, ptr %access_rows, align 4
  %call14 = call ptr %22(ptr noundef %23, i32 noundef 1, i32 noundef 1, i32 noundef %conv8, i32 noundef %conv13, i32 noundef %32)
  %33 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  store ptr %call14, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %ci, align 4
  %36 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %coef, align 8
  %pub15 = getelementptr inbounds %struct.my_coef_controller, ptr %37, i32 0, i32 0
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub15, i32 0, i32 1
  store ptr @consume_data, ptr %consume_data, align 8
  %38 = load ptr, ptr %coef, align 8
  %pub16 = getelementptr inbounds %struct.my_coef_controller, ptr %38, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub16, i32 0, i32 3
  store ptr @decompress_data, ptr %decompress_data, align 8
  %39 = load ptr, ptr %coef, align 8
  %whole_image17 = getelementptr inbounds %struct.my_coef_controller, ptr %39, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %whole_image17, i64 0, i64 0
  %40 = load ptr, ptr %coef, align 8
  %pub18 = getelementptr inbounds %struct.my_coef_controller, ptr %40, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub18, i32 0, i32 4
  store ptr %arraydecay, ptr %coef_arrays, align 8
  br label %if.end36

if.else:                                          ; preds = %entry
  %41 = load ptr, ptr %cinfo.addr, align 8
  %mem19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %mem19, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %alloc_large, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %call20 = call ptr %43(ptr noundef %44, i32 noundef 1, i64 noundef 1280)
  store ptr %call20, ptr %buffer, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc27, %if.else
  %45 = load i32, ptr %i, align 4
  %cmp22 = icmp slt i32 %45, 10
  br i1 %cmp22, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond21
  %46 = load ptr, ptr %buffer, align 8
  %47 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %46, i64 %idx.ext
  %48 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %49 to i64
  %arrayidx26 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom25
  store ptr %add.ptr, ptr %arrayidx26, align 8
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %50 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %50, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond21, !llvm.loop !8

for.end29:                                        ; preds = %for.cond21
  %51 = load ptr, ptr %coef, align 8
  %pub30 = getelementptr inbounds %struct.my_coef_controller, ptr %51, i32 0, i32 0
  %consume_data31 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub30, i32 0, i32 1
  store ptr @dummy_consume_data, ptr %consume_data31, align 8
  %52 = load ptr, ptr %coef, align 8
  %pub32 = getelementptr inbounds %struct.my_coef_controller, ptr %52, i32 0, i32 0
  %decompress_data33 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub32, i32 0, i32 3
  store ptr @decompress_onepass, ptr %decompress_data33, align 8
  %53 = load ptr, ptr %coef, align 8
  %pub34 = getelementptr inbounds %struct.my_coef_controller, ptr %53, i32 0, i32 0
  %coef_arrays35 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub34, i32 0, i32 4
  store ptr null, ptr %coef_arrays35, align 8
  br label %if.end36

if.end36:                                         ; preds = %for.end29, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_input_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 35
  store i32 0, ptr %input_iMCU_row, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, ptr %2, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub, i32 0, i32 4
  %3 = load ptr, ptr %coef_arrays, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %do_block_smoothing, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @smoothing_ok(ptr noundef %6)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %coef, align 8
  %pub4 = getelementptr inbounds %struct.my_coef_controller, ptr %7, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub4, i32 0, i32 3
  store ptr @decompress_smooth_data, ptr %decompress_data, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load ptr, ptr %coef, align 8
  %pub5 = getelementptr inbounds %struct.my_coef_controller, ptr %8, i32 0, i32 0
  %decompress_data6 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %pub5, i32 0, i32 3
  store ptr @decompress_data, ptr %decompress_data6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 37
  store i32 0, ptr %output_iMCU_row, align 8
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ci, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 62
  %4 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 63
  %6 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %compptr, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %access_virt_barray, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %component_index, align 4
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom2
  %15 = load ptr, ptr %arrayidx3, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 35
  %17 = load i32, ptr %input_iMCU_row, align 8
  %18 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %17, %19
  %20 = load ptr, ptr %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %v_samp_factor4, align 4
  %call = call ptr %10(ptr noundef %11, ptr noundef %15, i32 noundef %mul, i32 noundef %21, i32 noundef 1)
  %22 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom5
  store ptr %call, ptr %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %MCU_vert_offset, align 4
  store i32 %25, ptr %yoffset, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc52, %for.end
  %26 = load i32, ptr %yoffset, align 4
  %27 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %MCU_rows_per_iMCU_row, align 8
  %cmp8 = icmp slt i32 %26, %28
  br i1 %cmp8, label %for.body9, label %for.end54

for.body9:                                        ; preds = %for.cond7
  %29 = load ptr, ptr %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %MCU_ctr, align 8
  store i32 %30, ptr %MCU_col_num, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc48, %for.body9
  %31 = load i32, ptr %MCU_col_num, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 64
  %33 = load i32, ptr %MCUs_per_row, align 8
  %cmp11 = icmp ult i32 %31, %33
  br i1 %cmp11, label %for.body12, label %for.end50

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %blkn, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc41, %for.body12
  %34 = load i32, ptr %ci, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 62
  %36 = load i32, ptr %comps_in_scan14, align 8
  %cmp15 = icmp slt i32 %34, %36
  br i1 %cmp15, label %for.body16, label %for.end43

for.body16:                                       ; preds = %for.cond13
  %37 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 63
  %38 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %38 to i64
  %arrayidx19 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info17, i64 0, i64 %idxprom18
  %39 = load ptr, ptr %arrayidx19, align 8
  store ptr %39, ptr %compptr, align 8
  %40 = load i32, ptr %MCU_col_num, align 4
  %41 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 13
  %42 = load i32, ptr %MCU_width, align 4
  %mul20 = mul i32 %40, %42
  store i32 %mul20, ptr %start_col, align 4
  store i32 0, ptr %yindex, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc38, %for.body16
  %43 = load i32, ptr %yindex, align 4
  %44 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i32 0, i32 14
  %45 = load i32, ptr %MCU_height, align 8
  %cmp22 = icmp slt i32 %43, %45
  br i1 %cmp22, label %for.body23, label %for.end40

for.body23:                                       ; preds = %for.cond21
  %46 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %46 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom24
  %47 = load ptr, ptr %arrayidx25, align 8
  %48 = load i32, ptr %yindex, align 4
  %49 = load i32, ptr %yoffset, align 4
  %add = add nsw i32 %48, %49
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %47, i64 %idxprom26
  %50 = load ptr, ptr %arrayidx27, align 8
  %51 = load i32, ptr %start_col, align 4
  %idx.ext = zext i32 %51 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %50, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  store i32 0, ptr %xindex, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.body23
  %52 = load i32, ptr %xindex, align 4
  %53 = load ptr, ptr %compptr, align 8
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i32 0, i32 13
  %54 = load i32, ptr %MCU_width29, align 4
  %cmp30 = icmp slt i32 %52, %54
  br i1 %cmp30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond28
  %55 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %55, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %56 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %56, i32 0, i32 4
  %57 = load i32, ptr %blkn, align 4
  %inc32 = add nsw i32 %57, 1
  store i32 %inc32, ptr %blkn, align 4
  %idxprom33 = sext i32 %57 to i64
  %arrayidx34 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom33
  store ptr %55, ptr %arrayidx34, align 8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  %58 = load i32, ptr %xindex, align 4
  %inc36 = add nsw i32 %58, 1
  store i32 %inc36, ptr %xindex, align 4
  br label %for.cond28, !llvm.loop !10

for.end37:                                        ; preds = %for.cond28
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %59 = load i32, ptr %yindex, align 4
  %inc39 = add nsw i32 %59, 1
  store i32 %inc39, ptr %yindex, align 4
  br label %for.cond21, !llvm.loop !11

for.end40:                                        ; preds = %for.cond21
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %60 = load i32, ptr %ci, align 4
  %inc42 = add nsw i32 %60, 1
  store i32 %inc42, ptr %ci, align 4
  br label %for.cond13, !llvm.loop !12

for.end43:                                        ; preds = %for.cond13
  %61 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 79
  %62 = load ptr, ptr %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %decode_mcu, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  %65 = load ptr, ptr %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, ptr %65, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer44, i64 0, i64 0
  %call45 = call i32 %63(ptr noundef %64, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end43
  %66 = load i32, ptr %yoffset, align 4
  %67 = load ptr, ptr %coef, align 8
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, ptr %67, i32 0, i32 2
  store i32 %66, ptr %MCU_vert_offset46, align 4
  %68 = load i32, ptr %MCU_col_num, align 4
  %69 = load ptr, ptr %coef, align 8
  %MCU_ctr47 = getelementptr inbounds %struct.my_coef_controller, ptr %69, i32 0, i32 1
  store i32 %68, ptr %MCU_ctr47, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end43
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %70 = load i32, ptr %MCU_col_num, align 4
  %inc49 = add i32 %70, 1
  store i32 %inc49, ptr %MCU_col_num, align 4
  br label %for.cond10, !llvm.loop !13

for.end50:                                        ; preds = %for.cond10
  %71 = load ptr, ptr %coef, align 8
  %MCU_ctr51 = getelementptr inbounds %struct.my_coef_controller, ptr %71, i32 0, i32 1
  store i32 0, ptr %MCU_ctr51, align 8
  br label %for.inc52

for.inc52:                                        ; preds = %for.end50
  %72 = load i32, ptr %yoffset, align 4
  %inc53 = add nsw i32 %72, 1
  store i32 %inc53, ptr %yoffset, align 4
  br label %for.cond7, !llvm.loop !14

for.end54:                                        ; preds = %for.cond7
  %73 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 35
  %74 = load i32, ptr %input_iMCU_row55, align 8
  %inc56 = add i32 %74, 1
  store i32 %inc56, ptr %input_iMCU_row55, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 60
  %76 = load i32, ptr %total_iMCU_rows, align 8
  %cmp57 = icmp ult i32 %inc56, %76
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end54
  %77 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %77)
  store i32 3, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %for.end54
  %78 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 77
  %79 = load ptr, ptr %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %79, i32 0, i32 3
  %80 = load ptr, ptr %finish_input_pass, align 8
  %81 = load ptr, ptr %cinfo.addr, align 8
  call void %80(ptr noundef %81)
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then58, %if.then
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 60
  %3 = load i32, ptr %total_iMCU_rows, align 8
  %sub = sub i32 %3, 1
  store i32 %sub, ptr %last_iMCU_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 34
  %5 = load i32, ptr %input_scan_number, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 36
  %7 = load i32, ptr %output_scan_number, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 34
  %9 = load i32, ptr %input_scan_number2, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 36
  %11 = load i32, ptr %output_scan_number3, align 4
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %12 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 35
  %13 = load i32, ptr %input_iMCU_row, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 37
  %15 = load i32, ptr %output_iMCU_row, align 8
  %cmp5 = icmp ule i32 %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %cmp5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %17 = phi i1 [ true, %while.cond ], [ %16, %land.end ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %18 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 77
  %19 = load ptr, ptr %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %consume_input, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %20(ptr noundef %21)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %ci, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 43
  %23 = load ptr, ptr %comp_info, align 8
  store ptr %23, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %while.end
  %24 = load i32, ptr %ci, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 8
  %26 = load i32, ptr %num_components, align 8
  %cmp7 = icmp slt i32 %24, %26
  br i1 %cmp7, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i32 0, i32 12
  %28 = load i32, ptr %component_needed, align 8
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.body
  br label %for.inc40

if.end9:                                          ; preds = %for.body
  %29 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %30, i32 0, i32 8
  %31 = load ptr, ptr %access_virt_barray, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  %35 = load ptr, ptr %arrayidx, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 37
  %37 = load i32, ptr %output_iMCU_row10, align 8
  %38 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %37, %39
  %40 = load ptr, ptr %compptr, align 8
  %v_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %v_samp_factor11, align 4
  %call12 = call ptr %31(ptr noundef %32, ptr noundef %35, i32 noundef %mul, i32 noundef %41, i32 noundef 0)
  store ptr %call12, ptr %buffer, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 37
  %43 = load i32, ptr %output_iMCU_row13, align 8
  %44 = load i32, ptr %last_iMCU_row, align 4
  %cmp14 = icmp ult i32 %43, %44
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  %45 = load ptr, ptr %compptr, align 8
  %v_samp_factor16 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %v_samp_factor16, align 4
  store i32 %46, ptr %block_rows, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end9
  %47 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 8
  %48 = load i32, ptr %height_in_blocks, align 8
  %49 = load ptr, ptr %compptr, align 8
  %v_samp_factor17 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %v_samp_factor17, align 4
  %rem = urem i32 %48, %50
  store i32 %rem, ptr %block_rows, align 4
  %51 = load i32, ptr %block_rows, align 4
  %cmp18 = icmp eq i32 %51, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else
  %52 = load ptr, ptr %compptr, align 8
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %v_samp_factor20, align 4
  store i32 %53, ptr %block_rows, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then15
  %54 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 80
  %55 = load ptr, ptr %idct, align 8
  %inverse_DCT23 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %56 to i64
  %arrayidx25 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT23, i64 0, i64 %idxprom24
  %57 = load ptr, ptr %arrayidx25, align 8
  store ptr %57, ptr %inverse_DCT, align 8
  %58 = load ptr, ptr %output_buf.addr, align 8
  %59 = load i32, ptr %ci, align 4
  %idxprom26 = sext i32 %59 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %58, i64 %idxprom26
  %60 = load ptr, ptr %arrayidx27, align 8
  store ptr %60, ptr %output_ptr, align 8
  store i32 0, ptr %block_row, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc37, %if.end22
  %61 = load i32, ptr %block_row, align 4
  %62 = load i32, ptr %block_rows, align 4
  %cmp29 = icmp slt i32 %61, %62
  br i1 %cmp29, label %for.body30, label %for.end39

for.body30:                                       ; preds = %for.cond28
  %63 = load ptr, ptr %buffer, align 8
  %64 = load i32, ptr %block_row, align 4
  %idxprom31 = sext i32 %64 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %63, i64 %idxprom31
  %65 = load ptr, ptr %arrayidx32, align 8
  store ptr %65, ptr %buffer_ptr, align 8
  store i32 0, ptr %output_col, align 4
  store i32 0, ptr %block_num, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body30
  %66 = load i32, ptr %block_num, align 4
  %67 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 7
  %68 = load i32, ptr %width_in_blocks, align 4
  %cmp34 = icmp ult i32 %66, %68
  br i1 %cmp34, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond33
  %69 = load ptr, ptr %inverse_DCT, align 8
  %70 = load ptr, ptr %cinfo.addr, align 8
  %71 = load ptr, ptr %compptr, align 8
  %72 = load ptr, ptr %buffer_ptr, align 8
  %73 = load ptr, ptr %output_ptr, align 8
  %74 = load i32, ptr %output_col, align 4
  call void %69(ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, i32 noundef %74)
  %75 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %75, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %76 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i32 0, i32 9
  %77 = load i32, ptr %DCT_scaled_size, align 4
  %78 = load i32, ptr %output_col, align 4
  %add = add i32 %78, %77
  store i32 %add, ptr %output_col, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body35
  %79 = load i32, ptr %block_num, align 4
  %inc = add i32 %79, 1
  store i32 %inc, ptr %block_num, align 4
  br label %for.cond33, !llvm.loop !16

for.end:                                          ; preds = %for.cond33
  %80 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size36 = getelementptr inbounds %struct.jpeg_component_info, ptr %80, i32 0, i32 9
  %81 = load i32, ptr %DCT_scaled_size36, align 4
  %82 = load ptr, ptr %output_ptr, align 8
  %idx.ext = sext i32 %81 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %82, i64 %idx.ext
  store ptr %add.ptr, ptr %output_ptr, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %83 = load i32, ptr %block_row, align 4
  %inc38 = add nsw i32 %83, 1
  store i32 %inc38, ptr %block_row, align 4
  br label %for.cond28, !llvm.loop !17

for.end39:                                        ; preds = %for.cond28
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39, %if.then8
  %84 = load i32, ptr %ci, align 4
  %inc41 = add nsw i32 %84, 1
  store i32 %inc41, ptr %ci, align 4
  %85 = load ptr, ptr %compptr, align 8
  %incdec.ptr42 = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i32 1
  store ptr %incdec.ptr42, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !18

for.end43:                                        ; preds = %for.cond
  %86 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 37
  %87 = load i32, ptr %output_iMCU_row44, align 8
  %inc45 = add i32 %87, 1
  store i32 %inc45, ptr %output_iMCU_row44, align 8
  %88 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 60
  %89 = load i32, ptr %total_iMCU_rows46, align 8
  %cmp47 = icmp ult i32 %inc45, %89
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.end43
  store i32 3, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %for.end43
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then48, %if.then
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @dummy_consume_data(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 64
  %3 = load i32, ptr %MCUs_per_row, align 8
  %sub = sub i32 %3, 1
  store i32 %sub, ptr %last_MCU_col, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 60
  %5 = load i32, ptr %total_iMCU_rows, align 8
  %sub2 = sub i32 %5, 1
  store i32 %sub2, ptr %last_iMCU_row, align 4
  %6 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %MCU_vert_offset, align 4
  store i32 %7, ptr %yoffset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %entry
  %8 = load i32, ptr %yoffset, align 4
  %9 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %MCU_rows_per_iMCU_row, align 8
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %MCU_ctr, align 8
  store i32 %12, ptr %MCU_col_num, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc58, %for.body
  %13 = load i32, ptr %MCU_col_num, align 4
  %14 = load i32, ptr %last_MCU_col, align 4
  %cmp4 = icmp ule i32 %13, %14
  br i1 %cmp4, label %for.body5, label %for.end60

for.body5:                                        ; preds = %for.cond3
  %15 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 66
  %18 = load i32, ptr %blocks_in_MCU, align 8
  %conv = sext i32 %18 to i64
  %mul = mul i64 %conv, 128
  call void @jzero_far(ptr noundef %16, i64 noundef %mul)
  %19 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 79
  %20 = load ptr, ptr %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %decode_mcu, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %coef, align 8
  %MCU_buffer6 = getelementptr inbounds %struct.my_coef_controller, ptr %23, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer6, i64 0, i64 0
  %call = call i32 %21(ptr noundef %22, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body5
  %24 = load i32, ptr %yoffset, align 4
  %25 = load ptr, ptr %coef, align 8
  %MCU_vert_offset7 = getelementptr inbounds %struct.my_coef_controller, ptr %25, i32 0, i32 2
  store i32 %24, ptr %MCU_vert_offset7, align 4
  %26 = load i32, ptr %MCU_col_num, align 4
  %27 = load ptr, ptr %coef, align 8
  %MCU_ctr8 = getelementptr inbounds %struct.my_coef_controller, ptr %27, i32 0, i32 1
  store i32 %26, ptr %MCU_ctr8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body5
  store i32 0, ptr %blkn, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc55, %if.end
  %28 = load i32, ptr %ci, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 62
  %30 = load i32, ptr %comps_in_scan, align 8
  %cmp10 = icmp slt i32 %28, %30
  br i1 %cmp10, label %for.body12, label %for.end57

for.body12:                                       ; preds = %for.cond9
  %31 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 63
  %32 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx13 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %33 = load ptr, ptr %arrayidx13, align 8
  store ptr %33, ptr %compptr, align 8
  %34 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i32 0, i32 12
  %35 = load i32, ptr %component_needed, align 8
  %tobool14 = icmp ne i32 %35, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body12
  %36 = load ptr, ptr %compptr, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i32 0, i32 15
  %37 = load i32, ptr %MCU_blocks, align 4
  %38 = load i32, ptr %blkn, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, ptr %blkn, align 4
  br label %for.inc55

if.end16:                                         ; preds = %for.body12
  %39 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 80
  %40 = load ptr, ptr %idct, align 8
  %inverse_DCT17 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %component_index, align 4
  %idxprom18 = sext i32 %42 to i64
  %arrayidx19 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT17, i64 0, i64 %idxprom18
  %43 = load ptr, ptr %arrayidx19, align 8
  store ptr %43, ptr %inverse_DCT, align 8
  %44 = load i32, ptr %MCU_col_num, align 4
  %45 = load i32, ptr %last_MCU_col, align 4
  %cmp20 = icmp ult i32 %44, %45
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %46 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 0, i32 13
  %47 = load i32, ptr %MCU_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %48 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i32 0, i32 17
  %49 = load i32, ptr %last_col_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ %49, %cond.false ]
  store i32 %cond, ptr %useful_width, align 4
  %50 = load ptr, ptr %output_buf.addr, align 8
  %51 = load i32, ptr %ci, align 4
  %idxprom22 = sext i32 %51 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %50, i64 %idxprom22
  %52 = load ptr, ptr %arrayidx23, align 8
  %53 = load i32, ptr %yoffset, align 4
  %54 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i32 0, i32 9
  %55 = load i32, ptr %DCT_scaled_size, align 4
  %mul24 = mul nsw i32 %53, %55
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %52, i64 %idx.ext
  store ptr %add.ptr, ptr %output_ptr, align 8
  %56 = load i32, ptr %MCU_col_num, align 4
  %57 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i32 0, i32 16
  %58 = load i32, ptr %MCU_sample_width, align 8
  %mul25 = mul i32 %56, %58
  store i32 %mul25, ptr %start_col, align 4
  store i32 0, ptr %yindex, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc52, %cond.end
  %59 = load i32, ptr %yindex, align 4
  %60 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %60, i32 0, i32 14
  %61 = load i32, ptr %MCU_height, align 8
  %cmp27 = icmp slt i32 %59, %61
  br i1 %cmp27, label %for.body29, label %for.end54

for.body29:                                       ; preds = %for.cond26
  %62 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 35
  %63 = load i32, ptr %input_iMCU_row, align 8
  %64 = load i32, ptr %last_iMCU_row, align 4
  %cmp30 = icmp ult i32 %63, %64
  br i1 %cmp30, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body29
  %65 = load i32, ptr %yoffset, align 4
  %66 = load i32, ptr %yindex, align 4
  %add32 = add nsw i32 %65, %66
  %67 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 18
  %68 = load i32, ptr %last_row_height, align 8
  %cmp33 = icmp slt i32 %add32, %68
  br i1 %cmp33, label %if.then35, label %if.end46

if.then35:                                        ; preds = %lor.lhs.false, %for.body29
  %69 = load i32, ptr %start_col, align 4
  store i32 %69, ptr %output_col, align 4
  store i32 0, ptr %xindex, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %if.then35
  %70 = load i32, ptr %xindex, align 4
  %71 = load i32, ptr %useful_width, align 4
  %cmp37 = icmp slt i32 %70, %71
  br i1 %cmp37, label %for.body39, label %for.end

for.body39:                                       ; preds = %for.cond36
  %72 = load ptr, ptr %inverse_DCT, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %74 = load ptr, ptr %compptr, align 8
  %75 = load ptr, ptr %coef, align 8
  %MCU_buffer40 = getelementptr inbounds %struct.my_coef_controller, ptr %75, i32 0, i32 4
  %76 = load i32, ptr %blkn, align 4
  %77 = load i32, ptr %xindex, align 4
  %add41 = add nsw i32 %76, %77
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer40, i64 0, i64 %idxprom42
  %78 = load ptr, ptr %arrayidx43, align 8
  %79 = load ptr, ptr %output_ptr, align 8
  %80 = load i32, ptr %output_col, align 4
  call void %72(ptr noundef %73, ptr noundef %74, ptr noundef %78, ptr noundef %79, i32 noundef %80)
  %81 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_component_info, ptr %81, i32 0, i32 9
  %82 = load i32, ptr %DCT_scaled_size44, align 4
  %83 = load i32, ptr %output_col, align 4
  %add45 = add i32 %83, %82
  store i32 %add45, ptr %output_col, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body39
  %84 = load i32, ptr %xindex, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, ptr %xindex, align 4
  br label %for.cond36, !llvm.loop !19

for.end:                                          ; preds = %for.cond36
  br label %if.end46

if.end46:                                         ; preds = %for.end, %lor.lhs.false
  %85 = load ptr, ptr %compptr, align 8
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i32 0, i32 13
  %86 = load i32, ptr %MCU_width47, align 4
  %87 = load i32, ptr %blkn, align 4
  %add48 = add nsw i32 %87, %86
  store i32 %add48, ptr %blkn, align 4
  %88 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i32 0, i32 9
  %89 = load i32, ptr %DCT_scaled_size49, align 4
  %90 = load ptr, ptr %output_ptr, align 8
  %idx.ext50 = sext i32 %89 to i64
  %add.ptr51 = getelementptr inbounds ptr, ptr %90, i64 %idx.ext50
  store ptr %add.ptr51, ptr %output_ptr, align 8
  br label %for.inc52

for.inc52:                                        ; preds = %if.end46
  %91 = load i32, ptr %yindex, align 4
  %inc53 = add nsw i32 %91, 1
  store i32 %inc53, ptr %yindex, align 4
  br label %for.cond26, !llvm.loop !20

for.end54:                                        ; preds = %for.cond26
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54, %if.then15
  %92 = load i32, ptr %ci, align 4
  %inc56 = add nsw i32 %92, 1
  store i32 %inc56, ptr %ci, align 4
  br label %for.cond9, !llvm.loop !21

for.end57:                                        ; preds = %for.cond9
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %93 = load i32, ptr %MCU_col_num, align 4
  %inc59 = add i32 %93, 1
  store i32 %inc59, ptr %MCU_col_num, align 4
  br label %for.cond3, !llvm.loop !22

for.end60:                                        ; preds = %for.cond3
  %94 = load ptr, ptr %coef, align 8
  %MCU_ctr61 = getelementptr inbounds %struct.my_coef_controller, ptr %94, i32 0, i32 1
  store i32 0, ptr %MCU_ctr61, align 8
  br label %for.inc62

for.inc62:                                        ; preds = %for.end60
  %95 = load i32, ptr %yoffset, align 4
  %inc63 = add nsw i32 %95, 1
  store i32 %inc63, ptr %yoffset, align 4
  br label %for.cond, !llvm.loop !23

for.end64:                                        ; preds = %for.cond
  %96 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 37
  %97 = load i32, ptr %output_iMCU_row, align 8
  %inc65 = add i32 %97, 1
  store i32 %inc65, ptr %output_iMCU_row, align 8
  %98 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 35
  %99 = load i32, ptr %input_iMCU_row66, align 8
  %inc67 = add i32 %99, 1
  store i32 %inc67, ptr %input_iMCU_row66, align 8
  %100 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 60
  %101 = load i32, ptr %total_iMCU_rows68, align 8
  %cmp69 = icmp ult i32 %inc67, %101
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.end64
  %102 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %102)
  store i32 3, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %for.end64
  %103 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %103, i32 0, i32 77
  %104 = load ptr, ptr %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %finish_input_pass, align 8
  %106 = load ptr, ptr %cinfo.addr, align 8
  call void %105(ptr noundef %106)
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then71, %if.then
  %107 = load i32, ptr %retval, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_iMCU_row(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 62
  %3 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %4, i32 0, i32 3
  store i32 1, ptr %MCU_rows_per_iMCU_row, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 35
  %6 = load i32, ptr %input_iMCU_row, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 60
  %8 = load i32, ptr %total_iMCU_rows, align 8
  %sub = sub i32 %8, 1
  %cmp2 = icmp ult i32 %6, %sub
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %v_samp_factor, align 4
  %12 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i32 0, i32 3
  store i32 %11, ptr %MCU_rows_per_iMCU_row4, align 8
  br label %if.end

if.else5:                                         ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 63
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info6, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx7, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 18
  %15 = load i32, ptr %last_row_height, align 8
  %16 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, ptr %16, i32 0, i32 3
  store i32 %15, ptr %MCU_rows_per_iMCU_row8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %17 = load ptr, ptr %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %17, i32 0, i32 1
  store i32 0, ptr %MCU_ctr, align 8
  %18 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %18, i32 0, i32 2
  store i32 0, ptr %MCU_vert_offset, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  store i32 0, ptr %smoothing_useful, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 44
  %3 = load i32, ptr %progressive_mode, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 38
  %5 = load ptr, ptr %coef_bits2, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %coef, align 8
  %coef_bits_latch3 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %coef_bits_latch3, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %alloc_small, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %num_components, align 8
  %conv = sext i32 %13 to i64
  %mul = mul i64 %conv, 24
  %call = call ptr %10(ptr noundef %11, i32 noundef 1, i64 noundef %mul)
  %14 = load ptr, ptr %coef, align 8
  %coef_bits_latch6 = getelementptr inbounds %struct.my_coef_controller, ptr %14, i32 0, i32 6
  store ptr %call, ptr %coef_bits_latch6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %15 = load ptr, ptr %coef, align 8
  %coef_bits_latch8 = getelementptr inbounds %struct.my_coef_controller, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %coef_bits_latch8, align 8
  store ptr %16, ptr %coef_bits_latch, align 8
  store i32 0, ptr %ci, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 43
  %18 = load ptr, ptr %comp_info, align 8
  store ptr %18, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc72, %if.end7
  %19 = load i32, ptr %ci, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %num_components9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 8
  %21 = load i32, ptr %num_components9, align 8
  %cmp10 = icmp slt i32 %19, %21
  br i1 %cmp10, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 19
  %23 = load ptr, ptr %quant_table, align 8
  store ptr %23, ptr %qtable, align 8
  %cmp12 = icmp eq ptr %23, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.body
  %24 = load ptr, ptr %qtable, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %24, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 0
  %25 = load i16, ptr %arrayidx, align 4
  %conv16 = zext i16 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then49, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %26 = load ptr, ptr %qtable, align 8
  %quantval20 = getelementptr inbounds %struct.JQUANT_TBL, ptr %26, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %quantval20, i64 0, i64 1
  %27 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %27 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then49, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %28 = load ptr, ptr %qtable, align 8
  %quantval26 = getelementptr inbounds %struct.JQUANT_TBL, ptr %28, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x i16], ptr %quantval26, i64 0, i64 8
  %29 = load i16, ptr %arrayidx27, align 4
  %conv28 = zext i16 %29 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then49, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %30 = load ptr, ptr %qtable, align 8
  %quantval32 = getelementptr inbounds %struct.JQUANT_TBL, ptr %30, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], ptr %quantval32, i64 0, i64 16
  %31 = load i16, ptr %arrayidx33, align 4
  %conv34 = zext i16 %31 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then49, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %32 = load ptr, ptr %qtable, align 8
  %quantval38 = getelementptr inbounds %struct.JQUANT_TBL, ptr %32, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x i16], ptr %quantval38, i64 0, i64 9
  %33 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %33 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then49, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %34 = load ptr, ptr %qtable, align 8
  %quantval44 = getelementptr inbounds %struct.JQUANT_TBL, ptr %34, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x i16], ptr %quantval44, i64 0, i64 2
  %35 = load i16, ptr %arrayidx45, align 4
  %conv46 = zext i16 %35 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false43, %lor.lhs.false37, %lor.lhs.false31, %lor.lhs.false25, %lor.lhs.false19, %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false43
  %36 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 38
  %37 = load ptr, ptr %coef_bits51, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [64 x i32], ptr %37, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i32], ptr %arrayidx52, i64 0, i64 0
  store ptr %arraydecay, ptr %coef_bits, align 8
  %39 = load ptr, ptr %coef_bits, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %39, i64 0
  %40 = load i32, ptr %arrayidx53, align 4
  %cmp54 = icmp slt i32 %40, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.end50
  store i32 1, ptr %coefi, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc, %if.end57
  %41 = load i32, ptr %coefi, align 4
  %cmp59 = icmp sle i32 %41, 5
  br i1 %cmp59, label %for.body61, label %for.end

for.body61:                                       ; preds = %for.cond58
  %42 = load ptr, ptr %coef_bits, align 8
  %43 = load i32, ptr %coefi, align 4
  %idxprom62 = sext i32 %43 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %42, i64 %idxprom62
  %44 = load i32, ptr %arrayidx63, align 4
  %45 = load ptr, ptr %coef_bits_latch, align 8
  %46 = load i32, ptr %coefi, align 4
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %45, i64 %idxprom64
  store i32 %44, ptr %arrayidx65, align 4
  %47 = load ptr, ptr %coef_bits, align 8
  %48 = load i32, ptr %coefi, align 4
  %idxprom66 = sext i32 %48 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %47, i64 %idxprom66
  %49 = load i32, ptr %arrayidx67, align 4
  %cmp68 = icmp ne i32 %49, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.body61
  store i32 1, ptr %smoothing_useful, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %for.body61
  br label %for.inc

for.inc:                                          ; preds = %if.end71
  %50 = load i32, ptr %coefi, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %coefi, align 4
  br label %for.cond58, !llvm.loop !24

for.end:                                          ; preds = %for.cond58
  %51 = load ptr, ptr %coef_bits_latch, align 8
  %add.ptr = getelementptr inbounds i32, ptr %51, i64 6
  store ptr %add.ptr, ptr %coef_bits_latch, align 8
  br label %for.inc72

for.inc72:                                        ; preds = %for.end
  %52 = load i32, ptr %ci, align 4
  %inc73 = add nsw i32 %52, 1
  store i32 %inc73, ptr %ci, align 4
  %53 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !25

for.end74:                                        ; preds = %for.cond
  %54 = load i32, ptr %smoothing_useful, align 4
  store i32 %54, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end74, %if.then56, %if.then49, %if.then14, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %delta = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 75
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 60
  %3 = load i32, ptr %total_iMCU_rows, align 8
  %sub = sub i32 %3, 1
  store i32 %sub, ptr %last_iMCU_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 34
  %5 = load i32, ptr %input_scan_number, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 36
  %7 = load i32, ptr %output_scan_number, align 4
  %cmp = icmp sle i32 %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 77
  %9 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %eoi_reached, align 4
  %tobool = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 34
  %13 = load i32, ptr %input_scan_number2, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 36
  %15 = load i32, ptr %output_scan_number3, align 4
  %cmp4 = icmp eq i32 %13, %15
  br i1 %cmp4, label %if.then, label %if.end8

if.then:                                          ; preds = %while.body
  %16 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 68
  %17 = load i32, ptr %Ss, align 4
  %cmp5 = icmp eq i32 %17, 0
  %18 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, ptr %delta, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 35
  %20 = load i32, ptr %input_iMCU_row, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 37
  %22 = load i32, ptr %output_iMCU_row, align 8
  %23 = load i32, ptr %delta, align 4
  %add = add i32 %22, %23
  %cmp6 = icmp ugt i32 %20, %add
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %while.body
  %24 = load ptr, ptr %cinfo.addr, align 8
  %inputctl9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 77
  %25 = load ptr, ptr %inputctl9, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %consume_input, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %26(ptr noundef %27)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %if.then7, %land.end
  store i32 0, ptr %ci, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 43
  %29 = load ptr, ptr %comp_info, align 8
  store ptr %29, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc396, %while.end
  %30 = load i32, ptr %ci, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 8
  %32 = load i32, ptr %num_components, align 8
  %cmp13 = icmp slt i32 %30, %32
  br i1 %cmp13, label %for.body, label %for.end399

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i32 0, i32 12
  %34 = load i32, ptr %component_needed, align 8
  %tobool14 = icmp ne i32 %34, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  br label %for.inc396

if.end16:                                         ; preds = %for.body
  %35 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 37
  %36 = load i32, ptr %output_iMCU_row17, align 8
  %37 = load i32, ptr %last_iMCU_row, align 4
  %cmp18 = icmp ult i32 %36, %37
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %38 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %v_samp_factor, align 4
  store i32 %39, ptr %block_rows, align 4
  %40 = load i32, ptr %block_rows, align 4
  %mul = mul nsw i32 %40, 2
  store i32 %mul, ptr %access_rows, align 4
  store i32 0, ptr %last_row, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end16
  %41 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 8
  %42 = load i32, ptr %height_in_blocks, align 8
  %43 = load ptr, ptr %compptr, align 8
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 3
  %44 = load i32, ptr %v_samp_factor20, align 4
  %rem = urem i32 %42, %44
  store i32 %rem, ptr %block_rows, align 4
  %45 = load i32, ptr %block_rows, align 4
  %cmp21 = icmp eq i32 %45, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else
  %46 = load ptr, ptr %compptr, align 8
  %v_samp_factor23 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %v_samp_factor23, align 4
  store i32 %47, ptr %block_rows, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else
  %48 = load i32, ptr %block_rows, align 4
  store i32 %48, ptr %access_rows, align 4
  store i32 1, ptr %last_row, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  %49 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 37
  %50 = load i32, ptr %output_iMCU_row26, align 8
  %cmp27 = icmp ugt i32 %50, 0
  br i1 %cmp27, label %if.then28, label %if.else37

if.then28:                                        ; preds = %if.end25
  %51 = load ptr, ptr %compptr, align 8
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %v_samp_factor29, align 4
  %53 = load i32, ptr %access_rows, align 4
  %add30 = add nsw i32 %53, %52
  store i32 %add30, ptr %access_rows, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %55, i32 0, i32 8
  %56 = load ptr, ptr %access_virt_barray, align 8
  %57 = load ptr, ptr %cinfo.addr, align 8
  %58 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  %60 = load ptr, ptr %arrayidx, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 37
  %62 = load i32, ptr %output_iMCU_row31, align 8
  %sub32 = sub i32 %62, 1
  %63 = load ptr, ptr %compptr, align 8
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i32 0, i32 3
  %64 = load i32, ptr %v_samp_factor33, align 4
  %mul34 = mul i32 %sub32, %64
  %65 = load i32, ptr %access_rows, align 4
  %call35 = call ptr %56(ptr noundef %57, ptr noundef %60, i32 noundef %mul34, i32 noundef %65, i32 noundef 0)
  store ptr %call35, ptr %buffer, align 8
  %66 = load ptr, ptr %compptr, align 8
  %v_samp_factor36 = getelementptr inbounds %struct.jpeg_component_info, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %v_samp_factor36, align 4
  %68 = load ptr, ptr %buffer, align 8
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %68, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer, align 8
  store i32 0, ptr %first_row, align 4
  br label %if.end44

if.else37:                                        ; preds = %if.end25
  %69 = load ptr, ptr %cinfo.addr, align 8
  %mem38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %mem38, align 8
  %access_virt_barray39 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %70, i32 0, i32 8
  %71 = load ptr, ptr %access_virt_barray39, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %coef, align 8
  %whole_image40 = getelementptr inbounds %struct.my_coef_controller, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %ci, align 4
  %idxprom41 = sext i32 %74 to i64
  %arrayidx42 = getelementptr inbounds [10 x ptr], ptr %whole_image40, i64 0, i64 %idxprom41
  %75 = load ptr, ptr %arrayidx42, align 8
  %76 = load i32, ptr %access_rows, align 4
  %call43 = call ptr %71(ptr noundef %72, ptr noundef %75, i32 noundef 0, i32 noundef %76, i32 noundef 0)
  store ptr %call43, ptr %buffer, align 8
  store i32 1, ptr %first_row, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %if.then28
  %77 = load ptr, ptr %coef, align 8
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %coef_bits_latch, align 8
  %79 = load i32, ptr %ci, align 4
  %mul45 = mul nsw i32 %79, 6
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i32, ptr %78, i64 %idx.ext46
  store ptr %add.ptr47, ptr %coef_bits, align 8
  %80 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %80, i32 0, i32 19
  %81 = load ptr, ptr %quant_table, align 8
  store ptr %81, ptr %quanttbl, align 8
  %82 = load ptr, ptr %quanttbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %82, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 0
  %83 = load i16, ptr %arrayidx48, align 4
  %conv = zext i16 %83 to i64
  store i64 %conv, ptr %Q00, align 8
  %84 = load ptr, ptr %quanttbl, align 8
  %quantval49 = getelementptr inbounds %struct.JQUANT_TBL, ptr %84, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x i16], ptr %quantval49, i64 0, i64 1
  %85 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %85 to i64
  store i64 %conv51, ptr %Q01, align 8
  %86 = load ptr, ptr %quanttbl, align 8
  %quantval52 = getelementptr inbounds %struct.JQUANT_TBL, ptr %86, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [64 x i16], ptr %quantval52, i64 0, i64 8
  %87 = load i16, ptr %arrayidx53, align 4
  %conv54 = zext i16 %87 to i64
  store i64 %conv54, ptr %Q10, align 8
  %88 = load ptr, ptr %quanttbl, align 8
  %quantval55 = getelementptr inbounds %struct.JQUANT_TBL, ptr %88, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [64 x i16], ptr %quantval55, i64 0, i64 16
  %89 = load i16, ptr %arrayidx56, align 4
  %conv57 = zext i16 %89 to i64
  store i64 %conv57, ptr %Q20, align 8
  %90 = load ptr, ptr %quanttbl, align 8
  %quantval58 = getelementptr inbounds %struct.JQUANT_TBL, ptr %90, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [64 x i16], ptr %quantval58, i64 0, i64 9
  %91 = load i16, ptr %arrayidx59, align 2
  %conv60 = zext i16 %91 to i64
  store i64 %conv60, ptr %Q11, align 8
  %92 = load ptr, ptr %quanttbl, align 8
  %quantval61 = getelementptr inbounds %struct.JQUANT_TBL, ptr %92, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [64 x i16], ptr %quantval61, i64 0, i64 2
  %93 = load i16, ptr %arrayidx62, align 4
  %conv63 = zext i16 %93 to i64
  store i64 %conv63, ptr %Q02, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 80
  %95 = load ptr, ptr %idct, align 8
  %inverse_DCT64 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %95, i32 0, i32 1
  %96 = load i32, ptr %ci, align 4
  %idxprom65 = sext i32 %96 to i64
  %arrayidx66 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT64, i64 0, i64 %idxprom65
  %97 = load ptr, ptr %arrayidx66, align 8
  store ptr %97, ptr %inverse_DCT, align 8
  %98 = load ptr, ptr %output_buf.addr, align 8
  %99 = load i32, ptr %ci, align 4
  %idxprom67 = sext i32 %99 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %98, i64 %idxprom67
  %100 = load ptr, ptr %arrayidx68, align 8
  store ptr %100, ptr %output_ptr, align 8
  store i32 0, ptr %block_row, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc393, %if.end44
  %101 = load i32, ptr %block_row, align 4
  %102 = load i32, ptr %block_rows, align 4
  %cmp70 = icmp slt i32 %101, %102
  br i1 %cmp70, label %for.body72, label %for.end395

for.body72:                                       ; preds = %for.cond69
  %103 = load ptr, ptr %buffer, align 8
  %104 = load i32, ptr %block_row, align 4
  %idxprom73 = sext i32 %104 to i64
  %arrayidx74 = getelementptr inbounds ptr, ptr %103, i64 %idxprom73
  %105 = load ptr, ptr %arrayidx74, align 8
  store ptr %105, ptr %buffer_ptr, align 8
  %106 = load i32, ptr %first_row, align 4
  %tobool75 = icmp ne i32 %106, 0
  br i1 %tobool75, label %land.lhs.true, label %if.else79

land.lhs.true:                                    ; preds = %for.body72
  %107 = load i32, ptr %block_row, align 4
  %cmp76 = icmp eq i32 %107, 0
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %land.lhs.true
  %108 = load ptr, ptr %buffer_ptr, align 8
  store ptr %108, ptr %prev_block_row, align 8
  br label %if.end83

if.else79:                                        ; preds = %land.lhs.true, %for.body72
  %109 = load ptr, ptr %buffer, align 8
  %110 = load i32, ptr %block_row, align 4
  %sub80 = sub nsw i32 %110, 1
  %idxprom81 = sext i32 %sub80 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %109, i64 %idxprom81
  %111 = load ptr, ptr %arrayidx82, align 8
  store ptr %111, ptr %prev_block_row, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else79, %if.then78
  %112 = load i32, ptr %last_row, align 4
  %tobool84 = icmp ne i32 %112, 0
  br i1 %tobool84, label %land.lhs.true85, label %if.else90

land.lhs.true85:                                  ; preds = %if.end83
  %113 = load i32, ptr %block_row, align 4
  %114 = load i32, ptr %block_rows, align 4
  %sub86 = sub nsw i32 %114, 1
  %cmp87 = icmp eq i32 %113, %sub86
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %land.lhs.true85
  %115 = load ptr, ptr %buffer_ptr, align 8
  store ptr %115, ptr %next_block_row, align 8
  br label %if.end94

if.else90:                                        ; preds = %land.lhs.true85, %if.end83
  %116 = load ptr, ptr %buffer, align 8
  %117 = load i32, ptr %block_row, align 4
  %add91 = add nsw i32 %117, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %116, i64 %idxprom92
  %118 = load ptr, ptr %arrayidx93, align 8
  store ptr %118, ptr %next_block_row, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.else90, %if.then89
  %119 = load ptr, ptr %prev_block_row, align 8
  %arrayidx95 = getelementptr inbounds [64 x i16], ptr %119, i64 0
  %arrayidx96 = getelementptr inbounds [64 x i16], ptr %arrayidx95, i64 0, i64 0
  %120 = load i16, ptr %arrayidx96, align 2
  %conv97 = sext i16 %120 to i32
  store i32 %conv97, ptr %DC3, align 4
  store i32 %conv97, ptr %DC2, align 4
  store i32 %conv97, ptr %DC1, align 4
  %121 = load ptr, ptr %buffer_ptr, align 8
  %arrayidx98 = getelementptr inbounds [64 x i16], ptr %121, i64 0
  %arrayidx99 = getelementptr inbounds [64 x i16], ptr %arrayidx98, i64 0, i64 0
  %122 = load i16, ptr %arrayidx99, align 2
  %conv100 = sext i16 %122 to i32
  store i32 %conv100, ptr %DC6, align 4
  store i32 %conv100, ptr %DC5, align 4
  store i32 %conv100, ptr %DC4, align 4
  %123 = load ptr, ptr %next_block_row, align 8
  %arrayidx101 = getelementptr inbounds [64 x i16], ptr %123, i64 0
  %arrayidx102 = getelementptr inbounds [64 x i16], ptr %arrayidx101, i64 0, i64 0
  %124 = load i16, ptr %arrayidx102, align 2
  %conv103 = sext i16 %124 to i32
  store i32 %conv103, ptr %DC9, align 4
  store i32 %conv103, ptr %DC8, align 4
  store i32 %conv103, ptr %DC7, align 4
  store i32 0, ptr %output_col, align 4
  %125 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %125, i32 0, i32 7
  %126 = load i32, ptr %width_in_blocks, align 4
  %sub104 = sub i32 %126, 1
  store i32 %sub104, ptr %last_block_column, align 4
  store i32 0, ptr %block_num, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc, %if.end94
  %127 = load i32, ptr %block_num, align 4
  %128 = load i32, ptr %last_block_column, align 4
  %cmp106 = icmp ule i32 %127, %128
  br i1 %cmp106, label %for.body108, label %for.end

for.body108:                                      ; preds = %for.cond105
  %129 = load ptr, ptr %buffer_ptr, align 8
  %arraydecay = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 0
  call void @jcopy_block_row(ptr noundef %129, ptr noundef %arraydecay, i32 noundef 1)
  %130 = load i32, ptr %block_num, align 4
  %131 = load i32, ptr %last_block_column, align 4
  %cmp109 = icmp ult i32 %130, %131
  br i1 %cmp109, label %if.then111, label %if.end121

if.then111:                                       ; preds = %for.body108
  %132 = load ptr, ptr %prev_block_row, align 8
  %arrayidx112 = getelementptr inbounds [64 x i16], ptr %132, i64 1
  %arrayidx113 = getelementptr inbounds [64 x i16], ptr %arrayidx112, i64 0, i64 0
  %133 = load i16, ptr %arrayidx113, align 2
  %conv114 = sext i16 %133 to i32
  store i32 %conv114, ptr %DC3, align 4
  %134 = load ptr, ptr %buffer_ptr, align 8
  %arrayidx115 = getelementptr inbounds [64 x i16], ptr %134, i64 1
  %arrayidx116 = getelementptr inbounds [64 x i16], ptr %arrayidx115, i64 0, i64 0
  %135 = load i16, ptr %arrayidx116, align 2
  %conv117 = sext i16 %135 to i32
  store i32 %conv117, ptr %DC6, align 4
  %136 = load ptr, ptr %next_block_row, align 8
  %arrayidx118 = getelementptr inbounds [64 x i16], ptr %136, i64 1
  %arrayidx119 = getelementptr inbounds [64 x i16], ptr %arrayidx118, i64 0, i64 0
  %137 = load i16, ptr %arrayidx119, align 2
  %conv120 = sext i16 %137 to i32
  store i32 %conv120, ptr %DC9, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then111, %for.body108
  %138 = load ptr, ptr %coef_bits, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %138, i64 1
  %139 = load i32, ptr %arrayidx122, align 4
  store i32 %139, ptr %Al, align 4
  %cmp123 = icmp ne i32 %139, 0
  br i1 %cmp123, label %land.lhs.true125, label %if.end171

land.lhs.true125:                                 ; preds = %if.end121
  %arrayidx126 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 1
  %140 = load i16, ptr %arrayidx126, align 2
  %conv127 = sext i16 %140 to i32
  %cmp128 = icmp eq i32 %conv127, 0
  br i1 %cmp128, label %if.then130, label %if.end171

if.then130:                                       ; preds = %land.lhs.true125
  %141 = load i64, ptr %Q00, align 8
  %mul131 = mul nsw i64 36, %141
  %142 = load i32, ptr %DC4, align 4
  %143 = load i32, ptr %DC6, align 4
  %sub132 = sub nsw i32 %142, %143
  %conv133 = sext i32 %sub132 to i64
  %mul134 = mul nsw i64 %mul131, %conv133
  store i64 %mul134, ptr %num, align 8
  %144 = load i64, ptr %num, align 8
  %cmp135 = icmp sge i64 %144, 0
  br i1 %cmp135, label %if.then137, label %if.else151

if.then137:                                       ; preds = %if.then130
  %145 = load i64, ptr %Q01, align 8
  %shl = shl i64 %145, 7
  %146 = load i64, ptr %num, align 8
  %add138 = add nsw i64 %shl, %146
  %147 = load i64, ptr %Q01, align 8
  %shl139 = shl i64 %147, 8
  %div = sdiv i64 %add138, %shl139
  %conv140 = trunc i64 %div to i32
  store i32 %conv140, ptr %pred, align 4
  %148 = load i32, ptr %Al, align 4
  %cmp141 = icmp sgt i32 %148, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.end150

land.lhs.true143:                                 ; preds = %if.then137
  %149 = load i32, ptr %pred, align 4
  %150 = load i32, ptr %Al, align 4
  %shl144 = shl i32 1, %150
  %cmp145 = icmp sge i32 %149, %shl144
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %land.lhs.true143
  %151 = load i32, ptr %Al, align 4
  %shl148 = shl i32 1, %151
  %sub149 = sub nsw i32 %shl148, 1
  store i32 %sub149, ptr %pred, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %land.lhs.true143, %if.then137
  br label %if.end168

if.else151:                                       ; preds = %if.then130
  %152 = load i64, ptr %Q01, align 8
  %shl152 = shl i64 %152, 7
  %153 = load i64, ptr %num, align 8
  %sub153 = sub nsw i64 %shl152, %153
  %154 = load i64, ptr %Q01, align 8
  %shl154 = shl i64 %154, 8
  %div155 = sdiv i64 %sub153, %shl154
  %conv156 = trunc i64 %div155 to i32
  store i32 %conv156, ptr %pred, align 4
  %155 = load i32, ptr %Al, align 4
  %cmp157 = icmp sgt i32 %155, 0
  br i1 %cmp157, label %land.lhs.true159, label %if.end166

land.lhs.true159:                                 ; preds = %if.else151
  %156 = load i32, ptr %pred, align 4
  %157 = load i32, ptr %Al, align 4
  %shl160 = shl i32 1, %157
  %cmp161 = icmp sge i32 %156, %shl160
  br i1 %cmp161, label %if.then163, label %if.end166

if.then163:                                       ; preds = %land.lhs.true159
  %158 = load i32, ptr %Al, align 4
  %shl164 = shl i32 1, %158
  %sub165 = sub nsw i32 %shl164, 1
  store i32 %sub165, ptr %pred, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %land.lhs.true159, %if.else151
  %159 = load i32, ptr %pred, align 4
  %sub167 = sub nsw i32 0, %159
  store i32 %sub167, ptr %pred, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.end166, %if.end150
  %160 = load i32, ptr %pred, align 4
  %conv169 = trunc i32 %160 to i16
  %arrayidx170 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 1
  store i16 %conv169, ptr %arrayidx170, align 2
  br label %if.end171

if.end171:                                        ; preds = %if.end168, %land.lhs.true125, %if.end121
  %161 = load ptr, ptr %coef_bits, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %161, i64 2
  %162 = load i32, ptr %arrayidx172, align 4
  store i32 %162, ptr %Al, align 4
  %cmp173 = icmp ne i32 %162, 0
  br i1 %cmp173, label %land.lhs.true175, label %if.end223

land.lhs.true175:                                 ; preds = %if.end171
  %arrayidx176 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 8
  %163 = load i16, ptr %arrayidx176, align 2
  %conv177 = sext i16 %163 to i32
  %cmp178 = icmp eq i32 %conv177, 0
  br i1 %cmp178, label %if.then180, label %if.end223

if.then180:                                       ; preds = %land.lhs.true175
  %164 = load i64, ptr %Q00, align 8
  %mul181 = mul nsw i64 36, %164
  %165 = load i32, ptr %DC2, align 4
  %166 = load i32, ptr %DC8, align 4
  %sub182 = sub nsw i32 %165, %166
  %conv183 = sext i32 %sub182 to i64
  %mul184 = mul nsw i64 %mul181, %conv183
  store i64 %mul184, ptr %num, align 8
  %167 = load i64, ptr %num, align 8
  %cmp185 = icmp sge i64 %167, 0
  br i1 %cmp185, label %if.then187, label %if.else203

if.then187:                                       ; preds = %if.then180
  %168 = load i64, ptr %Q10, align 8
  %shl188 = shl i64 %168, 7
  %169 = load i64, ptr %num, align 8
  %add189 = add nsw i64 %shl188, %169
  %170 = load i64, ptr %Q10, align 8
  %shl190 = shl i64 %170, 8
  %div191 = sdiv i64 %add189, %shl190
  %conv192 = trunc i64 %div191 to i32
  store i32 %conv192, ptr %pred, align 4
  %171 = load i32, ptr %Al, align 4
  %cmp193 = icmp sgt i32 %171, 0
  br i1 %cmp193, label %land.lhs.true195, label %if.end202

land.lhs.true195:                                 ; preds = %if.then187
  %172 = load i32, ptr %pred, align 4
  %173 = load i32, ptr %Al, align 4
  %shl196 = shl i32 1, %173
  %cmp197 = icmp sge i32 %172, %shl196
  br i1 %cmp197, label %if.then199, label %if.end202

if.then199:                                       ; preds = %land.lhs.true195
  %174 = load i32, ptr %Al, align 4
  %shl200 = shl i32 1, %174
  %sub201 = sub nsw i32 %shl200, 1
  store i32 %sub201, ptr %pred, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %land.lhs.true195, %if.then187
  br label %if.end220

if.else203:                                       ; preds = %if.then180
  %175 = load i64, ptr %Q10, align 8
  %shl204 = shl i64 %175, 7
  %176 = load i64, ptr %num, align 8
  %sub205 = sub nsw i64 %shl204, %176
  %177 = load i64, ptr %Q10, align 8
  %shl206 = shl i64 %177, 8
  %div207 = sdiv i64 %sub205, %shl206
  %conv208 = trunc i64 %div207 to i32
  store i32 %conv208, ptr %pred, align 4
  %178 = load i32, ptr %Al, align 4
  %cmp209 = icmp sgt i32 %178, 0
  br i1 %cmp209, label %land.lhs.true211, label %if.end218

land.lhs.true211:                                 ; preds = %if.else203
  %179 = load i32, ptr %pred, align 4
  %180 = load i32, ptr %Al, align 4
  %shl212 = shl i32 1, %180
  %cmp213 = icmp sge i32 %179, %shl212
  br i1 %cmp213, label %if.then215, label %if.end218

if.then215:                                       ; preds = %land.lhs.true211
  %181 = load i32, ptr %Al, align 4
  %shl216 = shl i32 1, %181
  %sub217 = sub nsw i32 %shl216, 1
  store i32 %sub217, ptr %pred, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %land.lhs.true211, %if.else203
  %182 = load i32, ptr %pred, align 4
  %sub219 = sub nsw i32 0, %182
  store i32 %sub219, ptr %pred, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.end218, %if.end202
  %183 = load i32, ptr %pred, align 4
  %conv221 = trunc i32 %183 to i16
  %arrayidx222 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 8
  store i16 %conv221, ptr %arrayidx222, align 2
  br label %if.end223

if.end223:                                        ; preds = %if.end220, %land.lhs.true175, %if.end171
  %184 = load ptr, ptr %coef_bits, align 8
  %arrayidx224 = getelementptr inbounds i32, ptr %184, i64 3
  %185 = load i32, ptr %arrayidx224, align 4
  store i32 %185, ptr %Al, align 4
  %cmp225 = icmp ne i32 %185, 0
  br i1 %cmp225, label %land.lhs.true227, label %if.end277

land.lhs.true227:                                 ; preds = %if.end223
  %arrayidx228 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 16
  %186 = load i16, ptr %arrayidx228, align 2
  %conv229 = sext i16 %186 to i32
  %cmp230 = icmp eq i32 %conv229, 0
  br i1 %cmp230, label %if.then232, label %if.end277

if.then232:                                       ; preds = %land.lhs.true227
  %187 = load i64, ptr %Q00, align 8
  %mul233 = mul nsw i64 9, %187
  %188 = load i32, ptr %DC2, align 4
  %189 = load i32, ptr %DC8, align 4
  %add234 = add nsw i32 %188, %189
  %190 = load i32, ptr %DC5, align 4
  %mul235 = mul nsw i32 2, %190
  %sub236 = sub nsw i32 %add234, %mul235
  %conv237 = sext i32 %sub236 to i64
  %mul238 = mul nsw i64 %mul233, %conv237
  store i64 %mul238, ptr %num, align 8
  %191 = load i64, ptr %num, align 8
  %cmp239 = icmp sge i64 %191, 0
  br i1 %cmp239, label %if.then241, label %if.else257

if.then241:                                       ; preds = %if.then232
  %192 = load i64, ptr %Q20, align 8
  %shl242 = shl i64 %192, 7
  %193 = load i64, ptr %num, align 8
  %add243 = add nsw i64 %shl242, %193
  %194 = load i64, ptr %Q20, align 8
  %shl244 = shl i64 %194, 8
  %div245 = sdiv i64 %add243, %shl244
  %conv246 = trunc i64 %div245 to i32
  store i32 %conv246, ptr %pred, align 4
  %195 = load i32, ptr %Al, align 4
  %cmp247 = icmp sgt i32 %195, 0
  br i1 %cmp247, label %land.lhs.true249, label %if.end256

land.lhs.true249:                                 ; preds = %if.then241
  %196 = load i32, ptr %pred, align 4
  %197 = load i32, ptr %Al, align 4
  %shl250 = shl i32 1, %197
  %cmp251 = icmp sge i32 %196, %shl250
  br i1 %cmp251, label %if.then253, label %if.end256

if.then253:                                       ; preds = %land.lhs.true249
  %198 = load i32, ptr %Al, align 4
  %shl254 = shl i32 1, %198
  %sub255 = sub nsw i32 %shl254, 1
  store i32 %sub255, ptr %pred, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.then253, %land.lhs.true249, %if.then241
  br label %if.end274

if.else257:                                       ; preds = %if.then232
  %199 = load i64, ptr %Q20, align 8
  %shl258 = shl i64 %199, 7
  %200 = load i64, ptr %num, align 8
  %sub259 = sub nsw i64 %shl258, %200
  %201 = load i64, ptr %Q20, align 8
  %shl260 = shl i64 %201, 8
  %div261 = sdiv i64 %sub259, %shl260
  %conv262 = trunc i64 %div261 to i32
  store i32 %conv262, ptr %pred, align 4
  %202 = load i32, ptr %Al, align 4
  %cmp263 = icmp sgt i32 %202, 0
  br i1 %cmp263, label %land.lhs.true265, label %if.end272

land.lhs.true265:                                 ; preds = %if.else257
  %203 = load i32, ptr %pred, align 4
  %204 = load i32, ptr %Al, align 4
  %shl266 = shl i32 1, %204
  %cmp267 = icmp sge i32 %203, %shl266
  br i1 %cmp267, label %if.then269, label %if.end272

if.then269:                                       ; preds = %land.lhs.true265
  %205 = load i32, ptr %Al, align 4
  %shl270 = shl i32 1, %205
  %sub271 = sub nsw i32 %shl270, 1
  store i32 %sub271, ptr %pred, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %land.lhs.true265, %if.else257
  %206 = load i32, ptr %pred, align 4
  %sub273 = sub nsw i32 0, %206
  store i32 %sub273, ptr %pred, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.end272, %if.end256
  %207 = load i32, ptr %pred, align 4
  %conv275 = trunc i32 %207 to i16
  %arrayidx276 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 16
  store i16 %conv275, ptr %arrayidx276, align 2
  br label %if.end277

if.end277:                                        ; preds = %if.end274, %land.lhs.true227, %if.end223
  %208 = load ptr, ptr %coef_bits, align 8
  %arrayidx278 = getelementptr inbounds i32, ptr %208, i64 4
  %209 = load i32, ptr %arrayidx278, align 4
  store i32 %209, ptr %Al, align 4
  %cmp279 = icmp ne i32 %209, 0
  br i1 %cmp279, label %land.lhs.true281, label %if.end331

land.lhs.true281:                                 ; preds = %if.end277
  %arrayidx282 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 9
  %210 = load i16, ptr %arrayidx282, align 2
  %conv283 = sext i16 %210 to i32
  %cmp284 = icmp eq i32 %conv283, 0
  br i1 %cmp284, label %if.then286, label %if.end331

if.then286:                                       ; preds = %land.lhs.true281
  %211 = load i64, ptr %Q00, align 8
  %mul287 = mul nsw i64 5, %211
  %212 = load i32, ptr %DC1, align 4
  %213 = load i32, ptr %DC3, align 4
  %sub288 = sub nsw i32 %212, %213
  %214 = load i32, ptr %DC7, align 4
  %sub289 = sub nsw i32 %sub288, %214
  %215 = load i32, ptr %DC9, align 4
  %add290 = add nsw i32 %sub289, %215
  %conv291 = sext i32 %add290 to i64
  %mul292 = mul nsw i64 %mul287, %conv291
  store i64 %mul292, ptr %num, align 8
  %216 = load i64, ptr %num, align 8
  %cmp293 = icmp sge i64 %216, 0
  br i1 %cmp293, label %if.then295, label %if.else311

if.then295:                                       ; preds = %if.then286
  %217 = load i64, ptr %Q11, align 8
  %shl296 = shl i64 %217, 7
  %218 = load i64, ptr %num, align 8
  %add297 = add nsw i64 %shl296, %218
  %219 = load i64, ptr %Q11, align 8
  %shl298 = shl i64 %219, 8
  %div299 = sdiv i64 %add297, %shl298
  %conv300 = trunc i64 %div299 to i32
  store i32 %conv300, ptr %pred, align 4
  %220 = load i32, ptr %Al, align 4
  %cmp301 = icmp sgt i32 %220, 0
  br i1 %cmp301, label %land.lhs.true303, label %if.end310

land.lhs.true303:                                 ; preds = %if.then295
  %221 = load i32, ptr %pred, align 4
  %222 = load i32, ptr %Al, align 4
  %shl304 = shl i32 1, %222
  %cmp305 = icmp sge i32 %221, %shl304
  br i1 %cmp305, label %if.then307, label %if.end310

if.then307:                                       ; preds = %land.lhs.true303
  %223 = load i32, ptr %Al, align 4
  %shl308 = shl i32 1, %223
  %sub309 = sub nsw i32 %shl308, 1
  store i32 %sub309, ptr %pred, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %land.lhs.true303, %if.then295
  br label %if.end328

if.else311:                                       ; preds = %if.then286
  %224 = load i64, ptr %Q11, align 8
  %shl312 = shl i64 %224, 7
  %225 = load i64, ptr %num, align 8
  %sub313 = sub nsw i64 %shl312, %225
  %226 = load i64, ptr %Q11, align 8
  %shl314 = shl i64 %226, 8
  %div315 = sdiv i64 %sub313, %shl314
  %conv316 = trunc i64 %div315 to i32
  store i32 %conv316, ptr %pred, align 4
  %227 = load i32, ptr %Al, align 4
  %cmp317 = icmp sgt i32 %227, 0
  br i1 %cmp317, label %land.lhs.true319, label %if.end326

land.lhs.true319:                                 ; preds = %if.else311
  %228 = load i32, ptr %pred, align 4
  %229 = load i32, ptr %Al, align 4
  %shl320 = shl i32 1, %229
  %cmp321 = icmp sge i32 %228, %shl320
  br i1 %cmp321, label %if.then323, label %if.end326

if.then323:                                       ; preds = %land.lhs.true319
  %230 = load i32, ptr %Al, align 4
  %shl324 = shl i32 1, %230
  %sub325 = sub nsw i32 %shl324, 1
  store i32 %sub325, ptr %pred, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then323, %land.lhs.true319, %if.else311
  %231 = load i32, ptr %pred, align 4
  %sub327 = sub nsw i32 0, %231
  store i32 %sub327, ptr %pred, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.end326, %if.end310
  %232 = load i32, ptr %pred, align 4
  %conv329 = trunc i32 %232 to i16
  %arrayidx330 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 9
  store i16 %conv329, ptr %arrayidx330, align 2
  br label %if.end331

if.end331:                                        ; preds = %if.end328, %land.lhs.true281, %if.end277
  %233 = load ptr, ptr %coef_bits, align 8
  %arrayidx332 = getelementptr inbounds i32, ptr %233, i64 5
  %234 = load i32, ptr %arrayidx332, align 4
  store i32 %234, ptr %Al, align 4
  %cmp333 = icmp ne i32 %234, 0
  br i1 %cmp333, label %land.lhs.true335, label %if.end385

land.lhs.true335:                                 ; preds = %if.end331
  %arrayidx336 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 2
  %235 = load i16, ptr %arrayidx336, align 2
  %conv337 = sext i16 %235 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %if.then340, label %if.end385

if.then340:                                       ; preds = %land.lhs.true335
  %236 = load i64, ptr %Q00, align 8
  %mul341 = mul nsw i64 9, %236
  %237 = load i32, ptr %DC4, align 4
  %238 = load i32, ptr %DC6, align 4
  %add342 = add nsw i32 %237, %238
  %239 = load i32, ptr %DC5, align 4
  %mul343 = mul nsw i32 2, %239
  %sub344 = sub nsw i32 %add342, %mul343
  %conv345 = sext i32 %sub344 to i64
  %mul346 = mul nsw i64 %mul341, %conv345
  store i64 %mul346, ptr %num, align 8
  %240 = load i64, ptr %num, align 8
  %cmp347 = icmp sge i64 %240, 0
  br i1 %cmp347, label %if.then349, label %if.else365

if.then349:                                       ; preds = %if.then340
  %241 = load i64, ptr %Q02, align 8
  %shl350 = shl i64 %241, 7
  %242 = load i64, ptr %num, align 8
  %add351 = add nsw i64 %shl350, %242
  %243 = load i64, ptr %Q02, align 8
  %shl352 = shl i64 %243, 8
  %div353 = sdiv i64 %add351, %shl352
  %conv354 = trunc i64 %div353 to i32
  store i32 %conv354, ptr %pred, align 4
  %244 = load i32, ptr %Al, align 4
  %cmp355 = icmp sgt i32 %244, 0
  br i1 %cmp355, label %land.lhs.true357, label %if.end364

land.lhs.true357:                                 ; preds = %if.then349
  %245 = load i32, ptr %pred, align 4
  %246 = load i32, ptr %Al, align 4
  %shl358 = shl i32 1, %246
  %cmp359 = icmp sge i32 %245, %shl358
  br i1 %cmp359, label %if.then361, label %if.end364

if.then361:                                       ; preds = %land.lhs.true357
  %247 = load i32, ptr %Al, align 4
  %shl362 = shl i32 1, %247
  %sub363 = sub nsw i32 %shl362, 1
  store i32 %sub363, ptr %pred, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.then361, %land.lhs.true357, %if.then349
  br label %if.end382

if.else365:                                       ; preds = %if.then340
  %248 = load i64, ptr %Q02, align 8
  %shl366 = shl i64 %248, 7
  %249 = load i64, ptr %num, align 8
  %sub367 = sub nsw i64 %shl366, %249
  %250 = load i64, ptr %Q02, align 8
  %shl368 = shl i64 %250, 8
  %div369 = sdiv i64 %sub367, %shl368
  %conv370 = trunc i64 %div369 to i32
  store i32 %conv370, ptr %pred, align 4
  %251 = load i32, ptr %Al, align 4
  %cmp371 = icmp sgt i32 %251, 0
  br i1 %cmp371, label %land.lhs.true373, label %if.end380

land.lhs.true373:                                 ; preds = %if.else365
  %252 = load i32, ptr %pred, align 4
  %253 = load i32, ptr %Al, align 4
  %shl374 = shl i32 1, %253
  %cmp375 = icmp sge i32 %252, %shl374
  br i1 %cmp375, label %if.then377, label %if.end380

if.then377:                                       ; preds = %land.lhs.true373
  %254 = load i32, ptr %Al, align 4
  %shl378 = shl i32 1, %254
  %sub379 = sub nsw i32 %shl378, 1
  store i32 %sub379, ptr %pred, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.then377, %land.lhs.true373, %if.else365
  %255 = load i32, ptr %pred, align 4
  %sub381 = sub nsw i32 0, %255
  store i32 %sub381, ptr %pred, align 4
  br label %if.end382

if.end382:                                        ; preds = %if.end380, %if.end364
  %256 = load i32, ptr %pred, align 4
  %conv383 = trunc i32 %256 to i16
  %arrayidx384 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 2
  store i16 %conv383, ptr %arrayidx384, align 2
  br label %if.end385

if.end385:                                        ; preds = %if.end382, %land.lhs.true335, %if.end331
  %257 = load ptr, ptr %inverse_DCT, align 8
  %258 = load ptr, ptr %cinfo.addr, align 8
  %259 = load ptr, ptr %compptr, align 8
  %arraydecay386 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 0
  %260 = load ptr, ptr %output_ptr, align 8
  %261 = load i32, ptr %output_col, align 4
  call void %257(ptr noundef %258, ptr noundef %259, ptr noundef %arraydecay386, ptr noundef %260, i32 noundef %261)
  %262 = load i32, ptr %DC2, align 4
  store i32 %262, ptr %DC1, align 4
  %263 = load i32, ptr %DC3, align 4
  store i32 %263, ptr %DC2, align 4
  %264 = load i32, ptr %DC5, align 4
  store i32 %264, ptr %DC4, align 4
  %265 = load i32, ptr %DC6, align 4
  store i32 %265, ptr %DC5, align 4
  %266 = load i32, ptr %DC8, align 4
  store i32 %266, ptr %DC7, align 4
  %267 = load i32, ptr %DC9, align 4
  store i32 %267, ptr %DC8, align 4
  %268 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %268, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %269 = load ptr, ptr %prev_block_row, align 8
  %incdec.ptr387 = getelementptr inbounds [64 x i16], ptr %269, i32 1
  store ptr %incdec.ptr387, ptr %prev_block_row, align 8
  %270 = load ptr, ptr %next_block_row, align 8
  %incdec.ptr388 = getelementptr inbounds [64 x i16], ptr %270, i32 1
  store ptr %incdec.ptr388, ptr %next_block_row, align 8
  %271 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %271, i32 0, i32 9
  %272 = load i32, ptr %DCT_scaled_size, align 4
  %273 = load i32, ptr %output_col, align 4
  %add389 = add i32 %273, %272
  store i32 %add389, ptr %output_col, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end385
  %274 = load i32, ptr %block_num, align 4
  %inc = add i32 %274, 1
  store i32 %inc, ptr %block_num, align 4
  br label %for.cond105, !llvm.loop !27

for.end:                                          ; preds = %for.cond105
  %275 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size390 = getelementptr inbounds %struct.jpeg_component_info, ptr %275, i32 0, i32 9
  %276 = load i32, ptr %DCT_scaled_size390, align 4
  %277 = load ptr, ptr %output_ptr, align 8
  %idx.ext391 = sext i32 %276 to i64
  %add.ptr392 = getelementptr inbounds ptr, ptr %277, i64 %idx.ext391
  store ptr %add.ptr392, ptr %output_ptr, align 8
  br label %for.inc393

for.inc393:                                       ; preds = %for.end
  %278 = load i32, ptr %block_row, align 4
  %inc394 = add nsw i32 %278, 1
  store i32 %inc394, ptr %block_row, align 4
  br label %for.cond69, !llvm.loop !28

for.end395:                                       ; preds = %for.cond69
  br label %for.inc396

for.inc396:                                       ; preds = %for.end395, %if.then15
  %279 = load i32, ptr %ci, align 4
  %inc397 = add nsw i32 %279, 1
  store i32 %inc397, ptr %ci, align 4
  %280 = load ptr, ptr %compptr, align 8
  %incdec.ptr398 = getelementptr inbounds %struct.jpeg_component_info, ptr %280, i32 1
  store ptr %incdec.ptr398, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !29

for.end399:                                       ; preds = %for.cond
  %281 = load ptr, ptr %cinfo.addr, align 8
  %output_iMCU_row400 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %281, i32 0, i32 37
  %282 = load i32, ptr %output_iMCU_row400, align 8
  %inc401 = add i32 %282, 1
  store i32 %inc401, ptr %output_iMCU_row400, align 8
  %283 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows402 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %283, i32 0, i32 60
  %284 = load i32, ptr %total_iMCU_rows402, align 8
  %cmp403 = icmp ult i32 %inc401, %284
  br i1 %cmp403, label %if.then405, label %if.end406

if.then405:                                       ; preds = %for.end399
  store i32 3, ptr %retval, align 4
  br label %return

if.end406:                                        ; preds = %for.end399
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end406, %if.then405, %if.then11
  %285 = load i32, ptr %retval, align 4
  ret i32 %285
}

declare void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jzero_far(ptr noundef, i64 noundef) #1

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
