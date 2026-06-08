; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jdapistd.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdapistd.c"
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
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %0, 202
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_master_decompress(ptr noundef %1) #2
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 14
  %2 = load i32, ptr %buffered_image, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 4
  store i32 207, ptr %global_state2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 4
  store i32 203, ptr %global_state3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 4
  %6 = load i32, ptr %global_state5, align 4
  %cmp6 = icmp eq i32 %6, 203
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 77
  %8 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %8, i64 0, i32 4
  %9 = load i32, ptr %has_multiple_scans, align 8
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end34, label %for.cond

for.cond:                                         ; preds = %if.then7, %if.end33
  %10 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 2
  %11 = load ptr, ptr %progress, align 8
  %cmp10.not = icmp eq ptr %11, null
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %for.cond
  %12 = load ptr, ptr %cinfo.addr, align 8
  %progress12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %progress12, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef %12) #2
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.cond
  %15 = load ptr, ptr %cinfo.addr, align 8
  %inputctl14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 77
  %16 = load ptr, ptr %inputctl14, align 8
  %17 = load ptr, ptr %16, align 8
  %call = call i32 %17(ptr noundef %15) #2
  store i32 %call, ptr %retcode, align 4
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  %18 = load i32, ptr %retcode, align 4
  %cmp18 = icmp eq i32 %18, 2
  br i1 %cmp18, label %if.end34, label %if.end20

if.end20:                                         ; preds = %if.end17
  %19 = load ptr, ptr %cinfo.addr, align 8
  %progress21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 2
  %20 = load ptr, ptr %progress21, align 8
  %cmp22.not = icmp eq ptr %20, null
  br i1 %cmp22.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %21 = load i32, ptr %retcode, align 4
  %cmp23 = icmp eq i32 %21, 3
  %22 = load i32, ptr %retcode, align 4
  %cmp24 = icmp eq i32 %22, 1
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp24
  br i1 %or.cond, label %if.then25, label %if.end33

if.then25:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %cinfo.addr, align 8
  %progress26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 2
  %24 = load ptr, ptr %progress26, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %24, i64 0, i32 1
  %25 = load i64, ptr %pass_counter, align 8
  %inc = add nsw i64 %25, 1
  store i64 %inc, ptr %pass_counter, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %progress27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 2
  %27 = load ptr, ptr %progress27, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 2
  %28 = load i64, ptr %pass_limit, align 8
  %cmp28.not = icmp slt i64 %inc, %28
  br i1 %cmp28.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.then25
  %29 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 60
  %30 = load i32, ptr %total_iMCU_rows, align 8
  %conv = zext i32 %30 to i64
  %progress30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %progress30, align 8
  %pass_limit31 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %31, i64 0, i32 2
  %32 = load i64, ptr %pass_limit31, align 8
  %add = add nsw i64 %32, %conv
  store i64 %add, ptr %pass_limit31, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %if.then29, %land.lhs.true, %if.end20
  br label %for.cond

if.end34:                                         ; preds = %if.end17, %if.then7
  %33 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 34
  %34 = load i32, ptr %input_scan_number, align 4
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 36
  store i32 %34, ptr %output_scan_number, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %global_state35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 4
  %36 = load i32, ptr %global_state35, align 4
  %cmp36.not = icmp eq i32 %36, 204
  br i1 %cmp36.not, label %if.end43, label %if.then38

if.then38:                                        ; preds = %if.else
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %global_state39, align 4
  %40 = load ptr, ptr %37, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 6
  store i32 %39, ptr %msg_parm, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %42, align 8
  call void %43(ptr noundef nonnull %41) #2
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38, %if.end34
  %44 = load ptr, ptr %cinfo.addr, align 8
  %call44 = call i32 @output_pass_setup(ptr noundef %44)
  store i32 %call44, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then16, %if.then1
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

