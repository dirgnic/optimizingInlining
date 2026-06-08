; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jcsample.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcsample.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x ptr] }

; Function Attrs: nounwind ssp uwtable
define void @jinit_downsampler(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %downsample = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %smoothok = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 1, ptr %smoothok, align 4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 104) #3
  store ptr %call, ptr %downsample, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 57
  store ptr %call, ptr %downsample1, align 8
  store ptr @start_pass_downsample, ptr %call, align 8
  %downsample3 = getelementptr inbounds %struct.jpeg_downsampler, ptr %call, i64 0, i32 1
  store ptr @sep_downsample, ptr %downsample3, align 8
  %3 = load ptr, ptr %downsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, ptr %3, i64 0, i32 2
  store i32 0, ptr %need_context_rows, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 26
  %5 = load i32, ptr %CCIR601_sampling, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 23, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %ci, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 14
  %11 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi ptr [ %11, %if.end ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %compptr, align 8
  %12 = load i32, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 12
  %14 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %h_samp_factor, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 38
  %18 = load i32, ptr %max_h_samp_factor, align 8
  %cmp6 = icmp eq i32 %16, %18
  br i1 %cmp6, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %for.body
  %19 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 3
  %20 = load i32, ptr %v_samp_factor, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i64 0, i32 39
  %22 = load i32, ptr %max_v_samp_factor, align 4
  %cmp7 = icmp eq i32 %20, %22
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %land.lhs.true
  %23 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 27
  %24 = load i32, ptr %smoothing_factor, align 8
  %tobool9.not = icmp eq i32 %24, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %25 = load ptr, ptr %downsample, align 8
  %26 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds %struct.my_downsampler, ptr %25, i64 0, i32 1, i64 %idxprom
  store ptr @fullsize_smooth_downsample, ptr %arrayidx, align 8
  %need_context_rows12 = getelementptr inbounds %struct.jpeg_downsampler, ptr %25, i64 0, i32 2
  store i32 1, ptr %need_context_rows12, align 8
  br label %for.inc

if.else:                                          ; preds = %if.then8
  %27 = load ptr, ptr %downsample, align 8
  %28 = load i32, ptr %ci, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds %struct.my_downsampler, ptr %27, i64 0, i32 1, i64 %idxprom14
  store ptr @fullsize_downsample, ptr %arrayidx15, align 8
  br label %for.inc

if.else17:                                        ; preds = %land.lhs.true, %for.body
  %29 = load ptr, ptr %compptr, align 8
  %h_samp_factor18 = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i64 0, i32 2
  %30 = load i32, ptr %h_samp_factor18, align 8
  %mul = shl nsw i32 %30, 1
  %31 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 38
  %32 = load i32, ptr %max_h_samp_factor19, align 8
  %cmp20 = icmp eq i32 %mul, %32
  br i1 %cmp20, label %land.lhs.true21, label %if.else29

land.lhs.true21:                                  ; preds = %if.else17
  %33 = load ptr, ptr %compptr, align 8
  %v_samp_factor22 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 3
  %34 = load i32, ptr %v_samp_factor22, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 39
  %36 = load i32, ptr %max_v_samp_factor23, align 4
  %cmp24 = icmp eq i32 %34, %36
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %land.lhs.true21
  store i32 0, ptr %smoothok, align 4
  %37 = load ptr, ptr %downsample, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds %struct.my_downsampler, ptr %37, i64 0, i32 1, i64 %idxprom27
  store ptr @h2v1_downsample, ptr %arrayidx28, align 8
  br label %for.inc

if.else29:                                        ; preds = %land.lhs.true21, %if.else17
  %39 = load ptr, ptr %compptr, align 8
  %h_samp_factor30 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 2
  %40 = load i32, ptr %h_samp_factor30, align 8
  %mul31 = shl nsw i32 %40, 1
  %41 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i64 0, i32 38
  %42 = load i32, ptr %max_h_samp_factor32, align 8
  %cmp33 = icmp eq i32 %mul31, %42
  br i1 %cmp33, label %land.lhs.true34, label %if.else53

land.lhs.true34:                                  ; preds = %if.else29
  %43 = load ptr, ptr %compptr, align 8
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 3
  %44 = load i32, ptr %v_samp_factor35, align 4
  %mul36 = shl nsw i32 %44, 1
  %45 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i64 0, i32 39
  %46 = load i32, ptr %max_v_samp_factor37, align 4
  %cmp38 = icmp eq i32 %mul36, %46
  br i1 %cmp38, label %if.then39, label %if.else53

if.then39:                                        ; preds = %land.lhs.true34
  %47 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 27
  %48 = load i32, ptr %smoothing_factor40, align 8
  %tobool41.not = icmp eq i32 %48, 0
  br i1 %tobool41.not, label %if.else48, label %if.then42

if.then42:                                        ; preds = %if.then39
  %49 = load ptr, ptr %downsample, align 8
  %50 = load i32, ptr %ci, align 4
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds %struct.my_downsampler, ptr %49, i64 0, i32 1, i64 %idxprom44
  store ptr @h2v2_smooth_downsample, ptr %arrayidx45, align 8
  %need_context_rows47 = getelementptr inbounds %struct.jpeg_downsampler, ptr %49, i64 0, i32 2
  store i32 1, ptr %need_context_rows47, align 8
  br label %for.inc

if.else48:                                        ; preds = %if.then39
  %51 = load ptr, ptr %downsample, align 8
  %52 = load i32, ptr %ci, align 4
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds %struct.my_downsampler, ptr %51, i64 0, i32 1, i64 %idxprom50
  store ptr @h2v2_downsample, ptr %arrayidx51, align 8
  br label %for.inc

if.else53:                                        ; preds = %land.lhs.true34, %if.else29
  %53 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i64 0, i32 38
  %54 = load i32, ptr %max_h_samp_factor54, align 8
  %55 = load ptr, ptr %compptr, align 8
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 0, i32 2
  %56 = load i32, ptr %h_samp_factor55, align 8
  %rem = srem i32 %54, %56
  %cmp56 = icmp eq i32 %rem, 0
  br i1 %cmp56, label %land.lhs.true57, label %if.else66

land.lhs.true57:                                  ; preds = %if.else53
  %57 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i64 0, i32 39
  %58 = load i32, ptr %max_v_samp_factor58, align 4
  %59 = load ptr, ptr %compptr, align 8
  %v_samp_factor59 = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i64 0, i32 3
  %60 = load i32, ptr %v_samp_factor59, align 4
  %rem60 = srem i32 %58, %60
  %cmp61 = icmp eq i32 %rem60, 0
  br i1 %cmp61, label %if.then62, label %if.else66

if.then62:                                        ; preds = %land.lhs.true57
  store i32 0, ptr %smoothok, align 4
  %61 = load ptr, ptr %downsample, align 8
  %62 = load i32, ptr %ci, align 4
  %idxprom64 = sext i32 %62 to i64
  %arrayidx65 = getelementptr inbounds %struct.my_downsampler, ptr %61, i64 0, i32 1, i64 %idxprom64
  store ptr @int_downsample, ptr %arrayidx65, align 8
  br label %for.inc

if.else66:                                        ; preds = %land.lhs.true57, %if.else53
  %63 = load ptr, ptr %cinfo.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 5
  store i32 37, ptr %msg_code68, align 8
  %65 = load ptr, ptr %63, align 8
  %66 = load ptr, ptr %65, align 8
  call void %66(ptr noundef nonnull %63) #3
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10, %if.else48, %if.then42, %if.else66, %if.then62, %if.then25
  %67 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %ci, align 4
  %68 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %69 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 27
  %70 = load i32, ptr %smoothing_factor75, align 8
  %tobool76.not = icmp ne i32 %70, 0
  %71 = load i32, ptr %smoothok, align 4
  %tobool78.not = icmp eq i32 %71, 0
  %or.cond = select i1 %tobool76.not, i1 %tobool78.not, i1 false
  br i1 %or.cond, label %if.then79, label %if.end83

if.then79:                                        ; preds = %for.end
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_code81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 98, ptr %msg_code81, align 8
  %74 = load ptr, ptr %72, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 1
  %75 = load ptr, ptr %emit_message, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void %75(ptr noundef %76, i32 noundef 0) #3
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_downsample(ptr noundef %cinfo) #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @sep_downsample(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %in_row_index, ptr noundef %output_buf, i32 noundef %out_row_group_index) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_index.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_group_index.addr = alloca i32, align 4
  %downsample = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %in_ptr = alloca ptr, align 8
  %out_ptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %in_row_index, ptr %in_row_index.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %out_row_group_index, ptr %out_row_group_index.addr, align 4
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 57
  %0 = load ptr, ptr %downsample1, align 8
  store ptr %0, ptr %downsample, align 8
  store i32 0, ptr %ci, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 14
  %2 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi ptr [ %2, %entry ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge, ptr %compptr, align 8
  %3 = load i32, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 12
  %5 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %input_buf.addr, align 8
  %7 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = load i32, ptr %in_row_index.addr, align 4
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %8, i64 %idx.ext
  store ptr %add.ptr, ptr %in_ptr, align 8
  %10 = load ptr, ptr %output_buf.addr, align 8
  %11 = load i32, ptr %ci, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %10, i64 %idxprom2
  %12 = load ptr, ptr %arrayidx3, align 8
  %13 = load i32, ptr %out_row_group_index.addr, align 4
  %14 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %13, %15
  %idx.ext4 = zext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds ptr, ptr %12, i64 %idx.ext4
  store ptr %add.ptr5, ptr %out_ptr, align 8
  %16 = load ptr, ptr %downsample, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds %struct.my_downsampler, ptr %16, i64 0, i32 1, i64 %idxprom6
  %18 = load ptr, ptr %arrayidx7, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %compptr, align 8
  %21 = load ptr, ptr %in_ptr, align 8
  %22 = load ptr, ptr %out_ptr, align 8
  call void %18(ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22) #3
  %23 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %ci, align 4
  %24 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fullsize_smooth_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  %outrow = alloca i32, align 4
  %colctr = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %above_ptr = alloca ptr, align 8
  %below_ptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %membersum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  %colsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 7
  %0 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %0, 3
  store i32 %mul, ptr %output_cols, align 4
  %add.ptr = getelementptr inbounds ptr, ptr %input_data, i64 -1
  %1 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 39
  %2 = load i32, ptr %max_v_samp_factor, align 4
  %add = add nsw i32 %2, 2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %image_width, align 8
  %4 = load i32, ptr %output_cols, align 4
  call void @expand_right_edge(ptr noundef nonnull %add.ptr, i32 noundef %add, i32 noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 27
  %6 = load i32, ptr %smoothing_factor, align 8
  %conv = sext i32 %6 to i64
  %mul1.neg = mul nsw i64 %conv, -512
  %sub = add nsw i64 %mul1.neg, 65536
  store i64 %sub, ptr %memberscale, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 27
  %8 = load i32, ptr %smoothing_factor2, align 8
  %mul3 = shl nsw i32 %8, 6
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, ptr %neighscale, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.end ]
  store i32 %storemerge, ptr %outrow, align 4
  %9 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %storemerge, %10
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %output_data.addr, align 8
  %12 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %outptr, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %14, i64 %idxprom6
  %15 = load ptr, ptr %arrayidx7, align 8
  store ptr %15, ptr %inptr, align 8
  %16 = load i32, ptr %outrow, align 4
  %sub8 = add nsw i32 %16, -1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %14, i64 %idxprom9
  %17 = load ptr, ptr %arrayidx10, align 8
  store ptr %17, ptr %above_ptr, align 8
  %18 = load ptr, ptr %input_data.addr, align 8
  %19 = load i32, ptr %outrow, align 4
  %add11 = add nsw i32 %19, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 %idxprom12
  %20 = load ptr, ptr %arrayidx13, align 8
  store ptr %20, ptr %below_ptr, align 8
  %21 = load ptr, ptr %above_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr, ptr %above_ptr, align 8
  %22 = load i8, ptr %21, align 1
  %conv14 = zext i8 %22 to i32
  %incdec.ptr15 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr15, ptr %below_ptr, align 8
  %23 = load i8, ptr %20, align 1
  %conv16 = zext i8 %23 to i32
  %add17 = add nuw nsw i32 %conv14, %conv16
  %24 = load ptr, ptr %inptr, align 8
  %25 = load i8, ptr %24, align 1
  %conv18 = zext i8 %25 to i32
  %add19 = add nuw nsw i32 %add17, %conv18
  store i32 %add19, ptr %colsum, align 4
  %incdec.ptr20 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr20, ptr %inptr, align 8
  %conv22 = zext i8 %25 to i64
  store i64 %conv22, ptr %membersum, align 8
  %26 = load ptr, ptr %above_ptr, align 8
  %27 = load i8, ptr %26, align 1
  %conv23 = zext i8 %27 to i32
  %28 = load ptr, ptr %below_ptr, align 8
  %29 = load i8, ptr %28, align 1
  %conv24 = zext i8 %29 to i32
  %add25 = add nuw nsw i32 %conv23, %conv24
  %30 = load ptr, ptr %inptr, align 8
  %31 = load i8, ptr %30, align 1
  %conv26 = zext i8 %31 to i32
  %add27 = add nuw nsw i32 %add25, %conv26
  store i32 %add27, ptr %nextcolsum, align 4
  %32 = load i32, ptr %colsum, align 4
  %conv28 = sext i32 %32 to i64
  %conv29 = sext i32 %32 to i64
  %33 = load i64, ptr %membersum, align 8
  %sub30 = sub nsw i64 %conv29, %33
  %add31 = add nsw i64 %sub30, %conv28
  %34 = load i32, ptr %nextcolsum, align 4
  %conv32 = sext i32 %34 to i64
  %add33 = add nsw i64 %add31, %conv32
  %35 = load i64, ptr %memberscale, align 8
  %mul34 = mul nsw i64 %33, %35
  %36 = load i64, ptr %neighscale, align 8
  %mul35 = mul nsw i64 %add33, %36
  %add36 = add nsw i64 %mul34, %mul35
  store i64 %add36, ptr %membersum, align 8
  %add37 = add nsw i64 %add36, 32768
  %37 = lshr i64 %add37, 16
  %conv38 = trunc i64 %37 to i8
  %38 = load ptr, ptr %outptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr39, ptr %outptr, align 8
  store i8 %conv38, ptr %38, align 1
  %39 = load i32, ptr %colsum, align 4
  store i32 %39, ptr %lastcolsum, align 4
  %40 = load i32, ptr %nextcolsum, align 4
  store i32 %40, ptr %colsum, align 4
  %41 = load i32, ptr %output_cols, align 4
  %sub40 = add i32 %41, -2
  br label %for.cond41

for.cond41:                                       ; preds = %for.body44, %for.body
  %storemerge1 = phi i32 [ %sub40, %for.body ], [ %dec, %for.body44 ]
  store i32 %storemerge1, ptr %colctr, align 4
  %cmp42.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp42.not, label %for.end, label %for.body44

for.body44:                                       ; preds = %for.cond41
  %42 = load ptr, ptr %inptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %incdec.ptr45, ptr %inptr, align 8
  %43 = load i8, ptr %42, align 1
  %conv47 = zext i8 %43 to i64
  store i64 %conv47, ptr %membersum, align 8
  %44 = load ptr, ptr %above_ptr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr48, ptr %above_ptr, align 8
  %45 = load ptr, ptr %below_ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr49, ptr %below_ptr, align 8
  %46 = load i8, ptr %incdec.ptr48, align 1
  %conv50 = zext i8 %46 to i32
  %47 = load i8, ptr %incdec.ptr49, align 1
  %conv51 = zext i8 %47 to i32
  %add52 = add nuw nsw i32 %conv50, %conv51
  %48 = load ptr, ptr %inptr, align 8
  %49 = load i8, ptr %48, align 1
  %conv53 = zext i8 %49 to i32
  %add54 = add nuw nsw i32 %add52, %conv53
  store i32 %add54, ptr %nextcolsum, align 4
  %50 = load i32, ptr %lastcolsum, align 4
  %conv55 = sext i32 %50 to i64
  %51 = load i32, ptr %colsum, align 4
  %conv56 = sext i32 %51 to i64
  %52 = load i64, ptr %membersum, align 8
  %sub57 = sub nsw i64 %conv56, %52
  %add58 = add nsw i64 %sub57, %conv55
  %53 = load i32, ptr %nextcolsum, align 4
  %conv59 = sext i32 %53 to i64
  %add60 = add nsw i64 %add58, %conv59
  %54 = load i64, ptr %memberscale, align 8
  %mul61 = mul nsw i64 %52, %54
  %55 = load i64, ptr %neighscale, align 8
  %mul62 = mul nsw i64 %add60, %55
  %add63 = add nsw i64 %mul61, %mul62
  store i64 %add63, ptr %membersum, align 8
  %add64 = add nsw i64 %add63, 32768
  %56 = lshr i64 %add64, 16
  %conv66 = trunc i64 %56 to i8
  %57 = load ptr, ptr %outptr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr67, ptr %outptr, align 8
  store i8 %conv66, ptr %57, align 1
  %58 = load i32, ptr %colsum, align 4
  store i32 %58, ptr %lastcolsum, align 4
  %59 = load i32, ptr %nextcolsum, align 4
  store i32 %59, ptr %colsum, align 4
  %60 = load i32, ptr %colctr, align 4
  %dec = add i32 %60, -1
  br label %for.cond41, !llvm.loop !9

for.end:                                          ; preds = %for.cond41
  %61 = load ptr, ptr %inptr, align 8
  %62 = load i8, ptr %61, align 1
  %conv69 = zext i8 %62 to i64
  store i64 %conv69, ptr %membersum, align 8
  %63 = load i32, ptr %lastcolsum, align 4
  %conv70 = sext i32 %63 to i64
  %64 = load i32, ptr %colsum, align 4
  %conv71 = sext i32 %64 to i64
  %sub72 = sub nsw i64 %conv71, %conv69
  %add73 = add nsw i64 %sub72, %conv70
  %conv74 = sext i32 %64 to i64
  %add75 = add nsw i64 %add73, %conv74
  %65 = load i64, ptr %membersum, align 8
  %66 = load i64, ptr %memberscale, align 8
  %mul76 = mul nsw i64 %65, %66
  %67 = load i64, ptr %neighscale, align 8
  %mul77 = mul nsw i64 %add75, %67
  %add78 = add nsw i64 %mul76, %mul77
  store i64 %add78, ptr %membersum, align 8
  %add79 = add nsw i64 %add78, 32768
  %68 = lshr i64 %add79, 16
  %conv81 = trunc i64 %68 to i8
  %69 = load ptr, ptr %outptr, align 8
  store i8 %conv81, ptr %69, align 1
  %70 = load i32, ptr %outrow, align 4
  %inc = add nsw i32 %70, 1
  br label %for.cond, !llvm.loop !10

for.end83:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fullsize_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 39
  %0 = load i32, ptr %max_v_samp_factor, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %1 = load i32, ptr %image_width, align 8
  call void @jcopy_sample_rows(ptr noundef %input_data, i32 noundef 0, ptr noundef %output_data, i32 noundef 0, i32 noundef %0, i32 noundef %1) #3
  %2 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 39
  %3 = load i32, ptr %max_v_samp_factor1, align 4
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 6
  %4 = load i32, ptr %image_width2, align 8
  %5 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 0, i32 7
  %6 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %6, 3
  call void @expand_right_edge(ptr noundef %output_data, i32 noundef %3, i32 noundef %4, i32 noundef %mul)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v1_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  %outrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %bias = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 7
  %0 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %0, 3
  store i32 %mul, ptr %output_cols, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 39
  %2 = load i32, ptr %max_v_samp_factor, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %image_width, align 8
  %mul1 = shl i32 %0, 4
  call void @expand_right_edge(ptr noundef %input_data, i32 noundef %2, i32 noundef %3, i32 noundef %mul1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  store i32 %storemerge, ptr %outrow, align 4
  %4 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %output_data.addr, align 8
  %7 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %outptr, align 8
  %9 = load ptr, ptr %input_data.addr, align 8
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %idxprom2
  %10 = load ptr, ptr %arrayidx3, align 8
  store ptr %10, ptr %inptr, align 8
  store i32 0, ptr %bias, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.body6 ]
  store i32 %storemerge1, ptr %outcol, align 4
  %11 = load i32, ptr %output_cols, align 4
  %cmp5 = icmp ult i32 %storemerge1, %11
  br i1 %cmp5, label %for.body6, label %for.inc11

for.body6:                                        ; preds = %for.cond4
  %12 = load ptr, ptr %inptr, align 8
  %13 = load i8, ptr %12, align 1
  %conv = zext i8 %13 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %add = add nuw nsw i32 %conv, %conv8
  %15 = load i32, ptr %bias, align 4
  %add9 = add nsw i32 %add, %15
  %16 = lshr i32 %add9, 1
  %conv10 = trunc i32 %16 to i8
  %17 = load ptr, ptr %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %outptr, align 8
  store i8 %conv10, ptr %17, align 1
  %18 = load i32, ptr %bias, align 4
  %xor = xor i32 %18, 1
  store i32 %xor, ptr %bias, align 4
  %19 = load ptr, ptr %inptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 2
  store ptr %add.ptr, ptr %inptr, align 8
  %20 = load i32, ptr %outcol, align 4
  %inc = add i32 %20, 1
  br label %for.cond4, !llvm.loop !11

for.inc11:                                        ; preds = %for.cond4
  %21 = load i32, ptr %outrow, align 4
  %inc12 = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_smooth_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %colctr = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %above_ptr = alloca ptr, align 8
  %below_ptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %membersum = alloca i64, align 8
  %neighsum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 7
  %0 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %0, 3
  store i32 %mul, ptr %output_cols, align 4
  %add.ptr = getelementptr inbounds ptr, ptr %input_data, i64 -1
  %1 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 39
  %2 = load i32, ptr %max_v_samp_factor, align 4
  %add = add nsw i32 %2, 2
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %image_width, align 8
  %4 = load i32, ptr %output_cols, align 4
  %mul1 = shl i32 %4, 1
  call void @expand_right_edge(ptr noundef nonnull %add.ptr, i32 noundef %add, i32 noundef %3, i32 noundef %mul1)
  %5 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 27
  %6 = load i32, ptr %smoothing_factor, align 8
  %mul2.neg = mul i32 %6, -80
  %sub = add i32 %mul2.neg, 16384
  %conv = sext i32 %sub to i64
  store i64 %conv, ptr %memberscale, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 27
  %8 = load i32, ptr %smoothing_factor3, align 8
  %mul4 = shl nsw i32 %8, 4
  %conv5 = sext i32 %mul4 to i64
  store i64 %conv5, ptr %neighscale, align 8
  store i32 0, ptr %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.end ]
  store i32 %storemerge, ptr %outrow, align 4
  %9 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %storemerge, %10
  br i1 %cmp, label %for.body, label %for.end185

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %output_data.addr, align 8
  %12 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %outptr, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load i32, ptr %inrow, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %14, i64 %idxprom7
  %16 = load ptr, ptr %arrayidx8, align 8
  store ptr %16, ptr %inptr0, align 8
  %add9 = add nsw i32 %15, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %14, i64 %idxprom10
  %17 = load ptr, ptr %arrayidx11, align 8
  store ptr %17, ptr %inptr1, align 8
  %18 = load ptr, ptr %input_data.addr, align 8
  %19 = load i32, ptr %inrow, align 4
  %sub12 = add nsw i32 %19, -1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %18, i64 %idxprom13
  %20 = load ptr, ptr %arrayidx14, align 8
  store ptr %20, ptr %above_ptr, align 8
  %21 = load ptr, ptr %input_data.addr, align 8
  %22 = load i32, ptr %inrow, align 4
  %add15 = add nsw i32 %22, 2
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %21, i64 %idxprom16
  %23 = load ptr, ptr %arrayidx17, align 8
  store ptr %23, ptr %below_ptr, align 8
  %24 = load ptr, ptr %inptr0, align 8
  %25 = load i8, ptr %24, align 1
  %conv18 = zext i8 %25 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %26 to i64
  %add21 = add nuw nsw i64 %conv18, %conv20
  %27 = load ptr, ptr %inptr1, align 8
  %28 = load i8, ptr %27, align 1
  %conv22 = zext i8 %28 to i64
  %add23 = add nuw nsw i64 %add21, %conv22
  %arrayidx24 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %29 to i64
  %add26 = add nuw nsw i64 %add23, %conv25
  store i64 %add26, ptr %membersum, align 8
  %30 = load ptr, ptr %above_ptr, align 8
  %31 = load i8, ptr %30, align 1
  %conv28 = zext i8 %31 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %32 to i64
  %add31 = add nuw nsw i64 %conv28, %conv30
  %33 = load ptr, ptr %below_ptr, align 8
  %34 = load i8, ptr %33, align 1
  %conv32 = zext i8 %34 to i64
  %add33 = add nuw nsw i64 %add31, %conv32
  %arrayidx34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %35 to i64
  %add36 = add nuw nsw i64 %add33, %conv35
  %36 = load ptr, ptr %inptr0, align 8
  %37 = load i8, ptr %36, align 1
  %conv37 = zext i8 %37 to i64
  %add38 = add nuw nsw i64 %add36, %conv37
  %arrayidx39 = getelementptr inbounds i8, ptr %36, i64 2
  %38 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %38 to i64
  %add41 = add nuw nsw i64 %add38, %conv40
  %39 = load ptr, ptr %inptr1, align 8
  %40 = load i8, ptr %39, align 1
  %conv42 = zext i8 %40 to i64
  %add43 = add nuw nsw i64 %add41, %conv42
  %arrayidx44 = getelementptr inbounds i8, ptr %39, i64 2
  %41 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %41 to i64
  %add46 = add i64 %add43, %conv45
  %sext = shl i64 %add46, 32
  %add48 = ashr exact i64 %sext, 31
  store i64 %add48, ptr %neighsum, align 8
  %42 = load ptr, ptr %above_ptr, align 8
  %43 = load i8, ptr %42, align 1
  %conv49 = zext i8 %43 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %42, i64 2
  %44 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %44 to i64
  %add52 = add nuw nsw i64 %conv49, %conv51
  %45 = load ptr, ptr %below_ptr, align 8
  %46 = load i8, ptr %45, align 1
  %conv53 = zext i8 %46 to i64
  %add54 = add nuw nsw i64 %add52, %conv53
  %arrayidx55 = getelementptr inbounds i8, ptr %45, i64 2
  %47 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %47 to i64
  %add57 = add nuw nsw i64 %add54, %conv56
  %48 = load i64, ptr %neighsum, align 8
  %add59 = add nsw i64 %48, %add57
  store i64 %add59, ptr %neighsum, align 8
  %49 = load i64, ptr %membersum, align 8
  %50 = load i64, ptr %memberscale, align 8
  %mul60 = mul nsw i64 %49, %50
  %51 = load i64, ptr %neighscale, align 8
  %mul61 = mul nsw i64 %add59, %51
  %add62 = add nsw i64 %mul60, %mul61
  store i64 %add62, ptr %membersum, align 8
  %add63 = add nsw i64 %add62, 32768
  %52 = lshr i64 %add63, 16
  %conv64 = trunc i64 %52 to i8
  %53 = load ptr, ptr %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr, ptr %outptr, align 8
  store i8 %conv64, ptr %53, align 1
  %54 = load ptr, ptr %inptr0, align 8
  %add.ptr65 = getelementptr inbounds i8, ptr %54, i64 2
  store ptr %add.ptr65, ptr %inptr0, align 8
  %55 = load ptr, ptr %inptr1, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %55, i64 2
  store ptr %add.ptr66, ptr %inptr1, align 8
  %56 = load ptr, ptr %above_ptr, align 8
  %add.ptr67 = getelementptr inbounds i8, ptr %56, i64 2
  store ptr %add.ptr67, ptr %above_ptr, align 8
  %57 = load ptr, ptr %below_ptr, align 8
  %add.ptr68 = getelementptr inbounds i8, ptr %57, i64 2
  store ptr %add.ptr68, ptr %below_ptr, align 8
  %58 = load i32, ptr %output_cols, align 4
  %sub69 = add i32 %58, -2
  br label %for.cond70

for.cond70:                                       ; preds = %for.body73, %for.body
  %storemerge1 = phi i32 [ %sub69, %for.body ], [ %dec, %for.body73 ]
  store i32 %storemerge1, ptr %colctr, align 4
  %cmp71.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp71.not, label %for.end, label %for.body73

for.body73:                                       ; preds = %for.cond70
  %59 = load ptr, ptr %inptr0, align 8
  %60 = load i8, ptr %59, align 1
  %conv74 = zext i8 %60 to i64
  %arrayidx75 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %61 to i64
  %add77 = add nuw nsw i64 %conv74, %conv76
  %62 = load ptr, ptr %inptr1, align 8
  %63 = load i8, ptr %62, align 1
  %conv78 = zext i8 %63 to i64
  %add79 = add nuw nsw i64 %add77, %conv78
  %arrayidx80 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %64 to i64
  %add82 = add nuw nsw i64 %add79, %conv81
  store i64 %add82, ptr %membersum, align 8
  %65 = load ptr, ptr %above_ptr, align 8
  %66 = load i8, ptr %65, align 1
  %conv84 = zext i8 %66 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %67 to i64
  %add87 = add nuw nsw i64 %conv84, %conv86
  %68 = load ptr, ptr %below_ptr, align 8
  %69 = load i8, ptr %68, align 1
  %conv88 = zext i8 %69 to i64
  %add89 = add nuw nsw i64 %add87, %conv88
  %arrayidx90 = getelementptr inbounds i8, ptr %68, i64 1
  %70 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %70 to i64
  %add92 = add nuw nsw i64 %add89, %conv91
  %71 = load ptr, ptr %inptr0, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %71, i64 -1
  %72 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %72 to i64
  %add95 = add nuw nsw i64 %add92, %conv94
  %arrayidx96 = getelementptr inbounds i8, ptr %71, i64 2
  %73 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %73 to i64
  %add98 = add nuw nsw i64 %add95, %conv97
  %74 = load ptr, ptr %inptr1, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %74, i64 -1
  %75 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %75 to i64
  %add101 = add nuw nsw i64 %add98, %conv100
  %arrayidx102 = getelementptr inbounds i8, ptr %74, i64 2
  %76 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %76 to i64
  %add104 = add i64 %add101, %conv103
  %sext3 = shl i64 %add104, 32
  %add106 = ashr exact i64 %sext3, 31
  store i64 %add106, ptr %neighsum, align 8
  %77 = load ptr, ptr %above_ptr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %77, i64 -1
  %78 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %78 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %77, i64 2
  %79 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %79 to i64
  %add111 = add nuw nsw i64 %conv108, %conv110
  %80 = load ptr, ptr %below_ptr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %80, i64 -1
  %81 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %81 to i64
  %add114 = add nuw nsw i64 %add111, %conv113
  %arrayidx115 = getelementptr inbounds i8, ptr %80, i64 2
  %82 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %82 to i64
  %add117 = add nuw nsw i64 %add114, %conv116
  %83 = load i64, ptr %neighsum, align 8
  %add119 = add nsw i64 %83, %add117
  store i64 %add119, ptr %neighsum, align 8
  %84 = load i64, ptr %membersum, align 8
  %85 = load i64, ptr %memberscale, align 8
  %mul120 = mul nsw i64 %84, %85
  %86 = load i64, ptr %neighscale, align 8
  %mul121 = mul nsw i64 %add119, %86
  %add122 = add nsw i64 %mul120, %mul121
  store i64 %add122, ptr %membersum, align 8
  %add123 = add nsw i64 %add122, 32768
  %87 = lshr i64 %add123, 16
  %conv125 = trunc i64 %87 to i8
  %88 = load ptr, ptr %outptr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %incdec.ptr126, ptr %outptr, align 8
  store i8 %conv125, ptr %88, align 1
  %89 = load ptr, ptr %inptr0, align 8
  %add.ptr127 = getelementptr inbounds i8, ptr %89, i64 2
  store ptr %add.ptr127, ptr %inptr0, align 8
  %90 = load ptr, ptr %inptr1, align 8
  %add.ptr128 = getelementptr inbounds i8, ptr %90, i64 2
  store ptr %add.ptr128, ptr %inptr1, align 8
  %91 = load ptr, ptr %above_ptr, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %91, i64 2
  store ptr %add.ptr129, ptr %above_ptr, align 8
  %92 = load ptr, ptr %below_ptr, align 8
  %add.ptr130 = getelementptr inbounds i8, ptr %92, i64 2
  store ptr %add.ptr130, ptr %below_ptr, align 8
  %93 = load i32, ptr %colctr, align 4
  %dec = add i32 %93, -1
  br label %for.cond70, !llvm.loop !13

for.end:                                          ; preds = %for.cond70
  %94 = load ptr, ptr %inptr0, align 8
  %95 = load i8, ptr %94, align 1
  %conv131 = zext i8 %95 to i64
  %arrayidx132 = getelementptr inbounds i8, ptr %94, i64 1
  %96 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %96 to i64
  %add134 = add nuw nsw i64 %conv131, %conv133
  %97 = load ptr, ptr %inptr1, align 8
  %98 = load i8, ptr %97, align 1
  %conv135 = zext i8 %98 to i64
  %add136 = add nuw nsw i64 %add134, %conv135
  %arrayidx137 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %99 to i64
  %add139 = add nuw nsw i64 %add136, %conv138
  store i64 %add139, ptr %membersum, align 8
  %100 = load ptr, ptr %above_ptr, align 8
  %101 = load i8, ptr %100, align 1
  %conv141 = zext i8 %101 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %102 to i64
  %add144 = add nuw nsw i64 %conv141, %conv143
  %103 = load ptr, ptr %below_ptr, align 8
  %104 = load i8, ptr %103, align 1
  %conv145 = zext i8 %104 to i64
  %add146 = add nuw nsw i64 %add144, %conv145
  %arrayidx147 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %105 to i64
  %add149 = add nuw nsw i64 %add146, %conv148
  %106 = load ptr, ptr %inptr0, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %106, i64 -1
  %107 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %107 to i64
  %add152 = add nuw nsw i64 %add149, %conv151
  %arrayidx153 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %108 to i64
  %add155 = add nuw nsw i64 %add152, %conv154
  %109 = load ptr, ptr %inptr1, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %109, i64 -1
  %110 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %110 to i64
  %add158 = add nuw nsw i64 %add155, %conv157
  %arrayidx159 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %111 to i64
  %add161 = add i64 %add158, %conv160
  %sext2 = shl i64 %add161, 32
  %add163 = ashr exact i64 %sext2, 31
  store i64 %add163, ptr %neighsum, align 8
  %112 = load ptr, ptr %above_ptr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %112, i64 -1
  %113 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %113 to i64
  %arrayidx166 = getelementptr inbounds i8, ptr %112, i64 1
  %114 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %114 to i64
  %add168 = add nuw nsw i64 %conv165, %conv167
  %115 = load ptr, ptr %below_ptr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %115, i64 -1
  %116 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %116 to i64
  %add171 = add nuw nsw i64 %add168, %conv170
  %arrayidx172 = getelementptr inbounds i8, ptr %115, i64 1
  %117 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %117 to i64
  %add174 = add nuw nsw i64 %add171, %conv173
  %118 = load i64, ptr %neighsum, align 8
  %add176 = add nsw i64 %118, %add174
  store i64 %add176, ptr %neighsum, align 8
  %119 = load i64, ptr %membersum, align 8
  %120 = load i64, ptr %memberscale, align 8
  %mul177 = mul nsw i64 %119, %120
  %121 = load i64, ptr %neighscale, align 8
  %mul178 = mul nsw i64 %add176, %121
  %add179 = add nsw i64 %mul177, %mul178
  store i64 %add179, ptr %membersum, align 8
  %add180 = add nsw i64 %add179, 32768
  %122 = lshr i64 %add180, 16
  %conv182 = trunc i64 %122 to i8
  %123 = load ptr, ptr %outptr, align 8
  store i8 %conv182, ptr %123, align 1
  %124 = load i32, ptr %inrow, align 4
  %add183 = add nsw i32 %124, 2
  store i32 %add183, ptr %inrow, align 4
  %125 = load i32, ptr %outrow, align 4
  %inc = add nsw i32 %125, 1
  br label %for.cond, !llvm.loop !14

for.end185:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %bias = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 7
  %0 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %0, 3
  store i32 %mul, ptr %output_cols, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 39
  %2 = load i32, ptr %max_v_samp_factor, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %image_width, align 8
  %mul1 = shl i32 %0, 4
  call void @expand_right_edge(ptr noundef %input_data, i32 noundef %2, i32 noundef %3, i32 noundef %mul1)
  store i32 0, ptr %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc22, %for.end ]
  store i32 %storemerge, ptr %outrow, align 4
  %4 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %output_data.addr, align 8
  %7 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %outptr, align 8
  %9 = load ptr, ptr %input_data.addr, align 8
  %10 = load i32, ptr %inrow, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %idxprom2
  %11 = load ptr, ptr %arrayidx3, align 8
  store ptr %11, ptr %inptr0, align 8
  %add = add nsw i32 %10, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 %idxprom4
  %12 = load ptr, ptr %arrayidx5, align 8
  store ptr %12, ptr %inptr1, align 8
  store i32 1, ptr %bias, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.body8 ]
  store i32 %storemerge1, ptr %outcol, align 4
  %13 = load i32, ptr %output_cols, align 4
  %cmp7 = icmp ult i32 %storemerge1, %13
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %14 = load ptr, ptr %inptr0, align 8
  %15 = load i8, ptr %14, align 1
  %conv = zext i8 %15 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %16 to i32
  %add11 = add nuw nsw i32 %conv, %conv10
  %17 = load ptr, ptr %inptr1, align 8
  %18 = load i8, ptr %17, align 1
  %conv12 = zext i8 %18 to i32
  %add13 = add nuw nsw i32 %add11, %conv12
  %arrayidx14 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %add16 = add nuw nsw i32 %add13, %conv15
  %20 = load i32, ptr %bias, align 4
  %add17 = add nsw i32 %add16, %20
  %21 = lshr i32 %add17, 2
  %conv18 = trunc i32 %21 to i8
  %22 = load ptr, ptr %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %outptr, align 8
  store i8 %conv18, ptr %22, align 1
  %23 = load i32, ptr %bias, align 4
  %xor = xor i32 %23, 3
  store i32 %xor, ptr %bias, align 4
  %24 = load ptr, ptr %inptr0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 2
  store ptr %add.ptr, ptr %inptr0, align 8
  %25 = load ptr, ptr %inptr1, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %25, i64 2
  store ptr %add.ptr19, ptr %inptr1, align 8
  %26 = load i32, ptr %outcol, align 4
  %inc = add i32 %26, 1
  br label %for.cond6, !llvm.loop !15

