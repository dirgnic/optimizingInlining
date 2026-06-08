; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmaster.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmaster.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, ptr, ptr }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_d_post_controller = type { ptr, ptr }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_deconverter = type { ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_calc_output_dimensions(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %ssize = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 202
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
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 11
  %13 = load i32, ptr %scale_num, align 4
  %mul = mul i32 %13, 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 12
  %15 = load i32, ptr %scale_denom, align 8
  %cmp4 = icmp ule i32 %mul, %15
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %image_width, align 8
  %conv = zext i32 %17 to i64
  %call = call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef 8)
  %conv6 = trunc i64 %call to i32
  %18 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 26
  store i32 %conv6, ptr %output_width, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %image_height, align 4
  %conv7 = zext i32 %20 to i64
  %call8 = call i64 @jdiv_round_up(i64 noundef %conv7, i64 noundef 8)
  %conv9 = trunc i64 %call8 to i32
  %21 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 27
  store i32 %conv9, ptr %output_height, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 59
  store i32 1, ptr %min_DCT_scaled_size, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %scale_num10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 11
  %24 = load i32, ptr %scale_num10, align 4
  %mul11 = mul i32 %24, 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %scale_denom12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 12
  %26 = load i32, ptr %scale_denom12, align 8
  %cmp13 = icmp ule i32 %mul11, %26
  br i1 %cmp13, label %if.then15, label %if.else27

if.then15:                                        ; preds = %if.else
  %27 = load ptr, ptr %cinfo.addr, align 8
  %image_width16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %image_width16, align 8
  %conv17 = zext i32 %28 to i64
  %call18 = call i64 @jdiv_round_up(i64 noundef %conv17, i64 noundef 4)
  %conv19 = trunc i64 %call18 to i32
  %29 = load ptr, ptr %cinfo.addr, align 8
  %output_width20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 26
  store i32 %conv19, ptr %output_width20, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %image_height21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 7
  %31 = load i32, ptr %image_height21, align 4
  %conv22 = zext i32 %31 to i64
  %call23 = call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef 4)
  %conv24 = trunc i64 %call23 to i32
  %32 = load ptr, ptr %cinfo.addr, align 8
  %output_height25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 27
  store i32 %conv24, ptr %output_height25, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 59
  store i32 2, ptr %min_DCT_scaled_size26, align 4
  br label %if.end52

if.else27:                                        ; preds = %if.else
  %34 = load ptr, ptr %cinfo.addr, align 8
  %scale_num28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %scale_num28, align 4
  %mul29 = mul i32 %35, 2
  %36 = load ptr, ptr %cinfo.addr, align 8
  %scale_denom30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 12
  %37 = load i32, ptr %scale_denom30, align 8
  %cmp31 = icmp ule i32 %mul29, %37
  br i1 %cmp31, label %if.then33, label %if.else45

if.then33:                                        ; preds = %if.else27
  %38 = load ptr, ptr %cinfo.addr, align 8
  %image_width34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 6
  %39 = load i32, ptr %image_width34, align 8
  %conv35 = zext i32 %39 to i64
  %call36 = call i64 @jdiv_round_up(i64 noundef %conv35, i64 noundef 2)
  %conv37 = trunc i64 %call36 to i32
  %40 = load ptr, ptr %cinfo.addr, align 8
  %output_width38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 26
  store i32 %conv37, ptr %output_width38, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %image_height39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 7
  %42 = load i32, ptr %image_height39, align 4
  %conv40 = zext i32 %42 to i64
  %call41 = call i64 @jdiv_round_up(i64 noundef %conv40, i64 noundef 2)
  %conv42 = trunc i64 %call41 to i32
  %43 = load ptr, ptr %cinfo.addr, align 8
  %output_height43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 27
  store i32 %conv42, ptr %output_height43, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 59
  store i32 4, ptr %min_DCT_scaled_size44, align 4
  br label %if.end51