declare void @jinit_master_decompress(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @output_pass_setup(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %last_scanline = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 204
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 73
  %2 = load ptr, ptr %master, align 8
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr noundef %1) #2
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 33
  store i32 0, ptr %output_scanline, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 4
  store i32 204, ptr %global_state1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %5 = load ptr, ptr %cinfo.addr, align 8
  %master2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 73
  %6 = load ptr, ptr %master2, align 8
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %6, i64 0, i32 2
  %7 = load i32, ptr %is_dummy_pass, align 8
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.end27, label %while.cond3

while.cond3:                                      ; preds = %if.end15, %while.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 33
  %9 = load i32, ptr %output_scanline4, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %output_height, align 4
  %cmp5 = icmp ult i32 %9, %10
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond3
  %11 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %progress, align 8
  %cmp7.not = icmp eq ptr %12, null
  br i1 %cmp7.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %while.body6
  %13 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 33
  %14 = load i32, ptr %output_scanline9, align 8
  %conv = zext i32 %14 to i64
  %progress10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %progress10, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %15, i64 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %output_height11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 27
  %17 = load i32, ptr %output_height11, align 4
  %conv12 = zext i32 %17 to i64
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %progress13, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %18, i64 0, i32 2
  store i64 %conv12, ptr %pass_limit, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %progress14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 2
  %20 = load ptr, ptr %progress14, align 8
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef %19) #2
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %while.body6
  %22 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 33
  %23 = load i32, ptr %output_scanline16, align 8
  store i32 %23, ptr %last_scanline, align 4
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 74
  %24 = load ptr, ptr %main, align 8
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %process_data, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 33
  call void %25(ptr noundef %26, ptr noundef null, ptr noundef nonnull %output_scanline17, i32 noundef 0) #2
  %output_scanline18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 33
  %27 = load i32, ptr %output_scanline18, align 8
  %28 = load i32, ptr %last_scanline, align 4
  %cmp19 = icmp eq i32 %27, %28
  br i1 %cmp19, label %return, label %while.cond3, !llvm.loop !6

while.end:                                        ; preds = %while.cond3
  %29 = load ptr, ptr %cinfo.addr, align 8
  %master23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 73
  %30 = load ptr, ptr %master23, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %30, i64 0, i32 1
  %31 = load ptr, ptr %finish_output_pass, align 8
  call void %31(ptr noundef %29) #2
  %master24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 73
  %32 = load ptr, ptr %master24, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  call void %33(ptr noundef %34) #2
  %output_scanline26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 33
  store i32 0, ptr %output_scanline26, align 8
  br label %while.cond, !llvm.loop !8

while.end27:                                      ; preds = %while.cond
  %35 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 15
  %36 = load i32, ptr %raw_data_out, align 4
  %tobool28.not = icmp eq i32 %36, 0
  %cond = select i1 %tobool28.not, i32 205, i32 206
  %global_state29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 4
  store i32 %cond, ptr %global_state29, align 4
  br label %return

return:                                           ; preds = %if.end15, %while.end27
  %storemerge = phi i32 [ 1, %while.end27 ], [ 0, %if.end15 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_read_scanlines(ptr noundef %cinfo, ptr noundef %scanlines, i32 noundef %max_lines) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %scanlines.addr = alloca ptr, align 8
  %max_lines.addr = alloca i32, align 4
  %row_ctr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %scanlines, ptr %scanlines.addr, align 8
  store i32 %max_lines, ptr %max_lines.addr, align 4
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 205
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 33
  %9 = load i32, ptr %output_scanline, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %output_height, align 4
  %cmp4.not = icmp ult i32 %9, %10
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 119, ptr %msg_code7, align 8
  %13 = load ptr, ptr %11, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %emit_message, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15, i32 noundef -1) #2
  br label %return

