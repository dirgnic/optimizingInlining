; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdapistd.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdapistd.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_start_decompress(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %1, 202
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_master_decompress(ptr noundef %2)
  %3 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 14
  %4 = load i32, ptr %buffered_image, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 4
  store i32 207, ptr %global_state2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4
  store i32 203, ptr %global_state3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %global_state5, align 4
  %cmp6 = icmp eq i32 %8, 203
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 77
  %10 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %has_multiple_scans, align 8
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then9, label %if.end34

if.then9:                                         ; preds = %if.then7
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %if.then9
  %12 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %progress, align 8
  %cmp10 = icmp ne ptr %13, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.cond
  %14 = load ptr, ptr %cinfo.addr, align 8
  %progress12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %progress12, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %progress_monitor, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %inputctl14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 77
  %19 = load ptr, ptr %inputctl14, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %consume_input, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %20(ptr noundef %21)
  store i32 %call, ptr %retcode, align 4
  %22 = load i32, ptr %retcode, align 4
  %cmp15 = icmp eq i32 %22, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  %23 = load i32, ptr %retcode, align 4
  %cmp18 = icmp eq i32 %23, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  br label %for.end

if.end20:                                         ; preds = %if.end17
  %24 = load ptr, ptr %cinfo.addr, align 8
  %progress21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %progress21, align 8
  %cmp22 = icmp ne ptr %25, null
  br i1 %cmp22, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end20
  %26 = load i32, ptr %retcode, align 4
  %cmp23 = icmp eq i32 %26, 3
  br i1 %cmp23, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load i32, ptr %retcode, align 4
  %cmp24 = icmp eq i32 %27, 1
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load ptr, ptr %cinfo.addr, align 8
  %progress26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %progress26, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %29, i32 0, i32 1
  %30 = load i64, ptr %pass_counter, align 8
  %inc = add nsw i64 %30, 1
  store i64 %inc, ptr %pass_counter, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %progress27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %progress27, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %pass_limit, align 8
  %cmp28 = icmp sge i64 %inc, %33
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then25
  %34 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 60
  %35 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %35 to i64
  %36 = load ptr, ptr %cinfo.addr, align 8
  %progress30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %progress30, align 8
  %pass_limit31 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %pass_limit31, align 8
  %add = add nsw i64 %38, %conv
  store i64 %add, ptr %pass_limit31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %lor.lhs.false, %if.end20
  br label %for.cond

for.end:                                          ; preds = %if.then19
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.then7
  %39 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 34
  %40 = load i32, ptr %input_scan_number, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 36
  store i32 %40, ptr %output_scan_number, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %global_state35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 4
  %43 = load i32, ptr %global_state35, align 4
  %cmp36 = icmp ne i32 %43, 204
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.else
  %44 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  %global_state39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %global_state39, align 4
  %48 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %err40, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %47, ptr %arrayidx, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err41, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %error_exit, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void %52(ptr noundef %53)
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end34
  %54 = load ptr, ptr %cinfo.addr, align 8
  %call44 = call i32 @output_pass_setup(ptr noundef %54)
  store i32 %call44, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then16, %if.then1
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

declare void @jinit_master_decompress(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @output_pass_setup(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %last_scanline = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 204
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 73
  %3 = load ptr, ptr %master, align 8
  %prepare_for_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %prepare_for_output_pass, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 33
  store i32 0, ptr %output_scanline, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 4
  store i32 204, ptr %global_state1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %8 = load ptr, ptr %cinfo.addr, align 8
  %master2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 73
  %9 = load ptr, ptr %master2, align 8
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %is_dummy_pass, align 8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end27

while.body:                                       ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %if.end22, %while.body
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 33
  %12 = load i32, ptr %output_scanline4, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 27
  %14 = load i32, ptr %output_height, align 4
  %cmp5 = icmp ult i32 %12, %14
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond3
  %15 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %progress, align 8
  %cmp7 = icmp ne ptr %16, null
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %while.body6
  %17 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 33
  %18 = load i32, ptr %output_scanline9, align 8
  %conv = zext i32 %18 to i64
  %19 = load ptr, ptr %cinfo.addr, align 8
  %progress10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %progress10, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %20, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %output_height11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 27
  %22 = load i32, ptr %output_height11, align 4
  %conv12 = zext i32 %22 to i64
  %23 = load ptr, ptr %cinfo.addr, align 8
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %progress13, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %24, i32 0, i32 2
  store i64 %conv12, ptr %pass_limit, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %progress14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %progress14, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %progress_monitor, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  call void %27(ptr noundef %28)
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %while.body6
  %29 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 33
  %30 = load i32, ptr %output_scanline16, align 8
  store i32 %30, ptr %last_scanline, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 74
  %32 = load ptr, ptr %main, align 8
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %process_data, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 33
  call void %33(ptr noundef %34, ptr noundef null, ptr noundef %output_scanline17, i32 noundef 0)
  %36 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 33
  %37 = load i32, ptr %output_scanline18, align 8
  %38 = load i32, ptr %last_scanline, align 4
  %cmp19 = icmp eq i32 %37, %38
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end15
  br label %while.cond3, !llvm.loop !6

while.end:                                        ; preds = %while.cond3
  %39 = load ptr, ptr %cinfo.addr, align 8
  %master23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 73
  %40 = load ptr, ptr %master23, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %finish_output_pass, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  call void %41(ptr noundef %42)
  %43 = load ptr, ptr %cinfo.addr, align 8
  %master24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 73
  %44 = load ptr, ptr %master24, align 8
  %prepare_for_output_pass25 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %prepare_for_output_pass25, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  call void %45(ptr noundef %46)
  %47 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 33
  store i32 0, ptr %output_scanline26, align 8
  br label %while.cond, !llvm.loop !8

while.end27:                                      ; preds = %while.cond
  %48 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 15
  %49 = load i32, ptr %raw_data_out, align 4
  %tobool28 = icmp ne i32 %49, 0
  %50 = zext i1 %tobool28 to i64
  %cond = select i1 %tobool28, i32 206, i32 205
  %51 = load ptr, ptr %cinfo.addr, align 8
  %global_state29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 4
  store i32 %cond, ptr %global_state29, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end27, %if.then21
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_read_scanlines(ptr noundef %cinfo, ptr noundef %scanlines, i32 noundef %max_lines) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %scanlines.addr = alloca ptr, align 8
  %max_lines.addr = alloca i32, align 4
  %row_ctr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %scanlines, ptr %scanlines.addr, align 8
  store i32 %max_lines, ptr %max_lines.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 205
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 33
  %13 = load i32, ptr %output_scanline, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 27
  %15 = load i32, ptr %output_height, align 4
  %cmp4 = icmp uge i32 %13, %15
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 119, ptr %msg_code7, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err8, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %emit_message, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %22 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %progress, align 8
  %cmp10 = icmp ne ptr %23, null
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %24 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 33
  %25 = load i32, ptr %output_scanline12, align 8
  %conv = zext i32 %25 to i64
  %26 = load ptr, ptr %cinfo.addr, align 8
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %progress13, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %output_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 27
  %29 = load i32, ptr %output_height14, align 4
  %conv15 = zext i32 %29 to i64
  %30 = load ptr, ptr %cinfo.addr, align 8
  %progress16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %progress16, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %31, i32 0, i32 2
  store i64 %conv15, ptr %pass_limit, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %progress17, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %progress_monitor, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %row_ctr, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 74
  %37 = load ptr, ptr %main, align 8
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %process_data, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load ptr, ptr %scanlines.addr, align 8
  %41 = load i32, ptr %max_lines.addr, align 4
  call void %38(ptr noundef %39, ptr noundef %40, ptr noundef %row_ctr, i32 noundef %41)
  %42 = load i32, ptr %row_ctr, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 33
  %44 = load i32, ptr %output_scanline19, align 8
  %add = add i32 %44, %42
  store i32 %add, ptr %output_scanline19, align 8
  %45 = load i32, ptr %row_ctr, align 4
  store i32 %45, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then5
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_read_raw_data(ptr noundef %cinfo, ptr noundef %data, i32 noundef %max_lines) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %max_lines.addr = alloca i32, align 4
  %lines_per_iMCU_row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %max_lines, ptr %max_lines.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 33
  %13 = load i32, ptr %output_scanline, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 27
  %15 = load i32, ptr %output_height, align 4
  %cmp4 = icmp uge i32 %13, %15
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 119, ptr %msg_code7, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err8, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %emit_message, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %22 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %progress, align 8
  %cmp10 = icmp ne ptr %23, null
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %24 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 33
  %25 = load i32, ptr %output_scanline12, align 8
  %conv = zext i32 %25 to i64
  %26 = load ptr, ptr %cinfo.addr, align 8
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %progress13, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %output_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 27
  %29 = load i32, ptr %output_height14, align 4
  %conv15 = zext i32 %29 to i64
  %30 = load ptr, ptr %cinfo.addr, align 8
  %progress16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %progress16, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %31, i32 0, i32 2
  store i64 %conv15, ptr %pass_limit, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %progress17, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %progress_monitor, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9
  %36 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 58
  %37 = load i32, ptr %max_v_samp_factor, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 59
  %39 = load i32, ptr %min_DCT_scaled_size, align 4
  %mul = mul nsw i32 %37, %39
  store i32 %mul, ptr %lines_per_iMCU_row, align 4
  %40 = load i32, ptr %max_lines.addr, align 4
  %41 = load i32, ptr %lines_per_iMCU_row, align 4
  %cmp19 = icmp ult i32 %40, %41
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end18
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err22, align 8
  %msg_code23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5
  store i32 21, ptr %msg_code23, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err24, align 8
  %error_exit25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %error_exit25, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void %46(ptr noundef %47)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18
  %48 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 75
  %49 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %49, i32 0, i32 3
  %50 = load ptr, ptr %decompress_data, align 8
  %51 = load ptr, ptr %cinfo.addr, align 8
  %52 = load ptr, ptr %data.addr, align 8
  %call = call i32 %50(ptr noundef %51, ptr noundef %52)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end26
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end26
  %53 = load i32, ptr %lines_per_iMCU_row, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 33
  %55 = load i32, ptr %output_scanline29, align 8
  %add = add i32 %55, %53
  store i32 %add, ptr %output_scanline29, align 8
  %56 = load i32, ptr %lines_per_iMCU_row, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then5
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_start_output(ptr noundef %cinfo, i32 noundef %scan_number) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %scan_number.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %scan_number, ptr %scan_number.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 207
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp ne i32 %3, 204
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state3, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load i32, ptr %scan_number.addr, align 4
  %cmp6 = icmp sle i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %scan_number.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 77
  %16 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %eoi_reached, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %if.end8
  %18 = load i32, ptr %scan_number.addr, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 34
  %20 = load i32, ptr %input_scan_number, align 4
  %cmp10 = icmp sgt i32 %18, %20
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true9
  %21 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 34
  %22 = load i32, ptr %input_scan_number12, align 4
  store i32 %22, ptr %scan_number.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true9, %if.end8
  %23 = load i32, ptr %scan_number.addr, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 36
  store i32 %23, ptr %output_scan_number, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @output_pass_setup(ptr noundef %25)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_finish_output(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %1, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp eq i32 %3, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 14
  %5 = load i32, ptr %buffered_image, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 73
  %7 = load ptr, ptr %master, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %finish_output_pass, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 4
  store i32 208, ptr %global_state3, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load ptr, ptr %cinfo.addr, align 8
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %global_state4, align 4
  %cmp5 = icmp ne i32 %12, 208
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %global_state7, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %16, ptr %arrayidx, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %error_exit, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end10
  %23 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 34
  %24 = load i32, ptr %input_scan_number, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 36
  %26 = load i32, ptr %output_scan_number, align 4
  %cmp11 = icmp sle i32 %24, %26
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 77
  %28 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %eoi_reached, align 4
  %tobool12 = icmp ne i32 %29, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load ptr, ptr %cinfo.addr, align 8
  %inputctl13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 77
  %32 = load ptr, ptr %inputctl13, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %consume_input, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %33(ptr noundef %34)
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %35 = load ptr, ptr %cinfo.addr, align 8
  %global_state17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 4
  store i32 207, ptr %global_state17, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then15
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
