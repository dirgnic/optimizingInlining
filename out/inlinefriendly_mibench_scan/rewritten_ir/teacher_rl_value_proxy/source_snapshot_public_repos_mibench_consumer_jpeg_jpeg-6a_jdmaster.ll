; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdmaster.prepared.ll'
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
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_calc_output_dimensions(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %ssize = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 202
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
  call void %7(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 11
  %9 = load i32, ptr %scale_num, align 4
  %mul = shl i32 %9, 3
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %scale_denom, align 8
  %cmp4.not = icmp ugt i32 %mul, %10
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %image_width, align 8
  %conv = zext i32 %12 to i64
  %call = call i64 @jdiv_round_up(i64 noundef %conv, i64 noundef 8) #4
  %conv6 = trunc i64 %call to i32
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 26
  store i32 %conv6, ptr %output_width, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 7
  %14 = load i32, ptr %image_height, align 4
  %conv7 = zext i32 %14 to i64
  %call8 = call i64 @jdiv_round_up(i64 noundef %conv7, i64 noundef 8) #4
  %conv9 = trunc i64 %call8 to i32
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 27
  store i32 %conv9, ptr %output_height, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 59
  store i32 1, ptr %min_DCT_scaled_size, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %scale_num10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 11
  %17 = load i32, ptr %scale_num10, align 4
  %mul11 = shl i32 %17, 2
  %scale_denom12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 12
  %18 = load i32, ptr %scale_denom12, align 8
  %cmp13.not = icmp ugt i32 %mul11, %18
  br i1 %cmp13.not, label %if.else27, label %if.then15

if.then15:                                        ; preds = %if.else
  %19 = load ptr, ptr %cinfo.addr, align 8
  %image_width16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 6
  %20 = load i32, ptr %image_width16, align 8
  %conv17 = zext i32 %20 to i64
  %call18 = call i64 @jdiv_round_up(i64 noundef %conv17, i64 noundef 4) #4
  %conv19 = trunc i64 %call18 to i32
  %output_width20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 26
  store i32 %conv19, ptr %output_width20, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %image_height21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 7
  %22 = load i32, ptr %image_height21, align 4
  %conv22 = zext i32 %22 to i64
  %call23 = call i64 @jdiv_round_up(i64 noundef %conv22, i64 noundef 4) #4
  %conv24 = trunc i64 %call23 to i32
  %output_height25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 27
  store i32 %conv24, ptr %output_height25, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 59
  store i32 2, ptr %min_DCT_scaled_size26, align 4
  br label %if.end53

if.else27:                                        ; preds = %if.else
  %24 = load ptr, ptr %cinfo.addr, align 8
  %scale_num28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 11
  %25 = load i32, ptr %scale_num28, align 4
  %mul29 = shl i32 %25, 1
  %scale_denom30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 12
  %26 = load i32, ptr %scale_denom30, align 8
  %cmp31.not = icmp ugt i32 %mul29, %26
  br i1 %cmp31.not, label %if.else45, label %if.then33

if.then33:                                        ; preds = %if.else27
  %27 = load ptr, ptr %cinfo.addr, align 8
  %image_width34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 6
  %28 = load i32, ptr %image_width34, align 8
  %conv35 = zext i32 %28 to i64
  %call36 = call i64 @jdiv_round_up(i64 noundef %conv35, i64 noundef 2) #4
  %conv37 = trunc i64 %call36 to i32
  %output_width38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 26
  store i32 %conv37, ptr %output_width38, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %image_height39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 7
  %30 = load i32, ptr %image_height39, align 4
  %conv40 = zext i32 %30 to i64
  %call41 = call i64 @jdiv_round_up(i64 noundef %conv40, i64 noundef 2) #4
  %conv42 = trunc i64 %call41 to i32
  %output_height43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 27
  store i32 %conv42, ptr %output_height43, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 59
  store i32 4, ptr %min_DCT_scaled_size44, align 4
  br label %if.end53

if.else45:                                        ; preds = %if.else27
  %32 = load ptr, ptr %cinfo.addr, align 8
  %image_width46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 6
  %33 = load i32, ptr %image_width46, align 8
  %output_width47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 26
  store i32 %33, ptr %output_width47, align 8
  %image_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 7
  %34 = load i32, ptr %image_height48, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %output_height49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 27
  store i32 %34, ptr %output_height49, align 4
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 59
  store i32 8, ptr %min_DCT_scaled_size50, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then15, %if.else45, %if.then33, %if.then5
  store i32 0, ptr %ci, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 43
  %37 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %while.end, %if.end53
  %storemerge = phi ptr [ %37, %if.end53 ], [ %incdec.ptr, %while.end ]
  store ptr %storemerge, ptr %compptr, align 8
  %38 = load i32, ptr %ci, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 8
  %40 = load i32, ptr %num_components, align 8
  %cmp54 = icmp slt i32 %38, %40
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i64 0, i32 59
  %42 = load i32, ptr %min_DCT_scaled_size56, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %storemerge2 = phi i32 [ %42, %for.body ], [ %mul71, %while.body ]
  store i32 %storemerge2, ptr %ssize, align 4
  %cmp57 = icmp slt i32 %storemerge2, 8
  br i1 %cmp57, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %43 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 2
  %44 = load i32, ptr %h_samp_factor, align 8
  %45 = load i32, ptr %ssize, align 4
  %mul59 = mul nsw i32 %44, %45
  %mul60 = shl nsw i32 %mul59, 1
  %46 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i64 0, i32 57
  %47 = load i32, ptr %max_h_samp_factor, align 4
  %min_DCT_scaled_size61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i64 0, i32 59
  %48 = load i32, ptr %min_DCT_scaled_size61, align 4
  %mul62 = mul nsw i32 %47, %48
  %cmp63.not = icmp sgt i32 %mul60, %mul62
  br i1 %cmp63.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %49 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 3
  %50 = load i32, ptr %v_samp_factor, align 4
  %51 = load i32, ptr %ssize, align 4
  %mul65 = mul nsw i32 %50, %51
  %mul66 = shl nsw i32 %mul65, 1
  %52 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i64 0, i32 58
  %53 = load i32, ptr %max_v_samp_factor, align 8
  %min_DCT_scaled_size67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i64 0, i32 59
  %54 = load i32, ptr %min_DCT_scaled_size67, align 4
  %mul68 = mul nsw i32 %53, %54
  %cmp69 = icmp sle i32 %mul66, %mul68
  br i1 %cmp69, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %55 = load i32, ptr %ssize, align 4
  %mul71 = shl nsw i32 %55, 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %56 = load i32, ptr %ssize, align 4
  %57 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 9
  store i32 %56, ptr %DCT_scaled_size, align 4
  %58 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %ci, align 4
  %59 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i64 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ci, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %comp_info72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 43
  %61 = load ptr, ptr %comp_info72, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.body77, %for.end
  %storemerge1 = phi ptr [ %61, %for.end ], [ %incdec.ptr104, %for.body77 ]
  store ptr %storemerge1, ptr %compptr, align 8
  %62 = load i32, ptr %ci, align 4
  %63 = load ptr, ptr %cinfo.addr, align 8
  %num_components74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i64 0, i32 8
  %64 = load i32, ptr %num_components74, align 8
  %cmp75 = icmp slt i32 %62, %64
  br i1 %cmp75, label %for.body77, label %for.end105

for.body77:                                       ; preds = %for.cond73
  %65 = load ptr, ptr %cinfo.addr, align 8
  %image_width78 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i64 0, i32 6
  %66 = load i32, ptr %image_width78, align 8
  %conv79 = zext i32 %66 to i64
  %67 = load ptr, ptr %compptr, align 8
  %h_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 2
  %68 = load i32, ptr %h_samp_factor80, align 8
  %DCT_scaled_size81 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, i32 9
  %69 = load i32, ptr %DCT_scaled_size81, align 4
  %mul82 = mul nsw i32 %68, %69
  %conv83 = sext i32 %mul82 to i64
  %mul84 = mul nsw i64 %conv79, %conv83
  %70 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i64 0, i32 57
  %71 = load i32, ptr %max_h_samp_factor85, align 4
  %mul86 = shl nsw i32 %71, 3
  %conv87 = sext i32 %mul86 to i64
  %call88 = call i64 @jdiv_round_up(i64 noundef %mul84, i64 noundef %conv87) #4
  %conv89 = trunc i64 %call88 to i32
  %72 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i64 0, i32 10
  store i32 %conv89, ptr %downsampled_width, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %image_height90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i64 0, i32 7
  %74 = load i32, ptr %image_height90, align 4
  %conv91 = zext i32 %74 to i64
  %75 = load ptr, ptr %compptr, align 8
  %v_samp_factor92 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 3
  %76 = load i32, ptr %v_samp_factor92, align 4
  %DCT_scaled_size93 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 9
  %77 = load i32, ptr %DCT_scaled_size93, align 4
  %mul94 = mul nsw i32 %76, %77
  %conv95 = sext i32 %mul94 to i64
  %mul96 = mul nsw i64 %conv91, %conv95
  %78 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %78, i64 0, i32 58
  %79 = load i32, ptr %max_v_samp_factor97, align 8
  %mul98 = shl nsw i32 %79, 3
  %conv99 = sext i32 %mul98 to i64
  %call100 = call i64 @jdiv_round_up(i64 noundef %mul96, i64 noundef %conv99) #4
  %conv101 = trunc i64 %call100 to i32
  %80 = load ptr, ptr %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, ptr %80, i64 0, i32 11
  store i32 %conv101, ptr %downsampled_height, align 4
  %81 = load i32, ptr %ci, align 4
  %inc103 = add nsw i32 %81, 1
  store i32 %inc103, ptr %ci, align 4
  %82 = load ptr, ptr %compptr, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i64 1
  br label %for.cond73, !llvm.loop !9

for.end105:                                       ; preds = %for.cond73
  %83 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i64 0, i32 10
  %84 = load i32, ptr %out_color_space, align 8
  switch i32 %84, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb106
    i32 3, label %sw.bb106
    i32 4, label %sw.bb108
    i32 5, label %sw.bb108
  ]

sw.bb:                                            ; preds = %for.end105
  %85 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i64 0, i32 28
  store i32 1, ptr %out_color_components, align 8
  br label %sw.epilog

sw.bb106:                                         ; preds = %for.end105, %for.end105
  %86 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i64 0, i32 28
  store i32 3, ptr %out_color_components107, align 8
  br label %sw.epilog

sw.bb108:                                         ; preds = %for.end105, %for.end105
  %87 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components109 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i64 0, i32 28
  store i32 4, ptr %out_color_components109, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end105
  %88 = load ptr, ptr %cinfo.addr, align 8
  %num_components110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i64 0, i32 8
  %89 = load i32, ptr %num_components110, align 8
  %out_color_components111 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i64 0, i32 28
  store i32 %89, ptr %out_color_components111, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb108, %sw.bb106, %sw.bb
  %90 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i64 0, i32 19
  %91 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %91, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %92 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i64 0, i32 28
  %93 = load i32, ptr %out_color_components112, align 8
  br label %cond.end

cond.end:                                         ; preds = %sw.epilog, %cond.false
  %cond = phi i32 [ %93, %cond.false ], [ 1, %sw.epilog ]
  %94 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i64 0, i32 29
  store i32 %cond, ptr %output_components, align 4
  %call113 = call i32 @use_merged_upsample(ptr noundef %94)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.else117, label %if.then115

if.then115:                                       ; preds = %cond.end
  %95 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %95, i64 0, i32 58
  %96 = load i32, ptr %max_v_samp_factor116, align 8
  %rec_outbuf_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %95, i64 0, i32 30
  store i32 %96, ptr %rec_outbuf_height, align 8
  br label %if.end119

if.else117:                                       ; preds = %cond.end
  %97 = load ptr, ptr %cinfo.addr, align 8
  %rec_outbuf_height118 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i64 0, i32 30
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
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 17
  %0 = load i32, ptr %do_fancy_upsampling, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 56
  %2 = load i32, ptr %CCIR601_sampling, align 8
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 9
  %4 = load i32, ptr %jpeg_color_space, align 4
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %lor.lhs.false2, label %if.then8

lor.lhs.false2:                                   ; preds = %if.end
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp3.not = icmp eq i32 %6, 3
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.then8

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 10
  %8 = load i32, ptr %out_color_space, align 8
  %cmp5.not = icmp eq i32 %8, 2
  br i1 %cmp5.not, label %lor.lhs.false6, label %if.then8

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 28
  %10 = load i32, ptr %out_color_components, align 8
  %cmp7.not = icmp eq i32 %10, 3
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %11 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 43
  %12 = load ptr, ptr %comp_info, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 2
  %13 = load i32, ptr %h_samp_factor, align 8
  %cmp10.not = icmp eq i32 %13, 2
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then35

lor.lhs.false11:                                  ; preds = %if.end9
  %14 = load ptr, ptr %cinfo.addr, align 8
  %comp_info12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 43
  %15 = load ptr, ptr %comp_info12, align 8
  %h_samp_factor14 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 1, i32 2
  %16 = load i32, ptr %h_samp_factor14, align 8
  %cmp15.not = icmp eq i32 %16, 1
  br i1 %cmp15.not, label %lor.lhs.false16, label %if.then35

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 43
  %18 = load ptr, ptr %comp_info17, align 8
  %h_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 2, i32 2
  %19 = load i32, ptr %h_samp_factor19, align 8
  %cmp20.not = icmp eq i32 %19, 1
  br i1 %cmp20.not, label %lor.lhs.false21, label %if.then35

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %20 = load ptr, ptr %cinfo.addr, align 8
  %comp_info22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 43
  %21 = load ptr, ptr %comp_info22, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 3
  %22 = load i32, ptr %v_samp_factor, align 4
  %cmp24 = icmp sgt i32 %22, 2
  br i1 %cmp24, label %if.then35, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %23 = load ptr, ptr %cinfo.addr, align 8
  %comp_info26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 43
  %24 = load ptr, ptr %comp_info26, align 8
  %v_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 1, i32 3
  %25 = load i32, ptr %v_samp_factor28, align 4
  %cmp29.not = icmp eq i32 %25, 1
  br i1 %cmp29.not, label %lor.lhs.false30, label %if.then35

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %26 = load ptr, ptr %cinfo.addr, align 8
  %comp_info31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 43
  %27 = load ptr, ptr %comp_info31, align 8
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 2, i32 3
  %28 = load i32, ptr %v_samp_factor33, align 4
  %cmp34.not = icmp eq i32 %28, 1
  br i1 %cmp34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false30, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false16, %lor.lhs.false11, %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false30
  %29 = load ptr, ptr %cinfo.addr, align 8
  %comp_info37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 43
  %30 = load ptr, ptr %comp_info37, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 9
  %31 = load i32, ptr %DCT_scaled_size, align 4
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 59
  %32 = load i32, ptr %min_DCT_scaled_size, align 4
  %cmp39.not = icmp eq i32 %31, %32
  br i1 %cmp39.not, label %lor.lhs.false40, label %if.then52

lor.lhs.false40:                                  ; preds = %if.end36
  %33 = load ptr, ptr %cinfo.addr, align 8
  %comp_info41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 43
  %34 = load ptr, ptr %comp_info41, align 8
  %DCT_scaled_size43 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 1, i32 9
  %35 = load i32, ptr %DCT_scaled_size43, align 4
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 59
  %36 = load i32, ptr %min_DCT_scaled_size44, align 4
  %cmp45.not = icmp eq i32 %35, %36
  br i1 %cmp45.not, label %lor.lhs.false46, label %if.then52

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %37 = load ptr, ptr %cinfo.addr, align 8
  %comp_info47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 43
  %38 = load ptr, ptr %comp_info47, align 8
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 2, i32 9
  %39 = load i32, ptr %DCT_scaled_size49, align 4
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 59
  %40 = load i32, ptr %min_DCT_scaled_size50, align 4
  %cmp51.not = icmp eq i32 %39, %40
  br i1 %cmp51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false46, %lor.lhs.false40, %if.end36
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false46
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then52, %if.then35, %if.then8, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_new_colormap(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 73
  %0 = load ptr, ptr %master1, align 8
  store ptr %0, ptr %master, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %1, 207
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %global_state2, align 4
  %5 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 19
  %10 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 24
  %12 = load i32, ptr %enable_external_quant, align 8
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 32
  %14 = load ptr, ptr %colormap, align 8
  %cmp7.not = icmp eq ptr %14, null
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  %15 = load ptr, ptr %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, ptr %15, i64 0, i32 4
  %16 = load ptr, ptr %quantizer_2pass, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 83
  store ptr %16, ptr %cquantize, align 8
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %new_color_map, align 8
  call void %18(ptr noundef %17) #4
  %19 = load ptr, ptr %master, align 8
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %19, i64 0, i32 2
  store i32 0, ptr %is_dummy_pass, align 8
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 45, ptr %msg_code11, align 8
  %22 = load ptr, ptr %20, align 8
  %23 = load ptr, ptr %22, align 8
  call void %23(ptr noundef nonnull %20) #4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_master_decompress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 48) #4
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 73
  store ptr %call, ptr %master1, align 8
  store ptr @prepare_for_output_pass, ptr %call, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %call, i64 0, i32 1
  store ptr @finish_output_pass, ptr %finish_output_pass, align 8
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %call, i64 0, i32 2
  store i32 0, ptr %is_dummy_pass, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @master_selection(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_for_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 73
  %0 = load ptr, ptr %master1, align 8
  store ptr %0, ptr %master, align 8
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %0, i64 0, i32 2
  %1 = load i32, ptr %is_dummy_pass, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %master, align 8
  %is_dummy_pass3 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %2, i64 0, i32 2
  store i32 0, ptr %is_dummy_pass3, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 83
  %4 = load ptr, ptr %cquantize, align 8
  %5 = load ptr, ptr %4, align 8
  call void %5(ptr noundef %3, i32 noundef 0) #4
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 76
  %6 = load ptr, ptr %post, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8, i32 noundef 2) #4
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 74
  %9 = load ptr, ptr %main, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef %8, i32 noundef 2) #4
  br label %if.end47

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 19
  %12 = load i32, ptr %quantize_colors, align 4
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 32
  %14 = load ptr, ptr %colormap, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then7, label %if.end22

if.then7:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 21
  %16 = load i32, ptr %two_pass_quantize, align 4
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %if.else15, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then7
  %17 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 25
  %18 = load i32, ptr %enable_2pass_quant, align 4
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  %19 = load ptr, ptr %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, ptr %19, i64 0, i32 4
  %20 = load ptr, ptr %quantizer_2pass, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %cquantize12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 83
  store ptr %20, ptr %cquantize12, align 8
  %is_dummy_pass14 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %19, i64 0, i32 2
  store i32 1, ptr %is_dummy_pass14, align 8
  br label %if.end22

if.else15:                                        ; preds = %land.lhs.true9, %if.then7
  %22 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 23
  %23 = load i32, ptr %enable_1pass_quant, align 4
  %tobool16.not = icmp eq i32 %23, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else15
  %24 = load ptr, ptr %master, align 8
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, ptr %24, i64 0, i32 3
  %25 = load ptr, ptr %quantizer_1pass, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %cquantize18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 83
  store ptr %25, ptr %cquantize18, align 8
  br label %if.end22

if.else19:                                        ; preds = %if.else15
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 45, ptr %msg_code, align 8
  %29 = load ptr, ptr %27, align 8
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull %27) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then11, %if.else19, %if.then17, %land.lhs.true, %if.else
  %31 = load ptr, ptr %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 80
  %32 = load ptr, ptr %idct, align 8
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef %31) #4
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 75
  %34 = load ptr, ptr %coef, align 8
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %34, i64 0, i32 2
  %35 = load ptr, ptr %start_output_pass, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  call void %35(ptr noundef %36) #4
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 15
  %37 = load i32, ptr %raw_data_out, align 4
  %tobool24.not = icmp eq i32 %37, 0
  br i1 %tobool24.not, label %if.then25, label %if.end47

