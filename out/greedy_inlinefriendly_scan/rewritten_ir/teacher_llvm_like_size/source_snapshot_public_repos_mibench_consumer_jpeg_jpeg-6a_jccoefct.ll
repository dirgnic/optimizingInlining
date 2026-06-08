; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jccoefct.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jccoefct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
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
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 192) #2
  store ptr %call, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 54
  store ptr %call, ptr %coef1, align 8
  store ptr @start_pass_coef, ptr %call, align 8
  %3 = load i32, ptr %need_full_buffer.addr, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 14
  %5 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %storemerge1 = phi ptr [ %5, %if.then ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge1, ptr %compptr, align 8
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 12
  %8 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %if.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %mem2, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %request_virt_barray, align 8
  %12 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 7
  %13 = load i32, ptr %width_in_blocks, align 4
  %conv = zext i32 %13 to i64
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %h_samp_factor, align 8
  %conv3 = sext i32 %14 to i64
  %call4 = call i64 @jround_up(i64 noundef %conv, i64 noundef %conv3) #2
  %conv5 = trunc i64 %call4 to i32
  %15 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 8
  %16 = load i32, ptr %height_in_blocks, align 8
  %conv6 = zext i32 %16 to i64
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %v_samp_factor, align 4
  %conv7 = sext i32 %17 to i64
  %call8 = call i64 @jround_up(i64 noundef %conv6, i64 noundef %conv7) #2
  %conv9 = trunc i64 %call8 to i32
  %18 = load ptr, ptr %compptr, align 8
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %v_samp_factor10, align 4
  %call11 = call ptr %11(ptr noundef %9, i32 noundef 1, i32 noundef 0, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %19) #2
  %20 = load ptr, ptr %coef, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds %struct.my_coef_controller, ptr %20, i64 0, i32 6, i64 %idxprom
  store ptr %call11, ptr %arrayidx, align 8
  %22 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %ci, align 4
  %23 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 1
  br label %for.cond, !llvm.loop !6

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %mem12, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %alloc_large, align 8
  %call13 = call ptr %26(ptr noundef %24, i32 noundef 1, i64 noundef 1280) #2
  store ptr %call13, ptr %buffer, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.body17, %if.else
  %storemerge = phi i32 [ 0, %if.else ], [ %inc21, %for.body17 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp15 = icmp slt i32 %storemerge, 10
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond14
  %27 = load ptr, ptr %buffer, align 8
  %28 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %27, i64 %idx.ext
  %29 = load ptr, ptr %coef, align 8
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds %struct.my_coef_controller, ptr %29, i64 0, i32 5, i64 %idxprom18
  store ptr %add.ptr, ptr %arrayidx19, align 8
  %30 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %30, 1
  br label %for.cond14, !llvm.loop !8

for.end22:                                        ; preds = %for.cond14
  %31 = load ptr, ptr %coef, align 8
  %whole_image23 = getelementptr inbounds %struct.my_coef_controller, ptr %31, i64 0, i32 6
  store ptr null, ptr %whole_image23, align 8
  br label %if.end

if.end:                                           ; preds = %for.cond, %for.end22
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
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %0, i64 0, i32 1
  store i32 0, ptr %iMCU_row_num, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %1)
  %2 = load i32, ptr %pass_mode.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 6
  %4 = load ptr, ptr %whole_image, align 8
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load ptr, ptr %coef, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %9, i64 0, i32 1
  store ptr @compress_data, ptr %compress_data, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %10 = load ptr, ptr %coef, align 8
  %whole_image4 = getelementptr inbounds %struct.my_coef_controller, ptr %10, i64 0, i32 6
  %11 = load ptr, ptr %whole_image4, align 8
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %sw.bb3
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 4, ptr %msg_code9, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull %12) #2
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %sw.bb3
  %16 = load ptr, ptr %coef, align 8
  %compress_data14 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %16, i64 0, i32 1
  store ptr @compress_first_pass, ptr %compress_data14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %17 = load ptr, ptr %coef, align 8
  %whole_image16 = getelementptr inbounds %struct.my_coef_controller, ptr %17, i64 0, i32 6
  %18 = load ptr, ptr %whole_image16, align 8
  %cmp18 = icmp eq ptr %18, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %sw.bb15
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 4, ptr %msg_code21, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull %19) #2
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %sw.bb15
  %23 = load ptr, ptr %coef, align 8
  %compress_data26 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %23, i64 0, i32 1
  store ptr @compress_output, ptr %compress_data26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 4, ptr %msg_code28, align 8
  %26 = load ptr, ptr %24, align 8
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull %24) #2
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
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  %1 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %2, i64 0, i32 4
  store i32 1, ptr %MCU_rows_per_iMCU_row, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %iMCU_row_num, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 40
  %6 = load i32, ptr %total_iMCU_rows, align 8
  %sub = add i32 %6, -1
  %cmp2 = icmp ult i32 %4, %sub
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 42
  %8 = load ptr, ptr %cur_comp_info, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i64 0, i32 3
  %9 = load i32, ptr %v_samp_factor, align 4
  %10 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, ptr %10, i64 0, i32 4
  store i32 %9, ptr %MCU_rows_per_iMCU_row4, align 4
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %11 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 42
  %12 = load ptr, ptr %cur_comp_info6, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 18
  %13 = load i32, ptr %last_row_height, align 8
  %14 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, ptr %14, i64 0, i32 4
  store i32 %13, ptr %MCU_rows_per_iMCU_row8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.else5, %if.then
  %15 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %15, i64 0, i32 2
  store i32 0, ptr %mcu_ctr, align 4
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %15, i64 0, i32 3
  store i32 0, ptr %MCU_vert_offset, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_data(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
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
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 43
  %1 = load i32, ptr %MCUs_per_row, align 8
  %sub = add i32 %1, -1
  store i32 %sub, ptr %last_MCU_col, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 40
  %3 = load i32, ptr %total_iMCU_rows, align 8
  %sub2 = add i32 %3, -1
  store i32 %sub2, ptr %last_iMCU_row, align 4
  %4 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %MCU_vert_offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end91, %entry
  %storemerge = phi i32 [ %5, %entry ], [ %inc94, %for.end91 ]
  store i32 %storemerge, ptr %yoffset, align 4
  %6 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 4
  %7 = load i32, ptr %MCU_rows_per_iMCU_row, align 4
  %cmp = icmp slt i32 %storemerge, %7
  br i1 %cmp, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %mcu_ctr, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc89, %for.body
  %storemerge2 = phi i32 [ %9, %for.body ], [ %inc90, %for.inc89 ]
  store i32 %storemerge2, ptr %MCU_col_num, align 4
  %10 = load i32, ptr %last_MCU_col, align 4
  %cmp4.not = icmp ugt i32 %storemerge2, %10
  br i1 %cmp4.not, label %for.end91, label %for.body5

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %blkn, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc81, %for.body5
  %storemerge3 = phi i32 [ 0, %for.body5 ], [ %inc82, %for.inc81 ]
  store i32 %storemerge3, ptr %ci, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 41
  %12 = load i32, ptr %comps_in_scan, align 4
  %cmp7 = icmp slt i32 %storemerge3, %12
  br i1 %cmp7, label %for.body8, label %for.end83

for.body8:                                        ; preds = %for.cond6
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 42, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  store ptr %15, ptr %compptr, align 8
  %16 = load i32, ptr %MCU_col_num, align 4
  %17 = load i32, ptr %last_MCU_col, align 4
  %cmp9 = icmp ult i32 %16, %17
  %18 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 13
  %19 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 17
  %cond.in = select i1 %cmp9, ptr %MCU_width, ptr %last_col_width
  %cond = load i32, ptr %cond.in, align 4
  store i32 %cond, ptr %blockcnt, align 4
  %20 = load i32, ptr %MCU_col_num, align 4
  %21 = load ptr, ptr %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 16
  %22 = load i32, ptr %MCU_sample_width, align 8
  %mul = mul i32 %20, %22
  store i32 %mul, ptr %xpos, align 4
  %23 = load i32, ptr %yoffset, align 4
  %mul10 = shl nsw i32 %23, 3
  store i32 %mul10, ptr %ypos, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %if.end74, %for.body8
  %storemerge4 = phi i32 [ 0, %for.body8 ], [ %inc79, %if.end74 ]
  store i32 %storemerge4, ptr %yindex, align 4
  %24 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 14
  %25 = load i32, ptr %MCU_height, align 8
  %cmp12 = icmp slt i32 %storemerge4, %25
  br i1 %cmp12, label %for.body13, label %for.inc81

for.body13:                                       ; preds = %for.cond11
  %26 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %26, i64 0, i32 1
  %27 = load i32, ptr %iMCU_row_num, align 8
  %28 = load i32, ptr %last_iMCU_row, align 4
  %cmp14 = icmp ult i32 %27, %28
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body13
  %29 = load i32, ptr %yoffset, align 4
  %30 = load i32, ptr %yindex, align 4
  %add = add nsw i32 %29, %30
  %31 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 18
  %32 = load i32, ptr %last_row_height, align 8
  %cmp15 = icmp slt i32 %add, %32
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body13
  %33 = load ptr, ptr %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i64 0, i32 58
  %34 = load ptr, ptr %fdct, align 8
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, ptr %34, i64 0, i32 1
  %35 = load ptr, ptr %forward_DCT, align 8
  %36 = load ptr, ptr %compptr, align 8
  %37 = load ptr, ptr %input_buf.addr, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom16 = sext i32 %38 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %37, i64 %idxprom16
  %39 = load ptr, ptr %arrayidx17, align 8
  %40 = load ptr, ptr %coef, align 8
  %41 = load i32, ptr %blkn, align 4
  %idxprom18 = sext i32 %41 to i64
  %arrayidx19 = getelementptr inbounds %struct.my_coef_controller, ptr %40, i64 0, i32 5, i64 %idxprom18
  %42 = load ptr, ptr %arrayidx19, align 8
  %43 = load i32, ptr %ypos, align 4
  %44 = load i32, ptr %xpos, align 4
  %45 = load i32, ptr %blockcnt, align 4
  call void %35(ptr noundef %33, ptr noundef %36, ptr noundef %39, ptr noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45) #2
  %46 = load ptr, ptr %compptr, align 8
  %MCU_width20 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 0, i32 13
  %47 = load i32, ptr %MCU_width20, align 4
  %cmp21 = icmp slt i32 %45, %47
  br i1 %cmp21, label %if.then22, label %if.end74

if.then22:                                        ; preds = %if.then
  %48 = load ptr, ptr %coef, align 8
  %49 = load i32, ptr %blkn, align 4
  %50 = load i32, ptr %blockcnt, align 4
  %add24 = add nsw i32 %49, %50
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds %struct.my_coef_controller, ptr %48, i64 0, i32 5, i64 %idxprom25
  %51 = load ptr, ptr %arrayidx26, align 8
  %52 = load ptr, ptr %compptr, align 8
  %MCU_width27 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 13
  %53 = load i32, ptr %MCU_width27, align 4
  %54 = load i32, ptr %blockcnt, align 4
  %sub28 = sub nsw i32 %53, %54
  %conv = sext i32 %sub28 to i64
  %mul29 = shl nsw i64 %conv, 7
  call void @jzero_far(ptr noundef %51, i64 noundef %mul29) #2
  br label %for.cond30

for.cond30:                                       ; preds = %for.body34, %if.then22
  %storemerge6 = phi i32 [ %54, %if.then22 ], [ %inc, %for.body34 ]
  store i32 %storemerge6, ptr %bi, align 4
  %55 = load ptr, ptr %compptr, align 8
  %MCU_width31 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 0, i32 13
  %56 = load i32, ptr %MCU_width31, align 4
  %cmp32 = icmp slt i32 %storemerge6, %56
  br i1 %cmp32, label %for.body34, label %if.end74

for.body34:                                       ; preds = %for.cond30
  %57 = load ptr, ptr %coef, align 8
  %58 = load i32, ptr %blkn, align 4
  %59 = load i32, ptr %bi, align 4
  %add36 = add nsw i32 %58, %59
  %sub37 = add nsw i32 %add36, -1
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds %struct.my_coef_controller, ptr %57, i64 0, i32 5, i64 %idxprom38
  %60 = load ptr, ptr %arrayidx39, align 8
  %61 = load i16, ptr %60, align 2
  %62 = load ptr, ptr %coef, align 8
  %63 = load i32, ptr %blkn, align 4
  %64 = load i32, ptr %bi, align 4
  %add43 = add nsw i32 %63, %64
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds %struct.my_coef_controller, ptr %62, i64 0, i32 5, i64 %idxprom44
  %65 = load ptr, ptr %arrayidx45, align 8
  store i16 %61, ptr %65, align 2
  %66 = load i32, ptr %bi, align 4
  %inc = add nsw i32 %66, 1
  br label %for.cond30, !llvm.loop !9

if.else:                                          ; preds = %lor.lhs.false
  %67 = load ptr, ptr %coef, align 8
  %68 = load i32, ptr %blkn, align 4
  %idxprom49 = sext i32 %68 to i64
  %arrayidx50 = getelementptr inbounds %struct.my_coef_controller, ptr %67, i64 0, i32 5, i64 %idxprom49
  %69 = load ptr, ptr %arrayidx50, align 8
  %70 = load ptr, ptr %compptr, align 8
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 0, i32 13
  %71 = load i32, ptr %MCU_width51, align 4
  %conv52 = sext i32 %71 to i64
  %mul53 = shl nsw i64 %conv52, 7
  call void @jzero_far(ptr noundef %69, i64 noundef %mul53) #2
  br label %for.cond54

for.cond54:                                       ; preds = %for.body58, %if.else
  %storemerge5 = phi i32 [ 0, %if.else ], [ %inc72, %for.body58 ]
  store i32 %storemerge5, ptr %bi, align 4
  %72 = load ptr, ptr %compptr, align 8
  %MCU_width55 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i64 0, i32 13
  %73 = load i32, ptr %MCU_width55, align 4
  %cmp56 = icmp slt i32 %storemerge5, %73
  br i1 %cmp56, label %for.body58, label %if.end74

for.body58:                                       ; preds = %for.cond54
  %74 = load ptr, ptr %coef, align 8
  %75 = load i32, ptr %blkn, align 4
  %sub60 = add nsw i32 %75, -1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds %struct.my_coef_controller, ptr %74, i64 0, i32 5, i64 %idxprom61
  %76 = load ptr, ptr %arrayidx62, align 8
  %77 = load i16, ptr %76, align 2
  %78 = load ptr, ptr %coef, align 8
  %79 = load i32, ptr %blkn, align 4
  %80 = load i32, ptr %bi, align 4
  %add66 = add nsw i32 %79, %80
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds %struct.my_coef_controller, ptr %78, i64 0, i32 5, i64 %idxprom67
  %81 = load ptr, ptr %arrayidx68, align 8
  store i16 %77, ptr %81, align 2
  %82 = load i32, ptr %bi, align 4
  %inc72 = add nsw i32 %82, 1
  br label %for.cond54, !llvm.loop !10

if.end74:                                         ; preds = %for.cond54, %if.then, %for.cond30
  %83 = load ptr, ptr %compptr, align 8
  %MCU_width75 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i64 0, i32 13
  %84 = load i32, ptr %MCU_width75, align 4
  %85 = load i32, ptr %blkn, align 4
  %add76 = add nsw i32 %85, %84
  store i32 %add76, ptr %blkn, align 4
  %86 = load i32, ptr %ypos, align 4
  %add77 = add i32 %86, 8
  store i32 %add77, ptr %ypos, align 4
  %87 = load i32, ptr %yindex, align 4
  %inc79 = add nsw i32 %87, 1
  br label %for.cond11, !llvm.loop !11

for.inc81:                                        ; preds = %for.cond11
  %88 = load i32, ptr %ci, align 4
  %inc82 = add nsw i32 %88, 1
  br label %for.cond6, !llvm.loop !12

for.end83:                                        ; preds = %for.cond6
  %89 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %89, i64 0, i32 59
  %90 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %90, i64 0, i32 1
  %91 = load ptr, ptr %encode_mcu, align 8
  %92 = load ptr, ptr %coef, align 8
  %MCU_buffer84 = getelementptr inbounds %struct.my_coef_controller, ptr %92, i64 0, i32 5
  %call = call i32 %91(ptr noundef %89, ptr noundef nonnull %MCU_buffer84) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then85, label %for.inc89

if.then85:                                        ; preds = %for.end83
  %93 = load i32, ptr %yoffset, align 4
  %94 = load ptr, ptr %coef, align 8
  %MCU_vert_offset86 = getelementptr inbounds %struct.my_coef_controller, ptr %94, i64 0, i32 3
  store i32 %93, ptr %MCU_vert_offset86, align 8
  %95 = load i32, ptr %MCU_col_num, align 4
  %mcu_ctr87 = getelementptr inbounds %struct.my_coef_controller, ptr %94, i64 0, i32 2
  store i32 %95, ptr %mcu_ctr87, align 4
  br label %return

for.inc89:                                        ; preds = %for.end83
  %96 = load i32, ptr %MCU_col_num, align 4
  %inc90 = add i32 %96, 1
  br label %for.cond3, !llvm.loop !13

for.end91:                                        ; preds = %for.cond3
  %97 = load ptr, ptr %coef, align 8
  %mcu_ctr92 = getelementptr inbounds %struct.my_coef_controller, ptr %97, i64 0, i32 2
  store i32 0, ptr %mcu_ctr92, align 4
  %98 = load i32, ptr %yoffset, align 4
  %inc94 = add nsw i32 %98, 1
  br label %for.cond, !llvm.loop !14

for.end95:                                        ; preds = %for.cond
  %99 = load ptr, ptr %coef, align 8
  %iMCU_row_num96 = getelementptr inbounds %struct.my_coef_controller, ptr %99, i64 0, i32 1
  %100 = load i32, ptr %iMCU_row_num96, align 8
  %inc97 = add i32 %100, 1
  store i32 %inc97, ptr %iMCU_row_num96, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %101)
  br label %return

