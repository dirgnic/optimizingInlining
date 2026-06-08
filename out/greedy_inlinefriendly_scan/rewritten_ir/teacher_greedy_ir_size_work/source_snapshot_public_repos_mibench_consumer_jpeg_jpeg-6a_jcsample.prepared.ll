; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcsample.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcsample.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x ptr] }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 104)
  store ptr %call, ptr %downsample, align 8
  %4 = load ptr, ptr %downsample, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 57
  store ptr %4, ptr %downsample1, align 8
  %6 = load ptr, ptr %downsample, align 8
  %pub = getelementptr inbounds %struct.my_downsampler, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_downsampler, ptr %pub, i32 0, i32 0
  store ptr @start_pass_downsample, ptr %start_pass, align 8
  %7 = load ptr, ptr %downsample, align 8
  %pub2 = getelementptr inbounds %struct.my_downsampler, ptr %7, i32 0, i32 0
  %downsample3 = getelementptr inbounds %struct.jpeg_downsampler, ptr %pub2, i32 0, i32 1
  store ptr @sep_downsample, ptr %downsample3, align 8
  %8 = load ptr, ptr %downsample, align 8
  %pub4 = getelementptr inbounds %struct.my_downsampler, ptr %8, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, ptr %pub4, i32 0, i32 2
  store i32 0, ptr %need_context_rows, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 26
  %10 = load i32, ptr %CCIR601_sampling, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 23, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %ci, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 14
  %18 = load ptr, ptr %comp_info, align 8
  store ptr %18, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, ptr %ci, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 12
  %21 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %h_samp_factor, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 38
  %25 = load i32, ptr %max_h_samp_factor, align 8
  %cmp6 = icmp eq i32 %23, %25
  br i1 %cmp6, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %for.body
  %26 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %v_samp_factor, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 39
  %29 = load i32, ptr %max_v_samp_factor, align 4
  %cmp7 = icmp eq i32 %27, %29
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %land.lhs.true
  %30 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 27
  %31 = load i32, ptr %smoothing_factor, align 8
  %tobool9 = icmp ne i32 %31, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %32 = load ptr, ptr %downsample, align 8
  %methods = getelementptr inbounds %struct.my_downsampler, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %methods, i64 0, i64 %idxprom
  store ptr @fullsize_smooth_downsample, ptr %arrayidx, align 8
  %34 = load ptr, ptr %downsample, align 8
  %pub11 = getelementptr inbounds %struct.my_downsampler, ptr %34, i32 0, i32 0
  %need_context_rows12 = getelementptr inbounds %struct.jpeg_downsampler, ptr %pub11, i32 0, i32 2
  store i32 1, ptr %need_context_rows12, align 8
  br label %if.end16

if.else:                                          ; preds = %if.then8
  %35 = load ptr, ptr %downsample, align 8
  %methods13 = getelementptr inbounds %struct.my_downsampler, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %ci, align 4
  %idxprom14 = sext i32 %36 to i64
  %arrayidx15 = getelementptr inbounds [10 x ptr], ptr %methods13, i64 0, i64 %idxprom14
  store ptr @fullsize_downsample, ptr %arrayidx15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  br label %if.end74

if.else17:                                        ; preds = %land.lhs.true, %for.body
  %37 = load ptr, ptr %compptr, align 8
  %h_samp_factor18 = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %h_samp_factor18, align 8
  %mul = mul nsw i32 %38, 2
  %39 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 38
  %40 = load i32, ptr %max_h_samp_factor19, align 8
  %cmp20 = icmp eq i32 %mul, %40
  br i1 %cmp20, label %land.lhs.true21, label %if.else29

land.lhs.true21:                                  ; preds = %if.else17
  %41 = load ptr, ptr %compptr, align 8
  %v_samp_factor22 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %v_samp_factor22, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 39
  %44 = load i32, ptr %max_v_samp_factor23, align 4
  %cmp24 = icmp eq i32 %42, %44
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %land.lhs.true21
  store i32 0, ptr %smoothok, align 4
  %45 = load ptr, ptr %downsample, align 8
  %methods26 = getelementptr inbounds %struct.my_downsampler, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %ci, align 4
  %idxprom27 = sext i32 %46 to i64
  %arrayidx28 = getelementptr inbounds [10 x ptr], ptr %methods26, i64 0, i64 %idxprom27
  store ptr @h2v1_downsample, ptr %arrayidx28, align 8
  br label %if.end73

if.else29:                                        ; preds = %land.lhs.true21, %if.else17
  %47 = load ptr, ptr %compptr, align 8
  %h_samp_factor30 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %h_samp_factor30, align 8
  %mul31 = mul nsw i32 %48, 2
  %49 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 38
  %50 = load i32, ptr %max_h_samp_factor32, align 8
  %cmp33 = icmp eq i32 %mul31, %50
  br i1 %cmp33, label %land.lhs.true34, label %if.else53

land.lhs.true34:                                  ; preds = %if.else29
  %51 = load ptr, ptr %compptr, align 8
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %v_samp_factor35, align 4
  %mul36 = mul nsw i32 %52, 2
  %53 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 39
  %54 = load i32, ptr %max_v_samp_factor37, align 4
  %cmp38 = icmp eq i32 %mul36, %54
  br i1 %cmp38, label %if.then39, label %if.else53

if.then39:                                        ; preds = %land.lhs.true34
  %55 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 27
  %56 = load i32, ptr %smoothing_factor40, align 8
  %tobool41 = icmp ne i32 %56, 0
  br i1 %tobool41, label %if.then42, label %if.else48

if.then42:                                        ; preds = %if.then39
  %57 = load ptr, ptr %downsample, align 8
  %methods43 = getelementptr inbounds %struct.my_downsampler, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %ci, align 4
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds [10 x ptr], ptr %methods43, i64 0, i64 %idxprom44
  store ptr @h2v2_smooth_downsample, ptr %arrayidx45, align 8
  %59 = load ptr, ptr %downsample, align 8
  %pub46 = getelementptr inbounds %struct.my_downsampler, ptr %59, i32 0, i32 0
  %need_context_rows47 = getelementptr inbounds %struct.jpeg_downsampler, ptr %pub46, i32 0, i32 2
  store i32 1, ptr %need_context_rows47, align 8
  br label %if.end52

if.else48:                                        ; preds = %if.then39
  %60 = load ptr, ptr %downsample, align 8
  %methods49 = getelementptr inbounds %struct.my_downsampler, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %ci, align 4
  %idxprom50 = sext i32 %61 to i64
  %arrayidx51 = getelementptr inbounds [10 x ptr], ptr %methods49, i64 0, i64 %idxprom50
  store ptr @h2v2_downsample, ptr %arrayidx51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.then42
  br label %if.end72

