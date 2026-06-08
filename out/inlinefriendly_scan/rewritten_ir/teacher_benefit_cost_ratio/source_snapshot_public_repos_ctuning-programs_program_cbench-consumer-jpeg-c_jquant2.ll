; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jquant2.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jquant2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_2pass_quantizer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %i = alloca i32, align 4
  %desired = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 88) #2
  store ptr %call, ptr %cquantize, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  store ptr %call, ptr %cquantize1, align 8
  store ptr @start_pass_2_quant, ptr %call, align 8
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %call, i64 0, i32 3
  store ptr @new_color_map_2_quant, ptr %new_color_map, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %call, i64 0, i32 5
  store ptr null, ptr %fserrors, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %2, i64 0, i32 7
  store ptr null, ptr %error_limiter, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 46, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %mem4, align 8
  %11 = load ptr, ptr %10, align 8
  %call6 = call ptr %11(ptr noundef %9, i32 noundef 1, i64 noundef 256) #2
  %12 = load ptr, ptr %cquantize, align 8
  %histogram = getelementptr inbounds %struct.my_cquantizer, ptr %12, i64 0, i32 3
  store ptr %call6, ptr %histogram, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp7 = icmp slt i32 %storemerge, 32
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %mem8, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %alloc_large, align 8
  %call9 = call ptr %15(ptr noundef %13, i32 noundef 1, i64 noundef 4096) #2
  %16 = load ptr, ptr %cquantize, align 8
  %histogram10 = getelementptr inbounds %struct.my_cquantizer, ptr %16, i64 0, i32 3
  %17 = load ptr, ptr %histogram10, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  store ptr %call9, ptr %arrayidx, align 8
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %20, i64 0, i32 4
  store i32 1, ptr %needs_zeroed, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 25
  %22 = load i32, ptr %enable_2pass_quant, align 4
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 22
  %24 = load i32, ptr %desired_number_of_colors, align 8
  store i32 %24, ptr %desired, align 4
  %cmp12 = icmp slt i32 %24, 8
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.then11
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 55, ptr %msg_code15, align 8
  %27 = load ptr, ptr %25, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 6
  store i32 8, ptr %msg_parm, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull %28) #2
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.then11
  %31 = load i32, ptr %desired, align 4
  %cmp21 = icmp sgt i32 %31, 256
  br i1 %cmp21, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.end20
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %msg_code24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 5
  store i32 56, ptr %msg_code24, align 8
  %34 = load ptr, ptr %32, align 8
  %msg_parm26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 6
  store i32 256, ptr %msg_parm26, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef nonnull %35) #2
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %if.end20
  %38 = load ptr, ptr %cinfo.addr, align 8
  %mem31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i64 0, i32 1
  %39 = load ptr, ptr %mem31, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %39, i64 0, i32 2
  %40 = load ptr, ptr %alloc_sarray, align 8
  %41 = load i32, ptr %desired, align 4
  %call32 = call ptr %40(ptr noundef %38, i32 noundef 1, i32 noundef %41, i32 noundef 3) #2
  %42 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %42, i64 0, i32 1
  store ptr %call32, ptr %sv_colormap, align 8
  %desired33 = getelementptr inbounds %struct.my_cquantizer, ptr %42, i64 0, i32 2
  store i32 %41, ptr %desired33, align 8
  br label %if.end35

if.else:                                          ; preds = %for.end
  %43 = load ptr, ptr %cquantize, align 8
  %sv_colormap34 = getelementptr inbounds %struct.my_cquantizer, ptr %43, i64 0, i32 1
  store ptr null, ptr %sv_colormap34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end30
  %44 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i64 0, i32 20
  %45 = load i32, ptr %dither_mode, align 8
  %cmp36.not = icmp eq i32 %45, 0
  br i1 %cmp36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end35
  %46 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i64 0, i32 20
  store i32 2, ptr %dither_mode38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %47 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i64 0, i32 20
  %48 = load i32, ptr %dither_mode40, align 8
  %cmp41 = icmp eq i32 %48, 2
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end39
  %49 = load ptr, ptr %cinfo.addr, align 8
  %mem43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i64 0, i32 1
  %50 = load ptr, ptr %mem43, align 8
  %alloc_large44 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %50, i64 0, i32 1
  %51 = load ptr, ptr %alloc_large44, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i64 0, i32 26
  %52 = load i32, ptr %output_width, align 8
  %add = add i32 %52, 2
  %conv = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv, 6
  %call45 = call ptr %51(ptr noundef %49, i32 noundef 1, i64 noundef %mul) #2
  %53 = load ptr, ptr %cquantize, align 8
  %fserrors46 = getelementptr inbounds %struct.my_cquantizer, ptr %53, i64 0, i32 5
  store ptr %call45, ptr %fserrors46, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  call void @init_error_limit(ptr noundef %54)
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_2_quant(ptr noundef %cinfo, i32 noundef %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %histogram = alloca ptr, align 8
  %i = alloca i32, align 4
  %arraysize = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %is_pre_scan, ptr %is_pre_scan.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 20
  %3 = load i32, ptr %dither_mode, align 8
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 20
  store i32 2, ptr %dither_mode3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %is_pre_scan.addr, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %6, i64 0, i32 1
  store ptr @prescan_quantize, ptr %color_quantize, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %6, i64 0, i32 2
  store ptr @finish_pass1, ptr %finish_pass, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 4
  store i32 1, ptr %needs_zeroed, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 20
  %8 = load i32, ptr %dither_mode6, align 8
  %cmp7 = icmp eq i32 %8, 2
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %9 = load ptr, ptr %cquantize, align 8
  %color_quantize10 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %9, i64 0, i32 1
  store ptr @pass2_fs_dither, ptr %color_quantize10, align 8
  br label %if.end14

if.else11:                                        ; preds = %if.else
  %10 = load ptr, ptr %cquantize, align 8
  %color_quantize13 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %10, i64 0, i32 1
  store ptr @pass2_no_dither, ptr %color_quantize13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8
  %11 = load ptr, ptr %cquantize, align 8
  %finish_pass16 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %11, i64 0, i32 2
  store ptr @finish_pass2, ptr %finish_pass16, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 31
  %13 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %13, ptr %i, align 4
  %cmp17 = icmp slt i32 %13, 1
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 55, ptr %msg_code, align 8
  %16 = load ptr, ptr %14, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 6
  store i32 1, ptr %msg_parm, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull %17) #2
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14
  %20 = load i32, ptr %i, align 4
  %cmp22 = icmp sgt i32 %20, 256
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end21
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 56, ptr %msg_code25, align 8
  %23 = load ptr, ptr %21, align 8
  %msg_parm27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 256, ptr %msg_parm27, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull %24) #2
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end21
  %27 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 20
  %28 = load i32, ptr %dither_mode32, align 8
  %cmp33 = icmp eq i32 %28, 2
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %if.end31
  %29 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 26
  %30 = load i32, ptr %output_width, align 8
  %add = add i32 %30, 2
  %conv = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv, 6
  store i64 %mul, ptr %arraysize, align 8
  %31 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 5
  %32 = load ptr, ptr %fserrors, align 8
  %cmp35 = icmp eq ptr %32, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then34
  %33 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %34, i64 0, i32 1
  %35 = load ptr, ptr %alloc_large, align 8
  %36 = load i64, ptr %arraysize, align 8
  %call = call ptr %35(ptr noundef %33, i32 noundef 1, i64 noundef %36) #2
  %37 = load ptr, ptr %cquantize, align 8
  %fserrors38 = getelementptr inbounds %struct.my_cquantizer, ptr %37, i64 0, i32 5
  store ptr %call, ptr %fserrors38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34
  %38 = load ptr, ptr %cquantize, align 8
  %fserrors40 = getelementptr inbounds %struct.my_cquantizer, ptr %38, i64 0, i32 5
  %39 = load ptr, ptr %fserrors40, align 8
  %40 = load i64, ptr %arraysize, align 8
  call void @jzero_far(ptr noundef %39, i64 noundef %40) #2
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %38, i64 0, i32 7
  %41 = load ptr, ptr %error_limiter, align 8
  %cmp41 = icmp eq ptr %41, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  %42 = load ptr, ptr %cinfo.addr, align 8
  call void @init_error_limit(ptr noundef %42)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39
  %43 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %43, i64 0, i32 6
  store i32 0, ptr %on_odd_row, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end31, %if.end44, %if.then4
  %44 = load ptr, ptr %cquantize, align 8
  %needs_zeroed47 = getelementptr inbounds %struct.my_cquantizer, ptr %44, i64 0, i32 4
  %45 = load i32, ptr %needs_zeroed47, align 8
  %tobool48.not = icmp eq i32 %45, 0
  br i1 %tobool48.not, label %if.end54, label %for.cond

for.cond:                                         ; preds = %if.end46, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 0, %if.end46 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp50 = icmp slt i32 %storemerge, 32
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %histogram, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %46, i64 %idxprom
  %48 = load ptr, ptr %arrayidx52, align 8
  call void @jzero_far(ptr noundef %48, i64 noundef 4096) #2
  %49 = load i32, ptr %i, align 4
  %inc = add nsw i32 %49, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %cquantize, align 8
  %needs_zeroed53 = getelementptr inbounds %struct.my_cquantizer, ptr %50, i64 0, i32 4
  store i32 0, ptr %needs_zeroed53, align 8
  br label %if.end54

if.end54:                                         ; preds = %for.end, %if.end46
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @new_color_map_2_quant(ptr noundef %cinfo) #0 {
entry:
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 4
  store i32 1, ptr %needs_zeroed, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @init_error_limit(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %table = alloca ptr, align 8
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 2044) #2
  %add.ptr = getelementptr inbounds i32, ptr %call, i64 255
  store ptr %add.ptr, ptr %table, align 8
  %4 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 7
  store ptr %add.ptr, ptr %error_limiter, align 8
  store i32 0, ptr %out, align 4
  store i32 0, ptr %in, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %5 = load i32, ptr %in, align 4
  %cmp = icmp slt i32 %5, 16
  br i1 %cmp, label %for.body, label %for.cond6

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %out, align 4
  %7 = load ptr, ptr %table, align 8
  %8 = load i32, ptr %in, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  store i32 %6, ptr %arrayidx, align 4
  %sub = sub nsw i32 0, %6
  %sub2 = sub nsw i32 0, %8
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 %idxprom3
  store i32 %sub, ptr %arrayidx4, align 4
  %9 = load i32, ptr %in, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %in, align 4
  %10 = load i32, ptr %out, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, ptr %out, align 4
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.body8
  %11 = load i32, ptr %in, align 4
  %cmp7 = icmp slt i32 %11, 48
  br i1 %cmp7, label %for.body8, label %for.cond18

for.body8:                                        ; preds = %for.cond6
  %12 = load i32, ptr %out, align 4
  %13 = load ptr, ptr %table, align 8
  %14 = load i32, ptr %in, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %13, i64 %idxprom9
  store i32 %12, ptr %arrayidx10, align 4
  %sub11 = sub nsw i32 0, %12
  %sub12 = sub nsw i32 0, %14
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %13, i64 %idxprom13
  store i32 %sub11, ptr %arrayidx14, align 4
  %15 = load i32, ptr %in, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, ptr %in, align 4
  %and = and i32 %inc16, 1
  %16 = xor i32 %and, 1
  %17 = load i32, ptr %out, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, ptr %out, align 4
  br label %for.cond6, !llvm.loop !10

for.cond18:                                       ; preds = %for.cond6, %for.body20
  %18 = load i32, ptr %in, align 4
  %cmp19 = icmp slt i32 %18, 256
  br i1 %cmp19, label %for.body20, label %for.end29

for.body20:                                       ; preds = %for.cond18
  %19 = load i32, ptr %out, align 4
  %20 = load ptr, ptr %table, align 8
  %21 = load i32, ptr %in, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %20, i64 %idxprom21
  store i32 %19, ptr %arrayidx22, align 4
  %sub23 = sub nsw i32 0, %19
  %sub24 = sub nsw i32 0, %21
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %20, i64 %idxprom25
  store i32 %sub23, ptr %arrayidx26, align 4
  %22 = load i32, ptr %in, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, ptr %in, align 4
  br label %for.cond18, !llvm.loop !11

