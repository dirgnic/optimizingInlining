; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdinput.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdinput.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_input_controller(ptr noundef %cinfo) #0 {
entry:
  %inputctl = alloca ptr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 0, i64 noundef 48) #4
  store ptr %call, ptr %inputctl, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 77
  store ptr %call, ptr %inputctl1, align 8
  store ptr @consume_markers, ptr %call, align 8
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, ptr %call, i64 0, i32 1
  store ptr @reset_input_controller, ptr %reset_input_controller, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %call, i64 0, i32 2
  store ptr @start_input_pass, ptr %start_input_pass, align 8
  %2 = load ptr, ptr %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %2, i64 0, i32 3
  store ptr @finish_input_pass, ptr %finish_input_pass, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %2, i64 0, i32 4
  store i32 0, ptr %has_multiple_scans, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %2, i64 0, i32 5
  store i32 0, ptr %eoi_reached, align 4
  %3 = load ptr, ptr %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, ptr %3, i64 0, i32 1
  store i32 1, ptr %inheaders, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @consume_markers(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %inputctl = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 77
  %0 = load ptr, ptr %inputctl1, align 8
  store ptr %0, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %0, i64 0, i32 5
  %1 = load i32, ptr %eoi_reached, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 78
  %3 = load ptr, ptr %marker, align 8
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %read_markers, align 8
  %call = call i32 %4(ptr noundef %2) #4
  store i32 %call, ptr %val, align 4
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %inheaders, align 8
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @initial_setup(ptr noundef %7)
  %8 = load ptr, ptr %inputctl, align 8
  %inheaders4 = getelementptr inbounds %struct.my_input_controller, ptr %8, i64 0, i32 1
  store i32 0, ptr %inheaders4, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %9 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %9, i64 0, i32 4
  %10 = load i32, ptr %has_multiple_scans, align 8
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.else
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 34, ptr %msg_code, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull %11) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void @start_input_pass(ptr noundef %15)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %16 = load ptr, ptr %inputctl, align 8
  %eoi_reached13 = getelementptr inbounds %struct.jpeg_input_controller, ptr %16, i64 0, i32 5
  store i32 1, ptr %eoi_reached13, align 4
  %inheaders14 = getelementptr inbounds %struct.my_input_controller, ptr %16, i64 0, i32 1
  %17 = load i32, ptr %inheaders14, align 8
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.else25, label %if.then16

if.then16:                                        ; preds = %sw.bb11
  %18 = load ptr, ptr %cinfo.addr, align 8
  %marker17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 78
  %19 = load ptr, ptr %marker17, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 6
  %20 = load i32, ptr %saw_SOF, align 4
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %sw.epilog, label %if.then19

if.then19:                                        ; preds = %if.then16
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 58, ptr %msg_code21, align 8
  %23 = load ptr, ptr %21, align 8
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr noundef nonnull %21) #4
  br label %sw.epilog

if.else25:                                        ; preds = %sw.bb11
  %25 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 36
  %26 = load i32, ptr %output_scan_number, align 4
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 34
  %27 = load i32, ptr %input_scan_number, align 4
  %cmp = icmp sgt i32 %26, %27
  br i1 %cmp, label %if.then26, label %sw.epilog

if.then26:                                        ; preds = %if.else25
  %28 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 34
  %29 = load i32, ptr %input_scan_number27, align 4
  %output_scan_number28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 36
  store i32 %29, ptr %output_scan_number28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %if.then16, %if.then26, %if.else25, %if.then3, %if.end9, %if.end
  %30 = load i32, ptr %val, align 4
  br label %return

