; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdinput.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdinput.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_input_controller(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %inputctl = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 0, i64 noundef 48)
  store ptr %call, ptr %inputctl, align 8
  %4 = load ptr, ptr %inputctl, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 77
  store ptr %4, ptr %inputctl1, align 8
  %6 = load ptr, ptr %inputctl, align 8
  %pub = getelementptr inbounds %struct.my_input_controller, ptr %6, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub, i32 0, i32 0
  store ptr @consume_markers, ptr %consume_input, align 8
  %7 = load ptr, ptr %inputctl, align 8
  %pub2 = getelementptr inbounds %struct.my_input_controller, ptr %7, i32 0, i32 0
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub2, i32 0, i32 1
  store ptr @reset_input_controller, ptr %reset_input_controller, align 8
  %8 = load ptr, ptr %inputctl, align 8
  %pub3 = getelementptr inbounds %struct.my_input_controller, ptr %8, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub3, i32 0, i32 2
  store ptr @start_input_pass, ptr %start_input_pass, align 8
  %9 = load ptr, ptr %inputctl, align 8
  %pub4 = getelementptr inbounds %struct.my_input_controller, ptr %9, i32 0, i32 0
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub4, i32 0, i32 3
  store ptr @finish_input_pass, ptr %finish_input_pass, align 8
  %10 = load ptr, ptr %inputctl, align 8
  %pub5 = getelementptr inbounds %struct.my_input_controller, ptr %10, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub5, i32 0, i32 4
  store i32 0, ptr %has_multiple_scans, align 8
  %11 = load ptr, ptr %inputctl, align 8
  %pub6 = getelementptr inbounds %struct.my_input_controller, ptr %11, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub6, i32 0, i32 5
  store i32 0, ptr %eoi_reached, align 4
  %12 = load ptr, ptr %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, ptr %12, i32 0, i32 1
  store i32 1, ptr %inheaders, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @consume_markers(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %inputctl = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 77
  %1 = load ptr, ptr %inputctl1, align 8
  store ptr %1, ptr %inputctl, align 8
  %2 = load ptr, ptr %inputctl, align 8
  %pub = getelementptr inbounds %struct.my_input_controller, ptr %2, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub, i32 0, i32 5
  %3 = load i32, ptr %eoi_reached, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 78
  %5 = load ptr, ptr %marker, align 8
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %read_markers, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %6(ptr noundef %7)
  store i32 %call, ptr %val, align 4
  %8 = load i32, ptr %val, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load ptr, ptr %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %inheaders, align 8
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void @initial_setup(ptr noundef %11)
  %12 = load ptr, ptr %inputctl, align 8
  %inheaders4 = getelementptr inbounds %struct.my_input_controller, ptr %12, i32 0, i32 1
  store i32 0, ptr %inheaders4, align 8
  br label %if.end10

if.else:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %inputctl, align 8
  %pub5 = getelementptr inbounds %struct.my_input_controller, ptr %13, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub5, i32 0, i32 4
  %14 = load i32, ptr %has_multiple_scans, align 8
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.else
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 34, ptr %msg_code, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jdinput_0(ptr noundef %21)
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %22 = load ptr, ptr %inputctl, align 8
  %pub12 = getelementptr inbounds %struct.my_input_controller, ptr %22, i32 0, i32 0
  %eoi_reached13 = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub12, i32 0, i32 5
  store i32 1, ptr %eoi_reached13, align 4
  %23 = load ptr, ptr %inputctl, align 8
  %inheaders14 = getelementptr inbounds %struct.my_input_controller, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %inheaders14, align 8
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then16, label %if.else25

if.then16:                                        ; preds = %sw.bb11
  %25 = load ptr, ptr %cinfo.addr, align 8
  %marker17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 78
  %26 = load ptr, ptr %marker17, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %saw_SOF, align 4
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then16
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5
  store i32 58, ptr %msg_code21, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %error_exit23, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void %32(ptr noundef %33)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then16
  br label %if.end30

if.else25:                                        ; preds = %sw.bb11
  %34 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 36
  %35 = load i32, ptr %output_scan_number, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 34
  %37 = load i32, ptr %input_scan_number, align 4
  %cmp = icmp sgt i32 %35, %37
  br i1 %cmp, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.else25
  %38 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 34
  %39 = load i32, ptr %input_scan_number27, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 36
  store i32 %39, ptr %output_scan_number28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.else25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end24
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb31, %if.end30, %if.end10
  %41 = load i32, ptr %val, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_input_controller(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %inputctl = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 77
  %1 = load ptr, ptr %inputctl1, align 8
  store ptr %1, ptr %inputctl, align 8
  %2 = load ptr, ptr %inputctl, align 8
  %pub = getelementptr inbounds %struct.my_input_controller, ptr %2, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub, i32 0, i32 0
  store ptr @consume_markers, ptr %consume_input, align 8
  %3 = load ptr, ptr %inputctl, align 8
  %pub2 = getelementptr inbounds %struct.my_input_controller, ptr %3, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub2, i32 0, i32 4
  store i32 0, ptr %has_multiple_scans, align 8
  %4 = load ptr, ptr %inputctl, align 8
  %pub3 = getelementptr inbounds %struct.my_input_controller, ptr %4, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %pub3, i32 0, i32 5
  store i32 0, ptr %eoi_reached, align 4
  %5 = load ptr, ptr %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, ptr %5, i32 0, i32 1
  store i32 1, ptr %inheaders, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %reset_error_mgr, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 78
  %11 = load ptr, ptr %marker, align 8
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %reset_marker_reader, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  %14 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 38
  store ptr null, ptr %coef_bits, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @per_scan_setup(ptr noundef %0)
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @latch_quant_tables(ptr noundef %1)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 79
  %3 = load ptr, ptr %entropy, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %start_pass, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 75
  %7 = load ptr, ptr %coef, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %start_input_pass, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 75
  %11 = load ptr, ptr %coef1, align 8
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %consume_data, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 77
  %14 = load ptr, ptr %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %14, i32 0, i32 0
  store ptr %12, ptr %consume_input, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 77
  %1 = load ptr, ptr %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %1, i32 0, i32 0
  store ptr @consume_markers, ptr %consume_input, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @initial_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %image_height, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp sgt i64 %conv, 65500
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %image_width, align 8
  %conv2 = zext i32 %3 to i64
  %cmp3 = icmp sgt i64 %conv2, 65500
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 40, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err5, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 65500, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %12 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 42
  %13 = load i32, ptr %data_precision, align 8
  %cmp7 = icmp ne i32 %13, 8
  br i1 %cmp7, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 13, ptr %msg_code11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %data_precision12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 42
  %17 = load i32, ptr %data_precision12, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err13, align 8
  %msg_parm14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %msg_parm14, i64 0, i64 0
  store i32 %17, ptr %arrayidx15, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err16, align 8
  %error_exit17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %error_exit17, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void %22(ptr noundef %23)
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end
  %24 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 8
  %25 = load i32, ptr %num_components, align 8
  %cmp19 = icmp sgt i32 %25, 10
  br i1 %cmp19, label %if.then21, label %if.end33

if.then21:                                        ; preds = %if.end18
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err22, align 8
  %msg_code23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5
  store i32 24, ptr %msg_code23, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %num_components24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 8
  %29 = load i32, ptr %num_components24, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err25, align 8
  %msg_parm26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 6
  %arrayidx27 = getelementptr inbounds [8 x i32], ptr %msg_parm26, i64 0, i64 0
  store i32 %29, ptr %arrayidx27, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err28, align 8
  %msg_parm29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 6
  %arrayidx30 = getelementptr inbounds [8 x i32], ptr %msg_parm29, i64 0, i64 1
  store i32 10, ptr %arrayidx30, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err31, align 8
  %error_exit32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %error_exit32, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  call void %36(ptr noundef %37)
  br label %if.end33

if.end33:                                         ; preds = %if.then21, %if.end18
  %38 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 57
  store i32 1, ptr %max_h_samp_factor, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 58
  store i32 1, ptr %max_v_samp_factor, align 8
  store i32 0, ptr %ci, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 43
  %41 = load ptr, ptr %comp_info, align 8
  store ptr %41, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %42 = load i32, ptr %ci, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %num_components34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 8
  %44 = load i32, ptr %num_components34, align 8
  %cmp35 = icmp slt i32 %42, %44
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %h_samp_factor, align 8
  %cmp37 = icmp sle i32 %46, 0
  br i1 %cmp37, label %if.then50, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %for.body
  %47 = load ptr, ptr %compptr, align 8
  %h_samp_factor40 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %h_samp_factor40, align 8
  %cmp41 = icmp sgt i32 %48, 4
  br i1 %cmp41, label %if.then50, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %49 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %v_samp_factor, align 4
  %cmp44 = icmp sle i32 %50, 0
  br i1 %cmp44, label %if.then50, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %51 = load ptr, ptr %compptr, align 8
  %v_samp_factor47 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %v_samp_factor47, align 4
  %cmp48 = icmp sgt i32 %52, 4
  br i1 %cmp48, label %if.then50, label %if.end55

if.then50:                                        ; preds = %lor.lhs.false46, %lor.lhs.false43, %lor.lhs.false39, %for.body
  %53 = load ptr, ptr %cinfo.addr, align 8
  %err51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %err51, align 8
  %msg_code52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i32 0, i32 5
  store i32 16, ptr %msg_code52, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err53, align 8
  %error_exit54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %error_exit54, align 8
  %58 = load ptr, ptr %cinfo.addr, align 8
  call void %57(ptr noundef %58)
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %lor.lhs.false46
  %59 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 57
  %60 = load i32, ptr %max_h_samp_factor56, align 4
  %61 = load ptr, ptr %compptr, align 8
  %h_samp_factor57 = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %h_samp_factor57, align 8
  %cmp58 = icmp sgt i32 %60, %62
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end55
  %63 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 57
  %64 = load i32, ptr %max_h_samp_factor60, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end55
  %65 = load ptr, ptr %compptr, align 8
  %h_samp_factor61 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i32 0, i32 2
  %66 = load i32, ptr %h_samp_factor61, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %64, %cond.true ], [ %66, %cond.false ]
  %67 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 57
  store i32 %cond, ptr %max_h_samp_factor62, align 4
  %68 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 58
  %69 = load i32, ptr %max_v_samp_factor63, align 8
  %70 = load ptr, ptr %compptr, align 8
  %v_samp_factor64 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i32 0, i32 3
  %71 = load i32, ptr %v_samp_factor64, align 4
  %cmp65 = icmp sgt i32 %69, %71
  br i1 %cmp65, label %cond.true67, label %cond.false69

cond.true67:                                      ; preds = %cond.end
  %72 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 58
  %73 = load i32, ptr %max_v_samp_factor68, align 8
  br label %cond.end71

cond.false69:                                     ; preds = %cond.end
  %74 = load ptr, ptr %compptr, align 8
  %v_samp_factor70 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %v_samp_factor70, align 4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true67
  %cond72 = phi i32 [ %73, %cond.true67 ], [ %75, %cond.false69 ]
  %76 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor73 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 58
  store i32 %cond72, ptr %max_v_samp_factor73, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end71
  %77 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, ptr %ci, align 4
  %78 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %79 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 59
  store i32 8, ptr %min_DCT_scaled_size, align 4
  store i32 0, ptr %ci, align 4
  %80 = load ptr, ptr %cinfo.addr, align 8
  %comp_info74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 43
  %81 = load ptr, ptr %comp_info74, align 8
  store ptr %81, ptr %compptr, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc116, %for.end
  %82 = load i32, ptr %ci, align 4
  %83 = load ptr, ptr %cinfo.addr, align 8
  %num_components76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 8
  %84 = load i32, ptr %num_components76, align 8
  %cmp77 = icmp slt i32 %82, %84
  br i1 %cmp77, label %for.body79, label %for.end119

for.body79:                                       ; preds = %for.cond75
  %85 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i32 0, i32 9
  store i32 8, ptr %DCT_scaled_size, align 4
  %86 = load ptr, ptr %cinfo.addr, align 8
  %image_width80 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 6
  %87 = load i32, ptr %image_width80, align 8
  %conv81 = zext i32 %87 to i64
  %88 = load ptr, ptr %compptr, align 8
  %h_samp_factor82 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %h_samp_factor82, align 8
  %conv83 = sext i32 %89 to i64
  %mul = mul nsw i64 %conv81, %conv83
  %90 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 57
  %91 = load i32, ptr %max_h_samp_factor84, align 4
  %mul85 = mul nsw i32 %91, 8
  %conv86 = sext i32 %mul85 to i64
  %call = call i64 @jdiv_round_up(i64 noundef %mul, i64 noundef %conv86)
  %conv87 = trunc i64 %call to i32
  %92 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i32 0, i32 7
  store i32 %conv87, ptr %width_in_blocks, align 4
  %93 = load ptr, ptr %cinfo.addr, align 8
  %image_height88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 7
  %94 = load i32, ptr %image_height88, align 4
  %conv89 = zext i32 %94 to i64
  %95 = load ptr, ptr %compptr, align 8
  %v_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, ptr %95, i32 0, i32 3
  %96 = load i32, ptr %v_samp_factor90, align 4
  %conv91 = sext i32 %96 to i64
  %mul92 = mul nsw i64 %conv89, %conv91
  %97 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 58
  %98 = load i32, ptr %max_v_samp_factor93, align 8
  %mul94 = mul nsw i32 %98, 8
  %conv95 = sext i32 %mul94 to i64
  %call96 = call i64 @jdiv_round_up(i64 noundef %mul92, i64 noundef %conv95)
  %conv97 = trunc i64 %call96 to i32
  %99 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %99, i32 0, i32 8
  store i32 %conv97, ptr %height_in_blocks, align 8
  %100 = load ptr, ptr %cinfo.addr, align 8
  %image_width98 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 6
  %101 = load i32, ptr %image_width98, align 8
  %conv99 = zext i32 %101 to i64
  %102 = load ptr, ptr %compptr, align 8
  %h_samp_factor100 = getelementptr inbounds %struct.jpeg_component_info, ptr %102, i32 0, i32 2
  %103 = load i32, ptr %h_samp_factor100, align 8
  %conv101 = sext i32 %103 to i64
  %mul102 = mul nsw i64 %conv99, %conv101
  %104 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor103 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 57
  %105 = load i32, ptr %max_h_samp_factor103, align 4
  %conv104 = sext i32 %105 to i64
  %call105 = call i64 @jdiv_round_up(i64 noundef %mul102, i64 noundef %conv104)
  %conv106 = trunc i64 %call105 to i32
  %106 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %106, i32 0, i32 10
  store i32 %conv106, ptr %downsampled_width, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %image_height107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 7
  %108 = load i32, ptr %image_height107, align 4
  %conv108 = zext i32 %108 to i64
  %109 = load ptr, ptr %compptr, align 8
  %v_samp_factor109 = getelementptr inbounds %struct.jpeg_component_info, ptr %109, i32 0, i32 3
  %110 = load i32, ptr %v_samp_factor109, align 4
  %conv110 = sext i32 %110 to i64
  %mul111 = mul nsw i64 %conv108, %conv110
  %111 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 58
  %112 = load i32, ptr %max_v_samp_factor112, align 8
  %conv113 = sext i32 %112 to i64
  %call114 = call i64 @jdiv_round_up(i64 noundef %mul111, i64 noundef %conv113)
  %conv115 = trunc i64 %call114 to i32
  %113 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %113, i32 0, i32 11
  store i32 %conv115, ptr %downsampled_height, align 4
  %114 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %114, i32 0, i32 12
  store i32 1, ptr %component_needed, align 8
  %115 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %115, i32 0, i32 19
  store ptr null, ptr %quant_table, align 8
  br label %for.inc116

for.inc116:                                       ; preds = %for.body79
  %116 = load i32, ptr %ci, align 4
  %inc117 = add nsw i32 %116, 1
  store i32 %inc117, ptr %ci, align 4
  %117 = load ptr, ptr %compptr, align 8
  %incdec.ptr118 = getelementptr inbounds %struct.jpeg_component_info, ptr %117, i32 1
  store ptr %incdec.ptr118, ptr %compptr, align 8
  br label %for.cond75, !llvm.loop !8

for.end119:                                       ; preds = %for.cond75
  %118 = load ptr, ptr %cinfo.addr, align 8
  %image_height120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %118, i32 0, i32 7
  %119 = load i32, ptr %image_height120, align 4
  %conv121 = zext i32 %119 to i64
  %120 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor122 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 58
  %121 = load i32, ptr %max_v_samp_factor122, align 8
  %mul123 = mul nsw i32 %121, 8
  %conv124 = sext i32 %mul123 to i64
  %call125 = call i64 @jdiv_round_up(i64 noundef %conv121, i64 noundef %conv124)
  %conv126 = trunc i64 %call125 to i32
  %122 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 60
  store i32 %conv126, ptr %total_iMCU_rows, align 8
  %123 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 62
  %124 = load i32, ptr %comps_in_scan, align 8
  %125 = load ptr, ptr %cinfo.addr, align 8
  %num_components127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %125, i32 0, i32 8
  %126 = load i32, ptr %num_components127, align 8
  %cmp128 = icmp slt i32 %124, %126
  br i1 %cmp128, label %if.then131, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %for.end119
  %127 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %127, i32 0, i32 44
  %128 = load i32, ptr %progressive_mode, align 8
  %tobool = icmp ne i32 %128, 0
  br i1 %tobool, label %if.then131, label %if.else

if.then131:                                       ; preds = %lor.lhs.false130, %for.end119
  %129 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 77
  %130 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %130, i32 0, i32 4
  store i32 1, ptr %has_multiple_scans, align 8
  br label %if.end134

if.else:                                          ; preds = %lor.lhs.false130
  %131 = load ptr, ptr %cinfo.addr, align 8
  %inputctl132 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %131, i32 0, i32 77
  %132 = load ptr, ptr %inputctl132, align 8
  %has_multiple_scans133 = getelementptr inbounds %struct.jpeg_input_controller, ptr %132, i32 0, i32 4
  store i32 0, ptr %has_multiple_scans133, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.else, %if.then131
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @per_scan_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 62
  %1 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %compptr, align 8
  %4 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %width_in_blocks, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 64
  store i32 %5, ptr %MCUs_per_row, align 8
  %7 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %height_in_blocks, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 65
  store i32 %8, ptr %MCU_rows_in_scan, align 4
  %10 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 13
  store i32 1, ptr %MCU_width, align 4
  %11 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i32 0, i32 14
  store i32 1, ptr %MCU_height, align 8
  %12 = load ptr, ptr %compptr, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i32 0, i32 15
  store i32 1, ptr %MCU_blocks, align 4
  %13 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 9
  %14 = load i32, ptr %DCT_scaled_size, align 4
  %15 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i32 0, i32 16
  store i32 %14, ptr %MCU_sample_width, align 8
  %16 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 17
  store i32 1, ptr %last_col_width, align 4
  %17 = load ptr, ptr %compptr, align 8
  %height_in_blocks1 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %height_in_blocks1, align 8
  %19 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %v_samp_factor, align 4
  %rem = urem i32 %18, %20
  store i32 %rem, ptr %tmp, align 4
  %21 = load i32, ptr %tmp, align 4
  %cmp2 = icmp eq i32 %21, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %22 = load ptr, ptr %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %v_samp_factor4, align 4
  store i32 %23, ptr %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %24 = load i32, ptr %tmp, align 4
  %25 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 18
  store i32 %24, ptr %last_row_height, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 66
  store i32 1, ptr %blocks_in_MCU, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 67
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 0
  store i32 0, ptr %arrayidx5, align 4
  br label %if.end80

if.else:                                          ; preds = %entry
  %28 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 62
  %29 = load i32, ptr %comps_in_scan6, align 8
  %cmp7 = icmp sle i32 %29, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %30 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 62
  %31 = load i32, ptr %comps_in_scan8, align 8
  %cmp9 = icmp sgt i32 %31, 4
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5
  store i32 24, ptr %msg_code, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 62
  %35 = load i32, ptr %comps_in_scan11, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %35, ptr %arrayidx13, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err14, align 8
  %msg_parm15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %msg_parm15, i64 0, i64 1
  store i32 4, ptr %arrayidx16, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err17, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %error_exit, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  call void %42(ptr noundef %43)
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %lor.lhs.false
  %44 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %image_width, align 8
  %conv = zext i32 %45 to i64
  %46 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 57
  %47 = load i32, ptr %max_h_samp_factor, align 4
  %mul = mul nsw i32 %47, 8
  %conv19 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef %conv19)
  %conv20 = trunc i64 %call to i32
  %48 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 64
  store i32 %conv20, ptr %MCUs_per_row21, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 7
  %50 = load i32, ptr %image_height, align 4
  %conv22 = zext i32 %50 to i64
  %51 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 58
  %52 = load i32, ptr %max_v_samp_factor, align 8
  %mul23 = mul nsw i32 %52, 8
  %conv24 = sext i32 %mul23 to i64
  %call25 = call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef %conv24)
  %conv26 = trunc i64 %call25 to i32
  %53 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 65
  store i32 %conv26, ptr %MCU_rows_in_scan27, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 66
  store i32 0, ptr %blocks_in_MCU28, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %55 = load i32, ptr %ci, align 4
  %56 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 62
  %57 = load i32, ptr %comps_in_scan29, align 8
  %cmp30 = icmp slt i32 %55, %57
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 63
  %59 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info32, i64 0, i64 %idxprom
  %60 = load ptr, ptr %arrayidx33, align 8
  store ptr %60, ptr %compptr, align 8
  %61 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %h_samp_factor, align 8
  %63 = load ptr, ptr %compptr, align 8
  %MCU_width34 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i32 0, i32 13
  store i32 %62, ptr %MCU_width34, align 4
  %64 = load ptr, ptr %compptr, align 8
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %v_samp_factor35, align 4
  %66 = load ptr, ptr %compptr, align 8
  %MCU_height36 = getelementptr inbounds %struct.jpeg_component_info, ptr %66, i32 0, i32 14
  store i32 %65, ptr %MCU_height36, align 8
  %67 = load ptr, ptr %compptr, align 8
  %MCU_width37 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 13
  %68 = load i32, ptr %MCU_width37, align 4
  %69 = load ptr, ptr %compptr, align 8
  %MCU_height38 = getelementptr inbounds %struct.jpeg_component_info, ptr %69, i32 0, i32 14
  %70 = load i32, ptr %MCU_height38, align 8
  %mul39 = mul nsw i32 %68, %70
  %71 = load ptr, ptr %compptr, align 8
  %MCU_blocks40 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i32 0, i32 15
  store i32 %mul39, ptr %MCU_blocks40, align 4
  %72 = load ptr, ptr %compptr, align 8
  %MCU_width41 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i32 0, i32 13
  %73 = load i32, ptr %MCU_width41, align 4
  %74 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size42 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i32 0, i32 9
  %75 = load i32, ptr %DCT_scaled_size42, align 4
  %mul43 = mul nsw i32 %73, %75
  %76 = load ptr, ptr %compptr, align 8
  %MCU_sample_width44 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i32 0, i32 16
  store i32 %mul43, ptr %MCU_sample_width44, align 8
  %77 = load ptr, ptr %compptr, align 8
  %width_in_blocks45 = getelementptr inbounds %struct.jpeg_component_info, ptr %77, i32 0, i32 7
  %78 = load i32, ptr %width_in_blocks45, align 4
  %79 = load ptr, ptr %compptr, align 8
  %MCU_width46 = getelementptr inbounds %struct.jpeg_component_info, ptr %79, i32 0, i32 13
  %80 = load i32, ptr %MCU_width46, align 4
  %rem47 = urem i32 %78, %80
  store i32 %rem47, ptr %tmp, align 4
  %81 = load i32, ptr %tmp, align 4
  %cmp48 = icmp eq i32 %81, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.body
  %82 = load ptr, ptr %compptr, align 8
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i32 0, i32 13
  %83 = load i32, ptr %MCU_width51, align 4
  store i32 %83, ptr %tmp, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body
  %84 = load i32, ptr %tmp, align 4
  %85 = load ptr, ptr %compptr, align 8
  %last_col_width53 = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i32 0, i32 17
  store i32 %84, ptr %last_col_width53, align 4
  %86 = load ptr, ptr %compptr, align 8
  %height_in_blocks54 = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i32 0, i32 8
  %87 = load i32, ptr %height_in_blocks54, align 8
  %88 = load ptr, ptr %compptr, align 8
  %MCU_height55 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i32 0, i32 14
  %89 = load i32, ptr %MCU_height55, align 8
  %rem56 = urem i32 %87, %89
  store i32 %rem56, ptr %tmp, align 4
  %90 = load i32, ptr %tmp, align 4
  %cmp57 = icmp eq i32 %90, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end52
  %91 = load ptr, ptr %compptr, align 8
  %MCU_height60 = getelementptr inbounds %struct.jpeg_component_info, ptr %91, i32 0, i32 14
  %92 = load i32, ptr %MCU_height60, align 8
  store i32 %92, ptr %tmp, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end52
  %93 = load i32, ptr %tmp, align 4
  %94 = load ptr, ptr %compptr, align 8
  %last_row_height62 = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i32 0, i32 18
  store i32 %93, ptr %last_row_height62, align 8
  %95 = load ptr, ptr %compptr, align 8
  %MCU_blocks63 = getelementptr inbounds %struct.jpeg_component_info, ptr %95, i32 0, i32 15
  %96 = load i32, ptr %MCU_blocks63, align 4
  store i32 %96, ptr %mcublks, align 4
  %97 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 66
  %98 = load i32, ptr %blocks_in_MCU64, align 8
  %99 = load i32, ptr %mcublks, align 4
  %add = add nsw i32 %98, %99
  %cmp65 = icmp sgt i32 %add, 10
  br i1 %cmp65, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end61
  %100 = load ptr, ptr %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i32 0, i32 5
  store i32 11, ptr %msg_code69, align 8
  %102 = load ptr, ptr %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %err70, align 8
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %error_exit71, align 8
  %105 = load ptr, ptr %cinfo.addr, align 8
  call void %104(ptr noundef %105)
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end61
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end72
  %106 = load i32, ptr %mcublks, align 4
  %dec = add nsw i32 %106, -1
  store i32 %dec, ptr %mcublks, align 4
  %cmp73 = icmp sgt i32 %106, 0
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %107 = load i32, ptr %ci, align 4
  %108 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership75 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 67
  %109 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 66
  %110 = load i32, ptr %blocks_in_MCU76, align 8
  %inc = add nsw i32 %110, 1
  store i32 %inc, ptr %blocks_in_MCU76, align 8
  %idxprom77 = sext i32 %110 to i64
  %arrayidx78 = getelementptr inbounds [10 x i32], ptr %MCU_membership75, i64 0, i64 %idxprom77
  store i32 %107, ptr %arrayidx78, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %111 = load i32, ptr %ci, align 4
  %inc79 = add nsw i32 %111, 1
  store i32 %inc79, ptr %ci, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end80