return:                                           ; preds = %for.end95, %if.then85
  %storemerge1 = phi i32 [ 1, %for.end95 ], [ 0, %if.then85 ]
  ret i32 %storemerge1
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
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 40
  %1 = load i32, ptr %total_iMCU_rows, align 8
  %sub = add i32 %1, -1
  store i32 %sub, ptr %last_iMCU_row, align 4
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 14
  %3 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %entry
  %storemerge = phi ptr [ %3, %entry ], [ %incdec.ptr, %for.inc86 ]
  store ptr %storemerge, ptr %compptr, align 8
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 12
  %6 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end88

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i64 0, i32 8
  %9 = load ptr, ptr %access_virt_barray, align 8
  %10 = load ptr, ptr %coef, align 8
  %11 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.my_coef_controller, ptr %10, i64 0, i32 6, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %iMCU_row_num, align 8
  %14 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %13, %15
  %call = call ptr %9(ptr noundef %7, ptr noundef %12, i32 noundef %mul, i32 noundef %15, i32 noundef 1) #2
  store ptr %call, ptr %buffer, align 8
  %16 = load ptr, ptr %coef, align 8
  %iMCU_row_num3 = getelementptr inbounds %struct.my_coef_controller, ptr %16, i64 0, i32 1
  %17 = load i32, ptr %iMCU_row_num3, align 8
  %18 = load i32, ptr %last_iMCU_row, align 4
  %cmp4 = icmp ult i32 %17, %18
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load ptr, ptr %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 3
  %20 = load i32, ptr %v_samp_factor5, align 4
  store i32 %20, ptr %block_rows, align 4
  br label %if.end10

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 8
  %22 = load i32, ptr %height_in_blocks, align 8
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %v_samp_factor6, align 4
  %rem = urem i32 %22, %23
  store i32 %rem, ptr %block_rows, align 4
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  %24 = load ptr, ptr %compptr, align 8
  %v_samp_factor9 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 3
  %25 = load i32, ptr %v_samp_factor9, align 4
  store i32 %25, ptr %block_rows, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8, %if.then
  %26 = load ptr, ptr %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 7
  %27 = load i32, ptr %width_in_blocks, align 4
  store i32 %27, ptr %blocks_across, align 4
  %h_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %h_samp_factor11, align 8
  store i32 %28, ptr %h_samp_factor, align 4
  %rem12 = urem i32 %27, %28
  store i32 %rem12, ptr %ndummy, align 4
  %cmp13 = icmp sgt i32 %rem12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %29 = load i32, ptr %h_samp_factor, align 4
  %30 = load i32, ptr %ndummy, align 4
  %sub15 = sub nsw i32 %29, %30
  store i32 %sub15, ptr %ndummy, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc38, %if.end16
  %storemerge1 = phi i32 [ 0, %if.end16 ], [ %inc39, %for.inc38 ]
  store i32 %storemerge1, ptr %block_row, align 4
  %31 = load i32, ptr %block_rows, align 4
  %cmp18 = icmp slt i32 %storemerge1, %31
  br i1 %cmp18, label %for.body19, label %for.end40

