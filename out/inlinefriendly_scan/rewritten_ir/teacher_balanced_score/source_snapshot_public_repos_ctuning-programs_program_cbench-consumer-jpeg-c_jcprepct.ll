; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jcprepct.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcprepct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x ptr], i32, i32, i32, i32 }
%struct.jpeg_color_converter = type { ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_prep_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %prep = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %tobool.not = icmp eq i32 %need_full_buffer, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr noundef nonnull %0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %6 = load ptr, ptr %5, align 8
  %call = call ptr %6(ptr noundef %4, i32 noundef 1, i64 noundef 112) #4
  store ptr %call, ptr %prep, align 8
  %prep2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 53
  store ptr %call, ptr %prep2, align 8
  store ptr @start_pass_prep, ptr %call, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 57
  %8 = load ptr, ptr %downsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %need_context_rows, align 8
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %prep, align 8
  %pre_process_data = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %10, i64 0, i32 1
  store ptr @pre_process_context, ptr %pre_process_data, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void @create_context_buffer(ptr noundef %11)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %prep, align 8
  %pre_process_data7 = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %12, i64 0, i32 1
  store ptr @pre_process_data, ptr %pre_process_data7, align 8
  store i32 0, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 14
  %14 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %storemerge = phi ptr [ %14, %if.else ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge, ptr %compptr, align 8
  %15 = load i32, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 12
  %17 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %if.end14

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %mem8, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %19, i64 0, i32 2
  %20 = load ptr, ptr %alloc_sarray, align 8
  %21 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 7
  %22 = load i32, ptr %width_in_blocks, align 4
  %conv = zext i32 %22 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %23 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 38
  %24 = load i32, ptr %max_h_samp_factor, align 8
  %conv9 = sext i32 %24 to i64
  %mul10 = mul nsw i64 %mul, %conv9
  %25 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 0, i32 2
  %26 = load i32, ptr %h_samp_factor, align 8
  %conv11 = sext i32 %26 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %27 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i64 0, i32 39
  %28 = load i32, ptr %max_v_samp_factor, align 4
  %call13 = call ptr %20(ptr noundef %18, i32 noundef 1, i32 noundef %conv12, i32 noundef %28) #4
  %29 = load ptr, ptr %prep, align 8
  %30 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds %struct.my_prep_controller, ptr %29, i64 0, i32 1, i64 %idxprom
  store ptr %call13, ptr %arrayidx, align 8
  %31 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %ci, align 4
  %32 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i64 1
  br label %for.cond, !llvm.loop !6

if.end14:                                         ; preds = %for.cond, %if.then4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_prep(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %prep = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 53
  %0 = load ptr, ptr %prep1, align 8
  store ptr %0, ptr %prep, align 8
  %cmp.not = icmp eq i32 %pass_mode, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 7
  %6 = load i32, ptr %image_height, align 4
  %7 = load ptr, ptr %prep, align 8
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, ptr %7, i64 0, i32 2
  store i32 %6, ptr %rows_to_go, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, ptr %7, i64 0, i32 3
  store i32 0, ptr %next_buf_row, align 4
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, ptr %7, i64 0, i32 4
  store i32 0, ptr %this_row_group, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 39
  %9 = load i32, ptr %max_v_samp_factor, align 4
  %mul = shl nsw i32 %9, 1
  %10 = load ptr, ptr %prep, align 8
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, ptr %10, i64 0, i32 5
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
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %1 = load ptr, ptr %prep1, align 8
  store ptr %1, ptr %prep, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %2 = load i32, ptr %max_v_samp_factor, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %buf_height, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %entry
  %3 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %out_row_groups_avail.addr, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %in_row_ctr.addr, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %in_rows_avail.addr, align 4
  %cmp2 = icmp ult i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %in_rows_avail.addr, align 4
  %10 = load ptr, ptr %in_row_ctr.addr, align 8
  %11 = load i32, ptr %10, align 4
  %sub = sub i32 %9, %11
  store i32 %sub, ptr %inrows, align 4
  %12 = load ptr, ptr %prep, align 8
  %next_buf_stop = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 5
  %13 = load i32, ptr %next_buf_stop, align 4
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %next_buf_row, align 4
  %sub3 = sub nsw i32 %13, %14
  store i32 %sub3, ptr %numrows, align 4
  %15 = load i32, ptr %inrows, align 4
  %cmp4 = icmp ult i32 %sub3, %15
  %16 = load i32, ptr %numrows, align 4
  %17 = load i32, ptr %inrows, align 4
  %cond = select i1 %cmp4, i32 %16, i32 %17
  store i32 %cond, ptr %numrows, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 56
  %19 = load ptr, ptr %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %color_convert, align 8
  %21 = load ptr, ptr %input_buf.addr, align 8
  %22 = load ptr, ptr %in_row_ctr.addr, align 8
  %23 = load i32, ptr %22, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  %24 = load ptr, ptr %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, ptr %24, i64 0, i32 1
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, ptr %24, i64 0, i32 3
  %25 = load i32, ptr %next_buf_row5, align 4
  %26 = load i32, ptr %numrows, align 4
  call void %20(ptr noundef %18, ptr noundef %add.ptr, ptr noundef nonnull %color_buf, i32 noundef %25, i32 noundef %26) #4
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %rows_to_go, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i64 0, i32 7
  %29 = load i32, ptr %image_height, align 4
  %cmp6 = icmp eq i32 %27, %29
  br i1 %cmp6, label %for.cond, label %if.end

for.cond:                                         ; preds = %if.then, %for.inc18
  %storemerge1 = phi i32 [ %inc19, %for.inc18 ], [ 0, %if.then ]
  store i32 %storemerge1, ptr %ci, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i64 0, i32 12
  %31 = load i32, ptr %num_components, align 4
  %cmp8 = icmp slt i32 %storemerge1, %31
  br i1 %cmp8, label %for.cond9, label %if.end

for.cond9:                                        ; preds = %for.cond, %for.body12
  %storemerge2 = phi i32 [ %inc, %for.body12 ], [ 1, %for.cond ]
  store i32 %storemerge2, ptr %row, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i64 0, i32 39
  %33 = load i32, ptr %max_v_samp_factor10, align 4
  %cmp11.not = icmp sgt i32 %storemerge2, %33
  br i1 %cmp11.not, label %for.inc18, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %34 = load ptr, ptr %prep, align 8
  %35 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds %struct.my_prep_controller, ptr %34, i64 0, i32 1, i64 %idxprom
  %36 = load ptr, ptr %arrayidx, align 8
  %idxprom15 = sext i32 %35 to i64
  %arrayidx16 = getelementptr inbounds %struct.my_prep_controller, ptr %34, i64 0, i32 1, i64 %idxprom15
  %37 = load ptr, ptr %arrayidx16, align 8
  %38 = load i32, ptr %row, align 4
  %sub17 = sub nsw i32 0, %38
  %39 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 6
  %40 = load i32, ptr %image_width, align 8
  call void @jcopy_sample_rows(ptr noundef %36, i32 noundef 0, ptr noundef %37, i32 noundef %sub17, i32 noundef 1, i32 noundef %40) #4
  %41 = load i32, ptr %row, align 4
  %inc = add nsw i32 %41, 1
  br label %for.cond9, !llvm.loop !8

for.inc18:                                        ; preds = %for.cond9
  %42 = load i32, ptr %ci, align 4
  %inc19 = add nsw i32 %42, 1
  br label %for.cond, !llvm.loop !9

if.end:                                           ; preds = %for.cond, %if.then
  %43 = load i32, ptr %numrows, align 4
  %44 = load ptr, ptr %in_row_ctr.addr, align 8
  %45 = load i32, ptr %44, align 4
  %add = add i32 %45, %43
  store i32 %add, ptr %44, align 4
  %46 = load ptr, ptr %prep, align 8
  %next_buf_row21 = getelementptr inbounds %struct.my_prep_controller, ptr %46, i64 0, i32 3
  %47 = load i32, ptr %next_buf_row21, align 4
  %add22 = add nsw i32 %47, %43
  store i32 %add22, ptr %next_buf_row21, align 4
  %48 = load i32, ptr %numrows, align 4
  %rows_to_go23 = getelementptr inbounds %struct.my_prep_controller, ptr %46, i64 0, i32 2
  %49 = load i32, ptr %rows_to_go23, align 8
  %sub24 = sub i32 %49, %48
  store i32 %sub24, ptr %rows_to_go23, align 8
  br label %if.end49

if.else:                                          ; preds = %while.body
  %50 = load ptr, ptr %prep, align 8
  %rows_to_go25 = getelementptr inbounds %struct.my_prep_controller, ptr %50, i64 0, i32 2
  %51 = load i32, ptr %rows_to_go25, align 8
  %cmp26.not = icmp eq i32 %51, 0
  br i1 %cmp26.not, label %if.end28, label %while.end

if.end28:                                         ; preds = %if.else
  %52 = load ptr, ptr %prep, align 8
  %next_buf_row29 = getelementptr inbounds %struct.my_prep_controller, ptr %52, i64 0, i32 3
  %53 = load i32, ptr %next_buf_row29, align 4
  %next_buf_stop30 = getelementptr inbounds %struct.my_prep_controller, ptr %52, i64 0, i32 5
  %54 = load i32, ptr %next_buf_stop30, align 4
  %cmp31 = icmp slt i32 %53, %54
  br i1 %cmp31, label %for.cond33, label %if.end49

for.cond33:                                       ; preds = %if.end28, %for.body36
  %storemerge = phi i32 [ %inc44, %for.body36 ], [ 0, %if.end28 ]
  store i32 %storemerge, ptr %ci, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %num_components34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 12
  %56 = load i32, ptr %num_components34, align 4
  %cmp35 = icmp slt i32 %storemerge, %56
  br i1 %cmp35, label %for.body36, label %for.end45

for.body36:                                       ; preds = %for.cond33
  %57 = load ptr, ptr %prep, align 8
  %58 = load i32, ptr %ci, align 4
  %idxprom38 = sext i32 %58 to i64
  %arrayidx39 = getelementptr inbounds %struct.my_prep_controller, ptr %57, i64 0, i32 1, i64 %idxprom38
  %59 = load ptr, ptr %arrayidx39, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  %image_width40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 6
  %61 = load i32, ptr %image_width40, align 8
  %62 = load ptr, ptr %prep, align 8
  %next_buf_row41 = getelementptr inbounds %struct.my_prep_controller, ptr %62, i64 0, i32 3
  %63 = load i32, ptr %next_buf_row41, align 4
  %next_buf_stop42 = getelementptr inbounds %struct.my_prep_controller, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %next_buf_stop42, align 4
  call void @expand_bottom_edge(ptr noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %64)
  %65 = load i32, ptr %ci, align 4
  %inc44 = add nsw i32 %65, 1
  br label %for.cond33, !llvm.loop !10

for.end45:                                        ; preds = %for.cond33
  %66 = load ptr, ptr %prep, align 8
  %next_buf_stop46 = getelementptr inbounds %struct.my_prep_controller, ptr %66, i64 0, i32 5
  %67 = load i32, ptr %next_buf_stop46, align 4
  %next_buf_row47 = getelementptr inbounds %struct.my_prep_controller, ptr %66, i64 0, i32 3
  store i32 %67, ptr %next_buf_row47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end28, %for.end45, %if.end
  %68 = load ptr, ptr %prep, align 8
  %next_buf_row50 = getelementptr inbounds %struct.my_prep_controller, ptr %68, i64 0, i32 3
  %69 = load i32, ptr %next_buf_row50, align 4
  %next_buf_stop51 = getelementptr inbounds %struct.my_prep_controller, ptr %68, i64 0, i32 5
  %70 = load i32, ptr %next_buf_stop51, align 4
  %cmp52 = icmp eq i32 %69, %70
  br i1 %cmp52, label %if.then53, label %if.end75

if.then53:                                        ; preds = %if.end49
  %71 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i64 0, i32 57
  %72 = load ptr, ptr %downsample, align 8
  %downsample54 = getelementptr inbounds %struct.jpeg_downsampler, ptr %72, i64 0, i32 1
  %73 = load ptr, ptr %downsample54, align 8
  %74 = load ptr, ptr %prep, align 8
  %color_buf55 = getelementptr inbounds %struct.my_prep_controller, ptr %74, i64 0, i32 1
  %this_row_group = getelementptr inbounds %struct.my_prep_controller, ptr %74, i64 0, i32 4
  %75 = load i32, ptr %this_row_group, align 8
  %76 = load ptr, ptr %output_buf.addr, align 8
  %77 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %78 = load i32, ptr %77, align 4
  call void %73(ptr noundef %71, ptr noundef nonnull %color_buf55, i32 noundef %75, ptr noundef %76, i32 noundef %78) #4
  %79 = load i32, ptr %77, align 4
  %inc57 = add i32 %79, 1
  store i32 %inc57, ptr %77, align 4
  %80 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i64 0, i32 39
  %81 = load i32, ptr %max_v_samp_factor58, align 4
  %82 = load ptr, ptr %prep, align 8
  %this_row_group59 = getelementptr inbounds %struct.my_prep_controller, ptr %82, i64 0, i32 4
  %83 = load i32, ptr %this_row_group59, align 8
  %add60 = add nsw i32 %83, %81
  store i32 %add60, ptr %this_row_group59, align 8
  %84 = load i32, ptr %buf_height, align 4
  %cmp62.not = icmp slt i32 %add60, %84
  br i1 %cmp62.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.then53
  %85 = load ptr, ptr %prep, align 8
  %this_row_group64 = getelementptr inbounds %struct.my_prep_controller, ptr %85, i64 0, i32 4
  store i32 0, ptr %this_row_group64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then53
  %86 = load ptr, ptr %prep, align 8
  %next_buf_row66 = getelementptr inbounds %struct.my_prep_controller, ptr %86, i64 0, i32 3
  %87 = load i32, ptr %next_buf_row66, align 4
  %88 = load i32, ptr %buf_height, align 4
  %cmp67.not = icmp slt i32 %87, %88
  br i1 %cmp67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end65
  %89 = load ptr, ptr %prep, align 8
  %next_buf_row69 = getelementptr inbounds %struct.my_prep_controller, ptr %89, i64 0, i32 3
  store i32 0, ptr %next_buf_row69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65
  %90 = load ptr, ptr %prep, align 8
  %next_buf_row71 = getelementptr inbounds %struct.my_prep_controller, ptr %90, i64 0, i32 3
  %91 = load i32, ptr %next_buf_row71, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %92, i64 0, i32 39
  %93 = load i32, ptr %max_v_samp_factor72, align 4
  %add73 = add nsw i32 %91, %93
  %94 = load ptr, ptr %prep, align 8
  %next_buf_stop74 = getelementptr inbounds %struct.my_prep_controller, ptr %94, i64 0, i32 5
  store i32 %add73, ptr %next_buf_stop74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end70, %if.end49
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.else, %while.cond
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
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 53
  %0 = load ptr, ptr %prep1, align 8
  store ptr %0, ptr %prep, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 39
  %1 = load i32, ptr %max_v_samp_factor, align 4
  store i32 %1, ptr %rgroup_height, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %4 = load ptr, ptr %3, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 12
  %5 = load i32, ptr %num_components, align 4
  %mul = mul nsw i32 %5, 5
  %6 = load i32, ptr %rgroup_height, align 4
  %mul2 = mul nsw i32 %mul, %6
  %conv = sext i32 %mul2 to i64
  %mul3 = shl nsw i64 %conv, 3
  %call = call ptr %4(ptr noundef %2, i32 noundef 1, i64 noundef %mul3) #4
  store ptr %call, ptr %fake_buffer, align 8
  store i32 0, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 14
  %8 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi ptr [ %8, %entry ], [ %incdec.ptr, %for.end ]
  store ptr %storemerge, ptr %compptr, align 8
  %9 = load i32, ptr %ci, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %num_components4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 12
  %11 = load i32, ptr %num_components4, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %mem6, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i64 0, i32 2
  %14 = load ptr, ptr %alloc_sarray, align 8
  %15 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 7
  %16 = load i32, ptr %width_in_blocks, align 4
  %conv7 = zext i32 %16 to i64
  %mul8 = shl nuw nsw i64 %conv7, 3
  %17 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 38
  %18 = load i32, ptr %max_h_samp_factor, align 8
  %conv9 = sext i32 %18 to i64
  %mul10 = mul nsw i64 %mul8, %conv9
  %19 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 2
  %20 = load i32, ptr %h_samp_factor, align 8
  %conv11 = sext i32 %20 to i64
  %div = sdiv i64 %mul10, %conv11
  %conv12 = trunc i64 %div to i32
  %21 = load i32, ptr %rgroup_height, align 4
  %mul13 = mul nsw i32 %21, 3
  %call14 = call ptr %14(ptr noundef %12, i32 noundef 1, i32 noundef %conv12, i32 noundef %mul13) #4
  store ptr %call14, ptr %true_buffer, align 8
  %22 = load ptr, ptr %fake_buffer, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %22, i64 %idx.ext
  %23 = load i32, ptr %rgroup_height, align 4
  %mul15 = mul nsw i32 %23, 3
  %conv16 = sext i32 %mul15 to i64
  %mul17 = shl nsw i64 %conv16, 3
  %24 = load ptr, ptr %fake_buffer, align 8
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds ptr, ptr %24, i64 %idx.ext18
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr19, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %call14, i64 noundef %mul17, i64 noundef %25) #4
  br label %for.cond21

for.cond21:                                       ; preds = %for.body24, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.body24 ]
  store i32 %storemerge1, ptr %i, align 4
  %26 = load i32, ptr %rgroup_height, align 4
  %cmp22 = icmp slt i32 %storemerge1, %26
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %27 = load ptr, ptr %true_buffer, align 8
  %28 = load i32, ptr %rgroup_height, align 4
  %mul25 = shl nsw i32 %28, 1
  %29 = load i32, ptr %i, align 4
  %add = add nsw i32 %mul25, %29
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %27, i64 %idxprom
  %30 = load ptr, ptr %arrayidx, align 8
  %31 = load ptr, ptr %fake_buffer, align 8
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %31, i64 %idxprom26
  store ptr %30, ptr %arrayidx27, align 8
  %32 = load ptr, ptr %true_buffer, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %32, i64 %idxprom28
  %34 = load ptr, ptr %arrayidx29, align 8
  %35 = load ptr, ptr %fake_buffer, align 8
  %36 = load i32, ptr %rgroup_height, align 4
  %mul30 = shl nsw i32 %36, 2
  %37 = load i32, ptr %i, align 4
  %add31 = add nsw i32 %mul30, %37
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %35, i64 %idxprom32
  store ptr %34, ptr %arrayidx33, align 8
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  br label %for.cond21, !llvm.loop !12

for.end:                                          ; preds = %for.cond21
  %39 = load ptr, ptr %fake_buffer, align 8
  %40 = load i32, ptr %rgroup_height, align 4
  %idx.ext34 = sext i32 %40 to i64
  %add.ptr35 = getelementptr inbounds ptr, ptr %39, i64 %idx.ext34
  %41 = load ptr, ptr %prep, align 8
  %42 = load i32, ptr %ci, align 4
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds %struct.my_prep_controller, ptr %41, i64 0, i32 1, i64 %idxprom36
  store ptr %add.ptr35, ptr %arrayidx37, align 8
  %43 = load i32, ptr %rgroup_height, align 4
  %mul38 = mul nsw i32 %43, 5
  %44 = load ptr, ptr %fake_buffer, align 8
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds ptr, ptr %44, i64 %idx.ext39
  store ptr %add.ptr40, ptr %fake_buffer, align 8
  %45 = load i32, ptr %ci, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, ptr %ci, align 4
  %46 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 1
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
  %prep1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %1 = load ptr, ptr %prep1, align 8
  store ptr %1, ptr %prep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end47, %entry
  %2 = load ptr, ptr %in_row_ctr.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %in_rows_avail.addr, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %out_row_groups_avail.addr, align 4
  %cmp2 = icmp ult i32 %6, %7
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = load i32, ptr %in_rows_avail.addr, align 4
  %9 = load ptr, ptr %in_row_ctr.addr, align 8
  %10 = load i32, ptr %9, align 4
  %sub = sub i32 %8, %10
  store i32 %sub, ptr %inrows, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 39
  %12 = load i32, ptr %max_v_samp_factor, align 4
  %13 = load ptr, ptr %prep, align 8
  %next_buf_row = getelementptr inbounds %struct.my_prep_controller, ptr %13, i64 0, i32 3
  %14 = load i32, ptr %next_buf_row, align 4
  %sub3 = sub nsw i32 %12, %14
  store i32 %sub3, ptr %numrows, align 4
  %15 = load i32, ptr %inrows, align 4
  %cmp4 = icmp ult i32 %sub3, %15
  %16 = load i32, ptr %numrows, align 4
  %17 = load i32, ptr %inrows, align 4
  %cond = select i1 %cmp4, i32 %16, i32 %17
  store i32 %cond, ptr %numrows, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 56
  %19 = load ptr, ptr %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %color_convert, align 8
  %21 = load ptr, ptr %input_buf.addr, align 8
  %22 = load ptr, ptr %in_row_ctr.addr, align 8
  %23 = load i32, ptr %22, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  %24 = load ptr, ptr %prep, align 8
  %color_buf = getelementptr inbounds %struct.my_prep_controller, ptr %24, i64 0, i32 1
  %next_buf_row5 = getelementptr inbounds %struct.my_prep_controller, ptr %24, i64 0, i32 3
  %25 = load i32, ptr %next_buf_row5, align 4
  %26 = load i32, ptr %numrows, align 4
  call void %20(ptr noundef %18, ptr noundef %add.ptr, ptr noundef nonnull %color_buf, i32 noundef %25, i32 noundef %26) #4
  %27 = load ptr, ptr %in_row_ctr.addr, align 8
  %28 = load i32, ptr %27, align 4
  %add = add i32 %28, %26
  store i32 %add, ptr %27, align 4
  %29 = load ptr, ptr %prep, align 8
  %next_buf_row6 = getelementptr inbounds %struct.my_prep_controller, ptr %29, i64 0, i32 3
  %30 = load i32, ptr %next_buf_row6, align 4
  %add7 = add nsw i32 %30, %26
  store i32 %add7, ptr %next_buf_row6, align 4
  %31 = load i32, ptr %numrows, align 4
  %rows_to_go = getelementptr inbounds %struct.my_prep_controller, ptr %29, i64 0, i32 2
  %32 = load i32, ptr %rows_to_go, align 8
  %sub8 = sub i32 %32, %31
  store i32 %sub8, ptr %rows_to_go, align 8
  %33 = load ptr, ptr %prep, align 8
  %rows_to_go9 = getelementptr inbounds %struct.my_prep_controller, ptr %33, i64 0, i32 2
  %34 = load i32, ptr %rows_to_go9, align 8
  %cmp10 = icmp eq i32 %34, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %35 = load ptr, ptr %prep, align 8
  %next_buf_row11 = getelementptr inbounds %struct.my_prep_controller, ptr %35, i64 0, i32 3
  %36 = load i32, ptr %next_buf_row11, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i64 0, i32 39
  %38 = load i32, ptr %max_v_samp_factor12, align 4
  %cmp13 = icmp slt i32 %36, %38
  br i1 %cmp13, label %for.cond, label %if.end

for.cond:                                         ; preds = %land.lhs.true, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %land.lhs.true ]
  store i32 %storemerge1, ptr %ci, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 12
  %40 = load i32, ptr %num_components, align 4
  %cmp14 = icmp slt i32 %storemerge1, %40
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load ptr, ptr %prep, align 8
  %42 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds %struct.my_prep_controller, ptr %41, i64 0, i32 1, i64 %idxprom
  %43 = load ptr, ptr %arrayidx, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 6
  %45 = load i32, ptr %image_width, align 8
  %46 = load ptr, ptr %prep, align 8
  %next_buf_row16 = getelementptr inbounds %struct.my_prep_controller, ptr %46, i64 0, i32 3
  %47 = load i32, ptr %next_buf_row16, align 4
  %max_v_samp_factor17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 39
  %48 = load i32, ptr %max_v_samp_factor17, align 4
  call void @expand_bottom_edge(ptr noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %49, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i64 0, i32 39
  %51 = load i32, ptr %max_v_samp_factor18, align 4
  %52 = load ptr, ptr %prep, align 8
  %next_buf_row19 = getelementptr inbounds %struct.my_prep_controller, ptr %52, i64 0, i32 3
  store i32 %51, ptr %next_buf_row19, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %while.body
  %53 = load ptr, ptr %prep, align 8
  %next_buf_row20 = getelementptr inbounds %struct.my_prep_controller, ptr %53, i64 0, i32 3
  %54 = load i32, ptr %next_buf_row20, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 39
  %56 = load i32, ptr %max_v_samp_factor21, align 4
  %cmp22 = icmp eq i32 %54, %56
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end
  %57 = load ptr, ptr %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i64 0, i32 57
  %58 = load ptr, ptr %downsample, align 8
  %downsample24 = getelementptr inbounds %struct.jpeg_downsampler, ptr %58, i64 0, i32 1
  %59 = load ptr, ptr %downsample24, align 8
  %60 = load ptr, ptr %prep, align 8
  %color_buf25 = getelementptr inbounds %struct.my_prep_controller, ptr %60, i64 0, i32 1
  %61 = load ptr, ptr %output_buf.addr, align 8
  %62 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %63 = load i32, ptr %62, align 4
  call void %59(ptr noundef %57, ptr noundef nonnull %color_buf25, i32 noundef 0, ptr noundef %61, i32 noundef %63) #4
  %next_buf_row27 = getelementptr inbounds %struct.my_prep_controller, ptr %60, i64 0, i32 3
  store i32 0, ptr %next_buf_row27, align 4
  %64 = load i32, ptr %62, align 4
  %inc28 = add i32 %64, 1
  store i32 %inc28, ptr %62, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end
  %65 = load ptr, ptr %prep, align 8
  %rows_to_go30 = getelementptr inbounds %struct.my_prep_controller, ptr %65, i64 0, i32 2
  %66 = load i32, ptr %rows_to_go30, align 8
  %cmp31 = icmp eq i32 %66, 0
  br i1 %cmp31, label %land.lhs.true32, label %if.end47

land.lhs.true32:                                  ; preds = %if.end29
  %67 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %out_row_groups_avail.addr, align 4
  %cmp33 = icmp ult i32 %68, %69
  br i1 %cmp33, label %if.then34, label %if.end47

if.then34:                                        ; preds = %land.lhs.true32
  store i32 0, ptr %ci, align 4
  %70 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %70, i64 0, i32 14
  %71 = load ptr, ptr %comp_info, align 8
  br label %for.cond35

for.cond35:                                       ; preds = %for.body38, %if.then34
  %storemerge = phi ptr [ %71, %if.then34 ], [ %incdec.ptr, %for.body38 ]
  store ptr %storemerge, ptr %compptr, align 8
  %72 = load i32, ptr %ci, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %num_components36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i64 0, i32 12
  %74 = load i32, ptr %num_components36, align 4
  %cmp37 = icmp slt i32 %72, %74
  br i1 %cmp37, label %for.body38, label %for.end46

for.body38:                                       ; preds = %for.cond35
  %75 = load ptr, ptr %output_buf.addr, align 8
  %76 = load i32, ptr %ci, align 4
  %idxprom39 = sext i32 %76 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %75, i64 %idxprom39
  %77 = load ptr, ptr %arrayidx40, align 8
  %78 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i64 0, i32 7
  %79 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %79, 3
  %80 = load ptr, ptr %out_row_group_ctr.addr, align 8
  %81 = load i32, ptr %80, align 4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i64 0, i32 3
  %82 = load i32, ptr %v_samp_factor, align 4
  %mul41 = mul i32 %81, %82
  %83 = load i32, ptr %out_row_groups_avail.addr, align 4
  %84 = load ptr, ptr %compptr, align 8
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, ptr %84, i64 0, i32 3
  %85 = load i32, ptr %v_samp_factor42, align 4
  %mul43 = mul i32 %83, %85
  call void @expand_bottom_edge(ptr noundef %77, i32 noundef %mul, i32 noundef %mul41, i32 noundef %mul43)
  %86 = load i32, ptr %ci, align 4
  %inc45 = add nsw i32 %86, 1
  store i32 %inc45, ptr %ci, align 4
  %87 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i64 1
  br label %for.cond35, !llvm.loop !15

for.end46:                                        ; preds = %for.cond35
  %88 = load i32, ptr %out_row_groups_avail.addr, align 4
  %89 = load ptr, ptr %out_row_group_ctr.addr, align 8
  store i32 %88, ptr %89, align 4
  br label %while.end

if.end47:                                         ; preds = %land.lhs.true32, %if.end29
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond, %for.end46, %land.rhs
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %input_rows, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %row, align 4
  %0 = load i32, ptr %output_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %image_data.addr, align 8
  %2 = load i32, ptr %input_rows.addr, align 4
  %sub = add nsw i32 %2, -1
  %3 = load i32, ptr %row, align 4
  %4 = load i32, ptr %num_cols.addr, align 4
  call void @jcopy_sample_rows(ptr noundef %1, i32 noundef %sub, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef %4) #4
  %5 = load i32, ptr %row, align 4
  %inc = add nsw i32 %5, 1
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
