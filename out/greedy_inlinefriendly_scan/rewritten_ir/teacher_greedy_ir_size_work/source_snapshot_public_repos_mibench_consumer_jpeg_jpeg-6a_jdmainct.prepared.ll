; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmainct.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmainct.c"
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 136)
  store ptr %call, ptr %main, align 8
  %4 = load ptr, ptr %main, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 74
  store ptr %4, ptr %main1, align 8
  %6 = load ptr, ptr %main, align 8
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
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err2, align 8
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
  %tobool3 = icmp ne i32 %16, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %17 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 59
  %18 = load i32, ptr %min_DCT_scaled_size, align 4
  %cmp = icmp slt i32 %18, 2
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 46, ptr %msg_code7, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err8, align 8
  %error_exit9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit9, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then4
  %25 = load ptr, ptr %cinfo.addr, align 8
  call void @alloc_funny_pointers(ptr noundef %25)
  %26 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 59
  %27 = load i32, ptr %min_DCT_scaled_size11, align 4
  %add = add nsw i32 %27, 2
  store i32 %add, ptr %ngroups, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %28 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 59
  %29 = load i32, ptr %min_DCT_scaled_size12, align 4
  store i32 %29, ptr %ngroups, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end10
  store i32 0, ptr %ci, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 43
  %31 = load ptr, ptr %comp_info, align 8
  store ptr %31, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %32 = load i32, ptr %ci, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 8
  %34 = load i32, ptr %num_components, align 8
  %cmp14 = icmp slt i32 %32, %34
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %v_samp_factor, align 4
  %37 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 9
  %38 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %36, %38
  %39 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 59
  %40 = load i32, ptr %min_DCT_scaled_size15, align 4
  %div = sdiv i32 %mul, %40
  store i32 %div, ptr %rgroup, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %mem16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %mem16, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %alloc_sarray, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i32 0, i32 7
  %46 = load i32, ptr %width_in_blocks, align 4
  %47 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size17 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 9
  %48 = load i32, ptr %DCT_scaled_size17, align 4
  %mul18 = mul i32 %46, %48
  %49 = load i32, ptr %rgroup, align 4
  %50 = load i32, ptr %ngroups, align 4
  %mul19 = mul nsw i32 %49, %50
  %call20 = call ptr %43(ptr noundef %44, i32 noundef 1, i32 noundef %mul18, i32 noundef %mul19)
  %51 = load ptr, ptr %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 %idxprom
  store ptr %call20, ptr %arrayidx, align 8
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

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_main(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %main = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pass_mode, ptr %pass_mode.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  %2 = load i32, ptr %pass_mode.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
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
  %6 = load ptr, ptr %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, ptr %6, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub, i32 0, i32 1
  store ptr @process_data_context_main, ptr %process_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @make_funny_pointers(ptr noundef %7)
  %8 = load ptr, ptr %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 5
  store i32 0, ptr %whichptr, align 8
  %9 = load ptr, ptr %main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %9, i32 0, i32 6
  store i32 0, ptr %context_state, align 4
  %10 = load ptr, ptr %main, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %10, i32 0, i32 8
  store i32 0, ptr %iMCU_row_ctr, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %main, align 8
  %pub2 = getelementptr inbounds %struct.my_main_controller, ptr %11, i32 0, i32 0
  %process_data3 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub2, i32 0, i32 1
  store ptr @process_data_simple_main, ptr %process_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %12, i32 0, i32 2
  store i32 0, ptr %buffer_full, align 8
  %13 = load ptr, ptr %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %13, i32 0, i32 3
  store i32 0, ptr %rowgroup_ctr, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %14 = load ptr, ptr %main, align 8
  %pub5 = getelementptr inbounds %struct.my_main_controller, ptr %14, i32 0, i32 0
  %process_data6 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %pub5, i32 0, i32 1
  store ptr @process_data_crank_post, ptr %process_data6, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
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
  %mul2 = mul i64 %conv, 8
  %call = call ptr %6(ptr noundef %7, i32 noundef 1, i64 noundef %mul2)
  %10 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %10, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 0
  store ptr %call, ptr %arrayidx, align 8
  %11 = load ptr, ptr %main, align 8
  %xbuffer3 = getelementptr inbounds %struct.my_main_controller, ptr %11, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %xbuffer3, i64 0, i64 0
  %12 = load ptr, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %num_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %num_components5, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %12, i64 %idx.ext
  %15 = load ptr, ptr %main, align 8
  %xbuffer6 = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x ptr], ptr %xbuffer6, i64 0, i64 1
  store ptr %add.ptr, ptr %arrayidx7, align 8
  store i32 0, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 43
  %17 = load ptr, ptr %comp_info, align 8
  store ptr %17, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %ci, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %num_components8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %num_components8, align 8
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %v_samp_factor, align 4
  %23 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %DCT_scaled_size, align 4
  %mul10 = mul nsw i32 %22, %24
  %25 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 59
  %26 = load i32, ptr %min_DCT_scaled_size11, align 4
  %div = sdiv i32 %mul10, %26
  store i32 %div, ptr %rgroup, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %mem12, align 8
  %alloc_small13 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %alloc_small13, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load i32, ptr %rgroup, align 4
  %32 = load i32, ptr %M, align 4
  %add = add nsw i32 %32, 4
  %mul14 = mul nsw i32 %31, %add
  %mul15 = mul nsw i32 2, %mul14
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call ptr %29(ptr noundef %30, i32 noundef 1, i64 noundef %mul17)
  store ptr %call18, ptr %xbuf, align 8
  %33 = load i32, ptr %rgroup, align 4
  %34 = load ptr, ptr %xbuf, align 8
  %idx.ext19 = sext i32 %33 to i64
  %add.ptr20 = getelementptr inbounds ptr, ptr %34, i64 %idx.ext19
  store ptr %add.ptr20, ptr %xbuf, align 8
  %35 = load ptr, ptr %xbuf, align 8
  %36 = load ptr, ptr %main, align 8
  %xbuffer21 = getelementptr inbounds %struct.my_main_controller, ptr %36, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [2 x ptr], ptr %xbuffer21, i64 0, i64 0
  %37 = load ptr, ptr %arrayidx22, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %37, i64 %idxprom
  store ptr %35, ptr %arrayidx23, align 8
  %39 = load i32, ptr %rgroup, align 4
  %40 = load i32, ptr %M, align 4
  %add24 = add nsw i32 %40, 4
  %mul25 = mul nsw i32 %39, %add24
  %41 = load ptr, ptr %xbuf, align 8
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds ptr, ptr %41, i64 %idx.ext26
  store ptr %add.ptr27, ptr %xbuf, align 8
  %42 = load ptr, ptr %xbuf, align 8
  %43 = load ptr, ptr %main, align 8
  %xbuffer28 = getelementptr inbounds %struct.my_main_controller, ptr %43, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [2 x ptr], ptr %xbuffer28, i64 0, i64 1
  %44 = load ptr, ptr %arrayidx29, align 8
  %45 = load i32, ptr %ci, align 4
  %idxprom30 = sext i32 %45 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %44, i64 %idxprom30
  store ptr %42, ptr %arrayidx31, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  %2 = load ptr, ptr %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %buffer_full, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 75
  %5 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %decompress_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %call = call i32 %6(ptr noundef %7, ptr noundef %11)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %main, align 8
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, ptr %12, i32 0, i32 2
  store i32 1, ptr %buffer_full4, align 8
  %13 = load ptr, ptr %main, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %iMCU_row_ctr, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %iMCU_row_ctr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %context_state, align 4
  switch i32 %16, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb18
    i32 1, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end5
  %17 = load ptr, ptr %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 76
  %18 = load ptr, ptr %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %post_process_data, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %main, align 8
  %xbuffer6 = getelementptr inbounds %struct.my_main_controller, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %main, align 8
  %whichptr7 = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %whichptr7, align 8
  %idxprom8 = sext i32 %23 to i64
  %arrayidx9 = getelementptr inbounds [2 x ptr], ptr %xbuffer6, i64 0, i64 %idxprom8
  %24 = load ptr, ptr %arrayidx9, align 8
  %25 = load ptr, ptr %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %rowgroups_avail, align 8
  %28 = load ptr, ptr %output_buf.addr, align 8
  %29 = load ptr, ptr %out_row_ctr.addr, align 8
  %30 = load i32, ptr %out_rows_avail.addr, align 4
  call void %19(ptr noundef %20, ptr noundef %24, ptr noundef %rowgroup_ctr, i32 noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30)
  %31 = load ptr, ptr %main, align 8
  %rowgroup_ctr10 = getelementptr inbounds %struct.my_main_controller, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %rowgroup_ctr10, align 4
  %33 = load ptr, ptr %main, align 8
  %rowgroups_avail11 = getelementptr inbounds %struct.my_main_controller, ptr %33, i32 0, i32 7
  %34 = load i32, ptr %rowgroups_avail11, align 8
  %cmp = icmp ult i32 %32, %34
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb
  %35 = load ptr, ptr %main, align 8
  %context_state14 = getelementptr inbounds %struct.my_main_controller, ptr %35, i32 0, i32 6
  store i32 0, ptr %context_state14, align 4
  %36 = load ptr, ptr %out_row_ctr.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %out_rows_avail.addr, align 4
  %cmp15 = icmp uge i32 %37, %38
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %sw.epilog