return:                                           ; preds = %entry, %sw.epilog
  %storemerge = phi i32 [ %30, %sw.epilog ], [ 2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_input_controller(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 77
  %0 = load ptr, ptr %inputctl1, align 8
  store ptr @consume_markers, ptr %0, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %0, i64 0, i32 4
  store i32 0, ptr %has_multiple_scans, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %0, i64 0, i32 5
  store i32 0, ptr %eoi_reached, align 4
  %inheaders = getelementptr inbounds %struct.my_input_controller, ptr %0, i64 0, i32 1
  store i32 1, ptr %inheaders, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %reset_error_mgr, align 8
  call void %3(ptr noundef nonnull %1) #4
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 78
  %4 = load ptr, ptr %marker, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void %5(ptr noundef %6) #4
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 38
  store ptr null, ptr %coef_bits, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @per_scan_setup(ptr noundef %cinfo)
  call void @latch_quant_tables(ptr noundef %cinfo)
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy, align 8
  %1 = load ptr, ptr %0, align 8
  call void %1(ptr noundef %cinfo) #4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 75
  %3 = load ptr, ptr %coef, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef %2) #4
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 75
  %5 = load ptr, ptr %coef1, align 8
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %consume_data, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 77
  %8 = load ptr, ptr %inputctl, align 8
  store ptr %6, ptr %8, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_pass(ptr noundef %cinfo) #0 {
entry:
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 77
  %0 = load ptr, ptr %inputctl, align 8
  store ptr @consume_markers, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @initial_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 7
  %0 = load i32, ptr %image_height, align 4
  %cmp = icmp ugt i32 %0, 65500
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 6
  %2 = load i32, ptr %image_width, align 8
  %cmp3 = icmp ugt i32 %2, 65500
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 40, ptr %msg_code, align 8
  %5 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 65500, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 42
  %10 = load i32, ptr %data_precision, align 8
  %cmp7.not = icmp eq i32 %10, 8
  br i1 %cmp7.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 13, ptr %msg_code11, align 8
  %data_precision12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 42
  %13 = load i32, ptr %data_precision12, align 8
  %14 = load ptr, ptr %11, align 8
  %msg_parm14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6
  store i32 %13, ptr %msg_parm14, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull %15) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end
  %18 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 8
  %19 = load i32, ptr %num_components, align 8
  %cmp19 = icmp sgt i32 %19, 10
  br i1 %cmp19, label %if.then21, label %if.end33

if.then21:                                        ; preds = %if.end18
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %msg_code23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 24, ptr %msg_code23, align 8
  %num_components24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 8
  %22 = load i32, ptr %num_components24, align 8
  %23 = load ptr, ptr %20, align 8
  %msg_parm26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 %22, ptr %msg_parm26, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %arrayidx30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %arrayidx30, align 4
  %26 = load ptr, ptr %24, align 8
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull %24) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then21, %if.end18
  %28 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 57
  store i32 1, ptr %max_h_samp_factor, align 4
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 58
  store i32 1, ptr %max_v_samp_factor, align 8
  store i32 0, ptr %ci, align 4
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 43
  %29 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end33
  %storemerge = phi ptr [ %29, %if.end33 ], [ %incdec.ptr, %if.end55 ]
  store ptr %storemerge, ptr %compptr, align 8
  %30 = load i32, ptr %ci, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %num_components34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 8
  %32 = load i32, ptr %num_components34, align 8
  %cmp35 = icmp slt i32 %30, %32
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 2
  %34 = load i32, ptr %h_samp_factor, align 8
  %cmp37 = icmp slt i32 %34, 1
  br i1 %cmp37, label %if.then50, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %for.body
  %35 = load ptr, ptr %compptr, align 8
  %h_samp_factor40 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 0, i32 2
  %36 = load i32, ptr %h_samp_factor40, align 8
  %cmp41 = icmp sgt i32 %36, 4
  br i1 %cmp41, label %if.then50, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %37 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i64 0, i32 3
  %38 = load i32, ptr %v_samp_factor, align 4
  %cmp44 = icmp slt i32 %38, 1
  br i1 %cmp44, label %if.then50, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %39 = load ptr, ptr %compptr, align 8
  %v_samp_factor47 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 3
  %40 = load i32, ptr %v_samp_factor47, align 4
  %cmp48 = icmp sgt i32 %40, 4
  br i1 %cmp48, label %if.then50, label %if.end55

