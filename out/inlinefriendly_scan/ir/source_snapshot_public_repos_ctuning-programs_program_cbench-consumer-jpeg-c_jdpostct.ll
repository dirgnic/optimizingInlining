; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdpostct.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdpostct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_post_controller = type { %struct.jpeg_d_post_controller, ptr, ptr, i32, i32, i32 }
%struct.jpeg_d_post_controller = type { ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_d_post_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 48)
  store ptr %call, ptr %post, align 8
  %4 = load ptr, ptr %post, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 76
  store ptr %4, ptr %post1, align 8
  %6 = load ptr, ptr %post, align 8
  %pub = getelementptr inbounds %struct.my_post_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_dpost, ptr %start_pass, align 8
  %7 = load ptr, ptr %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %7, i32 0, i32 1
  store ptr null, ptr %whole_image, align 8
  %8 = load ptr, ptr %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %8, i32 0, i32 2
  store ptr null, ptr %buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 19
  %10 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 58
  %12 = load i32, ptr %max_v_samp_factor, align 8
  %13 = load ptr, ptr %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %13, i32 0, i32 3
  store i32 %12, ptr %strip_height, align 8
  %14 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool2 = icmp ne i32 %14, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %15 = load ptr, ptr %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %mem4, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %request_virt_sarray, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 26
  %20 = load i32, ptr %output_width, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 28
  %22 = load i32, ptr %out_color_components, align 8
  %mul = mul i32 %20, %22
  %23 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 27
  %24 = load i32, ptr %output_height, align 4
  %conv = zext i32 %24 to i64
  %25 = load ptr, ptr %post, align 8
  %strip_height5 = getelementptr inbounds %struct.my_post_controller, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %strip_height5, align 8
  %conv6 = zext i32 %26 to i64
  %call7 = call i64 @jround_up(i64 noundef %conv, i64 noundef %conv6)
  %conv8 = trunc i64 %call7 to i32
  %27 = load ptr, ptr %post, align 8
  %strip_height9 = getelementptr inbounds %struct.my_post_controller, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %strip_height9, align 8
  %call10 = call ptr %17(ptr noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef %mul, i32 noundef %conv8, i32 noundef %28)
  %29 = load ptr, ptr %post, align 8
  %whole_image11 = getelementptr inbounds %struct.my_post_controller, ptr %29, i32 0, i32 1
  store ptr %call10, ptr %whole_image11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %30 = load ptr, ptr %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %mem12, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %alloc_sarray, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %output_width13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 26
  %35 = load i32, ptr %output_width13, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 28
  %37 = load i32, ptr %out_color_components14, align 8
  %mul15 = mul i32 %35, %37
  %38 = load ptr, ptr %post, align 8
  %strip_height16 = getelementptr inbounds %struct.my_post_controller, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %strip_height16, align 8
  %call17 = call ptr %32(ptr noundef %33, i32 noundef 1, i32 noundef %mul15, i32 noundef %39)
  %40 = load ptr, ptr %post, align 8
  %buffer18 = getelementptr inbounds %struct.my_post_controller, ptr %40, i32 0, i32 2
  store ptr %call17, ptr %buffer18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass_dpost(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pass_mode, ptr %pass_mode.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 76
  %1 = load ptr, ptr %post1, align 8
  store ptr %1, ptr %post, align 8
  %2 = load i32, ptr %pass_mode.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb8
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 19
  %4 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %post, align 8
  %pub = getelementptr inbounds %struct.my_post_controller, ptr %5, i32 0, i32 0
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub, i32 0, i32 1
  store ptr @post_process_1pass, ptr %post_process_data, align 8
  %6 = load ptr, ptr %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %buffer, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %access_virt_sarray, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %whole_image, align 8
  %14 = load ptr, ptr %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %strip_height, align 8
  %call = call ptr %10(ptr noundef %11, ptr noundef %13, i32 noundef 0, i32 noundef %15, i32 noundef 1)
  %16 = load ptr, ptr %post, align 8
  %buffer3 = getelementptr inbounds %struct.my_post_controller, ptr %16, i32 0, i32 2
  store ptr %call, ptr %buffer3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end7

if.else:                                          ; preds = %sw.bb
  %17 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 81
  %18 = load ptr, ptr %upsample, align 8
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %upsample4, align 8
  %20 = load ptr, ptr %post, align 8
  %pub5 = getelementptr inbounds %struct.my_post_controller, ptr %20, i32 0, i32 0
  %post_process_data6 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub5, i32 0, i32 1
  store ptr %19, ptr %post_process_data6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %21 = load ptr, ptr %post, align 8
  %whole_image9 = getelementptr inbounds %struct.my_post_controller, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %whole_image9, align 8
  %cmp10 = icmp eq ptr %22, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %sw.bb8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err12, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %error_exit, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  call void %27(ptr noundef %28)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb8
  %29 = load ptr, ptr %post, align 8
  %pub14 = getelementptr inbounds %struct.my_post_controller, ptr %29, i32 0, i32 0
  %post_process_data15 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub14, i32 0, i32 1
  store ptr @post_process_prepass, ptr %post_process_data15, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %30 = load ptr, ptr %post, align 8
  %whole_image17 = getelementptr inbounds %struct.my_post_controller, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %whole_image17, align 8
  %cmp18 = icmp eq ptr %31, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %sw.bb16
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5
  store i32 4, ptr %msg_code21, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %error_exit23, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  call void %36(ptr noundef %37)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %sw.bb16
  %38 = load ptr, ptr %post, align 8
  %pub25 = getelementptr inbounds %struct.my_post_controller, ptr %38, i32 0, i32 0
  %post_process_data26 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub25, i32 0, i32 1
  store ptr @post_process_2pass, ptr %post_process_data26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load ptr, ptr %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %err27, align 8
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i32 0, i32 5
  store i32 4, ptr %msg_code28, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %err29, align 8
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %error_exit30, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  call void %43(ptr noundef %44)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end24, %if.end13, %if.end7
  %45 = load ptr, ptr %post, align 8
  %next_row = getelementptr inbounds %struct.my_post_controller, ptr %45, i32 0, i32 5
  store i32 0, ptr %next_row, align 8
  %46 = load ptr, ptr %post, align 8
  %starting_row = getelementptr inbounds %struct.my_post_controller, ptr %46, i32 0, i32 4
  store i32 0, ptr %starting_row, align 4
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @post_process_1pass(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 76
  %1 = load ptr, ptr %post1, align 8
  store ptr %1, ptr %post, align 8
  %2 = load i32, ptr %out_rows_avail.addr, align 4
  %3 = load ptr, ptr %out_row_ctr.addr, align 8
  %4 = load i32, ptr %3, align 4
  %sub = sub i32 %2, %4
  store i32 %sub, ptr %max_rows, align 4
  %5 = load i32, ptr %max_rows, align 4
  %6 = load ptr, ptr %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %strip_height, align 8
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %post, align 8
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %strip_height2, align 8
  store i32 %9, ptr %max_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %num_rows, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 81
  %11 = load ptr, ptr %upsample, align 8
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %upsample3, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %input_buf.addr, align 8
  %15 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %16 = load i32, ptr %in_row_groups_avail.addr, align 4
  %17 = load ptr, ptr %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %buffer, align 8
  %19 = load i32, ptr %max_rows, align 4
  call void %12(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %18, ptr noundef %num_rows, i32 noundef %19)
  %20 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 83
  %21 = load ptr, ptr %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %color_quantize, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %post, align 8
  %buffer4 = getelementptr inbounds %struct.my_post_controller, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %buffer4, align 8
  %26 = load ptr, ptr %output_buf.addr, align 8
  %27 = load ptr, ptr %out_row_ctr.addr, align 8
  %28 = load i32, ptr %27, align 4
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %26, i64 %idx.ext
  %29 = load i32, ptr %num_rows, align 4
  call void %22(ptr noundef %23, ptr noundef %25, ptr noundef %add.ptr, i32 noundef %29)
  %30 = load i32, ptr %num_rows, align 4
  %31 = load ptr, ptr %out_row_ctr.addr, align 8
  %32 = load i32, ptr %31, align 4
  %add = add i32 %32, %30
  store i32 %add, ptr %31, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @post_process_prepass(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  %old_next_row = alloca i32, align 4
  %num_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 76
  %1 = load ptr, ptr %post1, align 8
  store ptr %1, ptr %post, align 8
  %2 = load ptr, ptr %post, align 8
  %next_row = getelementptr inbounds %struct.my_post_controller, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %next_row, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %access_virt_sarray, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %whole_image, align 8
  %10 = load ptr, ptr %post, align 8
  %starting_row = getelementptr inbounds %struct.my_post_controller, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %starting_row, align 4
  %12 = load ptr, ptr %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %strip_height, align 8
  %call = call ptr %6(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 1)
  %14 = load ptr, ptr %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %14, i32 0, i32 2
  store ptr %call, ptr %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %post, align 8
  %next_row2 = getelementptr inbounds %struct.my_post_controller, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %next_row2, align 8
  store i32 %16, ptr %old_next_row, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 81
  %18 = load ptr, ptr %upsample, align 8
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %upsample3, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %input_buf.addr, align 8
  %22 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %23 = load i32, ptr %in_row_groups_avail.addr, align 4
  %24 = load ptr, ptr %post, align 8
  %buffer4 = getelementptr inbounds %struct.my_post_controller, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %buffer4, align 8
  %26 = load ptr, ptr %post, align 8
  %next_row5 = getelementptr inbounds %struct.my_post_controller, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %post, align 8
  %strip_height6 = getelementptr inbounds %struct.my_post_controller, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %strip_height6, align 8
  call void %19(ptr noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %25, ptr noundef %next_row5, i32 noundef %28)
  %29 = load ptr, ptr %post, align 8
  %next_row7 = getelementptr inbounds %struct.my_post_controller, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %next_row7, align 8
  %31 = load i32, ptr %old_next_row, align 4
  %cmp8 = icmp ugt i32 %30, %31
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %32 = load ptr, ptr %post, align 8
  %next_row10 = getelementptr inbounds %struct.my_post_controller, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %next_row10, align 8
  %34 = load i32, ptr %old_next_row, align 4
  %sub = sub i32 %33, %34
  store i32 %sub, ptr %num_rows, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 83
  %36 = load ptr, ptr %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %color_quantize, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  %39 = load ptr, ptr %post, align 8
  %buffer11 = getelementptr inbounds %struct.my_post_controller, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %buffer11, align 8
  %41 = load i32, ptr %old_next_row, align 4
  %idx.ext = zext i32 %41 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  %42 = load i32, ptr %num_rows, align 4
  call void %37(ptr noundef %38, ptr noundef %add.ptr, ptr noundef null, i32 noundef %42)
  %43 = load i32, ptr %num_rows, align 4
  %44 = load ptr, ptr %out_row_ctr.addr, align 8
  %45 = load i32, ptr %44, align 4
  %add = add i32 %45, %43
  store i32 %add, ptr %44, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %46 = load ptr, ptr %post, align 8
  %next_row13 = getelementptr inbounds %struct.my_post_controller, ptr %46, i32 0, i32 5
  %47 = load i32, ptr %next_row13, align 8
  %48 = load ptr, ptr %post, align 8
  %strip_height14 = getelementptr inbounds %struct.my_post_controller, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %strip_height14, align 8
  %cmp15 = icmp uge i32 %47, %49
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end12
  %50 = load ptr, ptr %post, align 8
  %strip_height17 = getelementptr inbounds %struct.my_post_controller, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %strip_height17, align 8
  %52 = load ptr, ptr %post, align 8
  %starting_row18 = getelementptr inbounds %struct.my_post_controller, ptr %52, i32 0, i32 4
  %53 = load i32, ptr %starting_row18, align 4
  %add19 = add i32 %53, %51
  store i32 %add19, ptr %starting_row18, align 4
  %54 = load ptr, ptr %post, align 8
  %next_row20 = getelementptr inbounds %struct.my_post_controller, ptr %54, i32 0, i32 5
  store i32 0, ptr %next_row20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @post_process_2pass(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 76
  %1 = load ptr, ptr %post1, align 8
  store ptr %1, ptr %post, align 8
  %2 = load ptr, ptr %post, align 8
  %next_row = getelementptr inbounds %struct.my_post_controller, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %next_row, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %access_virt_sarray, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %whole_image, align 8
  %10 = load ptr, ptr %post, align 8
  %starting_row = getelementptr inbounds %struct.my_post_controller, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %starting_row, align 4
  %12 = load ptr, ptr %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %strip_height, align 8
  %call = call ptr %6(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %14, i32 0, i32 2
  store ptr %call, ptr %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %post, align 8
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %strip_height2, align 8
  %17 = load ptr, ptr %post, align 8
  %next_row3 = getelementptr inbounds %struct.my_post_controller, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %next_row3, align 8
  %sub = sub i32 %16, %18
  store i32 %sub, ptr %num_rows, align 4
  %19 = load i32, ptr %out_rows_avail.addr, align 4
  %20 = load ptr, ptr %out_row_ctr.addr, align 8
  %21 = load i32, ptr %20, align 4
  %sub4 = sub i32 %19, %21
  store i32 %sub4, ptr %max_rows, align 4
  %22 = load i32, ptr %num_rows, align 4
  %23 = load i32, ptr %max_rows, align 4
  %cmp5 = icmp ugt i32 %22, %23
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %24 = load i32, ptr %max_rows, align 4
  store i32 %24, ptr %num_rows, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %25 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 27
  %26 = load i32, ptr %output_height, align 4
  %27 = load ptr, ptr %post, align 8
  %starting_row8 = getelementptr inbounds %struct.my_post_controller, ptr %27, i32 0, i32 4
  %28 = load i32, ptr %starting_row8, align 4
  %sub9 = sub i32 %26, %28
  store i32 %sub9, ptr %max_rows, align 4
  %29 = load i32, ptr %num_rows, align 4
  %30 = load i32, ptr %max_rows, align 4
  %cmp10 = icmp ugt i32 %29, %30
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %31 = load i32, ptr %max_rows, align 4
  store i32 %31, ptr %num_rows, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7
  %32 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 83
  %33 = load ptr, ptr %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %color_quantize, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load ptr, ptr %post, align 8
  %buffer13 = getelementptr inbounds %struct.my_post_controller, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %buffer13, align 8
  %38 = load ptr, ptr %post, align 8
  %next_row14 = getelementptr inbounds %struct.my_post_controller, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %next_row14, align 8
  %idx.ext = zext i32 %39 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %37, i64 %idx.ext
  %40 = load ptr, ptr %output_buf.addr, align 8
  %41 = load ptr, ptr %out_row_ctr.addr, align 8
  %42 = load i32, ptr %41, align 4
  %idx.ext15 = zext i32 %42 to i64
  %add.ptr16 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext15
  %43 = load i32, ptr %num_rows, align 4
  call void %34(ptr noundef %35, ptr noundef %add.ptr, ptr noundef %add.ptr16, i32 noundef %43)
  %44 = load i32, ptr %num_rows, align 4
  %45 = load ptr, ptr %out_row_ctr.addr, align 8
  %46 = load i32, ptr %45, align 4
  %add = add i32 %46, %44
  store i32 %add, ptr %45, align 4
  %47 = load i32, ptr %num_rows, align 4
  %48 = load ptr, ptr %post, align 8
  %next_row17 = getelementptr inbounds %struct.my_post_controller, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %next_row17, align 8
  %add18 = add i32 %49, %47
  store i32 %add18, ptr %next_row17, align 8
  %50 = load ptr, ptr %post, align 8
  %next_row19 = getelementptr inbounds %struct.my_post_controller, ptr %50, i32 0, i32 5
  %51 = load i32, ptr %next_row19, align 8
  %52 = load ptr, ptr %post, align 8
  %strip_height20 = getelementptr inbounds %struct.my_post_controller, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %strip_height20, align 8
  %cmp21 = icmp uge i32 %51, %53
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end12
  %54 = load ptr, ptr %post, align 8
  %strip_height23 = getelementptr inbounds %struct.my_post_controller, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %strip_height23, align 8
  %56 = load ptr, ptr %post, align 8
  %starting_row24 = getelementptr inbounds %struct.my_post_controller, ptr %56, i32 0, i32 4
  %57 = load i32, ptr %starting_row24, align 4
  %add25 = add i32 %57, %55
  store i32 %add25, ptr %starting_row24, align 4
  %58 = load ptr, ptr %post, align 8
  %next_row26 = getelementptr inbounds %struct.my_post_controller, ptr %58, i32 0, i32 5
  store i32 0, ptr %next_row26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end12
  ret void
}

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