if.else53:                                        ; preds = %land.lhs.true34, %if.else29
  %62 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i32 0, i32 38
  %63 = load i32, ptr %max_h_samp_factor54, align 8
  %64 = load ptr, ptr %compptr, align 8
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %h_samp_factor55, align 8
  %rem = srem i32 %63, %65
  %cmp56 = icmp eq i32 %rem, 0
  br i1 %cmp56, label %land.lhs.true57, label %if.else66

land.lhs.true57:                                  ; preds = %if.else53
  %66 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 39
  %67 = load i32, ptr %max_v_samp_factor58, align 4
  %68 = load ptr, ptr %compptr, align 8
  %v_samp_factor59 = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %v_samp_factor59, align 4
  %rem60 = srem i32 %67, %69
  %cmp61 = icmp eq i32 %rem60, 0
  br i1 %cmp61, label %if.then62, label %if.else66

if.then62:                                        ; preds = %land.lhs.true57
  store i32 0, ptr %smoothok, align 4
  %70 = load ptr, ptr %downsample, align 8
  %methods63 = getelementptr inbounds %struct.my_downsampler, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %ci, align 4
  %idxprom64 = sext i32 %71 to i64
  %arrayidx65 = getelementptr inbounds [10 x ptr], ptr %methods63, i64 0, i64 %idxprom64
  store ptr @int_downsample, ptr %arrayidx65, align 8
  br label %if.end71

if.else66:                                        ; preds = %land.lhs.true57, %if.else53
  %72 = load ptr, ptr %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %err67, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i32 0, i32 5
  store i32 37, ptr %msg_code68, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %err69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %err69, align 8
  %error_exit70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %error_exit70, align 8
  %77 = load ptr, ptr %cinfo.addr, align 8
  call void %76(ptr noundef %77)
  br label %if.end71

if.end71:                                         ; preds = %if.else66, %if.then62
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end52
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then25
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end74
  %78 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %ci, align 4
  %79 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %79, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %80 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i32 0, i32 27
  %81 = load i32, ptr %smoothing_factor75, align 8
  %tobool76 = icmp ne i32 %81, 0
  br i1 %tobool76, label %land.lhs.true77, label %if.end83

land.lhs.true77:                                  ; preds = %for.end
  %82 = load i32, ptr %smoothok, align 4
  %tobool78 = icmp ne i32 %82, 0
  br i1 %tobool78, label %if.end83, label %if.then79