if.else45:                                        ; preds = %if.else27
  %45 = load ptr, ptr %cinfo.addr, align 8
  %image_width46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 6
  %46 = load i32, ptr %image_width46, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %output_width47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 26
  store i32 %46, ptr %output_width47, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %image_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 7
  %49 = load i32, ptr %image_height48, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %output_height49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 27
  store i32 %49, ptr %output_height49, align 4
  %51 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 59
  store i32 8, ptr %min_DCT_scaled_size50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else45, %if.then33
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then15
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then5
  store i32 0, ptr %ci, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 43
  %53 = load ptr, ptr %comp_info, align 8
  store ptr %53, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end53
  %54 = load i32, ptr %ci, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 8
  %56 = load i32, ptr %num_components, align 8
  %cmp54 = icmp slt i32 %54, %56
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 59
  %58 = load i32, ptr %min_DCT_scaled_size56, align 4
  store i32 %58, ptr %ssize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %59 = load i32, ptr %ssize, align 4
  %cmp57 = icmp slt i32 %59, 8
  br i1 %cmp57, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %60 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %h_samp_factor, align 8
  %62 = load i32, ptr %ssize, align 4
  %mul59 = mul nsw i32 %61, %62
  %mul60 = mul nsw i32 %mul59, 2
  %63 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 57
  %64 = load i32, ptr %max_h_samp_factor, align 4
  %65 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 59
  %66 = load i32, ptr %min_DCT_scaled_size61, align 4
  %mul62 = mul nsw i32 %64, %66
  %cmp63 = icmp sle i32 %mul60, %mul62
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %67 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %v_samp_factor, align 4
  %69 = load i32, ptr %ssize, align 4
  %mul65 = mul nsw i32 %68, %69
  %mul66 = mul nsw i32 %mul65, 2
  %70 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 58
  %71 = load i32, ptr %max_v_samp_factor, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 59
  %73 = load i32, ptr %min_DCT_scaled_size67, align 4
  %mul68 = mul nsw i32 %71, %73
  %cmp69 = icmp sle i32 %mul66, %mul68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %74 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp69, %land.rhs ]
  br i1 %74, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %75 = load i32, ptr %ssize, align 4
  %mul71 = mul nsw i32 %75, 2
  store i32 %mul71, ptr %ssize, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %76 = load i32, ptr %ssize, align 4
  %77 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %77, i32 0, i32 9
  store i32 %76, ptr %DCT_scaled_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %78 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %ci, align 4
  %79 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %79, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ci, align 4
  %80 = load ptr, ptr %cinfo.addr, align 8
  %comp_info72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 43
  %81 = load ptr, ptr %comp_info72, align 8
  store ptr %81, ptr %compptr, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc102, %for.end
  %82 = load i32, ptr %ci, align 4
  %83 = load ptr, ptr %cinfo.addr, align 8
  %num_components74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 8
  %84 = load i32, ptr %num_components74, align 8
  %cmp75 = icmp slt i32 %82, %84
  br i1 %cmp75, label %for.body77, label %for.end105

for.body77:                                       ; preds = %for.cond73
  %85 = load ptr, ptr %cinfo.addr, align 8
  %image_width78 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 6
  %86 = load i32, ptr %image_width78, align 8
  %conv79 = zext i32 %86 to i64
  %87 = load ptr, ptr %compptr, align 8
  %h_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i32 0, i32 2
  %88 = load i32, ptr %h_samp_factor80, align 8
  %89 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size81 = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i32 0, i32 9
  %90 = load i32, ptr %DCT_scaled_size81, align 4
  %mul82 = mul nsw i32 %88, %90
  %conv83 = sext i32 %mul82 to i64
  %mul84 = mul nsw i64 %conv79, %conv83
  %91 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 57
  %92 = load i32, ptr %max_h_samp_factor85, align 4
  %mul86 = mul nsw i32 %92, 8
  %conv87 = sext i32 %mul86 to i64
  %call88 = call i64 @jdiv_round_up(i64 noundef %mul84, i64 noundef %conv87)
  %conv89 = trunc i64 %call88 to i32
  %93 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i32 0, i32 10
  store i32 %conv89, ptr %downsampled_width, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  %image_height90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 7
  %95 = load i32, ptr %image_height90, align 4
  %conv91 = zext i32 %95 to i64
  %96 = load ptr, ptr %compptr, align 8
  %v_samp_factor92 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i32 0, i32 3
  %97 = load i32, ptr %v_samp_factor92, align 4
  %98 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size93 = getelementptr inbounds %struct.jpeg_component_info, ptr %98, i32 0, i32 9
  %99 = load i32, ptr %DCT_scaled_size93, align 4
  %mul94 = mul nsw i32 %97, %99
  %conv95 = sext i32 %mul94 to i64
  %mul96 = mul nsw i64 %conv91, %conv95
  %100 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 58
  %101 = load i32, ptr %max_v_samp_factor97, align 8
  %mul98 = mul nsw i32 %101, 8
  %conv99 = sext i32 %mul98 to i64
  %call100 = call i64 @jdiv_round_up(i64 noundef %mul96, i64 noundef %conv99)
  %conv101 = trunc i64 %call100 to i32
  %102 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %102, i32 0, i32 11
  store i32 %conv101, ptr %downsampled_height, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %for.body77
  %103 = load i32, ptr %ci, align 4
  %inc103 = add nsw i32 %103, 1
  store i32 %inc103, ptr %ci, align 4
  %104 = load ptr, ptr %compptr, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i32 1
  store ptr %incdec.ptr104, ptr %compptr, align 8
  br label %for.cond73, !llvm.loop !9

for.end105:                                       ; preds = %for.cond73
  %105 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 10
  %106 = load i32, ptr %out_color_space, align 8
  switch i32 %106, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb106
    i32 3, label %sw.bb106
    i32 4, label %sw.bb108
    i32 5, label %sw.bb108
  ]

sw.bb:                                            ; preds = %for.end105
  %107 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 28
  store i32 1, ptr %out_color_components, align 8
  br label %sw.epilog

sw.bb106:                                         ; preds = %for.end105, %for.end105
  %108 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 28
  store i32 3, ptr %out_color_components107, align 8
  br label %sw.epilog