if.then25:                                        ; preds = %if.end22
  %38 = load ptr, ptr %master, align 8
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, ptr %38, i64 0, i32 2
  %39 = load i32, ptr %using_merged_upsample, align 4
  %tobool26.not = icmp eq i32 %39, 0
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then25
  %40 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i64 0, i32 82
  %41 = load ptr, ptr %cconvert, align 8
  %42 = load ptr, ptr %41, align 8
  call void %42(ptr noundef %40) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25
  %43 = load ptr, ptr %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i64 0, i32 81
  %44 = load ptr, ptr %upsample, align 8
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef %43) #4
  %quantize_colors31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i64 0, i32 19
  %46 = load i32, ptr %quantize_colors31, align 4
  %tobool32.not = icmp eq i32 %46, 0
  br i1 %tobool32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end29
  %47 = load ptr, ptr %cinfo.addr, align 8
  %cquantize34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i64 0, i32 83
  %48 = load ptr, ptr %cquantize34, align 8
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %master, align 8
  %is_dummy_pass37 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %50, i64 0, i32 2
  %51 = load i32, ptr %is_dummy_pass37, align 8
  call void %49(ptr noundef %47, i32 noundef %51) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end29
  %52 = load ptr, ptr %cinfo.addr, align 8
  %post39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i64 0, i32 76
  %53 = load ptr, ptr %post39, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %master, align 8
  %is_dummy_pass42 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %55, i64 0, i32 2
  %56 = load i32, ptr %is_dummy_pass42, align 8
  %tobool43.not = icmp eq i32 %56, 0
  %cond = select i1 %tobool43.not, i32 0, i32 3
  call void %54(ptr noundef %52, i32 noundef %cond) #4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %main44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i64 0, i32 74
  %58 = load ptr, ptr %main44, align 8
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef %57, i32 noundef 0) #4
  br label %if.end47