if.end9:                                          ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 2
  %17 = load ptr, ptr %progress, align 8
  %cmp10.not = icmp eq ptr %17, null
  br i1 %cmp10.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end9
  %18 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 33
  %19 = load i32, ptr %output_scanline12, align 8
  %conv = zext i32 %19 to i64
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %progress13, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %20, i64 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %output_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 27
  %22 = load i32, ptr %output_height14, align 4
  %conv15 = zext i32 %22 to i64
  %progress16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %progress16, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %23, i64 0, i32 2
  store i64 %conv15, ptr %pass_limit, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %progress17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 2
  %25 = load ptr, ptr %progress17, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef %24) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %row_ctr, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 74
  %28 = load ptr, ptr %main, align 8
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %process_data, align 8
  %30 = load ptr, ptr %scanlines.addr, align 8
  %31 = load i32, ptr %max_lines.addr, align 4
  call void %29(ptr noundef %27, ptr noundef %30, ptr noundef nonnull %row_ctr, i32 noundef %31) #2
  %32 = load i32, ptr %row_ctr, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 33
  %34 = load i32, ptr %output_scanline19, align 8
  %add = add i32 %34, %32
  store i32 %add, ptr %output_scanline19, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then5
  %storemerge = phi i32 [ %32, %if.end18 ], [ 0, %if.then5 ]
  ret i32 %storemerge
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
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 206
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 33
  %9 = load i32, ptr %output_scanline, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %output_height, align 4
  %cmp4.not = icmp ult i32 %9, %10
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 119, ptr %msg_code7, align 8
  %13 = load ptr, ptr %11, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %emit_message, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15, i32 noundef -1) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 2
  %17 = load ptr, ptr %progress, align 8
  %cmp10.not = icmp eq ptr %17, null
  br i1 %cmp10.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end9
  %18 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 33
  %19 = load i32, ptr %output_scanline12, align 8
  %conv = zext i32 %19 to i64
  %progress13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %progress13, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %20, i64 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %output_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 27
  %22 = load i32, ptr %output_height14, align 4
  %conv15 = zext i32 %22 to i64
  %progress16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %progress16, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %23, i64 0, i32 2
  store i64 %conv15, ptr %pass_limit, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %progress17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 2
  %25 = load ptr, ptr %progress17, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef %24) #2
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9
  %27 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 58
  %28 = load i32, ptr %max_v_samp_factor, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 59
  %29 = load i32, ptr %min_DCT_scaled_size, align 4
  %mul = mul nsw i32 %28, %29
  store i32 %mul, ptr %lines_per_iMCU_row, align 4
  %30 = load i32, ptr %max_lines.addr, align 4
  %cmp19 = icmp ult i32 %30, %mul
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end18
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %msg_code23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 21, ptr %msg_code23, align 8
  %33 = load ptr, ptr %31, align 8
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull %31) #2
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18
  %35 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 75
  %36 = load ptr, ptr %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %36, i64 0, i32 3
  %37 = load ptr, ptr %decompress_data, align 8
  %38 = load ptr, ptr %data.addr, align 8
  %call = call i32 %37(ptr noundef %35, ptr noundef %38) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end26
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end26
  %39 = load i32, ptr %lines_per_iMCU_row, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i64 0, i32 33
  %41 = load i32, ptr %output_scanline29, align 8
  %add = add i32 %41, %39
  store i32 %add, ptr %output_scanline29, align 8
  store i32 %39, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then5
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_start_output(ptr noundef %cinfo, i32 noundef %scan_number) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %scan_number.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %scan_number, ptr %scan_number.addr, align 4
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 207
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %global_state1, align 4
  %cmp2.not = icmp eq i32 %2, 204
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %global_state3, align 4
  %6 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %5, ptr %msg_parm, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, ptr %scan_number.addr, align 4
  %cmp6 = icmp slt i32 %10, 1
  %spec.store.select = select i1 %cmp6, i32 1, i32 %10
  store i32 %spec.store.select, ptr %scan_number.addr, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 77
  %12 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %12, i64 0, i32 5
  %13 = load i32, ptr %eoi_reached, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %14 = load i32, ptr %scan_number.addr, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 34
  %16 = load i32, ptr %input_scan_number, align 4
  %cmp10 = icmp sgt i32 %14, %16
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true9
  %17 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 34
  %18 = load i32, ptr %input_scan_number12, align 4
  store i32 %18, ptr %scan_number.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true9, %if.end
  %19 = load i32, ptr %scan_number.addr, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 36
  store i32 %19, ptr %output_scan_number, align 4
  %call = call i32 @output_pass_setup(ptr noundef %20)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_finish_output(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %0, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp eq i32 %2, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 14
  %4 = load i32, ptr %buffered_image, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 73
  %6 = load ptr, ptr %master, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %finish_output_pass, align 8
  call void %7(ptr noundef %5) #2
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 4
  store i32 208, ptr %global_state3, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load ptr, ptr %cinfo.addr, align 8
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 4
  %9 = load i32, ptr %global_state4, align 4
  %cmp5.not = icmp eq i32 %9, 208
  br i1 %cmp5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %global_state7, align 4
  %13 = load ptr, ptr %10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 6
  store i32 %12, ptr %msg_parm, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull %14) #2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end10
  %17 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 34
  %18 = load i32, ptr %input_scan_number, align 4
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 36
  %19 = load i32, ptr %output_scan_number, align 4
  %cmp11.not = icmp sgt i32 %18, %19
  br i1 %cmp11.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %20 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 77
  %21 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %21, i64 0, i32 5
  %22 = load i32, ptr %eoi_reached, align 4
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %23 = load ptr, ptr %cinfo.addr, align 8
  %inputctl13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 77
  %24 = load ptr, ptr %inputctl13, align 8
  %25 = load ptr, ptr %24, align 8
  %call = call i32 %25(ptr noundef %23) #2
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %return, label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond, %land.rhs
  %26 = load ptr, ptr %cinfo.addr, align 8
  %global_state17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 4
  store i32 207, ptr %global_state17, align 4
  br label %return

return:                                           ; preds = %while.body, %while.end
  %storemerge = phi i32 [ 1, %while.end ], [ 0, %while.body ]
  ret i32 %storemerge
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