sw.bb108:                                         ; preds = %for.end105, %for.end105
  %109 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components109 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 28
  store i32 4, ptr %out_color_components109, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end105
  %110 = load ptr, ptr %cinfo.addr, align 8
  %num_components110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %110, i32 0, i32 8
  %111 = load i32, ptr %num_components110, align 8
  %112 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components111 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %112, i32 0, i32 28
  store i32 %111, ptr %out_color_components111, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb108, %sw.bb106, %sw.bb
  %113 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 19
  %114 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %115 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %115, i32 0, i32 28
  %116 = load i32, ptr %out_color_components112, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %116, %cond.false ]
  %117 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %117, i32 0, i32 29
  store i32 %cond, ptr %output_components, align 4
  %118 = load ptr, ptr %cinfo.addr, align 8
  %call113 = call i32 @use_merged_upsample(ptr noundef %118)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.else117

if.then115:                                       ; preds = %cond.end
  %119 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i32 0, i32 58
  %120 = load i32, ptr %max_v_samp_factor116, align 8
  %121 = load ptr, ptr %cinfo.addr, align 8
  %rec_outbuf_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %121, i32 0, i32 30
  store i32 %120, ptr %rec_outbuf_height, align 8
  br label %if.end119

if.else117:                                       ; preds = %cond.end
  %122 = load ptr, ptr %cinfo.addr, align 8
  %rec_outbuf_height118 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 30
  store i32 1, ptr %rec_outbuf_height118, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %if.then115
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @use_merged_upsample(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 17
  %1 = load i32, ptr %do_fancy_upsampling, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 56
  %3 = load i32, ptr %CCIR601_sampling, align 8
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %jpeg_color_space, align 4
  %cmp = icmp ne i32 %5, 3
  br i1 %cmp, label %if.then8, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %if.end
  %6 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %num_components, align 8
  %cmp3 = icmp ne i32 %7, 3
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %out_color_space, align 8
  %cmp5 = icmp ne i32 %9, 2
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 28
  %11 = load i32, ptr %out_color_components, align 8
  %cmp7 = icmp ne i32 %11, 3
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 43
  %13 = load ptr, ptr %comp_info, align 8
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx, i32 0, i32 2
  %14 = load i32, ptr %h_samp_factor, align 8
  %cmp10 = icmp ne i32 %14, 2
  br i1 %cmp10, label %if.then35, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end9
  %15 = load ptr, ptr %cinfo.addr, align 8
  %comp_info12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 43
  %16 = load ptr, ptr %comp_info12, align 8
  %arrayidx13 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 1
  %h_samp_factor14 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx13, i32 0, i32 2
  %17 = load i32, ptr %h_samp_factor14, align 8
  %cmp15 = icmp ne i32 %17, 1
  br i1 %cmp15, label %if.then35, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %18 = load ptr, ptr %cinfo.addr, align 8
  %comp_info17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 43
  %19 = load ptr, ptr %comp_info17, align 8
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 2
  %h_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx18, i32 0, i32 2
  %20 = load i32, ptr %h_samp_factor19, align 8
  %cmp20 = icmp ne i32 %20, 1
  br i1 %cmp20, label %if.then35, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %21 = load ptr, ptr %cinfo.addr, align 8
  %comp_info22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 43
  %22 = load ptr, ptr %comp_info22, align 8
  %arrayidx23 = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx23, i32 0, i32 3
  %23 = load i32, ptr %v_samp_factor, align 4
  %cmp24 = icmp sgt i32 %23, 2
  br i1 %cmp24, label %if.then35, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %24 = load ptr, ptr %cinfo.addr, align 8
  %comp_info26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 43
  %25 = load ptr, ptr %comp_info26, align 8
  %arrayidx27 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 1
  %v_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx27, i32 0, i32 3
  %26 = load i32, ptr %v_samp_factor28, align 4
  %cmp29 = icmp ne i32 %26, 1
  br i1 %cmp29, label %if.then35, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %27 = load ptr, ptr %cinfo.addr, align 8
  %comp_info31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 43
  %28 = load ptr, ptr %comp_info31, align 8
  %arrayidx32 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 2
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx32, i32 0, i32 3
  %29 = load i32, ptr %v_samp_factor33, align 4
  %cmp34 = icmp ne i32 %29, 1
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false30, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false16, %lor.lhs.false11, %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false30
  %30 = load ptr, ptr %cinfo.addr, align 8
  %comp_info37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 43
  %31 = load ptr, ptr %comp_info37, align 8
  %arrayidx38 = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx38, i32 0, i32 9
  %32 = load i32, ptr %DCT_scaled_size, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 59
  %34 = load i32, ptr %min_DCT_scaled_size, align 4
  %cmp39 = icmp ne i32 %32, %34
  br i1 %cmp39, label %if.then52, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end36
  %35 = load ptr, ptr %cinfo.addr, align 8
  %comp_info41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 43
  %36 = load ptr, ptr %comp_info41, align 8
  %arrayidx42 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 1
  %DCT_scaled_size43 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx42, i32 0, i32 9
  %37 = load i32, ptr %DCT_scaled_size43, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 59
  %39 = load i32, ptr %min_DCT_scaled_size44, align 4
  %cmp45 = icmp ne i32 %37, %39
  br i1 %cmp45, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %40 = load ptr, ptr %cinfo.addr, align 8
  %comp_info47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 43
  %41 = load ptr, ptr %comp_info47, align 8
  %arrayidx48 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 2
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx48, i32 0, i32 9
  %42 = load i32, ptr %DCT_scaled_size49, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 59
  %44 = load i32, ptr %min_DCT_scaled_size50, align 4
  %cmp51 = icmp ne i32 %42, %44
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false46, %lor.lhs.false40, %if.end36
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false46
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then52, %if.then35, %if.then8, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_new_colormap(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 73
  %1 = load ptr, ptr %master1, align 8
  store ptr %1, ptr %master, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %3, 207
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state2, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 19
  %15 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 24
  %17 = load i32, ptr %enable_external_quant, align 8
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %18 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 32
  %19 = load ptr, ptr %colormap, align 8
  %cmp7 = icmp ne ptr %19, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true6
  %20 = load ptr, ptr %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %quantizer_2pass, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 83
  store ptr %21, ptr %cquantize, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %cquantize9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 83
  %24 = load ptr, ptr %cquantize9, align 8
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %new_color_map, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  call void %25(ptr noundef %26)
  %27 = load ptr, ptr %master, align 8
  %pub = getelementptr inbounds %struct.my_decomp_master, ptr %27, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub, i32 0, i32 2
  store i32 0, ptr %is_dummy_pass, align 8
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5
  store i32 45, ptr %msg_code11, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err12, align 8
  %error_exit13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %error_exit13, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void %32(ptr noundef %33)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_master_decompress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 48)
  store ptr %call, ptr %master, align 8
  %4 = load ptr, ptr %master, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 73
  store ptr %4, ptr %master1, align 8
  %6 = load ptr, ptr %master, align 8
  %pub = getelementptr inbounds %struct.my_decomp_master, ptr %6, i32 0, i32 0
  %prepare_for_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub, i32 0, i32 0
  store ptr @prepare_for_output_pass, ptr %prepare_for_output_pass, align 8
  %7 = load ptr, ptr %master, align 8
  %pub2 = getelementptr inbounds %struct.my_decomp_master, ptr %7, i32 0, i32 0
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub2, i32 0, i32 1
  store ptr @finish_output_pass, ptr %finish_output_pass, align 8
  %8 = load ptr, ptr %master, align 8
  %pub3 = getelementptr inbounds %struct.my_decomp_master, ptr %8, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub3, i32 0, i32 2
  store i32 0, ptr %is_dummy_pass, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void @master_selection(ptr noundef %9)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_for_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 73
  %1 = load ptr, ptr %master1, align 8
  store ptr %1, ptr %master, align 8
  %2 = load ptr, ptr %master, align 8
  %pub = getelementptr inbounds %struct.my_decomp_master, ptr %2, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub, i32 0, i32 2
  %3 = load i32, ptr %is_dummy_pass, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %master, align 8
  %pub2 = getelementptr inbounds %struct.my_decomp_master, ptr %4, i32 0, i32 0
  %is_dummy_pass3 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub2, i32 0, i32 2
  store i32 0, ptr %is_dummy_pass3, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 83
  %6 = load ptr, ptr %cquantize, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %start_pass, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 76
  %10 = load ptr, ptr %post, align 8
  %start_pass4 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %start_pass4, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12, i32 noundef 2)
  %13 = load ptr, ptr %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 74
  %14 = load ptr, ptr %main, align 8
  %start_pass5 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %start_pass5, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16, i32 noundef 2)
  br label %if.end47

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 19
  %18 = load i32, ptr %quantize_colors, align 4
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %19 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 32
  %20 = load ptr, ptr %colormap, align 8
  %cmp = icmp eq ptr %20, null
  br i1 %cmp, label %if.then7, label %if.end22

