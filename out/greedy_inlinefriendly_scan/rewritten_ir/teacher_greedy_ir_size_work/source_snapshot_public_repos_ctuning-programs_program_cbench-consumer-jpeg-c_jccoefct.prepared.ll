; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jccoefct.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jccoefct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_c_coef_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 192)
  store ptr %call, ptr %coef, align 8
  %4 = load ptr, ptr %coef, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 54
  store ptr %4, ptr %coef1, align 8
  %6 = load ptr, ptr %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_coef, ptr %start_pass, align 8
  %7 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ci, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 14
  %9 = load ptr, ptr %comp_info, align 8
  store ptr %9, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %ci, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 12
  %12 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %mem2, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %request_virt_barray, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i32 0, i32 7
  %18 = load i32, ptr %width_in_blocks, align 4
  %conv = zext i32 %18 to i64
  %19 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %h_samp_factor, align 8
  %conv3 = sext i32 %20 to i64
  %call4 = call i64 @jround_up(i64 noundef %conv, i64 noundef %conv3)
  %conv5 = trunc i64 %call4 to i32
  %21 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i32 0, i32 8
  %22 = load i32, ptr %height_in_blocks, align 8
  %conv6 = zext i32 %22 to i64
  %23 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %v_samp_factor, align 4
  %conv7 = sext i32 %24 to i64
  %call8 = call i64 @jround_up(i64 noundef %conv6, i64 noundef %conv7)
  %conv9 = trunc i64 %call8 to i32
  %25 = load ptr, ptr %compptr, align 8
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %v_samp_factor10, align 4
  %call11 = call ptr %15(ptr noundef %16, i32 noundef 1, i32 noundef 0, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %26)
  %27 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  store ptr %call11, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %ci, align 4
  %30 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %31 = load ptr, ptr %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %mem12, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %alloc_large, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call13 = call ptr %33(ptr noundef %34, i32 noundef 1, i64 noundef 1280)
  store ptr %call13, ptr %buffer, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %if.else
  %35 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %35, 10
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond14
  %36 = load ptr, ptr %buffer, align 8
  %37 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %36, i64 %idx.ext
  %38 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %39 to i64
  %arrayidx19 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom18
  store ptr %add.ptr, ptr %arrayidx19, align 8
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %40 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %40, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end22:                                        ; preds = %for.cond14
  %41 = load ptr, ptr %coef, align 8
  %whole_image23 = getelementptr inbounds %struct.my_coef_controller, ptr %41, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [10 x ptr], ptr %whole_image23, i64 0, i64 0
  store ptr null, ptr %arrayidx24, align 8
  br label %if.end