for.body19:                                       ; preds = %for.cond17
  %32 = load ptr, ptr %buffer, align 8
  %33 = load i32, ptr %block_row, align 4
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %32, i64 %idxprom20
  %34 = load ptr, ptr %arrayidx21, align 8
  store ptr %34, ptr %thisblockrow, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 58
  %36 = load ptr, ptr %fdct, align 8
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, ptr %36, i64 0, i32 1
  %37 = load ptr, ptr %forward_DCT, align 8
  %38 = load ptr, ptr %compptr, align 8
  %39 = load ptr, ptr %input_buf.addr, align 8
  %40 = load i32, ptr %ci, align 4
  %idxprom22 = sext i32 %40 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %39, i64 %idxprom22
  %41 = load ptr, ptr %arrayidx23, align 8
  %42 = load ptr, ptr %thisblockrow, align 8
  %43 = load i32, ptr %block_row, align 4
  %mul24 = shl nsw i32 %43, 3
  %44 = load i32, ptr %blocks_across, align 4
  call void %37(ptr noundef %35, ptr noundef %38, ptr noundef %41, ptr noundef %42, i32 noundef %mul24, i32 noundef 0, i32 noundef %44) #2
  %45 = load i32, ptr %ndummy, align 4
  %cmp25 = icmp sgt i32 %45, 0
  br i1 %cmp25, label %if.then26, label %for.inc38