if.then7:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 21
  %22 = load i32, ptr %two_pass_quantize, align 4
  %tobool8 = icmp ne i32 %22, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.else15

land.lhs.true9:                                   ; preds = %if.then7
  %23 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 25
  %24 = load i32, ptr %enable_2pass_quant, align 4
  %tobool10 = icmp ne i32 %24, 0
  br i1 %tobool10, label %if.then11, label %if.else15

if.then11:                                        ; preds = %land.lhs.true9
  %25 = load ptr, ptr %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %quantizer_2pass, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %cquantize12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 83
  store ptr %26, ptr %cquantize12, align 8
  %28 = load ptr, ptr %master, align 8
  %pub13 = getelementptr inbounds %struct.my_decomp_master, ptr %28, i32 0, i32 0
  %is_dummy_pass14 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub13, i32 0, i32 2
  store i32 1, ptr %is_dummy_pass14, align 8
  br label %if.end21

if.else15:                                        ; preds = %land.lhs.true9, %if.then7
  %29 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 23
  %30 = load i32, ptr %enable_1pass_quant, align 4
  %tobool16 = icmp ne i32 %30, 0
  br i1 %tobool16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else15
  %31 = load ptr, ptr %master, align 8
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %quantizer_1pass, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %cquantize18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 83
  store ptr %32, ptr %cquantize18, align 8
  br label %if.end

