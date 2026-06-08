; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jctrans.c'
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
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, ptr, [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_write_coefficients(ptr noundef %cinfo, ptr noundef %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %coef_arrays.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %coef_arrays, ptr %coef_arrays.addr, align 8
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
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_suppress_tables(ptr noundef %12, i32 noundef 0)
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err4, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %reset_error_mgr, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  %17 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %dest, align 8
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %init_destination, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %coef_arrays.addr, align 8
  call void @transencode_master_selection(ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 36
  store i32 0, ptr %next_scanline, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 8
  store i32 1, ptr %input_components, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_c_master_control(ptr noundef %1, i32 noundef 1)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 24
  %3 = load i32, ptr %arith_code, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 1, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %error_exit, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  br label %if.end5

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 37
  %11 = load i32, ptr %progressive_mode, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_encoder(ptr noundef %12)
  br label %if.end

if.else4:                                         ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_encoder(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %coef_arrays.addr, align 8
  call void @transencode_coef_controller(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_marker_writer(ptr noundef %16)
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %realize_virt_arrays, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  %21 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 55
  %22 = load ptr, ptr %marker, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %write_file_header, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
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
  %0 = load ptr, ptr %dstinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dstinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %dstinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %dstinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %dstinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %dstinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %srcinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %image_width, align 8
  %14 = load ptr, ptr %dstinfo.addr, align 8
  %image_width4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 6
  store i32 %13, ptr %image_width4, align 8
  %15 = load ptr, ptr %srcinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 7
  %16 = load i32, ptr %image_height, align 4
  %17 = load ptr, ptr %dstinfo.addr, align 8
  %image_height5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 7
  store i32 %16, ptr %image_height5, align 4
  %18 = load ptr, ptr %srcinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %num_components, align 8
  %20 = load ptr, ptr %dstinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 8
  store i32 %19, ptr %input_components, align 8
  %21 = load ptr, ptr %srcinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 9
  %22 = load i32, ptr %jpeg_color_space, align 4
  %23 = load ptr, ptr %dstinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 9
  store i32 %22, ptr %in_color_space, align 4
  %24 = load ptr, ptr %dstinfo.addr, align 8
  call void @jpeg_set_defaults(ptr noundef %24)
  %25 = load ptr, ptr %dstinfo.addr, align 8
  %26 = load ptr, ptr %srcinfo.addr, align 8
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 9
  %27 = load i32, ptr %jpeg_color_space6, align 4
  call void @jpeg_set_colorspace(ptr noundef %25, i32 noundef %27)
  %28 = load ptr, ptr %srcinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 42
  %29 = load i32, ptr %data_precision, align 8
  %30 = load ptr, ptr %dstinfo.addr, align 8
  %data_precision7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 11
  store i32 %29, ptr %data_precision7, align 8
  %31 = load ptr, ptr %srcinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 56
  %32 = load i32, ptr %CCIR601_sampling, align 8
  %33 = load ptr, ptr %dstinfo.addr, align 8
  %CCIR601_sampling8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 26
  store i32 %32, ptr %CCIR601_sampling8, align 4
  store i32 0, ptr %tblno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, ptr %tblno, align 4
  %cmp9 = icmp slt i32 %34, 4
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %srcinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 39
  %36 = load i32, ptr %tblno, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx10 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %37 = load ptr, ptr %arrayidx10, align 8
  %cmp11 = icmp ne ptr %37, null
  br i1 %cmp11, label %if.then12, label %if.end27

if.then12:                                        ; preds = %for.body
  %38 = load ptr, ptr %dstinfo.addr, align 8
  %quant_tbl_ptrs13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 15
  %39 = load i32, ptr %tblno, align 4
  %idxprom14 = sext i32 %39 to i64
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs13, i64 0, i64 %idxprom14
  store ptr %arrayidx15, ptr %qtblptr, align 8
  %40 = load ptr, ptr %qtblptr, align 8
  %41 = load ptr, ptr %40, align 8
  %cmp16 = icmp eq ptr %41, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then12
  %42 = load ptr, ptr %dstinfo.addr, align 8
  %call = call ptr @jpeg_alloc_quant_table(ptr noundef %42)
  %43 = load ptr, ptr %qtblptr, align 8
  store ptr %call, ptr %43, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then12
  %44 = load ptr, ptr %qtblptr, align 8
  %45 = load ptr, ptr %44, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %45, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 0
  %46 = load ptr, ptr %srcinfo.addr, align 8
  %quant_tbl_ptrs19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 39
  %47 = load i32, ptr %tblno, align 4
  %idxprom20 = sext i32 %47 to i64
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs19, i64 0, i64 %idxprom20
  %48 = load ptr, ptr %arrayidx21, align 8
  %quantval22 = getelementptr inbounds %struct.JQUANT_TBL, ptr %48, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [64 x i16], ptr %quantval22, i64 0, i64 0
  %49 = load ptr, ptr %qtblptr, align 8
  %50 = load ptr, ptr %49, align 8
  %quantval24 = getelementptr inbounds %struct.JQUANT_TBL, ptr %50, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [64 x i16], ptr %quantval24, i64 0, i64 0
  %51 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay25, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %arraydecay23, i64 noundef 128, i64 noundef %51) #4
  %52 = load ptr, ptr %qtblptr, align 8
  %53 = load ptr, ptr %52, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %53, i32 0, i32 1
  store i32 0, ptr %sent_table, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %54 = load i32, ptr %tblno, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %tblno, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %55 = load ptr, ptr %srcinfo.addr, align 8
  %num_components28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 8
  %56 = load i32, ptr %num_components28, align 8
  %57 = load ptr, ptr %dstinfo.addr, align 8
  %num_components29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 12
  store i32 %56, ptr %num_components29, align 4
  %58 = load ptr, ptr %dstinfo.addr, align 8
  %num_components30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i32 0, i32 12
  %59 = load i32, ptr %num_components30, align 4
  %cmp31 = icmp slt i32 %59, 1
  br i1 %cmp31, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %60 = load ptr, ptr %dstinfo.addr, align 8
  %num_components32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i32 0, i32 12
  %61 = load i32, ptr %num_components32, align 4
  %cmp33 = icmp sgt i32 %61, 10
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %lor.lhs.false, %for.end
  %62 = load ptr, ptr %dstinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err35, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 5
  store i32 24, ptr %msg_code36, align 8
  %64 = load ptr, ptr %dstinfo.addr, align 8
  %num_components37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i32 0, i32 12
  %65 = load i32, ptr %num_components37, align 4
  %66 = load ptr, ptr %dstinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err38, align 8
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 6
  %arrayidx40 = getelementptr inbounds [8 x i32], ptr %msg_parm39, i64 0, i64 0
  store i32 %65, ptr %arrayidx40, align 4
  %68 = load ptr, ptr %dstinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err41, align 8
  %msg_parm42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %msg_parm42, i64 0, i64 1
  store i32 10, ptr %arrayidx43, align 4
  %70 = load ptr, ptr %dstinfo.addr, align 8
  %err44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %err44, align 8
  %error_exit45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %error_exit45, align 8
  %73 = load ptr, ptr %dstinfo.addr, align 8
  call void %72(ptr noundef %73)
  br label %if.end46

if.end46:                                         ; preds = %if.then34, %lor.lhs.false
  store i32 0, ptr %ci, align 4
  %74 = load ptr, ptr %srcinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 43
  %75 = load ptr, ptr %comp_info, align 8
  store ptr %75, ptr %incomp, align 8
  %76 = load ptr, ptr %dstinfo.addr, align 8
  %comp_info47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %76, i32 0, i32 14
  %77 = load ptr, ptr %comp_info47, align 8
  store ptr %77, ptr %outcomp, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc104, %if.end46
  %78 = load i32, ptr %ci, align 4
  %79 = load ptr, ptr %dstinfo.addr, align 8
  %num_components49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %79, i32 0, i32 12
  %80 = load i32, ptr %num_components49, align 4
  %cmp50 = icmp slt i32 %78, %80
  br i1 %cmp50, label %for.body51, label %for.end107

for.body51:                                       ; preds = %for.cond48
  %81 = load ptr, ptr %incomp, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %81, i32 0, i32 0
  %82 = load i32, ptr %component_id, align 8
  %83 = load ptr, ptr %outcomp, align 8
  %component_id52 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i32 0, i32 0
  store i32 %82, ptr %component_id52, align 8
  %84 = load ptr, ptr %incomp, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %84, i32 0, i32 2
  %85 = load i32, ptr %h_samp_factor, align 8
  %86 = load ptr, ptr %outcomp, align 8
  %h_samp_factor53 = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i32 0, i32 2
  store i32 %85, ptr %h_samp_factor53, align 8
  %87 = load ptr, ptr %incomp, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i32 0, i32 3
  %88 = load i32, ptr %v_samp_factor, align 4
  %89 = load ptr, ptr %outcomp, align 8
  %v_samp_factor54 = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i32 0, i32 3
  store i32 %88, ptr %v_samp_factor54, align 4
  %90 = load ptr, ptr %incomp, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %quant_tbl_no, align 8
  %92 = load ptr, ptr %outcomp, align 8
  %quant_tbl_no55 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i32 0, i32 4
  store i32 %91, ptr %quant_tbl_no55, align 8
  %93 = load ptr, ptr %outcomp, align 8
  %quant_tbl_no56 = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i32 0, i32 4
  %94 = load i32, ptr %quant_tbl_no56, align 8
  store i32 %94, ptr %tblno, align 4
  %95 = load i32, ptr %tblno, align 4
  %cmp57 = icmp slt i32 %95, 0
  br i1 %cmp57, label %if.then65, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %for.body51
  %96 = load i32, ptr %tblno, align 4
  %cmp59 = icmp sge i32 %96, 4
  br i1 %cmp59, label %if.then65, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false58
  %97 = load ptr, ptr %srcinfo.addr, align 8
  %quant_tbl_ptrs61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 39
  %98 = load i32, ptr %tblno, align 4
  %idxprom62 = sext i32 %98 to i64
  %arrayidx63 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs61, i64 0, i64 %idxprom62
  %99 = load ptr, ptr %arrayidx63, align 8
  %cmp64 = icmp eq ptr %99, null
  br i1 %cmp64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %lor.lhs.false60, %lor.lhs.false58, %for.body51
  %100 = load ptr, ptr %dstinfo.addr, align 8
  %err66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %err66, align 8
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i32 0, i32 5
  store i32 51, ptr %msg_code67, align 8
  %102 = load i32, ptr %tblno, align 4
  %103 = load ptr, ptr %dstinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %err68, align 8
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %104, i32 0, i32 6
  %arrayidx70 = getelementptr inbounds [8 x i32], ptr %msg_parm69, i64 0, i64 0
  store i32 %102, ptr %arrayidx70, align 4
  %105 = load ptr, ptr %dstinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %err71, align 8
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %error_exit72, align 8
  %108 = load ptr, ptr %dstinfo.addr, align 8
  call void %107(ptr noundef %108)
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %lor.lhs.false60
  %109 = load ptr, ptr %srcinfo.addr, align 8
  %quant_tbl_ptrs74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 39
  %110 = load i32, ptr %tblno, align 4
  %idxprom75 = sext i32 %110 to i64
  %arrayidx76 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs74, i64 0, i64 %idxprom75
  %111 = load ptr, ptr %arrayidx76, align 8
  store ptr %111, ptr %slot_quant, align 8
  %112 = load ptr, ptr %incomp, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %112, i32 0, i32 19
  %113 = load ptr, ptr %quant_table, align 8
  store ptr %113, ptr %c_quant, align 8
  %114 = load ptr, ptr %c_quant, align 8
  %cmp77 = icmp ne ptr %114, null
  br i1 %cmp77, label %if.then78, label %if.end103

if.then78:                                        ; preds = %if.end73
  store i32 0, ptr %coefi, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc100, %if.then78
  %115 = load i32, ptr %coefi, align 4
  %cmp80 = icmp slt i32 %115, 64
  br i1 %cmp80, label %for.body81, label %for.end102

for.body81:                                       ; preds = %for.cond79
  %116 = load ptr, ptr %c_quant, align 8
  %quantval82 = getelementptr inbounds %struct.JQUANT_TBL, ptr %116, i32 0, i32 0
  %117 = load i32, ptr %coefi, align 4
  %idxprom83 = sext i32 %117 to i64
  %arrayidx84 = getelementptr inbounds [64 x i16], ptr %quantval82, i64 0, i64 %idxprom83
  %118 = load i16, ptr %arrayidx84, align 2
  %conv = zext i16 %118 to i32
  %119 = load ptr, ptr %slot_quant, align 8
  %quantval85 = getelementptr inbounds %struct.JQUANT_TBL, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %coefi, align 4
  %idxprom86 = sext i32 %120 to i64
  %arrayidx87 = getelementptr inbounds [64 x i16], ptr %quantval85, i64 0, i64 %idxprom86
  %121 = load i16, ptr %arrayidx87, align 2
  %conv88 = zext i16 %121 to i32
  %cmp89 = icmp ne i32 %conv, %conv88
  br i1 %cmp89, label %if.then91, label %if.end99

if.then91:                                        ; preds = %for.body81
  %122 = load ptr, ptr %dstinfo.addr, align 8
  %err92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %err92, align 8
  %msg_code93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i32 0, i32 5
  store i32 43, ptr %msg_code93, align 8
  %124 = load i32, ptr %tblno, align 4
  %125 = load ptr, ptr %dstinfo.addr, align 8
  %err94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %err94, align 8
  %msg_parm95 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %126, i32 0, i32 6
  %arrayidx96 = getelementptr inbounds [8 x i32], ptr %msg_parm95, i64 0, i64 0
  store i32 %124, ptr %arrayidx96, align 4
  %127 = load ptr, ptr %dstinfo.addr, align 8
  %err97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %err97, align 8
  %error_exit98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %error_exit98, align 8
  %130 = load ptr, ptr %dstinfo.addr, align 8
  call void %129(ptr noundef %130)
  br label %if.end99

if.end99:                                         ; preds = %if.then91, %for.body81
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %131 = load i32, ptr %coefi, align 4
  %inc101 = add nsw i32 %131, 1
  store i32 %inc101, ptr %coefi, align 4
  br label %for.cond79, !llvm.loop !8

for.end102:                                       ; preds = %for.cond79
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %if.end73
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %132 = load i32, ptr %ci, align 4
  %inc105 = add nsw i32 %132, 1
  store i32 %inc105, ptr %ci, align 4
  %133 = load ptr, ptr %incomp, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %133, i32 1
  store ptr %incdec.ptr, ptr %incomp, align 8
  %134 = load ptr, ptr %outcomp, align 8
  %incdec.ptr106 = getelementptr inbounds %struct.jpeg_component_info, ptr %134, i32 1
  store ptr %incdec.ptr106, ptr %outcomp, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 120)
  store ptr %call, ptr %coef, align 8
  %4 = load ptr, ptr %coef, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 54
  store ptr %4, ptr %coef1, align 8
  %6 = load ptr, ptr %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_coef, ptr %start_pass, align 8
  %7 = load ptr, ptr %coef, align 8
  %pub2 = getelementptr inbounds %struct.my_coef_controller, ptr %7, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %pub2, i32 0, i32 1
  store ptr @compress_output, ptr %compress_data, align 8
  %8 = load ptr, ptr %coef_arrays.addr, align 8
  %9 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %9, i32 0, i32 5
  store ptr %8, ptr %whole_image, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %mem3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mem3, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %alloc_large, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %12(ptr noundef %13, i32 noundef 1, i64 noundef 1280)
  store ptr %call4, ptr %buffer, align 8
  %14 = load ptr, ptr %buffer, align 8
  call void @jzero_far(ptr noundef %14, i64 noundef 1280)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %15, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %buffer, align 8
  %17 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %16, i64 %idx.ext
  %18 = load ptr, ptr %coef, align 8
  %dummy_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %dummy_buffer, i64 0, i64 %idxprom
  store ptr %add.ptr, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @jinit_marker_writer(ptr noundef) #1

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
  %2 = load i32, ptr %pass_mode.addr, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %9, i32 0, i32 1
  store i32 0, ptr %iMCU_row_num, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %10)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @compress_output(ptr noundef %cinfo, ptr noundef %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
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
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 41
  %8 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 42
  %10 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %compptr, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %access_virt_barray, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %whole_image, align 8
  %18 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %component_index, align 4
  %idxprom3 = sext i32 %19 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %17, i64 %idxprom3
  %20 = load ptr, ptr %arrayidx4, align 8
  %21 = load ptr, ptr %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %iMCU_row_num, align 8
  %23 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %v_samp_factor, align 4
  %mul = mul i32 %22, %24
  %25 = load ptr, ptr %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %v_samp_factor5, align 4
  %call = call ptr %14(ptr noundef %15, ptr noundef %20, i32 noundef %mul, i32 noundef %26, i32 noundef 0)
  %27 = load i32, ptr %ci, align 4
  %idxprom6 = sext i32 %27 to i64
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom6
  store ptr %call, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %MCU_vert_offset, align 8
  store i32 %30, ptr %yoffset, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc81, %for.end
  %31 = load i32, ptr %yoffset, align 4
  %32 = load ptr, ptr %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %MCU_rows_per_iMCU_row, align 4
  %cmp9 = icmp slt i32 %31, %33
  br i1 %cmp9, label %for.body10, label %for.end83

for.body10:                                       ; preds = %for.cond8
  %34 = load ptr, ptr %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %mcu_ctr, align 4
  store i32 %35, ptr %MCU_col_num, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc77, %for.body10
  %36 = load i32, ptr %MCU_col_num, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %MCUs_per_row12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 43
  %38 = load i32, ptr %MCUs_per_row12, align 8
  %cmp13 = icmp ult i32 %36, %38
  br i1 %cmp13, label %for.body14, label %for.end79

for.body14:                                       ; preds = %for.cond11
  store i32 0, ptr %blkn, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc69, %for.body14
  %39 = load i32, ptr %ci, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 41
  %41 = load i32, ptr %comps_in_scan16, align 4
  %cmp17 = icmp slt i32 %39, %41
  br i1 %cmp17, label %for.body18, label %for.end71

for.body18:                                       ; preds = %for.cond15
  %42 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 42
  %43 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %43 to i64
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info19, i64 0, i64 %idxprom20
  %44 = load ptr, ptr %arrayidx21, align 8
  store ptr %44, ptr %compptr, align 8
  %45 = load i32, ptr %MCU_col_num, align 4
  %46 = load ptr, ptr %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 0, i32 13
  %47 = load i32, ptr %MCU_width, align 4
  %mul22 = mul i32 %45, %47
  store i32 %mul22, ptr %start_col, align 4
  %48 = load i32, ptr %MCU_col_num, align 4
  %49 = load i32, ptr %last_MCU_col, align 4
  %cmp23 = icmp ult i32 %48, %49
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body18
  %50 = load ptr, ptr %compptr, align 8
  %MCU_width24 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i32 0, i32 13
  %51 = load i32, ptr %MCU_width24, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body18
  %52 = load ptr, ptr %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i32 0, i32 17
  %53 = load i32, ptr %last_col_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %53, %cond.false ]
  store i32 %cond, ptr %blockcnt, align 4
  store i32 0, ptr %yindex, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc66, %cond.end
  %54 = load i32, ptr %yindex, align 4
  %55 = load ptr, ptr %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i32 0, i32 14
  %56 = load i32, ptr %MCU_height, align 8
  %cmp26 = icmp slt i32 %54, %56
  br i1 %cmp26, label %for.body27, label %for.end68

for.body27:                                       ; preds = %for.cond25
  %57 = load ptr, ptr %coef, align 8
  %iMCU_row_num28 = getelementptr inbounds %struct.my_coef_controller, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %iMCU_row_num28, align 8
  %59 = load i32, ptr %last_iMCU_row, align 4
  %cmp29 = icmp ult i32 %58, %59
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body27
  %60 = load i32, ptr %yindex, align 4
  %61 = load i32, ptr %yoffset, align 4
  %add = add nsw i32 %60, %61
  %62 = load ptr, ptr %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i32 0, i32 18
  %63 = load i32, ptr %last_row_height, align 8
  %cmp30 = icmp slt i32 %add, %63
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body27
  %64 = load i32, ptr %ci, align 4
  %idxprom31 = sext i32 %64 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom31
  %65 = load ptr, ptr %arrayidx32, align 8
  %66 = load i32, ptr %yindex, align 4
  %67 = load i32, ptr %yoffset, align 4
  %add33 = add nsw i32 %66, %67
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %65, i64 %idxprom34
  %68 = load ptr, ptr %arrayidx35, align 8
  %69 = load i32, ptr %start_col, align 4
  %idx.ext = zext i32 %69 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %68, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  store i32 0, ptr %xindex, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc42, %if.then
  %70 = load i32, ptr %xindex, align 4
  %71 = load i32, ptr %blockcnt, align 4
  %cmp37 = icmp slt i32 %70, %71
  br i1 %cmp37, label %for.body38, label %for.end44

for.body38:                                       ; preds = %for.cond36
  %72 = load ptr, ptr %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %72, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8
  %73 = load i32, ptr %blkn, align 4
  %inc39 = add nsw i32 %73, 1
  store i32 %inc39, ptr %blkn, align 4
  %idxprom40 = sext i32 %73 to i64
  %arrayidx41 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom40
  store ptr %72, ptr %arrayidx41, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %for.body38
  %74 = load i32, ptr %xindex, align 4
  %inc43 = add nsw i32 %74, 1
  store i32 %inc43, ptr %xindex, align 4
  br label %for.cond36, !llvm.loop !12

for.end44:                                        ; preds = %for.cond36
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %xindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end44
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc63, %if.end
  %75 = load i32, ptr %xindex, align 4
  %76 = load ptr, ptr %compptr, align 8
  %MCU_width46 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i32 0, i32 13
  %77 = load i32, ptr %MCU_width46, align 4
  %cmp47 = icmp slt i32 %75, %77
  br i1 %cmp47, label %for.body48, label %for.end65

for.body48:                                       ; preds = %for.cond45
  %78 = load ptr, ptr %coef, align 8
  %dummy_buffer = getelementptr inbounds %struct.my_coef_controller, ptr %78, i32 0, i32 6
  %79 = load i32, ptr %blkn, align 4
  %idxprom49 = sext i32 %79 to i64
  %arrayidx50 = getelementptr inbounds [10 x ptr], ptr %dummy_buffer, i64 0, i64 %idxprom49
  %80 = load ptr, ptr %arrayidx50, align 8
  %81 = load i32, ptr %blkn, align 4
  %idxprom51 = sext i32 %81 to i64
  %arrayidx52 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom51
  store ptr %80, ptr %arrayidx52, align 8
  %82 = load i32, ptr %blkn, align 4
  %sub53 = sub nsw i32 %82, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom54
  %83 = load ptr, ptr %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [64 x i16], ptr %83, i64 0
  %arrayidx57 = getelementptr inbounds [64 x i16], ptr %arrayidx56, i64 0, i64 0
  %84 = load i16, ptr %arrayidx57, align 2
  %85 = load i32, ptr %blkn, align 4
  %idxprom58 = sext i32 %85 to i64
  %arrayidx59 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom58
  %86 = load ptr, ptr %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds [64 x i16], ptr %86, i64 0
  %arrayidx61 = getelementptr inbounds [64 x i16], ptr %arrayidx60, i64 0, i64 0
  store i16 %84, ptr %arrayidx61, align 2
  %87 = load i32, ptr %blkn, align 4
  %inc62 = add nsw i32 %87, 1
  store i32 %inc62, ptr %blkn, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %for.body48
  %88 = load i32, ptr %xindex, align 4
  %inc64 = add nsw i32 %88, 1
  store i32 %inc64, ptr %xindex, align 4
  br label %for.cond45, !llvm.loop !13

for.end65:                                        ; preds = %for.cond45
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %89 = load i32, ptr %yindex, align 4
  %inc67 = add nsw i32 %89, 1
  store i32 %inc67, ptr %yindex, align 4
  br label %for.cond25, !llvm.loop !14

for.end68:                                        ; preds = %for.cond25
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %90 = load i32, ptr %ci, align 4
  %inc70 = add nsw i32 %90, 1
  store i32 %inc70, ptr %ci, align 4
  br label %for.cond15, !llvm.loop !15

for.end71:                                        ; preds = %for.cond15
  %91 = load ptr, ptr %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, ptr %91, i32 0, i32 59
  %92 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %encode_mcu, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 0
  %call72 = call i32 %93(ptr noundef %94, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call72, 0
  br i1 %tobool, label %if.end76, label %if.then73

if.then73:                                        ; preds = %for.end71
  %95 = load i32, ptr %yoffset, align 4
  %96 = load ptr, ptr %coef, align 8
  %MCU_vert_offset74 = getelementptr inbounds %struct.my_coef_controller, ptr %96, i32 0, i32 3
  store i32 %95, ptr %MCU_vert_offset74, align 8
  %97 = load i32, ptr %MCU_col_num, align 4
  %98 = load ptr, ptr %coef, align 8
  %mcu_ctr75 = getelementptr inbounds %struct.my_coef_controller, ptr %98, i32 0, i32 2
  store i32 %97, ptr %mcu_ctr75, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %for.end71
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %99 = load i32, ptr %MCU_col_num, align 4
  %inc78 = add i32 %99, 1
  store i32 %inc78, ptr %MCU_col_num, align 4
  br label %for.cond11, !llvm.loop !16

for.end79:                                        ; preds = %for.cond11
  %100 = load ptr, ptr %coef, align 8
  %mcu_ctr80 = getelementptr inbounds %struct.my_coef_controller, ptr %100, i32 0, i32 2
  store i32 0, ptr %mcu_ctr80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.end79
  %101 = load i32, ptr %yoffset, align 4
  %inc82 = add nsw i32 %101, 1
  store i32 %inc82, ptr %yoffset, align 4
  br label %for.cond8, !llvm.loop !17

for.end83:                                        ; preds = %for.cond8
  %102 = load ptr, ptr %coef, align 8
  %iMCU_row_num84 = getelementptr inbounds %struct.my_coef_controller, ptr %102, i32 0, i32 1
  %103 = load i32, ptr %iMCU_row_num84, align 8
  %inc85 = add i32 %103, 1
  store i32 %inc85, ptr %iMCU_row_num84, align 8
  %104 = load ptr, ptr %cinfo.addr, align 8
  call void @start_iMCU_row(ptr noundef %104)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end83, %if.then73
  %105 = load i32, ptr %retval, align 4
  ret i32 %105
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

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