if.then50:                                        ; preds = %lor.lhs.false46, %lor.lhs.false43, %lor.lhs.false39, %for.body
  %41 = load ptr, ptr %cinfo.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %msg_code52 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 16, ptr %msg_code52, align 8
  %43 = load ptr, ptr %41, align 8
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr noundef nonnull %41) #4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %lor.lhs.false46
  %45 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 57
  %46 = load i32, ptr %max_h_samp_factor56, align 4
  %47 = load ptr, ptr %compptr, align 8
  %h_samp_factor57 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 0, i32 2
  %48 = load i32, ptr %h_samp_factor57, align 8
  %cmp58 = icmp sgt i32 %46, %48
  %49 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i64 0, i32 57
  %50 = load ptr, ptr %compptr, align 8
  %h_samp_factor61 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i64 0, i32 2
  %cond.in = select i1 %cmp58, ptr %max_h_samp_factor60, ptr %h_samp_factor61
  %cond = load i32, ptr %cond.in, align 4
  %51 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 57
  store i32 %cond, ptr %max_h_samp_factor62, align 4
  %max_v_samp_factor63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 58
  %52 = load i32, ptr %max_v_samp_factor63, align 8
  %53 = load ptr, ptr %compptr, align 8
  %v_samp_factor64 = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i64 0, i32 3
  %54 = load i32, ptr %v_samp_factor64, align 4
  %cmp65 = icmp sgt i32 %52, %54
  %55 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i64 0, i32 58
  %56 = load ptr, ptr %compptr, align 8
  %v_samp_factor70 = getelementptr inbounds %struct.jpeg_component_info, ptr %56, i64 0, i32 3
  %cond72.in = select i1 %cmp65, ptr %max_v_samp_factor68, ptr %v_samp_factor70
  %cond72 = load i32, ptr %cond72.in, align 4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor73 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i64 0, i32 58
  store i32 %cond72, ptr %max_v_samp_factor73, align 8
  %58 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %ci, align 4
  %59 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i64 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %60 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 59
  store i32 8, ptr %min_DCT_scaled_size, align 4
  store i32 0, ptr %ci, align 4
  %comp_info74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 43
  %61 = load ptr, ptr %comp_info74, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.body79, %for.end
  %storemerge1 = phi ptr [ %61, %for.end ], [ %incdec.ptr118, %for.body79 ]
  store ptr %storemerge1, ptr %compptr, align 8
  %62 = load i32, ptr %ci, align 4
  %63 = load ptr, ptr %cinfo.addr, align 8
  %num_components76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i64 0, i32 8
  %64 = load i32, ptr %num_components76, align 8
  %cmp77 = icmp slt i32 %62, %64
  br i1 %cmp77, label %for.body79, label %for.end119

for.body79:                                       ; preds = %for.cond75
  %65 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 9
  store i32 8, ptr %DCT_scaled_size, align 4
  %66 = load ptr, ptr %cinfo.addr, align 8
  %image_width80 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 6
  %67 = load i32, ptr %image_width80, align 8
  %conv81 = zext i32 %67 to i64
  %68 = load ptr, ptr %compptr, align 8
  %h_samp_factor82 = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i64 0, i32 2
  %69 = load i32, ptr %h_samp_factor82, align 8
  %conv83 = sext i32 %69 to i64
  %mul = mul nsw i64 %conv81, %conv83
  %70 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i64 0, i32 57
  %71 = load i32, ptr %max_h_samp_factor84, align 4
  %mul85 = shl nsw i32 %71, 3
  %conv86 = sext i32 %mul85 to i64
  %call = call i64 @jdiv_round_up(i64 noundef %mul, i64 noundef %conv86) #4
  %conv87 = trunc i64 %call to i32
  %72 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i64 0, i32 7
  store i32 %conv87, ptr %width_in_blocks, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %image_height88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i64 0, i32 7
  %74 = load i32, ptr %image_height88, align 4
  %conv89 = zext i32 %74 to i64
  %75 = load ptr, ptr %compptr, align 8
  %v_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 3
  %76 = load i32, ptr %v_samp_factor90, align 4
  %conv91 = sext i32 %76 to i64
  %mul92 = mul nsw i64 %conv89, %conv91
  %77 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i64 0, i32 58
  %78 = load i32, ptr %max_v_samp_factor93, align 8
  %mul94 = shl nsw i32 %78, 3
  %conv95 = sext i32 %mul94 to i64
  %call96 = call i64 @jdiv_round_up(i64 noundef %mul92, i64 noundef %conv95) #4
  %conv97 = trunc i64 %call96 to i32
  %79 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %79, i64 0, i32 8
  store i32 %conv97, ptr %height_in_blocks, align 8
  %80 = load ptr, ptr %cinfo.addr, align 8
  %image_width98 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i64 0, i32 6
  %81 = load i32, ptr %image_width98, align 8
  %conv99 = zext i32 %81 to i64
  %82 = load ptr, ptr %compptr, align 8
  %h_samp_factor100 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i64 0, i32 2
  %83 = load i32, ptr %h_samp_factor100, align 8
  %conv101 = sext i32 %83 to i64
  %mul102 = mul nsw i64 %conv99, %conv101
  %84 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor103 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %84, i64 0, i32 57
  %85 = load i32, ptr %max_h_samp_factor103, align 4
  %conv104 = sext i32 %85 to i64
  %call105 = call i64 @jdiv_round_up(i64 noundef %mul102, i64 noundef %conv104) #4
  %conv106 = trunc i64 %call105 to i32
  %86 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i64 0, i32 10
  store i32 %conv106, ptr %downsampled_width, align 8
  %87 = load ptr, ptr %cinfo.addr, align 8
  %image_height107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i64 0, i32 7
  %88 = load i32, ptr %image_height107, align 4
  %conv108 = zext i32 %88 to i64
  %89 = load ptr, ptr %compptr, align 8
  %v_samp_factor109 = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i64 0, i32 3
  %90 = load i32, ptr %v_samp_factor109, align 4
  %conv110 = sext i32 %90 to i64
  %mul111 = mul nsw i64 %conv108, %conv110
  %91 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i64 0, i32 58
  %92 = load i32, ptr %max_v_samp_factor112, align 8
  %conv113 = sext i32 %92 to i64
  %call114 = call i64 @jdiv_round_up(i64 noundef %mul111, i64 noundef %conv113) #4
  %conv115 = trunc i64 %call114 to i32
  %93 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i64 0, i32 11
  store i32 %conv115, ptr %downsampled_height, align 4
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i64 0, i32 12
  store i32 1, ptr %component_needed, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i64 0, i32 19
  store ptr null, ptr %quant_table, align 8
  %94 = load i32, ptr %ci, align 4
  %inc117 = add nsw i32 %94, 1
  store i32 %inc117, ptr %ci, align 4
  %95 = load ptr, ptr %compptr, align 8
  %incdec.ptr118 = getelementptr inbounds %struct.jpeg_component_info, ptr %95, i64 1
  br label %for.cond75, !llvm.loop !8

