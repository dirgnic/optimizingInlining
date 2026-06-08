; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdsample.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdsample.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x ptr], [10 x ptr], i32, i32, [10 x i32], [10 x i8], [10 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_color_deconverter = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_upsampler(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %need_buffer = alloca i32, align 4
  %do_fancy = alloca i32, align 4
  %h_in_group = alloca i32, align 4
  %v_in_group = alloca i32, align 4
  %h_out_group = alloca i32, align 4
  %v_out_group = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 256)
  store ptr %call, ptr %upsample, align 8
  %4 = load ptr, ptr %upsample, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 81
  store ptr %4, ptr %upsample1, align 8
  %6 = load ptr, ptr %upsample, align 8
  %pub = getelementptr inbounds %struct.my_upsampler, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub, i32 0, i32 0
  store ptr @start_pass_upsample, ptr %start_pass, align 8
  %7 = load ptr, ptr %upsample, align 8
  %pub2 = getelementptr inbounds %struct.my_upsampler, ptr %7, i32 0, i32 0
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub2, i32 0, i32 1
  store ptr @sep_upsample, ptr %upsample3, align 8
  %8 = load ptr, ptr %upsample, align 8
  %pub4 = getelementptr inbounds %struct.my_upsampler, ptr %8, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub4, i32 0, i32 2
  store i32 0, ptr %need_context_rows, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 56
  %10 = load i32, ptr %CCIR601_sampling, align 8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 23, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 17
  %18 = load i32, ptr %do_fancy_upsampling, align 4
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 59
  %20 = load i32, ptr %min_DCT_scaled_size, align 4
  %cmp = icmp sgt i32 %20, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %21 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, ptr %do_fancy, align 4
  store i32 0, ptr %ci, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 43
  %23 = load ptr, ptr %comp_info, align 8
  store ptr %23, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %24 = load i32, ptr %ci, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 8
  %26 = load i32, ptr %num_components, align 8
  %cmp7 = icmp slt i32 %24, %26
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %h_samp_factor, align 8
  %29 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i32 0, i32 9
  %30 = load i32, ptr %DCT_scaled_size, align 4
  %mul = mul nsw i32 %28, %30
  %31 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 59
  %32 = load i32, ptr %min_DCT_scaled_size8, align 4
  %div = sdiv i32 %mul, %32
  store i32 %div, ptr %h_in_group, align 4
  %33 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %v_samp_factor, align 4
  %35 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size9 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 9
  %36 = load i32, ptr %DCT_scaled_size9, align 4
  %mul10 = mul nsw i32 %34, %36
  %37 = load ptr, ptr %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 59
  %38 = load i32, ptr %min_DCT_scaled_size11, align 4
  %div12 = sdiv i32 %mul10, %38
  store i32 %div12, ptr %v_in_group, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 57
  %40 = load i32, ptr %max_h_samp_factor, align 4
  store i32 %40, ptr %h_out_group, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 58
  %42 = load i32, ptr %max_v_samp_factor, align 8
  store i32 %42, ptr %v_out_group, align 4
  %43 = load i32, ptr %v_in_group, align 4
  %44 = load ptr, ptr %upsample, align 8
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, ptr %44, i32 0, i32 5
  %45 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %rowgroup_height, i64 0, i64 %idxprom
  store i32 %43, ptr %arrayidx, align 4
  store i32 1, ptr %need_buffer, align 4
  %46 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 0, i32 12
  %47 = load i32, ptr %component_needed, align 8
  %tobool13 = icmp ne i32 %47, 0
  br i1 %tobool13, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body
  %48 = load ptr, ptr %upsample, align 8
  %methods = getelementptr inbounds %struct.my_upsampler, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %ci, align 4
  %idxprom15 = sext i32 %49 to i64
  %arrayidx16 = getelementptr inbounds [10 x ptr], ptr %methods, i64 0, i64 %idxprom15
  store ptr @noop_upsample, ptr %arrayidx16, align 8
  store i32 0, ptr %need_buffer, align 4
  br label %if.end88

if.else:                                          ; preds = %for.body
  %50 = load i32, ptr %h_in_group, align 4
  %51 = load i32, ptr %h_out_group, align 4
  %cmp17 = icmp eq i32 %50, %51
  br i1 %cmp17, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %52 = load i32, ptr %v_in_group, align 4
  %53 = load i32, ptr %v_out_group, align 4
  %cmp18 = icmp eq i32 %52, %53
  br i1 %cmp18, label %if.then19, label %if.else23

if.then19:                                        ; preds = %land.lhs.true
  %54 = load ptr, ptr %upsample, align 8
  %methods20 = getelementptr inbounds %struct.my_upsampler, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %ci, align 4
  %idxprom21 = sext i32 %55 to i64
  %arrayidx22 = getelementptr inbounds [10 x ptr], ptr %methods20, i64 0, i64 %idxprom21
  store ptr @fullsize_upsample, ptr %arrayidx22, align 8
  store i32 0, ptr %need_buffer, align 4
  br label %if.end87

if.else23:                                        ; preds = %land.lhs.true, %if.else
  %56 = load i32, ptr %h_in_group, align 4
  %mul24 = mul nsw i32 %56, 2
  %57 = load i32, ptr %h_out_group, align 4
  %cmp25 = icmp eq i32 %mul24, %57
  br i1 %cmp25, label %land.lhs.true26, label %if.else41

land.lhs.true26:                                  ; preds = %if.else23
  %58 = load i32, ptr %v_in_group, align 4
  %59 = load i32, ptr %v_out_group, align 4
  %cmp27 = icmp eq i32 %58, %59
  br i1 %cmp27, label %if.then28, label %if.else41

if.then28:                                        ; preds = %land.lhs.true26
  %60 = load i32, ptr %do_fancy, align 4
  %tobool29 = icmp ne i32 %60, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.else36

land.lhs.true30:                                  ; preds = %if.then28
  %61 = load ptr, ptr %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i32 0, i32 10
  %62 = load i32, ptr %downsampled_width, align 8
  %cmp31 = icmp ugt i32 %62, 2
  br i1 %cmp31, label %if.then32, label %if.else36

if.then32:                                        ; preds = %land.lhs.true30
  %63 = load ptr, ptr %upsample, align 8
  %methods33 = getelementptr inbounds %struct.my_upsampler, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %ci, align 4
  %idxprom34 = sext i32 %64 to i64
  %arrayidx35 = getelementptr inbounds [10 x ptr], ptr %methods33, i64 0, i64 %idxprom34
  store ptr @h2v1_fancy_upsample, ptr %arrayidx35, align 8
  br label %if.end40

if.else36:                                        ; preds = %land.lhs.true30, %if.then28
  %65 = load ptr, ptr %upsample, align 8
  %methods37 = getelementptr inbounds %struct.my_upsampler, ptr %65, i32 0, i32 2
  %66 = load i32, ptr %ci, align 4
  %idxprom38 = sext i32 %66 to i64
  %arrayidx39 = getelementptr inbounds [10 x ptr], ptr %methods37, i64 0, i64 %idxprom38
  store ptr @h2v1_upsample, ptr %arrayidx39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then32
  br label %if.end86

if.else41:                                        ; preds = %land.lhs.true26, %if.else23
  %67 = load i32, ptr %h_in_group, align 4
  %mul42 = mul nsw i32 %67, 2
  %68 = load i32, ptr %h_out_group, align 4
  %cmp43 = icmp eq i32 %mul42, %68
  br i1 %cmp43, label %land.lhs.true44, label %if.else63

land.lhs.true44:                                  ; preds = %if.else41
  %69 = load i32, ptr %v_in_group, align 4
  %mul45 = mul nsw i32 %69, 2
  %70 = load i32, ptr %v_out_group, align 4
  %cmp46 = icmp eq i32 %mul45, %70
  br i1 %cmp46, label %if.then47, label %if.else63

if.then47:                                        ; preds = %land.lhs.true44
  %71 = load i32, ptr %do_fancy, align 4
  %tobool48 = icmp ne i32 %71, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.else58

land.lhs.true49:                                  ; preds = %if.then47
  %72 = load ptr, ptr %compptr, align 8
  %downsampled_width50 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i32 0, i32 10
  %73 = load i32, ptr %downsampled_width50, align 8
  %cmp51 = icmp ugt i32 %73, 2
  br i1 %cmp51, label %if.then52, label %if.else58

if.then52:                                        ; preds = %land.lhs.true49
  %74 = load ptr, ptr %upsample, align 8
  %methods53 = getelementptr inbounds %struct.my_upsampler, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %ci, align 4
  %idxprom54 = sext i32 %75 to i64
  %arrayidx55 = getelementptr inbounds [10 x ptr], ptr %methods53, i64 0, i64 %idxprom54
  store ptr @h2v2_fancy_upsample, ptr %arrayidx55, align 8
  %76 = load ptr, ptr %upsample, align 8
  %pub56 = getelementptr inbounds %struct.my_upsampler, ptr %76, i32 0, i32 0
  %need_context_rows57 = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub56, i32 0, i32 2
  store i32 1, ptr %need_context_rows57, align 8
  br label %if.end62

if.else58:                                        ; preds = %land.lhs.true49, %if.then47
  %77 = load ptr, ptr %upsample, align 8
  %methods59 = getelementptr inbounds %struct.my_upsampler, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %ci, align 4
  %idxprom60 = sext i32 %78 to i64
  %arrayidx61 = getelementptr inbounds [10 x ptr], ptr %methods59, i64 0, i64 %idxprom60
  store ptr @h2v2_upsample, ptr %arrayidx61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then52
  br label %if.end85

if.else63:                                        ; preds = %land.lhs.true44, %if.else41
  %79 = load i32, ptr %h_out_group, align 4
  %80 = load i32, ptr %h_in_group, align 4
  %rem = srem i32 %79, %80
  %cmp64 = icmp eq i32 %rem, 0
  br i1 %cmp64, label %land.lhs.true65, label %if.else79

land.lhs.true65:                                  ; preds = %if.else63
  %81 = load i32, ptr %v_out_group, align 4
  %82 = load i32, ptr %v_in_group, align 4
  %rem66 = srem i32 %81, %82
  %cmp67 = icmp eq i32 %rem66, 0
  br i1 %cmp67, label %if.then68, label %if.else79

if.then68:                                        ; preds = %land.lhs.true65
  %83 = load ptr, ptr %upsample, align 8
  %methods69 = getelementptr inbounds %struct.my_upsampler, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %ci, align 4
  %idxprom70 = sext i32 %84 to i64
  %arrayidx71 = getelementptr inbounds [10 x ptr], ptr %methods69, i64 0, i64 %idxprom70
  store ptr @int_upsample, ptr %arrayidx71, align 8
  %85 = load i32, ptr %h_out_group, align 4
  %86 = load i32, ptr %h_in_group, align 4
  %div72 = sdiv i32 %85, %86
  %conv = trunc i32 %div72 to i8
  %87 = load ptr, ptr %upsample, align 8
  %h_expand = getelementptr inbounds %struct.my_upsampler, ptr %87, i32 0, i32 6
  %88 = load i32, ptr %ci, align 4
  %idxprom73 = sext i32 %88 to i64
  %arrayidx74 = getelementptr inbounds [10 x i8], ptr %h_expand, i64 0, i64 %idxprom73
  store i8 %conv, ptr %arrayidx74, align 1
  %89 = load i32, ptr %v_out_group, align 4
  %90 = load i32, ptr %v_in_group, align 4
  %div75 = sdiv i32 %89, %90
  %conv76 = trunc i32 %div75 to i8
  %91 = load ptr, ptr %upsample, align 8
  %v_expand = getelementptr inbounds %struct.my_upsampler, ptr %91, i32 0, i32 7
  %92 = load i32, ptr %ci, align 4
  %idxprom77 = sext i32 %92 to i64
  %arrayidx78 = getelementptr inbounds [10 x i8], ptr %v_expand, i64 0, i64 %idxprom77
  store i8 %conv76, ptr %arrayidx78, align 1
  br label %if.end84

if.else79:                                        ; preds = %land.lhs.true65, %if.else63
  %93 = load ptr, ptr %cinfo.addr, align 8
  %err80 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %err80, align 8
  %msg_code81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %94, i32 0, i32 5
  store i32 37, ptr %msg_code81, align 8
  %95 = load ptr, ptr %cinfo.addr, align 8
  %err82 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %err82, align 8
  %error_exit83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %error_exit83, align 8
  %98 = load ptr, ptr %cinfo.addr, align 8
  call void %97(ptr noundef %98)
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.then68
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end62
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end40
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then19
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then14
  %99 = load i32, ptr %need_buffer, align 4
  %tobool89 = icmp ne i32 %99, 0
  br i1 %tobool89, label %if.then90, label %if.end101

if.then90:                                        ; preds = %if.end88
  %100 = load ptr, ptr %cinfo.addr, align 8
  %mem91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %mem91, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %101, i32 0, i32 2
  %102 = load ptr, ptr %alloc_sarray, align 8
  %103 = load ptr, ptr %cinfo.addr, align 8
  %104 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 26
  %105 = load i32, ptr %output_width, align 8
  %conv92 = zext i32 %105 to i64
  %106 = load ptr, ptr %cinfo.addr, align 8
  %max_h_samp_factor93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 57
  %107 = load i32, ptr %max_h_samp_factor93, align 4
  %conv94 = sext i32 %107 to i64
  %call95 = call i64 @jround_up(i64 noundef %conv92, i64 noundef %conv94)
  %conv96 = trunc i64 %call95 to i32
  %108 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 58
  %109 = load i32, ptr %max_v_samp_factor97, align 8
  %call98 = call ptr %102(ptr noundef %103, i32 noundef 1, i32 noundef %conv96, i32 noundef %109)
  %110 = load ptr, ptr %upsample, align 8
  %color_buf = getelementptr inbounds %struct.my_upsampler, ptr %110, i32 0, i32 1
  %111 = load i32, ptr %ci, align 4
  %idxprom99 = sext i32 %111 to i64
  %arrayidx100 = getelementptr inbounds [10 x ptr], ptr %color_buf, i64 0, i64 %idxprom99
  store ptr %call98, ptr %arrayidx100, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then90, %if.end88
  br label %for.inc

for.inc:                                          ; preds = %if.end101
  %112 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, ptr %ci, align 4
  %113 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %113, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass_upsample(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 58
  %3 = load i32, ptr %max_v_samp_factor, align 8
  %4 = load ptr, ptr %upsample, align 8
  %next_row_out = getelementptr inbounds %struct.my_upsampler, ptr %4, i32 0, i32 3
  store i32 %3, ptr %next_row_out, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 27
  %6 = load i32, ptr %output_height, align 4
  %7 = load ptr, ptr %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %7, i32 0, i32 4
  store i32 %6, ptr %rows_to_go, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @sep_upsample(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %num_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %upsample, align 8
  %next_row_out = getelementptr inbounds %struct.my_upsampler, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %next_row_out, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 58
  %5 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp sge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %ci, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 43
  %7 = load ptr, ptr %comp_info, align 8
  store ptr %7, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %ci, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 8
  %10 = load i32, ptr %num_components, align 8
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %upsample, align 8
  %methods = getelementptr inbounds %struct.my_upsampler, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %methods, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %compptr, align 8
  %16 = load ptr, ptr %input_buf.addr, align 8
  %17 = load i32, ptr %ci, align 4
  %idxprom3 = sext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %16, i64 %idxprom3
  %18 = load ptr, ptr %arrayidx4, align 8
  %19 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %upsample, align 8
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %ci, align 4
  %idxprom5 = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %rowgroup_height, i64 0, i64 %idxprom5
  %23 = load i32, ptr %arrayidx6, align 4
  %mul = mul i32 %20, %23
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  %24 = load ptr, ptr %upsample, align 8
  %color_buf = getelementptr inbounds %struct.my_upsampler, ptr %24, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %color_buf, i64 0, i64 0
  %25 = load i32, ptr %ci, align 4
  %idx.ext7 = sext i32 %25 to i64
  %add.ptr8 = getelementptr inbounds ptr, ptr %arraydecay, i64 %idx.ext7
  call void %13(ptr noundef %14, ptr noundef %15, ptr noundef %add.ptr, ptr noundef %add.ptr8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %ci, align 4
  %27 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %upsample, align 8
  %next_row_out9 = getelementptr inbounds %struct.my_upsampler, ptr %28, i32 0, i32 3
  store i32 0, ptr %next_row_out9, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %29 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 58
  %30 = load i32, ptr %max_v_samp_factor10, align 8
  %31 = load ptr, ptr %upsample, align 8
  %next_row_out11 = getelementptr inbounds %struct.my_upsampler, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %next_row_out11, align 8
  %sub = sub nsw i32 %30, %32
  store i32 %sub, ptr %num_rows, align 4
  %33 = load i32, ptr %num_rows, align 4
  %34 = load ptr, ptr %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %rows_to_go, align 4
  %cmp12 = icmp ugt i32 %33, %35
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  %36 = load ptr, ptr %upsample, align 8
  %rows_to_go14 = getelementptr inbounds %struct.my_upsampler, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %rows_to_go14, align 4
  store i32 %37, ptr %num_rows, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  %38 = load ptr, ptr %out_row_ctr.addr, align 8
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %out_rows_avail.addr, align 4
  %sub16 = sub i32 %40, %39
  store i32 %sub16, ptr %out_rows_avail.addr, align 4
  %41 = load i32, ptr %num_rows, align 4
  %42 = load i32, ptr %out_rows_avail.addr, align 4
  %cmp17 = icmp ugt i32 %41, %42
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %43 = load i32, ptr %out_rows_avail.addr, align 4
  store i32 %43, ptr %num_rows, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %44 = load ptr, ptr %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 82
  %45 = load ptr, ptr %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %color_convert, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load ptr, ptr %upsample, align 8
  %color_buf20 = getelementptr inbounds %struct.my_upsampler, ptr %48, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [10 x ptr], ptr %color_buf20, i64 0, i64 0
  %49 = load ptr, ptr %upsample, align 8
  %next_row_out22 = getelementptr inbounds %struct.my_upsampler, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %next_row_out22, align 8
  %51 = load ptr, ptr %output_buf.addr, align 8
  %52 = load ptr, ptr %out_row_ctr.addr, align 8
  %53 = load i32, ptr %52, align 4
  %idx.ext23 = zext i32 %53 to i64
  %add.ptr24 = getelementptr inbounds ptr, ptr %51, i64 %idx.ext23
  %54 = load i32, ptr %num_rows, align 4
  call void %46(ptr noundef %47, ptr noundef %arraydecay21, i32 noundef %50, ptr noundef %add.ptr24, i32 noundef %54)
  %55 = load i32, ptr %num_rows, align 4
  %56 = load ptr, ptr %out_row_ctr.addr, align 8
  %57 = load i32, ptr %56, align 4
  %add = add i32 %57, %55
  store i32 %add, ptr %56, align 4
  %58 = load i32, ptr %num_rows, align 4
  %59 = load ptr, ptr %upsample, align 8
  %rows_to_go25 = getelementptr inbounds %struct.my_upsampler, ptr %59, i32 0, i32 4
  %60 = load i32, ptr %rows_to_go25, align 4
  %sub26 = sub i32 %60, %58
  store i32 %sub26, ptr %rows_to_go25, align 4
  %61 = load i32, ptr %num_rows, align 4
  %62 = load ptr, ptr %upsample, align 8
  %next_row_out27 = getelementptr inbounds %struct.my_upsampler, ptr %62, i32 0, i32 3
  %63 = load i32, ptr %next_row_out27, align 8
  %add28 = add i32 %63, %61
  store i32 %add28, ptr %next_row_out27, align 8
  %64 = load ptr, ptr %upsample, align 8
  %next_row_out29 = getelementptr inbounds %struct.my_upsampler, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %next_row_out29, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 58
  %67 = load i32, ptr %max_v_samp_factor30, align 8
  %cmp31 = icmp sge i32 %65, %67
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end19
  %68 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %69 = load i32, ptr %68, align 4
  %inc33 = add i32 %69, 1
  store i32 %inc33, ptr %68, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end19
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @noop_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %output_data_ptr.addr, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fullsize_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %input_data.addr, align 8
  %1 = load ptr, ptr %output_data_ptr.addr, align 8
  store ptr %0, ptr %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @h2v1_fancy_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %invalue = alloca i32, align 4
  %colctr = alloca i32, align 4
  %inrow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %output_data_ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %output_data, align 8
  store i32 0, ptr %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  %2 = load i32, ptr %inrow, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input_data.addr, align 8
  %6 = load i32, ptr %inrow, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %inptr, align 8
  %8 = load ptr, ptr %output_data, align 8
  %9 = load i32, ptr %inrow, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 %idxprom1
  %10 = load ptr, ptr %arrayidx2, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, ptr %invalue, align 4
  %13 = load i32, ptr %invalue, align 4
  %conv3 = trunc i32 %13 to i8
  %14 = load ptr, ptr %outptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %outptr, align 8
  store i8 %conv3, ptr %14, align 1
  %15 = load i32, ptr %invalue, align 4
  %mul = mul nsw i32 %15, 3
  %16 = load ptr, ptr %inptr, align 8
  %17 = load i8, ptr %16, align 1
  %conv5 = zext i8 %17 to i32
  %add = add nsw i32 %mul, %conv5
  %add6 = add nsw i32 %add, 2
  %shr = ashr i32 %add6, 2
  %conv7 = trunc i32 %shr to i8
  %18 = load ptr, ptr %outptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr8, ptr %outptr, align 8
  store i8 %conv7, ptr %18, align 1
  %19 = load ptr, ptr %compptr.addr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i32 0, i32 10
  %20 = load i32, ptr %downsampled_width, align 8
  %sub = sub i32 %20, 2
  store i32 %sub, ptr %colctr, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %21 = load i32, ptr %colctr, align 4
  %cmp10 = icmp ugt i32 %21, 0
  br i1 %cmp10, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond9
  %22 = load ptr, ptr %inptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr13, ptr %inptr, align 8
  %23 = load i8, ptr %22, align 1
  %conv14 = zext i8 %23 to i32
  %mul15 = mul nsw i32 %conv14, 3
  store i32 %mul15, ptr %invalue, align 4
  %24 = load i32, ptr %invalue, align 4
  %25 = load ptr, ptr %inptr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %25, i64 -2
  %26 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %26 to i32
  %add18 = add nsw i32 %24, %conv17
  %add19 = add nsw i32 %add18, 1
  %shr20 = ashr i32 %add19, 2
  %conv21 = trunc i32 %shr20 to i8
  %27 = load ptr, ptr %outptr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr22, ptr %outptr, align 8
  store i8 %conv21, ptr %27, align 1
  %28 = load i32, ptr %invalue, align 4
  %29 = load ptr, ptr %inptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv23 = zext i8 %30 to i32
  %add24 = add nsw i32 %28, %conv23
  %add25 = add nsw i32 %add24, 2
  %shr26 = ashr i32 %add25, 2
  %conv27 = trunc i32 %shr26 to i8
  %31 = load ptr, ptr %outptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr28, ptr %outptr, align 8
  store i8 %conv27, ptr %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %32 = load i32, ptr %colctr, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %colctr, align 4
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  %33 = load ptr, ptr %inptr, align 8
  %34 = load i8, ptr %33, align 1
  %conv29 = zext i8 %34 to i32
  store i32 %conv29, ptr %invalue, align 4
  %35 = load i32, ptr %invalue, align 4
  %mul30 = mul nsw i32 %35, 3
  %36 = load ptr, ptr %inptr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %36, i64 -1
  %37 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %37 to i32
  %add33 = add nsw i32 %mul30, %conv32
  %add34 = add nsw i32 %add33, 1
  %shr35 = ashr i32 %add34, 2
  %conv36 = trunc i32 %shr35 to i8
  %38 = load ptr, ptr %outptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr37, ptr %outptr, align 8
  store i8 %conv36, ptr %38, align 1
  %39 = load i32, ptr %invalue, align 4
  %conv38 = trunc i32 %39 to i8
  %40 = load ptr, ptr %outptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr39, ptr %outptr, align 8
  store i8 %conv38, ptr %40, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %for.end
  %41 = load i32, ptr %inrow, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %inrow, align 4
  br label %for.cond, !llvm.loop !10

for.end41:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @h2v1_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %invalue = alloca i8, align 1
  %outend = alloca ptr, align 8
  %inrow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %output_data_ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %output_data, align 8
  store i32 0, ptr %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %inrow, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input_data.addr, align 8
  %6 = load i32, ptr %inrow, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %inptr, align 8
  %8 = load ptr, ptr %output_data, align 8
  %9 = load i32, ptr %inrow, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 %idxprom1
  %10 = load ptr, ptr %arrayidx2, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %outptr, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 26
  %13 = load i32, ptr %output_width, align 8
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %outend, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load ptr, ptr %outptr, align 8
  %15 = load ptr, ptr %outend, align 8
  %cmp3 = icmp ult ptr %14, %15
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %invalue, align 1
  %18 = load i8, ptr %invalue, align 1
  %19 = load ptr, ptr %outptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr4, ptr %outptr, align 8
  store i8 %18, ptr %19, align 1
  %20 = load i8, ptr %invalue, align 1
  %21 = load ptr, ptr %outptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr5, ptr %outptr, align 8
  store i8 %20, ptr %21, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %22 = load i32, ptr %inrow, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %inrow, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @h2v2_fancy_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %thiscolsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  %colctr = alloca i32, align 4
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %output_data_ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %output_data, align 8
  store i32 0, ptr %outrow, align 4
  store i32 0, ptr %inrow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end64, %entry
  %2 = load i32, ptr %outrow, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %while.body
  %5 = load i32, ptr %v, align 4
  %cmp1 = icmp slt i32 %5, 2
  br i1 %cmp1, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %input_data.addr, align 8
  %7 = load i32, ptr %inrow, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %inptr0, align 8
  %9 = load i32, ptr %v, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %input_data.addr, align 8
  %11 = load i32, ptr %inrow, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 %idxprom3
  %12 = load ptr, ptr %arrayidx4, align 8
  store ptr %12, ptr %inptr1, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load ptr, ptr %input_data.addr, align 8
  %14 = load i32, ptr %inrow, align 4
  %add = add nsw i32 %14, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %13, i64 %idxprom5
  %15 = load ptr, ptr %arrayidx6, align 8
  store ptr %15, ptr %inptr1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %output_data, align 8
  %17 = load i32, ptr %outrow, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %outrow, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %16, i64 %idxprom7
  %18 = load ptr, ptr %arrayidx8, align 8
  store ptr %18, ptr %outptr, align 8
  %19 = load ptr, ptr %inptr0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %inptr0, align 8
  %20 = load i8, ptr %19, align 1
  %conv = zext i8 %20 to i32
  %mul = mul nsw i32 %conv, 3
  %21 = load ptr, ptr %inptr1, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr9, ptr %inptr1, align 8
  %22 = load i8, ptr %21, align 1
  %conv10 = zext i8 %22 to i32
  %add11 = add nsw i32 %mul, %conv10
  store i32 %add11, ptr %thiscolsum, align 4
  %23 = load ptr, ptr %inptr0, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr12, ptr %inptr0, align 8
  %24 = load i8, ptr %23, align 1
  %conv13 = zext i8 %24 to i32
  %mul14 = mul nsw i32 %conv13, 3
  %25 = load ptr, ptr %inptr1, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr15, ptr %inptr1, align 8
  %26 = load i8, ptr %25, align 1
  %conv16 = zext i8 %26 to i32
  %add17 = add nsw i32 %mul14, %conv16
  store i32 %add17, ptr %nextcolsum, align 4
  %27 = load i32, ptr %thiscolsum, align 4
  %mul18 = mul nsw i32 %27, 4
  %add19 = add nsw i32 %mul18, 8
  %shr = ashr i32 %add19, 4
  %conv20 = trunc i32 %shr to i8
  %28 = load ptr, ptr %outptr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr21, ptr %outptr, align 8
  store i8 %conv20, ptr %28, align 1
  %29 = load i32, ptr %thiscolsum, align 4
  %mul22 = mul nsw i32 %29, 3
  %30 = load i32, ptr %nextcolsum, align 4
  %add23 = add nsw i32 %mul22, %30
  %add24 = add nsw i32 %add23, 7
  %shr25 = ashr i32 %add24, 4
  %conv26 = trunc i32 %shr25 to i8
  %31 = load ptr, ptr %outptr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr27, ptr %outptr, align 8
  store i8 %conv26, ptr %31, align 1
  %32 = load i32, ptr %thiscolsum, align 4
  store i32 %32, ptr %lastcolsum, align 4
  %33 = load i32, ptr %nextcolsum, align 4
  store i32 %33, ptr %thiscolsum, align 4
  %34 = load ptr, ptr %compptr.addr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i32 0, i32 10
  %35 = load i32, ptr %downsampled_width, align 8
  %sub28 = sub i32 %35, 2
  store i32 %sub28, ptr %colctr, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %if.end
  %36 = load i32, ptr %colctr, align 4
  %cmp30 = icmp ugt i32 %36, 0
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond29
  %37 = load ptr, ptr %inptr0, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr33, ptr %inptr0, align 8
  %38 = load i8, ptr %37, align 1
  %conv34 = zext i8 %38 to i32
  %mul35 = mul nsw i32 %conv34, 3
  %39 = load ptr, ptr %inptr1, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr36, ptr %inptr1, align 8
  %40 = load i8, ptr %39, align 1
  %conv37 = zext i8 %40 to i32
  %add38 = add nsw i32 %mul35, %conv37
  store i32 %add38, ptr %nextcolsum, align 4
  %41 = load i32, ptr %thiscolsum, align 4
  %mul39 = mul nsw i32 %41, 3
  %42 = load i32, ptr %lastcolsum, align 4
  %add40 = add nsw i32 %mul39, %42
  %add41 = add nsw i32 %add40, 8
  %shr42 = ashr i32 %add41, 4
  %conv43 = trunc i32 %shr42 to i8
  %43 = load ptr, ptr %outptr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr44, ptr %outptr, align 8
  store i8 %conv43, ptr %43, align 1
  %44 = load i32, ptr %thiscolsum, align 4
  %mul45 = mul nsw i32 %44, 3
  %45 = load i32, ptr %nextcolsum, align 4
  %add46 = add nsw i32 %mul45, %45
  %add47 = add nsw i32 %add46, 7
  %shr48 = ashr i32 %add47, 4
  %conv49 = trunc i32 %shr48 to i8
  %46 = load ptr, ptr %outptr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr50, ptr %outptr, align 8
  store i8 %conv49, ptr %46, align 1
  %47 = load i32, ptr %thiscolsum, align 4
  store i32 %47, ptr %lastcolsum, align 4
  %48 = load i32, ptr %nextcolsum, align 4
  store i32 %48, ptr %thiscolsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body32
  %49 = load i32, ptr %colctr, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %colctr, align 4
  br label %for.cond29, !llvm.loop !13

for.end:                                          ; preds = %for.cond29
  %50 = load i32, ptr %thiscolsum, align 4
  %mul51 = mul nsw i32 %50, 3
  %51 = load i32, ptr %lastcolsum, align 4
  %add52 = add nsw i32 %mul51, %51
  %add53 = add nsw i32 %add52, 8
  %shr54 = ashr i32 %add53, 4
  %conv55 = trunc i32 %shr54 to i8
  %52 = load ptr, ptr %outptr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr56, ptr %outptr, align 8
  store i8 %conv55, ptr %52, align 1
  %53 = load i32, ptr %thiscolsum, align 4
  %mul57 = mul nsw i32 %53, 4
  %add58 = add nsw i32 %mul57, 7
  %shr59 = ashr i32 %add58, 4
  %conv60 = trunc i32 %shr59 to i8
  %54 = load ptr, ptr %outptr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr61, ptr %outptr, align 8
  store i8 %conv60, ptr %54, align 1
  br label %for.inc62

for.inc62:                                        ; preds = %for.end
  %55 = load i32, ptr %v, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, ptr %v, align 4
  br label %for.cond, !llvm.loop !14

for.end64:                                        ; preds = %for.cond
  %56 = load i32, ptr %inrow, align 4
  %inc65 = add nsw i32 %56, 1
  store i32 %inc65, ptr %inrow, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @h2v2_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %invalue = alloca i8, align 1
  %outend = alloca ptr, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %output_data_ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %output_data, align 8
  store i32 0, ptr %outrow, align 4
  store i32 0, ptr %inrow, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load i32, ptr %outrow, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end10

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %input_data.addr, align 8
  %6 = load i32, ptr %inrow, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %inptr, align 8
  %8 = load ptr, ptr %output_data, align 8
  %9 = load i32, ptr %outrow, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 %idxprom1
  %10 = load ptr, ptr %arrayidx2, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %outptr, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 26
  %13 = load i32, ptr %output_width, align 8
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %outend, align 8
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %while.body
  %14 = load ptr, ptr %outptr, align 8
  %15 = load ptr, ptr %outend, align 8
  %cmp4 = icmp ult ptr %14, %15
  br i1 %cmp4, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond3
  %16 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %invalue, align 1
  %18 = load i8, ptr %invalue, align 1
  %19 = load ptr, ptr %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr6, ptr %outptr, align 8
  store i8 %18, ptr %19, align 1
  %20 = load i8, ptr %invalue, align 1
  %21 = load ptr, ptr %outptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr7, ptr %outptr, align 8
  store i8 %20, ptr %21, align 1
  br label %while.cond3, !llvm.loop !16

while.end:                                        ; preds = %while.cond3
  %22 = load ptr, ptr %output_data, align 8
  %23 = load i32, ptr %outrow, align 4
  %24 = load ptr, ptr %output_data, align 8
  %25 = load i32, ptr %outrow, align 4
  %add = add nsw i32 %25, 1
  %26 = load ptr, ptr %cinfo.addr, align 8
  %output_width8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 26
  %27 = load i32, ptr %output_width8, align 8
  call void @jcopy_sample_rows(ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %add, i32 noundef 1, i32 noundef %27)
  %28 = load i32, ptr %inrow, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %inrow, align 4
  %29 = load i32, ptr %outrow, align 4
  %add9 = add nsw i32 %29, 2
  store i32 %add9, ptr %outrow, align 4
  br label %while.cond, !llvm.loop !17

while.end10:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @int_upsample(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %input_data, ptr noundef %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %input_data.addr = alloca ptr, align 8
  %output_data_ptr.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %invalue = alloca i8, align 1
  %h = alloca i32, align 4
  %outend = alloca ptr, align 8
  %h_expand = alloca i32, align 4
  %v_expand = alloca i32, align 4
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %input_data, ptr %input_data.addr, align 8
  store ptr %output_data_ptr, ptr %output_data_ptr.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %output_data_ptr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %output_data, align 8
  %4 = load ptr, ptr %upsample, align 8
  %h_expand2 = getelementptr inbounds %struct.my_upsampler, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %compptr.addr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %component_index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr %h_expand2, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %h_expand, align 4
  %8 = load ptr, ptr %upsample, align 8
  %v_expand3 = getelementptr inbounds %struct.my_upsampler, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %compptr.addr, align 8
  %component_index4 = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %component_index4, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [10 x i8], ptr %v_expand3, i64 0, i64 %idxprom5
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  store i32 %conv7, ptr %v_expand, align 4
  store i32 0, ptr %outrow, align 4
  store i32 0, ptr %inrow, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %12 = load i32, ptr %outrow, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 58
  %14 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %while.body, label %while.end24

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %input_data.addr, align 8
  %16 = load i32, ptr %inrow, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %15, i64 %idxprom9
  %17 = load ptr, ptr %arrayidx10, align 8
  store ptr %17, ptr %inptr, align 8
  %18 = load ptr, ptr %output_data, align 8
  %19 = load i32, ptr %outrow, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %18, i64 %idxprom11
  %20 = load ptr, ptr %arrayidx12, align 8
  store ptr %20, ptr %outptr, align 8
  %21 = load ptr, ptr %outptr, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 26
  %23 = load i32, ptr %output_width, align 8
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %outend, align 8
  br label %while.cond13

while.cond13:                                     ; preds = %for.end, %while.body
  %24 = load ptr, ptr %outptr, align 8
  %25 = load ptr, ptr %outend, align 8
  %cmp14 = icmp ult ptr %24, %25
  br i1 %cmp14, label %while.body16, label %while.end

while.body16:                                     ; preds = %while.cond13
  %26 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %invalue, align 1
  %28 = load i32, ptr %h_expand, align 4
  store i32 %28, ptr %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body16
  %29 = load i32, ptr %h, align 4
  %cmp17 = icmp sgt i32 %29, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i8, ptr %invalue, align 1
  %31 = load ptr, ptr %outptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr19, ptr %outptr, align 8
  store i8 %30, ptr %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %h, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %h, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  br label %while.cond13, !llvm.loop !19

while.end:                                        ; preds = %while.cond13
  %33 = load i32, ptr %v_expand, align 4
  %cmp20 = icmp sgt i32 %33, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %34 = load ptr, ptr %output_data, align 8
  %35 = load i32, ptr %outrow, align 4
  %36 = load ptr, ptr %output_data, align 8
  %37 = load i32, ptr %outrow, align 4
  %add = add nsw i32 %37, 1
  %38 = load i32, ptr %v_expand, align 4
  %sub = sub nsw i32 %38, 1
  %39 = load ptr, ptr %cinfo.addr, align 8
  %output_width22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 26
  %40 = load i32, ptr %output_width22, align 8
  call void @jcopy_sample_rows(ptr noundef %34, i32 noundef %35, ptr noundef %36, i32 noundef %add, i32 noundef %sub, i32 noundef %40)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %41 = load i32, ptr %inrow, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %inrow, align 4
  %42 = load i32, ptr %v_expand, align 4
  %43 = load i32, ptr %outrow, align 4
  %add23 = add nsw i32 %43, %42
  store i32 %add23, ptr %outrow, align 4
  br label %while.cond, !llvm.loop !20

while.end24:                                      ; preds = %while.cond
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

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