for.end:                                          ; preds = %for.cond6
  %27 = load i32, ptr %inrow, align 4
  %add20 = add nsw i32 %27, 2
  store i32 %add20, ptr %inrow, align 4
  %28 = load i32, ptr %outrow, align 4
  %inc22 = add nsw i32 %28, 1
  br label %for.cond, !llvm.loop !16

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @int_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %image_data.addr.i = alloca ptr, align 8
  %num_rows.addr.i = alloca i32, align 4
  %input_cols.addr.i = alloca i32, align 4
  %ptr.i = alloca ptr, align 8
  %pixval.i = alloca i8, align 1
  %count.i = alloca i32, align 4
  %row.i = alloca i32, align 4
  %numcols.i = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %h_expand = alloca i32, align 4
  %v_expand = alloca i32, align 4
  %numpix = alloca i32, align 4
  %numpix2 = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  %outcol = alloca i32, align 4
  %outcol_h = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %outvalue = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %compptr, i64 0, i32 7
  %0 = load i32, ptr %width_in_blocks, align 4
  %mul = shl i32 %0, 3
  store i32 %mul, ptr %output_cols, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 38
  %2 = load i32, ptr %max_h_samp_factor, align 8
  %3 = load ptr, ptr %compptr.addr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %h_samp_factor, align 8
  %div = sdiv i32 %2, %4
  store i32 %div, ptr %h_expand, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 39
  %6 = load i32, ptr %max_v_samp_factor, align 4
  %7 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %v_samp_factor, align 4
  %div1 = sdiv i32 %6, %8
  store i32 %div1, ptr %v_expand, align 4
  %9 = load i32, ptr %h_expand, align 4
  %mul2 = mul nsw i32 %9, %div1
  store i32 %mul2, ptr %numpix, align 4
  %div3 = sdiv i32 %mul2, 2
  store i32 %div3, ptr %numpix2, align 4
  %10 = load ptr, ptr %input_data.addr, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 39
  %12 = load i32, ptr %max_v_samp_factor4, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %image_width, align 8
  %14 = load i32, ptr %output_cols, align 4
  %15 = load i32, ptr %h_expand, align 4
  %mul5 = mul i32 %14, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %image_data.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_rows.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_cols.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pixval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %row.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numcols.i)
  store ptr %10, ptr %image_data.addr.i, align 8
  store i32 %12, ptr %num_rows.addr.i, align 4
  store i32 %13, ptr %input_cols.addr.i, align 4
  %sub.i = sub i32 %mul5, %13
  store i32 %sub.i, ptr %numcols.i, align 4
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %for.cond.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcsample_0.exit