if.end47:                                         ; preds = %if.end22, %if.end38, %if.then
  %60 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 2
  %61 = load ptr, ptr %progress, align 8
  %cmp48.not = icmp eq ptr %61, null
  br i1 %cmp48.not, label %if.end68, label %if.then49

if.then49:                                        ; preds = %if.end47
  %62 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, ptr %62, i64 0, i32 1
  %63 = load i32, ptr %pass_number, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  %progress50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 2
  %65 = load ptr, ptr %progress50, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %65, i64 0, i32 3
  store i32 %63, ptr %completed_passes, align 8
  %66 = load ptr, ptr %master, align 8
  %pass_number51 = getelementptr inbounds %struct.my_decomp_master, ptr %66, i64 0, i32 1
  %67 = load i32, ptr %pass_number51, align 8
  %is_dummy_pass53 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %is_dummy_pass53, align 8
  %tobool54.not = icmp eq i32 %68, 0
  %cond55 = select i1 %tobool54.not, i32 1, i32 2
  %add = add nsw i32 %67, %cond55
  %69 = load ptr, ptr %cinfo.addr, align 8
  %progress56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 2
  %70 = load ptr, ptr %progress56, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %70, i64 0, i32 4
  store i32 %add, ptr %total_passes, align 4
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 14
  %71 = load i32, ptr %buffered_image, align 8
  %tobool57.not = icmp eq i32 %71, 0
  br i1 %tobool57.not, label %if.end68, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.then49
  %72 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i64 0, i32 77
  %73 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %73, i64 0, i32 5
  %74 = load i32, ptr %eoi_reached, align 4
  %tobool59.not = icmp eq i32 %74, 0
  br i1 %tobool59.not, label %if.then60, label %if.end68