if.then79:                                        ; preds = %land.lhs.true77
  %83 = load ptr, ptr %cinfo.addr, align 8
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %err80, align 8
  %msg_code81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i32 0, i32 5
  store i32 98, ptr %msg_code81, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  %err82 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %err82, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i32 0, i32 1
  %87 = load ptr, ptr %emit_message, align 8
  %88 = load ptr, ptr %cinfo.addr, align 8
  call void %87(ptr noundef %88, i32 noundef 0)
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %land.lhs.true77, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_downsample(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 57
  %1 = load ptr, ptr %downsample1, align 8
  store ptr %1, ptr %downsample, align 8
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %comp_info, align 8
  store ptr %3, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 12
  %6 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %input_buf.addr, align 8
  %8 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %in_row_index.addr, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %in_ptr, align 8
  %11 = load ptr, ptr %output_buf.addr, align 8
  %12 = load i32, ptr %ci, align 4
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %11, i64 %idxprom2
  %13 = load ptr, ptr %arrayidx3, align 8
  %14 = load i32, ptr %out_row_group_index.addr, align 4
  %15 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %14, %16
  %idx.ext4 = zext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds ptr, ptr %13, i64 %idx.ext4
  store ptr %add.ptr5, ptr %out_ptr, align 8
  %17 = load ptr, ptr %downsample, align 8
  %methods = getelementptr inbounds %struct.my_downsampler, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds [10 x ptr], ptr %methods, i64 0, i64 %idxprom6
  %19 = load ptr, ptr %arrayidx7, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %compptr, align 8
  %22 = load ptr, ptr %in_ptr, align 8
  %23 = load ptr, ptr %out_ptr, align 8
  call void %19(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %ci, align 4
  %25 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
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
  %neighsum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  %colsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %0 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, ptr %output_cols, align 4
  %2 = load ptr, ptr %input_data.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 -1
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 39
  %4 = load i32, ptr %max_v_samp_factor, align 4
  %add = add nsw i32 %4, 2
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %image_width, align 8
  %7 = load i32, ptr %output_cols, align 4
  call void @expand_right_edge(ptr noundef %add.ptr, i32 noundef %add, i32 noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 27
  %9 = load i32, ptr %smoothing_factor, align 8
  %conv = sext i32 %9 to i64
  %mul1 = mul nsw i64 %conv, 512
  %sub = sub nsw i64 65536, %mul1
  store i64 %sub, ptr %memberscale, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 27
  %11 = load i32, ptr %smoothing_factor2, align 8
  %mul3 = mul nsw i32 %11, 64
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, ptr %neighscale, align 8
  store i32 0, ptr %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %entry
  %12 = load i32, ptr %outrow, align 4
  %13 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %output_data.addr, align 8
  %16 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  store ptr %17, ptr %outptr, align 8
  %18 = load ptr, ptr %input_data.addr, align 8
  %19 = load i32, ptr %outrow, align 4
  %idxprom6 = sext i32 %19 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %18, i64 %idxprom6
  %20 = load ptr, ptr %arrayidx7, align 8
  store ptr %20, ptr %inptr, align 8
  %21 = load ptr, ptr %input_data.addr, align 8
  %22 = load i32, ptr %outrow, align 4
  %sub8 = sub nsw i32 %22, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %21, i64 %idxprom9
  %23 = load ptr, ptr %arrayidx10, align 8
  store ptr %23, ptr %above_ptr, align 8
  %24 = load ptr, ptr %input_data.addr, align 8
  %25 = load i32, ptr %outrow, align 4
  %add11 = add nsw i32 %25, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %24, i64 %idxprom12
  %26 = load ptr, ptr %arrayidx13, align 8
  store ptr %26, ptr %below_ptr, align 8
  %27 = load ptr, ptr %above_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %above_ptr, align 8
  %28 = load i8, ptr %27, align 1
  %conv14 = zext i8 %28 to i32
  %29 = load ptr, ptr %below_ptr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr15, ptr %below_ptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv16 = zext i8 %30 to i32
  %add17 = add nsw i32 %conv14, %conv16
  %31 = load ptr, ptr %inptr, align 8
  %32 = load i8, ptr %31, align 1
  %conv18 = zext i8 %32 to i32
  %add19 = add nsw i32 %add17, %conv18
  store i32 %add19, ptr %colsum, align 4
  %33 = load ptr, ptr %inptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr20, ptr %inptr, align 8
  %34 = load i8, ptr %33, align 1
  %conv21 = zext i8 %34 to i32
  %conv22 = sext i32 %conv21 to i64
  store i64 %conv22, ptr %membersum, align 8
  %35 = load ptr, ptr %above_ptr, align 8
  %36 = load i8, ptr %35, align 1
  %conv23 = zext i8 %36 to i32
  %37 = load ptr, ptr %below_ptr, align 8
  %38 = load i8, ptr %37, align 1
  %conv24 = zext i8 %38 to i32
  %add25 = add nsw i32 %conv23, %conv24
  %39 = load ptr, ptr %inptr, align 8
  %40 = load i8, ptr %39, align 1
  %conv26 = zext i8 %40 to i32
  %add27 = add nsw i32 %add25, %conv26
  store i32 %add27, ptr %nextcolsum, align 4
  %41 = load i32, ptr %colsum, align 4
  %conv28 = sext i32 %41 to i64
  %42 = load i32, ptr %colsum, align 4
  %conv29 = sext i32 %42 to i64
  %43 = load i64, ptr %membersum, align 8
  %sub30 = sub nsw i64 %conv29, %43
  %add31 = add nsw i64 %conv28, %sub30
  %44 = load i32, ptr %nextcolsum, align 4
  %conv32 = sext i32 %44 to i64
  %add33 = add nsw i64 %add31, %conv32
  store i64 %add33, ptr %neighsum, align 8
  %45 = load i64, ptr %membersum, align 8
  %46 = load i64, ptr %memberscale, align 8
  %mul34 = mul nsw i64 %45, %46
  %47 = load i64, ptr %neighsum, align 8
  %48 = load i64, ptr %neighscale, align 8
  %mul35 = mul nsw i64 %47, %48
  %add36 = add nsw i64 %mul34, %mul35
  store i64 %add36, ptr %membersum, align 8
  %49 = load i64, ptr %membersum, align 8
  %add37 = add nsw i64 %49, 32768
  %shr = ashr i64 %add37, 16
  %conv38 = trunc i64 %shr to i8
  %50 = load ptr, ptr %outptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr39, ptr %outptr, align 8
  store i8 %conv38, ptr %50, align 1
  %51 = load i32, ptr %colsum, align 4
  store i32 %51, ptr %lastcolsum, align 4
  %52 = load i32, ptr %nextcolsum, align 4
  store i32 %52, ptr %colsum, align 4
  %53 = load i32, ptr %output_cols, align 4
  %sub40 = sub i32 %53, 2
  store i32 %sub40, ptr %colctr, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %54 = load i32, ptr %colctr, align 4
  %cmp42 = icmp ugt i32 %54, 0
  br i1 %cmp42, label %for.body44, label %for.end

for.body44:                                       ; preds = %for.cond41
  %55 = load ptr, ptr %inptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr45, ptr %inptr, align 8
  %56 = load i8, ptr %55, align 1
  %conv46 = zext i8 %56 to i32
  %conv47 = sext i32 %conv46 to i64
  store i64 %conv47, ptr %membersum, align 8
  %57 = load ptr, ptr %above_ptr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr48, ptr %above_ptr, align 8
  %58 = load ptr, ptr %below_ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr49, ptr %below_ptr, align 8
  %59 = load ptr, ptr %above_ptr, align 8
  %60 = load i8, ptr %59, align 1
  %conv50 = zext i8 %60 to i32
  %61 = load ptr, ptr %below_ptr, align 8
  %62 = load i8, ptr %61, align 1
  %conv51 = zext i8 %62 to i32
  %add52 = add nsw i32 %conv50, %conv51
  %63 = load ptr, ptr %inptr, align 8
  %64 = load i8, ptr %63, align 1
  %conv53 = zext i8 %64 to i32
  %add54 = add nsw i32 %add52, %conv53
  store i32 %add54, ptr %nextcolsum, align 4
  %65 = load i32, ptr %lastcolsum, align 4
  %conv55 = sext i32 %65 to i64
  %66 = load i32, ptr %colsum, align 4
  %conv56 = sext i32 %66 to i64
  %67 = load i64, ptr %membersum, align 8
  %sub57 = sub nsw i64 %conv56, %67
  %add58 = add nsw i64 %conv55, %sub57
  %68 = load i32, ptr %nextcolsum, align 4
  %conv59 = sext i32 %68 to i64
  %add60 = add nsw i64 %add58, %conv59
  store i64 %add60, ptr %neighsum, align 8
  %69 = load i64, ptr %membersum, align 8
  %70 = load i64, ptr %memberscale, align 8
  %mul61 = mul nsw i64 %69, %70
  %71 = load i64, ptr %neighsum, align 8
  %72 = load i64, ptr %neighscale, align 8
  %mul62 = mul nsw i64 %71, %72
  %add63 = add nsw i64 %mul61, %mul62
  store i64 %add63, ptr %membersum, align 8
  %73 = load i64, ptr %membersum, align 8
  %add64 = add nsw i64 %73, 32768
  %shr65 = ashr i64 %add64, 16
  %conv66 = trunc i64 %shr65 to i8
  %74 = load ptr, ptr %outptr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr67, ptr %outptr, align 8
  store i8 %conv66, ptr %74, align 1
  %75 = load i32, ptr %colsum, align 4
  store i32 %75, ptr %lastcolsum, align 4
  %76 = load i32, ptr %nextcolsum, align 4
  store i32 %76, ptr %colsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body44
  %77 = load i32, ptr %colctr, align 4
  %dec = add i32 %77, -1
  store i32 %dec, ptr %colctr, align 4
  br label %for.cond41, !llvm.loop !9

for.end:                                          ; preds = %for.cond41
  %78 = load ptr, ptr %inptr, align 8
  %79 = load i8, ptr %78, align 1
  %conv68 = zext i8 %79 to i32
  %conv69 = sext i32 %conv68 to i64
  store i64 %conv69, ptr %membersum, align 8
  %80 = load i32, ptr %lastcolsum, align 4
  %conv70 = sext i32 %80 to i64
  %81 = load i32, ptr %colsum, align 4
  %conv71 = sext i32 %81 to i64
  %82 = load i64, ptr %membersum, align 8
  %sub72 = sub nsw i64 %conv71, %82
  %add73 = add nsw i64 %conv70, %sub72
  %83 = load i32, ptr %colsum, align 4
  %conv74 = sext i32 %83 to i64
  %add75 = add nsw i64 %add73, %conv74
  store i64 %add75, ptr %neighsum, align 8
  %84 = load i64, ptr %membersum, align 8
  %85 = load i64, ptr %memberscale, align 8
  %mul76 = mul nsw i64 %84, %85
  %86 = load i64, ptr %neighsum, align 8
  %87 = load i64, ptr %neighscale, align 8
  %mul77 = mul nsw i64 %86, %87
  %add78 = add nsw i64 %mul76, %mul77
  store i64 %add78, ptr %membersum, align 8
  %88 = load i64, ptr %membersum, align 8
  %add79 = add nsw i64 %88, 32768
  %shr80 = ashr i64 %add79, 16
  %conv81 = trunc i64 %shr80 to i8
  %89 = load ptr, ptr %outptr, align 8
  store i8 %conv81, ptr %89, align 1
  br label %for.inc82

for.inc82:                                        ; preds = %for.end
  %90 = load i32, ptr %outrow, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %outrow, align 4
  br label %for.cond, !llvm.loop !10

for.end83:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fullsize_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data, ptr %output_data.addr, align 8
  %0 = load ptr, ptr %input_data.addr, align 8
  %1 = load ptr, ptr %output_data.addr, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 39
  %3 = load i32, ptr %max_v_samp_factor, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  call void @jcopy_sample_rows(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 0, i32 noundef %3, i32 noundef %5)
  %6 = load ptr, ptr %output_data.addr, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 39
  %8 = load i32, ptr %max_v_samp_factor1, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %image_width2, align 8
  %11 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 7
  %12 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %12, 8
  call void @expand_right_edge(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %mul)
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
  %0 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, ptr %output_cols, align 4
  %2 = load ptr, ptr %input_data.addr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 39
  %4 = load i32, ptr %max_v_samp_factor, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %image_width, align 8
  %7 = load i32, ptr %output_cols, align 4
  %mul1 = mul i32 %7, 2
  call void @expand_right_edge(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %mul1)
  store i32 0, ptr %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %8 = load i32, ptr %outrow, align 4
  %9 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %output_data.addr, align 8
  %12 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %outptr, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load i32, ptr %outrow, align 4
  %idxprom2 = sext i32 %15 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %14, i64 %idxprom2
  %16 = load ptr, ptr %arrayidx3, align 8
  store ptr %16, ptr %inptr, align 8
  store i32 0, ptr %bias, align 4
  store i32 0, ptr %outcol, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %17 = load i32, ptr %outcol, align 4
  %18 = load i32, ptr %output_cols, align 4
  %cmp5 = icmp ult i32 %17, %18
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %19 = load ptr, ptr %inptr, align 8
  %20 = load i8, ptr %19, align 1
  %conv = zext i8 %20 to i32
  %21 = load ptr, ptr %inptr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %22 to i32
  %add = add nsw i32 %conv, %conv8
  %23 = load i32, ptr %bias, align 4
  %add9 = add nsw i32 %add, %23
  %shr = ashr i32 %add9, 1
  %conv10 = trunc i32 %shr to i8
  %24 = load ptr, ptr %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %outptr, align 8
  store i8 %conv10, ptr %24, align 1
  %25 = load i32, ptr %bias, align 4
  %xor = xor i32 %25, 1
  store i32 %xor, ptr %bias, align 4
  %26 = load ptr, ptr %inptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 2
  store ptr %add.ptr, ptr %inptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %27 = load i32, ptr %outcol, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %outcol, align 4
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %28 = load i32, ptr %outrow, align 4
  %inc12 = add nsw i32 %28, 1
  store i32 %inc12, ptr %outrow, align 4
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
  %0 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, ptr %output_cols, align 4
  %2 = load ptr, ptr %input_data.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 -1
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 39
  %4 = load i32, ptr %max_v_samp_factor, align 4
  %add = add nsw i32 %4, 2
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %image_width, align 8
  %7 = load i32, ptr %output_cols, align 4
  %mul1 = mul i32 %7, 2
  call void @expand_right_edge(ptr noundef %add.ptr, i32 noundef %add, i32 noundef %6, i32 noundef %mul1)
  %8 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 27
  %9 = load i32, ptr %smoothing_factor, align 8
  %mul2 = mul nsw i32 %9, 80
  %sub = sub nsw i32 16384, %mul2
  %conv = sext i32 %sub to i64
  store i64 %conv, ptr %memberscale, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 27
  %11 = load i32, ptr %smoothing_factor3, align 8
  %mul4 = mul nsw i32 %11, 16
  %conv5 = sext i32 %mul4 to i64
  store i64 %conv5, ptr %neighscale, align 8
  store i32 0, ptr %inrow, align 4
  store i32 0, ptr %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc184, %entry
  %12 = load i32, ptr %outrow, align 4
  %13 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end185

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %output_data.addr, align 8
  %16 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  store ptr %17, ptr %outptr, align 8
  %18 = load ptr, ptr %input_data.addr, align 8
  %19 = load i32, ptr %inrow, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %18, i64 %idxprom7
  %20 = load ptr, ptr %arrayidx8, align 8
  store ptr %20, ptr %inptr0, align 8
  %21 = load ptr, ptr %input_data.addr, align 8
  %22 = load i32, ptr %inrow, align 4
  %add9 = add nsw i32 %22, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %21, i64 %idxprom10
  %23 = load ptr, ptr %arrayidx11, align 8
  store ptr %23, ptr %inptr1, align 8
  %24 = load ptr, ptr %input_data.addr, align 8
  %25 = load i32, ptr %inrow, align 4
  %sub12 = sub nsw i32 %25, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %24, i64 %idxprom13
  %26 = load ptr, ptr %arrayidx14, align 8
  store ptr %26, ptr %above_ptr, align 8
  %27 = load ptr, ptr %input_data.addr, align 8
  %28 = load i32, ptr %inrow, align 4
  %add15 = add nsw i32 %28, 2
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %27, i64 %idxprom16
  %29 = load ptr, ptr %arrayidx17, align 8
  store ptr %29, ptr %below_ptr, align 8
  %30 = load ptr, ptr %inptr0, align 8
  %31 = load i8, ptr %30, align 1
  %conv18 = zext i8 %31 to i32
  %32 = load ptr, ptr %inptr0, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %33 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %34 = load ptr, ptr %inptr1, align 8
  %35 = load i8, ptr %34, align 1
  %conv22 = zext i8 %35 to i32
  %add23 = add nsw i32 %add21, %conv22
  %36 = load ptr, ptr %inptr1, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %36, i64 1
  %37 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %37 to i32
  %add26 = add nsw i32 %add23, %conv25
  %conv27 = sext i32 %add26 to i64
  store i64 %conv27, ptr %membersum, align 8
  %38 = load ptr, ptr %above_ptr, align 8
  %39 = load i8, ptr %38, align 1
  %conv28 = zext i8 %39 to i32
  %40 = load ptr, ptr %above_ptr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %41 to i32
  %add31 = add nsw i32 %conv28, %conv30
  %42 = load ptr, ptr %below_ptr, align 8
  %43 = load i8, ptr %42, align 1
  %conv32 = zext i8 %43 to i32
  %add33 = add nsw i32 %add31, %conv32
  %44 = load ptr, ptr %below_ptr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %45 to i32
  %add36 = add nsw i32 %add33, %conv35
  %46 = load ptr, ptr %inptr0, align 8
  %47 = load i8, ptr %46, align 1
  %conv37 = zext i8 %47 to i32
  %add38 = add nsw i32 %add36, %conv37
  %48 = load ptr, ptr %inptr0, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %48, i64 2
  %49 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %49 to i32
  %add41 = add nsw i32 %add38, %conv40
  %50 = load ptr, ptr %inptr1, align 8
  %51 = load i8, ptr %50, align 1
  %conv42 = zext i8 %51 to i32
  %add43 = add nsw i32 %add41, %conv42
  %52 = load ptr, ptr %inptr1, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %52, i64 2
  %53 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %53 to i32
  %add46 = add nsw i32 %add43, %conv45
  %conv47 = sext i32 %add46 to i64
  store i64 %conv47, ptr %neighsum, align 8
  %54 = load i64, ptr %neighsum, align 8
  %55 = load i64, ptr %neighsum, align 8
  %add48 = add nsw i64 %55, %54
  store i64 %add48, ptr %neighsum, align 8
  %56 = load ptr, ptr %above_ptr, align 8
  %57 = load i8, ptr %56, align 1
  %conv49 = zext i8 %57 to i32
  %58 = load ptr, ptr %above_ptr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %59 to i32
  %add52 = add nsw i32 %conv49, %conv51
  %60 = load ptr, ptr %below_ptr, align 8
  %61 = load i8, ptr %60, align 1
  %conv53 = zext i8 %61 to i32
  %add54 = add nsw i32 %add52, %conv53
  %62 = load ptr, ptr %below_ptr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %62, i64 2
  %63 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %63 to i32
  %add57 = add nsw i32 %add54, %conv56
  %conv58 = sext i32 %add57 to i64
  %64 = load i64, ptr %neighsum, align 8
  %add59 = add nsw i64 %64, %conv58
  store i64 %add59, ptr %neighsum, align 8
  %65 = load i64, ptr %membersum, align 8
  %66 = load i64, ptr %memberscale, align 8
  %mul60 = mul nsw i64 %65, %66
  %67 = load i64, ptr %neighsum, align 8
  %68 = load i64, ptr %neighscale, align 8
  %mul61 = mul nsw i64 %67, %68
  %add62 = add nsw i64 %mul60, %mul61
  store i64 %add62, ptr %membersum, align 8
  %69 = load i64, ptr %membersum, align 8
  %add63 = add nsw i64 %69, 32768
  %shr = ashr i64 %add63, 16
  %conv64 = trunc i64 %shr to i8
  %70 = load ptr, ptr %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr, ptr %outptr, align 8
  store i8 %conv64, ptr %70, align 1
  %71 = load ptr, ptr %inptr0, align 8
  %add.ptr65 = getelementptr inbounds i8, ptr %71, i64 2
  store ptr %add.ptr65, ptr %inptr0, align 8
  %72 = load ptr, ptr %inptr1, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %72, i64 2
  store ptr %add.ptr66, ptr %inptr1, align 8
  %73 = load ptr, ptr %above_ptr, align 8
  %add.ptr67 = getelementptr inbounds i8, ptr %73, i64 2
  store ptr %add.ptr67, ptr %above_ptr, align 8
  %74 = load ptr, ptr %below_ptr, align 8
  %add.ptr68 = getelementptr inbounds i8, ptr %74, i64 2
  store ptr %add.ptr68, ptr %below_ptr, align 8
  %75 = load i32, ptr %output_cols, align 4
  %sub69 = sub i32 %75, 2
  store i32 %sub69, ptr %colctr, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc, %for.body
  %76 = load i32, ptr %colctr, align 4
  %cmp71 = icmp ugt i32 %76, 0
  br i1 %cmp71, label %for.body73, label %for.end

for.body73:                                       ; preds = %for.cond70
  %77 = load ptr, ptr %inptr0, align 8
  %78 = load i8, ptr %77, align 1
  %conv74 = zext i8 %78 to i32
  %79 = load ptr, ptr %inptr0, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %79, i64 1
  %80 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %80 to i32
  %add77 = add nsw i32 %conv74, %conv76
  %81 = load ptr, ptr %inptr1, align 8
  %82 = load i8, ptr %81, align 1
  %conv78 = zext i8 %82 to i32
  %add79 = add nsw i32 %add77, %conv78
  %83 = load ptr, ptr %inptr1, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %83, i64 1
  %84 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %84 to i32
  %add82 = add nsw i32 %add79, %conv81
  %conv83 = sext i32 %add82 to i64
  store i64 %conv83, ptr %membersum, align 8
  %85 = load ptr, ptr %above_ptr, align 8
  %86 = load i8, ptr %85, align 1
  %conv84 = zext i8 %86 to i32
  %87 = load ptr, ptr %above_ptr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %87, i64 1
  %88 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %88 to i32
  %add87 = add nsw i32 %conv84, %conv86
  %89 = load ptr, ptr %below_ptr, align 8
  %90 = load i8, ptr %89, align 1
  %conv88 = zext i8 %90 to i32
  %add89 = add nsw i32 %add87, %conv88
  %91 = load ptr, ptr %below_ptr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %91, i64 1
  %92 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %92 to i32
  %add92 = add nsw i32 %add89, %conv91
  %93 = load ptr, ptr %inptr0, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %93, i64 -1
  %94 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %94 to i32
  %add95 = add nsw i32 %add92, %conv94
  %95 = load ptr, ptr %inptr0, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %95, i64 2
  %96 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %96 to i32
  %add98 = add nsw i32 %add95, %conv97
  %97 = load ptr, ptr %inptr1, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %97, i64 -1
  %98 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %98 to i32
  %add101 = add nsw i32 %add98, %conv100
  %99 = load ptr, ptr %inptr1, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %99, i64 2
  %100 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %100 to i32
  %add104 = add nsw i32 %add101, %conv103
  %conv105 = sext i32 %add104 to i64
  store i64 %conv105, ptr %neighsum, align 8
  %101 = load i64, ptr %neighsum, align 8
  %102 = load i64, ptr %neighsum, align 8
  %add106 = add nsw i64 %102, %101
  store i64 %add106, ptr %neighsum, align 8
  %103 = load ptr, ptr %above_ptr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %103, i64 -1
  %104 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %104 to i32
  %105 = load ptr, ptr %above_ptr, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %105, i64 2
  %106 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %106 to i32
  %add111 = add nsw i32 %conv108, %conv110
  %107 = load ptr, ptr %below_ptr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %107, i64 -1
  %108 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %108 to i32
  %add114 = add nsw i32 %add111, %conv113
  %109 = load ptr, ptr %below_ptr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %109, i64 2
  %110 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %110 to i32
  %add117 = add nsw i32 %add114, %conv116
  %conv118 = sext i32 %add117 to i64
  %111 = load i64, ptr %neighsum, align 8
  %add119 = add nsw i64 %111, %conv118
  store i64 %add119, ptr %neighsum, align 8
  %112 = load i64, ptr %membersum, align 8
  %113 = load i64, ptr %memberscale, align 8
  %mul120 = mul nsw i64 %112, %113
  %114 = load i64, ptr %neighsum, align 8
  %115 = load i64, ptr %neighscale, align 8
  %mul121 = mul nsw i64 %114, %115
  %add122 = add nsw i64 %mul120, %mul121
  store i64 %add122, ptr %membersum, align 8
  %116 = load i64, ptr %membersum, align 8
  %add123 = add nsw i64 %116, 32768
  %shr124 = ashr i64 %add123, 16
  %conv125 = trunc i64 %shr124 to i8
  %117 = load ptr, ptr %outptr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr126, ptr %outptr, align 8
  store i8 %conv125, ptr %117, align 1
  %118 = load ptr, ptr %inptr0, align 8
  %add.ptr127 = getelementptr inbounds i8, ptr %118, i64 2
  store ptr %add.ptr127, ptr %inptr0, align 8
  %119 = load ptr, ptr %inptr1, align 8
  %add.ptr128 = getelementptr inbounds i8, ptr %119, i64 2
  store ptr %add.ptr128, ptr %inptr1, align 8
  %120 = load ptr, ptr %above_ptr, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %120, i64 2
  store ptr %add.ptr129, ptr %above_ptr, align 8
  %121 = load ptr, ptr %below_ptr, align 8
  %add.ptr130 = getelementptr inbounds i8, ptr %121, i64 2
  store ptr %add.ptr130, ptr %below_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body73
  %122 = load i32, ptr %colctr, align 4
  %dec = add i32 %122, -1
  store i32 %dec, ptr %colctr, align 4
  br label %for.cond70, !llvm.loop !13

for.end:                                          ; preds = %for.cond70
  %123 = load ptr, ptr %inptr0, align 8
  %124 = load i8, ptr %123, align 1
  %conv131 = zext i8 %124 to i32
  %125 = load ptr, ptr %inptr0, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %125, i64 1
  %126 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %126 to i32
  %add134 = add nsw i32 %conv131, %conv133
  %127 = load ptr, ptr %inptr1, align 8
  %128 = load i8, ptr %127, align 1
  %conv135 = zext i8 %128 to i32
  %add136 = add nsw i32 %add134, %conv135
  %129 = load ptr, ptr %inptr1, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %129, i64 1
  %130 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %130 to i32
  %add139 = add nsw i32 %add136, %conv138
  %conv140 = sext i32 %add139 to i64
  store i64 %conv140, ptr %membersum, align 8
  %131 = load ptr, ptr %above_ptr, align 8
  %132 = load i8, ptr %131, align 1
  %conv141 = zext i8 %132 to i32
  %133 = load ptr, ptr %above_ptr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %133, i64 1
  %134 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %134 to i32
  %add144 = add nsw i32 %conv141, %conv143
  %135 = load ptr, ptr %below_ptr, align 8
  %136 = load i8, ptr %135, align 1
  %conv145 = zext i8 %136 to i32
  %add146 = add nsw i32 %add144, %conv145
  %137 = load ptr, ptr %below_ptr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %137, i64 1
  %138 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %138 to i32
  %add149 = add nsw i32 %add146, %conv148
  %139 = load ptr, ptr %inptr0, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %139, i64 -1
  %140 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %140 to i32
  %add152 = add nsw i32 %add149, %conv151
  %141 = load ptr, ptr %inptr0, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %141, i64 1
  %142 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %142 to i32
  %add155 = add nsw i32 %add152, %conv154
  %143 = load ptr, ptr %inptr1, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %143, i64 -1
  %144 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %144 to i32
  %add158 = add nsw i32 %add155, %conv157
  %145 = load ptr, ptr %inptr1, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %145, i64 1
  %146 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %146 to i32
  %add161 = add nsw i32 %add158, %conv160
  %conv162 = sext i32 %add161 to i64
  store i64 %conv162, ptr %neighsum, align 8
  %147 = load i64, ptr %neighsum, align 8
  %148 = load i64, ptr %neighsum, align 8
  %add163 = add nsw i64 %148, %147
  store i64 %add163, ptr %neighsum, align 8
  %149 = load ptr, ptr %above_ptr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %149, i64 -1
  %150 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %150 to i32
  %151 = load ptr, ptr %above_ptr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %151, i64 1
  %152 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %152 to i32
  %add168 = add nsw i32 %conv165, %conv167
  %153 = load ptr, ptr %below_ptr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %153, i64 -1
  %154 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %154 to i32
  %add171 = add nsw i32 %add168, %conv170
  %155 = load ptr, ptr %below_ptr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %155, i64 1
  %156 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %156 to i32
  %add174 = add nsw i32 %add171, %conv173
  %conv175 = sext i32 %add174 to i64
  %157 = load i64, ptr %neighsum, align 8
  %add176 = add nsw i64 %157, %conv175
  store i64 %add176, ptr %neighsum, align 8
  %158 = load i64, ptr %membersum, align 8
  %159 = load i64, ptr %memberscale, align 8
  %mul177 = mul nsw i64 %158, %159
  %160 = load i64, ptr %neighsum, align 8
  %161 = load i64, ptr %neighscale, align 8
  %mul178 = mul nsw i64 %160, %161
  %add179 = add nsw i64 %mul177, %mul178
  store i64 %add179, ptr %membersum, align 8
  %162 = load i64, ptr %membersum, align 8
  %add180 = add nsw i64 %162, 32768
  %shr181 = ashr i64 %add180, 16
  %conv182 = trunc i64 %shr181 to i8
  %163 = load ptr, ptr %outptr, align 8
  store i8 %conv182, ptr %163, align 1
  %164 = load i32, ptr %inrow, align 4
  %add183 = add nsw i32 %164, 2
  store i32 %add183, ptr %inrow, align 4
  br label %for.inc184

for.inc184:                                       ; preds = %for.end
  %165 = load i32, ptr %outrow, align 4
  %inc = add nsw i32 %165, 1
  store i32 %inc, ptr %outrow, align 4
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
  %0 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, ptr %output_cols, align 4
  %2 = load ptr, ptr %input_data.addr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 39
  %4 = load i32, ptr %max_v_samp_factor, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %image_width, align 8
  %7 = load i32, ptr %output_cols, align 4
  %mul1 = mul i32 %7, 2
  call void @expand_right_edge(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %mul1)
  store i32 0, ptr %inrow, align 4
  store i32 0, ptr %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %8 = load i32, ptr %outrow, align 4
  %9 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %output_data.addr, align 8
  %12 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %outptr, align 8
  %14 = load ptr, ptr %input_data.addr, align 8
  %15 = load i32, ptr %inrow, align 4
  %idxprom2 = sext i32 %15 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %14, i64 %idxprom2
  %16 = load ptr, ptr %arrayidx3, align 8
  store ptr %16, ptr %inptr0, align 8
  %17 = load ptr, ptr %input_data.addr, align 8
  %18 = load i32, ptr %inrow, align 4
  %add = add nsw i32 %18, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %17, i64 %idxprom4
  %19 = load ptr, ptr %arrayidx5, align 8
  store ptr %19, ptr %inptr1, align 8
  store i32 1, ptr %bias, align 4
  store i32 0, ptr %outcol, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %20 = load i32, ptr %outcol, align 4
  %21 = load i32, ptr %output_cols, align 4
  %cmp7 = icmp ult i32 %20, %21
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %22 = load ptr, ptr %inptr0, align 8
  %23 = load i8, ptr %22, align 1
  %conv = zext i8 %23 to i32
  %24 = load ptr, ptr %inptr0, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %25 to i32
  %add11 = add nsw i32 %conv, %conv10
  %26 = load ptr, ptr %inptr1, align 8
  %27 = load i8, ptr %26, align 1
  %conv12 = zext i8 %27 to i32
  %add13 = add nsw i32 %add11, %conv12
  %28 = load ptr, ptr %inptr1, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %29 to i32
  %add16 = add nsw i32 %add13, %conv15
  %30 = load i32, ptr %bias, align 4
  %add17 = add nsw i32 %add16, %30
  %shr = ashr i32 %add17, 2
  %conv18 = trunc i32 %shr to i8
  %31 = load ptr, ptr %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %outptr, align 8
  store i8 %conv18, ptr %31, align 1
  %32 = load i32, ptr %bias, align 4
  %xor = xor i32 %32, 3
  store i32 %xor, ptr %bias, align 4
  %33 = load ptr, ptr %inptr0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 2
  store ptr %add.ptr, ptr %inptr0, align 8
  %34 = load ptr, ptr %inptr1, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %34, i64 2
  store ptr %add.ptr19, ptr %inptr1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %35 = load i32, ptr %outcol, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %outcol, align 4
  br label %for.cond6, !llvm.loop !15

for.end:                                          ; preds = %for.cond6
  %36 = load i32, ptr %inrow, align 4
  %add20 = add nsw i32 %36, 2
  store i32 %add20, ptr %inrow, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %37 = load i32, ptr %outrow, align 4
  %inc22 = add nsw i32 %37, 1
  store i32 %inc22, ptr %outrow, align 4
  br label %for.cond, !llvm.loop !16

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @int_downsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data) #0 {
entry:
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
  %0 = load ptr, ptr %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, ptr %output_cols, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 38
  %3 = load i32, ptr %max_h_samp_factor, align 8
  %4 = load ptr, ptr %compptr.addr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %h_samp_factor, align 8
  %div = sdiv i32 %3, %5
  store i32 %div, ptr %h_expand, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 39
  %7 = load i32, ptr %max_v_samp_factor, align 4
  %8 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %v_samp_factor, align 4
  %div1 = sdiv i32 %7, %9
  store i32 %div1, ptr %v_expand, align 4
  %10 = load i32, ptr %h_expand, align 4
  %11 = load i32, ptr %v_expand, align 4
  %mul2 = mul nsw i32 %10, %11
  store i32 %mul2, ptr %numpix, align 4
  %12 = load i32, ptr %numpix, align 4
  %div3 = sdiv i32 %12, 2
  store i32 %div3, ptr %numpix2, align 4
  %13 = load ptr, ptr %input_data.addr, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 39
  %15 = load i32, ptr %max_v_samp_factor4, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %image_width, align 8
  %18 = load i32, ptr %output_cols, align 4
  %19 = load i32, ptr %h_expand, align 4
  %mul5 = mul i32 %18, %19
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcsample_0(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %mul5)
  store i32 0, ptr %inrow, align 4
  store i32 0, ptr %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %20 = load i32, ptr %outrow, align 4
  %21 = load ptr, ptr %compptr.addr, align 8
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %v_samp_factor6, align 4
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %output_data.addr, align 8
  %24 = load i32, ptr %outrow, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %23, i64 %idxprom
  %25 = load ptr, ptr %arrayidx, align 8
  store ptr %25, ptr %outptr, align 8
  store i32 0, ptr %outcol, align 4
  store i32 0, ptr %outcol_h, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc29, %for.body
  %26 = load i32, ptr %outcol, align 4
  %27 = load i32, ptr %output_cols, align 4
  %cmp8 = icmp ult i32 %26, %27
  br i1 %cmp8, label %for.body9, label %for.end32

for.body9:                                        ; preds = %for.cond7
  store i64 0, ptr %outvalue, align 8
  store i32 0, ptr %v, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc20, %for.body9
  %28 = load i32, ptr %v, align 4
  %29 = load i32, ptr %v_expand, align 4
  %cmp11 = icmp slt i32 %28, %29
  br i1 %cmp11, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond10
  %30 = load ptr, ptr %input_data.addr, align 8
  %31 = load i32, ptr %inrow, align 4
  %32 = load i32, ptr %v, align 4
  %add = add nsw i32 %31, %32
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %30, i64 %idxprom13
  %33 = load ptr, ptr %arrayidx14, align 8
  %34 = load i32, ptr %outcol_h, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  store ptr %add.ptr, ptr %inptr, align 8
  store i32 0, ptr %h, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body12
  %35 = load i32, ptr %h, align 4
  %36 = load i32, ptr %h_expand, align 4
  %cmp16 = icmp slt i32 %35, %36
  br i1 %cmp16, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond15
  %37 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %38 = load i8, ptr %37, align 1
  %conv = zext i8 %38 to i32
  %conv18 = sext i32 %conv to i64
  %39 = load i64, ptr %outvalue, align 8
  %add19 = add nsw i64 %39, %conv18
  store i64 %add19, ptr %outvalue, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body17
  %40 = load i32, ptr %h, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %h, align 4
  br label %for.cond15, !llvm.loop !17

for.end:                                          ; preds = %for.cond15
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %41 = load i32, ptr %v, align 4
  %inc21 = add nsw i32 %41, 1
  store i32 %inc21, ptr %v, align 4
  br label %for.cond10, !llvm.loop !18

for.end22:                                        ; preds = %for.cond10
  %42 = load i64, ptr %outvalue, align 8
  %43 = load i32, ptr %numpix2, align 4
  %conv23 = sext i32 %43 to i64
  %add24 = add nsw i64 %42, %conv23
  %44 = load i32, ptr %numpix, align 4
  %conv25 = sext i32 %44 to i64
  %div26 = sdiv i64 %add24, %conv25
  %conv27 = trunc i64 %div26 to i8
  %45 = load ptr, ptr %outptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr28, ptr %outptr, align 8
  store i8 %conv27, ptr %45, align 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.end22
  %46 = load i32, ptr %outcol, align 4
  %inc30 = add i32 %46, 1
  store i32 %inc30, ptr %outcol, align 4
  %47 = load i32, ptr %h_expand, align 4
  %48 = load i32, ptr %outcol_h, align 4
  %add31 = add i32 %48, %47
  store i32 %add31, ptr %outcol_h, align 4
  br label %for.cond7, !llvm.loop !19

for.end32:                                        ; preds = %for.cond7
  %49 = load i32, ptr %v_expand, align 4
  %50 = load i32, ptr %inrow, align 4
  %add33 = add nsw i32 %50, %49
  store i32 %add33, ptr %inrow, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.end32
  %51 = load i32, ptr %outrow, align 4
  %inc35 = add nsw i32 %51, 1
  store i32 %inc35, ptr %outrow, align 4
  br label %for.cond, !llvm.loop !20

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @expand_right_edge(ptr noundef %image_data, i32 noundef %num_rows, i32 noundef %input_cols, i32 noundef %output_cols) #0 {
entry:
  %image_data.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %input_cols.addr = alloca i32, align 4
  %output_cols.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %pixval = alloca i8, align 1
  %count = alloca i32, align 4
  %row = alloca i32, align 4
  %numcols = alloca i32, align 4
  store ptr %image_data, ptr %image_data.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %input_cols, ptr %input_cols.addr, align 4
  store i32 %output_cols, ptr %output_cols.addr, align 4
  %0 = load i32, ptr %output_cols.addr, align 4
  %1 = load i32, ptr %input_cols.addr, align 4
  %sub = sub i32 %0, %1
  store i32 %sub, ptr %numcols, align 4
  %2 = load i32, ptr %numcols, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %if.then
  %3 = load i32, ptr %row, align 4
  %4 = load i32, ptr %num_rows.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %image_data.addr, align 8
  %6 = load i32, ptr %row, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %input_cols.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr, align 8
  %9 = load ptr, ptr %ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %9, i64 -1
  %10 = load i8, ptr %arrayidx2, align 1
  store i8 %10, ptr %pixval, align 1
  %11 = load i32, ptr %numcols, align 4
  store i32 %11, ptr %count, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %count, align 4
  %cmp4 = icmp sgt i32 %12, 0
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %13 = load i8, ptr %pixval, align 1
  %14 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %13, ptr %14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %15 = load i32, ptr %count, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %count, align 4
  br label %for.cond3, !llvm.loop !21

for.end:                                          ; preds = %for.cond3
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %16 = load i32, ptr %row, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !22

for.end7:                                         ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end7, %entry
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcsample_0(ptr noundef %image_data, i32 noundef %num_rows, i32 noundef %input_cols, i32 noundef %output_cols)  alwaysinline#0 {
entry:
  %image_data.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %input_cols.addr = alloca i32, align 4
  %output_cols.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %pixval = alloca i8, align 1
  %count = alloca i32, align 4
  %row = alloca i32, align 4
  %numcols = alloca i32, align 4
  store ptr %image_data, ptr %image_data.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %input_cols, ptr %input_cols.addr, align 4
  store i32 %output_cols, ptr %output_cols.addr, align 4
  %0 = load i32, ptr %output_cols.addr, align 4
  %1 = load i32, ptr %input_cols.addr, align 4
  %sub = sub i32 %0, %1
  store i32 %sub, ptr %numcols, align 4
  %2 = load i32, ptr %numcols, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %if.then
  %3 = load i32, ptr %row, align 4
  %4 = load i32, ptr %num_rows.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %image_data.addr, align 8
  %6 = load i32, ptr %row, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %input_cols.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr, align 8
  %9 = load ptr, ptr %ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %9, i64 -1
  %10 = load i8, ptr %arrayidx2, align 1
  store i8 %10, ptr %pixval, align 1
  %11 = load i32, ptr %numcols, align 4
  store i32 %11, ptr %count, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %count, align 4
  %cmp4 = icmp sgt i32 %12, 0
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %13 = load i8, ptr %pixval, align 1
  %14 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %13, ptr %14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %15 = load i32, ptr %count, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %count, align 4
  br label %for.cond3, !llvm.loop !21

for.end:                                          ; preds = %for.cond3
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %16 = load i32, ptr %row, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !22

for.end7:                                         ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end7, %entry
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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