for.cond.i:                                       ; preds = %entry, %for.end.i
  %storemerge4 = phi i32 [ %inc.i, %for.end.i ], [ 0, %entry ]
  store i32 %storemerge4, ptr %row.i, align 4
  %16 = load i32, ptr %num_rows.addr.i, align 4
  %cmp1.i = icmp slt i32 %storemerge4, %16
  br i1 %cmp1.i, label %for.body.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcsample_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %17 = load ptr, ptr %image_data.addr.i, align 8
  %18 = load i32, ptr %row.i, align 4
  %idxprom.i = sext i32 %18 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %17, i64 %idxprom.i
  %19 = load ptr, ptr %arrayidx.i, align 8
  %20 = load i32, ptr %input_cols.addr.i, align 4
  %idx.ext.i = zext i32 %20 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %ptr.i, align 8
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1
  %21 = load i8, ptr %arrayidx2.i, align 1
  store i8 %21, ptr %pixval.i, align 1
  %22 = load i32, ptr %numcols.i, align 4
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %for.body5.i, %for.body.i
  %storemerge5 = phi i32 [ %22, %for.body.i ], [ %dec.i, %for.body5.i ]
  store i32 %storemerge5, ptr %count.i, align 4
  %cmp4.i = icmp sgt i32 %storemerge5, 0
  br i1 %cmp4.i, label %for.body5.i, label %for.end.i