if.end:                                           ; preds = %for.end22, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_coef(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %pass_mode, ptr %pass_mode.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 54
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %2, i32 0, i32 1
  store i32 0, ptr %iMCU_row_num, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jccoefct_0(ptr noundef %3)
  %4 = load i32, ptr %pass_mode.addr, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 0
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %13 = load ptr, ptr %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, ptr %13, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %pub, i32 0, i32 1
  store ptr @compress_data, ptr %compress_data, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %14 = load ptr, ptr %coef, align 8
  %whole_image4 = getelementptr inbounds %struct.my_coef_controller, ptr %14, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [10 x ptr], ptr %whole_image4, i64 0, i64 0
  %15 = load ptr, ptr %arrayidx5, align 8
  %cmp6 = icmp eq ptr %15, null
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %sw.bb3
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 4, ptr %msg_code9, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %error_exit11, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %sw.bb3
  %22 = load ptr, ptr %coef, align 8
  %pub13 = getelementptr inbounds %struct.my_coef_controller, ptr %22, i32 0, i32 0
  %compress_data14 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %pub13, i32 0, i32 1
  store ptr @compress_first_pass, ptr %compress_data14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %23 = load ptr, ptr %coef, align 8
  %whole_image16 = getelementptr inbounds %struct.my_coef_controller, ptr %23, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [10 x ptr], ptr %whole_image16, i64 0, i64 0
  %24 = load ptr, ptr %arrayidx17, align 8
  %cmp18 = icmp eq ptr %24, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %sw.bb15
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 5
  store i32 4, ptr %msg_code21, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %error_exit23, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  call void %29(ptr noundef %30)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %sw.bb15
  %31 = load ptr, ptr %coef, align 8
  %pub25 = getelementptr inbounds %struct.my_coef_controller, ptr %31, i32 0, i32 0
  %compress_data26 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %pub25, i32 0, i32 1
  store ptr @compress_output, ptr %compress_data26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err27, align 8
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5
  store i32 4, ptr %msg_code28, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err29, align 8
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %error_exit30, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  call void %36(ptr noundef %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end24, %if.end12, %if.end
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_iMCU_row(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 54
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 41
  %3 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %4, i32 0, i32 4
  store i32 1, ptr %MCU_rows_per_iMCU_row, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iMCU_row_num, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 40
  %8 = load i32, ptr %total_iMCU_rows, align 8
  %sub = sub i32 %8, 1
  %cmp2 = icmp ult i32 %6, %sub
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %v_samp_factor, align 4
  %12 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i32 0, i32 4
  store i32 %11, ptr %MCU_rows_per_iMCU_row4, align 4
  br label %if.end

if.else5:                                         ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info6, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx7, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 18
  %15 = load i32, ptr %last_row_height, align 8
  %16 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, ptr %16, i32 0, i32 4
  store i32 %15, ptr %MCU_rows_per_iMCU_row8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %17 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %17, i32 0, i32 2
  store i32 0, ptr %mcu_ctr, align 4
  %18 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %18, i32 0, i32 3
  store i32 0, ptr %MCU_vert_offset, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_data(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %ypos = alloca i32, align 4
  %xpos = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 54
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 43
  %3 = load i32, ptr %MCUs_per_row, align 8
  %sub = sub i32 %3, 1
  store i32 %sub, ptr %last_MCU_col, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 40
  %5 = load i32, ptr %total_iMCU_rows, align 8
  %sub2 = sub i32 %5, 1
  store i32 %sub2, ptr %last_iMCU_row, align 4
  %6 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %MCU_vert_offset, align 8
  store i32 %7, ptr %yoffset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %entry
  %8 = load i32, ptr %yoffset, align 4
  %9 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %MCU_rows_per_iMCU_row, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %mcu_ctr, align 4
  store i32 %12, ptr %MCU_col_num, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc89, %for.body
  %13 = load i32, ptr %MCU_col_num, align 4
  %14 = load i32, ptr %last_MCU_col, align 4
  %cmp4 = icmp ule i32 %13, %14
  br i1 %cmp4, label %for.body5, label %for.end91

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %blkn, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc81, %for.body5
  %15 = load i32, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 41
  %17 = load i32, ptr %comps_in_scan, align 4
  %cmp7 = icmp slt i32 %15, %17
  br i1 %cmp7, label %for.body8, label %for.end83

for.body8:                                        ; preds = %for.cond6
  %18 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 42
  %19 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  store ptr %20, ptr %compptr, align 8
  %21 = load i32, ptr %MCU_col_num, align 4
  %22 = load i32, ptr %last_MCU_col, align 4
  %cmp9 = icmp ult i32 %21, %22
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body8
  %23 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 13
  %24 = load i32, ptr %MCU_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body8
  %25 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 17
  %26 = load i32, ptr %last_col_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, ptr %blockcnt, align 4
  %27 = load i32, ptr %MCU_col_num, align 4
  %28 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i32 0, i32 16
  %29 = load i32, ptr %MCU_sample_width, align 8
  %mul = mul i32 %27, %29
  store i32 %mul, ptr %xpos, align 4
  %30 = load i32, ptr %yoffset, align 4
  %mul10 = mul nsw i32 %30, 8
  store i32 %mul10, ptr %ypos, align 4
  store i32 0, ptr %yindex, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc78, %cond.end
  %31 = load i32, ptr %yindex, align 4
  %32 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i32 0, i32 14
  %33 = load i32, ptr %MCU_height, align 8
  %cmp12 = icmp slt i32 %31, %33
  br i1 %cmp12, label %for.body13, label %for.end80

for.body13:                                       ; preds = %for.cond11
  %34 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %iMCU_row_num, align 8
  %36 = load i32, ptr %last_iMCU_row, align 4
  %cmp14 = icmp ult i32 %35, %36
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body13
  %37 = load i32, ptr %yoffset, align 4
  %38 = load i32, ptr %yindex, align 4
  %add = add nsw i32 %37, %38
  %39 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i32 0, i32 18
  %40 = load i32, ptr %last_row_height, align 8
  %cmp15 = icmp slt i32 %add, %40
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body13
  %41 = load ptr, ptr %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 58
  %42 = load ptr, ptr %fdct, align 8
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %forward_DCT, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %compptr, align 8
  %46 = load ptr, ptr %input_buf.addr, align 8
  %47 = load i32, ptr %ci, align 4
  %idxprom16 = sext i32 %47 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %46, i64 %idxprom16
  %48 = load ptr, ptr %arrayidx17, align 8
  %49 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %blkn, align 4
  %idxprom18 = sext i32 %50 to i64
  %arrayidx19 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom18
  %51 = load ptr, ptr %arrayidx19, align 8
  %52 = load i32, ptr %ypos, align 4
  %53 = load i32, ptr %xpos, align 4
  %54 = load i32, ptr %blockcnt, align 4
  call void %43(ptr noundef %44, ptr noundef %45, ptr noundef %48, ptr noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54)
  %55 = load i32, ptr %blockcnt, align 4
  %56 = load ptr, ptr %compptr, align 8
  %MCU_width20 = getelementptr inbounds %struct.jpeg_component_info, ptr %56, i32 0, i32 13
  %57 = load i32, ptr %MCU_width20, align 4
  %cmp21 = icmp slt i32 %55, %57
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then
  %58 = load ptr, ptr %coef, align 8
  %MCU_buffer23 = getelementptr inbounds %struct.my_coef_controller, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %blkn, align 4
  %60 = load i32, ptr %blockcnt, align 4
  %add24 = add nsw i32 %59, %60
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer23, i64 0, i64 %idxprom25
  %61 = load ptr, ptr %arrayidx26, align 8
  %62 = load ptr, ptr %compptr, align 8
  %MCU_width27 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i32 0, i32 13
  %63 = load i32, ptr %MCU_width27, align 4
  %64 = load i32, ptr %blockcnt, align 4
  %sub28 = sub nsw i32 %63, %64
  %conv = sext i32 %sub28 to i64
  %mul29 = mul i64 %conv, 128
  call void @jzero_far(ptr noundef %61, i64 noundef %mul29)
  %65 = load i32, ptr %blockcnt, align 4
  store i32 %65, ptr %bi, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %if.then22
  %66 = load i32, ptr %bi, align 4
  %67 = load ptr, ptr %compptr, align 8
  %MCU_width31 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 13
  %68 = load i32, ptr %MCU_width31, align 4
  %cmp32 = icmp slt i32 %66, %68
  br i1 %cmp32, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond30
  %69 = load ptr, ptr %coef, align 8
  %MCU_buffer35 = getelementptr inbounds %struct.my_coef_controller, ptr %69, i32 0, i32 5
  %70 = load i32, ptr %blkn, align 4
  %71 = load i32, ptr %bi, align 4
  %add36 = add nsw i32 %70, %71
  %sub37 = sub nsw i32 %add36, 1
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer35, i64 0, i64 %idxprom38
  %72 = load ptr, ptr %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [64 x i16], ptr %72, i64 0
  %arrayidx41 = getelementptr inbounds [64 x i16], ptr %arrayidx40, i64 0, i64 0
  %73 = load i16, ptr %arrayidx41, align 2
  %74 = load ptr, ptr %coef, align 8
  %MCU_buffer42 = getelementptr inbounds %struct.my_coef_controller, ptr %74, i32 0, i32 5
  %75 = load i32, ptr %blkn, align 4
  %76 = load i32, ptr %bi, align 4
  %add43 = add nsw i32 %75, %76
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer42, i64 0, i64 %idxprom44
  %77 = load ptr, ptr %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [64 x i16], ptr %77, i64 0
  %arrayidx47 = getelementptr inbounds [64 x i16], ptr %arrayidx46, i64 0, i64 0
  store i16 %73, ptr %arrayidx47, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %78 = load i32, ptr %bi, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %bi, align 4
  br label %for.cond30, !llvm.loop !9

for.end:                                          ; preds = %for.cond30
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end74

if.else:                                          ; preds = %lor.lhs.false
  %79 = load ptr, ptr %coef, align 8
  %MCU_buffer48 = getelementptr inbounds %struct.my_coef_controller, ptr %79, i32 0, i32 5
  %80 = load i32, ptr %blkn, align 4
  %idxprom49 = sext i32 %80 to i64
  %arrayidx50 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer48, i64 0, i64 %idxprom49
  %81 = load ptr, ptr %arrayidx50, align 8
  %82 = load ptr, ptr %compptr, align 8
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i32 0, i32 13
  %83 = load i32, ptr %MCU_width51, align 4
  %conv52 = sext i32 %83 to i64
  %mul53 = mul i64 %conv52, 128
  call void @jzero_far(ptr noundef %81, i64 noundef %mul53)
  store i32 0, ptr %bi, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc71, %if.else
  %84 = load i32, ptr %bi, align 4
  %85 = load ptr, ptr %compptr, align 8
  %MCU_width55 = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i32 0, i32 13
  %86 = load i32, ptr %MCU_width55, align 4
  %cmp56 = icmp slt i32 %84, %86
  br i1 %cmp56, label %for.body58, label %for.end73

for.body58:                                       ; preds = %for.cond54
  %87 = load ptr, ptr %coef, align 8
  %MCU_buffer59 = getelementptr inbounds %struct.my_coef_controller, ptr %87, i32 0, i32 5
  %88 = load i32, ptr %blkn, align 4
  %sub60 = sub nsw i32 %88, 1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer59, i64 0, i64 %idxprom61
  %89 = load ptr, ptr %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds [64 x i16], ptr %89, i64 0
  %arrayidx64 = getelementptr inbounds [64 x i16], ptr %arrayidx63, i64 0, i64 0
  %90 = load i16, ptr %arrayidx64, align 2
  %91 = load ptr, ptr %coef, align 8
  %MCU_buffer65 = getelementptr inbounds %struct.my_coef_controller, ptr %91, i32 0, i32 5
  %92 = load i32, ptr %blkn, align 4
  %93 = load i32, ptr %bi, align 4
  %add66 = add nsw i32 %92, %93
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer65, i64 0, i64 %idxprom67
  %94 = load ptr, ptr %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds [64 x i16], ptr %94, i64 0
  %arrayidx70 = getelementptr inbounds [64 x i16], ptr %arrayidx69, i64 0, i64 0
  store i16 %90, ptr %arrayidx70, align 2
  br label %for.inc71

for.inc71:                                        ; preds = %for.body58
  %95 = load i32, ptr %bi, align 4
  %inc72 = add nsw i32 %95, 1
  store i32 %inc72, ptr %bi, align 4
  br label %for.cond54, !llvm.loop !10

for.end73:                                        ; preds = %for.cond54
  br label %if.end74

if.end74:                                         ; preds = %for.end73, %if.end
  %96 = load ptr, ptr %compptr, align 8
  %MCU_width75 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i32 0, i32 13
  %97 = load i32, ptr %MCU_width75, align 4
  %98 = load i32, ptr %blkn, align 4
  %add76 = add nsw i32 %98, %97
  store i32 %add76, ptr %blkn, align 4
  %99 = load i32, ptr %ypos, align 4
  %add77 = add i32 %99, 8
  store i32 %add77, ptr %ypos, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %if.end74
  %100 = load i32, ptr %yindex, align 4
  %inc79 = add nsw i32 %100, 1
  store i32 %inc79, ptr %yindex, align 4
  br label %for.cond11, !llvm.loop !11

for.end80:                                        ; preds = %for.cond11
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %101 = load i32, ptr %ci, align 4
  %inc82 = add nsw i32 %101, 1
  store i32 %inc82, ptr %ci, align 4
  br label %for.cond6, !llvm.loop !12

for.end83:                                        ; preds = %for.cond6
  %102 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %102, i32 0, i32 59
  %103 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %encode_mcu, align 8
  %105 = load ptr, ptr %cinfo.addr, align 8
  %106 = load ptr, ptr %coef, align 8
  %MCU_buffer84 = getelementptr inbounds %struct.my_coef_controller, ptr %106, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer84, i64 0, i64 0
  %call = call i32 %104(ptr noundef %105, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end88, label %if.then85

if.then85:                                        ; preds = %for.end83
  %107 = load i32, ptr %yoffset, align 4
  %108 = load ptr, ptr %coef, align 8
  %MCU_vert_offset86 = getelementptr inbounds %struct.my_coef_controller, ptr %108, i32 0, i32 3
  store i32 %107, ptr %MCU_vert_offset86, align 8
  %109 = load i32, ptr %MCU_col_num, align 4
  %110 = load ptr, ptr %coef, align 8
  %mcu_ctr87 = getelementptr inbounds %struct.my_coef_controller, ptr %110, i32 0, i32 2
  store i32 %109, ptr %mcu_ctr87, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %for.end83
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88
  %111 = load i32, ptr %MCU_col_num, align 4
  %inc90 = add i32 %111, 1
  store i32 %inc90, ptr %MCU_col_num, align 4
  br label %for.cond3, !llvm.loop !13

for.end91:                                        ; preds = %for.cond3
  %112 = load ptr, ptr %coef, align 8
  %mcu_ctr92 = getelementptr inbounds %struct.my_coef_controller, ptr %112, i32 0, i32 2
  store i32 0, ptr %mcu_ctr92, align 4
  br label %for.inc93

for.inc93:                                        ; preds = %for.end91
  %113 = load i32, ptr %yoffset, align 4
  %inc94 = add nsw i32 %113, 1
  store i32 %inc94, ptr %yoffset, align 4
  br label %for.cond, !llvm.loop !14

for.end95:                                        ; preds = %for.cond
  %114 = load ptr, ptr %coef, align 8
  %iMCU_row_num96 = getelementptr inbounds %struct.my_coef_controller, ptr %114, i32 0, i32 1
  %115 = load i32, ptr %iMCU_row_num96, align 8
  %inc97 = add i32 %115, 1
  store i32 %inc97, ptr %iMCU_row_num96, align 8
  %116 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %116)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end95, %if.then85
  %117 = load i32, ptr %retval, align 4
  ret i32 %117
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_first_pass(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %last_iMCU_row = alloca i32, align 4
  %blocks_across = alloca i32, align 4
  %MCUs_across = alloca i32, align 4
  %MCUindex = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %h_samp_factor = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %ndummy = alloca i32, align 4
  %lastDC = alloca i16, align 2
  %compptr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %thisblockrow = alloca ptr, align 8
  %lastblockrow = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 54
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 40
  %3 = load i32, ptr %total_iMCU_rows, align 8
  %sub = sub i32 %3, 1
  store i32 %sub, ptr %last_iMCU_row, align 4
  store i32 0, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 14
  %5 = load ptr, ptr %comp_info, align 8
  store ptr %5, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %entry
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 12
  %8 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end88

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %access_virt_barray, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %iMCU_row_num, align 8
  %18 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %17, %19
  %20 = load ptr, ptr %compptr, align 8
  %v_samp_factor2 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %v_samp_factor2, align 4
  %call = call ptr %11(ptr noundef %12, ptr noundef %15, i32 noundef %mul, i32 noundef %21, i32 noundef 1)
  store ptr %call, ptr %buffer, align 8
  %22 = load ptr, ptr %coef, align 8
  %iMCU_row_num3 = getelementptr inbounds %struct.my_coef_controller, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %iMCU_row_num3, align 8
  %24 = load i32, ptr %last_iMCU_row, align 4
  %cmp4 = icmp ult i32 %23, %24
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %25 = load ptr, ptr %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %v_samp_factor5, align 4
  store i32 %26, ptr %block_rows, align 4
  br label %if.end10

if.else:                                          ; preds = %for.body
  %27 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i32 0, i32 8
  %28 = load i32, ptr %height_in_blocks, align 8
  %29 = load ptr, ptr %compptr, align 8
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %v_samp_factor6, align 4
  %rem = urem i32 %28, %30
  store i32 %rem, ptr %block_rows, align 4
  %31 = load i32, ptr %block_rows, align 4
  %cmp7 = icmp eq i32 %31, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %32 = load ptr, ptr %compptr, align 8
  %v_samp_factor9 = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %v_samp_factor9, align 4
  store i32 %33, ptr %block_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %34 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i32 0, i32 7
  %35 = load i32, ptr %width_in_blocks, align 4
  store i32 %35, ptr %blocks_across, align 4
  %36 = load ptr, ptr %compptr, align 8
  %h_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %h_samp_factor11, align 8
  store i32 %37, ptr %h_samp_factor, align 4
  %38 = load i32, ptr %blocks_across, align 4
  %39 = load i32, ptr %h_samp_factor, align 4
  %rem12 = urem i32 %38, %39
  store i32 %rem12, ptr %ndummy, align 4
  %40 = load i32, ptr %ndummy, align 4
  %cmp13 = icmp sgt i32 %40, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %41 = load i32, ptr %h_samp_factor, align 4
  %42 = load i32, ptr %ndummy, align 4
  %sub15 = sub nsw i32 %41, %42
  store i32 %sub15, ptr %ndummy, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10
  store i32 0, ptr %block_row, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc38, %if.end16
  %43 = load i32, ptr %block_row, align 4
  %44 = load i32, ptr %block_rows, align 4
  %cmp18 = icmp slt i32 %43, %44
  br i1 %cmp18, label %for.body19, label %for.end40

for.body19:                                       ; preds = %for.cond17
  %45 = load ptr, ptr %buffer, align 8
  %46 = load i32, ptr %block_row, align 4
  %idxprom20 = sext i32 %46 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %45, i64 %idxprom20
  %47 = load ptr, ptr %arrayidx21, align 8
  store ptr %47, ptr %thisblockrow, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i32 0, i32 58
  %49 = load ptr, ptr %fdct, align 8
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %forward_DCT, align 8
  %51 = load ptr, ptr %cinfo.addr, align 8
  %52 = load ptr, ptr %compptr, align 8
  %53 = load ptr, ptr %input_buf.addr, align 8
  %54 = load i32, ptr %ci, align 4
  %idxprom22 = sext i32 %54 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %53, i64 %idxprom22
  %55 = load ptr, ptr %arrayidx23, align 8
  %56 = load ptr, ptr %thisblockrow, align 8
  %57 = load i32, ptr %block_row, align 4
  %mul24 = mul nsw i32 %57, 8
  %58 = load i32, ptr %blocks_across, align 4
  call void %50(ptr noundef %51, ptr noundef %52, ptr noundef %55, ptr noundef %56, i32 noundef %mul24, i32 noundef 0, i32 noundef %58)
  %59 = load i32, ptr %ndummy, align 4
  %cmp25 = icmp sgt i32 %59, 0
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %for.body19
  %60 = load i32, ptr %blocks_across, align 4
  %61 = load ptr, ptr %thisblockrow, align 8
  %idx.ext = zext i32 %60 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %61, i64 %idx.ext
  store ptr %add.ptr, ptr %thisblockrow, align 8
  %62 = load ptr, ptr %thisblockrow, align 8
  %63 = load i32, ptr %ndummy, align 4
  %conv = sext i32 %63 to i64
  %mul27 = mul i64 %conv, 128
  call void @jzero_far(ptr noundef %62, i64 noundef %mul27)
  %64 = load ptr, ptr %thisblockrow, align 8
  %arrayidx28 = getelementptr inbounds [64 x i16], ptr %64, i64 -1
  %arrayidx29 = getelementptr inbounds [64 x i16], ptr %arrayidx28, i64 0, i64 0
  %65 = load i16, ptr %arrayidx29, align 2
  store i16 %65, ptr %lastDC, align 2
  store i32 0, ptr %bi, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %if.then26
  %66 = load i32, ptr %bi, align 4
  %67 = load i32, ptr %ndummy, align 4
  %cmp31 = icmp slt i32 %66, %67
  br i1 %cmp31, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond30
  %68 = load i16, ptr %lastDC, align 2
  %69 = load ptr, ptr %thisblockrow, align 8
  %70 = load i32, ptr %bi, align 4
  %idxprom34 = sext i32 %70 to i64
  %arrayidx35 = getelementptr inbounds [64 x i16], ptr %69, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [64 x i16], ptr %arrayidx35, i64 0, i64 0
  store i16 %68, ptr %arrayidx36, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body33
  %71 = load i32, ptr %bi, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %bi, align 4
  br label %for.cond30, !llvm.loop !15

for.end:                                          ; preds = %for.cond30
  br label %if.end37

if.end37:                                         ; preds = %for.end, %for.body19
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %72 = load i32, ptr %block_row, align 4
  %inc39 = add nsw i32 %72, 1
  store i32 %inc39, ptr %block_row, align 4
  br label %for.cond17, !llvm.loop !16

for.end40:                                        ; preds = %for.cond17
  %73 = load ptr, ptr %coef, align 8
  %iMCU_row_num41 = getelementptr inbounds %struct.my_coef_controller, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %iMCU_row_num41, align 8
  %75 = load i32, ptr %last_iMCU_row, align 4
  %cmp42 = icmp eq i32 %74, %75
  br i1 %cmp42, label %if.then44, label %if.end85

if.then44:                                        ; preds = %for.end40
  %76 = load i32, ptr %ndummy, align 4
  %77 = load i32, ptr %blocks_across, align 4
  %add = add i32 %77, %76
  store i32 %add, ptr %blocks_across, align 4
  %78 = load i32, ptr %blocks_across, align 4
  %79 = load i32, ptr %h_samp_factor, align 4
  %div = udiv i32 %78, %79
  store i32 %div, ptr %MCUs_across, align 4
  %80 = load i32, ptr %block_rows, align 4
  store i32 %80, ptr %block_row, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc82, %if.then44
  %81 = load i32, ptr %block_row, align 4
  %82 = load ptr, ptr %compptr, align 8
  %v_samp_factor46 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i32 0, i32 3
  %83 = load i32, ptr %v_samp_factor46, align 4
  %cmp47 = icmp slt i32 %81, %83
  br i1 %cmp47, label %for.body49, label %for.end84

for.body49:                                       ; preds = %for.cond45
  %84 = load ptr, ptr %buffer, align 8
  %85 = load i32, ptr %block_row, align 4
  %idxprom50 = sext i32 %85 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %84, i64 %idxprom50
  %86 = load ptr, ptr %arrayidx51, align 8
  store ptr %86, ptr %thisblockrow, align 8
  %87 = load ptr, ptr %buffer, align 8
  %88 = load i32, ptr %block_row, align 4
  %sub52 = sub nsw i32 %88, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %87, i64 %idxprom53
  %89 = load ptr, ptr %arrayidx54, align 8
  store ptr %89, ptr %lastblockrow, align 8
  %90 = load ptr, ptr %thisblockrow, align 8
  %91 = load i32, ptr %blocks_across, align 4
  %conv55 = zext i32 %91 to i64
  %mul56 = mul i64 %conv55, 128
  call void @jzero_far(ptr noundef %90, i64 noundef %mul56)
  store i32 0, ptr %MCUindex, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc79, %for.body49
  %92 = load i32, ptr %MCUindex, align 4
  %93 = load i32, ptr %MCUs_across, align 4
  %cmp58 = icmp ult i32 %92, %93
  br i1 %cmp58, label %for.body60, label %for.end81

for.body60:                                       ; preds = %for.cond57
  %94 = load ptr, ptr %lastblockrow, align 8
  %95 = load i32, ptr %h_samp_factor, align 4
  %sub61 = sub nsw i32 %95, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds [64 x i16], ptr %94, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [64 x i16], ptr %arrayidx63, i64 0, i64 0
  %96 = load i16, ptr %arrayidx64, align 2
  store i16 %96, ptr %lastDC, align 2
  store i32 0, ptr %bi, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc72, %for.body60
  %97 = load i32, ptr %bi, align 4
  %98 = load i32, ptr %h_samp_factor, align 4
  %cmp66 = icmp slt i32 %97, %98
  br i1 %cmp66, label %for.body68, label %for.end74

for.body68:                                       ; preds = %for.cond65
  %99 = load i16, ptr %lastDC, align 2
  %100 = load ptr, ptr %thisblockrow, align 8
  %101 = load i32, ptr %bi, align 4
  %idxprom69 = sext i32 %101 to i64
  %arrayidx70 = getelementptr inbounds [64 x i16], ptr %100, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [64 x i16], ptr %arrayidx70, i64 0, i64 0
  store i16 %99, ptr %arrayidx71, align 2
  br label %for.inc72

for.inc72:                                        ; preds = %for.body68
  %102 = load i32, ptr %bi, align 4
  %inc73 = add nsw i32 %102, 1
  store i32 %inc73, ptr %bi, align 4
  br label %for.cond65, !llvm.loop !17

for.end74:                                        ; preds = %for.cond65
  %103 = load i32, ptr %h_samp_factor, align 4
  %104 = load ptr, ptr %thisblockrow, align 8
  %idx.ext75 = sext i32 %103 to i64
  %add.ptr76 = getelementptr inbounds [64 x i16], ptr %104, i64 %idx.ext75
  store ptr %add.ptr76, ptr %thisblockrow, align 8
  %105 = load i32, ptr %h_samp_factor, align 4
  %106 = load ptr, ptr %lastblockrow, align 8
  %idx.ext77 = sext i32 %105 to i64
  %add.ptr78 = getelementptr inbounds [64 x i16], ptr %106, i64 %idx.ext77
  store ptr %add.ptr78, ptr %lastblockrow, align 8
  br label %for.inc79

for.inc79:                                        ; preds = %for.end74
  %107 = load i32, ptr %MCUindex, align 4
  %inc80 = add i32 %107, 1
  store i32 %inc80, ptr %MCUindex, align 4
  br label %for.cond57, !llvm.loop !18

for.end81:                                        ; preds = %for.cond57
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %108 = load i32, ptr %block_row, align 4
  %inc83 = add nsw i32 %108, 1
  store i32 %inc83, ptr %block_row, align 4
  br label %for.cond45, !llvm.loop !19

for.end84:                                        ; preds = %for.cond45
  br label %if.end85

if.end85:                                         ; preds = %for.end84, %for.end40
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %109 = load i32, ptr %ci, align 4
  %inc87 = add nsw i32 %109, 1
  store i32 %inc87, ptr %ci, align 4
  %110 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !20

for.end88:                                        ; preds = %for.cond
  %111 = load ptr, ptr %cinfo.addr, align 8
  %112 = load ptr, ptr %input_buf.addr, align 8
  %call89 = call i32 @compress_output(ptr noundef %111, ptr noundef %112)
  ret i32 %call89
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_output(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x ptr], align 8
  %buffer_ptr = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 54
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ci, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 42
  %6 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %compptr, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %access_virt_barray, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %component_index, align 4
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom2
  %15 = load ptr, ptr %arrayidx3, align 8
  %16 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %iMCU_row_num, align 8
  %18 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %17, %19
  %20 = load ptr, ptr %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %v_samp_factor4, align 4
  %call = call ptr %10(ptr noundef %11, ptr noundef %15, i32 noundef %mul, i32 noundef %21, i32 noundef 0)
  %22 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom5
  store ptr %call, ptr %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %MCU_vert_offset, align 8
  store i32 %25, ptr %yoffset, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc52, %for.end
  %26 = load i32, ptr %yoffset, align 4
  %27 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %27, i32 0, i32 4
  %28 = load i32, ptr %MCU_rows_per_iMCU_row, align 4
  %cmp8 = icmp slt i32 %26, %28
  br i1 %cmp8, label %for.body9, label %for.end54

for.body9:                                        ; preds = %for.cond7
  %29 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %mcu_ctr, align 4
  store i32 %30, ptr %MCU_col_num, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc48, %for.body9
  %31 = load i32, ptr %MCU_col_num, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 43
  %33 = load i32, ptr %MCUs_per_row, align 8
  %cmp11 = icmp ult i32 %31, %33
  br i1 %cmp11, label %for.body12, label %for.end50

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %blkn, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc41, %for.body12
  %34 = load i32, ptr %ci, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 41
  %36 = load i32, ptr %comps_in_scan14, align 4
  %cmp15 = icmp slt i32 %34, %36
  br i1 %cmp15, label %for.body16, label %for.end43

for.body16:                                       ; preds = %for.cond13
  %37 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 42
  %38 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %38 to i64
  %arrayidx19 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info17, i64 0, i64 %idxprom18
  %39 = load ptr, ptr %arrayidx19, align 8
  store ptr %39, ptr %compptr, align 8
  %40 = load i32, ptr %MCU_col_num, align 4
  %41 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 13
  %42 = load i32, ptr %MCU_width, align 4
  %mul20 = mul i32 %40, %42
  store i32 %mul20, ptr %start_col, align 4
  store i32 0, ptr %yindex, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc38, %for.body16
  %43 = load i32, ptr %yindex, align 4
  %44 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i32 0, i32 14
  %45 = load i32, ptr %MCU_height, align 8
  %cmp22 = icmp slt i32 %43, %45
  br i1 %cmp22, label %for.body23, label %for.end40

for.body23:                                       ; preds = %for.cond21
  %46 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %46 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom24
  %47 = load ptr, ptr %arrayidx25, align 8
  %48 = load i32, ptr %yindex, align 4
  %49 = load i32, ptr %yoffset, align 4
  %add = add nsw i32 %48, %49
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %47, i64 %idxprom26
  %50 = load ptr, ptr %arrayidx27, align 8
  %51 = load i32, ptr %start_col, align 4
  %idx.ext = zext i32 %51 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %50, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  store i32 0, ptr %xindex, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.body23
  %52 = load i32, ptr %xindex, align 4
  %53 = load ptr, ptr %compptr, align 8
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i32 0, i32 13
  %54 = load i32, ptr %MCU_width29, align 4
  %cmp30 = icmp slt i32 %52, %54
  br i1 %cmp30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond28
  %55 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %55, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %56 = load ptr, ptr %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %blkn, align 4
  %inc32 = add nsw i32 %57, 1
  store i32 %inc32, ptr %blkn, align 4
  %idxprom33 = sext i32 %57 to i64
  %arrayidx34 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom33
  store ptr %55, ptr %arrayidx34, align 8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  %58 = load i32, ptr %xindex, align 4
  %inc36 = add nsw i32 %58, 1
  store i32 %inc36, ptr %xindex, align 4
  br label %for.cond28, !llvm.loop !22

for.end37:                                        ; preds = %for.cond28
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %59 = load i32, ptr %yindex, align 4
  %inc39 = add nsw i32 %59, 1
  store i32 %inc39, ptr %yindex, align 4
  br label %for.cond21, !llvm.loop !23

for.end40:                                        ; preds = %for.cond21
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %60 = load i32, ptr %ci, align 4
  %inc42 = add nsw i32 %60, 1
  store i32 %inc42, ptr %ci, align 4
  br label %for.cond13, !llvm.loop !24

for.end43:                                        ; preds = %for.cond13
  %61 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 59
  %62 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %encode_mcu, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  %65 = load ptr, ptr %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, ptr %65, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer44, i64 0, i64 0
  %call45 = call i32 %63(ptr noundef %64, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end43
  %66 = load i32, ptr %yoffset, align 4
  %67 = load ptr, ptr %coef, align 8
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, ptr %67, i32 0, i32 3
  store i32 %66, ptr %MCU_vert_offset46, align 8
  %68 = load i32, ptr %MCU_col_num, align 4
  %69 = load ptr, ptr %coef, align 8
  %mcu_ctr47 = getelementptr inbounds %struct.my_coef_controller, ptr %69, i32 0, i32 2
  store i32 %68, ptr %mcu_ctr47, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end43
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %70 = load i32, ptr %MCU_col_num, align 4
  %inc49 = add i32 %70, 1
  store i32 %inc49, ptr %MCU_col_num, align 4
  br label %for.cond10, !llvm.loop !25

for.end50:                                        ; preds = %for.cond10
  %71 = load ptr, ptr %coef, align 8
  %mcu_ctr51 = getelementptr inbounds %struct.my_coef_controller, ptr %71, i32 0, i32 2
  store i32 0, ptr %mcu_ctr51, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %for.end50
  %72 = load i32, ptr %yoffset, align 4
  %inc53 = add nsw i32 %72, 1
  store i32 %inc53, ptr %yoffset, align 4
  br label %for.cond7, !llvm.loop !26

for.end54:                                        ; preds = %for.cond7
  %73 = load ptr, ptr %coef, align 8
  %iMCU_row_num55 = getelementptr inbounds %struct.my_coef_controller, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %iMCU_row_num55, align 8
  %inc56 = add i32 %74, 1
  store i32 %inc56, ptr %iMCU_row_num55, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %75)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end54, %if.then
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jccoefct_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 54
  %1 = load ptr, ptr %coef1, align 8
  store ptr %1, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 41
  %3 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %4, i32 0, i32 4
  store i32 1, ptr %MCU_rows_per_iMCU_row, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iMCU_row_num, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 40
  %8 = load i32, ptr %total_iMCU_rows, align 8
  %sub = sub i32 %8, 1
  %cmp2 = icmp ult i32 %6, %sub
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %v_samp_factor, align 4
  %12 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i32 0, i32 4
  store i32 %11, ptr %MCU_rows_per_iMCU_row4, align 4
  br label %if.end

if.else5:                                         ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info6, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx7, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 18
  %15 = load i32, ptr %last_row_height, align 8
  %16 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, ptr %16, i32 0, i32 4
  store i32 %15, ptr %MCU_rows_per_iMCU_row8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %17 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %17, i32 0, i32 2
  store i32 0, ptr %mcu_ctr, align 4
  %18 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %18, i32 0, i32 3
  store i32 0, ptr %MCU_vert_offset, align 8
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
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