if.then60:                                        ; preds = %land.lhs.true58
  %75 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 25
  %76 = load i32, ptr %enable_2pass_quant61, align 4
  %tobool62.not = icmp eq i32 %76, 0
  %cond63 = select i1 %tobool62.not, i32 1, i32 2
  %progress64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %progress64, align 8
  %total_passes65 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %77, i64 0, i32 4
  %78 = load i32, ptr %total_passes65, align 4
  %add66 = add nsw i32 %78, %cond63
  store i32 %add66, ptr %total_passes65, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then49, %land.lhs.true58, %if.then60, %if.end47
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 73
  %0 = load ptr, ptr %master1, align 8
  store ptr %0, ptr %master, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 19
  %1 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 83
  %3 = load ptr, ptr %cquantize, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %finish_pass, align 8
  call void %4(ptr noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %pass_number, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %pass_number, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @master_selection(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %master = alloca ptr, align 8
  %nscans = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 73
  %0 = load ptr, ptr %master1, align 8
  store ptr %0, ptr %master, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %cinfo)
  call void @prepare_range_limit_table(ptr noundef %cinfo)
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %1 = load i32, ptr %output_width, align 8
  %conv = zext i32 %1 to i64
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 28
  %3 = load i32, ptr %out_color_components, align 8
  %conv2 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv2
  %4 = icmp ult i64 %mul, 4294967296
  br i1 %4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 69, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, ptr %9, i64 0, i32 1
  store i32 0, ptr %pass_number, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @use_merged_upsample(ptr noundef %10)
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, ptr %9, i64 0, i32 2
  store i32 %call, ptr %using_merged_upsample, align 4
  %11 = load ptr, ptr %master, align 8
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, ptr %11, i64 0, i32 3
  store ptr null, ptr %quantizer_1pass, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, ptr %11, i64 0, i32 4
  store ptr null, ptr %quantizer_2pass, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 19
  %13 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 14
  %15 = load i32, ptr %buffered_image, align 8
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 23
  store i32 0, ptr %enable_1pass_quant, align 4
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 24
  store i32 0, ptr %enable_external_quant, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 25
  store i32 0, ptr %enable_2pass_quant, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %17 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 19
  %18 = load i32, ptr %quantize_colors10, align 4
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %if.end55, label %if.then12

if.then12:                                        ; preds = %if.end9
  %19 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 15
  %20 = load i32, ptr %raw_data_out, align 4
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.then12
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 46, ptr %msg_code16, align 8
  %23 = load ptr, ptr %21, align 8
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr noundef nonnull %21) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then12
  %25 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 28
  %26 = load i32, ptr %out_color_components20, align 8
  %cmp21.not = icmp eq i32 %26, 3
  br i1 %cmp21.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  %27 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 23
  store i32 1, ptr %enable_1pass_quant24, align 4
  %enable_external_quant25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 24
  store i32 0, ptr %enable_external_quant25, align 8
  %enable_2pass_quant26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 25
  store i32 0, ptr %enable_2pass_quant26, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 32
  store ptr null, ptr %colormap, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end19
  %29 = load ptr, ptr %cinfo.addr, align 8
  %colormap27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 32
  %30 = load ptr, ptr %colormap27, align 8
  %cmp28.not = icmp eq ptr %30, null
  br i1 %cmp28.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.else
  %31 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 24
  store i32 1, ptr %enable_external_quant31, align 8
  br label %if.end40