for.body5.i:                                      ; preds = %for.cond3.i
  %23 = load i8, ptr %pixval.i, align 1
  %24 = load ptr, ptr %ptr.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr.i, ptr %ptr.i, align 8
  store i8 %23, ptr %24, align 1
  %25 = load i32, ptr %count.i, align 4
  %dec.i = add nsw i32 %25, -1
  br label %for.cond3.i, !llvm.loop !17

for.end.i:                                        ; preds = %for.cond3.i
  %26 = load i32, ptr %row.i, align 4
  %inc.i = add nsw i32 %26, 1
  br label %for.cond.i, !llvm.loop !18

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcsample_0.exit: ; preds = %for.cond.i, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %image_data.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_rows.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_cols.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pixval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numcols.i)
  store i32 0, ptr %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end32, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcsample_0.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcsample_0.exit ], [ %inc35, %for.end32 ]
  store i32 %storemerge, ptr %outrow, align 4
  %27 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 0, i32 3
  %28 = load i32, ptr %v_samp_factor6, align 4
  %cmp = icmp slt i32 %storemerge, %28
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %output_data.addr, align 8
  %30 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %29, i64 %idxprom
  %31 = load ptr, ptr %arrayidx, align 8
  store ptr %31, ptr %outptr, align 8
  store i32 0, ptr %outcol, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.end22, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %add31, %for.end22 ]
  store i32 %storemerge1, ptr %outcol_h, align 4
  %32 = load i32, ptr %outcol, align 4
  %33 = load i32, ptr %output_cols, align 4
  %cmp8 = icmp ult i32 %32, %33
  br i1 %cmp8, label %for.body9, label %for.end32