for.end119:                                       ; preds = %for.cond75
  %96 = load ptr, ptr %cinfo.addr, align 8
  %image_height120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i64 0, i32 7
  %97 = load i32, ptr %image_height120, align 4
  %conv121 = zext i32 %97 to i64
  %max_v_samp_factor122 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i64 0, i32 58
  %98 = load i32, ptr %max_v_samp_factor122, align 8
  %mul123 = shl nsw i32 %98, 3
  %conv124 = sext i32 %mul123 to i64
  %call125 = call i64 @jdiv_round_up(i64 noundef %conv121, i64 noundef %conv124) #4
  %conv126 = trunc i64 %call125 to i32
  %99 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %99, i64 0, i32 60
  store i32 %conv126, ptr %total_iMCU_rows, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %99, i64 0, i32 62
  %100 = load i32, ptr %comps_in_scan, align 8
  %num_components127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %99, i64 0, i32 8
  %101 = load i32, ptr %num_components127, align 8
  %cmp128 = icmp slt i32 %100, %101
  br i1 %cmp128, label %if.then131, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %for.end119
  %102 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %102, i64 0, i32 44
  %103 = load i32, ptr %progressive_mode, align 8
  %tobool.not = icmp eq i32 %103, 0
  br i1 %tobool.not, label %if.else, label %if.then131

if.then131:                                       ; preds = %lor.lhs.false130, %for.end119
  %104 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i64 0, i32 77
  %105 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %105, i64 0, i32 4
  store i32 1, ptr %has_multiple_scans, align 8
  br label %if.end134