if.then26:                                        ; preds = %for.body19
  %46 = load i32, ptr %blocks_across, align 4
  %47 = load ptr, ptr %thisblockrow, align 8
  %idx.ext = zext i32 %46 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %47, i64 %idx.ext
  store ptr %add.ptr, ptr %thisblockrow, align 8
  %48 = load i32, ptr %ndummy, align 4
  %conv = sext i32 %48 to i64
  %mul27 = shl nsw i64 %conv, 7
  call void @jzero_far(ptr noundef %add.ptr, i64 noundef %mul27) #2
  %arrayidx28 = getelementptr inbounds [64 x i16], ptr %add.ptr, i64 -1
  %49 = load i16, ptr %arrayidx28, align 2
  store i16 %49, ptr %lastDC, align 2
  br label %for.cond30

for.cond30:                                       ; preds = %for.body33, %if.then26
  %storemerge5 = phi i32 [ 0, %if.then26 ], [ %inc, %for.body33 ]
  store i32 %storemerge5, ptr %bi, align 4
  %50 = load i32, ptr %ndummy, align 4
  %cmp31 = icmp slt i32 %storemerge5, %50
  br i1 %cmp31, label %for.body33, label %for.inc38

for.body33:                                       ; preds = %for.cond30
  %51 = load i16, ptr %lastDC, align 2
  %52 = load ptr, ptr %thisblockrow, align 8
  %53 = load i32, ptr %bi, align 4
  %idxprom34 = sext i32 %53 to i64
  %arrayidx35 = getelementptr inbounds [64 x i16], ptr %52, i64 %idxprom34
  store i16 %51, ptr %arrayidx35, align 2
  %54 = load i32, ptr %bi, align 4
  %inc = add nsw i32 %54, 1
  br label %for.cond30, !llvm.loop !15