if.else19:                                        ; preds = %if.else15
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 5
  store i32 45, ptr %msg_code, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err20, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %error_exit, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  call void %38(ptr noundef %39)
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then17
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then11
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true, %if.else
  %40 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 80
  %41 = load ptr, ptr %idct, align 8
  %start_pass23 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %start_pass23, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  call void %42(ptr noundef %43)
  %44 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 75
  %45 = load ptr, ptr %coef, align 8
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %start_output_pass, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void %46(ptr noundef %47)
  %48 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 15
  %49 = load i32, ptr %raw_data_out, align 4
  %tobool24 = icmp ne i32 %49, 0
  br i1 %tobool24, label %if.end46, label %if.then25

if.then25:                                        ; preds = %if.end22
  %50 = load ptr, ptr %master, align 8
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %using_merged_upsample, align 4
  %tobool26 = icmp ne i32 %51, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then25
  %52 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 82
  %53 = load ptr, ptr %cconvert, align 8
  %start_pass28 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %start_pass28, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  call void %54(ptr noundef %55)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25
  %56 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 81
  %57 = load ptr, ptr %upsample, align 8
  %start_pass30 = getelementptr inbounds %struct.jpeg_upsampler, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %start_pass30, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  call void %58(ptr noundef %59)
  %60 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 19
  %61 = load i32, ptr %quantize_colors31, align 4
  %tobool32 = icmp ne i32 %61, 0
  br i1 %tobool32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end29
  %62 = load ptr, ptr %cinfo.addr, align 8
  %cquantize34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 83
  %63 = load ptr, ptr %cquantize34, align 8
  %start_pass35 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %start_pass35, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  %66 = load ptr, ptr %master, align 8
  %pub36 = getelementptr inbounds %struct.my_decomp_master, ptr %66, i32 0, i32 0
  %is_dummy_pass37 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub36, i32 0, i32 2
  %67 = load i32, ptr %is_dummy_pass37, align 8
  call void %64(ptr noundef %65, i32 noundef %67)
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end29
  %68 = load ptr, ptr %cinfo.addr, align 8
  %post39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 76
  %69 = load ptr, ptr %post39, align 8
  %start_pass40 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %start_pass40, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %72 = load ptr, ptr %master, align 8
  %pub41 = getelementptr inbounds %struct.my_decomp_master, ptr %72, i32 0, i32 0
  %is_dummy_pass42 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub41, i32 0, i32 2
  %73 = load i32, ptr %is_dummy_pass42, align 8
  %tobool43 = icmp ne i32 %73, 0
  %74 = zext i1 %tobool43 to i64
  %cond = select i1 %tobool43, i32 3, i32 0
  call void %70(ptr noundef %71, i32 noundef %cond)
  %75 = load ptr, ptr %cinfo.addr, align 8
  %main44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 74
  %76 = load ptr, ptr %main44, align 8
  %start_pass45 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %start_pass45, align 8
  %78 = load ptr, ptr %cinfo.addr, align 8
  call void %77(ptr noundef %78, i32 noundef 0)
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %if.end22
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then
  %79 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 2
  %80 = load ptr, ptr %progress, align 8
  %cmp48 = icmp ne ptr %80, null
  br i1 %cmp48, label %if.then49, label %if.end68

if.then49:                                        ; preds = %if.end47
  %81 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %pass_number, align 8
  %83 = load ptr, ptr %cinfo.addr, align 8
  %progress50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 2
  %84 = load ptr, ptr %progress50, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %84, i32 0, i32 3
  store i32 %82, ptr %completed_passes, align 8
  %85 = load ptr, ptr %master, align 8
  %pass_number51 = getelementptr inbounds %struct.my_decomp_master, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %pass_number51, align 8
  %87 = load ptr, ptr %master, align 8
  %pub52 = getelementptr inbounds %struct.my_decomp_master, ptr %87, i32 0, i32 0
  %is_dummy_pass53 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %pub52, i32 0, i32 2
  %88 = load i32, ptr %is_dummy_pass53, align 8
  %tobool54 = icmp ne i32 %88, 0
  %89 = zext i1 %tobool54 to i64
  %cond55 = select i1 %tobool54, i32 2, i32 1
  %add = add nsw i32 %86, %cond55
  %90 = load ptr, ptr %cinfo.addr, align 8
  %progress56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %progress56, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %91, i32 0, i32 4
  store i32 %add, ptr %total_passes, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 14
  %93 = load i32, ptr %buffered_image, align 8
  %tobool57 = icmp ne i32 %93, 0
  br i1 %tobool57, label %land.lhs.true58, label %if.end67

land.lhs.true58:                                  ; preds = %if.then49
  %94 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 77
  %95 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %95, i32 0, i32 5
  %96 = load i32, ptr %eoi_reached, align 4
  %tobool59 = icmp ne i32 %96, 0
  br i1 %tobool59, label %if.end67, label %if.then60