if.else32:                                        ; preds = %if.else
  %32 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 21
  %33 = load i32, ptr %two_pass_quantize, align 4
  %tobool33.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.else32
  %34 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 25
  store i32 1, ptr %enable_2pass_quant35, align 4
  br label %if.end40

if.else36:                                        ; preds = %if.else32
  %35 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 23
  store i32 1, ptr %enable_1pass_quant37, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %if.else36, %if.then34, %if.then23
  %36 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 23
  %37 = load i32, ptr %enable_1pass_quant41, align 4
  %tobool42.not = icmp eq i32 %37, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end40
  %38 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_1pass_quantizer(ptr noundef %38) #4
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i64 0, i32 83
  %39 = load ptr, ptr %cquantize, align 8
  %40 = load ptr, ptr %master, align 8
  %quantizer_1pass44 = getelementptr inbounds %struct.my_decomp_master, ptr %40, i64 0, i32 3
  store ptr %39, ptr %quantizer_1pass44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  %41 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i64 0, i32 25
  %42 = load i32, ptr %enable_2pass_quant46, align 4
  %tobool47.not = icmp eq i32 %42, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %if.then51

lor.lhs.false48:                                  ; preds = %if.end45
  %43 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i64 0, i32 24
  %44 = load i32, ptr %enable_external_quant49, align 8
  %tobool50.not = icmp eq i32 %44, 0
  br i1 %tobool50.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false48, %if.end45
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_2pass_quantizer(ptr noundef %45) #4
  %cquantize52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 83
  %46 = load ptr, ptr %cquantize52, align 8
  %47 = load ptr, ptr %master, align 8
  %quantizer_2pass53 = getelementptr inbounds %struct.my_decomp_master, ptr %47, i64 0, i32 4
  store ptr %46, ptr %quantizer_2pass53, align 8
  br label %if.end55