for.inc38:                                        ; preds = %for.body19, %for.cond30
  %55 = load i32, ptr %block_row, align 4
  %inc39 = add nsw i32 %55, 1
  br label %for.cond17, !llvm.loop !16

for.end40:                                        ; preds = %for.cond17
  %56 = load ptr, ptr %coef, align 8
  %iMCU_row_num41 = getelementptr inbounds %struct.my_coef_controller, ptr %56, i64 0, i32 1
  %57 = load i32, ptr %iMCU_row_num41, align 8
  %58 = load i32, ptr %last_iMCU_row, align 4
  %cmp42 = icmp eq i32 %57, %58
  br i1 %cmp42, label %if.then44, label %for.inc86

if.then44:                                        ; preds = %for.end40
  %59 = load i32, ptr %ndummy, align 4
  %60 = load i32, ptr %blocks_across, align 4
  %add = add i32 %60, %59
  store i32 %add, ptr %blocks_across, align 4
  %61 = load i32, ptr %h_samp_factor, align 4
  %div = udiv i32 %add, %61
  store i32 %div, ptr %MCUs_across, align 4
  %62 = load i32, ptr %block_rows, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc82, %if.then44
  %storemerge2 = phi i32 [ %62, %if.then44 ], [ %inc83, %for.inc82 ]
  store i32 %storemerge2, ptr %block_row, align 4
  %63 = load ptr, ptr %compptr, align 8
  %v_samp_factor46 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 0, i32 3
  %64 = load i32, ptr %v_samp_factor46, align 4
  %cmp47 = icmp slt i32 %storemerge2, %64
  br i1 %cmp47, label %for.body49, label %for.inc86

