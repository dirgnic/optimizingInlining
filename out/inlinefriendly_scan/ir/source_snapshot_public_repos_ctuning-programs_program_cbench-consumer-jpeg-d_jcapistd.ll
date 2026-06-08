; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcapistd.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcapistd.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_c_main_controller = type { ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_start_compress(ptr noundef %cinfo, i32 noundef %write_all_tables) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %write_all_tables.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %write_all_tables, ptr %write_all_tables.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %write_all_tables.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_suppress_tables(ptr noundef %13, i32 noundef 0)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err6, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %reset_error_mgr, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  %18 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %dest, align 8
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %init_destination, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21)
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_compress_master(ptr noundef %22)
  %23 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 51
  %24 = load ptr, ptr %master, align 8
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %prepare_for_pass, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  call void %25(ptr noundef %26)
  %27 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 36
  store i32 0, ptr %next_scanline, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 23
  %29 = load i32, ptr %raw_data_in, align 8
  %tobool7 = icmp ne i32 %29, 0
  %30 = zext i1 %tobool7 to i64
  %cond = select i1 %tobool7, i32 102, i32 101
  %31 = load ptr, ptr %cinfo.addr, align 8
  %global_state8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 4
  store i32 %cond, ptr %global_state8, align 4
  ret void
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) #1

declare void @jinit_compress_master(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @jpeg_write_scanlines(ptr noundef %cinfo, ptr noundef %scanlines, i32 noundef %num_lines) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %scanlines.addr = alloca ptr, align 8
  %num_lines.addr = alloca i32, align 4
  %row_ctr = alloca i32, align 4
  %rows_left = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %scanlines, ptr %scanlines.addr, align 8
  store i32 %num_lines, ptr %num_lines.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 101
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 36
  %13 = load i32, ptr %next_scanline, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_height, align 4
  %cmp4 = icmp uge i32 %13, %15
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 119, ptr %msg_code7, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err8, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %emit_message, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21, i32 noundef -1)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %22 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %progress, align 8
  %cmp10 = icmp ne ptr %23, null
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %24 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 36
  %25 = load i32, ptr %next_scanline12, align 8
  %conv = zext i32 %25 to i64
  %26 = load ptr, ptr %cinfo.addr, align 8
  %progress13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %progress13, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %image_height14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %image_height14, align 4
  %conv15 = zext i32 %29 to i64
  %30 = load ptr, ptr %cinfo.addr, align 8
  %progress16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %progress16, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %31, i32 0, i32 2
  store i64 %conv15, ptr %pass_limit, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %progress17, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %progress_monitor, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9
  %36 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 51
  %37 = load ptr, ptr %master, align 8
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %call_pass_startup, align 8
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end18
  %39 = load ptr, ptr %cinfo.addr, align 8
  %master20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 51
  %40 = load ptr, ptr %master20, align 8
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %pass_startup, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  call void %41(ptr noundef %42)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18
  %43 = load ptr, ptr %cinfo.addr, align 8
  %image_height22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 7
  %44 = load i32, ptr %image_height22, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 36
  %46 = load i32, ptr %next_scanline23, align 8
  %sub = sub i32 %44, %46
  store i32 %sub, ptr %rows_left, align 4
  %47 = load i32, ptr %num_lines.addr, align 4
  %48 = load i32, ptr %rows_left, align 4
  %cmp24 = icmp ugt i32 %47, %48
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  %49 = load i32, ptr %rows_left, align 4
  store i32 %49, ptr %num_lines.addr, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21
  store i32 0, ptr %row_ctr, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i32 0, i32 52
  %51 = load ptr, ptr %main, align 8
  %process_data = getelementptr inbounds %struct.jpeg_c_main_controller, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %process_data, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %scanlines.addr, align 8
  %55 = load i32, ptr %num_lines.addr, align 4
  call void %52(ptr noundef %53, ptr noundef %54, ptr noundef %row_ctr, i32 noundef %55)
  %56 = load i32, ptr %row_ctr, align 4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 36
  %58 = load i32, ptr %next_scanline28, align 8
  %add = add i32 %58, %56
  store i32 %add, ptr %next_scanline28, align 8
  %59 = load i32, ptr %row_ctr, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @jpeg_write_raw_data(ptr noundef %cinfo, ptr noundef %data, i32 noundef %num_lines) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %num_lines.addr = alloca i32, align 4
  %lines_per_iMCU_row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %num_lines, ptr %num_lines.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 102
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 36
  %13 = load i32, ptr %next_scanline, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %image_height, align 4
  %cmp4 = icmp uge i32 %13, %15
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 119, ptr %msg_code7, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err8, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %emit_message, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %22 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %progress, align 8
  %cmp10 = icmp ne ptr %23, null
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %24 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 36
  %25 = load i32, ptr %next_scanline12, align 8
  %conv = zext i32 %25 to i64
  %26 = load ptr, ptr %cinfo.addr, align 8
  %progress13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %progress13, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %image_height14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %image_height14, align 4
  %conv15 = zext i32 %29 to i64
  %30 = load ptr, ptr %cinfo.addr, align 8
  %progress16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %progress16, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %31, i32 0, i32 2
  store i64 %conv15, ptr %pass_limit, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %progress17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %progress17, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %progress_monitor, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9
  %36 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 51
  %37 = load ptr, ptr %master, align 8
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %call_pass_startup, align 8
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end18
  %39 = load ptr, ptr %cinfo.addr, align 8
  %master20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 51
  %40 = load ptr, ptr %master20, align 8
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %pass_startup, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  call void %41(ptr noundef %42)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18
  %43 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 39
  %44 = load i32, ptr %max_v_samp_factor, align 4
  %mul = mul nsw i32 %44, 8
  store i32 %mul, ptr %lines_per_iMCU_row, align 4
  %45 = load i32, ptr %num_lines.addr, align 4
  %46 = load i32, ptr %lines_per_iMCU_row, align 4
  %cmp22 = icmp ult i32 %45, %46
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end21
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err25, align 8
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 5
  store i32 21, ptr %msg_code26, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err27, align 8
  %error_exit28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %error_exit28, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  call void %51(ptr noundef %52)
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end21
  %53 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 54
  %54 = load ptr, ptr %coef, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %compress_data, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %57 = load ptr, ptr %data.addr, align 8
  %call = call i32 %55(ptr noundef %56, ptr noundef %57)
  %tobool30 = icmp ne i32 %call, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end29
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end29
  %58 = load i32, ptr %lines_per_iMCU_row, align 4
  %59 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 36
  %60 = load i32, ptr %next_scanline33, align 8
  %add = add i32 %60, %58
  store i32 %add, ptr %next_scanline33, align 8
  %61 = load i32, ptr %lines_per_iMCU_row, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then31, %if.then5
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
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