for.body9:                                        ; preds = %for.cond7
  store i64 0, ptr %outvalue, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc20, %for.body9
  %storemerge2 = phi i32 [ 0, %for.body9 ], [ %inc21, %for.inc20 ]
  store i32 %storemerge2, ptr %v, align 4
  %34 = load i32, ptr %v_expand, align 4
  %cmp11 = icmp slt i32 %storemerge2, %34
  br i1 %cmp11, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond10
  %35 = load ptr, ptr %input_data.addr, align 8
  %36 = load i32, ptr %inrow, align 4
  %37 = load i32, ptr %v, align 4
  %add = add nsw i32 %36, %37
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %35, i64 %idxprom13
  %38 = load ptr, ptr %arrayidx14, align 8
  %39 = load i32, ptr %outcol_h, align 4
  %idx.ext = zext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 %idx.ext
  store ptr %add.ptr, ptr %inptr, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.body17, %for.body12
  %storemerge3 = phi i32 [ 0, %for.body12 ], [ %inc, %for.body17 ]
  store i32 %storemerge3, ptr %h, align 4
  %40 = load i32, ptr %h_expand, align 4
  %cmp16 = icmp slt i32 %storemerge3, %40
  br i1 %cmp16, label %for.body17, label %for.inc20

for.body17:                                       ; preds = %for.cond15
  %41 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %42 = load i8, ptr %41, align 1
  %conv18 = zext i8 %42 to i64
  %43 = load i64, ptr %outvalue, align 8
  %add19 = add nsw i64 %43, %conv18
  store i64 %add19, ptr %outvalue, align 8
  %44 = load i32, ptr %h, align 4
  %inc = add nsw i32 %44, 1
  br label %for.cond15, !llvm.loop !19