if.end17:                                         ; preds = %if.end13
  br label %sw.bb18

sw.bb18:                                          ; preds = %if.end5, %if.end17
  %39 = load ptr, ptr %main, align 8
  %rowgroup_ctr19 = getelementptr inbounds %struct.my_main_controller, ptr %39, i32 0, i32 3
  store i32 0, ptr %rowgroup_ctr19, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 59
  %41 = load i32, ptr %min_DCT_scaled_size, align 4
  %sub = sub nsw i32 %41, 1
  %42 = load ptr, ptr %main, align 8
  %rowgroups_avail20 = getelementptr inbounds %struct.my_main_controller, ptr %42, i32 0, i32 7
  store i32 %sub, ptr %rowgroups_avail20, align 8
  %43 = load ptr, ptr %main, align 8
  %iMCU_row_ctr21 = getelementptr inbounds %struct.my_main_controller, ptr %43, i32 0, i32 8
  %44 = load i32, ptr %iMCU_row_ctr21, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 60
  %46 = load i32, ptr %total_iMCU_rows, align 8
  %cmp22 = icmp eq i32 %44, %46
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb18
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmainct_0(ptr noundef %47)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %sw.bb18
  %48 = load ptr, ptr %main, align 8
  %context_state25 = getelementptr inbounds %struct.my_main_controller, ptr %48, i32 0, i32 6
  store i32 1, ptr %context_state25, align 4
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end5, %if.end24
  %49 = load ptr, ptr %cinfo.addr, align 8
  %post27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 76
  %50 = load ptr, ptr %post27, align 8
  %post_process_data28 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %post_process_data28, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %main, align 8
  %xbuffer29 = getelementptr inbounds %struct.my_main_controller, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %main, align 8
  %whichptr30 = getelementptr inbounds %struct.my_main_controller, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %whichptr30, align 8
  %idxprom31 = sext i32 %55 to i64
  %arrayidx32 = getelementptr inbounds [2 x ptr], ptr %xbuffer29, i64 0, i64 %idxprom31
  %56 = load ptr, ptr %arrayidx32, align 8
  %57 = load ptr, ptr %main, align 8
  %rowgroup_ctr33 = getelementptr inbounds %struct.my_main_controller, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %main, align 8
  %rowgroups_avail34 = getelementptr inbounds %struct.my_main_controller, ptr %58, i32 0, i32 7
  %59 = load i32, ptr %rowgroups_avail34, align 8
  %60 = load ptr, ptr %output_buf.addr, align 8
  %61 = load ptr, ptr %out_row_ctr.addr, align 8
  %62 = load i32, ptr %out_rows_avail.addr, align 4
  call void %51(ptr noundef %52, ptr noundef %56, ptr noundef %rowgroup_ctr33, i32 noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %main, align 8
  %rowgroup_ctr35 = getelementptr inbounds %struct.my_main_controller, ptr %63, i32 0, i32 3
  %64 = load i32, ptr %rowgroup_ctr35, align 4
  %65 = load ptr, ptr %main, align 8
  %rowgroups_avail36 = getelementptr inbounds %struct.my_main_controller, ptr %65, i32 0, i32 7
  %66 = load i32, ptr %rowgroups_avail36, align 8
  %cmp37 = icmp ult i32 %64, %66
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %sw.bb26
  br label %sw.epilog

if.end39:                                         ; preds = %sw.bb26
  %67 = load ptr, ptr %main, align 8
  %iMCU_row_ctr40 = getelementptr inbounds %struct.my_main_controller, ptr %67, i32 0, i32 8
  %68 = load i32, ptr %iMCU_row_ctr40, align 4
  %cmp41 = icmp eq i32 %68, 1
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  %69 = load ptr, ptr %cinfo.addr, align 8
  call void @set_wraparound_pointers(ptr noundef %69)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %70 = load ptr, ptr %main, align 8
  %whichptr44 = getelementptr inbounds %struct.my_main_controller, ptr %70, i32 0, i32 5
  %71 = load i32, ptr %whichptr44, align 8
  %xor = xor i32 %71, 1
  store i32 %xor, ptr %whichptr44, align 8
  %72 = load ptr, ptr %main, align 8
  %buffer_full45 = getelementptr inbounds %struct.my_main_controller, ptr %72, i32 0, i32 2
  store i32 0, ptr %buffer_full45, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 59
  %74 = load i32, ptr %min_DCT_scaled_size46, align 4
  %add = add nsw i32 %74, 1
  %75 = load ptr, ptr %main, align 8
  %rowgroup_ctr47 = getelementptr inbounds %struct.my_main_controller, ptr %75, i32 0, i32 3
  store i32 %add, ptr %rowgroup_ctr47, align 4
  %76 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 59
  %77 = load i32, ptr %min_DCT_scaled_size48, align 4
  %add49 = add nsw i32 %77, 2
  %78 = load ptr, ptr %main, align 8
  %rowgroups_avail50 = getelementptr inbounds %struct.my_main_controller, ptr %78, i32 0, i32 7
  store i32 %add49, ptr %rowgroups_avail50, align 8
  %79 = load ptr, ptr %main, align 8
  %context_state51 = getelementptr inbounds %struct.my_main_controller, ptr %79, i32 0, i32 6
  store i32 2, ptr %context_state51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %if.then12, %if.then16, %if.then38, %if.end43, %if.end5
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
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

for.cond:                                         ; preds = %for.inc54, %entry
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end56

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %11 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 9
  %12 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 59
  %14 = load i32, ptr %min_DCT_scaled_size2, align 4
  %div = sdiv i32 %mul, %14
  store i32 %div, ptr %rgroup, align 4
  %15 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx3, align 8
  store ptr %18, ptr %xbuf0, align 8
  %19 = load ptr, ptr %main, align 8
  %xbuffer4 = getelementptr inbounds %struct.my_main_controller, ptr %19, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [2 x ptr], ptr %xbuffer4, i64 0, i64 1
  %20 = load ptr, ptr %arrayidx5, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %20, i64 %idxprom6
  %22 = load ptr, ptr %arrayidx7, align 8
  store ptr %22, ptr %xbuf1, align 8
  %23 = load ptr, ptr %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %ci, align 4
  %idxprom8 = sext i32 %24 to i64
  %arrayidx9 = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 %idxprom8
  %25 = load ptr, ptr %arrayidx9, align 8
  store ptr %25, ptr %buf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %rgroup, align 4
  %28 = load i32, ptr %M, align 4
  %add = add nsw i32 %28, 2
  %mul11 = mul nsw i32 %27, %add
  %cmp12 = icmp slt i32 %26, %mul11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %29 = load ptr, ptr %buf, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %29, i64 %idxprom14
  %31 = load ptr, ptr %arrayidx15, align 8
  %32 = load ptr, ptr %xbuf1, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %32, i64 %idxprom16
  store ptr %31, ptr %arrayidx17, align 8
  %34 = load ptr, ptr %xbuf0, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %35 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %34, i64 %idxprom18
  store ptr %31, ptr %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond10, !llvm.loop !9

for.end:                                          ; preds = %for.cond10
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc41, %for.end
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %rgroup, align 4
  %mul21 = mul nsw i32 %38, 2
  %cmp22 = icmp slt i32 %37, %mul21
  br i1 %cmp22, label %for.body23, label %for.end43

for.body23:                                       ; preds = %for.cond20
  %39 = load ptr, ptr %buf, align 8
  %40 = load i32, ptr %rgroup, align 4
  %41 = load i32, ptr %M, align 4
  %mul24 = mul nsw i32 %40, %41
  %42 = load i32, ptr %i, align 4
  %add25 = add nsw i32 %mul24, %42
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %39, i64 %idxprom26
  %43 = load ptr, ptr %arrayidx27, align 8
  %44 = load ptr, ptr %xbuf1, align 8
  %45 = load i32, ptr %rgroup, align 4
  %46 = load i32, ptr %M, align 4
  %sub = sub nsw i32 %46, 2
  %mul28 = mul nsw i32 %45, %sub
  %47 = load i32, ptr %i, align 4
  %add29 = add nsw i32 %mul28, %47
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %44, i64 %idxprom30
  store ptr %43, ptr %arrayidx31, align 8
  %48 = load ptr, ptr %buf, align 8
  %49 = load i32, ptr %rgroup, align 4
  %50 = load i32, ptr %M, align 4
  %sub32 = sub nsw i32 %50, 2
  %mul33 = mul nsw i32 %49, %sub32
  %51 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %mul33, %51
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %48, i64 %idxprom35
  %52 = load ptr, ptr %arrayidx36, align 8
  %53 = load ptr, ptr %xbuf1, align 8
  %54 = load i32, ptr %rgroup, align 4
  %55 = load i32, ptr %M, align 4
  %mul37 = mul nsw i32 %54, %55
  %56 = load i32, ptr %i, align 4
  %add38 = add nsw i32 %mul37, %56
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %53, i64 %idxprom39
  store ptr %52, ptr %arrayidx40, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23
  %57 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %57, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond20, !llvm.loop !10

for.end43:                                        ; preds = %for.cond20
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end43
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %rgroup, align 4
  %cmp45 = icmp slt i32 %58, %59
  br i1 %cmp45, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond44
  %60 = load ptr, ptr %xbuf0, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %60, i64 0
  %61 = load ptr, ptr %arrayidx47, align 8
  %62 = load ptr, ptr %xbuf0, align 8
  %63 = load i32, ptr %i, align 4
  %64 = load i32, ptr %rgroup, align 4
  %sub48 = sub nsw i32 %63, %64
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %62, i64 %idxprom49
  store ptr %61, ptr %arrayidx50, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.body46
  %65 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %65, 1
  store i32 %inc52, ptr %i, align 4
  br label %for.cond44, !llvm.loop !11

for.end53:                                        ; preds = %for.cond44
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %66 = load i32, ptr %ci, align 4
  %inc55 = add nsw i32 %66, 1
  store i32 %inc55, ptr %ci, align 4
  %67 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  %2 = load ptr, ptr %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %buffer_full, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 75
  %5 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %decompress_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, ptr %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %buffer, i64 0, i64 0
  %call = call i32 %6(ptr noundef %7, ptr noundef %arraydecay)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %if.end12

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %main, align 8
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, ptr %9, i32 0, i32 2
  store i32 1, ptr %buffer_full4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
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
  %16 = load ptr, ptr %main, align 8
  %buffer6 = getelementptr inbounds %struct.my_main_controller, ptr %16, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [10 x ptr], ptr %buffer6, i64 0, i64 0
  %17 = load ptr, ptr %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %rowgroups_avail, align 4
  %19 = load ptr, ptr %output_buf.addr, align 8
  %20 = load ptr, ptr %out_row_ctr.addr, align 8
  %21 = load i32, ptr %out_rows_avail.addr, align 4
  call void %14(ptr noundef %15, ptr noundef %arraydecay7, ptr noundef %rowgroup_ctr, i32 noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %main, align 8
  %rowgroup_ctr8 = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %rowgroup_ctr8, align 4
  %24 = load i32, ptr %rowgroups_avail, align 4
  %cmp = icmp uge i32 %23, %24
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  %25 = load ptr, ptr %main, align 8
  %buffer_full10 = getelementptr inbounds %struct.my_main_controller, ptr %25, i32 0, i32 2
  store i32 0, ptr %buffer_full10, align 8
  %26 = load ptr, ptr %main, align 8
  %rowgroup_ctr11 = getelementptr inbounds %struct.my_main_controller, ptr %26, i32 0, i32 3
  store i32 0, ptr %rowgroup_ctr11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.then9, %if.end5
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 43
  %3 = load ptr, ptr %comp_info, align 8
  store ptr %3, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end21

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
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32, ptr %iMCUheight, align 4
  store i32 %18, ptr %rows_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, ptr %ci, align 4
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %20 = load i32, ptr %rows_left, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load i32, ptr %rgroup, align 4
  %div5 = sdiv i32 %sub, %21
  %add = add nsw i32 %div5, 1
  %22 = load ptr, ptr %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 7
  store i32 %add, ptr %rowgroups_avail, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %23 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load i32, ptr %ci, align 4
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %26, i64 %idxprom7
  %28 = load ptr, ptr %arrayidx8, align 8
  store ptr %28, ptr %xbuf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.end6
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %rgroup, align 4
  %mul10 = mul nsw i32 %30, 2
  %cmp11 = icmp slt i32 %29, %mul10
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond9
  %31 = load ptr, ptr %xbuf, align 8
  %32 = load i32, ptr %rows_left, align 4
  %sub13 = sub nsw i32 %32, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %31, i64 %idxprom14
  %33 = load ptr, ptr %arrayidx15, align 8
  %34 = load ptr, ptr %xbuf, align 8
  %35 = load i32, ptr %rows_left, align 4
  %36 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %35, %36
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %34, i64 %idxprom17
  store ptr %33, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond9, !llvm.loop !13

for.end:                                          ; preds = %for.cond9
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %38 = load i32, ptr %ci, align 4
  %inc20 = add nsw i32 %38, 1
  store i32 %inc20, ptr %ci, align 4
  %39 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
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

for.cond:                                         ; preds = %for.inc39, %entry
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %v_samp_factor, align 4
  %11 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 9
  %12 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 59
  %14 = load i32, ptr %min_DCT_scaled_size2, align 4
  %div = sdiv i32 %mul, %14
  store i32 %div, ptr %rgroup, align 4
  %15 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx3, align 8
  store ptr %18, ptr %xbuf0, align 8
  %19 = load ptr, ptr %main, align 8
  %xbuffer4 = getelementptr inbounds %struct.my_main_controller, ptr %19, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [2 x ptr], ptr %xbuffer4, i64 0, i64 1
  %20 = load ptr, ptr %arrayidx5, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %20, i64 %idxprom6
  %22 = load ptr, ptr %arrayidx7, align 8
  store ptr %22, ptr %xbuf1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %rgroup, align 4
  %cmp9 = icmp slt i32 %23, %24
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %25 = load ptr, ptr %xbuf0, align 8
  %26 = load i32, ptr %rgroup, align 4
  %27 = load i32, ptr %M, align 4
  %add = add nsw i32 %27, 1
  %mul11 = mul nsw i32 %26, %add
  %28 = load i32, ptr %i, align 4
  %add12 = add nsw i32 %mul11, %28
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %25, i64 %idxprom13
  %29 = load ptr, ptr %arrayidx14, align 8
  %30 = load ptr, ptr %xbuf0, align 8
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %rgroup, align 4
  %sub = sub nsw i32 %31, %32
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %30, i64 %idxprom15
  store ptr %29, ptr %arrayidx16, align 8
  %33 = load ptr, ptr %xbuf1, align 8
  %34 = load i32, ptr %rgroup, align 4
  %35 = load i32, ptr %M, align 4
  %add17 = add nsw i32 %35, 1
  %mul18 = mul nsw i32 %34, %add17
  %36 = load i32, ptr %i, align 4
  %add19 = add nsw i32 %mul18, %36
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %33, i64 %idxprom20
  %37 = load ptr, ptr %arrayidx21, align 8
  %38 = load ptr, ptr %xbuf1, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %rgroup, align 4
  %sub22 = sub nsw i32 %39, %40
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %38, i64 %idxprom23
  store ptr %37, ptr %arrayidx24, align 8
  %41 = load ptr, ptr %xbuf0, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %42 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %41, i64 %idxprom25
  %43 = load ptr, ptr %arrayidx26, align 8
  %44 = load ptr, ptr %xbuf0, align 8
  %45 = load i32, ptr %rgroup, align 4
  %46 = load i32, ptr %M, align 4
  %add27 = add nsw i32 %46, 2
  %mul28 = mul nsw i32 %45, %add27
  %47 = load i32, ptr %i, align 4
  %add29 = add nsw i32 %mul28, %47
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %44, i64 %idxprom30
  store ptr %43, ptr %arrayidx31, align 8
  %48 = load ptr, ptr %xbuf1, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %49 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %48, i64 %idxprom32
  %50 = load ptr, ptr %arrayidx33, align 8
  %51 = load ptr, ptr %xbuf1, align 8
  %52 = load i32, ptr %rgroup, align 4
  %53 = load i32, ptr %M, align 4
  %add34 = add nsw i32 %53, 2
  %mul35 = mul nsw i32 %52, %add34
  %54 = load i32, ptr %i, align 4
  %add36 = add nsw i32 %mul35, %54
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %51, i64 %idxprom37
  store ptr %50, ptr %arrayidx38, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %55 = load i32, ptr %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond8, !llvm.loop !15

for.end:                                          ; preds = %for.cond8
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %56 = load i32, ptr %ci, align 4
  %inc40 = add nsw i32 %56, 1
  store i32 %inc40, ptr %ci, align 4
  %57 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !16

for.end41:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmainct_0(ptr noundef %cinfo)  alwaysinline#0 {
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 74
  %1 = load ptr, ptr %main1, align 8
  store ptr %1, ptr %main, align 8
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 43
  %3 = load ptr, ptr %comp_info, align 8
  store ptr %3, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end21

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
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32, ptr %iMCUheight, align 4
  store i32 %18, ptr %rows_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, ptr %ci, align 4
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %20 = load i32, ptr %rows_left, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load i32, ptr %rgroup, align 4
  %div5 = sdiv i32 %sub, %21
  %add = add nsw i32 %div5, 1
  %22 = load ptr, ptr %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, ptr %22, i32 0, i32 7
  store i32 %add, ptr %rowgroups_avail, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %23 = load ptr, ptr %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %whichptr, align 8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %xbuffer, i64 0, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load i32, ptr %ci, align 4
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %26, i64 %idxprom7
  %28 = load ptr, ptr %arrayidx8, align 8
  store ptr %28, ptr %xbuf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.end6
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %rgroup, align 4
  %mul10 = mul nsw i32 %30, 2
  %cmp11 = icmp slt i32 %29, %mul10
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond9
  %31 = load ptr, ptr %xbuf, align 8
  %32 = load i32, ptr %rows_left, align 4
  %sub13 = sub nsw i32 %32, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %31, i64 %idxprom14
  %33 = load ptr, ptr %arrayidx15, align 8
  %34 = load ptr, ptr %xbuf, align 8
  %35 = load i32, ptr %rows_left, align 4
  %36 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %35, %36
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %34, i64 %idxprom17
  store ptr %33, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond9, !llvm.loop !13

for.end:                                          ; preds = %for.cond9
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %38 = load i32, ptr %ci, align 4
  %inc20 = add nsw i32 %38, 1
  store i32 %inc20, ptr %ci, align 4
  %39 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !14

for.end21:                                        ; preds = %for.cond
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
