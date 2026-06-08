; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcprepct.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcprepct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x ptr], i32, i32, i32, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_color_converter = type { ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_prep_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %prep = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %0 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %error_exit, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void %5(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %alloc_small, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 112)
  store ptr %call, ptr %prep, align 8
  %11 = load ptr, ptr %prep, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %prep2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 53
  store ptr %11, ptr %prep2, align 8
  %13 = load ptr, ptr %prep, align 8
  %pub = getelementptr inbounds %struct.my_prep_controller, ptr %13, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_prep, ptr %start_pass, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 57
  %15 = load ptr, ptr %downsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %need_context_rows, align 8
  %tobool3 = icmp ne i32 %16, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %17 = load ptr, ptr %prep, align 8
  %pub5 = getelementptr inbounds %struct.my_prep_controller, ptr %17, i32 0, i32 0
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %pub5, i32 0, i32 1
  store ptr @pre_process_context, ptr %pre_process_data, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void @create_context_buffer(ptr noundef %18)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %prep, align 8
  %pub6 = getelementptr inbounds %struct.my_prep_controller, ptr %19, i32 0, i32 0
  %pre_process_data7 = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %pub6, i32 0, i32 1
  store ptr @pre_process_data, ptr %pre_process_data7, align 8
  store i32 0, ptr %ci, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 14
  %21 = load ptr, ptr %comp_info, align 8
  store ptr %21, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %22 = load i32, ptr %ci, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 12
  %24 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %mem8, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %alloc_sarray, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i32 0, i32 7
  %30 = load i32, ptr %width_in_blocks, align 4
  %conv = zext i32 %30 to i64
  %mul = mul nsw i64 %conv, 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 38
  %32 = load i32, ptr %max_h_samp_factor, align 8
  %conv9 = sext i32 %32 to i64
  %mul10 = mul nsw i64 %mul, %conv9
  %33 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %h_samp_factor, align 8
  %conv11 = sext i32 %34 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %35 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 39
  %36 = load i32, ptr %max_v_samp_factor, align 4
  %call13 = call ptr %27(ptr noundef %28, i32 noundef 1, i32 noundef %conv12, i32 noundef %36)
  %37 = load ptr, ptr %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %color_buf, i64 0, i64 %idxprom
  store ptr %call13, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %ci, align 4
  %40 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.then4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_prep(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %prep = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pass_mode, ptr %pass_mode.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 53
  %1 = load ptr, ptr %prep1, align 8
  store ptr %1, ptr %prep, align 8
  %2 = load i32, ptr %pass_mode.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 7
  %10 = load i32, ptr %image_height, align 4
  %11 = load ptr, ptr %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, ptr %11, i32 0, i32 2
  store i32 %10, ptr %rows_to_go, align 8
  %12 = load ptr, ptr %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, ptr %12, i32 0, i32 3
  store i32 0, ptr %next_buf_row, align 4
  %13 = load ptr, ptr %prep, align 8
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, ptr %13, i32 0, i32 4
  store i32 0, ptr %this_row_group, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 39
  %15 = load i32, ptr %max_v_samp_factor, align 4
  %mul = mul nsw i32 2, %15
  %16 = load ptr, ptr %prep, align 8
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, ptr %16, i32 0, i32 5
  store i32 %mul, ptr %next_buf_stop, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pre_process_context(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_ctr, i32 noundef %in_rows_avail, ptr noundef %output_buf, ptr noundef %out_row_group_ctr, i32 noundef %out_row_groups_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_ctr.addr = alloca ptr, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_group_ctr.addr = alloca ptr, align 8
  %out_row_groups_avail.addr = alloca i32, align 4
  %prep = alloca ptr, align 8
  %numrows = alloca i32, align 4
  %ci = alloca i32, align 4
  %buf_height = alloca i32, align 4
  %inrows = alloca i32, align 4
  %row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_ctr, ptr %in_row_ctr.addr, align 8
  store i32 %in_rows_avail, ptr %in_rows_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_group_ctr, ptr %out_row_group_ctr.addr, align 8
  store i32 %out_row_groups_avail, ptr %out_row_groups_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 53
  %1 = load ptr, ptr %prep1, align 8
  store ptr %1, ptr %prep, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 39
  %3 = load i32, ptr %max_v_samp_factor, align 4
  %mul = mul nsw i32 %3, 3
  store i32 %mul, ptr %buf_height, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %entry
  %4 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %out_row_groups_avail.addr, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %in_row_ctr.addr, align 8
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %in_rows_avail.addr, align 4
  %cmp2 = icmp ult i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %in_rows_avail.addr, align 4
  %11 = load ptr, ptr %in_row_ctr.addr, align 8
  %12 = load i32, ptr %11, align 4
  %sub = sub i32 %10, %12
  store i32 %sub, ptr %inrows, align 4
  %13 = load ptr, ptr %prep, align 8
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %next_buf_stop, align 4
  %15 = load ptr, ptr %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %next_buf_row, align 4
  %sub3 = sub nsw i32 %14, %16
  store i32 %sub3, ptr %numrows, align 4
  %17 = load i32, ptr %numrows, align 4
  %18 = load i32, ptr %inrows, align 4
  %cmp4 = icmp ult i32 %17, %18
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %19 = load i32, ptr %numrows, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %20 = load i32, ptr %inrows, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, ptr %numrows, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 56
  %22 = load ptr, ptr %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %color_convert, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %input_buf.addr, align 8
  %26 = load ptr, ptr %in_row_ctr.addr, align 8
  %27 = load i32, ptr %26, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %25, i64 %idx.ext
  %28 = load ptr, ptr %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, ptr %28, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %color_buf, i64 0, i64 0
  %29 = load ptr, ptr %prep, align 8
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %next_buf_row5, align 4
  %31 = load i32, ptr %numrows, align 4
  call void %23(ptr noundef %24, ptr noundef %add.ptr, ptr noundef %arraydecay, i32 noundef %30, i32 noundef %31)
  %32 = load ptr, ptr %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %rows_to_go, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 7
  %35 = load i32, ptr %image_height, align 4
  %cmp6 = icmp eq i32 %33, %35
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %if.then7
  %36 = load i32, ptr %ci, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 12
  %38 = load i32, ptr %num_components, align 4
  %cmp8 = icmp slt i32 %36, %38
  br i1 %cmp8, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %row, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %39 = load i32, ptr %row, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 39
  %41 = load i32, ptr %max_v_samp_factor10, align 4
  %cmp11 = icmp sle i32 %39, %41
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond9
  %42 = load ptr, ptr %prep, align 8
  %color_buf13 = getelementptr inbounds %struct.my_prep_controller, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %color_buf13, i64 0, i64 %idxprom
  %44 = load ptr, ptr %arrayidx, align 8
  %45 = load ptr, ptr %prep, align 8
  %color_buf14 = getelementptr inbounds %struct.my_prep_controller, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %ci, align 4
  %idxprom15 = sext i32 %46 to i64
  %arrayidx16 = getelementptr inbounds [10 x ptr], ptr %color_buf14, i64 0, i64 %idxprom15
  %47 = load ptr, ptr %arrayidx16, align 8
  %48 = load i32, ptr %row, align 4
  %sub17 = sub nsw i32 0, %48
  %49 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 6
  %50 = load i32, ptr %image_width, align 8
  call void @jcopy_sample_rows(ptr noundef %44, i32 noundef 0, ptr noundef %47, i32 noundef %sub17, i32 noundef 1, i32 noundef %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %51 = load i32, ptr %row, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond9, !llvm.loop !8

for.end:                                          ; preds = %for.cond9
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %52 = load i32, ptr %ci, align 4
  %inc19 = add nsw i32 %52, 1
  store i32 %inc19, ptr %ci, align 4
  br label %for.cond, !llvm.loop !9

for.end20:                                        ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end20, %cond.end
  %53 = load i32, ptr %numrows, align 4
  %54 = load ptr, ptr %in_row_ctr.addr, align 8
  %55 = load i32, ptr %54, align 4
  %add = add i32 %55, %53
  store i32 %add, ptr %54, align 4
  %56 = load i32, ptr %numrows, align 4
  %57 = load ptr, ptr %prep, align 8
  %next_buf_row21 = getelementptr inbounds %struct.my_prep_controller, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %next_buf_row21, align 4
  %add22 = add nsw i32 %58, %56
  store i32 %add22, ptr %next_buf_row21, align 4
  %59 = load i32, ptr %numrows, align 4
  %60 = load ptr, ptr %prep, align 8
  %rows_to_go23 = getelementptr inbounds %struct.my_prep_controller, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %rows_to_go23, align 8
  %sub24 = sub i32 %61, %59
  store i32 %sub24, ptr %rows_to_go23, align 8
  br label %if.end49

if.else:                                          ; preds = %while.body
  %62 = load ptr, ptr %prep, align 8
  %rows_to_go25 = getelementptr inbounds %struct.my_prep_controller, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %rows_to_go25, align 8
  %cmp26 = icmp ne i32 %63, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else
  br label %while.end

if.end28:                                         ; preds = %if.else
  %64 = load ptr, ptr %prep, align 8
  %next_buf_row29 = getelementptr inbounds %struct.my_prep_controller, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %next_buf_row29, align 4
  %66 = load ptr, ptr %prep, align 8
  %next_buf_stop30 = getelementptr inbounds %struct.my_prep_controller, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %next_buf_stop30, align 4
  %cmp31 = icmp slt i32 %65, %67
  br i1 %cmp31, label %if.then32, label %if.end48

if.then32:                                        ; preds = %if.end28
  store i32 0, ptr %ci, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc43, %if.then32
  %68 = load i32, ptr %ci, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %num_components34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i32 0, i32 12
  %70 = load i32, ptr %num_components34, align 4
  %cmp35 = icmp slt i32 %68, %70
  br i1 %cmp35, label %for.body36, label %for.end45

for.body36:                                       ; preds = %for.cond33
  %71 = load ptr, ptr %prep, align 8
  %color_buf37 = getelementptr inbounds %struct.my_prep_controller, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %ci, align 4
  %idxprom38 = sext i32 %72 to i64
  %arrayidx39 = getelementptr inbounds [10 x ptr], ptr %color_buf37, i64 0, i64 %idxprom38
  %73 = load ptr, ptr %arrayidx39, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %image_width40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i32 0, i32 6
  %75 = load i32, ptr %image_width40, align 8
  %76 = load ptr, ptr %prep, align 8
  %next_buf_row41 = getelementptr inbounds %struct.my_prep_controller, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %next_buf_row41, align 4
  %78 = load ptr, ptr %prep, align 8
  %next_buf_stop42 = getelementptr inbounds %struct.my_prep_controller, ptr %78, i32 0, i32 5
  %79 = load i32, ptr %next_buf_stop42, align 4
  call void @expand_bottom_edge(ptr noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body36
  %80 = load i32, ptr %ci, align 4
  %inc44 = add nsw i32 %80, 1
  store i32 %inc44, ptr %ci, align 4
  br label %for.cond33, !llvm.loop !10

for.end45:                                        ; preds = %for.cond33
  %81 = load ptr, ptr %prep, align 8
  %next_buf_stop46 = getelementptr inbounds %struct.my_prep_controller, ptr %81, i32 0, i32 5
  %82 = load i32, ptr %next_buf_stop46, align 4
  %83 = load ptr, ptr %prep, align 8
  %next_buf_row47 = getelementptr inbounds %struct.my_prep_controller, ptr %83, i32 0, i32 3
  store i32 %82, ptr %next_buf_row47, align 4
  br label %if.end48

if.end48:                                         ; preds = %for.end45, %if.end28
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end
  %84 = load ptr, ptr %prep, align 8
  %next_buf_row50 = getelementptr inbounds %struct.my_prep_controller, ptr %84, i32 0, i32 3
  %85 = load i32, ptr %next_buf_row50, align 4
  %86 = load ptr, ptr %prep, align 8
  %next_buf_stop51 = getelementptr inbounds %struct.my_prep_controller, ptr %86, i32 0, i32 5
  %87 = load i32, ptr %next_buf_stop51, align 4
  %cmp52 = icmp eq i32 %85, %87
  br i1 %cmp52, label %if.then53, label %if.end75

if.then53:                                        ; preds = %if.end49
  %88 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %88, i32 0, i32 57
  %89 = load ptr, ptr %downsample, align 8
  %downsample54 = getelementptr inbounds %struct.jpeg_downsampler, ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %downsample54, align 8
  %91 = load ptr, ptr %cinfo.addr, align 8
  %92 = load ptr, ptr %prep, align 8
  %color_buf55 = getelementptr inbounds %struct.my_prep_controller, ptr %92, i32 0, i32 1
  %arraydecay56 = getelementptr inbounds [10 x ptr], ptr %color_buf55, i64 0, i64 0
  %93 = load ptr, ptr %prep, align 8
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, ptr %93, i32 0, i32 4
  %94 = load i32, ptr %this_row_group, align 8
  %95 = load ptr, ptr %output_buf.addr, align 8
  %96 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %97 = load i32, ptr %96, align 4
  call void %90(ptr noundef %91, ptr noundef %arraydecay56, i32 noundef %94, ptr noundef %95, i32 noundef %97)
  %98 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %99 = load i32, ptr %98, align 4
  %inc57 = add i32 %99, 1
  store i32 %inc57, ptr %98, align 4
  %100 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %100, i32 0, i32 39
  %101 = load i32, ptr %max_v_samp_factor58, align 4
  %102 = load ptr, ptr %prep, align 8
  %this_row_group59 = getelementptr inbounds %struct.my_prep_controller, ptr %102, i32 0, i32 4
  %103 = load i32, ptr %this_row_group59, align 8
  %add60 = add nsw i32 %103, %101
  store i32 %add60, ptr %this_row_group59, align 8
  %104 = load ptr, ptr %prep, align 8
  %this_row_group61 = getelementptr inbounds %struct.my_prep_controller, ptr %104, i32 0, i32 4
  %105 = load i32, ptr %this_row_group61, align 8
  %106 = load i32, ptr %buf_height, align 4
  %cmp62 = icmp sge i32 %105, %106
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then53
  %107 = load ptr, ptr %prep, align 8
  %this_row_group64 = getelementptr inbounds %struct.my_prep_controller, ptr %107, i32 0, i32 4
  store i32 0, ptr %this_row_group64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then53
  %108 = load ptr, ptr %prep, align 8
  %next_buf_row66 = getelementptr inbounds %struct.my_prep_controller, ptr %108, i32 0, i32 3
  %109 = load i32, ptr %next_buf_row66, align 4
  %110 = load i32, ptr %buf_height, align 4
  %cmp67 = icmp sge i32 %109, %110
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  %111 = load ptr, ptr %prep, align 8
  %next_buf_row69 = getelementptr inbounds %struct.my_prep_controller, ptr %111, i32 0, i32 3
  store i32 0, ptr %next_buf_row69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65
  %112 = load ptr, ptr %prep, align 8
  %next_buf_row71 = getelementptr inbounds %struct.my_prep_controller, ptr %112, i32 0, i32 3
  %113 = load i32, ptr %next_buf_row71, align 4
  %114 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i32 0, i32 39
  %115 = load i32, ptr %max_v_samp_factor72, align 4
  %add73 = add nsw i32 %113, %115
  %116 = load ptr, ptr %prep, align 8
  %next_buf_stop74 = getelementptr inbounds %struct.my_prep_controller, ptr %116, i32 0, i32 5
  store i32 %add73, ptr %next_buf_stop74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end70, %if.end49
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then27, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_context_buffer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %prep = alloca ptr, align 8
  %rgroup_height = alloca i32, align 4
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %true_buffer = alloca ptr, align 8
  %fake_buffer = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 53
  %1 = load ptr, ptr %prep1, align 8
  store ptr %1, ptr %prep, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 39
  %3 = load i32, ptr %max_v_samp_factor, align 4
  store i32 %3, ptr %rgroup_height, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %alloc_small, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 12
  %9 = load i32, ptr %num_components, align 4
  %mul = mul nsw i32 %9, 5
  %10 = load i32, ptr %rgroup_height, align 4
  %mul2 = mul nsw i32 %mul, %10
  %conv = sext i32 %mul2 to i64
  %mul3 = mul i64 %conv, 8
  %call = call ptr %6(ptr noundef %7, i32 noundef 1, i64 noundef %mul3)
  store ptr %call, ptr %fake_buffer, align 8
  store i32 0, ptr %ci, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 14
  %12 = load ptr, ptr %comp_info, align 8
  store ptr %12, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %13 = load i32, ptr %ci, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %num_components4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 12
  %15 = load i32, ptr %num_components4, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %cinfo.addr, align 8
  %mem6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %mem6, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %alloc_sarray, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %width_in_blocks, align 4
  %conv7 = zext i32 %21 to i64
  %mul8 = mul nsw i64 %conv7, 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 38
  %23 = load i32, ptr %max_h_samp_factor, align 8
  %conv9 = sext i32 %23 to i64
  %mul10 = mul nsw i64 %mul8, %conv9
  %24 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %h_samp_factor, align 8
  %conv11 = sext i32 %25 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %26 = load i32, ptr %rgroup_height, align 4
  %mul13 = mul nsw i32 3, %26
  %call14 = call ptr %18(ptr noundef %19, i32 noundef 1, i32 noundef %conv12, i32 noundef %mul13)
  store ptr %call14, ptr %true_buffer, align 8
  %27 = load ptr, ptr %fake_buffer, align 8
  %28 = load i32, ptr %rgroup_height, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %27, i64 %idx.ext
  %29 = load ptr, ptr %true_buffer, align 8
  %30 = load i32, ptr %rgroup_height, align 4
  %mul15 = mul nsw i32 3, %30
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %31 = load ptr, ptr %fake_buffer, align 8
  %32 = load i32, ptr %rgroup_height, align 4
  %idx.ext18 = sext i32 %32 to i64
  %add.ptr19 = getelementptr inbounds ptr, ptr %31, i64 %idx.ext18
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr19, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %29, i64 noundef %mul17, i64 noundef %33) #4
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %rgroup_height, align 4
  %cmp22 = icmp slt i32 %34, %35
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %36 = load ptr, ptr %true_buffer, align 8
  %37 = load i32, ptr %rgroup_height, align 4
  %mul25 = mul nsw i32 2, %37
  %38 = load i32, ptr %i, align 4
  %add = add nsw i32 %mul25, %38
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %36, i64 %idxprom
  %39 = load ptr, ptr %arrayidx, align 8
  %40 = load ptr, ptr %fake_buffer, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %40, i64 %idxprom26
  store ptr %39, ptr %arrayidx27, align 8
  %42 = load ptr, ptr %true_buffer, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %43 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %42, i64 %idxprom28
  %44 = load ptr, ptr %arrayidx29, align 8
  %45 = load ptr, ptr %fake_buffer, align 8
  %46 = load i32, ptr %rgroup_height, align 4
  %mul30 = mul nsw i32 4, %46
  %47 = load i32, ptr %i, align 4
  %add31 = add nsw i32 %mul30, %47
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %45, i64 %idxprom32
  store ptr %44, ptr %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %48 = load i32, ptr %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond21, !llvm.loop !12

for.end:                                          ; preds = %for.cond21
  %49 = load ptr, ptr %fake_buffer, align 8
  %50 = load i32, ptr %rgroup_height, align 4
  %idx.ext34 = sext i32 %50 to i64
  %add.ptr35 = getelementptr inbounds ptr, ptr %49, i64 %idx.ext34
  %51 = load ptr, ptr %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %ci, align 4
  %idxprom36 = sext i32 %52 to i64
  %arrayidx37 = getelementptr inbounds [10 x ptr], ptr %color_buf, i64 0, i64 %idxprom36
  store ptr %add.ptr35, ptr %arrayidx37, align 8
  %53 = load i32, ptr %rgroup_height, align 4
  %mul38 = mul nsw i32 5, %53
  %54 = load ptr, ptr %fake_buffer, align 8
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds ptr, ptr %54, i64 %idx.ext39
  store ptr %add.ptr40, ptr %fake_buffer, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %55 = load i32, ptr %ci, align 4
  %inc42 = add nsw i32 %55, 1
  store i32 %inc42, ptr %ci, align 4
  %56 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %56, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !13

for.end43:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pre_process_data(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_ctr, i32 noundef %in_rows_avail, ptr noundef %output_buf, ptr noundef %out_row_group_ctr, i32 noundef %out_row_groups_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_ctr.addr = alloca ptr, align 8
  %in_rows_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_group_ctr.addr = alloca ptr, align 8
  %out_row_groups_avail.addr = alloca i32, align 4
  %prep = alloca ptr, align 8
  %numrows = alloca i32, align 4
  %ci = alloca i32, align 4
  %inrows = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_ctr, ptr %in_row_ctr.addr, align 8
  store i32 %in_rows_avail, ptr %in_rows_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_group_ctr, ptr %out_row_group_ctr.addr, align 8
  store i32 %out_row_groups_avail, ptr %out_row_groups_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 53
  %1 = load ptr, ptr %prep1, align 8
  store ptr %1, ptr %prep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end47, %entry
  %2 = load ptr, ptr %in_row_ctr.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %in_rows_avail.addr, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %out_row_groups_avail.addr, align 4
  %cmp2 = icmp ult i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, ptr %in_rows_avail.addr, align 4
  %10 = load ptr, ptr %in_row_ctr.addr, align 8
  %11 = load i32, ptr %10, align 4
  %sub = sub i32 %9, %11
  store i32 %sub, ptr %inrows, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 39
  %13 = load i32, ptr %max_v_samp_factor, align 4
  %14 = load ptr, ptr %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %next_buf_row, align 4
  %sub3 = sub nsw i32 %13, %15
  store i32 %sub3, ptr %numrows, align 4
  %16 = load i32, ptr %numrows, align 4
  %17 = load i32, ptr %inrows, align 4
  %cmp4 = icmp ult i32 %16, %17
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %18 = load i32, ptr %numrows, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %19 = load i32, ptr %inrows, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, ptr %numrows, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 56
  %21 = load ptr, ptr %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %color_convert, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %input_buf.addr, align 8
  %25 = load ptr, ptr %in_row_ctr.addr, align 8
  %26 = load i32, ptr %25, align 4
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %24, i64 %idx.ext
  %27 = load ptr, ptr %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, ptr %27, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %color_buf, i64 0, i64 0
  %28 = load ptr, ptr %prep, align 8
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %next_buf_row5, align 4
  %30 = load i32, ptr %numrows, align 4
  call void %22(ptr noundef %23, ptr noundef %add.ptr, ptr noundef %arraydecay, i32 noundef %29, i32 noundef %30)
  %31 = load i32, ptr %numrows, align 4
  %32 = load ptr, ptr %in_row_ctr.addr, align 8
  %33 = load i32, ptr %32, align 4
  %add = add i32 %33, %31
  store i32 %add, ptr %32, align 4
  %34 = load i32, ptr %numrows, align 4
  %35 = load ptr, ptr %prep, align 8
  %next_buf_row6 = getelementptr inbounds %struct.my_prep_controller, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %next_buf_row6, align 4
  %add7 = add nsw i32 %36, %34
  store i32 %add7, ptr %next_buf_row6, align 4
  %37 = load i32, ptr %numrows, align 4
  %38 = load ptr, ptr %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %rows_to_go, align 8
  %sub8 = sub i32 %39, %37
  store i32 %sub8, ptr %rows_to_go, align 8
  %40 = load ptr, ptr %prep, align 8
  %rows_to_go9 = getelementptr inbounds %struct.my_prep_controller, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %rows_to_go9, align 8
  %cmp10 = icmp eq i32 %41, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %42 = load ptr, ptr %prep, align 8
  %next_buf_row11 = getelementptr inbounds %struct.my_prep_controller, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %next_buf_row11, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 39
  %45 = load i32, ptr %max_v_samp_factor12, align 4
  %cmp13 = icmp slt i32 %43, %45
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %46 = load i32, ptr %ci, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 12
  %48 = load i32, ptr %num_components, align 4
  %cmp14 = icmp slt i32 %46, %48
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %prep, align 8
  %color_buf15 = getelementptr inbounds %struct.my_prep_controller, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %color_buf15, i64 0, i64 %idxprom
  %51 = load ptr, ptr %arrayidx, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i32 0, i32 6
  %53 = load i32, ptr %image_width, align 8
  %54 = load ptr, ptr %prep, align 8
  %next_buf_row16 = getelementptr inbounds %struct.my_prep_controller, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %next_buf_row16, align 4
  %56 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i32 0, i32 39
  %57 = load i32, ptr %max_v_samp_factor17, align 4
  call void @expand_bottom_edge(ptr noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %59 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 39
  %60 = load i32, ptr %max_v_samp_factor18, align 4
  %61 = load ptr, ptr %prep, align 8
  %next_buf_row19 = getelementptr inbounds %struct.my_prep_controller, ptr %61, i32 0, i32 3
  store i32 %60, ptr %next_buf_row19, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %cond.end
  %62 = load ptr, ptr %prep, align 8
  %next_buf_row20 = getelementptr inbounds %struct.my_prep_controller, ptr %62, i32 0, i32 3
  %63 = load i32, ptr %next_buf_row20, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i32 0, i32 39
  %65 = load i32, ptr %max_v_samp_factor21, align 4
  %cmp22 = icmp eq i32 %63, %65
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end
  %66 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 57
  %67 = load ptr, ptr %downsample, align 8
  %downsample24 = getelementptr inbounds %struct.jpeg_downsampler, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %downsample24, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  %70 = load ptr, ptr %prep, align 8
  %color_buf25 = getelementptr inbounds %struct.my_prep_controller, ptr %70, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [10 x ptr], ptr %color_buf25, i64 0, i64 0
  %71 = load ptr, ptr %output_buf.addr, align 8
  %72 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %73 = load i32, ptr %72, align 4
  call void %68(ptr noundef %69, ptr noundef %arraydecay26, i32 noundef 0, ptr noundef %71, i32 noundef %73)
  %74 = load ptr, ptr %prep, align 8
  %next_buf_row27 = getelementptr inbounds %struct.my_prep_controller, ptr %74, i32 0, i32 3
  store i32 0, ptr %next_buf_row27, align 4
  %75 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %76 = load i32, ptr %75, align 4
  %inc28 = add i32 %76, 1
  store i32 %inc28, ptr %75, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end
  %77 = load ptr, ptr %prep, align 8
  %rows_to_go30 = getelementptr inbounds %struct.my_prep_controller, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %rows_to_go30, align 8
  %cmp31 = icmp eq i32 %78, 0
  br i1 %cmp31, label %land.lhs.true32, label %if.end47

land.lhs.true32:                                  ; preds = %if.end29
  %79 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %out_row_groups_avail.addr, align 4
  %cmp33 = icmp ult i32 %80, %81
  br i1 %cmp33, label %if.then34, label %if.end47

if.then34:                                        ; preds = %land.lhs.true32
  store i32 0, ptr %ci, align 4
  %82 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %82, i32 0, i32 14
  %83 = load ptr, ptr %comp_info, align 8
  store ptr %83, ptr %compptr, align 8
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc44, %if.then34
  %84 = load i32, ptr %ci, align 4
  %85 = load ptr, ptr %cinfo.addr, align 8
  %num_components36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %85, i32 0, i32 12
  %86 = load i32, ptr %num_components36, align 4
  %cmp37 = icmp slt i32 %84, %86
  br i1 %cmp37, label %for.body38, label %for.end46

for.body38:                                       ; preds = %for.cond35
  %87 = load ptr, ptr %output_buf.addr, align 8
  %88 = load i32, ptr %ci, align 4
  %idxprom39 = sext i32 %88 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %87, i64 %idxprom39
  %89 = load ptr, ptr %arrayidx40, align 8
  %90 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i32 0, i32 7
  %91 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %91, 8
  %92 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i32 0, i32 3
  %95 = load i32, ptr %v_samp_factor, align 4
  %mul41 = mul i32 %93, %95
  %96 = load i32, ptr %out_row_groups_avail.addr, align 4
  %97 = load ptr, ptr %compptr, align 8
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i32 0, i32 3
  %98 = load i32, ptr %v_samp_factor42, align 4
  %mul43 = mul i32 %96, %98
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcprepct_0(ptr noundef %89, i32 noundef %mul, i32 noundef %mul41, i32 noundef %mul43)
  br label %for.inc44

for.inc44:                                        ; preds = %for.body38
  %99 = load i32, ptr %ci, align 4
  %inc45 = add nsw i32 %99, 1
  store i32 %inc45, ptr %ci, align 4
  %100 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond35, !llvm.loop !15

for.end46:                                        ; preds = %for.cond35
  %101 = load i32, ptr %out_row_groups_avail.addr, align 4
  %102 = load ptr, ptr %out_row_group_ctr.addr, align 8
  store i32 %101, ptr %102, align 4
  br label %while.end

if.end47:                                         ; preds = %land.lhs.true32, %if.end29
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %for.end46, %land.end
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @expand_bottom_edge(ptr noundef %image_data, i32 noundef %num_cols, i32 noundef %input_rows, i32 noundef %output_rows) #0 {
entry:
  %image_data.addr = alloca ptr, align 8
  %num_cols.addr = alloca i32, align 4
  %input_rows.addr = alloca i32, align 4
  %output_rows.addr = alloca i32, align 4
  %row = alloca i32, align 4
  store ptr %image_data, ptr %image_data.addr, align 8
  store i32 %num_cols, ptr %num_cols.addr, align 4
  store i32 %input_rows, ptr %input_rows.addr, align 4
  store i32 %output_rows, ptr %output_rows.addr, align 4
  %0 = load i32, ptr %input_rows.addr, align 4
  store i32 %0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %row, align 4
  %2 = load i32, ptr %output_rows.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %image_data.addr, align 8
  %4 = load i32, ptr %input_rows.addr, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load ptr, ptr %image_data.addr, align 8
  %6 = load i32, ptr %row, align 4
  %7 = load i32, ptr %num_cols.addr, align 4
  call void @jcopy_sample_rows(ptr noundef %3, i32 noundef %sub, ptr noundef %5, i32 noundef %6, i32 noundef 1, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %row, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcprepct_0(ptr noundef %image_data, i32 noundef %num_cols, i32 noundef %input_rows, i32 noundef %output_rows)  alwaysinline#0 {
entry:
  %image_data.addr = alloca ptr, align 8
  %num_cols.addr = alloca i32, align 4
  %input_rows.addr = alloca i32, align 4
  %output_rows.addr = alloca i32, align 4
  %row = alloca i32, align 4
  store ptr %image_data, ptr %image_data.addr, align 8
  store i32 %num_cols, ptr %num_cols.addr, align 4
  store i32 %input_rows, ptr %input_rows.addr, align 4
  store i32 %output_rows, ptr %output_rows.addr, align 4
  %0 = load i32, ptr %input_rows.addr, align 4
  store i32 %0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %row, align 4
  %2 = load i32, ptr %output_rows.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %image_data.addr, align 8
  %4 = load i32, ptr %input_rows.addr, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load ptr, ptr %image_data.addr, align 8
  %6 = load i32, ptr %row, align 4
  %7 = load i32, ptr %num_cols.addr, align 4
  call void @jcopy_sample_rows(ptr noundef %3, i32 noundef %sub, ptr noundef %5, i32 noundef %6, i32 noundef 1, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %row, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

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