for.inc20:                                        ; preds = %for.cond15
  %45 = load i32, ptr %v, align 4
  %inc21 = add nsw i32 %45, 1
  br label %for.cond10, !llvm.loop !20

for.end22:                                        ; preds = %for.cond10
  %46 = load i64, ptr %outvalue, align 8
  %47 = load i32, ptr %numpix2, align 4
  %conv23 = sext i32 %47 to i64
  %add24 = add nsw i64 %46, %conv23
  %48 = load i32, ptr %numpix, align 4
  %conv25 = sext i32 %48 to i64
  %div26 = sdiv i64 %add24, %conv25
  %conv27 = trunc i64 %div26 to i8
  %49 = load ptr, ptr %outptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %incdec.ptr28, ptr %outptr, align 8
  store i8 %conv27, ptr %49, align 1
  %50 = load i32, ptr %outcol, align 4
  %inc30 = add i32 %50, 1
  store i32 %inc30, ptr %outcol, align 4
  %51 = load i32, ptr %h_expand, align 4
  %52 = load i32, ptr %outcol_h, align 4
  %add31 = add i32 %52, %51
  br label %for.cond7, !llvm.loop !21

for.end32:                                        ; preds = %for.cond7
  %53 = load i32, ptr %v_expand, align 4
  %54 = load i32, ptr %inrow, align 4
  %add33 = add nsw i32 %54, %53
  store i32 %add33, ptr %inrow, align 4
  %55 = load i32, ptr %outrow, align 4
  %inc35 = add nsw i32 %55, 1
  br label %for.cond, !llvm.loop !22

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @expand_right_edge(ptr noundef %image_data, i32 noundef %num_rows, i32 noundef %input_cols, i32 noundef %output_cols) #0 {
entry:
  %image_data.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %input_cols.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %pixval = alloca i8, align 1
  %count = alloca i32, align 4
  %row = alloca i32, align 4
  %numcols = alloca i32, align 4
  store ptr %image_data, ptr %image_data.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %input_cols, ptr %input_cols.addr, align 4
  %sub = sub i32 %output_cols, %input_cols
  store i32 %sub, ptr %numcols, align 4
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %for.cond, label %if.end