if.end55:                                         ; preds = %lor.lhs.false48, %if.then51, %if.end9
  %48 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 15
  %49 = load i32, ptr %raw_data_out56, align 4
  %tobool57.not = icmp eq i32 %49, 0
  br i1 %tobool57.not, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.end55
  %50 = load ptr, ptr %master, align 8
  %using_merged_upsample59 = getelementptr inbounds %struct.my_decomp_master, ptr %50, i64 0, i32 2
  %51 = load i32, ptr %using_merged_upsample59, align 4
  %tobool60.not = icmp eq i32 %51, 0
  br i1 %tobool60.not, label %if.else62, label %if.then61

if.then61:                                        ; preds = %if.then58
  %52 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_merged_upsampler(ptr noundef %52) #4
  br label %if.end63

if.else62:                                        ; preds = %if.then58
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_color_deconverter(ptr noundef %53) #4
  call void @jinit_upsampler(ptr noundef %53) #4
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then61
  %54 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i64 0, i32 25
  %55 = load i32, ptr %enable_2pass_quant64, align 4
  call void @jinit_d_post_controller(ptr noundef %54, i32 noundef %55) #4
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end55
  %56 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_inverse_dct(ptr noundef %56) #4
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i64 0, i32 45
  %57 = load i32, ptr %arith_code, align 4
  %tobool66.not = icmp eq i32 %57, 0
  br i1 %tobool66.not, label %if.else72, label %if.then67

