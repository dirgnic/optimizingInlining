; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdmainct.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdmainct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x ptr], i32, i32, [2 x ptr], i32, i32, i32, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_post_controller = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_d_main_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %the_main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 136)
  store ptr %call, ptr %the_main, align 8
  %4 = load ptr, ptr %the_main, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 74
  store ptr %4, ptr %main, align 8
  %6 = load ptr, ptr %the_main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_main, ptr %start_pass, align 8
  %7 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 81
  %15 = load ptr, ptr %upsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %need_context_rows, align 8
  %tobool2 = icmp ne i32 %16, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %17 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 59
  %18 = load i32, ptr %min_DCT_scaled_size, align 4
  %cmp = icmp slt i32 %18, 2
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.then3
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err5, align 8
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 46, ptr %msg_code6, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err7, align 8
  %error_exit8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit8, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then3
  %25 = load ptr, ptr %cinfo.addr, align 8
  call void @alloc_funny_pointers(ptr noundef %25)
  %26 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 59
  %27 = load i32, ptr %min_DCT_scaled_size10, align 4
  %add = add nsw i32 %27, 2
  store i32 %add, ptr %ngroups, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %28 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 59
  %29 = load i32, ptr %min_DCT_scaled_size11, align 4
  store i32 %29, ptr %ngroups, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end9
  store i32 0, ptr %ci, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 43
  %31 = load ptr, ptr %comp_info, align 8
  store ptr %31, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %32 = load i32, ptr %ci, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 8
  %34 = load i32, ptr %num_components, align 8
  %cmp13 = icmp slt i32 %32, %34
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %v_samp_factor, align 4
  %37 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 9
  %38 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %36, %38
  %39 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 59
  %40 = load i32, ptr %min_DCT_scaled_size14, align 4
  %div = sdiv i32 %mul, %40
  store i32 %div, ptr %rgroup, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %mem15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %mem15, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %alloc_sarray, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i32 0, i32 7
  %46 = load i32, ptr %width_in_blocks, align 4
  %47 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size16 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 9
  %48 = load i32, ptr %DCT_scaled_size16, align 4
  %mul17 = mul i32 %46, %48
  %49 = load i32, ptr %rgroup, align 4
  %50 = load i32, ptr %ngroups, align 4
  %mul18 = mul nsw i32 %49, %50
  %call19 = call ptr %43(ptr noundef %44, i32 noundef 1, i32 noundef %mul17, i32 noundef %mul18)
  %51 = load ptr, ptr %the_main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 %idxprom
  store ptr %call19, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %ci, align 4
  %54 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass_main(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %the_main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pass_mode, ptr %pass_mode.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  %2 = load i32, ptr %pass_mode.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 81
  %4 = load ptr, ptr %upsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %need_context_rows, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr %the_main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, ptr %6, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub, i32 0, i32 1
  store ptr @process_data_context_main, ptr %process_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @make_funny_pointers(ptr noundef %7)
  %8 = load ptr, ptr %the_main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 5
  store i32 0, ptr %whichptr, align 8
  %9 = load ptr, ptr %the_main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %9, i32 0, i32 6
  store i32 0, ptr %context_state, align 4
  %10 = load ptr, ptr %the_main, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %10, i32 0, i32 8
  store i32 0, ptr %iMCU_row_ctr, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %the_main, align 8
  %pub1 = getelementptr inbounds %struct.my_main_controller, ptr %11, i32 0, i32 0
  %process_data2 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub1, i32 0, i32 1
  store ptr @process_data_simple_main, ptr %process_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %the_main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %12, i32 0, i32 2
  store i32 0, ptr %buffer_full, align 8
  %13 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %13, i32 0, i32 3
  store i32 0, ptr %rowgroup_ctr, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %14 = load ptr, ptr %the_main, align 8
  %pub4 = getelementptr inbounds %struct.my_main_controller, ptr %14, i32 0, i32 0
  %process_data5 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub4, i32 0, i32 1
  store ptr @process_data_crank_post, ptr %process_data5, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @alloc_funny_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %the_main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %xbuf = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 59
  %3 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %3, ptr %M, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %alloc_small, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %num_components, align 8
  %mul = mul nsw i32 %9, 2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  %call = call ptr %6(ptr noundef %7, i32 noundef 1, i64 noundef %mul1)
  %10 = load ptr, ptr %the_main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %10, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 0
  store ptr %call, ptr %arrayidx, align 8
  %11 = load ptr, ptr %the_main, align 8
  %xbuffer2 = getelementptr inbounds %struct.my_main_controller, ptr %11, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %xbuffer2, i64 0, i64 0
  %12 = load ptr, ptr %arrayidx3, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %num_components4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %num_components4, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %12, i64 %idx.ext
  %15 = load ptr, ptr %the_main, align 8
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x ptr], ptr %xbuffer5, i64 0, i64 1
  store ptr %add.ptr, ptr %arrayidx6, align 8
  store i32 0, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 43
  %17 = load ptr, ptr %comp_info, align 8
  store ptr %17, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %ci, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %num_components7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %num_components7, align 8
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %v_samp_factor, align 4
  %23 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %DCT_scaled_size, align 4
  %mul9 = mul nsw i32 %22, %24
  %25 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 59
  %26 = load i32, ptr %min_DCT_scaled_size10, align 4
  %div = sdiv i32 %mul9, %26
  store i32 %div, ptr %rgroup, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %mem11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %mem11, align 8
  %alloc_small12 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %alloc_small12, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load i32, ptr %rgroup, align 4
  %32 = load i32, ptr %M, align 4
  %add = add nsw i32 %32, 4
  %mul13 = mul nsw i32 %31, %add
  %mul14 = mul nsw i32 2, %mul13
  %conv15 = sext i32 %mul14 to i64
  %mul16 = mul i64 %conv15, 8
  %call17 = call ptr %29(ptr noundef %30, i32 noundef 1, i64 noundef %mul16)
  store ptr %call17, ptr %xbuf, align 8
  %33 = load i32, ptr %rgroup, align 4
  %34 = load ptr, ptr %xbuf, align 8
  %idx.ext18 = sext i32 %33 to i64
  %add.ptr19 = getelementptr inbounds ptr, ptr %34, i64 %idx.ext18
  store ptr %add.ptr19, ptr %xbuf, align 8
  %35 = load ptr, ptr %xbuf, align 8
  %36 = load ptr, ptr %the_main, align 8
  %xbuffer20 = getelementptr inbounds %struct.my_main_controller, ptr %36, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [2 x ptr], ptr %xbuffer20, i64 0, i64 0
  %37 = load ptr, ptr %arrayidx21, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %37, i64 %idxprom
  store ptr %35, ptr %arrayidx22, align 8
  %39 = load i32, ptr %rgroup, align 4
  %40 = load i32, ptr %M, align 4
  %add23 = add nsw i32 %40, 4
  %mul24 = mul nsw i32 %39, %add23
  %41 = load ptr, ptr %xbuf, align 8
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds ptr, ptr %41, i64 %idx.ext25
  store ptr %add.ptr26, ptr %xbuf, align 8
  %42 = load ptr, ptr %xbuf, align 8
  %43 = load ptr, ptr %the_main, align 8
  %xbuffer27 = getelementptr inbounds %struct.my_main_controller, ptr %43, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [2 x ptr], ptr %xbuffer27, i64 0, i64 1
  %44 = load ptr, ptr %arrayidx28, align 8
  %45 = load i32, ptr %ci, align 4
  %idxprom29 = sext i32 %45 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %44, i64 %idxprom29
  store ptr %42, ptr %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %ci, align 4
  %47 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @process_data_context_main(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %the_main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  %2 = load ptr, ptr %the_main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %buffer_full, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 75
  %5 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %decompress_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %the_main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %the_main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %call = call i32 %6(ptr noundef %7, ptr noundef %11)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %the_main, align 8
  %buffer_full3 = getelementptr inbounds %struct.my_main_controller, ptr %12, i32 0, i32 2
  store i32 1, ptr %buffer_full3, align 8
  %13 = load ptr, ptr %the_main, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %iMCU_row_ctr, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %iMCU_row_ctr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %the_main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %context_state, align 4
  switch i32 %16, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb17
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 76
  %18 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %post_process_data, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %the_main, align 8
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %the_main, align 8
  %whichptr6 = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %whichptr6, align 8
  %idxprom7 = sext i32 %23 to i64
  %arrayidx8 = getelementptr inbounds [2 x ptr], ptr %xbuffer5, i64 0, i64 %idxprom7
  %24 = load ptr, ptr %arrayidx8, align 8
  %25 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %the_main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %rowgroups_avail, align 8
  %28 = load ptr, ptr %output_buf.addr, align 8
  %29 = load ptr, ptr %out_row_ctr.addr, align 8
  %30 = load i32, ptr %out_rows_avail.addr, align 4
  call void %19(ptr noundef %20, ptr noundef %24, ptr noundef %rowgroup_ctr, i32 noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30)
  %31 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr9 = getelementptr inbounds %struct.my_main_controller, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %rowgroup_ctr9, align 4
  %33 = load ptr, ptr %the_main, align 8
  %rowgroups_avail10 = getelementptr inbounds %struct.my_main_controller, ptr %33, i32 0, i32 7
  %34 = load i32, ptr %rowgroups_avail10, align 8
  %cmp = icmp ult i32 %32, %34
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb
  %35 = load ptr, ptr %the_main, align 8
  %context_state13 = getelementptr inbounds %struct.my_main_controller, ptr %35, i32 0, i32 6
  store i32 0, ptr %context_state13, align 4
  %36 = load ptr, ptr %out_row_ctr.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %out_rows_avail.addr, align 4
  %cmp14 = icmp uge i32 %37, %38
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %sw.epilog

if.end16:                                         ; preds = %if.end12
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.end4, %if.end16
  %39 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr18 = getelementptr inbounds %struct.my_main_controller, ptr %39, i32 0, i32 3
  store i32 0, ptr %rowgroup_ctr18, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 59
  %41 = load i32, ptr %min_DCT_scaled_size, align 4
  %sub = sub nsw i32 %41, 1
  %42 = load ptr, ptr %the_main, align 8
  %rowgroups_avail19 = getelementptr inbounds %struct.my_main_controller, ptr %42, i32 0, i32 7
  store i32 %sub, ptr %rowgroups_avail19, align 8
  %43 = load ptr, ptr %the_main, align 8
  %iMCU_row_ctr20 = getelementptr inbounds %struct.my_main_controller, ptr %43, i32 0, i32 8
  %44 = load i32, ptr %iMCU_row_ctr20, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 60
  %46 = load i32, ptr %total_iMCU_rows, align 8
  %cmp21 = icmp eq i32 %44, %46
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb17
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void @set_bottom_pointers(ptr noundef %47)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %sw.bb17
  %48 = load ptr, ptr %the_main, align 8
  %context_state24 = getelementptr inbounds %struct.my_main_controller, ptr %48, i32 0, i32 6
  store i32 1, ptr %context_state24, align 4
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.end4, %if.end23
  %49 = load ptr, ptr %cinfo.addr, align 8
  %post26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 76
  %50 = load ptr, ptr %post26, align 8
  %post_process_data27 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %post_process_data27, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %the_main, align 8
  %xbuffer28 = getelementptr inbounds %struct.my_main_controller, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %the_main, align 8
  %whichptr29 = getelementptr inbounds %struct.my_main_controller, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %whichptr29, align 8
  %idxprom30 = sext i32 %55 to i64
  %arrayidx31 = getelementptr inbounds [2 x ptr], ptr %xbuffer28, i64 0, i64 %idxprom30
  %56 = load ptr, ptr %arrayidx31, align 8
  %57 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr32 = getelementptr inbounds %struct.my_main_controller, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %the_main, align 8
  %rowgroups_avail33 = getelementptr inbounds %struct.my_main_controller, ptr %58, i32 0, i32 7
  %59 = load i32, ptr %rowgroups_avail33, align 8
  %60 = load ptr, ptr %output_buf.addr, align 8
  %61 = load ptr, ptr %out_row_ctr.addr, align 8
  %62 = load i32, ptr %out_rows_avail.addr, align 4
  call void %51(ptr noundef %52, ptr noundef %56, ptr noundef %rowgroup_ctr32, i32 noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr34 = getelementptr inbounds %struct.my_main_controller, ptr %63, i32 0, i32 3
  %64 = load i32, ptr %rowgroup_ctr34, align 4
  %65 = load ptr, ptr %the_main, align 8
  %rowgroups_avail35 = getelementptr inbounds %struct.my_main_controller, ptr %65, i32 0, i32 7
  %66 = load i32, ptr %rowgroups_avail35, align 8
  %cmp36 = icmp ult i32 %64, %66
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.bb25
  br label %sw.epilog

if.end38:                                         ; preds = %sw.bb25
  %67 = load ptr, ptr %the_main, align 8
  %iMCU_row_ctr39 = getelementptr inbounds %struct.my_main_controller, ptr %67, i32 0, i32 8
  %68 = load i32, ptr %iMCU_row_ctr39, align 4
  %cmp40 = icmp eq i32 %68, 1
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  %69 = load ptr, ptr %cinfo.addr, align 8
  call void @set_wraparound_pointers(ptr noundef %69)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38
  %70 = load ptr, ptr %the_main, align 8
  %whichptr43 = getelementptr inbounds %struct.my_main_controller, ptr %70, i32 0, i32 5
  %71 = load i32, ptr %whichptr43, align 8
  %xor = xor i32 %71, 1
  store i32 %xor, ptr %whichptr43, align 8
  %72 = load ptr, ptr %the_main, align 8
  %buffer_full44 = getelementptr inbounds %struct.my_main_controller, ptr %72, i32 0, i32 2
  store i32 0, ptr %buffer_full44, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 59
  %74 = load i32, ptr %min_DCT_scaled_size45, align 4
  %add = add nsw i32 %74, 1
  %75 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr46 = getelementptr inbounds %struct.my_main_controller, ptr %75, i32 0, i32 3
  store i32 %add, ptr %rowgroup_ctr46, align 4
  %76 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 59
  %77 = load i32, ptr %min_DCT_scaled_size47, align 4
  %add48 = add nsw i32 %77, 2
  %78 = load ptr, ptr %the_main, align 8
  %rowgroups_avail49 = getelementptr inbounds %struct.my_main_controller, ptr %78, i32 0, i32 7
  store i32 %add48, ptr %rowgroups_avail49, align 8
  %79 = load ptr, ptr %the_main, align 8
  %context_state50 = getelementptr inbounds %struct.my_main_controller, ptr %79, i32 0, i32 6
  store i32 2, ptr %context_state50, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then2, %if.then11, %if.then15, %if.then37, %if.end42, %if.end4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @make_funny_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %the_main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %xbuf0 = alloca ptr, align 8
  %xbuf1 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 59
  %3 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %3, ptr %M, align 4
  store i32 0, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 43
  %5 = load ptr, ptr %comp_info, align 8
  store ptr %5, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %11 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 9
  %12 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 59
  %14 = load i32, ptr %min_DCT_scaled_size1, align 4
  %div = sdiv i32 %mul, %14
  store i32 %div, ptr %rgroup, align 4
  %15 = load ptr, ptr %the_main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx2, align 8
  store ptr %18, ptr %xbuf0, align 8
  %19 = load ptr, ptr %the_main, align 8
  %xbuffer3 = getelementptr inbounds %struct.my_main_controller, ptr %19, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %xbuffer3, i64 0, i64 1
  %20 = load ptr, ptr %arrayidx4, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %21 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %20, i64 %idxprom5
  %22 = load ptr, ptr %arrayidx6, align 8
  store ptr %22, ptr %xbuf1, align 8
  %23 = load ptr, ptr %the_main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %ci, align 4
  %idxprom7 = sext i32 %24 to i64
  %arrayidx8 = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 %idxprom7
  %25 = load ptr, ptr %arrayidx8, align 8
  store ptr %25, ptr %buf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %rgroup, align 4
  %28 = load i32, ptr %M, align 4
  %add = add nsw i32 %28, 2
  %mul10 = mul nsw i32 %27, %add
  %cmp11 = icmp slt i32 %26, %mul10
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond9
  %29 = load ptr, ptr %buf, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %30 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %29, i64 %idxprom13
  %31 = load ptr, ptr %arrayidx14, align 8
  %32 = load ptr, ptr %xbuf1, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %33 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %32, i64 %idxprom15
  store ptr %31, ptr %arrayidx16, align 8
  %34 = load ptr, ptr %xbuf0, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %35 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %34, i64 %idxprom17
  store ptr %31, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc40, %for.end
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %rgroup, align 4
  %mul20 = mul nsw i32 %38, 2
  %cmp21 = icmp slt i32 %37, %mul20
  br i1 %cmp21, label %for.body22, label %for.end42

for.body22:                                       ; preds = %for.cond19
  %39 = load ptr, ptr %buf, align 8
  %40 = load i32, ptr %rgroup, align 4
  %41 = load i32, ptr %M, align 4
  %mul23 = mul nsw i32 %40, %41
  %42 = load i32, ptr %i, align 4
  %add24 = add nsw i32 %mul23, %42
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %39, i64 %idxprom25
  %43 = load ptr, ptr %arrayidx26, align 8
  %44 = load ptr, ptr %xbuf1, align 8
  %45 = load i32, ptr %rgroup, align 4
  %46 = load i32, ptr %M, align 4
  %sub = sub nsw i32 %46, 2
  %mul27 = mul nsw i32 %45, %sub
  %47 = load i32, ptr %i, align 4
  %add28 = add nsw i32 %mul27, %47
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %44, i64 %idxprom29
  store ptr %43, ptr %arrayidx30, align 8
  %48 = load ptr, ptr %buf, align 8
  %49 = load i32, ptr %rgroup, align 4
  %50 = load i32, ptr %M, align 4
  %sub31 = sub nsw i32 %50, 2
  %mul32 = mul nsw i32 %49, %sub31
  %51 = load i32, ptr %i, align 4
  %add33 = add nsw i32 %mul32, %51
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %48, i64 %idxprom34
  %52 = load ptr, ptr %arrayidx35, align 8
  %53 = load ptr, ptr %xbuf1, align 8
  %54 = load i32, ptr %rgroup, align 4
  %55 = load i32, ptr %M, align 4
  %mul36 = mul nsw i32 %54, %55
  %56 = load i32, ptr %i, align 4
  %add37 = add nsw i32 %mul36, %56
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %53, i64 %idxprom38
  store ptr %52, ptr %arrayidx39, align 8
  br label %for.inc40

for.inc40:                                        ; preds = %for.body22
  %57 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %57, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond19, !llvm.loop !10

for.end42:                                        ; preds = %for.cond19
  store i32 0, ptr %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.end42
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %rgroup, align 4
  %cmp44 = icmp slt i32 %58, %59
  br i1 %cmp44, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond43
  %60 = load ptr, ptr %xbuf0, align 8
  %arrayidx46 = getelementptr inbounds ptr, ptr %60, i64 0
  %61 = load ptr, ptr %arrayidx46, align 8
  %62 = load ptr, ptr %xbuf0, align 8
  %63 = load i32, ptr %i, align 4
  %64 = load i32, ptr %rgroup, align 4
  %sub47 = sub nsw i32 %63, %64
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %62, i64 %idxprom48
  store ptr %61, ptr %arrayidx49, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %65 = load i32, ptr %i, align 4
  %inc51 = add nsw i32 %65, 1
  store i32 %inc51, ptr %i, align 4
  br label %for.cond43, !llvm.loop !11

for.end52:                                        ; preds = %for.cond43
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %66 = load i32, ptr %ci, align 4
  %inc54 = add nsw i32 %66, 1
  store i32 %inc54, ptr %ci, align 4
  %67 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !12

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @process_data_simple_main(ptr noundef %cinfo, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %the_main = alloca ptr, align 8
  %rowgroups_avail = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  %2 = load ptr, ptr %the_main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %buffer_full, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 75
  %5 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %decompress_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %the_main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 0
  %call = call i32 %6(ptr noundef %7, ptr noundef %arraydecay)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %if.end11

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %the_main, align 8
  %buffer_full3 = getelementptr inbounds %struct.my_main_controller, ptr %9, i32 0, i32 2
  store i32 1, ptr %buffer_full3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 59
  %11 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %11, ptr %rowgroups_avail, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 76
  %13 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %post_process_data, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %the_main, align 8
  %buffer5 = getelementptr inbounds %struct.my_main_controller, ptr %16, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [10 x ptr], ptr %buffer5, i64 0, i64 0
  %17 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %rowgroups_avail, align 4
  %19 = load ptr, ptr %output_buf.addr, align 8
  %20 = load ptr, ptr %out_row_ctr.addr, align 8
  %21 = load i32, ptr %out_rows_avail.addr, align 4
  call void %14(ptr noundef %15, ptr noundef %arraydecay6, ptr noundef %rowgroup_ctr, i32 noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr7 = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %rowgroup_ctr7, align 4
  %24 = load i32, ptr %rowgroups_avail, align 4
  %cmp = icmp uge i32 %23, %24
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  %25 = load ptr, ptr %the_main, align 8
  %buffer_full9 = getelementptr inbounds %struct.my_main_controller, ptr %25, i32 0, i32 2
  store i32 0, ptr %buffer_full9, align 8
  %26 = load ptr, ptr %the_main, align 8
  %rowgroup_ctr10 = getelementptr inbounds %struct.my_main_controller, ptr %26, i32 0, i32 3
  store i32 0, ptr %rowgroup_ctr10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.then8, %if.end4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 76
  %1 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %post_process_data, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %output_buf.addr, align 8
  %5 = load ptr, ptr %out_row_ctr.addr, align 8
  %6 = load i32, ptr %out_rows_avail.addr, align 4
  call void %2(ptr noundef %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %4, ptr noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @set_bottom_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %the_main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %iMCUheight = alloca i32, align 4
  %rows_left = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %xbuf = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 43
  %3 = load ptr, ptr %comp_info, align 8
  store ptr %3, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %v_samp_factor, align 4
  %9 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %8, %10
  store i32 %mul, ptr %iMCUheight, align 4
  %11 = load i32, ptr %iMCUheight, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 59
  %13 = load i32, ptr %min_DCT_scaled_size, align 4
  %div = sdiv i32 %11, %13
  store i32 %div, ptr %rgroup, align 4
  %14 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 11
  %15 = load i32, ptr %downsampled_height, align 4
  %16 = load i32, ptr %iMCUheight, align 4
  %rem = urem i32 %15, %16
  store i32 %rem, ptr %rows_left, align 4
  %17 = load i32, ptr %rows_left, align 4
  %cmp1 = icmp eq i32 %17, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32, ptr %iMCUheight, align 4
  store i32 %18, ptr %rows_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, ptr %ci, align 4
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %20 = load i32, ptr %rows_left, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load i32, ptr %rgroup, align 4
  %div4 = sdiv i32 %sub, %21
  %add = add nsw i32 %div4, 1
  %22 = load ptr, ptr %the_main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 7
  store i32 %add, ptr %rowgroups_avail, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %23 = load ptr, ptr %the_main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %the_main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %27 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %26, i64 %idxprom6
  %28 = load ptr, ptr %arrayidx7, align 8
  store ptr %28, ptr %xbuf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end5
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %rgroup, align 4
  %mul9 = mul nsw i32 %30, 2
  %cmp10 = icmp slt i32 %29, %mul9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %31 = load ptr, ptr %xbuf, align 8
  %32 = load i32, ptr %rows_left, align 4
  %sub12 = sub nsw i32 %32, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %31, i64 %idxprom13
  %33 = load ptr, ptr %arrayidx14, align 8
  %34 = load ptr, ptr %xbuf, align 8
  %35 = load i32, ptr %rows_left, align 4
  %36 = load i32, ptr %i, align 4
  %add15 = add nsw i32 %35, %36
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %34, i64 %idxprom16
  store ptr %33, ptr %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond8, !llvm.loop !13

for.end:                                          ; preds = %for.cond8
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %38 = load i32, ptr %ci, align 4
  %inc19 = add nsw i32 %38, 1
  store i32 %inc19, ptr %ci, align 4
  %39 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !14

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @set_wraparound_pointers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %the_main = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %xbuf0 = alloca ptr, align 8
  %xbuf1 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main, align 8
  store ptr %1, ptr %the_main, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 59
  %3 = load i32, ptr %min_DCT_scaled_size, align 4
  store i32 %3, ptr %M, align 4
  store i32 0, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 43
  %5 = load ptr, ptr %comp_info, align 8
  store ptr %5, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %11 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 9
  %12 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 59
  %14 = load i32, ptr %min_DCT_scaled_size1, align 4
  %div = sdiv i32 %mul, %14
  store i32 %div, ptr %rgroup, align 4
  %15 = load ptr, ptr %the_main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx2, align 8
  store ptr %18, ptr %xbuf0, align 8
  %19 = load ptr, ptr %the_main, align 8
  %xbuffer3 = getelementptr inbounds %struct.my_main_controller, ptr %19, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %xbuffer3, i64 0, i64 1
  %20 = load ptr, ptr %arrayidx4, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %21 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %20, i64 %idxprom5
  %22 = load ptr, ptr %arrayidx6, align 8
  store ptr %22, ptr %xbuf1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %rgroup, align 4
  %cmp8 = icmp slt i32 %23, %24
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %25 = load ptr, ptr %xbuf0, align 8
  %26 = load i32, ptr %rgroup, align 4
  %27 = load i32, ptr %M, align 4
  %add = add nsw i32 %27, 1
  %mul10 = mul nsw i32 %26, %add
  %28 = load i32, ptr %i, align 4
  %add11 = add nsw i32 %mul10, %28
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %25, i64 %idxprom12
  %29 = load ptr, ptr %arrayidx13, align 8
  %30 = load ptr, ptr %xbuf0, align 8
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %rgroup, align 4
  %sub = sub nsw i32 %31, %32
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %30, i64 %idxprom14
  store ptr %29, ptr %arrayidx15, align 8
  %33 = load ptr, ptr %xbuf1, align 8
  %34 = load i32, ptr %rgroup, align 4
  %35 = load i32, ptr %M, align 4
  %add16 = add nsw i32 %35, 1
  %mul17 = mul nsw i32 %34, %add16
  %36 = load i32, ptr %i, align 4
  %add18 = add nsw i32 %mul17, %36
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %33, i64 %idxprom19
  %37 = load ptr, ptr %arrayidx20, align 8
  %38 = load ptr, ptr %xbuf1, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %rgroup, align 4
  %sub21 = sub nsw i32 %39, %40
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %38, i64 %idxprom22
  store ptr %37, ptr %arrayidx23, align 8
  %41 = load ptr, ptr %xbuf0, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %42 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %41, i64 %idxprom24
  %43 = load ptr, ptr %arrayidx25, align 8
  %44 = load ptr, ptr %xbuf0, align 8
  %45 = load i32, ptr %rgroup, align 4
  %46 = load i32, ptr %M, align 4
  %add26 = add nsw i32 %46, 2
  %mul27 = mul nsw i32 %45, %add26
  %47 = load i32, ptr %i, align 4
  %add28 = add nsw i32 %mul27, %47
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %44, i64 %idxprom29
  store ptr %43, ptr %arrayidx30, align 8
  %48 = load ptr, ptr %xbuf1, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %49 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %48, i64 %idxprom31
  %50 = load ptr, ptr %arrayidx32, align 8
  %51 = load ptr, ptr %xbuf1, align 8
  %52 = load i32, ptr %rgroup, align 4
  %53 = load i32, ptr %M, align 4
  %add33 = add nsw i32 %53, 2
  %mul34 = mul nsw i32 %52, %add33
  %54 = load i32, ptr %i, align 4
  %add35 = add nsw i32 %mul34, %54
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %51, i64 %idxprom36
  store ptr %50, ptr %arrayidx37, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %55 = load i32, ptr %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond7, !llvm.loop !15

for.end:                                          ; preds = %for.cond7
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %56 = load i32, ptr %ci, align 4
  %inc39 = add nsw i32 %56, 1
  store i32 %inc39, ptr %ci, align 4
  %57 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !16

for.end40:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