for.body49:                                       ; preds = %for.cond45
  %65 = load ptr, ptr %buffer, align 8
  %66 = load i32, ptr %block_row, align 4
  %idxprom50 = sext i32 %66 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %65, i64 %idxprom50
  %67 = load ptr, ptr %arrayidx51, align 8
  store ptr %67, ptr %thisblockrow, align 8
  %sub52 = add nsw i32 %66, -1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %65, i64 %idxprom53
  %68 = load ptr, ptr %arrayidx54, align 8
  store ptr %68, ptr %lastblockrow, align 8
  %69 = load i32, ptr %blocks_across, align 4
  %conv55 = zext i32 %69 to i64
  %mul56 = shl nuw nsw i64 %conv55, 7
  call void @jzero_far(ptr noundef %67, i64 noundef %mul56) #2
  br label %for.cond57

for.cond57:                                       ; preds = %for.end74, %for.body49
  %storemerge3 = phi i32 [ 0, %for.body49 ], [ %inc80, %for.end74 ]
  store i32 %storemerge3, ptr %MCUindex, align 4
  %70 = load i32, ptr %MCUs_across, align 4
  %cmp58 = icmp ult i32 %storemerge3, %70
  br i1 %cmp58, label %for.body60, label %for.inc82

for.body60:                                       ; preds = %for.cond57
  %71 = load ptr, ptr %lastblockrow, align 8
  %72 = load i32, ptr %h_samp_factor, align 4
  %sub61 = add nsw i32 %72, -1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds [64 x i16], ptr %71, i64 %idxprom62
  %73 = load i16, ptr %arrayidx63, align 2
  store i16 %73, ptr %lastDC, align 2
  br label %for.cond65

for.cond65:                                       ; preds = %for.body68, %for.body60
  %storemerge4 = phi i32 [ 0, %for.body60 ], [ %inc73, %for.body68 ]
  store i32 %storemerge4, ptr %bi, align 4
  %74 = load i32, ptr %h_samp_factor, align 4
  %cmp66 = icmp slt i32 %storemerge4, %74
  br i1 %cmp66, label %for.body68, label %for.end74