if.then67:                                        ; preds = %if.end65
  %58 = load ptr, ptr %cinfo.addr, align 8
  %59 = load ptr, ptr %58, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 5
  store i32 1, ptr %msg_code69, align 8
  %60 = load ptr, ptr %58, align 8
  %61 = load ptr, ptr %60, align 8
  call void %61(ptr noundef nonnull %58) #4
  br label %if.end77

if.else72:                                        ; preds = %if.end65
  %62 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 44
  %63 = load i32, ptr %progressive_mode, align 8
  %tobool73.not = icmp eq i32 %63, 0
  br i1 %tobool73.not, label %if.else75, label %if.then74

if.then74:                                        ; preds = %if.else72
  %64 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_decoder(ptr noundef %64) #4
  br label %if.end77

if.else75:                                        ; preds = %if.else72
  %65 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_decoder(ptr noundef %65) #4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.else75, %if.then67
  %66 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 77
  %67 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %67, i64 0, i32 4
  %68 = load i32, ptr %has_multiple_scans, align 8
  %tobool78.not = icmp eq i32 %68, 0
  br i1 %tobool78.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end77
  %69 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 14
  %70 = load i32, ptr %buffered_image79, align 8
  %tobool80 = icmp ne i32 %70, 0
  %phi.cast = zext i1 %tobool80 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end77
  %71 = phi i32 [ 1, %if.end77 ], [ %phi.cast, %lor.rhs ]
  %72 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_d_coef_controller(ptr noundef %72, i32 noundef %71) #4
  %raw_data_out81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i64 0, i32 15
  %73 = load i32, ptr %raw_data_out81, align 4
  %tobool82.not = icmp eq i32 %73, 0
  br i1 %tobool82.not, label %if.then83, label %if.end84

if.then83:                                        ; preds = %lor.end
  %74 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_d_main_controller(ptr noundef %74, i32 noundef 0) #4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %lor.end
  %75 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 1
  %76 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %76, i64 0, i32 6
  %77 = load ptr, ptr %realize_virt_arrays, align 8
  call void %77(ptr noundef %75) #4
  %inputctl85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 77
  %78 = load ptr, ptr %inputctl85, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %78, i64 0, i32 2
  %79 = load ptr, ptr %start_input_pass, align 8
  %80 = load ptr, ptr %cinfo.addr, align 8
  call void %79(ptr noundef %80) #4
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i64 0, i32 2
  %81 = load ptr, ptr %progress, align 8
  %cmp86.not = icmp eq ptr %81, null
  br i1 %cmp86.not, label %if.end112, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end84
  %82 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 14
  %83 = load i32, ptr %buffered_image88, align 8
  %tobool89.not = icmp eq i32 %83, 0
  br i1 %tobool89.not, label %land.lhs.true90, label %if.end112