if.end80:                                         ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @latch_quant_tables(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %qtbl = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ci, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 62
  %2 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 63
  %4 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  store ptr %5, ptr %compptr, align 8
  %6 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %quant_table, align 8
  %cmp1 = icmp ne ptr %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %quant_tbl_no, align 8
  store i32 %9, ptr %qtblno, align 4
  %10 = load i32, ptr %qtblno, align 4
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, ptr %qtblno, align 4
  %cmp3 = icmp sge i32 %11, 4
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %12 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 39
  %13 = load i32, ptr %qtblno, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom5
  %14 = load ptr, ptr %arrayidx6, align 8
  %cmp7 = icmp eq ptr %14, null
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 51, ptr %msg_code, align 8
  %17 = load i32, ptr %qtblno, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err9, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %17, ptr %arrayidx10, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %error_exit, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void %22(ptr noundef %23)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %lor.lhs.false4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %alloc_small, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %26(ptr noundef %27, i32 noundef 1, i64 noundef 132)
  store ptr %call, ptr %qtbl, align 8
  %28 = load ptr, ptr %qtbl, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 39
  %30 = load i32, ptr %qtblno, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs13, i64 0, i64 %idxprom14
  %31 = load ptr, ptr %arrayidx15, align 8
  %32 = load ptr, ptr %qtbl, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memcpy_chk(ptr noundef %28, ptr noundef %31, i64 noundef 132, i64 noundef %33) #4
  %34 = load ptr, ptr %qtbl, align 8
  %35 = load ptr, ptr %compptr, align 8
  %quant_table17 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 19
  store ptr %34, ptr %quant_table17, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then
  %36 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !11

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


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jdinput_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @per_scan_setup(ptr noundef %0)
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @latch_quant_tables(ptr noundef %1)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 79
  %3 = load ptr, ptr %entropy, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %start_pass, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 75
  %7 = load ptr, ptr %coef, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %start_input_pass, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 75
  %11 = load ptr, ptr %coef1, align 8
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %consume_data, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 77
  %14 = load ptr, ptr %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %14, i32 0, i32 0
  store ptr %12, ptr %consume_input, align 8
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