for.body68:                                       ; preds = %for.cond65
  %75 = load i16, ptr %lastDC, align 2
  %76 = load ptr, ptr %thisblockrow, align 8
  %77 = load i32, ptr %bi, align 4
  %idxprom69 = sext i32 %77 to i64
  %arrayidx70 = getelementptr inbounds [64 x i16], ptr %76, i64 %idxprom69
  store i16 %75, ptr %arrayidx70, align 2
  %78 = load i32, ptr %bi, align 4
  %inc73 = add nsw i32 %78, 1
  br label %for.cond65, !llvm.loop !17

for.end74:                                        ; preds = %for.cond65
  %79 = load i32, ptr %h_samp_factor, align 4
  %80 = load ptr, ptr %thisblockrow, align 8
  %idx.ext75 = sext i32 %79 to i64
  %add.ptr76 = getelementptr inbounds [64 x i16], ptr %80, i64 %idx.ext75
  store ptr %add.ptr76, ptr %thisblockrow, align 8
  %81 = load ptr, ptr %lastblockrow, align 8
  %idx.ext77 = sext i32 %79 to i64
  %add.ptr78 = getelementptr inbounds [64 x i16], ptr %81, i64 %idx.ext77
  store ptr %add.ptr78, ptr %lastblockrow, align 8
  %82 = load i32, ptr %MCUindex, align 4
  %inc80 = add i32 %82, 1
  br label %for.cond57, !llvm.loop !18

for.inc82:                                        ; preds = %for.cond57
  %83 = load i32, ptr %block_row, align 4
  %inc83 = add nsw i32 %83, 1
  br label %for.cond45, !llvm.loop !19

for.inc86:                                        ; preds = %for.end40, %for.cond45
  %84 = load i32, ptr %ci, align 4
  %inc87 = add nsw i32 %84, 1
  store i32 %inc87, ptr %ci, align 4
  %85 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i64 1
  br label %for.cond, !llvm.loop !20