if.then60:                                        ; preds = %land.lhs.true58
  %97 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 25
  %98 = load i32, ptr %enable_2pass_quant61, align 4
  %tobool62 = icmp ne i32 %98, 0
  %99 = zext i1 %tobool62 to i64
  %cond63 = select i1 %tobool62, i32 2, i32 1
  %100 = load ptr, ptr %cinfo.addr, align 8
  %progress64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %progress64, align 8
  %total_passes65 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %101, i32 0, i32 4
  %102 = load i32, ptr %total_passes65, align 4
  %add66 = add nsw i32 %102, %cond63
  store i32 %add66, ptr %total_passes65, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %land.lhs.true58, %if.then49
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end47
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 73
  %1 = load ptr, ptr %master1, align 8
  store ptr %1, ptr %master, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 19
  %3 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 83
  %5 = load ptr, ptr %cquantize, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %finish_pass, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void %6(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %pass_number, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %pass_number, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @master_selection(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %use_c_buffer = alloca i32, align 4
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  %nscans = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 73
  %1 = load ptr, ptr %master1, align 8
  store ptr %1, ptr %master, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %2)
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @prepare_range_limit_table(ptr noundef %3)
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  %conv = zext i32 %5 to i64
  %6 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 28
  %7 = load i32, ptr %out_color_components, align 8
  %conv2 = sext i32 %7 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, ptr %samplesperrow, align 8
  %8 = load i64, ptr %samplesperrow, align 8
  %conv3 = trunc i64 %8 to i32
  store i32 %conv3, ptr %jd_samplesperrow, align 4
  %9 = load i32, ptr %jd_samplesperrow, align 4
  %conv4 = zext i32 %9 to i64
  %10 = load i64, ptr %samplesperrow, align 8
  %cmp = icmp ne i64 %conv4, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 69, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, ptr %17, i32 0, i32 1
  store i32 0, ptr %pass_number, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @use_merged_upsample(ptr noundef %18)
  %19 = load ptr, ptr %master, align 8
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, ptr %19, i32 0, i32 2
  store i32 %call, ptr %using_merged_upsample, align 4
  %20 = load ptr, ptr %master, align 8
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, ptr %20, i32 0, i32 3
  store ptr null, ptr %quantizer_1pass, align 8
  %21 = load ptr, ptr %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, ptr %21, i32 0, i32 4
  store ptr null, ptr %quantizer_2pass, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 19
  %23 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %24 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 14
  %25 = load i32, ptr %buffered_image, align 8
  %tobool7 = icmp ne i32 %25, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %26 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 23
  store i32 0, ptr %enable_1pass_quant, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 24
  store i32 0, ptr %enable_external_quant, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 25
  store i32 0, ptr %enable_2pass_quant, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %29 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 19
  %30 = load i32, ptr %quantize_colors10, align 4
  %tobool11 = icmp ne i32 %30, 0
  br i1 %tobool11, label %if.then12, label %if.end55

if.then12:                                        ; preds = %if.end9
  %31 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 15
  %32 = load i32, ptr %raw_data_out, align 4
  %tobool13 = icmp ne i32 %32, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.then12
  %33 = load ptr, ptr %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 5
  store i32 46, ptr %msg_code16, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err17, align 8
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %error_exit18, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  call void %37(ptr noundef %38)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then12
  %39 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 28
  %40 = load i32, ptr %out_color_components20, align 8
  %cmp21 = icmp ne i32 %40, 3
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %41 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 23
  store i32 1, ptr %enable_1pass_quant24, align 4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 24
  store i32 0, ptr %enable_external_quant25, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 25
  store i32 0, ptr %enable_2pass_quant26, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 32
  store ptr null, ptr %colormap, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end19
  %45 = load ptr, ptr %cinfo.addr, align 8
  %colormap27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 32
  %46 = load ptr, ptr %colormap27, align 8
  %cmp28 = icmp ne ptr %46, null
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else
  %47 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 24
  store i32 1, ptr %enable_external_quant31, align 8
  br label %if.end39

if.else32:                                        ; preds = %if.else
  %48 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 21
  %49 = load i32, ptr %two_pass_quantize, align 4
  %tobool33 = icmp ne i32 %49, 0
  br i1 %tobool33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else32
  %50 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 25
  store i32 1, ptr %enable_2pass_quant35, align 4
  br label %if.end38

if.else36:                                        ; preds = %if.else32
  %51 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 23
  store i32 1, ptr %enable_1pass_quant37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then30
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then23
  %52 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 23
  %53 = load i32, ptr %enable_1pass_quant41, align 4
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %54 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_1pass_quantizer(ptr noundef %54)
  %55 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 83
  %56 = load ptr, ptr %cquantize, align 8
  %57 = load ptr, ptr %master, align 8
  %quantizer_1pass44 = getelementptr inbounds %struct.my_decomp_master, ptr %57, i32 0, i32 3
  store ptr %56, ptr %quantizer_1pass44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  %58 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 25
  %59 = load i32, ptr %enable_2pass_quant46, align 4
  %tobool47 = icmp ne i32 %59, 0
  br i1 %tobool47, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end45
  %60 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 24
  %61 = load i32, ptr %enable_external_quant49, align 8
  %tobool50 = icmp ne i32 %61, 0
  br i1 %tobool50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %lor.lhs.false48, %if.end45
  %62 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_2pass_quantizer(ptr noundef %62)
  %63 = load ptr, ptr %cinfo.addr, align 8
  %cquantize52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 83
  %64 = load ptr, ptr %cquantize52, align 8
  %65 = load ptr, ptr %master, align 8
  %quantizer_2pass53 = getelementptr inbounds %struct.my_decomp_master, ptr %65, i32 0, i32 4
  store ptr %64, ptr %quantizer_2pass53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %lor.lhs.false48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end9
  %66 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 15
  %67 = load i32, ptr %raw_data_out56, align 4
  %tobool57 = icmp ne i32 %67, 0
  br i1 %tobool57, label %if.end65, label %if.then58

if.then58:                                        ; preds = %if.end55
  %68 = load ptr, ptr %master, align 8
  %using_merged_upsample59 = getelementptr inbounds %struct.my_decomp_master, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %using_merged_upsample59, align 4
  %tobool60 = icmp ne i32 %69, 0
  br i1 %tobool60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.then58
  %70 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_merged_upsampler(ptr noundef %70)
  br label %if.end63

if.else62:                                        ; preds = %if.then58
  %71 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_color_deconverter(ptr noundef %71)
  %72 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_upsampler(ptr noundef %72)
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then61
  %73 = load ptr, ptr %cinfo.addr, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 25
  %75 = load i32, ptr %enable_2pass_quant64, align 4
  call void @jinit_d_post_controller(ptr noundef %73, i32 noundef %75)
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end55
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_inverse_dct(ptr noundef %76)
  %77 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 45
  %78 = load i32, ptr %arith_code, align 4
  %tobool66 = icmp ne i32 %78, 0
  br i1 %tobool66, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.end65
  %79 = load ptr, ptr %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %80, i32 0, i32 5
  store i32 1, ptr %msg_code69, align 8
  %81 = load ptr, ptr %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %err70, align 8
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %error_exit71, align 8
  %84 = load ptr, ptr %cinfo.addr, align 8
  call void %83(ptr noundef %84)
  br label %if.end77

if.else72:                                        ; preds = %if.end65
  %85 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 44
  %86 = load i32, ptr %progressive_mode, align 8
  %tobool73 = icmp ne i32 %86, 0
  br i1 %tobool73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.else72
  %87 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_decoder(ptr noundef %87)
  br label %if.end76

if.else75:                                        ; preds = %if.else72
  %88 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_decoder(ptr noundef %88)
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then74
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then67
  %89 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 77
  %90 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %has_multiple_scans, align 8
  %tobool78 = icmp ne i32 %91, 0
  br i1 %tobool78, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end77
  %92 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 14
  %93 = load i32, ptr %buffered_image79, align 8
  %tobool80 = icmp ne i32 %93, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end77
  %94 = phi i1 [ true, %if.end77 ], [ %tobool80, %lor.rhs ]
  %lor.ext = zext i1 %94 to i32
  store i32 %lor.ext, ptr %use_c_buffer, align 4
  %95 = load ptr, ptr %cinfo.addr, align 8
  %96 = load i32, ptr %use_c_buffer, align 4
  call void @jinit_d_coef_controller(ptr noundef %95, i32 noundef %96)
  %97 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 15
  %98 = load i32, ptr %raw_data_out81, align 4
  %tobool82 = icmp ne i32 %98, 0
  br i1 %tobool82, label %if.end84, label %if.then83

if.then83:                                        ; preds = %lor.end
  %99 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_d_main_controller(ptr noundef %99, i32 noundef 0)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %lor.end
  %100 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %101, i32 0, i32 6
  %102 = load ptr, ptr %realize_virt_arrays, align 8
  %103 = load ptr, ptr %cinfo.addr, align 8
  call void %102(ptr noundef %103)
  %104 = load ptr, ptr %cinfo.addr, align 8
  %inputctl85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 77
  %105 = load ptr, ptr %inputctl85, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %105, i32 0, i32 2
  %106 = load ptr, ptr %start_input_pass, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  call void %106(ptr noundef %107)
  %108 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %progress, align 8
  %cmp86 = icmp ne ptr %109, null
  br i1 %cmp86, label %land.lhs.true, label %if.end112

land.lhs.true:                                    ; preds = %if.end84
  %110 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %110, i32 0, i32 14
  %111 = load i32, ptr %buffered_image88, align 8
  %tobool89 = icmp ne i32 %111, 0
  br i1 %tobool89, label %if.end112, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %land.lhs.true
  %112 = load ptr, ptr %cinfo.addr, align 8
  %inputctl91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %112, i32 0, i32 77
  %113 = load ptr, ptr %inputctl91, align 8
  %has_multiple_scans92 = getelementptr inbounds %struct.jpeg_input_controller, ptr %113, i32 0, i32 4
  %114 = load i32, ptr %has_multiple_scans92, align 8
  %tobool93 = icmp ne i32 %114, 0
  br i1 %tobool93, label %if.then94, label %if.end112

if.then94:                                        ; preds = %land.lhs.true90
  %115 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %115, i32 0, i32 44
  %116 = load i32, ptr %progressive_mode95, align 8
  %tobool96 = icmp ne i32 %116, 0
  br i1 %tobool96, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.then94
  %117 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %117, i32 0, i32 8
  %118 = load i32, ptr %num_components, align 8
  %mul98 = mul nsw i32 3, %118
  %add = add nsw i32 2, %mul98
  store i32 %add, ptr %nscans, align 4
  br label %if.end101

if.else99:                                        ; preds = %if.then94
  %119 = load ptr, ptr %cinfo.addr, align 8
  %num_components100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i32 0, i32 8
  %120 = load i32, ptr %num_components100, align 8
  store i32 %120, ptr %nscans, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then97
  %121 = load ptr, ptr %cinfo.addr, align 8
  %progress102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %121, i32 0, i32 2
  %122 = load ptr, ptr %progress102, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %122, i32 0, i32 1
  store i64 0, ptr %pass_counter, align 8
  %123 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 60
  %124 = load i32, ptr %total_iMCU_rows, align 8
  %conv103 = zext i32 %124 to i64
  %125 = load i32, ptr %nscans, align 4
  %conv104 = sext i32 %125 to i64
  %mul105 = mul nsw i64 %conv103, %conv104
  %126 = load ptr, ptr %cinfo.addr, align 8
  %progress106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %126, i32 0, i32 2
  %127 = load ptr, ptr %progress106, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %127, i32 0, i32 2
  store i64 %mul105, ptr %pass_limit, align 8
  %128 = load ptr, ptr %cinfo.addr, align 8
  %progress107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 2
  %129 = load ptr, ptr %progress107, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %129, i32 0, i32 3
  store i32 0, ptr %completed_passes, align 8
  %130 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant108 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %130, i32 0, i32 25
  %131 = load i32, ptr %enable_2pass_quant108, align 4
  %tobool109 = icmp ne i32 %131, 0
  %132 = zext i1 %tobool109 to i64
  %cond = select i1 %tobool109, i32 3, i32 2
  %133 = load ptr, ptr %cinfo.addr, align 8
  %progress110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %133, i32 0, i32 2
  %134 = load ptr, ptr %progress110, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %134, i32 0, i32 4
  store i32 %cond, ptr %total_passes, align 4
  %135 = load ptr, ptr %master, align 8
  %pass_number111 = getelementptr inbounds %struct.my_decomp_master, ptr %135, i32 0, i32 1
  %136 = load i32, ptr %pass_number111, align 8
  %inc = add nsw i32 %136, 1
  store i32 %inc, ptr %pass_number111, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end101, %land.lhs.true90, %land.lhs.true, %if.end84
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_range_limit_table(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 1408)
  store ptr %call, ptr %table, align 8
  %4 = load ptr, ptr %table, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 256
  store ptr %add.ptr, ptr %table, align 8
  %5 = load ptr, ptr %table, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 61
  store ptr %5, ptr %sample_range_limit, align 8
  %7 = load ptr, ptr %table, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %7, i64 -256
  %8 = load ptr, ptr %table, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 -256
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr2, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memset_chk(ptr noundef %add.ptr1, i32 noundef 0, i64 noundef 256, i64 noundef %9) #4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %10, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4
  %conv = trunc i32 %11 to i8
  %12 = load ptr, ptr %table, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %table, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %15, i64 128
  store ptr %add.ptr4, ptr %table, align 8
  store i32 128, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %for.end
  %16 = load i32, ptr %i, align 4
  %cmp6 = icmp slt i32 %16, 512
  br i1 %cmp6, label %for.body8, label %for.end13

for.body8:                                        ; preds = %for.cond5
  %17 = load ptr, ptr %table, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %17, i64 %idxprom9
  store i8 -1, ptr %arrayidx10, align 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body8
  %19 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond5, !llvm.loop !11

for.end13:                                        ; preds = %for.cond5
  %20 = load ptr, ptr %table, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 512
  %21 = load ptr, ptr %table, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %21, i64 512
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr15, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memset_chk(ptr noundef %add.ptr14, i32 noundef 0, i64 noundef 384, i64 noundef %22) #4
  %23 = load ptr, ptr %table, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %23, i64 896
  %24 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 61
  %25 = load ptr, ptr %sample_range_limit18, align 8
  %26 = load ptr, ptr %table, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %26, i64 896
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr19, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %add.ptr17, ptr noundef %25, i64 noundef 128, i64 noundef %27) #4
  ret void
}

declare void @jinit_1pass_quantizer(ptr noundef) #1

declare void @jinit_2pass_quantizer(ptr noundef) #1

declare void @jinit_merged_upsampler(ptr noundef) #1

declare void @jinit_color_deconverter(ptr noundef) #1

declare void @jinit_upsampler(ptr noundef) #1

declare void @jinit_d_post_controller(ptr noundef, i32 noundef) #1

declare void @jinit_inverse_dct(ptr noundef) #1

declare void @jinit_phuff_decoder(ptr noundef) #1

declare void @jinit_huff_decoder(ptr noundef) #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) #1

declare void @jinit_d_main_controller(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

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