land.lhs.true90:                                  ; preds = %land.lhs.true
  %84 = load ptr, ptr %cinfo.addr, align 8
  %inputctl91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %84, i64 0, i32 77
  %85 = load ptr, ptr %inputctl91, align 8
  %has_multiple_scans92 = getelementptr inbounds %struct.jpeg_input_controller, ptr %85, i64 0, i32 4
  %86 = load i32, ptr %has_multiple_scans92, align 8
  %tobool93.not = icmp eq i32 %86, 0
  br i1 %tobool93.not, label %if.end112, label %if.then94

if.then94:                                        ; preds = %land.lhs.true90
  %87 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i64 0, i32 44
  %88 = load i32, ptr %progressive_mode95, align 8
  %tobool96.not = icmp eq i32 %88, 0
  br i1 %tobool96.not, label %if.else99, label %if.then97

if.then97:                                        ; preds = %if.then94
  %89 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i64 0, i32 8
  %90 = load i32, ptr %num_components, align 8
  %mul98 = mul nsw i32 %90, 3
  %add = add nsw i32 %mul98, 2
  br label %if.end101

if.else99:                                        ; preds = %if.then94
  %91 = load ptr, ptr %cinfo.addr, align 8
  %num_components100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i64 0, i32 8
  %92 = load i32, ptr %num_components100, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then97
  %storemerge = phi i32 [ %92, %if.else99 ], [ %add, %if.then97 ]
  store i32 %storemerge, ptr %nscans, align 4
  %93 = load ptr, ptr %cinfo.addr, align 8
  %progress102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i64 0, i32 2
  %94 = load ptr, ptr %progress102, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %94, i64 0, i32 1
  store i64 0, ptr %pass_counter, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i64 0, i32 60
  %95 = load i32, ptr %total_iMCU_rows, align 8
  %conv103 = zext i32 %95 to i64
  %96 = load i32, ptr %nscans, align 4
  %conv104 = sext i32 %96 to i64
  %mul105 = mul nsw i64 %conv103, %conv104
  %97 = load ptr, ptr %cinfo.addr, align 8
  %progress106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i64 0, i32 2
  %98 = load ptr, ptr %progress106, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %98, i64 0, i32 2
  store i64 %mul105, ptr %pass_limit, align 8
  %progress107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %progress107, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %99, i64 0, i32 3
  store i32 0, ptr %completed_passes, align 8
  %100 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant108 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i64 0, i32 25
  %101 = load i32, ptr %enable_2pass_quant108, align 4
  %tobool109.not = icmp eq i32 %101, 0
  %cond = select i1 %tobool109.not, i32 2, i32 3
  %progress110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %progress110, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %102, i64 0, i32 4
  store i32 %cond, ptr %total_passes, align 4
  %103 = load ptr, ptr %master, align 8
  %pass_number111 = getelementptr inbounds %struct.my_decomp_master, ptr %103, i64 0, i32 1
  %104 = load i32, ptr %pass_number111, align 8
  %inc = add nsw i32 %104, 1
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
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 1408) #4
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 256
  store ptr %add.ptr, ptr %table, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 61
  store ptr %add.ptr, ptr %sample_range_limit, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %call, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memset_chk(ptr noundef %call, i32 noundef 0, i64 noundef 256, i64 noundef %3) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %conv = trunc i32 %4 to i8
  %5 = load ptr, ptr %table, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %table, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %7, i64 128
  store ptr %add.ptr4, ptr %table, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.body8, %for.end
  %storemerge1 = phi i32 [ 128, %for.end ], [ %inc12, %for.body8 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp6 = icmp slt i32 %storemerge1, 512
  br i1 %cmp6, label %for.body8, label %for.end13

for.body8:                                        ; preds = %for.cond5
  %8 = load ptr, ptr %table, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 %idxprom9
  store i8 -1, ptr %arrayidx10, align 1
  %10 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %10, 1
  br label %for.cond5, !llvm.loop !11

for.end13:                                        ; preds = %for.cond5
  %11 = load ptr, ptr %table, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %11, i64 512
  %add.ptr15 = getelementptr inbounds i8, ptr %11, i64 512
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr15, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memset_chk(ptr noundef nonnull %add.ptr14, i32 noundef 0, i64 noundef 384, i64 noundef %12) #4
  %add.ptr17 = getelementptr inbounds i8, ptr %11, i64 896
  %13 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 61
  %14 = load ptr, ptr %sample_range_limit18, align 8
  %15 = load ptr, ptr %table, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %15, i64 896
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr19, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef nonnull %add.ptr17, ptr noundef %14, i64 noundef 128, i64 noundef %16) #4
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