for.end88:                                        ; preds = %for.cond
  %86 = load ptr, ptr %cinfo.addr, align 8
  %87 = load ptr, ptr %input_buf.addr, align 8
  %call89 = call i32 @compress_output(ptr noundef %86, ptr noundef %87)
  ret i32 %call89
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_output(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
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
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 41
  %2 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 42, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  store ptr %5, ptr %compptr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 8
  %7 = load ptr, ptr %access_virt_barray, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %coef, align 8
  %10 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %component_index, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct.my_coef_controller, ptr %9, i64 0, i32 6, i64 %idxprom2
  %12 = load ptr, ptr %arrayidx3, align 8
  %13 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %13, i64 0, i32 1
  %14 = load i32, ptr %iMCU_row_num, align 8
  %15 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %14, %16
  %call = call ptr %7(ptr noundef %8, ptr noundef %12, i32 noundef %mul, i32 noundef %16, i32 noundef 0) #2
  %17 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom5
  store ptr %call, ptr %arrayidx6, align 8
  %18 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %19, i64 0, i32 3
  %20 = load i32, ptr %MCU_vert_offset, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.end50, %for.end
  %storemerge1 = phi i32 [ %20, %for.end ], [ %inc53, %for.end50 ]
  store i32 %storemerge1, ptr %yoffset, align 4
  %21 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %21, i64 0, i32 4
  %22 = load i32, ptr %MCU_rows_per_iMCU_row, align 4
  %cmp8 = icmp slt i32 %storemerge1, %22
  br i1 %cmp8, label %for.body9, label %for.end54

for.body9:                                        ; preds = %for.cond7
  %23 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %23, i64 0, i32 2
  %24 = load i32, ptr %mcu_ctr, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc48, %for.body9
  %storemerge3 = phi i32 [ %24, %for.body9 ], [ %inc49, %for.inc48 ]
  store i32 %storemerge3, ptr %MCU_col_num, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 43
  %26 = load i32, ptr %MCUs_per_row, align 8
  %cmp11 = icmp ult i32 %storemerge3, %26
  br i1 %cmp11, label %for.body12, label %for.end50

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %blkn, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc41, %for.body12
  %storemerge4 = phi i32 [ 0, %for.body12 ], [ %inc42, %for.inc41 ]
  store i32 %storemerge4, ptr %ci, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i64 0, i32 41
  %28 = load i32, ptr %comps_in_scan14, align 4
  %cmp15 = icmp slt i32 %storemerge4, %28
  br i1 %cmp15, label %for.body16, label %for.end43

for.body16:                                       ; preds = %for.cond13
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i64 0, i32 42, i64 %idxprom18
  %31 = load ptr, ptr %arrayidx19, align 8
  store ptr %31, ptr %compptr, align 8
  %32 = load i32, ptr %MCU_col_num, align 4
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 13
  %33 = load i32, ptr %MCU_width, align 4
  %mul20 = mul i32 %32, %33
  store i32 %mul20, ptr %start_col, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc38, %for.body16
  %storemerge5 = phi i32 [ 0, %for.body16 ], [ %inc39, %for.inc38 ]
  store i32 %storemerge5, ptr %yindex, align 4
  %34 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 14
  %35 = load i32, ptr %MCU_height, align 8
  %cmp22 = icmp slt i32 %storemerge5, %35
  br i1 %cmp22, label %for.body23, label %for.inc41

for.body23:                                       ; preds = %for.cond21
  %36 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom24
  %37 = load ptr, ptr %arrayidx25, align 8
  %38 = load i32, ptr %yindex, align 4
  %39 = load i32, ptr %yoffset, align 4
  %add = add nsw i32 %38, %39
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %37, i64 %idxprom26
  %40 = load ptr, ptr %arrayidx27, align 8
  %41 = load i32, ptr %start_col, align 4
  %idx.ext = zext i32 %41 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %40, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.body31, %for.body23
  %storemerge6 = phi i32 [ 0, %for.body23 ], [ %inc36, %for.body31 ]
  store i32 %storemerge6, ptr %xindex, align 4
  %42 = load ptr, ptr %compptr, align 8
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 0, i32 13
  %43 = load i32, ptr %MCU_width29, align 4
  %cmp30 = icmp slt i32 %storemerge6, %43
  br i1 %cmp30, label %for.body31, label %for.inc38

for.body31:                                       ; preds = %for.cond28
  %44 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %44, i64 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %45 = load ptr, ptr %coef, align 8
  %46 = load i32, ptr %blkn, align 4
  %inc32 = add nsw i32 %46, 1
  store i32 %inc32, ptr %blkn, align 4
  %idxprom33 = sext i32 %46 to i64
  %arrayidx34 = getelementptr inbounds %struct.my_coef_controller, ptr %45, i64 0, i32 5, i64 %idxprom33
  store ptr %44, ptr %arrayidx34, align 8
  %47 = load i32, ptr %xindex, align 4
  %inc36 = add nsw i32 %47, 1
  br label %for.cond28, !llvm.loop !22

for.inc38:                                        ; preds = %for.cond28
  %48 = load i32, ptr %yindex, align 4
  %inc39 = add nsw i32 %48, 1
  br label %for.cond21, !llvm.loop !23

for.inc41:                                        ; preds = %for.cond21
  %49 = load i32, ptr %ci, align 4
  %inc42 = add nsw i32 %49, 1
  br label %for.cond13, !llvm.loop !24

for.end43:                                        ; preds = %for.cond13
  %50 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i64 0, i32 59
  %51 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %51, i64 0, i32 1
  %52 = load ptr, ptr %encode_mcu, align 8
  %53 = load ptr, ptr %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, ptr %53, i64 0, i32 5
  %call45 = call i32 %52(ptr noundef %50, ptr noundef nonnull %MCU_buffer44) #2
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %if.then, label %for.inc48

if.then:                                          ; preds = %for.end43
  %54 = load i32, ptr %yoffset, align 4
  %55 = load ptr, ptr %coef, align 8
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, ptr %55, i64 0, i32 3
  store i32 %54, ptr %MCU_vert_offset46, align 8
  %56 = load i32, ptr %MCU_col_num, align 4
  %mcu_ctr47 = getelementptr inbounds %struct.my_coef_controller, ptr %55, i64 0, i32 2
  store i32 %56, ptr %mcu_ctr47, align 4
  br label %return

for.inc48:                                        ; preds = %for.end43
  %57 = load i32, ptr %MCU_col_num, align 4
  %inc49 = add i32 %57, 1
  br label %for.cond10, !llvm.loop !25

for.end50:                                        ; preds = %for.cond10
  %58 = load ptr, ptr %coef, align 8
  %mcu_ctr51 = getelementptr inbounds %struct.my_coef_controller, ptr %58, i64 0, i32 2
  store i32 0, ptr %mcu_ctr51, align 4
  %59 = load i32, ptr %yoffset, align 4
  %inc53 = add nsw i32 %59, 1
  br label %for.cond7, !llvm.loop !26

for.end54:                                        ; preds = %for.cond7
  %60 = load ptr, ptr %coef, align 8
  %iMCU_row_num55 = getelementptr inbounds %struct.my_coef_controller, ptr %60, i64 0, i32 1
  %61 = load i32, ptr %iMCU_row_num55, align 8
  %inc56 = add i32 %61, 1
  store i32 %inc56, ptr %iMCU_row_num55, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %62)
  br label %return

return:                                           ; preds = %for.end54, %if.then
  %storemerge2 = phi i32 [ 1, %for.end54 ], [ 0, %if.then ]
  ret i32 %storemerge2
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

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
