; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jctrans.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jctrans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, ptr, [10 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_write_coefficients(ptr noundef %cinfo, ptr noundef %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef_arrays.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %coef_arrays, ptr %coef_arrays.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_suppress_tables(ptr noundef %8, i32 noundef 0) #4
  %9 = load ptr, ptr %8, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %reset_error_mgr, align 8
  call void %10(ptr noundef nonnull %8) #4
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 5
  %11 = load ptr, ptr %dest, align 8
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %init_destination, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13) #4
  %14 = load ptr, ptr %coef_arrays.addr, align 8
  call void @transencode_master_selection(ptr noundef %13, ptr noundef %14)
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 36
  store i32 0, ptr %next_scanline, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 4
  store i32 103, ptr %global_state5, align 4
  ret void
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @transencode_master_selection(ptr noundef %cinfo, ptr noundef %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef_arrays.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %coef_arrays, ptr %coef_arrays.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 8
  store i32 1, ptr %input_components, align 8
  call void @jinit_c_master_control(ptr noundef %cinfo, i32 noundef 1) #4
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 24
  %0 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 1, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #4
  br label %if.end5

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 37
  %6 = load i32, ptr %progressive_mode, align 4
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_encoder(ptr noundef %7) #4
  br label %if.end5

if.else4:                                         ; preds = %if.else
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_encoder(ptr noundef %8) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else4, %if.then
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %coef_arrays.addr, align 8
  call void @transencode_coef_controller(ptr noundef %9, ptr noundef %10)
  call void @jinit_marker_writer(ptr noundef %9) #4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %11, i64 0, i32 6
  %12 = load ptr, ptr %realize_virt_arrays, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13) #4
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 55
  %14 = load ptr, ptr %marker, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %write_file_header, align 8
  call void %15(ptr noundef %13) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_copy_critical_parameters(ptr noundef %srcinfo, ptr noundef %dstinfo) #0 {
entry:
  %srcinfo.addr = alloca ptr, align 8
  %dstinfo.addr = alloca ptr, align 8
  %qtblptr = alloca ptr, align 8
  %incomp = alloca ptr, align 8
  %outcomp = alloca ptr, align 8
  %c_quant = alloca ptr, align 8
  %slot_quant = alloca ptr, align 8
  %tblno = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  store ptr %srcinfo, ptr %srcinfo.addr, align 8
  store ptr %dstinfo, ptr %dstinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dstinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %dstinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %srcinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 6
  %9 = load i32, ptr %image_width, align 8
  %10 = load ptr, ptr %dstinfo.addr, align 8
  %image_width4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 6
  store i32 %9, ptr %image_width4, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 7
  %11 = load i32, ptr %image_height, align 4
  %image_height5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 7
  store i32 %11, ptr %image_height5, align 4
  %12 = load ptr, ptr %srcinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 8
  %13 = load i32, ptr %num_components, align 8
  %14 = load ptr, ptr %dstinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 8
  store i32 %13, ptr %input_components, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 9
  %15 = load i32, ptr %jpeg_color_space, align 4
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 9
  store i32 %15, ptr %in_color_space, align 4
  %16 = load ptr, ptr %dstinfo.addr, align 8
  call void @jpeg_set_defaults(ptr noundef %16) #4
  %17 = load ptr, ptr %srcinfo.addr, align 8
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 9
  %18 = load i32, ptr %jpeg_color_space6, align 4
  call void @jpeg_set_colorspace(ptr noundef %16, i32 noundef %18) #4
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 42
  %19 = load i32, ptr %data_precision, align 8
  %20 = load ptr, ptr %dstinfo.addr, align 8
  %data_precision7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 11
  store i32 %19, ptr %data_precision7, align 8
  %21 = load ptr, ptr %srcinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 56
  %22 = load i32, ptr %CCIR601_sampling, align 8
  %CCIR601_sampling8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 26
  store i32 %22, ptr %CCIR601_sampling8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %tblno, align 4
  %cmp9 = icmp slt i32 %storemerge, 4
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %srcinfo.addr, align 8
  %24 = load i32, ptr %tblno, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 39, i64 %idxprom
  %25 = load ptr, ptr %arrayidx10, align 8
  %cmp11.not = icmp eq ptr %25, null
  br i1 %cmp11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %26 = load ptr, ptr %dstinfo.addr, align 8
  %27 = load i32, ptr %tblno, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 15, i64 %idxprom14
  store ptr %arrayidx15, ptr %qtblptr, align 8
  %28 = load ptr, ptr %arrayidx15, align 8
  %cmp16 = icmp eq ptr %28, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then12
  %29 = load ptr, ptr %dstinfo.addr, align 8
  %call = call ptr @jpeg_alloc_quant_table(ptr noundef %29) #4
  %30 = load ptr, ptr %qtblptr, align 8
  store ptr %call, ptr %30, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then12
  %31 = load ptr, ptr %qtblptr, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %srcinfo.addr, align 8
  %34 = load i32, ptr %tblno, align 4
  %idxprom20 = sext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 39, i64 %idxprom20
  %35 = load ptr, ptr %arrayidx21, align 8
  %36 = load ptr, ptr %qtblptr, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = call i64 @llvm.objectsize.i64.p0(ptr %37, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memcpy_chk(ptr noundef %32, ptr noundef %35, i64 noundef 128, i64 noundef %38) #4
  %39 = load ptr, ptr %36, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %39, i64 0, i32 1
  store i32 0, ptr %sent_table, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end18
  %40 = load i32, ptr %tblno, align 4
  %inc = add nsw i32 %40, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %srcinfo.addr, align 8
  %num_components28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i64 0, i32 8
  %42 = load i32, ptr %num_components28, align 8
  %43 = load ptr, ptr %dstinfo.addr, align 8
  %num_components29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i64 0, i32 12
  store i32 %42, ptr %num_components29, align 4
  %cmp31 = icmp slt i32 %42, 1
  br i1 %cmp31, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %44 = load ptr, ptr %dstinfo.addr, align 8
  %num_components32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 12
  %45 = load i32, ptr %num_components32, align 4
  %cmp33 = icmp sgt i32 %45, 10
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %lor.lhs.false, %for.end
  %46 = load ptr, ptr %dstinfo.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 5
  store i32 24, ptr %msg_code36, align 8
  %num_components37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %46, i64 0, i32 12
  %48 = load i32, ptr %num_components37, align 4
  %49 = load ptr, ptr %46, align 8
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 6
  store i32 %48, ptr %msg_parm39, align 4
  %50 = load ptr, ptr %dstinfo.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %arrayidx43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %arrayidx43, align 4
  %52 = load ptr, ptr %50, align 8
  %53 = load ptr, ptr %52, align 8
  call void %53(ptr noundef nonnull %50) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then34, %lor.lhs.false
  store i32 0, ptr %ci, align 4
  %54 = load ptr, ptr %srcinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i64 0, i32 43
  %55 = load ptr, ptr %comp_info, align 8
  store ptr %55, ptr %incomp, align 8
  %56 = load ptr, ptr %dstinfo.addr, align 8
  %comp_info47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i64 0, i32 14
  %57 = load ptr, ptr %comp_info47, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc104, %if.end46
  %storemerge1 = phi ptr [ %57, %if.end46 ], [ %incdec.ptr106, %for.inc104 ]
  store ptr %storemerge1, ptr %outcomp, align 8
  %58 = load i32, ptr %ci, align 4
  %59 = load ptr, ptr %dstinfo.addr, align 8
  %num_components49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i64 0, i32 12
  %60 = load i32, ptr %num_components49, align 4
  %cmp50 = icmp slt i32 %58, %60
  br i1 %cmp50, label %for.body51, label %for.end107

for.body51:                                       ; preds = %for.cond48
  %61 = load ptr, ptr %incomp, align 8
  %62 = load i32, ptr %61, align 8
  %63 = load ptr, ptr %outcomp, align 8
  store i32 %62, ptr %63, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i64 0, i32 2
  %64 = load i32, ptr %h_samp_factor, align 8
  %h_samp_factor53 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 0, i32 2
  store i32 %64, ptr %h_samp_factor53, align 8
  %65 = load ptr, ptr %incomp, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 3
  %66 = load i32, ptr %v_samp_factor, align 4
  %67 = load ptr, ptr %outcomp, align 8
  %v_samp_factor54 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 3
  store i32 %66, ptr %v_samp_factor54, align 4
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 4
  %68 = load i32, ptr %quant_tbl_no, align 8
  %quant_tbl_no55 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 4
  store i32 %68, ptr %quant_tbl_no55, align 8
  %69 = load ptr, ptr %outcomp, align 8
  %quant_tbl_no56 = getelementptr inbounds %struct.jpeg_component_info, ptr %69, i64 0, i32 4
  %70 = load i32, ptr %quant_tbl_no56, align 8
  store i32 %70, ptr %tblno, align 4
  %cmp57 = icmp slt i32 %70, 0
  %71 = load i32, ptr %tblno, align 4
  %cmp59 = icmp sgt i32 %71, 3
  %or.cond = select i1 %cmp57, i1 true, i1 %cmp59
  br i1 %or.cond, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %for.body51
  %72 = load ptr, ptr %srcinfo.addr, align 8
  %73 = load i32, ptr %tblno, align 4
  %idxprom62 = sext i32 %73 to i64
  %arrayidx63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i64 0, i32 39, i64 %idxprom62
  %74 = load ptr, ptr %arrayidx63, align 8
  %cmp64 = icmp eq ptr %74, null
  br i1 %cmp64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %lor.lhs.false60, %for.body51
  %75 = load ptr, ptr %dstinfo.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 5
  store i32 51, ptr %msg_code67, align 8
  %77 = load i32, ptr %tblno, align 4
  %78 = load ptr, ptr %75, align 8
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 6
  store i32 %77, ptr %msg_parm69, align 4
  %79 = load ptr, ptr %dstinfo.addr, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %80, align 8
  call void %81(ptr noundef nonnull %79) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %lor.lhs.false60
  %82 = load ptr, ptr %srcinfo.addr, align 8
  %83 = load i32, ptr %tblno, align 4
  %idxprom75 = sext i32 %83 to i64
  %arrayidx76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 39, i64 %idxprom75
  %84 = load ptr, ptr %arrayidx76, align 8
  store ptr %84, ptr %slot_quant, align 8
  %85 = load ptr, ptr %incomp, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i64 0, i32 19
  %86 = load ptr, ptr %quant_table, align 8
  store ptr %86, ptr %c_quant, align 8
  %cmp77.not = icmp eq ptr %86, null
  br i1 %cmp77.not, label %for.inc104, label %for.cond79

for.cond79:                                       ; preds = %if.end73, %for.inc100
  %storemerge2 = phi i32 [ %inc101, %for.inc100 ], [ 0, %if.end73 ]
  store i32 %storemerge2, ptr %coefi, align 4
  %cmp80 = icmp slt i32 %storemerge2, 64
  br i1 %cmp80, label %for.body81, label %for.inc104

for.body81:                                       ; preds = %for.cond79
  %87 = load ptr, ptr %c_quant, align 8
  %88 = load i32, ptr %coefi, align 4
  %idxprom83 = sext i32 %88 to i64
  %arrayidx84 = getelementptr inbounds [64 x i16], ptr %87, i64 0, i64 %idxprom83
  %89 = load i16, ptr %arrayidx84, align 2
  %90 = load ptr, ptr %slot_quant, align 8
  %idxprom86 = sext i32 %88 to i64
  %arrayidx87 = getelementptr inbounds [64 x i16], ptr %90, i64 0, i64 %idxprom86
  %91 = load i16, ptr %arrayidx87, align 2
  %cmp89.not = icmp eq i16 %89, %91
  br i1 %cmp89.not, label %for.inc100, label %if.then91

if.then91:                                        ; preds = %for.body81
  %92 = load ptr, ptr %dstinfo.addr, align 8
  %93 = load ptr, ptr %92, align 8
  %msg_code93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 5
  store i32 43, ptr %msg_code93, align 8
  %94 = load i32, ptr %tblno, align 4
  %95 = load ptr, ptr %92, align 8
  %msg_parm95 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 6
  store i32 %94, ptr %msg_parm95, align 4
  %96 = load ptr, ptr %dstinfo.addr, align 8
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %97, align 8
  call void %98(ptr noundef nonnull %96) #4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body81, %if.then91
  %99 = load i32, ptr %coefi, align 4
  %inc101 = add nsw i32 %99, 1
  br label %for.cond79, !llvm.loop !8

for.inc104:                                       ; preds = %if.end73, %for.cond79
  %100 = load i32, ptr %ci, align 4
  %inc105 = add nsw i32 %100, 1
  store i32 %inc105, ptr %ci, align 4
  %101 = load ptr, ptr %incomp, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %101, i64 1
  store ptr %incdec.ptr, ptr %incomp, align 8
  %102 = load ptr, ptr %outcomp, align 8
  %incdec.ptr106 = getelementptr inbounds %struct.jpeg_component_info, ptr %102, i64 1
  br label %for.cond48, !llvm.loop !9

for.end107:                                       ; preds = %for.cond48
  ret void
}

declare void @jpeg_set_defaults(ptr noundef) #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) #1

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @jinit_c_master_control(ptr noundef, i32 noundef) #1

declare void @jinit_phuff_encoder(ptr noundef) #1

declare void @jinit_huff_encoder(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @transencode_coef_controller(ptr noundef %cinfo, ptr noundef %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef_arrays.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %coef_arrays, ptr %coef_arrays.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 120) #4
  store ptr %call, ptr %coef, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 54
  store ptr %call, ptr %coef1, align 8
  store ptr @start_pass_coef, ptr %call, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %call, i64 0, i32 1
  store ptr @compress_output, ptr %compress_data, align 8
  %3 = load ptr, ptr %coef_arrays.addr, align 8
  %4 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5
  store ptr %3, ptr %whole_image, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %mem3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %mem3, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %alloc_large, align 8
  %call4 = call ptr %7(ptr noundef %5, i32 noundef 1, i64 noundef 1280) #4
  store ptr %call4, ptr %buffer, align 8
  call void @jzero_far(ptr noundef %call4, i64 noundef 1280) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %buffer, align 8
  %9 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %8, i64 %idx.ext
  %10 = load ptr, ptr %coef, align 8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.my_coef_controller, ptr %10, i64 0, i32 6, i64 %idxprom
  store ptr %add.ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @jinit_marker_writer(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_coef(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 54
  %0 = load ptr, ptr %coef1, align 8
  store ptr %0, ptr %coef, align 8
  %cmp.not = icmp eq i32 %pass_mode, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 1
  store i32 0, ptr %iMCU_row_num, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_output(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x ptr], align 8
  %MCU_buffer = alloca [10 x ptr], align 8
  %buffer_ptr = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 41
  %5 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 42, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %compptr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i64 0, i32 8
  %10 = load ptr, ptr %access_virt_barray, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %whole_image, align 8
  %14 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 1
  %15 = load i32, ptr %component_index, align 4
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %13, i64 %idxprom3
  %16 = load ptr, ptr %arrayidx4, align 8
  %17 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %iMCU_row_num, align 8
  %19 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 3
  %20 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %18, %20
  %call = call ptr %10(ptr noundef %11, ptr noundef %16, i32 noundef %mul, i32 noundef %20, i32 noundef 0) #4
  %21 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom6
  store ptr %call, ptr %arrayidx7, align 8
  %22 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %22, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %MCU_vert_offset, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.end79, %for.end
  %storemerge1 = phi i32 [ %24, %for.end ], [ %inc82, %for.end79 ]
  store i32 %storemerge1, ptr %yoffset, align 4
  %25 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %25, i64 0, i32 4
  %26 = load i32, ptr %MCU_rows_per_iMCU_row, align 4
  %cmp9 = icmp slt i32 %storemerge1, %26
  br i1 %cmp9, label %for.body10, label %for.end83

for.body10:                                       ; preds = %for.cond8
  %27 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %27, i64 0, i32 2
  %28 = load i32, ptr %mcu_ctr, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc77, %for.body10
  %storemerge3 = phi i32 [ %28, %for.body10 ], [ %inc78, %for.inc77 ]
  store i32 %storemerge3, ptr %MCU_col_num, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i64 0, i32 43
  %30 = load i32, ptr %MCUs_per_row12, align 8
  %cmp13 = icmp ult i32 %storemerge3, %30
  br i1 %cmp13, label %for.body14, label %for.end79

for.body14:                                       ; preds = %for.cond11
  store i32 0, ptr %blkn, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc69, %for.body14
  %storemerge4 = phi i32 [ 0, %for.body14 ], [ %inc70, %for.inc69 ]
  store i32 %storemerge4, ptr %ci, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 41
  %32 = load i32, ptr %comps_in_scan16, align 4
  %cmp17 = icmp slt i32 %storemerge4, %32
  br i1 %cmp17, label %for.body18, label %for.end71

for.body18:                                       ; preds = %for.cond15
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i64 0, i32 42, i64 %idxprom20
  %35 = load ptr, ptr %arrayidx21, align 8
  store ptr %35, ptr %compptr, align 8
  %36 = load i32, ptr %MCU_col_num, align 4
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 0, i32 13
  %37 = load i32, ptr %MCU_width, align 4
  %mul22 = mul i32 %36, %37
  store i32 %mul22, ptr %start_col, align 4
  %38 = load i32, ptr %last_MCU_col, align 4
  %cmp23 = icmp ult i32 %36, %38
  %39 = load ptr, ptr %compptr, align 8
  %MCU_width24 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 13
  %40 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 17
  %cond.in = select i1 %cmp23, ptr %MCU_width24, ptr %last_col_width
  %cond = load i32, ptr %cond.in, align 4
  store i32 %cond, ptr %blockcnt, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc66, %for.body18
  %storemerge5 = phi i32 [ 0, %for.body18 ], [ %inc67, %for.inc66 ]
  store i32 %storemerge5, ptr %yindex, align 4
  %41 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 14
  %42 = load i32, ptr %MCU_height, align 8
  %cmp26 = icmp slt i32 %storemerge5, %42
  br i1 %cmp26, label %for.body27, label %for.inc69

for.body27:                                       ; preds = %for.cond25
  %43 = load ptr, ptr %coef, align 8
  %iMCU_row_num28 = getelementptr inbounds %struct.my_coef_controller, ptr %43, i64 0, i32 1
  %44 = load i32, ptr %iMCU_row_num28, align 8
  %45 = load i32, ptr %last_iMCU_row, align 4
  %cmp29 = icmp ult i32 %44, %45
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body27
  %46 = load i32, ptr %yindex, align 4
  %47 = load i32, ptr %yoffset, align 4
  %add = add nsw i32 %46, %47
  %48 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 0, i32 18
  %49 = load i32, ptr %last_row_height, align 8
  %cmp30 = icmp slt i32 %add, %49
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body27
  %50 = load i32, ptr %ci, align 4
  %idxprom31 = sext i32 %50 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom31
  %51 = load ptr, ptr %arrayidx32, align 8
  %52 = load i32, ptr %yindex, align 4
  %53 = load i32, ptr %yoffset, align 4
  %add33 = add nsw i32 %52, %53
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %51, i64 %idxprom34
  %54 = load ptr, ptr %arrayidx35, align 8
  %55 = load i32, ptr %start_col, align 4
  %idx.ext = zext i32 %55 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %54, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %if.then
  %storemerge6 = phi i32 [ 0, %if.then ], [ %inc43, %for.body38 ]
  store i32 %storemerge6, ptr %xindex, align 4
  %56 = load i32, ptr %blockcnt, align 4
  %cmp37 = icmp slt i32 %storemerge6, %56
  br i1 %cmp37, label %for.body38, label %if.end

for.body38:                                       ; preds = %for.cond36
  %57 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %57, i64 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %58 = load i32, ptr %blkn, align 4
  %inc39 = add nsw i32 %58, 1
  store i32 %inc39, ptr %blkn, align 4
  %idxprom40 = sext i32 %58 to i64
  %arrayidx41 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom40
  store ptr %57, ptr %arrayidx41, align 8
  %59 = load i32, ptr %xindex, align 4
  %inc43 = add nsw i32 %59, 1
  br label %for.cond36, !llvm.loop !12

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %xindex, align 4
  br label %if.end

if.end:                                           ; preds = %for.cond36, %if.else
  br label %for.cond45

for.cond45:                                       ; preds = %for.body48, %if.end
  %60 = load i32, ptr %xindex, align 4
  %61 = load ptr, ptr %compptr, align 8
  %MCU_width46 = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i64 0, i32 13
  %62 = load i32, ptr %MCU_width46, align 4
  %cmp47 = icmp slt i32 %60, %62
  br i1 %cmp47, label %for.body48, label %for.inc66

for.body48:                                       ; preds = %for.cond45
  %63 = load ptr, ptr %coef, align 8
  %64 = load i32, ptr %blkn, align 4
  %idxprom49 = sext i32 %64 to i64
  %arrayidx50 = getelementptr inbounds %struct.my_coef_controller, ptr %63, i64 0, i32 6, i64 %idxprom49
  %65 = load ptr, ptr %arrayidx50, align 8
  %idxprom51 = sext i32 %64 to i64
  %arrayidx52 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom51
  store ptr %65, ptr %arrayidx52, align 8
  %66 = load i32, ptr %blkn, align 4
  %sub53 = add nsw i32 %66, -1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom54
  %67 = load ptr, ptr %arrayidx55, align 8
  %68 = load i16, ptr %67, align 2
  %idxprom58 = sext i32 %66 to i64
  %arrayidx59 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom58
  %69 = load ptr, ptr %arrayidx59, align 8
  store i16 %68, ptr %69, align 2
  %70 = load i32, ptr %blkn, align 4
  %inc62 = add nsw i32 %70, 1
  store i32 %inc62, ptr %blkn, align 4
  %71 = load i32, ptr %xindex, align 4
  %inc64 = add nsw i32 %71, 1
  store i32 %inc64, ptr %xindex, align 4
  br label %for.cond45, !llvm.loop !13

for.inc66:                                        ; preds = %for.cond45
  %72 = load i32, ptr %yindex, align 4
  %inc67 = add nsw i32 %72, 1
  br label %for.cond25, !llvm.loop !14

for.inc69:                                        ; preds = %for.cond25
  %73 = load i32, ptr %ci, align 4
  %inc70 = add nsw i32 %73, 1
  br label %for.cond15, !llvm.loop !15

for.end71:                                        ; preds = %for.cond15
  %74 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i64 0, i32 59
  %75 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %75, i64 0, i32 1
  %76 = load ptr, ptr %encode_mcu, align 8
  %call72 = call i32 %76(ptr noundef %74, ptr noundef nonnull %MCU_buffer) #4
  %tobool.not = icmp eq i32 %call72, 0
  br i1 %tobool.not, label %if.then73, label %for.inc77

if.then73:                                        ; preds = %for.end71
  %77 = load i32, ptr %yoffset, align 4
  %78 = load ptr, ptr %coef, align 8
  %MCU_vert_offset74 = getelementptr inbounds %struct.my_coef_controller, ptr %78, i64 0, i32 3
  store i32 %77, ptr %MCU_vert_offset74, align 8
  %79 = load i32, ptr %MCU_col_num, align 4
  %mcu_ctr75 = getelementptr inbounds %struct.my_coef_controller, ptr %78, i64 0, i32 2
  store i32 %79, ptr %mcu_ctr75, align 4
  br label %return

for.inc77:                                        ; preds = %for.end71
  %80 = load i32, ptr %MCU_col_num, align 4
  %inc78 = add i32 %80, 1
  br label %for.cond11, !llvm.loop !16

for.end79:                                        ; preds = %for.cond11
  %81 = load ptr, ptr %coef, align 8
  %mcu_ctr80 = getelementptr inbounds %struct.my_coef_controller, ptr %81, i64 0, i32 2
  store i32 0, ptr %mcu_ctr80, align 4
  %82 = load i32, ptr %yoffset, align 4
  %inc82 = add nsw i32 %82, 1
  br label %for.cond8, !llvm.loop !17

for.end83:                                        ; preds = %for.cond8
  %83 = load ptr, ptr %coef, align 8
  %iMCU_row_num84 = getelementptr inbounds %struct.my_coef_controller, ptr %83, i64 0, i32 1
  %84 = load i32, ptr %iMCU_row_num84, align 8
  %inc85 = add i32 %84, 1
  store i32 %inc85, ptr %iMCU_row_num84, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %85)
  br label %return

return:                                           ; preds = %for.end83, %if.then73
  %storemerge2 = phi i32 [ 1, %for.end83 ], [ 0, %if.then73 ]
  ret i32 %storemerge2
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