if.else:                                          ; preds = %lor.lhs.false130
  %106 = load ptr, ptr %cinfo.addr, align 8
  %inputctl132 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %106, i64 0, i32 77
  %107 = load ptr, ptr %inputctl132, align 8
  %has_multiple_scans133 = getelementptr inbounds %struct.jpeg_input_controller, ptr %107, i64 0, i32 4
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
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 62
  %0 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 63
  %2 = load ptr, ptr %cur_comp_info, align 8
  store ptr %2, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %2, i64 0, i32 7
  %3 = load i32, ptr %width_in_blocks, align 4
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 64
  store i32 %3, ptr %MCUs_per_row, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %2, i64 0, i32 8
  %4 = load i32, ptr %height_in_blocks, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 65
  store i32 %4, ptr %MCU_rows_in_scan, align 4
  %6 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 13
  store i32 1, ptr %MCU_width, align 4
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 14
  store i32 1, ptr %MCU_height, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 15
  store i32 1, ptr %MCU_blocks, align 4
  %7 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 9
  %8 = load i32, ptr %DCT_scaled_size, align 4
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 16
  store i32 %8, ptr %MCU_sample_width, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 17
  store i32 1, ptr %last_col_width, align 4
  %9 = load ptr, ptr %compptr, align 8
  %height_in_blocks1 = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 0, i32 8
  %10 = load i32, ptr %height_in_blocks1, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %v_samp_factor, align 4
  %rem = urem i32 %10, %11
  store i32 %rem, ptr %tmp, align 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %12 = load ptr, ptr %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 3
  %13 = load i32, ptr %v_samp_factor4, align 4
  store i32 %13, ptr %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %14 = load i32, ptr %tmp, align 4
  %15 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 18
  store i32 %14, ptr %last_row_height, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 66
  store i32 1, ptr %blocks_in_MCU, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 67
  store i32 0, ptr %MCU_membership, align 4
  br label %if.end80

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 62
  %18 = load i32, ptr %comps_in_scan6, align 8
  %cmp7 = icmp slt i32 %18, 1
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 62
  %20 = load i32, ptr %comps_in_scan8, align 8
  %cmp9 = icmp sgt i32 %20, 4
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 24, ptr %msg_code, align 8
  %comps_in_scan11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 62
  %23 = load i32, ptr %comps_in_scan11, align 8
  %24 = load ptr, ptr %21, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 6
  store i32 %23, ptr %msg_parm, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %arrayidx16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %arrayidx16, align 4
  %27 = load ptr, ptr %25, align 8
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull %25) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %lor.lhs.false
  %29 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 6
  %30 = load i32, ptr %image_width, align 8
  %conv = zext i32 %30 to i64
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 57
  %31 = load i32, ptr %max_h_samp_factor, align 4
  %mul = shl nsw i32 %31, 3
  %conv19 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef %conv19) #4
  %conv20 = trunc i64 %call to i32
  %32 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 64
  store i32 %conv20, ptr %MCUs_per_row21, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 7
  %33 = load i32, ptr %image_height, align 4
  %conv22 = zext i32 %33 to i64
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 58
  %34 = load i32, ptr %max_v_samp_factor, align 8
  %mul23 = shl nsw i32 %34, 3
  %conv24 = sext i32 %mul23 to i64
  %call25 = call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef %conv24) #4
  %conv26 = trunc i64 %call25 to i32
  %35 = load ptr, ptr %cinfo.addr, align 8
  %MCU_rows_in_scan27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 65
  store i32 %conv26, ptr %MCU_rows_in_scan27, align 4
  %blocks_in_MCU28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 66
  store i32 0, ptr %blocks_in_MCU28, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %storemerge = phi i32 [ 0, %if.end18 ], [ %inc79, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 62
  %37 = load i32, ptr %comps_in_scan29, align 8
  %cmp30 = icmp slt i32 %storemerge, %37
  br i1 %cmp30, label %for.body, label %if.end80

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %cinfo.addr, align 8
  %39 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i64 0, i32 63, i64 %idxprom
  %40 = load ptr, ptr %arrayidx33, align 8
  store ptr %40, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 2
  %41 = load i32, ptr %h_samp_factor, align 8
  %MCU_width34 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 13
  store i32 %41, ptr %MCU_width34, align 4
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %v_samp_factor35, align 4
  %43 = load ptr, ptr %compptr, align 8
  %MCU_height36 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 14
  store i32 %42, ptr %MCU_height36, align 8
  %MCU_width37 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 13
  %44 = load i32, ptr %MCU_width37, align 4
  %mul39 = mul nsw i32 %44, %42
  %MCU_blocks40 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 15
  store i32 %mul39, ptr %MCU_blocks40, align 4
  %45 = load ptr, ptr %compptr, align 8
  %MCU_width41 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 0, i32 13
  %46 = load i32, ptr %MCU_width41, align 4
  %DCT_scaled_size42 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %DCT_scaled_size42, align 4
  %mul43 = mul nsw i32 %46, %47
  %MCU_sample_width44 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 0, i32 16
  store i32 %mul43, ptr %MCU_sample_width44, align 8
  %48 = load ptr, ptr %compptr, align 8
  %width_in_blocks45 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 0, i32 7
  %49 = load i32, ptr %width_in_blocks45, align 4
  %MCU_width46 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 0, i32 13
  %50 = load i32, ptr %MCU_width46, align 4
  %rem47 = urem i32 %49, %50
  store i32 %rem47, ptr %tmp, align 4
  %cmp48 = icmp eq i32 %rem47, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.body
  %51 = load ptr, ptr %compptr, align 8
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i64 0, i32 13
  %52 = load i32, ptr %MCU_width51, align 4
  store i32 %52, ptr %tmp, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body
  %53 = load i32, ptr %tmp, align 4
  %54 = load ptr, ptr %compptr, align 8
  %last_col_width53 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 0, i32 17
  store i32 %53, ptr %last_col_width53, align 4
  %height_in_blocks54 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 0, i32 8
  %55 = load i32, ptr %height_in_blocks54, align 8
  %MCU_height55 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 0, i32 14
  %56 = load i32, ptr %MCU_height55, align 8
  %rem56 = urem i32 %55, %56
  store i32 %rem56, ptr %tmp, align 4
  %cmp57 = icmp eq i32 %rem56, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end52
  %57 = load ptr, ptr %compptr, align 8
  %MCU_height60 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 14
  %58 = load i32, ptr %MCU_height60, align 8
  store i32 %58, ptr %tmp, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end52
  %59 = load i32, ptr %tmp, align 4
  %60 = load ptr, ptr %compptr, align 8
  %last_row_height62 = getelementptr inbounds %struct.jpeg_component_info, ptr %60, i64 0, i32 18
  store i32 %59, ptr %last_row_height62, align 8
  %MCU_blocks63 = getelementptr inbounds %struct.jpeg_component_info, ptr %60, i64 0, i32 15
  %61 = load i32, ptr %MCU_blocks63, align 4
  store i32 %61, ptr %mcublks, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 66
  %63 = load i32, ptr %blocks_in_MCU64, align 8
  %add = add nsw i32 %63, %61
  %cmp65 = icmp sgt i32 %add, 10
  br i1 %cmp65, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end61
  %64 = load ptr, ptr %cinfo.addr, align 8
  %65 = load ptr, ptr %64, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 11, ptr %msg_code69, align 8
  %66 = load ptr, ptr %64, align 8
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull %64) #4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end61
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end72
  %68 = load i32, ptr %mcublks, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, ptr %mcublks, align 4
  %cmp73 = icmp sgt i32 %68, 0
  br i1 %cmp73, label %while.body, label %for.inc