for.cond:                                         ; preds = %entry, %for.inc6
  %storemerge = phi i32 [ %inc, %for.inc6 ], [ 0, %entry ]
  store i32 %storemerge, ptr %row, align 4
  %0 = load i32, ptr %num_rows.addr, align 4
  %cmp1 = icmp slt i32 %storemerge, %0
  br i1 %cmp1, label %for.body, label %if.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %image_data.addr, align 8
  %2 = load i32, ptr %row, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load i32, ptr %input_cols.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %5 = load i8, ptr %arrayidx2, align 1
  store i8 %5, ptr %pixval, align 1
  %6 = load i32, ptr %numcols, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %storemerge1 = phi i32 [ %6, %for.body ], [ %dec, %for.body5 ]
  store i32 %storemerge1, ptr %count, align 4
  %cmp4 = icmp sgt i32 %storemerge1, 0
  br i1 %cmp4, label %for.body5, label %for.inc6

for.body5:                                        ; preds = %for.cond3
  %7 = load i8, ptr %pixval, align 1
  %8 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %7, ptr %8, align 1
  %9 = load i32, ptr %count, align 4
  %dec = add nsw i32 %9, -1
  br label %for.cond3, !llvm.loop !17

for.inc6:                                         ; preds = %for.cond3
  %10 = load i32, ptr %row, align 4
  %inc = add nsw i32 %10, 1
  br label %for.cond, !llvm.loop !18

if.end:                                           ; preds = %for.cond, %entry
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

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