for.end29:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prescan_quantize(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %histp = alloca ptr, align 8
  %histogram = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %width, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  store i32 %storemerge, ptr %row, align 4
  %4 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input_buf.addr, align 8
  %6 = load i32, ptr %row, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %ptr, align 8
  %8 = load i32, ptr %width, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %if.end, %for.body
  %storemerge1 = phi i32 [ %8, %for.body ], [ %dec22, %if.end ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp4.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp4.not, label %for.inc23, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %9 = load ptr, ptr %histogram, align 8
  %10 = load ptr, ptr %ptr, align 8
  %11 = load i8, ptr %10, align 1
  %12 = lshr i8 %11, 3
  %idxprom7 = zext i8 %12 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %9, i64 %idxprom7
  %13 = load ptr, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = load i8, ptr %arrayidx9, align 1
  %15 = lshr i8 %14, 2
  %idxprom12 = zext i8 %15 to i64
  %16 = load ptr, ptr %ptr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx14, align 1
  %18 = lshr i8 %17, 3
  %idxprom17 = zext i8 %18 to i64
  %arrayidx18 = getelementptr inbounds [32 x i16], ptr %13, i64 %idxprom12, i64 %idxprom17
  store ptr %arrayidx18, ptr %histp, align 8
  %19 = load i16, ptr %arrayidx18, align 2
  %inc = add i16 %19, 1
  store i16 %inc, ptr %arrayidx18, align 2
  %cmp20 = icmp eq i16 %inc, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %20 = load ptr, ptr %histp, align 8
  %21 = load i16, ptr %20, align 2
  %dec = add i16 %21, -1
  store i16 %dec, ptr %20, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %22 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 3
  store ptr %add.ptr, ptr %ptr, align 8
  %23 = load i32, ptr %col, align 4
  %dec22 = add i32 %23, -1
  br label %for.cond3, !llvm.loop !12

for.inc23:                                        ; preds = %for.cond3
  %24 = load i32, ptr %row, align 4
  %inc24 = add nsw i32 %24, 1
  br label %for.cond, !llvm.loop !13

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass1(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %sv_colormap, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 32
  store ptr %1, ptr %colormap, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %desired = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %desired, align 8
  call void @select_colors(ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 4
  store i32 1, ptr %needs_zeroed, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass2_fs_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %histogram = alloca ptr, align 8
  %cur0 = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %cur2 = alloca i32, align 4
  %belowerr0 = alloca i32, align 4
  %belowerr1 = alloca i32, align 4
  %belowerr2 = alloca i32, align 4
  %bpreverr0 = alloca i32, align 4
  %bpreverr1 = alloca i32, align 4
  %bpreverr2 = alloca i32, align 4
  %errorptr = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %cachep = alloca ptr, align 8
  %dir = alloca i32, align 4
  %dir3 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %error_limit = alloca ptr, align 8
  %colormap0 = alloca ptr, align 8
  %colormap1 = alloca ptr, align 8
  %colormap2 = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %bnexterr = alloca i32, align 4
  %delta = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %width, align 4
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 61
  %4 = load ptr, ptr %sample_range_limit, align 8
  store ptr %4, ptr %range_limit, align 8
  %5 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %error_limiter, align 8
  store ptr %6, ptr %error_limit, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 32
  %8 = load ptr, ptr %colormap, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %colormap0, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %arrayidx4, align 8
  store ptr %10, ptr %colormap1, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %colormap5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 32
  %12 = load ptr, ptr %colormap5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx6, align 8
  store ptr %13, ptr %colormap2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.end ]
  store i32 %storemerge, ptr %row, align 4
  %14 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %14
  br i1 %cmp, label %for.body, label %for.end134

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %input_buf.addr, align 8
  %16 = load i32, ptr %row, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx7, align 8
  store ptr %17, ptr %inptr, align 8
  %18 = load ptr, ptr %output_buf.addr, align 8
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %18, i64 %idxprom8
  %19 = load ptr, ptr %arrayidx9, align 8
  store ptr %19, ptr %outptr, align 8
  %20 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %20, i64 0, i32 6
  %21 = load i32, ptr %on_odd_row, align 8
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %22 = load i32, ptr %width, align 4
  %23 = mul i32 %22, 3
  %mul = add i32 %23, -3
  %24 = load ptr, ptr %inptr, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  store ptr %add.ptr, ptr %inptr, align 8
  %25 = load i32, ptr %width, align 4
  %sub10 = add i32 %25, -1
  %26 = load ptr, ptr %outptr, align 8
  %idx.ext11 = zext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %26, i64 %idx.ext11
  store ptr %add.ptr12, ptr %outptr, align 8
  store i32 -1, ptr %dir, align 4
  store i32 -3, ptr %dir3, align 4
  %27 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %27, i64 0, i32 5
  %28 = load ptr, ptr %fserrors, align 8
  %29 = load i32, ptr %width, align 4
  %30 = mul i32 %29, 3
  %mul13 = add i32 %30, 3
  %idx.ext14 = zext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i16, ptr %28, i64 %idx.ext14
  store ptr %add.ptr15, ptr %errorptr, align 8
  %31 = load ptr, ptr %cquantize, align 8
  %on_odd_row16 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 6
  store i32 0, ptr %on_odd_row16, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 1, ptr %dir, align 4
  store i32 3, ptr %dir3, align 4
  %32 = load ptr, ptr %cquantize, align 8
  %fserrors17 = getelementptr inbounds %struct.my_cquantizer, ptr %32, i64 0, i32 5
  %33 = load ptr, ptr %fserrors17, align 8
  store ptr %33, ptr %errorptr, align 8
  %on_odd_row18 = getelementptr inbounds %struct.my_cquantizer, ptr %32, i64 0, i32 6
  store i32 1, ptr %on_odd_row18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %cur2, align 4
  store i32 0, ptr %cur1, align 4
  store i32 0, ptr %cur0, align 4
  store i32 0, ptr %belowerr2, align 4
  store i32 0, ptr %belowerr1, align 4
  store i32 0, ptr %belowerr0, align 4
  store i32 0, ptr %bpreverr2, align 4
  store i32 0, ptr %bpreverr1, align 4
  store i32 0, ptr %bpreverr0, align 4
  %34 = load i32, ptr %width, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %if.end81, %if.end
  %storemerge1 = phi i32 [ %34, %if.end ], [ %dec, %if.end81 ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp20.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp20.not, label %for.end, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %35 = load i32, ptr %cur0, align 4
  %36 = load ptr, ptr %errorptr, align 8
  %37 = load i32, ptr %dir3, align 4
  %idxprom23 = sext i32 %37 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %36, i64 %idxprom23
  %38 = load i16, ptr %arrayidx24, align 2
  %conv = sext i16 %38 to i32
  %add25 = add nsw i32 %35, %conv
  %add26 = add nsw i32 %add25, 8
  %shr = ashr i32 %add26, 4
  store i32 %shr, ptr %cur0, align 4
  %39 = load i32, ptr %cur1, align 4
  %40 = load ptr, ptr %errorptr, align 8
  %41 = load i32, ptr %dir3, align 4
  %add27 = add nsw i32 %41, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %40, i64 %idxprom28
  %42 = load i16, ptr %arrayidx29, align 2
  %conv30 = sext i16 %42 to i32
  %add31 = add nsw i32 %39, %conv30
  %add32 = add nsw i32 %add31, 8
  %shr33 = ashr i32 %add32, 4
  store i32 %shr33, ptr %cur1, align 4
  %43 = load i32, ptr %cur2, align 4
  %44 = load ptr, ptr %errorptr, align 8
  %45 = load i32, ptr %dir3, align 4
  %add34 = add nsw i32 %45, 2
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %44, i64 %idxprom35
  %46 = load i16, ptr %arrayidx36, align 2
  %conv37 = sext i16 %46 to i32
  %add38 = add nsw i32 %43, %conv37
  %add39 = add nsw i32 %add38, 8
  %shr40 = ashr i32 %add39, 4
  store i32 %shr40, ptr %cur2, align 4
  %47 = load ptr, ptr %error_limit, align 8
  %48 = load i32, ptr %cur0, align 4
  %idxprom41 = sext i32 %48 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %47, i64 %idxprom41
  %49 = load i32, ptr %arrayidx42, align 4
  store i32 %49, ptr %cur0, align 4
  %50 = load i32, ptr %cur1, align 4
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %47, i64 %idxprom43
  %51 = load i32, ptr %arrayidx44, align 4
  store i32 %51, ptr %cur1, align 4
  %52 = load ptr, ptr %error_limit, align 8
  %53 = load i32, ptr %cur2, align 4
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %52, i64 %idxprom45
  %54 = load i32, ptr %arrayidx46, align 4
  store i32 %54, ptr %cur2, align 4
  %55 = load ptr, ptr %inptr, align 8
  %56 = load i8, ptr %55, align 1
  %conv48 = zext i8 %56 to i32
  %57 = load i32, ptr %cur0, align 4
  %add49 = add nsw i32 %57, %conv48
  store i32 %add49, ptr %cur0, align 4
  %arrayidx50 = getelementptr inbounds i8, ptr %55, i64 1
  %58 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %58 to i32
  %59 = load i32, ptr %cur1, align 4
  %add52 = add nsw i32 %59, %conv51
  store i32 %add52, ptr %cur1, align 4
  %60 = load ptr, ptr %inptr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %60, i64 2
  %61 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %61 to i32
  %62 = load i32, ptr %cur2, align 4
  %add55 = add nsw i32 %62, %conv54
  store i32 %add55, ptr %cur2, align 4
  %63 = load ptr, ptr %range_limit, align 8
  %64 = load i32, ptr %cur0, align 4
  %idxprom56 = sext i32 %64 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %63, i64 %idxprom56
  %65 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %65 to i32
  store i32 %conv58, ptr %cur0, align 4
  %66 = load ptr, ptr %range_limit, align 8
  %67 = load i32, ptr %cur1, align 4
  %idxprom59 = sext i32 %67 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %66, i64 %idxprom59
  %68 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %68 to i32
  store i32 %conv61, ptr %cur1, align 4
  %69 = load ptr, ptr %range_limit, align 8
  %70 = load i32, ptr %cur2, align 4
  %idxprom62 = sext i32 %70 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %69, i64 %idxprom62
  %71 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %71 to i32
  store i32 %conv64, ptr %cur2, align 4
  %72 = load ptr, ptr %histogram, align 8
  %73 = load i32, ptr %cur0, align 4
  %shr65 = ashr i32 %73, 3
  %idxprom66 = sext i32 %shr65 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %72, i64 %idxprom66
  %74 = load ptr, ptr %arrayidx67, align 8
  %75 = load i32, ptr %cur1, align 4
  %shr68 = ashr i32 %75, 2
  %idxprom69 = sext i32 %shr68 to i64
  %76 = load i32, ptr %cur2, align 4
  %shr71 = ashr i32 %76, 3
  %idxprom72 = sext i32 %shr71 to i64
  %arrayidx73 = getelementptr inbounds [32 x i16], ptr %74, i64 %idxprom69, i64 %idxprom72
  store ptr %arrayidx73, ptr %cachep, align 8
  %77 = load i16, ptr %arrayidx73, align 2
  %cmp75 = icmp eq i16 %77, 0
  br i1 %cmp75, label %if.then77, label %if.end81

if.then77:                                        ; preds = %for.body21
  %78 = load ptr, ptr %cinfo.addr, align 8
  %79 = load i32, ptr %cur0, align 4
  %shr78 = ashr i32 %79, 3
  %80 = load i32, ptr %cur1, align 4
  %shr79 = ashr i32 %80, 2
  %81 = load i32, ptr %cur2, align 4
  %shr80 = ashr i32 %81, 3
  call void @fill_inverse_cmap(ptr noundef %78, i32 noundef %shr78, i32 noundef %shr79, i32 noundef %shr80)
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %for.body21
  %82 = load ptr, ptr %cachep, align 8
  %83 = load i16, ptr %82, align 2
  %conv82 = zext i16 %83 to i32
  %sub83 = add nsw i32 %conv82, -1
  store i32 %sub83, ptr %pixcode, align 4
  %conv84 = trunc i32 %sub83 to i8
  %84 = load ptr, ptr %outptr, align 8
  store i8 %conv84, ptr %84, align 1
  %85 = load ptr, ptr %colormap0, align 8
  %idxprom85 = sext i32 %sub83 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %85, i64 %idxprom85
  %86 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %86 to i32
  %87 = load i32, ptr %cur0, align 4
  %sub88 = sub nsw i32 %87, %conv87
  store i32 %sub88, ptr %cur0, align 4
  %88 = load ptr, ptr %colormap1, align 8
  %89 = load i32, ptr %pixcode, align 4
  %idxprom89 = sext i32 %89 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %88, i64 %idxprom89
  %90 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %90 to i32
  %91 = load i32, ptr %cur1, align 4
  %sub92 = sub nsw i32 %91, %conv91
  store i32 %sub92, ptr %cur1, align 4
  %92 = load ptr, ptr %colormap2, align 8
  %93 = load i32, ptr %pixcode, align 4
  %idxprom93 = sext i32 %93 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %92, i64 %idxprom93
  %94 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %94 to i32
  %95 = load i32, ptr %cur2, align 4
  %sub96 = sub nsw i32 %95, %conv95
  store i32 %sub96, ptr %cur2, align 4
  %96 = load i32, ptr %cur0, align 4
  store i32 %96, ptr %bnexterr, align 4
  %mul97 = shl nsw i32 %96, 1
  store i32 %mul97, ptr %delta, align 4
  %add98 = mul nsw i32 %96, 3
  store i32 %add98, ptr %cur0, align 4
  %97 = load i32, ptr %bpreverr0, align 4
  %add99 = add nsw i32 %97, %add98
  %conv100 = trunc i32 %add99 to i16
  %98 = load ptr, ptr %errorptr, align 8
  store i16 %conv100, ptr %98, align 2
  %99 = load i32, ptr %delta, align 4
  %100 = load i32, ptr %cur0, align 4
  %add102 = add nsw i32 %100, %99
  store i32 %add102, ptr %cur0, align 4
  %101 = load i32, ptr %belowerr0, align 4
  %add103 = add nsw i32 %101, %add102
  store i32 %add103, ptr %bpreverr0, align 4
  %102 = load i32, ptr %bnexterr, align 4
  store i32 %102, ptr %belowerr0, align 4
  %103 = load i32, ptr %delta, align 4
  %104 = load i32, ptr %cur0, align 4
  %add104 = add nsw i32 %104, %103
  store i32 %add104, ptr %cur0, align 4
  %105 = load i32, ptr %cur1, align 4
  store i32 %105, ptr %bnexterr, align 4
  %mul105 = shl nsw i32 %105, 1
  store i32 %mul105, ptr %delta, align 4
  %add106 = mul nsw i32 %105, 3
  store i32 %add106, ptr %cur1, align 4
  %106 = load i32, ptr %bpreverr1, align 4
  %add107 = add nsw i32 %106, %add106
  %conv108 = trunc i32 %add107 to i16
  %107 = load ptr, ptr %errorptr, align 8
  %arrayidx109 = getelementptr inbounds i16, ptr %107, i64 1
  store i16 %conv108, ptr %arrayidx109, align 2
  %108 = load i32, ptr %delta, align 4
  %109 = load i32, ptr %cur1, align 4
  %add110 = add nsw i32 %109, %108
  store i32 %add110, ptr %cur1, align 4
  %110 = load i32, ptr %belowerr1, align 4
  %add111 = add nsw i32 %110, %add110
  store i32 %add111, ptr %bpreverr1, align 4
  %111 = load i32, ptr %bnexterr, align 4
  store i32 %111, ptr %belowerr1, align 4
  %112 = load i32, ptr %delta, align 4
  %113 = load i32, ptr %cur1, align 4
  %add112 = add nsw i32 %113, %112
  store i32 %add112, ptr %cur1, align 4
  %114 = load i32, ptr %cur2, align 4
  store i32 %114, ptr %bnexterr, align 4
  %mul113 = shl nsw i32 %114, 1
  store i32 %mul113, ptr %delta, align 4
  %add114 = mul nsw i32 %114, 3
  store i32 %add114, ptr %cur2, align 4
  %115 = load i32, ptr %bpreverr2, align 4
  %add115 = add nsw i32 %115, %add114
  %conv116 = trunc i32 %add115 to i16
  %116 = load ptr, ptr %errorptr, align 8
  %arrayidx117 = getelementptr inbounds i16, ptr %116, i64 2
  store i16 %conv116, ptr %arrayidx117, align 2
  %117 = load i32, ptr %delta, align 4
  %118 = load i32, ptr %cur2, align 4
  %add118 = add nsw i32 %118, %117
  store i32 %add118, ptr %cur2, align 4
  %119 = load i32, ptr %belowerr2, align 4
  %add119 = add nsw i32 %119, %add118
  store i32 %add119, ptr %bpreverr2, align 4
  %120 = load i32, ptr %bnexterr, align 4
  store i32 %120, ptr %belowerr2, align 4
  %121 = load i32, ptr %delta, align 4
  %122 = load i32, ptr %cur2, align 4
  %add120 = add nsw i32 %122, %121
  store i32 %add120, ptr %cur2, align 4
  %123 = load i32, ptr %dir3, align 4
  %124 = load ptr, ptr %inptr, align 8
  %idx.ext121 = sext i32 %123 to i64
  %add.ptr122 = getelementptr inbounds i8, ptr %124, i64 %idx.ext121
  store ptr %add.ptr122, ptr %inptr, align 8
  %125 = load i32, ptr %dir, align 4
  %126 = load ptr, ptr %outptr, align 8
  %idx.ext123 = sext i32 %125 to i64
  %add.ptr124 = getelementptr inbounds i8, ptr %126, i64 %idx.ext123
  store ptr %add.ptr124, ptr %outptr, align 8
  %127 = load i32, ptr %dir3, align 4
  %128 = load ptr, ptr %errorptr, align 8
  %idx.ext125 = sext i32 %127 to i64
  %add.ptr126 = getelementptr inbounds i16, ptr %128, i64 %idx.ext125
  store ptr %add.ptr126, ptr %errorptr, align 8
  %129 = load i32, ptr %col, align 4
  %dec = add i32 %129, -1
  br label %for.cond19, !llvm.loop !14

for.end:                                          ; preds = %for.cond19
  %130 = load i32, ptr %bpreverr0, align 4
  %conv127 = trunc i32 %130 to i16
  %131 = load ptr, ptr %errorptr, align 8
  store i16 %conv127, ptr %131, align 2
  %132 = load i32, ptr %bpreverr1, align 4
  %conv129 = trunc i32 %132 to i16
  %arrayidx130 = getelementptr inbounds i16, ptr %131, i64 1
  store i16 %conv129, ptr %arrayidx130, align 2
  %133 = load i32, ptr %bpreverr2, align 4
  %conv131 = trunc i32 %133 to i16
  %134 = load ptr, ptr %errorptr, align 8
  %arrayidx132 = getelementptr inbounds i16, ptr %134, i64 2
  store i16 %conv131, ptr %arrayidx132, align 2
  %135 = load i32, ptr %row, align 4
  %inc = add nsw i32 %135, 1
  br label %for.cond, !llvm.loop !15

for.end134:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @pass2_no_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %histogram = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %cachep = alloca ptr, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %width, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc26 ]
  store i32 %storemerge, ptr %row, align 4
  %4 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input_buf.addr, align 8
  %6 = load i32, ptr %row, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %inptr, align 8
  %8 = load ptr, ptr %output_buf.addr, align 8
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 %idxprom3
  %9 = load ptr, ptr %arrayidx4, align 8
  store ptr %9, ptr %outptr, align 8
  %10 = load i32, ptr %width, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %if.end, %for.body
  %storemerge1 = phi i32 [ %10, %for.body ], [ %dec, %if.end ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp6.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp6.not, label %for.inc26, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %11 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %12 = load i8, ptr %11, align 1
  %13 = lshr i8 %12, 3
  %14 = zext i8 %13 to i32
  store i32 %14, ptr %c0, align 4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %incdec.ptr8, ptr %inptr, align 8
  %15 = load i8, ptr %incdec.ptr, align 1
  %16 = lshr i8 %15, 2
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %c1, align 4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %11, i64 3
  store ptr %incdec.ptr11, ptr %inptr, align 8
  %18 = load i8, ptr %incdec.ptr8, align 1
  %19 = lshr i8 %18, 3
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %c2, align 4
  %21 = load ptr, ptr %histogram, align 8
  %22 = load i32, ptr %c0, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %21, i64 %idxprom14
  %23 = load ptr, ptr %arrayidx15, align 8
  %24 = load i32, ptr %c1, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load i32, ptr %c2, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [32 x i16], ptr %23, i64 %idxprom16, i64 %idxprom18
  store ptr %arrayidx19, ptr %cachep, align 8
  %26 = load i16, ptr %arrayidx19, align 2
  %cmp21 = icmp eq i16 %26, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load i32, ptr %c0, align 4
  %29 = load i32, ptr %c1, align 4
  %30 = load i32, ptr %c2, align 4
  call void @fill_inverse_cmap(ptr noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %31 = load ptr, ptr %cachep, align 8
  %32 = load i16, ptr %31, align 2
  %conv23 = trunc i16 %32 to i8
  %sub = add i8 %conv23, -1
  %33 = load ptr, ptr %outptr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr25, ptr %outptr, align 8
  store i8 %sub, ptr %33, align 1
  %34 = load i32, ptr %col, align 4
  %dec = add i32 %34, -1
  br label %for.cond5, !llvm.loop !16

for.inc26:                                        ; preds = %for.cond5
  %35 = load i32, ptr %row, align 4
  %inc = add nsw i32 %35, 1
  br label %for.cond, !llvm.loop !17

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass2(ptr noundef %cinfo) #0 {
entry:
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @select_colors(ptr noundef %cinfo, i32 noundef %desired_colors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %desired_colors.addr = alloca i32, align 4
  %boxlist = alloca ptr, align 8
  %numboxes = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %desired_colors, ptr %desired_colors.addr, align 4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %conv = sext i32 %desired_colors to i64
  %mul = mul nsw i64 %conv, 40
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef %mul) #2
  store ptr %call, ptr %boxlist, align 8
  store i32 1, ptr %numboxes, align 4
  store i32 0, ptr %call, align 8
  %c0max = getelementptr inbounds %struct.box, ptr %call, i64 0, i32 1
  store i32 31, ptr %c0max, align 4
  %c1min = getelementptr inbounds %struct.box, ptr %call, i64 0, i32 2
  store i32 0, ptr %c1min, align 8
  %2 = load ptr, ptr %boxlist, align 8
  %c1max = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 3
  store i32 63, ptr %c1max, align 4
  %c2min = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 4
  store i32 0, ptr %c2min, align 8
  %c2max = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 5
  store i32 31, ptr %c2max, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %boxlist, align 8
  call void @update_box(ptr noundef %3, ptr noundef %4)
  %5 = load i32, ptr %numboxes, align 4
  %6 = load i32, ptr %desired_colors.addr, align 4
  %call7 = call i32 @median_cut(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  store i32 %call7, ptr %numboxes, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %7 = load i32, ptr %numboxes, align 4
  %cmp = icmp slt i32 %storemerge, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %boxlist, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds %struct.box, ptr %9, i64 %idxprom
  call void @compute_color(ptr noundef %8, ptr noundef %arrayidx9, i32 noundef %10)
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %numboxes, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 31
  store i32 %12, ptr %actual_number_of_colors, align 4
  %14 = load ptr, ptr %13, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 95, ptr %msg_code, align 8
  %15 = load i32, ptr %numboxes, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 %15, ptr %msg_parm, align 4
  %18 = load ptr, ptr %16, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %emit_message, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20, i32 noundef 1) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_box(ptr noundef %cinfo, ptr noundef %boxp) #0 {
entry:
  %boxp.addr = alloca ptr, align 8
  %histogram = alloca ptr, align 8
  %histp = alloca ptr, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c0min = alloca i32, align 4
  %c0max = alloca i32, align 4
  %c1min = alloca i32, align 4
  %c1max = alloca i32, align 4
  %c2min = alloca i32, align 4
  %c2max = alloca i32, align 4
  %dist0 = alloca i64, align 8
  %dist1 = alloca i64, align 8
  %ccount = alloca i64, align 8
  store ptr %boxp, ptr %boxp.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  %2 = load i32, ptr %boxp, align 8
  store i32 %2, ptr %c0min, align 4
  %3 = load ptr, ptr %boxp.addr, align 8
  %c0max4 = getelementptr inbounds %struct.box, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %c0max4, align 4
  store i32 %4, ptr %c0max, align 4
  %c1min5 = getelementptr inbounds %struct.box, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %c1min5, align 8
  store i32 %5, ptr %c1min, align 4
  %6 = load ptr, ptr %boxp.addr, align 8
  %c1max6 = getelementptr inbounds %struct.box, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %c1max6, align 4
  store i32 %7, ptr %c1max, align 4
  %c2min7 = getelementptr inbounds %struct.box, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %c2min7, align 8
  store i32 %8, ptr %c2min, align 4
  %9 = load ptr, ptr %boxp.addr, align 8
  %c2max8 = getelementptr inbounds %struct.box, ptr %9, i64 0, i32 5
  %10 = load i32, ptr %c2max8, align 4
  store i32 %10, ptr %c2max, align 4
  %11 = load i32, ptr %c0max, align 4
  %12 = load i32, ptr %c0min, align 4
  %cmp = icmp sgt i32 %11, %12
  br i1 %cmp, label %if.then, label %have_c0min

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %c0min, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.then
  %storemerge15 = phi i32 [ %13, %if.then ], [ %inc28, %for.inc27 ]
  store i32 %storemerge15, ptr %c0, align 4
  %14 = load i32, ptr %c0max, align 4
  %cmp9.not = icmp sgt i32 %storemerge15, %14
  br i1 %cmp9.not, label %have_c0min, label %for.body

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %c1min, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc24, %for.body
  %storemerge16 = phi i32 [ %15, %for.body ], [ %inc25, %for.inc24 ]
  store i32 %storemerge16, ptr %c1, align 4
  %16 = load i32, ptr %c1max, align 4
  %cmp11.not = icmp sgt i32 %storemerge16, %16
  br i1 %cmp11.not, label %for.inc27, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %17 = load ptr, ptr %histogram, align 8
  %18 = load i32, ptr %c0, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %19 = load ptr, ptr %arrayidx, align 8
  %20 = load i32, ptr %c1, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load i32, ptr %c2min, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [32 x i16], ptr %19, i64 %idxprom13, i64 %idxprom15
  store ptr %arrayidx16, ptr %histp, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body12
  %storemerge17 = phi i32 [ %21, %for.body12 ], [ %inc, %for.inc ]
  store i32 %storemerge17, ptr %c2, align 4
  %22 = load i32, ptr %c2max, align 4
  %cmp18.not = icmp sgt i32 %storemerge17, %22
  br i1 %cmp18.not, label %for.inc24, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %23 = load ptr, ptr %histp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %23, i64 1
  store ptr %incdec.ptr, ptr %histp, align 8
  %24 = load i16, ptr %23, align 2
  %cmp20.not = icmp eq i16 %24, 0
  br i1 %cmp20.not, label %for.inc, label %if.then22

if.then22:                                        ; preds = %for.body19
  %25 = load i32, ptr %c0, align 4
  store i32 %25, ptr %c0min, align 4
  %26 = load ptr, ptr %boxp.addr, align 8
  store i32 %25, ptr %26, align 8
  br label %have_c0min

for.inc:                                          ; preds = %for.body19
  %27 = load i32, ptr %c2, align 4
  %inc = add nsw i32 %27, 1
  br label %for.cond17, !llvm.loop !19

for.inc24:                                        ; preds = %for.cond17
  %28 = load i32, ptr %c1, align 4
  %inc25 = add nsw i32 %28, 1
  br label %for.cond10, !llvm.loop !20

for.inc27:                                        ; preds = %for.cond10
  %29 = load i32, ptr %c0, align 4
  %inc28 = add nsw i32 %29, 1
  br label %for.cond, !llvm.loop !21

have_c0min:                                       ; preds = %entry, %for.cond, %if.then22
  %30 = load i32, ptr %c0max, align 4
  %31 = load i32, ptr %c0min, align 4
  %cmp31 = icmp sgt i32 %30, %31
  br i1 %cmp31, label %if.then33, label %have_c0max

if.then33:                                        ; preds = %have_c0min
  %32 = load i32, ptr %c0max, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc65, %if.then33
  %storemerge12 = phi i32 [ %32, %if.then33 ], [ %dec, %for.inc65 ]
  store i32 %storemerge12, ptr %c0, align 4
  %33 = load i32, ptr %c0min, align 4
  %cmp35.not = icmp slt i32 %storemerge12, %33
  br i1 %cmp35.not, label %have_c0max, label %for.body37

for.body37:                                       ; preds = %for.cond34
  %34 = load i32, ptr %c1min, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc62, %for.body37
  %storemerge13 = phi i32 [ %34, %for.body37 ], [ %inc63, %for.inc62 ]
  store i32 %storemerge13, ptr %c1, align 4
  %35 = load i32, ptr %c1max, align 4
  %cmp39.not = icmp sgt i32 %storemerge13, %35
  br i1 %cmp39.not, label %for.inc65, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %36 = load ptr, ptr %histogram, align 8
  %37 = load i32, ptr %c0, align 4
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %36, i64 %idxprom42
  %38 = load ptr, ptr %arrayidx43, align 8
  %39 = load i32, ptr %c1, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load i32, ptr %c2min, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds [32 x i16], ptr %38, i64 %idxprom44, i64 %idxprom46
  store ptr %arrayidx47, ptr %histp, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body41
  %storemerge14 = phi i32 [ %40, %for.body41 ], [ %inc60, %for.inc59 ]
  store i32 %storemerge14, ptr %c2, align 4
  %41 = load i32, ptr %c2max, align 4
  %cmp49.not = icmp sgt i32 %storemerge14, %41
  br i1 %cmp49.not, label %for.inc62, label %for.body51

for.body51:                                       ; preds = %for.cond48
  %42 = load ptr, ptr %histp, align 8
  %incdec.ptr52 = getelementptr inbounds i16, ptr %42, i64 1
  store ptr %incdec.ptr52, ptr %histp, align 8
  %43 = load i16, ptr %42, align 2
  %cmp54.not = icmp eq i16 %43, 0
  br i1 %cmp54.not, label %for.inc59, label %if.then56

if.then56:                                        ; preds = %for.body51
  %44 = load i32, ptr %c0, align 4
  store i32 %44, ptr %c0max, align 4
  %45 = load ptr, ptr %boxp.addr, align 8
  %c0max57 = getelementptr inbounds %struct.box, ptr %45, i64 0, i32 1
  store i32 %44, ptr %c0max57, align 4
  br label %have_c0max

for.inc59:                                        ; preds = %for.body51
  %46 = load i32, ptr %c2, align 4
  %inc60 = add nsw i32 %46, 1
  br label %for.cond48, !llvm.loop !22

for.inc62:                                        ; preds = %for.cond48
  %47 = load i32, ptr %c1, align 4
  %inc63 = add nsw i32 %47, 1
  br label %for.cond38, !llvm.loop !23

for.inc65:                                        ; preds = %for.cond38
  %48 = load i32, ptr %c0, align 4
  %dec = add nsw i32 %48, -1
  br label %for.cond34, !llvm.loop !24

have_c0max:                                       ; preds = %have_c0min, %for.cond34, %if.then56
  %49 = load i32, ptr %c1max, align 4
  %50 = load i32, ptr %c1min, align 4
  %cmp68 = icmp sgt i32 %49, %50
  br i1 %cmp68, label %if.then70, label %have_c1min

if.then70:                                        ; preds = %have_c0max
  %51 = load i32, ptr %c1min, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc102, %if.then70
  %storemerge9 = phi i32 [ %51, %if.then70 ], [ %inc103, %for.inc102 ]
  store i32 %storemerge9, ptr %c1, align 4
  %52 = load i32, ptr %c1max, align 4
  %cmp72.not = icmp sgt i32 %storemerge9, %52
  br i1 %cmp72.not, label %have_c1min, label %for.body74

for.body74:                                       ; preds = %for.cond71
  %53 = load i32, ptr %c0min, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc99, %for.body74
  %storemerge10 = phi i32 [ %53, %for.body74 ], [ %inc100, %for.inc99 ]
  store i32 %storemerge10, ptr %c0, align 4
  %54 = load i32, ptr %c0max, align 4
  %cmp76.not = icmp sgt i32 %storemerge10, %54
  br i1 %cmp76.not, label %for.inc102, label %for.body78

for.body78:                                       ; preds = %for.cond75
  %55 = load ptr, ptr %histogram, align 8
  %56 = load i32, ptr %c0, align 4
  %idxprom79 = sext i32 %56 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %55, i64 %idxprom79
  %57 = load ptr, ptr %arrayidx80, align 8
  %58 = load i32, ptr %c1, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load i32, ptr %c2min, align 4
  %idxprom83 = sext i32 %59 to i64
  %arrayidx84 = getelementptr inbounds [32 x i16], ptr %57, i64 %idxprom81, i64 %idxprom83
  store ptr %arrayidx84, ptr %histp, align 8
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc96, %for.body78
  %storemerge11 = phi i32 [ %59, %for.body78 ], [ %inc97, %for.inc96 ]
  store i32 %storemerge11, ptr %c2, align 4
  %60 = load i32, ptr %c2max, align 4
  %cmp86.not = icmp sgt i32 %storemerge11, %60
  br i1 %cmp86.not, label %for.inc99, label %for.body88

for.body88:                                       ; preds = %for.cond85
  %61 = load ptr, ptr %histp, align 8
  %incdec.ptr89 = getelementptr inbounds i16, ptr %61, i64 1
  store ptr %incdec.ptr89, ptr %histp, align 8
  %62 = load i16, ptr %61, align 2
  %cmp91.not = icmp eq i16 %62, 0
  br i1 %cmp91.not, label %for.inc96, label %if.then93

if.then93:                                        ; preds = %for.body88
  %63 = load i32, ptr %c1, align 4
  store i32 %63, ptr %c1min, align 4
  %64 = load ptr, ptr %boxp.addr, align 8
  %c1min94 = getelementptr inbounds %struct.box, ptr %64, i64 0, i32 2
  store i32 %63, ptr %c1min94, align 8
  br label %have_c1min

for.inc96:                                        ; preds = %for.body88
  %65 = load i32, ptr %c2, align 4
  %inc97 = add nsw i32 %65, 1
  br label %for.cond85, !llvm.loop !25

for.inc99:                                        ; preds = %for.cond85
  %66 = load i32, ptr %c0, align 4
  %inc100 = add nsw i32 %66, 1
  br label %for.cond75, !llvm.loop !26

for.inc102:                                       ; preds = %for.cond75
  %67 = load i32, ptr %c1, align 4
  %inc103 = add nsw i32 %67, 1
  br label %for.cond71, !llvm.loop !27

have_c1min:                                       ; preds = %have_c0max, %for.cond71, %if.then93
  %68 = load i32, ptr %c1max, align 4
  %69 = load i32, ptr %c1min, align 4
  %cmp106 = icmp sgt i32 %68, %69
  br i1 %cmp106, label %if.then108, label %have_c1max

if.then108:                                       ; preds = %have_c1min
  %70 = load i32, ptr %c1max, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc140, %if.then108
  %storemerge6 = phi i32 [ %70, %if.then108 ], [ %dec141, %for.inc140 ]
  store i32 %storemerge6, ptr %c1, align 4
  %71 = load i32, ptr %c1min, align 4
  %cmp110.not = icmp slt i32 %storemerge6, %71
  br i1 %cmp110.not, label %have_c1max, label %for.body112

for.body112:                                      ; preds = %for.cond109
  %72 = load i32, ptr %c0min, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc137, %for.body112
  %storemerge7 = phi i32 [ %72, %for.body112 ], [ %inc138, %for.inc137 ]
  store i32 %storemerge7, ptr %c0, align 4
  %73 = load i32, ptr %c0max, align 4
  %cmp114.not = icmp sgt i32 %storemerge7, %73
  br i1 %cmp114.not, label %for.inc140, label %for.body116

for.body116:                                      ; preds = %for.cond113
  %74 = load ptr, ptr %histogram, align 8
  %75 = load i32, ptr %c0, align 4
  %idxprom117 = sext i32 %75 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %74, i64 %idxprom117
  %76 = load ptr, ptr %arrayidx118, align 8
  %77 = load i32, ptr %c1, align 4
  %idxprom119 = sext i32 %77 to i64
  %78 = load i32, ptr %c2min, align 4
  %idxprom121 = sext i32 %78 to i64
  %arrayidx122 = getelementptr inbounds [32 x i16], ptr %76, i64 %idxprom119, i64 %idxprom121
  store ptr %arrayidx122, ptr %histp, align 8
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc134, %for.body116
  %storemerge8 = phi i32 [ %78, %for.body116 ], [ %inc135, %for.inc134 ]
  store i32 %storemerge8, ptr %c2, align 4
  %79 = load i32, ptr %c2max, align 4
  %cmp124.not = icmp sgt i32 %storemerge8, %79
  br i1 %cmp124.not, label %for.inc137, label %for.body126

for.body126:                                      ; preds = %for.cond123
  %80 = load ptr, ptr %histp, align 8
  %incdec.ptr127 = getelementptr inbounds i16, ptr %80, i64 1
  store ptr %incdec.ptr127, ptr %histp, align 8
  %81 = load i16, ptr %80, align 2
  %cmp129.not = icmp eq i16 %81, 0
  br i1 %cmp129.not, label %for.inc134, label %if.then131

if.then131:                                       ; preds = %for.body126
  %82 = load i32, ptr %c1, align 4
  store i32 %82, ptr %c1max, align 4
  %83 = load ptr, ptr %boxp.addr, align 8
  %c1max132 = getelementptr inbounds %struct.box, ptr %83, i64 0, i32 3
  store i32 %82, ptr %c1max132, align 4
  br label %have_c1max

for.inc134:                                       ; preds = %for.body126
  %84 = load i32, ptr %c2, align 4
  %inc135 = add nsw i32 %84, 1
  br label %for.cond123, !llvm.loop !28

for.inc137:                                       ; preds = %for.cond123
  %85 = load i32, ptr %c0, align 4
  %inc138 = add nsw i32 %85, 1
  br label %for.cond113, !llvm.loop !29

for.inc140:                                       ; preds = %for.cond113
  %86 = load i32, ptr %c1, align 4
  %dec141 = add nsw i32 %86, -1
  br label %for.cond109, !llvm.loop !30

have_c1max:                                       ; preds = %have_c1min, %for.cond109, %if.then131
  %87 = load i32, ptr %c2max, align 4
  %88 = load i32, ptr %c2min, align 4
  %cmp144 = icmp sgt i32 %87, %88
  br i1 %cmp144, label %if.then146, label %have_c2min

if.then146:                                       ; preds = %have_c1max
  %89 = load i32, ptr %c2min, align 4
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc177, %if.then146
  %storemerge4 = phi i32 [ %89, %if.then146 ], [ %inc178, %for.inc177 ]
  store i32 %storemerge4, ptr %c2, align 4
  %90 = load i32, ptr %c2max, align 4
  %cmp148.not = icmp sgt i32 %storemerge4, %90
  br i1 %cmp148.not, label %have_c2min, label %for.body150

for.body150:                                      ; preds = %for.cond147
  %91 = load i32, ptr %c0min, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc174, %for.body150
  %storemerge5 = phi i32 [ %91, %for.body150 ], [ %inc175, %for.inc174 ]
  store i32 %storemerge5, ptr %c0, align 4
  %92 = load i32, ptr %c0max, align 4
  %cmp152.not = icmp sgt i32 %storemerge5, %92
  br i1 %cmp152.not, label %for.inc177, label %for.body154

for.body154:                                      ; preds = %for.cond151
  %93 = load ptr, ptr %histogram, align 8
  %94 = load i32, ptr %c0, align 4
  %idxprom155 = sext i32 %94 to i64
  %arrayidx156 = getelementptr inbounds ptr, ptr %93, i64 %idxprom155
  %95 = load ptr, ptr %arrayidx156, align 8
  %96 = load i32, ptr %c1min, align 4
  %idxprom157 = sext i32 %96 to i64
  %97 = load i32, ptr %c2, align 4
  %idxprom159 = sext i32 %97 to i64
  %arrayidx160 = getelementptr inbounds [32 x i16], ptr %95, i64 %idxprom157, i64 %idxprom159
  store ptr %arrayidx160, ptr %histp, align 8
  store i32 %96, ptr %c1, align 4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc171, %for.body154
  %98 = load i32, ptr %c1, align 4
  %99 = load i32, ptr %c1max, align 4
  %cmp162.not = icmp sgt i32 %98, %99
  br i1 %cmp162.not, label %for.inc174, label %for.body164

for.body164:                                      ; preds = %for.cond161
  %100 = load ptr, ptr %histp, align 8
  %101 = load i16, ptr %100, align 2
  %cmp166.not = icmp eq i16 %101, 0
  br i1 %cmp166.not, label %for.inc171, label %if.then168

if.then168:                                       ; preds = %for.body164
  %102 = load i32, ptr %c2, align 4
  store i32 %102, ptr %c2min, align 4
  %103 = load ptr, ptr %boxp.addr, align 8
  %c2min169 = getelementptr inbounds %struct.box, ptr %103, i64 0, i32 4
  store i32 %102, ptr %c2min169, align 8
  br label %have_c2min

for.inc171:                                       ; preds = %for.body164
  %104 = load i32, ptr %c1, align 4
  %inc172 = add nsw i32 %104, 1
  store i32 %inc172, ptr %c1, align 4
  %105 = load ptr, ptr %histp, align 8
  %add.ptr = getelementptr inbounds i16, ptr %105, i64 32
  store ptr %add.ptr, ptr %histp, align 8
  br label %for.cond161, !llvm.loop !31

for.inc174:                                       ; preds = %for.cond161
  %106 = load i32, ptr %c0, align 4
  %inc175 = add nsw i32 %106, 1
  br label %for.cond151, !llvm.loop !32

for.inc177:                                       ; preds = %for.cond151
  %107 = load i32, ptr %c2, align 4
  %inc178 = add nsw i32 %107, 1
  br label %for.cond147, !llvm.loop !33

have_c2min:                                       ; preds = %have_c1max, %for.cond147, %if.then168
  %108 = load i32, ptr %c2max, align 4
  %109 = load i32, ptr %c2min, align 4
  %cmp181 = icmp sgt i32 %108, %109
  br i1 %cmp181, label %if.then183, label %have_c2max

if.then183:                                       ; preds = %have_c2min
  %110 = load i32, ptr %c2max, align 4
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc215, %if.then183
  %storemerge2 = phi i32 [ %110, %if.then183 ], [ %dec216, %for.inc215 ]
  store i32 %storemerge2, ptr %c2, align 4
  %111 = load i32, ptr %c2min, align 4
  %cmp185.not = icmp slt i32 %storemerge2, %111
  br i1 %cmp185.not, label %have_c2max, label %for.body187

for.body187:                                      ; preds = %for.cond184
  %112 = load i32, ptr %c0min, align 4
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc212, %for.body187
  %storemerge3 = phi i32 [ %112, %for.body187 ], [ %inc213, %for.inc212 ]
  store i32 %storemerge3, ptr %c0, align 4
  %113 = load i32, ptr %c0max, align 4
  %cmp189.not = icmp sgt i32 %storemerge3, %113
  br i1 %cmp189.not, label %for.inc215, label %for.body191

for.body191:                                      ; preds = %for.cond188
  %114 = load ptr, ptr %histogram, align 8
  %115 = load i32, ptr %c0, align 4
  %idxprom192 = sext i32 %115 to i64
  %arrayidx193 = getelementptr inbounds ptr, ptr %114, i64 %idxprom192
  %116 = load ptr, ptr %arrayidx193, align 8
  %117 = load i32, ptr %c1min, align 4
  %idxprom194 = sext i32 %117 to i64
  %118 = load i32, ptr %c2, align 4
  %idxprom196 = sext i32 %118 to i64
  %arrayidx197 = getelementptr inbounds [32 x i16], ptr %116, i64 %idxprom194, i64 %idxprom196
  store ptr %arrayidx197, ptr %histp, align 8
  store i32 %117, ptr %c1, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc208, %for.body191
  %119 = load i32, ptr %c1, align 4
  %120 = load i32, ptr %c1max, align 4
  %cmp199.not = icmp sgt i32 %119, %120
  br i1 %cmp199.not, label %for.inc212, label %for.body201

for.body201:                                      ; preds = %for.cond198
  %121 = load ptr, ptr %histp, align 8
  %122 = load i16, ptr %121, align 2
  %cmp203.not = icmp eq i16 %122, 0
  br i1 %cmp203.not, label %for.inc208, label %if.then205

if.then205:                                       ; preds = %for.body201
  %123 = load i32, ptr %c2, align 4
  store i32 %123, ptr %c2max, align 4
  %124 = load ptr, ptr %boxp.addr, align 8
  %c2max206 = getelementptr inbounds %struct.box, ptr %124, i64 0, i32 5
  store i32 %123, ptr %c2max206, align 4
  br label %have_c2max

for.inc208:                                       ; preds = %for.body201
  %125 = load i32, ptr %c1, align 4
  %inc209 = add nsw i32 %125, 1
  store i32 %inc209, ptr %c1, align 4
  %126 = load ptr, ptr %histp, align 8
  %add.ptr210 = getelementptr inbounds i16, ptr %126, i64 32
  store ptr %add.ptr210, ptr %histp, align 8
  br label %for.cond198, !llvm.loop !34

for.inc212:                                       ; preds = %for.cond198
  %127 = load i32, ptr %c0, align 4
  %inc213 = add nsw i32 %127, 1
  br label %for.cond188, !llvm.loop !35

for.inc215:                                       ; preds = %for.cond188
  %128 = load i32, ptr %c2, align 4
  %dec216 = add nsw i32 %128, -1
  br label %for.cond184, !llvm.loop !36

have_c2max:                                       ; preds = %have_c2min, %for.cond184, %if.then205
  %129 = load i32, ptr %c0max, align 4
  %130 = load i32, ptr %c0min, align 4
  %sub = sub nsw i32 %129, %130
  %mul = shl i32 %sub, 4
  %conv219 = sext i32 %mul to i64
  store i64 %conv219, ptr %dist0, align 8
  %131 = load i32, ptr %c1max, align 4
  %132 = load i32, ptr %c1min, align 4
  %sub220 = sub nsw i32 %131, %132
  %mul222 = mul i32 %sub220, 12
  %conv223 = sext i32 %mul222 to i64
  store i64 %conv223, ptr %dist1, align 8
  %133 = load i32, ptr %c2max, align 4
  %134 = load i32, ptr %c2min, align 4
  %sub224 = sub nsw i32 %133, %134
  %shl225 = shl i32 %sub224, 3
  %conv227 = sext i32 %shl225 to i64
  %135 = load i64, ptr %dist0, align 8
  %mul228 = mul nsw i64 %135, %135
  %136 = load i64, ptr %dist1, align 8
  %mul229 = mul nsw i64 %136, %136
  %add = add nuw nsw i64 %mul228, %mul229
  %mul230 = mul nsw i64 %conv227, %conv227
  %add231 = add nuw nsw i64 %add, %mul230
  %137 = load ptr, ptr %boxp.addr, align 8
  %volume = getelementptr inbounds %struct.box, ptr %137, i64 0, i32 6
  store i64 %add231, ptr %volume, align 8
  store i64 0, ptr %ccount, align 8
  %138 = load i32, ptr %c0min, align 4
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc263, %have_c2max
  %storemerge = phi i32 [ %138, %have_c2max ], [ %inc264, %for.inc263 ]
  store i32 %storemerge, ptr %c0, align 4
  %139 = load i32, ptr %c0max, align 4
  %cmp233.not = icmp sgt i32 %storemerge, %139
  br i1 %cmp233.not, label %for.end265, label %for.body235

for.body235:                                      ; preds = %for.cond232
  %140 = load i32, ptr %c1min, align 4
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc260, %for.body235
  %storemerge1 = phi i32 [ %140, %for.body235 ], [ %inc261, %for.inc260 ]
  store i32 %storemerge1, ptr %c1, align 4
  %141 = load i32, ptr %c1max, align 4
  %cmp237.not = icmp sgt i32 %storemerge1, %141
  br i1 %cmp237.not, label %for.inc263, label %for.body239

for.body239:                                      ; preds = %for.cond236
  %142 = load ptr, ptr %histogram, align 8
  %143 = load i32, ptr %c0, align 4
  %idxprom240 = sext i32 %143 to i64
  %arrayidx241 = getelementptr inbounds ptr, ptr %142, i64 %idxprom240
  %144 = load ptr, ptr %arrayidx241, align 8
  %145 = load i32, ptr %c1, align 4
  %idxprom242 = sext i32 %145 to i64
  %146 = load i32, ptr %c2min, align 4
  %idxprom244 = sext i32 %146 to i64
  %arrayidx245 = getelementptr inbounds [32 x i16], ptr %144, i64 %idxprom242, i64 %idxprom244
  store ptr %arrayidx245, ptr %histp, align 8
  store i32 %146, ptr %c2, align 4
  br label %for.cond246

for.cond246:                                      ; preds = %for.inc256, %for.body239
  %147 = load i32, ptr %c2, align 4
  %148 = load i32, ptr %c2max, align 4
  %cmp247.not = icmp sgt i32 %147, %148
  br i1 %cmp247.not, label %for.inc260, label %for.body249

for.body249:                                      ; preds = %for.cond246
  %149 = load ptr, ptr %histp, align 8
  %150 = load i16, ptr %149, align 2
  %cmp251.not = icmp eq i16 %150, 0
  br i1 %cmp251.not, label %for.inc256, label %if.then253

if.then253:                                       ; preds = %for.body249
  %151 = load i64, ptr %ccount, align 8
  %inc254 = add nsw i64 %151, 1
  store i64 %inc254, ptr %ccount, align 8
  br label %for.inc256

for.inc256:                                       ; preds = %for.body249, %if.then253
  %152 = load i32, ptr %c2, align 4
  %inc257 = add nsw i32 %152, 1
  store i32 %inc257, ptr %c2, align 4
  %153 = load ptr, ptr %histp, align 8
  %incdec.ptr258 = getelementptr inbounds i16, ptr %153, i64 1
  store ptr %incdec.ptr258, ptr %histp, align 8
  br label %for.cond246, !llvm.loop !37

for.inc260:                                       ; preds = %for.cond246
  %154 = load i32, ptr %c1, align 4
  %inc261 = add nsw i32 %154, 1
  br label %for.cond236, !llvm.loop !38

for.inc263:                                       ; preds = %for.cond236
  %155 = load i32, ptr %c0, align 4
  %inc264 = add nsw i32 %155, 1
  br label %for.cond232, !llvm.loop !39

for.end265:                                       ; preds = %for.cond232
  %156 = load i64, ptr %ccount, align 8
  %157 = load ptr, ptr %boxp.addr, align 8
  %colorcount = getelementptr inbounds %struct.box, ptr %157, i64 0, i32 7
  store i64 %156, ptr %colorcount, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @median_cut(ptr noundef %cinfo, ptr noundef %boxlist, i32 noundef %numboxes, i32 noundef %desired_colors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %boxlist.addr = alloca ptr, align 8
  %numboxes.addr = alloca i32, align 4
  %desired_colors.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cmax = alloca i32, align 4
  %b1 = alloca ptr, align 8
  %b2 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %boxlist, ptr %boxlist.addr, align 8
  store i32 %numboxes, ptr %numboxes.addr, align 4
  store i32 %desired_colors, ptr %desired_colors.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %numboxes.addr, align 4
  %1 = load i32, ptr %desired_colors.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %numboxes.addr, align 4
  %mul = shl nsw i32 %2, 1
  %3 = load i32, ptr %desired_colors.addr, align 4
  %cmp1.not = icmp sgt i32 %mul, %3
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %boxlist.addr, align 8
  %5 = load i32, ptr %numboxes.addr, align 4
  %call = call ptr @find_biggest_color_pop(ptr noundef %4, i32 noundef %5)
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %boxlist.addr, align 8
  %7 = load i32, ptr %numboxes.addr, align 4
  %call2 = call ptr @find_biggest_volume(ptr noundef %6, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %call2, %if.else ], [ %call, %if.then ]
  store ptr %storemerge, ptr %b1, align 8
  %cmp3 = icmp eq ptr %storemerge, null
  br i1 %cmp3, label %while.end, label %if.end5

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %boxlist.addr, align 8
  %9 = load i32, ptr %numboxes.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.box, ptr %8, i64 %idxprom
  store ptr %arrayidx, ptr %b2, align 8
  %10 = load ptr, ptr %b1, align 8
  %c0max = getelementptr inbounds %struct.box, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %c0max, align 4
  %c0max6 = getelementptr inbounds %struct.box, ptr %8, i64 %idxprom, i32 1
  store i32 %11, ptr %c0max6, align 4
  %c1max = getelementptr inbounds %struct.box, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %c1max, align 4
  %13 = load ptr, ptr %b2, align 8
  %c1max7 = getelementptr inbounds %struct.box, ptr %13, i64 0, i32 3
  store i32 %12, ptr %c1max7, align 4
  %14 = load ptr, ptr %b1, align 8
  %c2max = getelementptr inbounds %struct.box, ptr %14, i64 0, i32 5
  %15 = load i32, ptr %c2max, align 4
  %c2max8 = getelementptr inbounds %struct.box, ptr %13, i64 0, i32 5
  store i32 %15, ptr %c2max8, align 4
  %16 = load i32, ptr %14, align 8
  %17 = load ptr, ptr %b2, align 8
  store i32 %16, ptr %17, align 8
  %18 = load ptr, ptr %b1, align 8
  %c1min = getelementptr inbounds %struct.box, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %c1min, align 8
  %c1min10 = getelementptr inbounds %struct.box, ptr %17, i64 0, i32 2
  store i32 %19, ptr %c1min10, align 8
  %c2min = getelementptr inbounds %struct.box, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %c2min, align 8
  %21 = load ptr, ptr %b2, align 8
  %c2min11 = getelementptr inbounds %struct.box, ptr %21, i64 0, i32 4
  store i32 %20, ptr %c2min11, align 8
  %22 = load ptr, ptr %b1, align 8
  %c0max12 = getelementptr inbounds %struct.box, ptr %22, i64 0, i32 1
  %23 = load i32, ptr %c0max12, align 4
  %24 = load i32, ptr %22, align 8
  %sub = sub nsw i32 %23, %24
  %mul14 = shl i32 %sub, 4
  store i32 %mul14, ptr %c0, align 4
  %25 = load ptr, ptr %b1, align 8
  %c1max15 = getelementptr inbounds %struct.box, ptr %25, i64 0, i32 3
  %26 = load i32, ptr %c1max15, align 4
  %c1min16 = getelementptr inbounds %struct.box, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %c1min16, align 8
  %sub17 = sub nsw i32 %26, %27
  %mul19 = mul i32 %sub17, 12
  store i32 %mul19, ptr %c1, align 4
  %28 = load ptr, ptr %b1, align 8
  %c2max20 = getelementptr inbounds %struct.box, ptr %28, i64 0, i32 5
  %29 = load i32, ptr %c2max20, align 4
  %c2min21 = getelementptr inbounds %struct.box, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %c2min21, align 8
  %sub22 = sub nsw i32 %29, %30
  %shl23 = shl i32 %sub22, 3
  store i32 %shl23, ptr %c2, align 4
  %31 = load i32, ptr %c1, align 4
  store i32 %31, ptr %cmax, align 4
  store i32 1, ptr %n, align 4
  %32 = load i32, ptr %c0, align 4
  %cmp25 = icmp sgt i32 %32, %31
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end5
  %33 = load i32, ptr %c0, align 4
  store i32 %33, ptr %cmax, align 4
  store i32 0, ptr %n, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end5
  %34 = load i32, ptr %c2, align 4
  %35 = load i32, ptr %cmax, align 4
  %cmp28 = icmp sgt i32 %34, %35
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 2, ptr %n, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %36 = load i32, ptr %n, align 4
  switch i32 %36, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 2, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end30
  %37 = load ptr, ptr %b1, align 8
  %c0max31 = getelementptr inbounds %struct.box, ptr %37, i64 0, i32 1
  %38 = load i32, ptr %c0max31, align 4
  %39 = load i32, ptr %37, align 8
  %add = add nsw i32 %38, %39
  %div = sdiv i32 %add, 2
  %c0max33 = getelementptr inbounds %struct.box, ptr %37, i64 0, i32 1
  store i32 %div, ptr %c0max33, align 4
  %add34 = add nsw i32 %div, 1
  %40 = load ptr, ptr %b2, align 8
  store i32 %add34, ptr %40, align 8
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  %41 = load ptr, ptr %b1, align 8
  %c1max37 = getelementptr inbounds %struct.box, ptr %41, i64 0, i32 3
  %42 = load i32, ptr %c1max37, align 4
  %c1min38 = getelementptr inbounds %struct.box, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %c1min38, align 8
  %add39 = add nsw i32 %42, %43
  %div40 = sdiv i32 %add39, 2
  %44 = load ptr, ptr %b1, align 8
  %c1max41 = getelementptr inbounds %struct.box, ptr %44, i64 0, i32 3
  store i32 %div40, ptr %c1max41, align 4
  %add42 = add nsw i32 %div40, 1
  %45 = load ptr, ptr %b2, align 8
  %c1min43 = getelementptr inbounds %struct.box, ptr %45, i64 0, i32 2
  store i32 %add42, ptr %c1min43, align 8
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end30
  %46 = load ptr, ptr %b1, align 8
  %c2max45 = getelementptr inbounds %struct.box, ptr %46, i64 0, i32 5
  %47 = load i32, ptr %c2max45, align 4
  %c2min46 = getelementptr inbounds %struct.box, ptr %46, i64 0, i32 4
  %48 = load i32, ptr %c2min46, align 8
  %add47 = add nsw i32 %47, %48
  %div48 = sdiv i32 %add47, 2
  %49 = load ptr, ptr %b1, align 8
  %c2max49 = getelementptr inbounds %struct.box, ptr %49, i64 0, i32 5
  store i32 %div48, ptr %c2max49, align 4
  %add50 = add nsw i32 %div48, 1
  %50 = load ptr, ptr %b2, align 8
  %c2min51 = getelementptr inbounds %struct.box, ptr %50, i64 0, i32 4
  store i32 %add50, ptr %c2min51, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb36, %sw.bb, %if.end30
  %51 = load ptr, ptr %cinfo.addr, align 8
  %52 = load ptr, ptr %b1, align 8
  call void @update_box(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %b2, align 8
  call void @update_box(ptr noundef %51, ptr noundef %53)
  %54 = load i32, ptr %numboxes.addr, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %numboxes.addr, align 4
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %if.end, %while.cond
  %55 = load i32, ptr %numboxes.addr, align 4
  ret i32 %55
}

; Function Attrs: nounwind ssp uwtable
define internal void @compute_color(ptr noundef %cinfo, ptr noundef %boxp, i32 noundef %icolor) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %boxp.addr = alloca ptr, align 8
  %icolor.addr = alloca i32, align 4
  %histogram = alloca ptr, align 8
  %histp = alloca ptr, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c0min = alloca i32, align 4
  %c0max = alloca i32, align 4
  %c1min = alloca i32, align 4
  %c1max = alloca i32, align 4
  %c2min = alloca i32, align 4
  %c2max = alloca i32, align 4
  %count = alloca i64, align 8
  %total = alloca i64, align 8
  %c0total = alloca i64, align 8
  %c1total = alloca i64, align 8
  %c2total = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %boxp, ptr %boxp.addr, align 8
  store i32 %icolor, ptr %icolor.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  store i64 0, ptr %total, align 8
  store i64 0, ptr %c0total, align 8
  store i64 0, ptr %c1total, align 8
  store i64 0, ptr %c2total, align 8
  %2 = load ptr, ptr %boxp.addr, align 8
  %3 = load i32, ptr %2, align 8
  store i32 %3, ptr %c0min, align 4
  %c0max4 = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %c0max4, align 4
  store i32 %4, ptr %c0max, align 4
  %c1min5 = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %c1min5, align 8
  store i32 %5, ptr %c1min, align 4
  %6 = load ptr, ptr %boxp.addr, align 8
  %c1max6 = getelementptr inbounds %struct.box, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %c1max6, align 4
  store i32 %7, ptr %c1max, align 4
  %c2min7 = getelementptr inbounds %struct.box, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %c2min7, align 8
  store i32 %8, ptr %c2min, align 4
  %9 = load ptr, ptr %boxp.addr, align 8
  %c2max8 = getelementptr inbounds %struct.box, ptr %9, i64 0, i32 5
  %10 = load i32, ptr %c2max8, align 4
  store i32 %10, ptr %c2max, align 4
  %11 = load i32, ptr %c0min, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %storemerge = phi i32 [ %11, %entry ], [ %inc38, %for.inc37 ]
  store i32 %storemerge, ptr %c0, align 4
  %12 = load i32, ptr %c0max, align 4
  %cmp.not = icmp sgt i32 %storemerge, %12
  br i1 %cmp.not, label %for.end39, label %for.body

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %c1min, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc34, %for.body
  %storemerge1 = phi i32 [ %13, %for.body ], [ %inc35, %for.inc34 ]
  store i32 %storemerge1, ptr %c1, align 4
  %14 = load i32, ptr %c1max, align 4
  %cmp10.not = icmp sgt i32 %storemerge1, %14
  br i1 %cmp10.not, label %for.inc37, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %15 = load ptr, ptr %histogram, align 8
  %16 = load i32, ptr %c0, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %18 = load i32, ptr %c1, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i32, ptr %c2min, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [32 x i16], ptr %17, i64 %idxprom12, i64 %idxprom14
  store ptr %arrayidx15, ptr %histp, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body11
  %storemerge2 = phi i32 [ %19, %for.body11 ], [ %inc, %for.inc ]
  store i32 %storemerge2, ptr %c2, align 4
  %20 = load i32, ptr %c2max, align 4
  %cmp17.not = icmp sgt i32 %storemerge2, %20
  br i1 %cmp17.not, label %for.inc34, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %21 = load ptr, ptr %histp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %21, i64 1
  store ptr %incdec.ptr, ptr %histp, align 8
  %22 = load i16, ptr %21, align 2
  %conv = zext i16 %22 to i64
  store i64 %conv, ptr %count, align 8
  %cmp19.not = icmp eq i16 %22, 0
  br i1 %cmp19.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body18
  %23 = load i64, ptr %count, align 8
  %24 = load i64, ptr %total, align 8
  %add = add nsw i64 %24, %23
  store i64 %add, ptr %total, align 8
  %25 = load i32, ptr %c0, align 4
  %shl = shl i32 %25, 3
  %add21 = or i32 %shl, 4
  %conv22 = sext i32 %add21 to i64
  %26 = load i64, ptr %count, align 8
  %mul = mul nsw i64 %26, %conv22
  %27 = load i64, ptr %c0total, align 8
  %add23 = add nsw i64 %27, %mul
  store i64 %add23, ptr %c0total, align 8
  %28 = load i32, ptr %c1, align 4
  %shl24 = shl i32 %28, 2
  %add25 = or i32 %shl24, 2
  %conv26 = sext i32 %add25 to i64
  %29 = load i64, ptr %count, align 8
  %mul27 = mul nsw i64 %29, %conv26
  %30 = load i64, ptr %c1total, align 8
  %add28 = add nsw i64 %30, %mul27
  store i64 %add28, ptr %c1total, align 8
  %31 = load i32, ptr %c2, align 4
  %shl29 = shl i32 %31, 3
  %add30 = or i32 %shl29, 4
  %conv31 = sext i32 %add30 to i64
  %32 = load i64, ptr %count, align 8
  %mul32 = mul nsw i64 %32, %conv31
  %33 = load i64, ptr %c2total, align 8
  %add33 = add nsw i64 %33, %mul32
  store i64 %add33, ptr %c2total, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body18, %if.then
  %34 = load i32, ptr %c2, align 4
  %inc = add nsw i32 %34, 1
  br label %for.cond16, !llvm.loop !41

for.inc34:                                        ; preds = %for.cond16
  %35 = load i32, ptr %c1, align 4
  %inc35 = add nsw i32 %35, 1
  br label %for.cond9, !llvm.loop !42

for.inc37:                                        ; preds = %for.cond9
  %36 = load i32, ptr %c0, align 4
  %inc38 = add nsw i32 %36, 1
  br label %for.cond, !llvm.loop !43

for.end39:                                        ; preds = %for.cond
  %37 = load i64, ptr %c0total, align 8
  %38 = load i64, ptr %total, align 8
  %shr = ashr i64 %38, 1
  %add40 = add nsw i64 %37, %shr
  %div = sdiv i64 %add40, %38
  %conv41 = trunc i64 %div to i8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 32
  %40 = load ptr, ptr %colormap, align 8
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %icolor.addr, align 4
  %idxprom43 = sext i32 %42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %41, i64 %idxprom43
  store i8 %conv41, ptr %arrayidx44, align 1
  %43 = load i64, ptr %c1total, align 8
  %44 = load i64, ptr %total, align 8
  %shr45 = ashr i64 %44, 1
  %add46 = add nsw i64 %43, %shr45
  %div47 = sdiv i64 %add46, %44
  %conv48 = trunc i64 %div47 to i8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %colormap49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 32
  %46 = load ptr, ptr %colormap49, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %46, i64 1
  %47 = load ptr, ptr %arrayidx50, align 8
  %48 = load i32, ptr %icolor.addr, align 4
  %idxprom51 = sext i32 %48 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %47, i64 %idxprom51
  store i8 %conv48, ptr %arrayidx52, align 1
  %49 = load i64, ptr %c2total, align 8
  %50 = load i64, ptr %total, align 8
  %shr53 = ashr i64 %50, 1
  %add54 = add nsw i64 %49, %shr53
  %div55 = sdiv i64 %add54, %50
  %conv56 = trunc i64 %div55 to i8
  %51 = load ptr, ptr %cinfo.addr, align 8
  %colormap57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 32
  %52 = load ptr, ptr %colormap57, align 8
  %arrayidx58 = getelementptr inbounds ptr, ptr %52, i64 2
  %53 = load ptr, ptr %arrayidx58, align 8
  %54 = load i32, ptr %icolor.addr, align 4
  %idxprom59 = sext i32 %54 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %53, i64 %idxprom59
  store i8 %conv56, ptr %arrayidx60, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @find_biggest_color_pop(ptr noundef %boxlist, i32 noundef %numboxes) #0 {
entry:
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca ptr, align 8
  %i = alloca i32, align 4
  %maxc = alloca i64, align 8
  %which = alloca ptr, align 8
  store i32 %numboxes, ptr %numboxes.addr, align 4
  store i64 0, ptr %maxc, align 8
  store ptr null, ptr %which, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi ptr [ %boxlist, %entry ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %boxp, align 8
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %numboxes.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %boxp, align 8
  %colorcount = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 7
  %3 = load i64, ptr %colorcount, align 8
  %4 = load i64, ptr %maxc, align 8
  %cmp1 = icmp sgt i64 %3, %4
  br i1 %cmp1, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %boxp, align 8
  %volume = getelementptr inbounds %struct.box, ptr %5, i64 0, i32 6
  %6 = load i64, ptr %volume, align 8
  %cmp2 = icmp sgt i64 %6, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %boxp, align 8
  store ptr %7, ptr %which, align 8
  %colorcount3 = getelementptr inbounds %struct.box, ptr %7, i64 0, i32 7
  %8 = load i64, ptr %colorcount3, align 8
  store i64 %8, ptr %maxc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  %10 = load ptr, ptr %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, ptr %10, i64 1
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %which, align 8
  ret ptr %11
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @find_biggest_volume(ptr noundef %boxlist, i32 noundef %numboxes) #0 {
entry:
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca ptr, align 8
  %i = alloca i32, align 4
  %maxv = alloca i64, align 8
  %which = alloca ptr, align 8
  store i32 %numboxes, ptr %numboxes.addr, align 4
  store i64 0, ptr %maxv, align 8
  store ptr null, ptr %which, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi ptr [ %boxlist, %entry ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %boxp, align 8
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %numboxes.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %boxp, align 8
  %volume = getelementptr inbounds %struct.box, ptr %2, i64 0, i32 6
  %3 = load i64, ptr %volume, align 8
  %4 = load i64, ptr %maxv, align 8
  %cmp1 = icmp sgt i64 %3, %4
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %boxp, align 8
  store ptr %5, ptr %which, align 8
  %volume2 = getelementptr inbounds %struct.box, ptr %5, i64 0, i32 6
  %6 = load i64, ptr %volume2, align 8
  store i64 %6, ptr %maxv, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load ptr, ptr %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, ptr %8, i64 1
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %which, align 8
  ret ptr %9
}

; Function Attrs: nounwind ssp uwtable
define internal void @fill_inverse_cmap(ptr noundef %cinfo, i32 noundef %c0, i32 noundef %c1, i32 noundef %c2) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %c0.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %histogram = alloca ptr, align 8
  %minc0 = alloca i32, align 4
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %cptr = alloca ptr, align 8
  %cachep = alloca ptr, align 8
  %colorlist = alloca [256 x i8], align 1
  %bestcolor = alloca [128 x i8], align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %c0, ptr %c0.addr, align 4
  store i32 %c1, ptr %c1.addr, align 4
  store i32 %c2, ptr %c2.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %histogram2, align 8
  store ptr %1, ptr %histogram, align 8
  %2 = load i32, ptr %c0.addr, align 4
  %shr = ashr i32 %2, 2
  store i32 %shr, ptr %c0.addr, align 4
  %3 = load i32, ptr %c1.addr, align 4
  %shr3 = ashr i32 %3, 3
  store i32 %shr3, ptr %c1.addr, align 4
  %4 = load i32, ptr %c2.addr, align 4
  %shr4 = ashr i32 %4, 2
  store i32 %shr4, ptr %c2.addr, align 4
  %5 = load i32, ptr %c0.addr, align 4
  %shl = shl i32 %5, 5
  %add = or i32 %shl, 4
  store i32 %add, ptr %minc0, align 4
  %6 = load i32, ptr %c1.addr, align 4
  %shl5 = shl i32 %6, 5
  %add6 = or i32 %shl5, 2
  %7 = load i32, ptr %c2.addr, align 4
  %shl7 = shl i32 %7, 5
  %add8 = or i32 %shl7, 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load i32, ptr %minc0, align 4
  %call = call i32 @find_nearby_colors(ptr noundef %8, i32 noundef %9, i32 noundef %add6, i32 noundef %add8, ptr noundef nonnull %colorlist)
  call void @find_best_colors(ptr noundef %8, i32 noundef %9, i32 noundef %add6, i32 noundef %add8, i32 noundef %call, ptr noundef nonnull %colorlist, ptr noundef nonnull %bestcolor)
  %10 = load i32, ptr %c0.addr, align 4
  %shl11 = shl i32 %10, 2
  store i32 %shl11, ptr %c0.addr, align 4
  %11 = load i32, ptr %c1.addr, align 4
  %shl12 = shl i32 %11, 3
  store i32 %shl12, ptr %c1.addr, align 4
  %12 = load i32, ptr %c2.addr, align 4
  %shl13 = shl i32 %12, 2
  store i32 %shl13, ptr %c2.addr, align 4
  store ptr %bestcolor, ptr %cptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc34, %for.inc33 ]
  store i32 %storemerge, ptr %ic0, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.cond15, label %for.end35

for.cond15:                                       ; preds = %for.cond, %for.inc30
  %storemerge1 = phi i32 [ %inc31, %for.inc30 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %ic1, align 4
  %cmp16 = icmp slt i32 %storemerge1, 8
  br i1 %cmp16, label %for.body17, label %for.inc33

for.body17:                                       ; preds = %for.cond15
  %13 = load ptr, ptr %histogram, align 8
  %14 = load i32, ptr %c0.addr, align 4
  %15 = load i32, ptr %ic0, align 4
  %add18 = add nsw i32 %14, %15
  %idxprom = sext i32 %add18 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %c1.addr, align 4
  %18 = load i32, ptr %ic1, align 4
  %add19 = add nsw i32 %17, %18
  %idxprom20 = sext i32 %add19 to i64
  %19 = load i32, ptr %c2.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [32 x i16], ptr %16, i64 %idxprom20, i64 %idxprom22
  store ptr %arrayidx23, ptr %cachep, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.body26, %for.body17
  %storemerge2 = phi i32 [ 0, %for.body17 ], [ %inc, %for.body26 ]
  store i32 %storemerge2, ptr %ic2, align 4
  %cmp25 = icmp slt i32 %storemerge2, 4
  br i1 %cmp25, label %for.body26, label %for.inc30

for.body26:                                       ; preds = %for.cond24
  %20 = load ptr, ptr %cptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %cptr, align 8
  %21 = load i8, ptr %20, align 1
  %conv = zext i8 %21 to i16
  %add27 = add nuw nsw i16 %conv, 1
  %22 = load ptr, ptr %cachep, align 8
  %incdec.ptr29 = getelementptr inbounds i16, ptr %22, i64 1
  store ptr %incdec.ptr29, ptr %cachep, align 8
  store i16 %add27, ptr %22, align 2
  %23 = load i32, ptr %ic2, align 4
  %inc = add nsw i32 %23, 1
  br label %for.cond24, !llvm.loop !46

for.inc30:                                        ; preds = %for.cond24
  %24 = load i32, ptr %ic1, align 4
  %inc31 = add nsw i32 %24, 1
  br label %for.cond15, !llvm.loop !47

for.inc33:                                        ; preds = %for.cond15
  %25 = load i32, ptr %ic0, align 4
  %inc34 = add nsw i32 %25, 1
  br label %for.cond, !llvm.loop !48

for.end35:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @find_nearby_colors(ptr noundef %cinfo, i32 noundef %minc0, i32 noundef %minc1, i32 noundef %minc2, ptr noundef %colorlist) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %minc0.addr = alloca i32, align 4
  %minc1.addr = alloca i32, align 4
  %minc2.addr = alloca i32, align 4
  %colorlist.addr = alloca ptr, align 8
  %numcolors = alloca i32, align 4
  %maxc0 = alloca i32, align 4
  %maxc1 = alloca i32, align 4
  %maxc2 = alloca i32, align 4
  %centerc0 = alloca i32, align 4
  %centerc1 = alloca i32, align 4
  %centerc2 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %ncolors = alloca i32, align 4
  %minmaxdist = alloca i64, align 8
  %min_dist = alloca i64, align 8
  %max_dist = alloca i64, align 8
  %mindist = alloca [256 x i64], align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %minc0, ptr %minc0.addr, align 4
  store i32 %minc1, ptr %minc1.addr, align 4
  store i32 %minc2, ptr %minc2.addr, align 4
  store ptr %colorlist, ptr %colorlist.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 31
  %0 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %0, ptr %numcolors, align 4
  %1 = load i32, ptr %minc0.addr, align 4
  %add = add nsw i32 %1, 24
  store i32 %add, ptr %maxc0, align 4
  %add1 = add nsw i32 %1, %add
  %shr = ashr i32 %add1, 1
  store i32 %shr, ptr %centerc0, align 4
  %2 = load i32, ptr %minc1.addr, align 4
  %add2 = add nsw i32 %2, 28
  store i32 %add2, ptr %maxc1, align 4
  %add3 = add nsw i32 %2, %add2
  %shr4 = ashr i32 %add3, 1
  store i32 %shr4, ptr %centerc1, align 4
  %3 = load i32, ptr %minc2.addr, align 4
  %add5 = add nsw i32 %3, 24
  store i32 %add5, ptr %maxc2, align 4
  %add6 = add nsw i32 %3, %add5
  %shr7 = ashr i32 %add6, 1
  store i32 %shr7, ptr %centerc2, align 4
  store i64 2147483647, ptr %minmaxdist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %numcolors, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 32
  %6 = load ptr, ptr %colormap, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, ptr %x, align 4
  %10 = load i32, ptr %minc0.addr, align 4
  %cmp9 = icmp sgt i32 %10, %conv
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %x, align 4
  %12 = load i32, ptr %minc0.addr, align 4
  %sub = sub nsw i32 %11, %12
  %mul = shl nsw i32 %sub, 1
  %conv11 = sext i32 %mul to i64
  %mul12 = mul nsw i64 %conv11, %conv11
  store i64 %mul12, ptr %min_dist, align 8
  %13 = load i32, ptr %x, align 4
  %14 = load i32, ptr %maxc0, align 4
  %sub13 = sub nsw i32 %13, %14
  %mul14 = shl nsw i32 %sub13, 1
  %conv15 = sext i32 %mul14 to i64
  %mul16 = mul nsw i64 %conv15, %conv15
  br label %if.end42

if.else:                                          ; preds = %for.body
  %15 = load i32, ptr %x, align 4
  %16 = load i32, ptr %maxc0, align 4
  %cmp17 = icmp sgt i32 %15, %16
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %if.else
  %17 = load i32, ptr %x, align 4
  %18 = load i32, ptr %maxc0, align 4
  %sub20 = sub nsw i32 %17, %18
  %mul21 = shl nsw i32 %sub20, 1
  %conv22 = sext i32 %mul21 to i64
  %mul23 = mul nsw i64 %conv22, %conv22
  store i64 %mul23, ptr %min_dist, align 8
  %19 = load i32, ptr %x, align 4
  %20 = load i32, ptr %minc0.addr, align 4
  %sub24 = sub nsw i32 %19, %20
  %mul25 = shl nsw i32 %sub24, 1
  %conv26 = sext i32 %mul25 to i64
  %mul27 = mul nsw i64 %conv26, %conv26
  br label %if.end42

if.else28:                                        ; preds = %if.else
  store i64 0, ptr %min_dist, align 8
  %21 = load i32, ptr %x, align 4
  %22 = load i32, ptr %centerc0, align 4
  %cmp29.not = icmp sgt i32 %21, %22
  br i1 %cmp29.not, label %if.else36, label %if.then31

if.then31:                                        ; preds = %if.else28
  %23 = load i32, ptr %x, align 4
  %24 = load i32, ptr %maxc0, align 4
  %sub32 = sub nsw i32 %23, %24
  %mul33 = shl nsw i32 %sub32, 1
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul nsw i64 %conv34, %conv34
  br label %if.end42

if.else36:                                        ; preds = %if.else28
  %25 = load i32, ptr %x, align 4
  %26 = load i32, ptr %minc0.addr, align 4
  %sub37 = sub nsw i32 %25, %26
  %mul38 = shl nsw i32 %sub37, 1
  %conv39 = sext i32 %mul38 to i64
  %mul40 = mul nsw i64 %conv39, %conv39
  br label %if.end42

if.end42:                                         ; preds = %if.then19, %if.else36, %if.then31, %if.then
  %storemerge4 = phi i64 [ %mul16, %if.then ], [ %mul27, %if.then19 ], [ %mul40, %if.else36 ], [ %mul35, %if.then31 ]
  store i64 %storemerge4, ptr %max_dist, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %colormap43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 32
  %28 = load ptr, ptr %colormap43, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %28, i64 1
  %29 = load ptr, ptr %arrayidx44, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %29, i64 %idxprom45
  %31 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %31 to i32
  store i32 %conv47, ptr %x, align 4
  %32 = load i32, ptr %minc1.addr, align 4
  %cmp48 = icmp sgt i32 %32, %conv47
  br i1 %cmp48, label %if.then50, label %if.else61

if.then50:                                        ; preds = %if.end42
  %33 = load i32, ptr %x, align 4
  %34 = load i32, ptr %minc1.addr, align 4
  %sub51 = sub nsw i32 %33, %34
  %mul52 = mul nsw i32 %sub51, 3
  %conv53 = sext i32 %mul52 to i64
  %mul54 = mul nsw i64 %conv53, %conv53
  %35 = load i64, ptr %min_dist, align 8
  %add55 = add nsw i64 %35, %mul54
  store i64 %add55, ptr %min_dist, align 8
  %36 = load i32, ptr %x, align 4
  %37 = load i32, ptr %maxc1, align 4
  %sub56 = sub nsw i32 %36, %37
  %mul57 = mul nsw i32 %sub56, 3
  %conv58 = sext i32 %mul57 to i64
  %mul59 = mul nsw i64 %conv58, %conv58
  %38 = load i64, ptr %max_dist, align 8
  %add60 = add nsw i64 %38, %mul59
  br label %if.end92

if.else61:                                        ; preds = %if.end42
  %39 = load i32, ptr %x, align 4
  %40 = load i32, ptr %maxc1, align 4
  %cmp62 = icmp sgt i32 %39, %40
  br i1 %cmp62, label %if.then64, label %if.else75

if.then64:                                        ; preds = %if.else61
  %41 = load i32, ptr %x, align 4
  %42 = load i32, ptr %maxc1, align 4
  %sub65 = sub nsw i32 %41, %42
  %mul66 = mul nsw i32 %sub65, 3
  %conv67 = sext i32 %mul66 to i64
  %mul68 = mul nsw i64 %conv67, %conv67
  %43 = load i64, ptr %min_dist, align 8
  %add69 = add nsw i64 %43, %mul68
  store i64 %add69, ptr %min_dist, align 8
  %44 = load i32, ptr %x, align 4
  %45 = load i32, ptr %minc1.addr, align 4
  %sub70 = sub nsw i32 %44, %45
  %mul71 = mul nsw i32 %sub70, 3
  %conv72 = sext i32 %mul71 to i64
  %mul73 = mul nsw i64 %conv72, %conv72
  %46 = load i64, ptr %max_dist, align 8
  %add74 = add nsw i64 %46, %mul73
  br label %if.end92

if.else75:                                        ; preds = %if.else61
  %47 = load i32, ptr %x, align 4
  %48 = load i32, ptr %centerc1, align 4
  %cmp76.not = icmp sgt i32 %47, %48
  br i1 %cmp76.not, label %if.else84, label %if.then78

if.then78:                                        ; preds = %if.else75
  %49 = load i32, ptr %x, align 4
  %50 = load i32, ptr %maxc1, align 4
  %sub79 = sub nsw i32 %49, %50
  %mul80 = mul nsw i32 %sub79, 3
  %conv81 = sext i32 %mul80 to i64
  %mul82 = mul nsw i64 %conv81, %conv81
  %51 = load i64, ptr %max_dist, align 8
  %add83 = add nsw i64 %51, %mul82
  br label %if.end92

if.else84:                                        ; preds = %if.else75
  %52 = load i32, ptr %x, align 4
  %53 = load i32, ptr %minc1.addr, align 4
  %sub85 = sub nsw i32 %52, %53
  %mul86 = mul nsw i32 %sub85, 3
  %conv87 = sext i32 %mul86 to i64
  %mul88 = mul nsw i64 %conv87, %conv87
  %54 = load i64, ptr %max_dist, align 8
  %add89 = add nsw i64 %54, %mul88
  br label %if.end92

if.end92:                                         ; preds = %if.then64, %if.else84, %if.then78, %if.then50
  %storemerge7 = phi i64 [ %add60, %if.then50 ], [ %add74, %if.then64 ], [ %add89, %if.else84 ], [ %add83, %if.then78 ]
  store i64 %storemerge7, ptr %max_dist, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  %colormap93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i64 0, i32 32
  %56 = load ptr, ptr %colormap93, align 8
  %arrayidx94 = getelementptr inbounds ptr, ptr %56, i64 2
  %57 = load ptr, ptr %arrayidx94, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %58 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %57, i64 %idxprom95
  %59 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %59 to i32
  store i32 %conv97, ptr %x, align 4
  %60 = load i32, ptr %minc2.addr, align 4
  %cmp98 = icmp sgt i32 %60, %conv97
  br i1 %cmp98, label %if.then100, label %if.else111

if.then100:                                       ; preds = %if.end92
  %61 = load i32, ptr %x, align 4
  %62 = load i32, ptr %minc2.addr, align 4
  %sub101 = sub nsw i32 %61, %62
  %conv103 = sext i32 %sub101 to i64
  %mul104 = mul nsw i64 %conv103, %conv103
  %63 = load i64, ptr %min_dist, align 8
  %add105 = add nsw i64 %63, %mul104
  store i64 %add105, ptr %min_dist, align 8
  %64 = load i32, ptr %x, align 4
  %65 = load i32, ptr %maxc2, align 4
  %sub106 = sub nsw i32 %64, %65
  %conv108 = sext i32 %sub106 to i64
  %mul109 = mul nsw i64 %conv108, %conv108
  %66 = load i64, ptr %max_dist, align 8
  %add110 = add nsw i64 %66, %mul109
  br label %if.end142

if.else111:                                       ; preds = %if.end92
  %67 = load i32, ptr %x, align 4
  %68 = load i32, ptr %maxc2, align 4
  %cmp112 = icmp sgt i32 %67, %68
  br i1 %cmp112, label %if.then114, label %if.else125

if.then114:                                       ; preds = %if.else111
  %69 = load i32, ptr %x, align 4
  %70 = load i32, ptr %maxc2, align 4
  %sub115 = sub nsw i32 %69, %70
  %conv117 = sext i32 %sub115 to i64
  %mul118 = mul nsw i64 %conv117, %conv117
  %71 = load i64, ptr %min_dist, align 8
  %add119 = add nsw i64 %71, %mul118
  store i64 %add119, ptr %min_dist, align 8
  %72 = load i32, ptr %x, align 4
  %73 = load i32, ptr %minc2.addr, align 4
  %sub120 = sub nsw i32 %72, %73
  %conv122 = sext i32 %sub120 to i64
  %mul123 = mul nsw i64 %conv122, %conv122
  %74 = load i64, ptr %max_dist, align 8
  %add124 = add nsw i64 %74, %mul123
  br label %if.end142

if.else125:                                       ; preds = %if.else111
  %75 = load i32, ptr %x, align 4
  %76 = load i32, ptr %centerc2, align 4
  %cmp126.not = icmp sgt i32 %75, %76
  br i1 %cmp126.not, label %if.else134, label %if.then128

if.then128:                                       ; preds = %if.else125
  %77 = load i32, ptr %x, align 4
  %78 = load i32, ptr %maxc2, align 4
  %sub129 = sub nsw i32 %77, %78
  %conv131 = sext i32 %sub129 to i64
  %mul132 = mul nsw i64 %conv131, %conv131
  %79 = load i64, ptr %max_dist, align 8
  %add133 = add nsw i64 %79, %mul132
  br label %if.end142

if.else134:                                       ; preds = %if.else125
  %80 = load i32, ptr %x, align 4
  %81 = load i32, ptr %minc2.addr, align 4
  %sub135 = sub nsw i32 %80, %81
  %conv137 = sext i32 %sub135 to i64
  %mul138 = mul nsw i64 %conv137, %conv137
  %82 = load i64, ptr %max_dist, align 8
  %add139 = add nsw i64 %82, %mul138
  br label %if.end142

if.end142:                                        ; preds = %if.then114, %if.else134, %if.then128, %if.then100
  %storemerge10 = phi i64 [ %add110, %if.then100 ], [ %add124, %if.then114 ], [ %add139, %if.else134 ], [ %add133, %if.then128 ]
  store i64 %storemerge10, ptr %max_dist, align 8
  %83 = load i64, ptr %min_dist, align 8
  %84 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %84 to i64
  %arrayidx144 = getelementptr inbounds [256 x i64], ptr %mindist, i64 0, i64 %idxprom143
  store i64 %83, ptr %arrayidx144, align 8
  %85 = load i64, ptr %minmaxdist, align 8
  %cmp145 = icmp slt i64 %storemerge10, %85
  br i1 %cmp145, label %if.then147, label %for.inc

if.then147:                                       ; preds = %if.end142
  %86 = load i64, ptr %max_dist, align 8
  store i64 %86, ptr %minmaxdist, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end142, %if.then147
  %87 = load i32, ptr %i, align 4
  %inc = add nsw i32 %87, 1
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ncolors, align 4
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc163, %for.end
  %storemerge1 = phi i32 [ 0, %for.end ], [ %inc164, %for.inc163 ]
  store i32 %storemerge1, ptr %i, align 4
  %88 = load i32, ptr %numcolors, align 4
  %cmp150 = icmp slt i32 %storemerge1, %88
  br i1 %cmp150, label %for.body152, label %for.end165

for.body152:                                      ; preds = %for.cond149
  %89 = load i32, ptr %i, align 4
  %idxprom153 = sext i32 %89 to i64
  %arrayidx154 = getelementptr inbounds [256 x i64], ptr %mindist, i64 0, i64 %idxprom153
  %90 = load i64, ptr %arrayidx154, align 8
  %91 = load i64, ptr %minmaxdist, align 8
  %cmp155.not = icmp sgt i64 %90, %91
  br i1 %cmp155.not, label %for.inc163, label %if.then157

if.then157:                                       ; preds = %for.body152
  %92 = load i32, ptr %i, align 4
  %conv158 = trunc i32 %92 to i8
  %93 = load ptr, ptr %colorlist.addr, align 8
  %94 = load i32, ptr %ncolors, align 4
  %inc159 = add nsw i32 %94, 1
  store i32 %inc159, ptr %ncolors, align 4
  %idxprom160 = sext i32 %94 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %93, i64 %idxprom160
  store i8 %conv158, ptr %arrayidx161, align 1
  br label %for.inc163

for.inc163:                                       ; preds = %for.body152, %if.then157
  %95 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %95, 1
  br label %for.cond149, !llvm.loop !50

for.end165:                                       ; preds = %for.cond149
  %96 = load i32, ptr %ncolors, align 4
  ret i32 %96
}

; Function Attrs: nounwind ssp uwtable
define internal void @find_best_colors(ptr noundef %cinfo, i32 noundef %minc0, i32 noundef %minc1, i32 noundef %minc2, i32 noundef %numcolors, ptr noundef %colorlist, ptr noundef %bestcolor) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %minc0.addr = alloca i32, align 4
  %minc1.addr = alloca i32, align 4
  %minc2.addr = alloca i32, align 4
  %numcolors.addr = alloca i32, align 4
  %colorlist.addr = alloca ptr, align 8
  %bestcolor.addr = alloca ptr, align 8
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %i = alloca i32, align 4
  %icolor = alloca i32, align 4
  %bptr = alloca ptr, align 8
  %cptr = alloca ptr, align 8
  %dist0 = alloca i64, align 8
  %dist1 = alloca i64, align 8
  %dist2 = alloca i64, align 8
  %xx0 = alloca i64, align 8
  %xx1 = alloca i64, align 8
  %xx2 = alloca i64, align 8
  %inc0 = alloca i64, align 8
  %inc1 = alloca i64, align 8
  %inc2 = alloca i64, align 8
  %bestdist = alloca [128 x i64], align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %minc0, ptr %minc0.addr, align 4
  store i32 %minc1, ptr %minc1.addr, align 4
  store i32 %minc2, ptr %minc2.addr, align 4
  store i32 %numcolors, ptr %numcolors.addr, align 4
  store ptr %colorlist, ptr %colorlist.addr, align 8
  store ptr %bestcolor, ptr %bestcolor.addr, align 8
  store ptr %bestdist, ptr %bptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 127, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp sgt i32 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.cond1

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %bptr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %bptr, align 8
  store i64 2147483647, ptr %0, align 8
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  br label %for.cond, !llvm.loop !51

for.cond1:                                        ; preds = %for.cond, %for.inc68
  %storemerge1 = phi i32 [ %inc, %for.inc68 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %2 = load i32, ptr %numcolors.addr, align 4
  %cmp2 = icmp slt i32 %storemerge1, %2
  br i1 %cmp2, label %for.body3, label %for.end69

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %colorlist.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %icolor, align 4
  %6 = load i32, ptr %minc0.addr, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 32
  %8 = load ptr, ptr %colormap, align 8
  %9 = load ptr, ptr %8, align 8
  %idxprom5 = zext i8 %5 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 %idxprom5
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %sub = sub nsw i32 %6, %conv7
  %mul = shl nsw i32 %sub, 1
  %conv8 = sext i32 %mul to i64
  store i64 %conv8, ptr %inc0, align 8
  %mul9 = mul nsw i64 %conv8, %conv8
  store i64 %mul9, ptr %dist0, align 8
  %11 = load i32, ptr %minc1.addr, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %colormap10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 32
  %13 = load ptr, ptr %colormap10, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx11, align 8
  %15 = load i32, ptr %icolor, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %14, i64 %idxprom12
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %16 to i32
  %sub15 = sub nsw i32 %11, %conv14
  %mul16 = mul nsw i32 %sub15, 3
  %conv17 = sext i32 %mul16 to i64
  store i64 %conv17, ptr %inc1, align 8
  %mul18 = mul nsw i64 %conv17, %conv17
  %17 = load i64, ptr %dist0, align 8
  %add = add nsw i64 %17, %mul18
  store i64 %add, ptr %dist0, align 8
  %18 = load i32, ptr %minc2.addr, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %colormap19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 32
  %20 = load ptr, ptr %colormap19, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx20, align 8
  %22 = load i32, ptr %icolor, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %21, i64 %idxprom21
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  %sub24 = sub nsw i32 %18, %conv23
  %conv26 = sext i32 %sub24 to i64
  store i64 %conv26, ptr %inc2, align 8
  %mul27 = mul nsw i64 %conv26, %conv26
  %24 = load i64, ptr %dist0, align 8
  %add28 = add nsw i64 %24, %mul27
  store i64 %add28, ptr %dist0, align 8
  %25 = load i64, ptr %inc0, align 8
  %mul29 = shl nsw i64 %25, 5
  %add30 = add nsw i64 %mul29, 256
  store i64 %add30, ptr %inc0, align 8
  %26 = load i64, ptr %inc1, align 8
  %mul31 = mul nsw i64 %26, 24
  %add32 = add nsw i64 %mul31, 144
  store i64 %add32, ptr %inc1, align 8
  %27 = load i64, ptr %inc2, align 8
  %mul33 = shl nsw i64 %27, 4
  %add34 = add nsw i64 %mul33, 64
  store i64 %add34, ptr %inc2, align 8
  store ptr %bestdist, ptr %bptr, align 8
  %28 = load ptr, ptr %bestcolor.addr, align 8
  store ptr %28, ptr %cptr, align 8
  %29 = load i64, ptr %inc0, align 8
  store i64 %29, ptr %xx0, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.end62, %for.body3
  %storemerge2 = phi i32 [ 3, %for.body3 ], [ %dec66, %for.end62 ]
  store i32 %storemerge2, ptr %ic0, align 4
  %cmp37 = icmp sgt i32 %storemerge2, -1
  br i1 %cmp37, label %for.body39, label %for.inc68

for.body39:                                       ; preds = %for.cond36
  %30 = load i64, ptr %dist0, align 8
  store i64 %30, ptr %dist1, align 8
  %31 = load i64, ptr %inc1, align 8
  store i64 %31, ptr %xx1, align 8
  br label %for.cond40

for.cond40:                                       ; preds = %for.end57, %for.body39
  %storemerge3 = phi i32 [ 7, %for.body39 ], [ %dec61, %for.end57 ]
  store i32 %storemerge3, ptr %ic1, align 4
  %cmp41 = icmp sgt i32 %storemerge3, -1
  br i1 %cmp41, label %for.body43, label %for.end62

for.body43:                                       ; preds = %for.cond40
  %32 = load i64, ptr %dist1, align 8
  store i64 %32, ptr %dist2, align 8
  %33 = load i64, ptr %inc2, align 8
  store i64 %33, ptr %xx2, align 8
  br label %for.cond44

for.cond44:                                       ; preds = %if.end, %for.body43
  %storemerge4 = phi i32 [ 3, %for.body43 ], [ %dec56, %if.end ]
  store i32 %storemerge4, ptr %ic2, align 4
  %cmp45 = icmp sgt i32 %storemerge4, -1
  br i1 %cmp45, label %for.body47, label %for.end57

for.body47:                                       ; preds = %for.cond44
  %34 = load i64, ptr %dist2, align 8
  %35 = load ptr, ptr %bptr, align 8
  %36 = load i64, ptr %35, align 8
  %cmp48 = icmp slt i64 %34, %36
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %for.body47
  %37 = load i64, ptr %dist2, align 8
  %38 = load ptr, ptr %bptr, align 8
  store i64 %37, ptr %38, align 8
  %39 = load i32, ptr %icolor, align 4
  %conv50 = trunc i32 %39 to i8
  %40 = load ptr, ptr %cptr, align 8
  store i8 %conv50, ptr %40, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body47
  %41 = load i64, ptr %xx2, align 8
  %42 = load i64, ptr %dist2, align 8
  %add51 = add nsw i64 %42, %41
  store i64 %add51, ptr %dist2, align 8
  %add52 = add nsw i64 %41, 128
  store i64 %add52, ptr %xx2, align 8
  %43 = load ptr, ptr %bptr, align 8
  %incdec.ptr53 = getelementptr inbounds i64, ptr %43, i64 1
  store ptr %incdec.ptr53, ptr %bptr, align 8
  %44 = load ptr, ptr %cptr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr54, ptr %cptr, align 8
  %45 = load i32, ptr %ic2, align 4
  %dec56 = add nsw i32 %45, -1
  br label %for.cond44, !llvm.loop !52

for.end57:                                        ; preds = %for.cond44
  %46 = load i64, ptr %xx1, align 8
  %47 = load i64, ptr %dist1, align 8
  %add58 = add nsw i64 %47, %46
  store i64 %add58, ptr %dist1, align 8
  %add59 = add nsw i64 %46, 288
  store i64 %add59, ptr %xx1, align 8
  %48 = load i32, ptr %ic1, align 4
  %dec61 = add nsw i32 %48, -1
  br label %for.cond40, !llvm.loop !53

for.end62:                                        ; preds = %for.cond40
  %49 = load i64, ptr %xx0, align 8
  %50 = load i64, ptr %dist0, align 8
  %add63 = add nsw i64 %50, %49
  store i64 %add63, ptr %dist0, align 8
  %add64 = add nsw i64 %49, 512
  store i64 %add64, ptr %xx0, align 8
  %51 = load i32, ptr %ic0, align 4
  %dec66 = add nsw i32 %51, -1
  br label %for.cond36, !llvm.loop !54

for.inc68:                                        ; preds = %for.cond36
  %52 = load i32, ptr %i, align 4
  %inc = add nsw i32 %52, 1
  br label %for.cond1, !llvm.loop !55

for.end69:                                        ; preds = %for.cond1
  ret void
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
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