while.body:                                       ; preds = %while.cond
  %69 = load i32, ptr %ci, align 4
  %70 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i64 0, i32 66
  %71 = load i32, ptr %blocks_in_MCU76, align 8
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %blocks_in_MCU76, align 8
  %idxprom77 = sext i32 %71 to i64
  %arrayidx78 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i64 0, i32 67, i64 %idxprom77
  store i32 %69, ptr %arrayidx78, align 4
  br label %while.cond, !llvm.loop !9

for.inc:                                          ; preds = %while.cond
  %72 = load i32, ptr %ci, align 4
  %inc79 = add nsw i32 %72, 1
  br label %for.cond, !llvm.loop !10

if.end80:                                         ; preds = %for.cond, %if.end
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %1 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 63, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %4, i64 0, i32 19
  %5 = load ptr, ptr %quant_table, align 8
  %cmp1.not = icmp eq ptr %5, null
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %quant_tbl_no, align 8
  store i32 %7, ptr %qtblno, align 4
  %cmp2 = icmp slt i32 %7, 0
  %8 = load i32, ptr %qtblno, align 4
  %cmp3 = icmp sgt i32 %8, 3
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %qtblno, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 39, i64 %idxprom5
  %11 = load ptr, ptr %arrayidx6, align 8
  %cmp7 = icmp eq ptr %11, null
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %lor.lhs.false4, %if.end
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 51, ptr %msg_code, align 8
  %14 = load i32, ptr %qtblno, align 4
  %15 = load ptr, ptr %12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 %14, ptr %msg_parm, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull %16) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %lor.lhs.false4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %mem, align 8
  %21 = load ptr, ptr %20, align 8
  %call = call ptr %21(ptr noundef %19, i32 noundef 1, i64 noundef 132) #4
  store ptr %call, ptr %qtbl, align 8
  %22 = load i32, ptr %qtblno, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 39, i64 %idxprom14
  %23 = load ptr, ptr %arrayidx15, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %call, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memcpy_chk(ptr noundef %call, ptr noundef %23, i64 noundef 132, i64 noundef %24) #4
  %25 = load ptr, ptr %qtbl, align 8
  %26 = load ptr, ptr %compptr, align 8
  %quant_table17 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 19
  store ptr %25, ptr %quant_table17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end12
  %27 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %27, 1
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
