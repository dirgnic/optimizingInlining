; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jquant2.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jquant2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_2pass_quantizer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %i = alloca i32, align 4
  %desired = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 88)
  store ptr %call, ptr %cquantize, align 8
  %4 = load ptr, ptr %cquantize, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 83
  store ptr %4, ptr %cquantize1, align 8
  %6 = load ptr, ptr %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub, i32 0, i32 0
  store ptr @start_pass_2_quant, ptr %start_pass, align 8
  %7 = load ptr, ptr %cquantize, align 8
  %pub2 = getelementptr inbounds %struct.my_cquantizer, ptr %7, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub2, i32 0, i32 3
  store ptr @new_color_map_2_quant, ptr %new_color_map, align 8
  %8 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 5
  store ptr null, ptr %fserrors, align 8
  %9 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %9, i32 0, i32 7
  store ptr null, ptr %error_limiter, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 28
  %11 = load i32, ptr %out_color_components, align 8
  %cmp = icmp ne i32 %11, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 5
  store i32 46, ptr %msg_code, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %error_exit, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %mem4, align 8
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %alloc_small5, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call6 = call ptr %20(ptr noundef %21, i32 noundef 1, i64 noundef 256)
  %22 = load ptr, ptr %cquantize, align 8
  %histogram = getelementptr inbounds %struct.my_cquantizer, ptr %22, i32 0, i32 3
  store ptr %call6, ptr %histogram, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %i, align 4
  %cmp7 = icmp slt i32 %23, 32
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %mem8, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %alloc_large, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %call9 = call ptr %26(ptr noundef %27, i32 noundef 1, i64 noundef 4096)
  %28 = load ptr, ptr %cquantize, align 8
  %histogram10 = getelementptr inbounds %struct.my_cquantizer, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %histogram10, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %29, i64 %idxprom
  store ptr %call9, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %32, i32 0, i32 4
  store i32 1, ptr %needs_zeroed, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 25
  %34 = load i32, ptr %enable_2pass_quant, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.end
  %35 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 22
  %36 = load i32, ptr %desired_number_of_colors, align 8
  store i32 %36, ptr %desired, align 4
  %37 = load i32, ptr %desired, align 4
  %cmp12 = icmp slt i32 %37, 8
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.then11
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err14, align 8
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 5
  store i32 55, ptr %msg_code15, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err16, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 8, ptr %arrayidx17, align 4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err18, align 8
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %error_exit19, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void %44(ptr noundef %45)
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.then11
  %46 = load i32, ptr %desired, align 4
  %cmp21 = icmp sgt i32 %46, 256
  br i1 %cmp21, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.end20
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err23, align 8
  %msg_code24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 5
  store i32 56, ptr %msg_code24, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err25, align 8
  %msg_parm26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i32 0, i32 6
  %arrayidx27 = getelementptr inbounds [8 x i32], ptr %msg_parm26, i64 0, i64 0
  store i32 256, ptr %arrayidx27, align 4
  %51 = load ptr, ptr %cinfo.addr, align 8
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %err28, align 8
  %error_exit29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %error_exit29, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  call void %53(ptr noundef %54)
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %if.end20
  %55 = load ptr, ptr %cinfo.addr, align 8
  %mem31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %mem31, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %alloc_sarray, align 8
  %58 = load ptr, ptr %cinfo.addr, align 8
  %59 = load i32, ptr %desired, align 4
  %call32 = call ptr %57(ptr noundef %58, i32 noundef 1, i32 noundef %59, i32 noundef 3)
  %60 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %60, i32 0, i32 1
  store ptr %call32, ptr %sv_colormap, align 8
  %61 = load i32, ptr %desired, align 4
  %62 = load ptr, ptr %cquantize, align 8
  %desired33 = getelementptr inbounds %struct.my_cquantizer, ptr %62, i32 0, i32 2
  store i32 %61, ptr %desired33, align 8
  br label %if.end35

if.else:                                          ; preds = %for.end
  %63 = load ptr, ptr %cquantize, align 8
  %sv_colormap34 = getelementptr inbounds %struct.my_cquantizer, ptr %63, i32 0, i32 1
  store ptr null, ptr %sv_colormap34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end30
  %64 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 20
  %65 = load i32, ptr %dither_mode, align 8
  %cmp36 = icmp ne i32 %65, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %66 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 20
  store i32 2, ptr %dither_mode38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %67 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 20
  %68 = load i32, ptr %dither_mode40, align 8
  %cmp41 = icmp eq i32 %68, 2
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end39
  %69 = load ptr, ptr %cinfo.addr, align 8
  %mem43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %mem43, align 8
  %alloc_large44 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %alloc_large44, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 26
  %74 = load i32, ptr %output_width, align 8
  %add = add i32 %74, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 6
  %call45 = call ptr %71(ptr noundef %72, i32 noundef 1, i64 noundef %mul)
  %75 = load ptr, ptr %cquantize, align 8
  %fserrors46 = getelementptr inbounds %struct.my_cquantizer, ptr %75, i32 0, i32 5
  store ptr %call45, ptr %fserrors46, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void @init_error_limit(ptr noundef %76)
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 20
  %5 = load i32, ptr %dither_mode, align 8
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 20
  store i32 2, ptr %dither_mode3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %is_pre_scan.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub, i32 0, i32 1
  store ptr @prescan_quantize, ptr %color_quantize, align 8
  %9 = load ptr, ptr %cquantize, align 8
  %pub5 = getelementptr inbounds %struct.my_cquantizer, ptr %9, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub5, i32 0, i32 2
  store ptr @finish_pass1, ptr %finish_pass, align 8
  %10 = load ptr, ptr %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %10, i32 0, i32 4
  store i32 1, ptr %needs_zeroed, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 20
  %12 = load i32, ptr %dither_mode6, align 8
  %cmp7 = icmp eq i32 %12, 2
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %13 = load ptr, ptr %cquantize, align 8
  %pub9 = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 0
  %color_quantize10 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub9, i32 0, i32 1
  store ptr @pass2_fs_dither, ptr %color_quantize10, align 8
  br label %if.end14

if.else11:                                        ; preds = %if.else
  %14 = load ptr, ptr %cquantize, align 8
  %pub12 = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 0
  %color_quantize13 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub12, i32 0, i32 1
  store ptr @pass2_no_dither, ptr %color_quantize13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8
  %15 = load ptr, ptr %cquantize, align 8
  %pub15 = getelementptr inbounds %struct.my_cquantizer, ptr %15, i32 0, i32 0
  %finish_pass16 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub15, i32 0, i32 2
  store ptr @finish_pass2, ptr %finish_pass16, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 31
  %17 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %17, ptr %i, align 4
  %18 = load i32, ptr %i, align 4
  %cmp17 = icmp slt i32 %18, 1
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 55, ptr %msg_code, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err19, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 1, ptr %arrayidx, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err20, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %error_exit, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  call void %25(ptr noundef %26)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14
  %27 = load i32, ptr %i, align 4
  %cmp22 = icmp sgt i32 %27, 256
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end21
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err24, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5
  store i32 56, ptr %msg_code25, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err26, align 8
  %msg_parm27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 6
  %arrayidx28 = getelementptr inbounds [8 x i32], ptr %msg_parm27, i64 0, i64 0
  store i32 256, ptr %arrayidx28, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err29, align 8
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit30, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end21
  %36 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 20
  %37 = load i32, ptr %dither_mode32, align 8
  %cmp33 = icmp eq i32 %37, 2
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.end31
  %38 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 26
  %39 = load i32, ptr %output_width, align 8
  %add = add i32 %39, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 6
  store i64 %mul, ptr %arraysize, align 8
  %40 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %fserrors, align 8
  %cmp35 = icmp eq ptr %41, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then34
  %42 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %alloc_large, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load i64, ptr %arraysize, align 8
  %call = call ptr %44(ptr noundef %45, i32 noundef 1, i64 noundef %46)
  %47 = load ptr, ptr %cquantize, align 8
  %fserrors38 = getelementptr inbounds %struct.my_cquantizer, ptr %47, i32 0, i32 5
  store ptr %call, ptr %fserrors38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34
  %48 = load ptr, ptr %cquantize, align 8
  %fserrors40 = getelementptr inbounds %struct.my_cquantizer, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %fserrors40, align 8
  %50 = load i64, ptr %arraysize, align 8
  call void @jzero_far(ptr noundef %49, i64 noundef %50)
  %51 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %51, i32 0, i32 7
  %52 = load ptr, ptr %error_limiter, align 8
  %cmp41 = icmp eq ptr %52, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void @init_error_limit(ptr noundef %53)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39
  %54 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %54, i32 0, i32 6
  store i32 0, ptr %on_odd_row, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end31
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then4
  %55 = load ptr, ptr %cquantize, align 8
  %needs_zeroed47 = getelementptr inbounds %struct.my_cquantizer, ptr %55, i32 0, i32 4
  %56 = load i32, ptr %needs_zeroed47, align 8
  %tobool48 = icmp ne i32 %56, 0
  br i1 %tobool48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end46
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then49
  %57 = load i32, ptr %i, align 4
  %cmp50 = icmp slt i32 %57, 32
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load ptr, ptr %histogram, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %58, i64 %idxprom
  %60 = load ptr, ptr %arrayidx52, align 8
  call void @jzero_far(ptr noundef %60, i64 noundef 4096)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, ptr %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %62 = load ptr, ptr %cquantize, align 8
  %needs_zeroed53 = getelementptr inbounds %struct.my_cquantizer, ptr %62, i32 0, i32 4
  store i32 0, ptr %needs_zeroed53, align 8
  br label %if.end54

if.end54:                                         ; preds = %for.end, %if.end46
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @new_color_map_2_quant(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 2044)
  store ptr %call, ptr %table, align 8
  %6 = load ptr, ptr %table, align 8
  %add.ptr = getelementptr inbounds i32, ptr %6, i64 255
  store ptr %add.ptr, ptr %table, align 8
  %7 = load ptr, ptr %table, align 8
  %8 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 7
  store ptr %7, ptr %error_limiter, align 8
  store i32 0, ptr %out, align 4
  store i32 0, ptr %in, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %in, align 4
  %cmp = icmp slt i32 %9, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %out, align 4
  %11 = load ptr, ptr %table, align 8
  %12 = load i32, ptr %in, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom
  store i32 %10, ptr %arrayidx, align 4
  %13 = load i32, ptr %out, align 4
  %sub = sub nsw i32 0, %13
  %14 = load ptr, ptr %table, align 8
  %15 = load i32, ptr %in, align 4
  %sub2 = sub nsw i32 0, %15
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %14, i64 %idxprom3
  store i32 %sub, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %in, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %in, align 4
  %17 = load i32, ptr %out, align 4
  %inc5 = add nsw i32 %17, 1
  store i32 %inc5, ptr %out, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %18 = load i32, ptr %in, align 4
  %cmp7 = icmp slt i32 %18, 48
  br i1 %cmp7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond6
  %19 = load i32, ptr %out, align 4
  %20 = load ptr, ptr %table, align 8
  %21 = load i32, ptr %in, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 %idxprom9
  store i32 %19, ptr %arrayidx10, align 4
  %22 = load i32, ptr %out, align 4
  %sub11 = sub nsw i32 0, %22
  %23 = load ptr, ptr %table, align 8
  %24 = load i32, ptr %in, align 4
  %sub12 = sub nsw i32 0, %24
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %23, i64 %idxprom13
  store i32 %sub11, ptr %arrayidx14, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.body8
  %25 = load i32, ptr %in, align 4
  %inc16 = add nsw i32 %25, 1
  store i32 %inc16, ptr %in, align 4
  %26 = load i32, ptr %in, align 4
  %and = and i32 %26, 1
  %tobool = icmp ne i32 %and, 0
  %27 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  %28 = load i32, ptr %out, align 4
  %add = add nsw i32 %28, %cond
  store i32 %add, ptr %out, align 4
  br label %for.cond6, !llvm.loop !10

for.end17:                                        ; preds = %for.cond6
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.end17
  %29 = load i32, ptr %in, align 4
  %cmp19 = icmp sle i32 %29, 255
  br i1 %cmp19, label %for.body20, label %for.end29

for.body20:                                       ; preds = %for.cond18
  %30 = load i32, ptr %out, align 4
  %31 = load ptr, ptr %table, align 8
  %32 = load i32, ptr %in, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %31, i64 %idxprom21
  store i32 %30, ptr %arrayidx22, align 4
  %33 = load i32, ptr %out, align 4
  %sub23 = sub nsw i32 0, %33
  %34 = load ptr, ptr %table, align 8
  %35 = load i32, ptr %in, align 4
  %sub24 = sub nsw i32 0, %35
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %34, i64 %idxprom25
  store i32 %sub23, ptr %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body20
  %36 = load i32, ptr %in, align 4
  %inc28 = add nsw i32 %36, 1
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
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %histp = alloca ptr, align 8
  %histogram = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %width, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %6 = load i32, ptr %row, align 4
  %7 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %input_buf.addr, align 8
  %9 = load i32, ptr %row, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %ptr, align 8
  %11 = load i32, ptr %width, align 4
  store i32 %11, ptr %col, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %col, align 4
  %cmp4 = icmp ugt i32 %12, 0
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %13 = load ptr, ptr %histogram, align 8
  %14 = load ptr, ptr %ptr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %15 to i32
  %shr = ashr i32 %conv, 3
  %idxprom7 = sext i32 %shr to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %13, i64 %idxprom7
  %16 = load ptr, ptr %arrayidx8, align 8
  %17 = load ptr, ptr %ptr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %18 to i32
  %shr11 = ashr i32 %conv10, 2
  %idxprom12 = sext i32 %shr11 to i64
  %arrayidx13 = getelementptr inbounds [32 x i16], ptr %16, i64 %idxprom12
  %19 = load ptr, ptr %ptr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %20 to i32
  %shr16 = ashr i32 %conv15, 3
  %idxprom17 = sext i32 %shr16 to i64
  %arrayidx18 = getelementptr inbounds [32 x i16], ptr %arrayidx13, i64 0, i64 %idxprom17
  store ptr %arrayidx18, ptr %histp, align 8
  %21 = load ptr, ptr %histp, align 8
  %22 = load i16, ptr %21, align 2
  %inc = add i16 %22, 1
  store i16 %inc, ptr %21, align 2
  %conv19 = zext i16 %inc to i32
  %cmp20 = icmp sle i32 %conv19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %23 = load ptr, ptr %histp, align 8
  %24 = load i16, ptr %23, align 2
  %dec = add i16 %24, -1
  store i16 %dec, ptr %23, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %25 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 3
  store ptr %add.ptr, ptr %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, ptr %col, align 4
  %dec22 = add i32 %26, -1
  store i32 %dec22, ptr %col, align 4
  br label %for.cond3, !llvm.loop !12

for.end:                                          ; preds = %for.cond3
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %27 = load i32, ptr %row, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, ptr %row, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %sv_colormap, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 32
  store ptr %3, ptr %colormap, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %cquantize, align 8
  %desired = getelementptr inbounds %struct.my_cquantizer, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %desired, align 8
  call void @select_colors(ptr noundef %5, i32 noundef %7)
  %8 = load ptr, ptr %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %width, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 61
  %7 = load ptr, ptr %sample_range_limit, align 8
  store ptr %7, ptr %range_limit, align 8
  %8 = load ptr, ptr %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %error_limiter, align 8
  store ptr %9, ptr %error_limit, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 32
  %11 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %colormap0, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %colormap3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 32
  %14 = load ptr, ptr %colormap3, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx4, align 8
  store ptr %15, ptr %colormap1, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %colormap5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 32
  %17 = load ptr, ptr %colormap5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx6, align 8
  store ptr %18, ptr %colormap2, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc133, %entry
  %19 = load i32, ptr %row, align 4
  %20 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end134

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %input_buf.addr, align 8
  %22 = load i32, ptr %row, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx7, align 8
  store ptr %23, ptr %inptr, align 8
  %24 = load ptr, ptr %output_buf.addr, align 8
  %25 = load i32, ptr %row, align 4
  %idxprom8 = sext i32 %25 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %24, i64 %idxprom8
  %26 = load ptr, ptr %arrayidx9, align 8
  store ptr %26, ptr %outptr, align 8
  %27 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %on_odd_row, align 8
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %29 = load i32, ptr %width, align 4
  %sub = sub i32 %29, 1
  %mul = mul i32 %sub, 3
  %30 = load ptr, ptr %inptr, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %idx.ext
  store ptr %add.ptr, ptr %inptr, align 8
  %31 = load i32, ptr %width, align 4
  %sub10 = sub i32 %31, 1
  %32 = load ptr, ptr %outptr, align 8
  %idx.ext11 = zext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %32, i64 %idx.ext11
  store ptr %add.ptr12, ptr %outptr, align 8
  store i32 -1, ptr %dir, align 4
  store i32 -3, ptr %dir3, align 4
  %33 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %fserrors, align 8
  %35 = load i32, ptr %width, align 4
  %add = add i32 %35, 1
  %mul13 = mul i32 %add, 3
  %idx.ext14 = zext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i16, ptr %34, i64 %idx.ext14
  store ptr %add.ptr15, ptr %errorptr, align 8
  %36 = load ptr, ptr %cquantize, align 8
  %on_odd_row16 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i32 0, i32 6
  store i32 0, ptr %on_odd_row16, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 1, ptr %dir, align 4
  store i32 3, ptr %dir3, align 4
  %37 = load ptr, ptr %cquantize, align 8
  %fserrors17 = getelementptr inbounds %struct.my_cquantizer, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %fserrors17, align 8
  store ptr %38, ptr %errorptr, align 8
  %39 = load ptr, ptr %cquantize, align 8
  %on_odd_row18 = getelementptr inbounds %struct.my_cquantizer, ptr %39, i32 0, i32 6
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
  %40 = load i32, ptr %width, align 4
  store i32 %40, ptr %col, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end
  %41 = load i32, ptr %col, align 4
  %cmp20 = icmp ugt i32 %41, 0
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond19
  %42 = load i32, ptr %cur0, align 4
  %43 = load ptr, ptr %errorptr, align 8
  %44 = load i32, ptr %dir3, align 4
  %add22 = add nsw i32 %44, 0
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %43, i64 %idxprom23
  %45 = load i16, ptr %arrayidx24, align 2
  %conv = sext i16 %45 to i32
  %add25 = add nsw i32 %42, %conv
  %add26 = add nsw i32 %add25, 8
  %shr = ashr i32 %add26, 4
  store i32 %shr, ptr %cur0, align 4
  %46 = load i32, ptr %cur1, align 4
  %47 = load ptr, ptr %errorptr, align 8
  %48 = load i32, ptr %dir3, align 4
  %add27 = add nsw i32 %48, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %47, i64 %idxprom28
  %49 = load i16, ptr %arrayidx29, align 2
  %conv30 = sext i16 %49 to i32
  %add31 = add nsw i32 %46, %conv30
  %add32 = add nsw i32 %add31, 8
  %shr33 = ashr i32 %add32, 4
  store i32 %shr33, ptr %cur1, align 4
  %50 = load i32, ptr %cur2, align 4
  %51 = load ptr, ptr %errorptr, align 8
  %52 = load i32, ptr %dir3, align 4
  %add34 = add nsw i32 %52, 2
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %51, i64 %idxprom35
  %53 = load i16, ptr %arrayidx36, align 2
  %conv37 = sext i16 %53 to i32
  %add38 = add nsw i32 %50, %conv37
  %add39 = add nsw i32 %add38, 8
  %shr40 = ashr i32 %add39, 4
  store i32 %shr40, ptr %cur2, align 4
  %54 = load ptr, ptr %error_limit, align 8
  %55 = load i32, ptr %cur0, align 4
  %idxprom41 = sext i32 %55 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %54, i64 %idxprom41
  %56 = load i32, ptr %arrayidx42, align 4
  store i32 %56, ptr %cur0, align 4
  %57 = load ptr, ptr %error_limit, align 8
  %58 = load i32, ptr %cur1, align 4
  %idxprom43 = sext i32 %58 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %57, i64 %idxprom43
  %59 = load i32, ptr %arrayidx44, align 4
  store i32 %59, ptr %cur1, align 4
  %60 = load ptr, ptr %error_limit, align 8
  %61 = load i32, ptr %cur2, align 4
  %idxprom45 = sext i32 %61 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %60, i64 %idxprom45
  %62 = load i32, ptr %arrayidx46, align 4
  store i32 %62, ptr %cur2, align 4
  %63 = load ptr, ptr %inptr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %64 to i32
  %65 = load i32, ptr %cur0, align 4
  %add49 = add nsw i32 %65, %conv48
  store i32 %add49, ptr %cur0, align 4
  %66 = load ptr, ptr %inptr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %67 to i32
  %68 = load i32, ptr %cur1, align 4
  %add52 = add nsw i32 %68, %conv51
  store i32 %add52, ptr %cur1, align 4
  %69 = load ptr, ptr %inptr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %69, i64 2
  %70 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %70 to i32
  %71 = load i32, ptr %cur2, align 4
  %add55 = add nsw i32 %71, %conv54
  store i32 %add55, ptr %cur2, align 4
  %72 = load ptr, ptr %range_limit, align 8
  %73 = load i32, ptr %cur0, align 4
  %idxprom56 = sext i32 %73 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %72, i64 %idxprom56
  %74 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %74 to i32
  store i32 %conv58, ptr %cur0, align 4
  %75 = load ptr, ptr %range_limit, align 8
  %76 = load i32, ptr %cur1, align 4
  %idxprom59 = sext i32 %76 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %75, i64 %idxprom59
  %77 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %77 to i32
  store i32 %conv61, ptr %cur1, align 4
  %78 = load ptr, ptr %range_limit, align 8
  %79 = load i32, ptr %cur2, align 4
  %idxprom62 = sext i32 %79 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %78, i64 %idxprom62
  %80 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %80 to i32
  store i32 %conv64, ptr %cur2, align 4
  %81 = load ptr, ptr %histogram, align 8
  %82 = load i32, ptr %cur0, align 4
  %shr65 = ashr i32 %82, 3
  %idxprom66 = sext i32 %shr65 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %81, i64 %idxprom66
  %83 = load ptr, ptr %arrayidx67, align 8
  %84 = load i32, ptr %cur1, align 4
  %shr68 = ashr i32 %84, 2
  %idxprom69 = sext i32 %shr68 to i64
  %arrayidx70 = getelementptr inbounds [32 x i16], ptr %83, i64 %idxprom69
  %85 = load i32, ptr %cur2, align 4
  %shr71 = ashr i32 %85, 3
  %idxprom72 = sext i32 %shr71 to i64
  %arrayidx73 = getelementptr inbounds [32 x i16], ptr %arrayidx70, i64 0, i64 %idxprom72
  store ptr %arrayidx73, ptr %cachep, align 8
  %86 = load ptr, ptr %cachep, align 8
  %87 = load i16, ptr %86, align 2
  %conv74 = zext i16 %87 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then77, label %if.end81

if.then77:                                        ; preds = %for.body21
  %88 = load ptr, ptr %cinfo.addr, align 8
  %89 = load i32, ptr %cur0, align 4
  %shr78 = ashr i32 %89, 3
  %90 = load i32, ptr %cur1, align 4
  %shr79 = ashr i32 %90, 2
  %91 = load i32, ptr %cur2, align 4
  %shr80 = ashr i32 %91, 3
  call void @fill_inverse_cmap(ptr noundef %88, i32 noundef %shr78, i32 noundef %shr79, i32 noundef %shr80)
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %for.body21
  %92 = load ptr, ptr %cachep, align 8
  %93 = load i16, ptr %92, align 2
  %conv82 = zext i16 %93 to i32
  %sub83 = sub nsw i32 %conv82, 1
  store i32 %sub83, ptr %pixcode, align 4
  %94 = load i32, ptr %pixcode, align 4
  %conv84 = trunc i32 %94 to i8
  %95 = load ptr, ptr %outptr, align 8
  store i8 %conv84, ptr %95, align 1
  %96 = load ptr, ptr %colormap0, align 8
  %97 = load i32, ptr %pixcode, align 4
  %idxprom85 = sext i32 %97 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %96, i64 %idxprom85
  %98 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %98 to i32
  %99 = load i32, ptr %cur0, align 4
  %sub88 = sub nsw i32 %99, %conv87
  store i32 %sub88, ptr %cur0, align 4
  %100 = load ptr, ptr %colormap1, align 8
  %101 = load i32, ptr %pixcode, align 4
  %idxprom89 = sext i32 %101 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %100, i64 %idxprom89
  %102 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %102 to i32
  %103 = load i32, ptr %cur1, align 4
  %sub92 = sub nsw i32 %103, %conv91
  store i32 %sub92, ptr %cur1, align 4
  %104 = load ptr, ptr %colormap2, align 8
  %105 = load i32, ptr %pixcode, align 4
  %idxprom93 = sext i32 %105 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %104, i64 %idxprom93
  %106 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %106 to i32
  %107 = load i32, ptr %cur2, align 4
  %sub96 = sub nsw i32 %107, %conv95
  store i32 %sub96, ptr %cur2, align 4
  %108 = load i32, ptr %cur0, align 4
  store i32 %108, ptr %bnexterr, align 4
  %109 = load i32, ptr %cur0, align 4
  %mul97 = mul nsw i32 %109, 2
  store i32 %mul97, ptr %delta, align 4
  %110 = load i32, ptr %delta, align 4
  %111 = load i32, ptr %cur0, align 4
  %add98 = add nsw i32 %111, %110
  store i32 %add98, ptr %cur0, align 4
  %112 = load i32, ptr %bpreverr0, align 4
  %113 = load i32, ptr %cur0, align 4
  %add99 = add nsw i32 %112, %113
  %conv100 = trunc i32 %add99 to i16
  %114 = load ptr, ptr %errorptr, align 8
  %arrayidx101 = getelementptr inbounds i16, ptr %114, i64 0
  store i16 %conv100, ptr %arrayidx101, align 2
  %115 = load i32, ptr %delta, align 4
  %116 = load i32, ptr %cur0, align 4
  %add102 = add nsw i32 %116, %115
  store i32 %add102, ptr %cur0, align 4
  %117 = load i32, ptr %belowerr0, align 4
  %118 = load i32, ptr %cur0, align 4
  %add103 = add nsw i32 %117, %118
  store i32 %add103, ptr %bpreverr0, align 4
  %119 = load i32, ptr %bnexterr, align 4
  store i32 %119, ptr %belowerr0, align 4
  %120 = load i32, ptr %delta, align 4
  %121 = load i32, ptr %cur0, align 4
  %add104 = add nsw i32 %121, %120
  store i32 %add104, ptr %cur0, align 4
  %122 = load i32, ptr %cur1, align 4
  store i32 %122, ptr %bnexterr, align 4
  %123 = load i32, ptr %cur1, align 4
  %mul105 = mul nsw i32 %123, 2
  store i32 %mul105, ptr %delta, align 4
  %124 = load i32, ptr %delta, align 4
  %125 = load i32, ptr %cur1, align 4
  %add106 = add nsw i32 %125, %124
  store i32 %add106, ptr %cur1, align 4
  %126 = load i32, ptr %bpreverr1, align 4
  %127 = load i32, ptr %cur1, align 4
  %add107 = add nsw i32 %126, %127
  %conv108 = trunc i32 %add107 to i16
  %128 = load ptr, ptr %errorptr, align 8
  %arrayidx109 = getelementptr inbounds i16, ptr %128, i64 1
  store i16 %conv108, ptr %arrayidx109, align 2
  %129 = load i32, ptr %delta, align 4
  %130 = load i32, ptr %cur1, align 4
  %add110 = add nsw i32 %130, %129
  store i32 %add110, ptr %cur1, align 4
  %131 = load i32, ptr %belowerr1, align 4
  %132 = load i32, ptr %cur1, align 4
  %add111 = add nsw i32 %131, %132
  store i32 %add111, ptr %bpreverr1, align 4
  %133 = load i32, ptr %bnexterr, align 4
  store i32 %133, ptr %belowerr1, align 4
  %134 = load i32, ptr %delta, align 4
  %135 = load i32, ptr %cur1, align 4
  %add112 = add nsw i32 %135, %134
  store i32 %add112, ptr %cur1, align 4
  %136 = load i32, ptr %cur2, align 4
  store i32 %136, ptr %bnexterr, align 4
  %137 = load i32, ptr %cur2, align 4
  %mul113 = mul nsw i32 %137, 2
  store i32 %mul113, ptr %delta, align 4
  %138 = load i32, ptr %delta, align 4
  %139 = load i32, ptr %cur2, align 4
  %add114 = add nsw i32 %139, %138
  store i32 %add114, ptr %cur2, align 4
  %140 = load i32, ptr %bpreverr2, align 4
  %141 = load i32, ptr %cur2, align 4
  %add115 = add nsw i32 %140, %141
  %conv116 = trunc i32 %add115 to i16
  %142 = load ptr, ptr %errorptr, align 8
  %arrayidx117 = getelementptr inbounds i16, ptr %142, i64 2
  store i16 %conv116, ptr %arrayidx117, align 2
  %143 = load i32, ptr %delta, align 4
  %144 = load i32, ptr %cur2, align 4
  %add118 = add nsw i32 %144, %143
  store i32 %add118, ptr %cur2, align 4
  %145 = load i32, ptr %belowerr2, align 4
  %146 = load i32, ptr %cur2, align 4
  %add119 = add nsw i32 %145, %146
  store i32 %add119, ptr %bpreverr2, align 4
  %147 = load i32, ptr %bnexterr, align 4
  store i32 %147, ptr %belowerr2, align 4
  %148 = load i32, ptr %delta, align 4
  %149 = load i32, ptr %cur2, align 4
  %add120 = add nsw i32 %149, %148
  store i32 %add120, ptr %cur2, align 4
  %150 = load i32, ptr %dir3, align 4
  %151 = load ptr, ptr %inptr, align 8
  %idx.ext121 = sext i32 %150 to i64
  %add.ptr122 = getelementptr inbounds i8, ptr %151, i64 %idx.ext121
  store ptr %add.ptr122, ptr %inptr, align 8
  %152 = load i32, ptr %dir, align 4
  %153 = load ptr, ptr %outptr, align 8
  %idx.ext123 = sext i32 %152 to i64
  %add.ptr124 = getelementptr inbounds i8, ptr %153, i64 %idx.ext123
  store ptr %add.ptr124, ptr %outptr, align 8
  %154 = load i32, ptr %dir3, align 4
  %155 = load ptr, ptr %errorptr, align 8
  %idx.ext125 = sext i32 %154 to i64
  %add.ptr126 = getelementptr inbounds i16, ptr %155, i64 %idx.ext125
  store ptr %add.ptr126, ptr %errorptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end81
  %156 = load i32, ptr %col, align 4
  %dec = add i32 %156, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond19, !llvm.loop !14

for.end:                                          ; preds = %for.cond19
  %157 = load i32, ptr %bpreverr0, align 4
  %conv127 = trunc i32 %157 to i16
  %158 = load ptr, ptr %errorptr, align 8
  %arrayidx128 = getelementptr inbounds i16, ptr %158, i64 0
  store i16 %conv127, ptr %arrayidx128, align 2
  %159 = load i32, ptr %bpreverr1, align 4
  %conv129 = trunc i32 %159 to i16
  %160 = load ptr, ptr %errorptr, align 8
  %arrayidx130 = getelementptr inbounds i16, ptr %160, i64 1
  store i16 %conv129, ptr %arrayidx130, align 2
  %161 = load i32, ptr %bpreverr2, align 4
  %conv131 = trunc i32 %161 to i16
  %162 = load ptr, ptr %errorptr, align 8
  %arrayidx132 = getelementptr inbounds i16, ptr %162, i64 2
  store i16 %conv131, ptr %arrayidx132, align 2
  br label %for.inc133

for.inc133:                                       ; preds = %for.end
  %163 = load i32, ptr %row, align 4
  %inc = add nsw i32 %163, 1
  store i32 %inc, ptr %row, align 4
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
  %cquantize = alloca ptr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %width, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %6 = load i32, ptr %row, align 4
  %7 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %input_buf.addr, align 8
  %9 = load i32, ptr %row, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %inptr, align 8
  %11 = load ptr, ptr %output_buf.addr, align 8
  %12 = load i32, ptr %row, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %11, i64 %idxprom3
  %13 = load ptr, ptr %arrayidx4, align 8
  store ptr %13, ptr %outptr, align 8
  %14 = load i32, ptr %width, align 4
  store i32 %14, ptr %col, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %15 = load i32, ptr %col, align 4
  %cmp6 = icmp ugt i32 %15, 0
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %16 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %17 = load i8, ptr %16, align 1
  %conv = zext i8 %17 to i32
  %shr = ashr i32 %conv, 3
  store i32 %shr, ptr %c0, align 4
  %18 = load ptr, ptr %inptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr8, ptr %inptr, align 8
  %19 = load i8, ptr %18, align 1
  %conv9 = zext i8 %19 to i32
  %shr10 = ashr i32 %conv9, 2
  store i32 %shr10, ptr %c1, align 4
  %20 = load ptr, ptr %inptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr11, ptr %inptr, align 8
  %21 = load i8, ptr %20, align 1
  %conv12 = zext i8 %21 to i32
  %shr13 = ashr i32 %conv12, 3
  store i32 %shr13, ptr %c2, align 4
  %22 = load ptr, ptr %histogram, align 8
  %23 = load i32, ptr %c0, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %22, i64 %idxprom14
  %24 = load ptr, ptr %arrayidx15, align 8
  %25 = load i32, ptr %c1, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds [32 x i16], ptr %24, i64 %idxprom16
  %26 = load i32, ptr %c2, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [32 x i16], ptr %arrayidx17, i64 0, i64 %idxprom18
  store ptr %arrayidx19, ptr %cachep, align 8
  %27 = load ptr, ptr %cachep, align 8
  %28 = load i16, ptr %27, align 2
  %conv20 = zext i16 %28 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load i32, ptr %c0, align 4
  %31 = load i32, ptr %c1, align 4
  %32 = load i32, ptr %c2, align 4
  call void @fill_inverse_cmap(ptr noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %33 = load ptr, ptr %cachep, align 8
  %34 = load i16, ptr %33, align 2
  %conv23 = zext i16 %34 to i32
  %sub = sub nsw i32 %conv23, 1
  %conv24 = trunc i32 %sub to i8
  %35 = load ptr, ptr %outptr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr25, ptr %outptr, align 8
  store i8 %conv24, ptr %35, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, ptr %col, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond5, !llvm.loop !16

for.end:                                          ; preds = %for.cond5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %37 = load i32, ptr %row, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !17

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass2(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %desired_colors.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 40
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef %mul)
  store ptr %call, ptr %boxlist, align 8
  store i32 1, ptr %numboxes, align 4
  %5 = load ptr, ptr %boxlist, align 8
  %arrayidx = getelementptr inbounds %struct.box, ptr %5, i64 0
  %c0min = getelementptr inbounds %struct.box, ptr %arrayidx, i32 0, i32 0
  store i32 0, ptr %c0min, align 8
  %6 = load ptr, ptr %boxlist, align 8
  %arrayidx1 = getelementptr inbounds %struct.box, ptr %6, i64 0
  %c0max = getelementptr inbounds %struct.box, ptr %arrayidx1, i32 0, i32 1
  store i32 31, ptr %c0max, align 4
  %7 = load ptr, ptr %boxlist, align 8
  %arrayidx2 = getelementptr inbounds %struct.box, ptr %7, i64 0
  %c1min = getelementptr inbounds %struct.box, ptr %arrayidx2, i32 0, i32 2
  store i32 0, ptr %c1min, align 8
  %8 = load ptr, ptr %boxlist, align 8
  %arrayidx3 = getelementptr inbounds %struct.box, ptr %8, i64 0
  %c1max = getelementptr inbounds %struct.box, ptr %arrayidx3, i32 0, i32 3
  store i32 63, ptr %c1max, align 4
  %9 = load ptr, ptr %boxlist, align 8
  %arrayidx4 = getelementptr inbounds %struct.box, ptr %9, i64 0
  %c2min = getelementptr inbounds %struct.box, ptr %arrayidx4, i32 0, i32 4
  store i32 0, ptr %c2min, align 8
  %10 = load ptr, ptr %boxlist, align 8
  %arrayidx5 = getelementptr inbounds %struct.box, ptr %10, i64 0
  %c2max = getelementptr inbounds %struct.box, ptr %arrayidx5, i32 0, i32 5
  store i32 31, ptr %c2max, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %boxlist, align 8
  %arrayidx6 = getelementptr inbounds %struct.box, ptr %12, i64 0
  call void @update_box(ptr noundef %11, ptr noundef %arrayidx6)
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %boxlist, align 8
  %15 = load i32, ptr %numboxes, align 4
  %16 = load i32, ptr %desired_colors.addr, align 4
  %call7 = call i32 @median_cut(ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16)
  store i32 %call7, ptr %numboxes, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %numboxes, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %boxlist, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds %struct.box, ptr %20, i64 %idxprom
  %22 = load i32, ptr %i, align 4
  call void @compute_color(ptr noundef %19, ptr noundef %arrayidx9, i32 noundef %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %numboxes, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 31
  store i32 %24, ptr %actual_number_of_colors, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5
  store i32 95, ptr %msg_code, align 8
  %28 = load i32, ptr %numboxes, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %err10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %28, ptr %arrayidx11, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err12, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %emit_message, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  call void %33(ptr noundef %34, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_box(ptr noundef %cinfo, ptr noundef %boxp) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %boxp.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
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
  %dist2 = alloca i64, align 8
  %ccount = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %boxp, ptr %boxp.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  %4 = load ptr, ptr %boxp.addr, align 8
  %c0min3 = getelementptr inbounds %struct.box, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %c0min3, align 8
  store i32 %5, ptr %c0min, align 4
  %6 = load ptr, ptr %boxp.addr, align 8
  %c0max4 = getelementptr inbounds %struct.box, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %c0max4, align 4
  store i32 %7, ptr %c0max, align 4
  %8 = load ptr, ptr %boxp.addr, align 8
  %c1min5 = getelementptr inbounds %struct.box, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %c1min5, align 8
  store i32 %9, ptr %c1min, align 4
  %10 = load ptr, ptr %boxp.addr, align 8
  %c1max6 = getelementptr inbounds %struct.box, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %c1max6, align 4
  store i32 %11, ptr %c1max, align 4
  %12 = load ptr, ptr %boxp.addr, align 8
  %c2min7 = getelementptr inbounds %struct.box, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %c2min7, align 8
  store i32 %13, ptr %c2min, align 4
  %14 = load ptr, ptr %boxp.addr, align 8
  %c2max8 = getelementptr inbounds %struct.box, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %c2max8, align 4
  store i32 %15, ptr %c2max, align 4
  %16 = load i32, ptr %c0max, align 4
  %17 = load i32, ptr %c0min, align 4
  %cmp = icmp sgt i32 %16, %17
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %18 = load i32, ptr %c0min, align 4
  store i32 %18, ptr %c0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.then
  %19 = load i32, ptr %c0, align 4
  %20 = load i32, ptr %c0max, align 4
  %cmp9 = icmp sle i32 %19, %20
  br i1 %cmp9, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %c1min, align 4
  store i32 %21, ptr %c1, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc24, %for.body
  %22 = load i32, ptr %c1, align 4
  %23 = load i32, ptr %c1max, align 4
  %cmp11 = icmp sle i32 %22, %23
  br i1 %cmp11, label %for.body12, label %for.end26

for.body12:                                       ; preds = %for.cond10
  %24 = load ptr, ptr %histogram, align 8
  %25 = load i32, ptr %c0, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load i32, ptr %c1, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds [32 x i16], ptr %26, i64 %idxprom13
  %28 = load i32, ptr %c2min, align 4
  %idxprom15 = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds [32 x i16], ptr %arrayidx14, i64 0, i64 %idxprom15
  store ptr %arrayidx16, ptr %histp, align 8
  %29 = load i32, ptr %c2min, align 4
  store i32 %29, ptr %c2, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body12
  %30 = load i32, ptr %c2, align 4
  %31 = load i32, ptr %c2max, align 4
  %cmp18 = icmp sle i32 %30, %31
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %32 = load ptr, ptr %histp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %histp, align 8
  %33 = load i16, ptr %32, align 2
  %conv = zext i16 %33 to i32
  %cmp20 = icmp ne i32 %conv, 0
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %for.body19
  %34 = load i32, ptr %c0, align 4
  store i32 %34, ptr %c0min, align 4
  %35 = load ptr, ptr %boxp.addr, align 8
  %c0min23 = getelementptr inbounds %struct.box, ptr %35, i32 0, i32 0
  store i32 %34, ptr %c0min23, align 8
  br label %have_c0min

if.end:                                           ; preds = %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, ptr %c2, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %c2, align 4
  br label %for.cond17, !llvm.loop !19

for.end:                                          ; preds = %for.cond17
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %37 = load i32, ptr %c1, align 4
  %inc25 = add nsw i32 %37, 1
  store i32 %inc25, ptr %c1, align 4
  br label %for.cond10, !llvm.loop !20

for.end26:                                        ; preds = %for.cond10
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %38 = load i32, ptr %c0, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, ptr %c0, align 4
  br label %for.cond, !llvm.loop !21

for.end29:                                        ; preds = %for.cond
  br label %if.end30

if.end30:                                         ; preds = %for.end29, %entry
  br label %have_c0min

have_c0min:                                       ; preds = %if.end30, %if.then22
  %39 = load i32, ptr %c0max, align 4
  %40 = load i32, ptr %c0min, align 4
  %cmp31 = icmp sgt i32 %39, %40
  br i1 %cmp31, label %if.then33, label %if.end67

if.then33:                                        ; preds = %have_c0min
  %41 = load i32, ptr %c0max, align 4
  store i32 %41, ptr %c0, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc65, %if.then33
  %42 = load i32, ptr %c0, align 4
  %43 = load i32, ptr %c0min, align 4
  %cmp35 = icmp sge i32 %42, %43
  br i1 %cmp35, label %for.body37, label %for.end66

for.body37:                                       ; preds = %for.cond34
  %44 = load i32, ptr %c1min, align 4
  store i32 %44, ptr %c1, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc62, %for.body37
  %45 = load i32, ptr %c1, align 4
  %46 = load i32, ptr %c1max, align 4
  %cmp39 = icmp sle i32 %45, %46
  br i1 %cmp39, label %for.body41, label %for.end64

for.body41:                                       ; preds = %for.cond38
  %47 = load ptr, ptr %histogram, align 8
  %48 = load i32, ptr %c0, align 4
  %idxprom42 = sext i32 %48 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %47, i64 %idxprom42
  %49 = load ptr, ptr %arrayidx43, align 8
  %50 = load i32, ptr %c1, align 4
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds [32 x i16], ptr %49, i64 %idxprom44
  %51 = load i32, ptr %c2min, align 4
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds [32 x i16], ptr %arrayidx45, i64 0, i64 %idxprom46
  store ptr %arrayidx47, ptr %histp, align 8
  %52 = load i32, ptr %c2min, align 4
  store i32 %52, ptr %c2, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body41
  %53 = load i32, ptr %c2, align 4
  %54 = load i32, ptr %c2max, align 4
  %cmp49 = icmp sle i32 %53, %54
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %55 = load ptr, ptr %histp, align 8
  %incdec.ptr52 = getelementptr inbounds i16, ptr %55, i32 1
  store ptr %incdec.ptr52, ptr %histp, align 8
  %56 = load i16, ptr %55, align 2
  %conv53 = zext i16 %56 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %for.body51
  %57 = load i32, ptr %c0, align 4
  store i32 %57, ptr %c0max, align 4
  %58 = load ptr, ptr %boxp.addr, align 8
  %c0max57 = getelementptr inbounds %struct.box, ptr %58, i32 0, i32 1
  store i32 %57, ptr %c0max57, align 4
  br label %have_c0max

if.end58:                                         ; preds = %for.body51
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %59 = load i32, ptr %c2, align 4
  %inc60 = add nsw i32 %59, 1
  store i32 %inc60, ptr %c2, align 4
  br label %for.cond48, !llvm.loop !22

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %60 = load i32, ptr %c1, align 4
  %inc63 = add nsw i32 %60, 1
  store i32 %inc63, ptr %c1, align 4
  br label %for.cond38, !llvm.loop !23

for.end64:                                        ; preds = %for.cond38
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %61 = load i32, ptr %c0, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, ptr %c0, align 4
  br label %for.cond34, !llvm.loop !24

for.end66:                                        ; preds = %for.cond34
  br label %if.end67

if.end67:                                         ; preds = %for.end66, %have_c0min
  br label %have_c0max

have_c0max:                                       ; preds = %if.end67, %if.then56
  %62 = load i32, ptr %c1max, align 4
  %63 = load i32, ptr %c1min, align 4
  %cmp68 = icmp sgt i32 %62, %63
  br i1 %cmp68, label %if.then70, label %if.end105

if.then70:                                        ; preds = %have_c0max
  %64 = load i32, ptr %c1min, align 4
  store i32 %64, ptr %c1, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc102, %if.then70
  %65 = load i32, ptr %c1, align 4
  %66 = load i32, ptr %c1max, align 4
  %cmp72 = icmp sle i32 %65, %66
  br i1 %cmp72, label %for.body74, label %for.end104

for.body74:                                       ; preds = %for.cond71
  %67 = load i32, ptr %c0min, align 4
  store i32 %67, ptr %c0, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc99, %for.body74
  %68 = load i32, ptr %c0, align 4
  %69 = load i32, ptr %c0max, align 4
  %cmp76 = icmp sle i32 %68, %69
  br i1 %cmp76, label %for.body78, label %for.end101

for.body78:                                       ; preds = %for.cond75
  %70 = load ptr, ptr %histogram, align 8
  %71 = load i32, ptr %c0, align 4
  %idxprom79 = sext i32 %71 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %70, i64 %idxprom79
  %72 = load ptr, ptr %arrayidx80, align 8
  %73 = load i32, ptr %c1, align 4
  %idxprom81 = sext i32 %73 to i64
  %arrayidx82 = getelementptr inbounds [32 x i16], ptr %72, i64 %idxprom81
  %74 = load i32, ptr %c2min, align 4
  %idxprom83 = sext i32 %74 to i64
  %arrayidx84 = getelementptr inbounds [32 x i16], ptr %arrayidx82, i64 0, i64 %idxprom83
  store ptr %arrayidx84, ptr %histp, align 8
  %75 = load i32, ptr %c2min, align 4
  store i32 %75, ptr %c2, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc96, %for.body78
  %76 = load i32, ptr %c2, align 4
  %77 = load i32, ptr %c2max, align 4
  %cmp86 = icmp sle i32 %76, %77
  br i1 %cmp86, label %for.body88, label %for.end98

for.body88:                                       ; preds = %for.cond85
  %78 = load ptr, ptr %histp, align 8
  %incdec.ptr89 = getelementptr inbounds i16, ptr %78, i32 1
  store ptr %incdec.ptr89, ptr %histp, align 8
  %79 = load i16, ptr %78, align 2
  %conv90 = zext i16 %79 to i32
  %cmp91 = icmp ne i32 %conv90, 0
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %for.body88
  %80 = load i32, ptr %c1, align 4
  store i32 %80, ptr %c1min, align 4
  %81 = load ptr, ptr %boxp.addr, align 8
  %c1min94 = getelementptr inbounds %struct.box, ptr %81, i32 0, i32 2
  store i32 %80, ptr %c1min94, align 8
  br label %have_c1min

if.end95:                                         ; preds = %for.body88
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %82 = load i32, ptr %c2, align 4
  %inc97 = add nsw i32 %82, 1
  store i32 %inc97, ptr %c2, align 4
  br label %for.cond85, !llvm.loop !25

for.end98:                                        ; preds = %for.cond85
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %83 = load i32, ptr %c0, align 4
  %inc100 = add nsw i32 %83, 1
  store i32 %inc100, ptr %c0, align 4
  br label %for.cond75, !llvm.loop !26

for.end101:                                       ; preds = %for.cond75
  br label %for.inc102

for.inc102:                                       ; preds = %for.end101
  %84 = load i32, ptr %c1, align 4
  %inc103 = add nsw i32 %84, 1
  store i32 %inc103, ptr %c1, align 4
  br label %for.cond71, !llvm.loop !27

for.end104:                                       ; preds = %for.cond71
  br label %if.end105

if.end105:                                        ; preds = %for.end104, %have_c0max
  br label %have_c1min

have_c1min:                                       ; preds = %if.end105, %if.then93
  %85 = load i32, ptr %c1max, align 4
  %86 = load i32, ptr %c1min, align 4
  %cmp106 = icmp sgt i32 %85, %86
  br i1 %cmp106, label %if.then108, label %if.end143

if.then108:                                       ; preds = %have_c1min
  %87 = load i32, ptr %c1max, align 4
  store i32 %87, ptr %c1, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc140, %if.then108
  %88 = load i32, ptr %c1, align 4
  %89 = load i32, ptr %c1min, align 4
  %cmp110 = icmp sge i32 %88, %89
  br i1 %cmp110, label %for.body112, label %for.end142

for.body112:                                      ; preds = %for.cond109
  %90 = load i32, ptr %c0min, align 4
  store i32 %90, ptr %c0, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc137, %for.body112
  %91 = load i32, ptr %c0, align 4
  %92 = load i32, ptr %c0max, align 4
  %cmp114 = icmp sle i32 %91, %92
  br i1 %cmp114, label %for.body116, label %for.end139

for.body116:                                      ; preds = %for.cond113
  %93 = load ptr, ptr %histogram, align 8
  %94 = load i32, ptr %c0, align 4
  %idxprom117 = sext i32 %94 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %93, i64 %idxprom117
  %95 = load ptr, ptr %arrayidx118, align 8
  %96 = load i32, ptr %c1, align 4
  %idxprom119 = sext i32 %96 to i64
  %arrayidx120 = getelementptr inbounds [32 x i16], ptr %95, i64 %idxprom119
  %97 = load i32, ptr %c2min, align 4
  %idxprom121 = sext i32 %97 to i64
  %arrayidx122 = getelementptr inbounds [32 x i16], ptr %arrayidx120, i64 0, i64 %idxprom121
  store ptr %arrayidx122, ptr %histp, align 8
  %98 = load i32, ptr %c2min, align 4
  store i32 %98, ptr %c2, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc134, %for.body116
  %99 = load i32, ptr %c2, align 4
  %100 = load i32, ptr %c2max, align 4
  %cmp124 = icmp sle i32 %99, %100
  br i1 %cmp124, label %for.body126, label %for.end136

for.body126:                                      ; preds = %for.cond123
  %101 = load ptr, ptr %histp, align 8
  %incdec.ptr127 = getelementptr inbounds i16, ptr %101, i32 1
  store ptr %incdec.ptr127, ptr %histp, align 8
  %102 = load i16, ptr %101, align 2
  %conv128 = zext i16 %102 to i32
  %cmp129 = icmp ne i32 %conv128, 0
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %for.body126
  %103 = load i32, ptr %c1, align 4
  store i32 %103, ptr %c1max, align 4
  %104 = load ptr, ptr %boxp.addr, align 8
  %c1max132 = getelementptr inbounds %struct.box, ptr %104, i32 0, i32 3
  store i32 %103, ptr %c1max132, align 4
  br label %have_c1max

if.end133:                                        ; preds = %for.body126
  br label %for.inc134

for.inc134:                                       ; preds = %if.end133
  %105 = load i32, ptr %c2, align 4
  %inc135 = add nsw i32 %105, 1
  store i32 %inc135, ptr %c2, align 4
  br label %for.cond123, !llvm.loop !28

for.end136:                                       ; preds = %for.cond123
  br label %for.inc137

for.inc137:                                       ; preds = %for.end136
  %106 = load i32, ptr %c0, align 4
  %inc138 = add nsw i32 %106, 1
  store i32 %inc138, ptr %c0, align 4
  br label %for.cond113, !llvm.loop !29

for.end139:                                       ; preds = %for.cond113
  br label %for.inc140

for.inc140:                                       ; preds = %for.end139
  %107 = load i32, ptr %c1, align 4
  %dec141 = add nsw i32 %107, -1
  store i32 %dec141, ptr %c1, align 4
  br label %for.cond109, !llvm.loop !30

for.end142:                                       ; preds = %for.cond109
  br label %if.end143

if.end143:                                        ; preds = %for.end142, %have_c1min
  br label %have_c1max

have_c1max:                                       ; preds = %if.end143, %if.then131
  %108 = load i32, ptr %c2max, align 4
  %109 = load i32, ptr %c2min, align 4
  %cmp144 = icmp sgt i32 %108, %109
  br i1 %cmp144, label %if.then146, label %if.end180

if.then146:                                       ; preds = %have_c1max
  %110 = load i32, ptr %c2min, align 4
  store i32 %110, ptr %c2, align 4
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc177, %if.then146
  %111 = load i32, ptr %c2, align 4
  %112 = load i32, ptr %c2max, align 4
  %cmp148 = icmp sle i32 %111, %112
  br i1 %cmp148, label %for.body150, label %for.end179

for.body150:                                      ; preds = %for.cond147
  %113 = load i32, ptr %c0min, align 4
  store i32 %113, ptr %c0, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc174, %for.body150
  %114 = load i32, ptr %c0, align 4
  %115 = load i32, ptr %c0max, align 4
  %cmp152 = icmp sle i32 %114, %115
  br i1 %cmp152, label %for.body154, label %for.end176

for.body154:                                      ; preds = %for.cond151
  %116 = load ptr, ptr %histogram, align 8
  %117 = load i32, ptr %c0, align 4
  %idxprom155 = sext i32 %117 to i64
  %arrayidx156 = getelementptr inbounds ptr, ptr %116, i64 %idxprom155
  %118 = load ptr, ptr %arrayidx156, align 8
  %119 = load i32, ptr %c1min, align 4
  %idxprom157 = sext i32 %119 to i64
  %arrayidx158 = getelementptr inbounds [32 x i16], ptr %118, i64 %idxprom157
  %120 = load i32, ptr %c2, align 4
  %idxprom159 = sext i32 %120 to i64
  %arrayidx160 = getelementptr inbounds [32 x i16], ptr %arrayidx158, i64 0, i64 %idxprom159
  store ptr %arrayidx160, ptr %histp, align 8
  %121 = load i32, ptr %c1min, align 4
  store i32 %121, ptr %c1, align 4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc171, %for.body154
  %122 = load i32, ptr %c1, align 4
  %123 = load i32, ptr %c1max, align 4
  %cmp162 = icmp sle i32 %122, %123
  br i1 %cmp162, label %for.body164, label %for.end173

for.body164:                                      ; preds = %for.cond161
  %124 = load ptr, ptr %histp, align 8
  %125 = load i16, ptr %124, align 2
  %conv165 = zext i16 %125 to i32
  %cmp166 = icmp ne i32 %conv165, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %for.body164
  %126 = load i32, ptr %c2, align 4
  store i32 %126, ptr %c2min, align 4
  %127 = load ptr, ptr %boxp.addr, align 8
  %c2min169 = getelementptr inbounds %struct.box, ptr %127, i32 0, i32 4
  store i32 %126, ptr %c2min169, align 8
  br label %have_c2min

if.end170:                                        ; preds = %for.body164
  br label %for.inc171

for.inc171:                                       ; preds = %if.end170
  %128 = load i32, ptr %c1, align 4
  %inc172 = add nsw i32 %128, 1
  store i32 %inc172, ptr %c1, align 4
  %129 = load ptr, ptr %histp, align 8
  %add.ptr = getelementptr inbounds i16, ptr %129, i64 32
  store ptr %add.ptr, ptr %histp, align 8
  br label %for.cond161, !llvm.loop !31

for.end173:                                       ; preds = %for.cond161
  br label %for.inc174

for.inc174:                                       ; preds = %for.end173
  %130 = load i32, ptr %c0, align 4
  %inc175 = add nsw i32 %130, 1
  store i32 %inc175, ptr %c0, align 4
  br label %for.cond151, !llvm.loop !32

for.end176:                                       ; preds = %for.cond151
  br label %for.inc177

for.inc177:                                       ; preds = %for.end176
  %131 = load i32, ptr %c2, align 4
  %inc178 = add nsw i32 %131, 1
  store i32 %inc178, ptr %c2, align 4
  br label %for.cond147, !llvm.loop !33

for.end179:                                       ; preds = %for.cond147
  br label %if.end180

if.end180:                                        ; preds = %for.end179, %have_c1max
  br label %have_c2min

have_c2min:                                       ; preds = %if.end180, %if.then168
  %132 = load i32, ptr %c2max, align 4
  %133 = load i32, ptr %c2min, align 4
  %cmp181 = icmp sgt i32 %132, %133
  br i1 %cmp181, label %if.then183, label %if.end218

if.then183:                                       ; preds = %have_c2min
  %134 = load i32, ptr %c2max, align 4
  store i32 %134, ptr %c2, align 4
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc215, %if.then183
  %135 = load i32, ptr %c2, align 4
  %136 = load i32, ptr %c2min, align 4
  %cmp185 = icmp sge i32 %135, %136
  br i1 %cmp185, label %for.body187, label %for.end217

for.body187:                                      ; preds = %for.cond184
  %137 = load i32, ptr %c0min, align 4
  store i32 %137, ptr %c0, align 4
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc212, %for.body187
  %138 = load i32, ptr %c0, align 4
  %139 = load i32, ptr %c0max, align 4
  %cmp189 = icmp sle i32 %138, %139
  br i1 %cmp189, label %for.body191, label %for.end214

for.body191:                                      ; preds = %for.cond188
  %140 = load ptr, ptr %histogram, align 8
  %141 = load i32, ptr %c0, align 4
  %idxprom192 = sext i32 %141 to i64
  %arrayidx193 = getelementptr inbounds ptr, ptr %140, i64 %idxprom192
  %142 = load ptr, ptr %arrayidx193, align 8
  %143 = load i32, ptr %c1min, align 4
  %idxprom194 = sext i32 %143 to i64
  %arrayidx195 = getelementptr inbounds [32 x i16], ptr %142, i64 %idxprom194
  %144 = load i32, ptr %c2, align 4
  %idxprom196 = sext i32 %144 to i64
  %arrayidx197 = getelementptr inbounds [32 x i16], ptr %arrayidx195, i64 0, i64 %idxprom196
  store ptr %arrayidx197, ptr %histp, align 8
  %145 = load i32, ptr %c1min, align 4
  store i32 %145, ptr %c1, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc208, %for.body191
  %146 = load i32, ptr %c1, align 4
  %147 = load i32, ptr %c1max, align 4
  %cmp199 = icmp sle i32 %146, %147
  br i1 %cmp199, label %for.body201, label %for.end211

for.body201:                                      ; preds = %for.cond198
  %148 = load ptr, ptr %histp, align 8
  %149 = load i16, ptr %148, align 2
  %conv202 = zext i16 %149 to i32
  %cmp203 = icmp ne i32 %conv202, 0
  br i1 %cmp203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %for.body201
  %150 = load i32, ptr %c2, align 4
  store i32 %150, ptr %c2max, align 4
  %151 = load ptr, ptr %boxp.addr, align 8
  %c2max206 = getelementptr inbounds %struct.box, ptr %151, i32 0, i32 5
  store i32 %150, ptr %c2max206, align 4
  br label %have_c2max

if.end207:                                        ; preds = %for.body201
  br label %for.inc208

for.inc208:                                       ; preds = %if.end207
  %152 = load i32, ptr %c1, align 4
  %inc209 = add nsw i32 %152, 1
  store i32 %inc209, ptr %c1, align 4
  %153 = load ptr, ptr %histp, align 8
  %add.ptr210 = getelementptr inbounds i16, ptr %153, i64 32
  store ptr %add.ptr210, ptr %histp, align 8
  br label %for.cond198, !llvm.loop !34

for.end211:                                       ; preds = %for.cond198
  br label %for.inc212

for.inc212:                                       ; preds = %for.end211
  %154 = load i32, ptr %c0, align 4
  %inc213 = add nsw i32 %154, 1
  store i32 %inc213, ptr %c0, align 4
  br label %for.cond188, !llvm.loop !35

for.end214:                                       ; preds = %for.cond188
  br label %for.inc215

for.inc215:                                       ; preds = %for.end214
  %155 = load i32, ptr %c2, align 4
  %dec216 = add nsw i32 %155, -1
  store i32 %dec216, ptr %c2, align 4
  br label %for.cond184, !llvm.loop !36

for.end217:                                       ; preds = %for.cond184
  br label %if.end218

if.end218:                                        ; preds = %for.end217, %have_c2min
  br label %have_c2max

have_c2max:                                       ; preds = %if.end218, %if.then205
  %156 = load i32, ptr %c0max, align 4
  %157 = load i32, ptr %c0min, align 4
  %sub = sub nsw i32 %156, %157
  %shl = shl i32 %sub, 3
  %mul = mul nsw i32 %shl, 2
  %conv219 = sext i32 %mul to i64
  store i64 %conv219, ptr %dist0, align 8
  %158 = load i32, ptr %c1max, align 4
  %159 = load i32, ptr %c1min, align 4
  %sub220 = sub nsw i32 %158, %159
  %shl221 = shl i32 %sub220, 2
  %mul222 = mul nsw i32 %shl221, 3
  %conv223 = sext i32 %mul222 to i64
  store i64 %conv223, ptr %dist1, align 8
  %160 = load i32, ptr %c2max, align 4
  %161 = load i32, ptr %c2min, align 4
  %sub224 = sub nsw i32 %160, %161
  %shl225 = shl i32 %sub224, 3
  %mul226 = mul nsw i32 %shl225, 1
  %conv227 = sext i32 %mul226 to i64
  store i64 %conv227, ptr %dist2, align 8
  %162 = load i64, ptr %dist0, align 8
  %163 = load i64, ptr %dist0, align 8
  %mul228 = mul nsw i64 %162, %163
  %164 = load i64, ptr %dist1, align 8
  %165 = load i64, ptr %dist1, align 8
  %mul229 = mul nsw i64 %164, %165
  %add = add nsw i64 %mul228, %mul229
  %166 = load i64, ptr %dist2, align 8
  %167 = load i64, ptr %dist2, align 8
  %mul230 = mul nsw i64 %166, %167
  %add231 = add nsw i64 %add, %mul230
  %168 = load ptr, ptr %boxp.addr, align 8
  %volume = getelementptr inbounds %struct.box, ptr %168, i32 0, i32 6
  store i64 %add231, ptr %volume, align 8
  store i64 0, ptr %ccount, align 8
  %169 = load i32, ptr %c0min, align 4
  store i32 %169, ptr %c0, align 4
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc263, %have_c2max
  %170 = load i32, ptr %c0, align 4
  %171 = load i32, ptr %c0max, align 4
  %cmp233 = icmp sle i32 %170, %171
  br i1 %cmp233, label %for.body235, label %for.end265

for.body235:                                      ; preds = %for.cond232
  %172 = load i32, ptr %c1min, align 4
  store i32 %172, ptr %c1, align 4
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc260, %for.body235
  %173 = load i32, ptr %c1, align 4
  %174 = load i32, ptr %c1max, align 4
  %cmp237 = icmp sle i32 %173, %174
  br i1 %cmp237, label %for.body239, label %for.end262

for.body239:                                      ; preds = %for.cond236
  %175 = load ptr, ptr %histogram, align 8
  %176 = load i32, ptr %c0, align 4
  %idxprom240 = sext i32 %176 to i64
  %arrayidx241 = getelementptr inbounds ptr, ptr %175, i64 %idxprom240
  %177 = load ptr, ptr %arrayidx241, align 8
  %178 = load i32, ptr %c1, align 4
  %idxprom242 = sext i32 %178 to i64
  %arrayidx243 = getelementptr inbounds [32 x i16], ptr %177, i64 %idxprom242
  %179 = load i32, ptr %c2min, align 4
  %idxprom244 = sext i32 %179 to i64
  %arrayidx245 = getelementptr inbounds [32 x i16], ptr %arrayidx243, i64 0, i64 %idxprom244
  store ptr %arrayidx245, ptr %histp, align 8
  %180 = load i32, ptr %c2min, align 4
  store i32 %180, ptr %c2, align 4
  br label %for.cond246

for.cond246:                                      ; preds = %for.inc256, %for.body239
  %181 = load i32, ptr %c2, align 4
  %182 = load i32, ptr %c2max, align 4
  %cmp247 = icmp sle i32 %181, %182
  br i1 %cmp247, label %for.body249, label %for.end259

for.body249:                                      ; preds = %for.cond246
  %183 = load ptr, ptr %histp, align 8
  %184 = load i16, ptr %183, align 2
  %conv250 = zext i16 %184 to i32
  %cmp251 = icmp ne i32 %conv250, 0
  br i1 %cmp251, label %if.then253, label %if.end255

if.then253:                                       ; preds = %for.body249
  %185 = load i64, ptr %ccount, align 8
  %inc254 = add nsw i64 %185, 1
  store i64 %inc254, ptr %ccount, align 8
  br label %if.end255

if.end255:                                        ; preds = %if.then253, %for.body249
  br label %for.inc256

for.inc256:                                       ; preds = %if.end255
  %186 = load i32, ptr %c2, align 4
  %inc257 = add nsw i32 %186, 1
  store i32 %inc257, ptr %c2, align 4
  %187 = load ptr, ptr %histp, align 8
  %incdec.ptr258 = getelementptr inbounds i16, ptr %187, i32 1
  store ptr %incdec.ptr258, ptr %histp, align 8
  br label %for.cond246, !llvm.loop !37

for.end259:                                       ; preds = %for.cond246
  br label %for.inc260

for.inc260:                                       ; preds = %for.end259
  %188 = load i32, ptr %c1, align 4
  %inc261 = add nsw i32 %188, 1
  store i32 %inc261, ptr %c1, align 4
  br label %for.cond236, !llvm.loop !38

for.end262:                                       ; preds = %for.cond236
  br label %for.inc263

for.inc263:                                       ; preds = %for.end262
  %189 = load i32, ptr %c0, align 4
  %inc264 = add nsw i32 %189, 1
  store i32 %inc264, ptr %c0, align 4
  br label %for.cond232, !llvm.loop !39

for.end265:                                       ; preds = %for.cond232
  %190 = load i64, ptr %ccount, align 8
  %191 = load ptr, ptr %boxp.addr, align 8
  %colorcount = getelementptr inbounds %struct.box, ptr %191, i32 0, i32 7
  store i64 %190, ptr %colorcount, align 8
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
  %lb = alloca i32, align 4
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
  %mul = mul nsw i32 %2, 2
  %3 = load i32, ptr %desired_colors.addr, align 4
  %cmp1 = icmp sle i32 %mul, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %boxlist.addr, align 8
  %5 = load i32, ptr %numboxes.addr, align 4
  %call = call ptr @find_biggest_color_pop(ptr noundef %4, i32 noundef %5)
  store ptr %call, ptr %b1, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %boxlist.addr, align 8
  %7 = load i32, ptr %numboxes.addr, align 4
  %call2 = call ptr @find_biggest_volume(ptr noundef %6, i32 noundef %7)
  store ptr %call2, ptr %b1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %b1, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %boxlist.addr, align 8
  %10 = load i32, ptr %numboxes.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.box, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %b2, align 8
  %11 = load ptr, ptr %b1, align 8
  %c0max = getelementptr inbounds %struct.box, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %c0max, align 4
  %13 = load ptr, ptr %b2, align 8
  %c0max6 = getelementptr inbounds %struct.box, ptr %13, i32 0, i32 1
  store i32 %12, ptr %c0max6, align 4
  %14 = load ptr, ptr %b1, align 8
  %c1max = getelementptr inbounds %struct.box, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %c1max, align 4
  %16 = load ptr, ptr %b2, align 8
  %c1max7 = getelementptr inbounds %struct.box, ptr %16, i32 0, i32 3
  store i32 %15, ptr %c1max7, align 4
  %17 = load ptr, ptr %b1, align 8
  %c2max = getelementptr inbounds %struct.box, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %c2max, align 4
  %19 = load ptr, ptr %b2, align 8
  %c2max8 = getelementptr inbounds %struct.box, ptr %19, i32 0, i32 5
  store i32 %18, ptr %c2max8, align 4
  %20 = load ptr, ptr %b1, align 8
  %c0min = getelementptr inbounds %struct.box, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %c0min, align 8
  %22 = load ptr, ptr %b2, align 8
  %c0min9 = getelementptr inbounds %struct.box, ptr %22, i32 0, i32 0
  store i32 %21, ptr %c0min9, align 8
  %23 = load ptr, ptr %b1, align 8
  %c1min = getelementptr inbounds %struct.box, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %c1min, align 8
  %25 = load ptr, ptr %b2, align 8
  %c1min10 = getelementptr inbounds %struct.box, ptr %25, i32 0, i32 2
  store i32 %24, ptr %c1min10, align 8
  %26 = load ptr, ptr %b1, align 8
  %c2min = getelementptr inbounds %struct.box, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %c2min, align 8
  %28 = load ptr, ptr %b2, align 8
  %c2min11 = getelementptr inbounds %struct.box, ptr %28, i32 0, i32 4
  store i32 %27, ptr %c2min11, align 8
  %29 = load ptr, ptr %b1, align 8
  %c0max12 = getelementptr inbounds %struct.box, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %c0max12, align 4
  %31 = load ptr, ptr %b1, align 8
  %c0min13 = getelementptr inbounds %struct.box, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %c0min13, align 8
  %sub = sub nsw i32 %30, %32
  %shl = shl i32 %sub, 3
  %mul14 = mul nsw i32 %shl, 2
  store i32 %mul14, ptr %c0, align 4
  %33 = load ptr, ptr %b1, align 8
  %c1max15 = getelementptr inbounds %struct.box, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %c1max15, align 4
  %35 = load ptr, ptr %b1, align 8
  %c1min16 = getelementptr inbounds %struct.box, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %c1min16, align 8
  %sub17 = sub nsw i32 %34, %36
  %shl18 = shl i32 %sub17, 2
  %mul19 = mul nsw i32 %shl18, 3
  store i32 %mul19, ptr %c1, align 4
  %37 = load ptr, ptr %b1, align 8
  %c2max20 = getelementptr inbounds %struct.box, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %c2max20, align 4
  %39 = load ptr, ptr %b1, align 8
  %c2min21 = getelementptr inbounds %struct.box, ptr %39, i32 0, i32 4
  %40 = load i32, ptr %c2min21, align 8
  %sub22 = sub nsw i32 %38, %40
  %shl23 = shl i32 %sub22, 3
  %mul24 = mul nsw i32 %shl23, 1
  store i32 %mul24, ptr %c2, align 4
  %41 = load i32, ptr %c1, align 4
  store i32 %41, ptr %cmax, align 4
  store i32 1, ptr %n, align 4
  %42 = load i32, ptr %c0, align 4
  %43 = load i32, ptr %cmax, align 4
  %cmp25 = icmp sgt i32 %42, %43
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end5
  %44 = load i32, ptr %c0, align 4
  store i32 %44, ptr %cmax, align 4
  store i32 0, ptr %n, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end5
  %45 = load i32, ptr %c2, align 4
  %46 = load i32, ptr %cmax, align 4
  %cmp28 = icmp sgt i32 %45, %46
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 2, ptr %n, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %47 = load i32, ptr %n, align 4
  switch i32 %47, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 2, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end30
  %48 = load ptr, ptr %b1, align 8
  %c0max31 = getelementptr inbounds %struct.box, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %c0max31, align 4
  %50 = load ptr, ptr %b1, align 8
  %c0min32 = getelementptr inbounds %struct.box, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %c0min32, align 8
  %add = add nsw i32 %49, %51
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %lb, align 4
  %52 = load i32, ptr %lb, align 4
  %53 = load ptr, ptr %b1, align 8
  %c0max33 = getelementptr inbounds %struct.box, ptr %53, i32 0, i32 1
  store i32 %52, ptr %c0max33, align 4
  %54 = load i32, ptr %lb, align 4
  %add34 = add nsw i32 %54, 1
  %55 = load ptr, ptr %b2, align 8
  %c0min35 = getelementptr inbounds %struct.box, ptr %55, i32 0, i32 0
  store i32 %add34, ptr %c0min35, align 8
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  %56 = load ptr, ptr %b1, align 8
  %c1max37 = getelementptr inbounds %struct.box, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %c1max37, align 4
  %58 = load ptr, ptr %b1, align 8
  %c1min38 = getelementptr inbounds %struct.box, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %c1min38, align 8
  %add39 = add nsw i32 %57, %59
  %div40 = sdiv i32 %add39, 2
  store i32 %div40, ptr %lb, align 4
  %60 = load i32, ptr %lb, align 4
  %61 = load ptr, ptr %b1, align 8
  %c1max41 = getelementptr inbounds %struct.box, ptr %61, i32 0, i32 3
  store i32 %60, ptr %c1max41, align 4
  %62 = load i32, ptr %lb, align 4
  %add42 = add nsw i32 %62, 1
  %63 = load ptr, ptr %b2, align 8
  %c1min43 = getelementptr inbounds %struct.box, ptr %63, i32 0, i32 2
  store i32 %add42, ptr %c1min43, align 8
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end30
  %64 = load ptr, ptr %b1, align 8
  %c2max45 = getelementptr inbounds %struct.box, ptr %64, i32 0, i32 5
  %65 = load i32, ptr %c2max45, align 4
  %66 = load ptr, ptr %b1, align 8
  %c2min46 = getelementptr inbounds %struct.box, ptr %66, i32 0, i32 4
  %67 = load i32, ptr %c2min46, align 8
  %add47 = add nsw i32 %65, %67
  %div48 = sdiv i32 %add47, 2
  store i32 %div48, ptr %lb, align 4
  %68 = load i32, ptr %lb, align 4
  %69 = load ptr, ptr %b1, align 8
  %c2max49 = getelementptr inbounds %struct.box, ptr %69, i32 0, i32 5
  store i32 %68, ptr %c2max49, align 4
  %70 = load i32, ptr %lb, align 4
  %add50 = add nsw i32 %70, 1
  %71 = load ptr, ptr %b2, align 8
  %c2min51 = getelementptr inbounds %struct.box, ptr %71, i32 0, i32 4
  store i32 %add50, ptr %c2min51, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end30, %sw.bb44, %sw.bb36, %sw.bb
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %b1, align 8
  call void @update_box(ptr noundef %72, ptr noundef %73)
  %74 = load ptr, ptr %cinfo.addr, align 8
  %75 = load ptr, ptr %b2, align 8
  call void @update_box(ptr noundef %74, ptr noundef %75)
  %76 = load i32, ptr %numboxes.addr, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, ptr %numboxes.addr, align 4
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %if.then4, %while.cond
  %77 = load i32, ptr %numboxes.addr, align 4
  ret i32 %77
}

; Function Attrs: nounwind ssp uwtable
define internal void @compute_color(ptr noundef %cinfo, ptr noundef %boxp, i32 noundef %icolor) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %boxp.addr = alloca ptr, align 8
  %icolor.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  store i64 0, ptr %total, align 8
  store i64 0, ptr %c0total, align 8
  store i64 0, ptr %c1total, align 8
  store i64 0, ptr %c2total, align 8
  %4 = load ptr, ptr %boxp.addr, align 8
  %c0min3 = getelementptr inbounds %struct.box, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %c0min3, align 8
  store i32 %5, ptr %c0min, align 4
  %6 = load ptr, ptr %boxp.addr, align 8
  %c0max4 = getelementptr inbounds %struct.box, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %c0max4, align 4
  store i32 %7, ptr %c0max, align 4
  %8 = load ptr, ptr %boxp.addr, align 8
  %c1min5 = getelementptr inbounds %struct.box, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %c1min5, align 8
  store i32 %9, ptr %c1min, align 4
  %10 = load ptr, ptr %boxp.addr, align 8
  %c1max6 = getelementptr inbounds %struct.box, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %c1max6, align 4
  store i32 %11, ptr %c1max, align 4
  %12 = load ptr, ptr %boxp.addr, align 8
  %c2min7 = getelementptr inbounds %struct.box, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %c2min7, align 8
  store i32 %13, ptr %c2min, align 4
  %14 = load ptr, ptr %boxp.addr, align 8
  %c2max8 = getelementptr inbounds %struct.box, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %c2max8, align 4
  store i32 %15, ptr %c2max, align 4
  %16 = load i32, ptr %c0min, align 4
  store i32 %16, ptr %c0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %17 = load i32, ptr %c0, align 4
  %18 = load i32, ptr %c0max, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %c1min, align 4
  store i32 %19, ptr %c1, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc34, %for.body
  %20 = load i32, ptr %c1, align 4
  %21 = load i32, ptr %c1max, align 4
  %cmp10 = icmp sle i32 %20, %21
  br i1 %cmp10, label %for.body11, label %for.end36

for.body11:                                       ; preds = %for.cond9
  %22 = load ptr, ptr %histogram, align 8
  %23 = load i32, ptr %c0, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %arrayidx, align 8
  %25 = load i32, ptr %c1, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [32 x i16], ptr %24, i64 %idxprom12
  %26 = load i32, ptr %c2min, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds [32 x i16], ptr %arrayidx13, i64 0, i64 %idxprom14
  store ptr %arrayidx15, ptr %histp, align 8
  %27 = load i32, ptr %c2min, align 4
  store i32 %27, ptr %c2, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body11
  %28 = load i32, ptr %c2, align 4
  %29 = load i32, ptr %c2max, align 4
  %cmp17 = icmp sle i32 %28, %29
  br i1 %cmp17, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond16
  %30 = load ptr, ptr %histp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %histp, align 8
  %31 = load i16, ptr %30, align 2
  %conv = zext i16 %31 to i64
  store i64 %conv, ptr %count, align 8
  %cmp19 = icmp ne i64 %conv, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %32 = load i64, ptr %count, align 8
  %33 = load i64, ptr %total, align 8
  %add = add nsw i64 %33, %32
  store i64 %add, ptr %total, align 8
  %34 = load i32, ptr %c0, align 4
  %shl = shl i32 %34, 3
  %add21 = add nsw i32 %shl, 4
  %conv22 = sext i32 %add21 to i64
  %35 = load i64, ptr %count, align 8
  %mul = mul nsw i64 %conv22, %35
  %36 = load i64, ptr %c0total, align 8
  %add23 = add nsw i64 %36, %mul
  store i64 %add23, ptr %c0total, align 8
  %37 = load i32, ptr %c1, align 4
  %shl24 = shl i32 %37, 2
  %add25 = add nsw i32 %shl24, 2
  %conv26 = sext i32 %add25 to i64
  %38 = load i64, ptr %count, align 8
  %mul27 = mul nsw i64 %conv26, %38
  %39 = load i64, ptr %c1total, align 8
  %add28 = add nsw i64 %39, %mul27
  store i64 %add28, ptr %c1total, align 8
  %40 = load i32, ptr %c2, align 4
  %shl29 = shl i32 %40, 3
  %add30 = add nsw i32 %shl29, 4
  %conv31 = sext i32 %add30 to i64
  %41 = load i64, ptr %count, align 8
  %mul32 = mul nsw i64 %conv31, %41
  %42 = load i64, ptr %c2total, align 8
  %add33 = add nsw i64 %42, %mul32
  store i64 %add33, ptr %c2total, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, ptr %c2, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %c2, align 4
  br label %for.cond16, !llvm.loop !41

for.end:                                          ; preds = %for.cond16
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %44 = load i32, ptr %c1, align 4
  %inc35 = add nsw i32 %44, 1
  store i32 %inc35, ptr %c1, align 4
  br label %for.cond9, !llvm.loop !42

for.end36:                                        ; preds = %for.cond9
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %45 = load i32, ptr %c0, align 4
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, ptr %c0, align 4
  br label %for.cond, !llvm.loop !43

for.end39:                                        ; preds = %for.cond
  %46 = load i64, ptr %c0total, align 8
  %47 = load i64, ptr %total, align 8
  %shr = ashr i64 %47, 1
  %add40 = add nsw i64 %46, %shr
  %48 = load i64, ptr %total, align 8
  %div = sdiv i64 %add40, %48
  %conv41 = trunc i64 %div to i8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 32
  %50 = load ptr, ptr %colormap, align 8
  %arrayidx42 = getelementptr inbounds ptr, ptr %50, i64 0
  %51 = load ptr, ptr %arrayidx42, align 8
  %52 = load i32, ptr %icolor.addr, align 4
  %idxprom43 = sext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %51, i64 %idxprom43
  store i8 %conv41, ptr %arrayidx44, align 1
  %53 = load i64, ptr %c1total, align 8
  %54 = load i64, ptr %total, align 8
  %shr45 = ashr i64 %54, 1
  %add46 = add nsw i64 %53, %shr45
  %55 = load i64, ptr %total, align 8
  %div47 = sdiv i64 %add46, %55
  %conv48 = trunc i64 %div47 to i8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %colormap49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 32
  %57 = load ptr, ptr %colormap49, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %57, i64 1
  %58 = load ptr, ptr %arrayidx50, align 8
  %59 = load i32, ptr %icolor.addr, align 4
  %idxprom51 = sext i32 %59 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %58, i64 %idxprom51
  store i8 %conv48, ptr %arrayidx52, align 1
  %60 = load i64, ptr %c2total, align 8
  %61 = load i64, ptr %total, align 8
  %shr53 = ashr i64 %61, 1
  %add54 = add nsw i64 %60, %shr53
  %62 = load i64, ptr %total, align 8
  %div55 = sdiv i64 %add54, %62
  %conv56 = trunc i64 %div55 to i8
  %63 = load ptr, ptr %cinfo.addr, align 8
  %colormap57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 32
  %64 = load ptr, ptr %colormap57, align 8
  %arrayidx58 = getelementptr inbounds ptr, ptr %64, i64 2
  %65 = load ptr, ptr %arrayidx58, align 8
  %66 = load i32, ptr %icolor.addr, align 4
  %idxprom59 = sext i32 %66 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %65, i64 %idxprom59
  store i8 %conv56, ptr %arrayidx60, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @find_biggest_color_pop(ptr noundef %boxlist, i32 noundef %numboxes) #0 {
entry:
  %boxlist.addr = alloca ptr, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca ptr, align 8
  %i = alloca i32, align 4
  %maxc = alloca i64, align 8
  %which = alloca ptr, align 8
  store ptr %boxlist, ptr %boxlist.addr, align 8
  store i32 %numboxes, ptr %numboxes.addr, align 4
  store i64 0, ptr %maxc, align 8
  store ptr null, ptr %which, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %boxlist.addr, align 8
  store ptr %0, ptr %boxp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %numboxes.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %boxp, align 8
  %colorcount = getelementptr inbounds %struct.box, ptr %3, i32 0, i32 7
  %4 = load i64, ptr %colorcount, align 8
  %5 = load i64, ptr %maxc, align 8
  %cmp1 = icmp sgt i64 %4, %5
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %boxp, align 8
  %volume = getelementptr inbounds %struct.box, ptr %6, i32 0, i32 6
  %7 = load i64, ptr %volume, align 8
  %cmp2 = icmp sgt i64 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %boxp, align 8
  store ptr %8, ptr %which, align 8
  %9 = load ptr, ptr %boxp, align 8
  %colorcount3 = getelementptr inbounds %struct.box, ptr %9, i32 0, i32 7
  %10 = load i64, ptr %colorcount3, align 8
  store i64 %10, ptr %maxc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  %12 = load ptr, ptr %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %boxp, align 8
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %which, align 8
  ret ptr %13
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @find_biggest_volume(ptr noundef %boxlist, i32 noundef %numboxes) #0 {
entry:
  %boxlist.addr = alloca ptr, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca ptr, align 8
  %i = alloca i32, align 4
  %maxv = alloca i64, align 8
  %which = alloca ptr, align 8
  store ptr %boxlist, ptr %boxlist.addr, align 8
  store i32 %numboxes, ptr %numboxes.addr, align 4
  store i64 0, ptr %maxv, align 8
  store ptr null, ptr %which, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %boxlist.addr, align 8
  store ptr %0, ptr %boxp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %numboxes.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %boxp, align 8
  %volume = getelementptr inbounds %struct.box, ptr %3, i32 0, i32 6
  %4 = load i64, ptr %volume, align 8
  %5 = load i64, ptr %maxv, align 8
  %cmp1 = icmp sgt i64 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %boxp, align 8
  store ptr %6, ptr %which, align 8
  %7 = load ptr, ptr %boxp, align 8
  %volume2 = getelementptr inbounds %struct.box, ptr %7, i32 0, i32 6
  %8 = load i64, ptr %volume2, align 8
  store i64 %8, ptr %maxv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  %10 = load ptr, ptr %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %boxp, align 8
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %which, align 8
  ret ptr %11
}

; Function Attrs: nounwind ssp uwtable
define internal void @fill_inverse_cmap(ptr noundef %cinfo, i32 noundef %c0, i32 noundef %c1, i32 noundef %c2) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %c0.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %histogram = alloca ptr, align 8
  %minc0 = alloca i32, align 4
  %minc1 = alloca i32, align 4
  %minc2 = alloca i32, align 4
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %cptr = alloca ptr, align 8
  %cachep = alloca ptr, align 8
  %colorlist = alloca [256 x i8], align 1
  %numcolors = alloca i32, align 4
  %bestcolor = alloca [128 x i8], align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %c0, ptr %c0.addr, align 4
  store i32 %c1, ptr %c1.addr, align 4
  store i32 %c2, ptr %c2.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %histogram2, align 8
  store ptr %3, ptr %histogram, align 8
  %4 = load i32, ptr %c0.addr, align 4
  %shr = ashr i32 %4, 2
  store i32 %shr, ptr %c0.addr, align 4
  %5 = load i32, ptr %c1.addr, align 4
  %shr3 = ashr i32 %5, 3
  store i32 %shr3, ptr %c1.addr, align 4
  %6 = load i32, ptr %c2.addr, align 4
  %shr4 = ashr i32 %6, 2
  store i32 %shr4, ptr %c2.addr, align 4
  %7 = load i32, ptr %c0.addr, align 4
  %shl = shl i32 %7, 5
  %add = add nsw i32 %shl, 4
  store i32 %add, ptr %minc0, align 4
  %8 = load i32, ptr %c1.addr, align 4
  %shl5 = shl i32 %8, 5
  %add6 = add nsw i32 %shl5, 2
  store i32 %add6, ptr %minc1, align 4
  %9 = load i32, ptr %c2.addr, align 4
  %shl7 = shl i32 %9, 5
  %add8 = add nsw i32 %shl7, 4
  store i32 %add8, ptr %minc2, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i32, ptr %minc0, align 4
  %12 = load i32, ptr %minc1, align 4
  %13 = load i32, ptr %minc2, align 4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %colorlist, i64 0, i64 0
  %call = call i32 @find_nearby_colors(ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %arraydecay)
  store i32 %call, ptr %numcolors, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load i32, ptr %minc0, align 4
  %16 = load i32, ptr %minc1, align 4
  %17 = load i32, ptr %minc2, align 4
  %18 = load i32, ptr %numcolors, align 4
  %arraydecay9 = getelementptr inbounds [256 x i8], ptr %colorlist, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [128 x i8], ptr %bestcolor, i64 0, i64 0
  call void @find_best_colors(ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %arraydecay9, ptr noundef %arraydecay10)
  %19 = load i32, ptr %c0.addr, align 4
  %shl11 = shl i32 %19, 2
  store i32 %shl11, ptr %c0.addr, align 4
  %20 = load i32, ptr %c1.addr, align 4
  %shl12 = shl i32 %20, 3
  store i32 %shl12, ptr %c1.addr, align 4
  %21 = load i32, ptr %c2.addr, align 4
  %shl13 = shl i32 %21, 2
  store i32 %shl13, ptr %c2.addr, align 4
  %arraydecay14 = getelementptr inbounds [128 x i8], ptr %bestcolor, i64 0, i64 0
  store ptr %arraydecay14, ptr %cptr, align 8
  store i32 0, ptr %ic0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %22 = load i32, ptr %ic0, align 4
  %cmp = icmp slt i32 %22, 4
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %ic1, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.body
  %23 = load i32, ptr %ic1, align 4
  %cmp16 = icmp slt i32 %23, 8
  br i1 %cmp16, label %for.body17, label %for.end32

for.body17:                                       ; preds = %for.cond15
  %24 = load ptr, ptr %histogram, align 8
  %25 = load i32, ptr %c0.addr, align 4
  %26 = load i32, ptr %ic0, align 4
  %add18 = add nsw i32 %25, %26
  %idxprom = sext i32 %add18 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %idxprom
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = load i32, ptr %c1.addr, align 4
  %29 = load i32, ptr %ic1, align 4
  %add19 = add nsw i32 %28, %29
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [32 x i16], ptr %27, i64 %idxprom20
  %30 = load i32, ptr %c2.addr, align 4
  %idxprom22 = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds [32 x i16], ptr %arrayidx21, i64 0, i64 %idxprom22
  store ptr %arrayidx23, ptr %cachep, align 8
  store i32 0, ptr %ic2, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %for.body17
  %31 = load i32, ptr %ic2, align 4
  %cmp25 = icmp slt i32 %31, 4
  br i1 %cmp25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond24
  %32 = load ptr, ptr %cptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %cptr, align 8
  %33 = load i8, ptr %32, align 1
  %conv = zext i8 %33 to i32
  %add27 = add nsw i32 %conv, 1
  %conv28 = trunc i32 %add27 to i16
  %34 = load ptr, ptr %cachep, align 8
  %incdec.ptr29 = getelementptr inbounds i16, ptr %34, i32 1
  store ptr %incdec.ptr29, ptr %cachep, align 8
  store i16 %conv28, ptr %34, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %35 = load i32, ptr %ic2, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %ic2, align 4
  br label %for.cond24, !llvm.loop !46

for.end:                                          ; preds = %for.cond24
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %36 = load i32, ptr %ic1, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, ptr %ic1, align 4
  br label %for.cond15, !llvm.loop !47

for.end32:                                        ; preds = %for.cond15
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %37 = load i32, ptr %ic0, align 4
  %inc34 = add nsw i32 %37, 1
  store i32 %inc34, ptr %ic0, align 4
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
  %tdist = alloca i64, align 8
  %mindist = alloca [256 x i64], align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %minc0, ptr %minc0.addr, align 4
  store i32 %minc1, ptr %minc1.addr, align 4
  store i32 %minc2, ptr %minc2.addr, align 4
  store ptr %colorlist, ptr %colorlist.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 31
  %1 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %1, ptr %numcolors, align 4
  %2 = load i32, ptr %minc0.addr, align 4
  %add = add nsw i32 %2, 24
  store i32 %add, ptr %maxc0, align 4
  %3 = load i32, ptr %minc0.addr, align 4
  %4 = load i32, ptr %maxc0, align 4
  %add1 = add nsw i32 %3, %4
  %shr = ashr i32 %add1, 1
  store i32 %shr, ptr %centerc0, align 4
  %5 = load i32, ptr %minc1.addr, align 4
  %add2 = add nsw i32 %5, 28
  store i32 %add2, ptr %maxc1, align 4
  %6 = load i32, ptr %minc1.addr, align 4
  %7 = load i32, ptr %maxc1, align 4
  %add3 = add nsw i32 %6, %7
  %shr4 = ashr i32 %add3, 1
  store i32 %shr4, ptr %centerc1, align 4
  %8 = load i32, ptr %minc2.addr, align 4
  %add5 = add nsw i32 %8, 24
  store i32 %add5, ptr %maxc2, align 4
  %9 = load i32, ptr %minc2.addr, align 4
  %10 = load i32, ptr %maxc2, align 4
  %add6 = add nsw i32 %9, %10
  %shr7 = ashr i32 %add6, 1
  store i32 %shr7, ptr %centerc2, align 4
  store i64 2147483647, ptr %minmaxdist, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %numcolors, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 32
  %14 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %17 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %17 to i32
  store i32 %conv, ptr %x, align 4
  %18 = load i32, ptr %x, align 4
  %19 = load i32, ptr %minc0.addr, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i32, ptr %x, align 4
  %21 = load i32, ptr %minc0.addr, align 4
  %sub = sub nsw i32 %20, %21
  %mul = mul nsw i32 %sub, 2
  %conv11 = sext i32 %mul to i64
  store i64 %conv11, ptr %tdist, align 8
  %22 = load i64, ptr %tdist, align 8
  %23 = load i64, ptr %tdist, align 8
  %mul12 = mul nsw i64 %22, %23
  store i64 %mul12, ptr %min_dist, align 8
  %24 = load i32, ptr %x, align 4
  %25 = load i32, ptr %maxc0, align 4
  %sub13 = sub nsw i32 %24, %25
  %mul14 = mul nsw i32 %sub13, 2
  %conv15 = sext i32 %mul14 to i64
  store i64 %conv15, ptr %tdist, align 8
  %26 = load i64, ptr %tdist, align 8
  %27 = load i64, ptr %tdist, align 8
  %mul16 = mul nsw i64 %26, %27
  store i64 %mul16, ptr %max_dist, align 8
  br label %if.end42

if.else:                                          ; preds = %for.body
  %28 = load i32, ptr %x, align 4
  %29 = load i32, ptr %maxc0, align 4
  %cmp17 = icmp sgt i32 %28, %29
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %if.else
  %30 = load i32, ptr %x, align 4
  %31 = load i32, ptr %maxc0, align 4
  %sub20 = sub nsw i32 %30, %31
  %mul21 = mul nsw i32 %sub20, 2
  %conv22 = sext i32 %mul21 to i64
  store i64 %conv22, ptr %tdist, align 8
  %32 = load i64, ptr %tdist, align 8
  %33 = load i64, ptr %tdist, align 8
  %mul23 = mul nsw i64 %32, %33
  store i64 %mul23, ptr %min_dist, align 8
  %34 = load i32, ptr %x, align 4
  %35 = load i32, ptr %minc0.addr, align 4
  %sub24 = sub nsw i32 %34, %35
  %mul25 = mul nsw i32 %sub24, 2
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, ptr %tdist, align 8
  %36 = load i64, ptr %tdist, align 8
  %37 = load i64, ptr %tdist, align 8
  %mul27 = mul nsw i64 %36, %37
  store i64 %mul27, ptr %max_dist, align 8
  br label %if.end41

if.else28:                                        ; preds = %if.else
  store i64 0, ptr %min_dist, align 8
  %38 = load i32, ptr %x, align 4
  %39 = load i32, ptr %centerc0, align 4
  %cmp29 = icmp sle i32 %38, %39
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else28
  %40 = load i32, ptr %x, align 4
  %41 = load i32, ptr %maxc0, align 4
  %sub32 = sub nsw i32 %40, %41
  %mul33 = mul nsw i32 %sub32, 2
  %conv34 = sext i32 %mul33 to i64
  store i64 %conv34, ptr %tdist, align 8
  %42 = load i64, ptr %tdist, align 8
  %43 = load i64, ptr %tdist, align 8
  %mul35 = mul nsw i64 %42, %43
  store i64 %mul35, ptr %max_dist, align 8
  br label %if.end

if.else36:                                        ; preds = %if.else28
  %44 = load i32, ptr %x, align 4
  %45 = load i32, ptr %minc0.addr, align 4
  %sub37 = sub nsw i32 %44, %45
  %mul38 = mul nsw i32 %sub37, 2
  %conv39 = sext i32 %mul38 to i64
  store i64 %conv39, ptr %tdist, align 8
  %46 = load i64, ptr %tdist, align 8
  %47 = load i64, ptr %tdist, align 8
  %mul40 = mul nsw i64 %46, %47
  store i64 %mul40, ptr %max_dist, align 8
  br label %if.end

if.end:                                           ; preds = %if.else36, %if.then31
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then19
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then
  %48 = load ptr, ptr %cinfo.addr, align 8
  %colormap43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 32
  %49 = load ptr, ptr %colormap43, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %49, i64 1
  %50 = load ptr, ptr %arrayidx44, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %50, i64 %idxprom45
  %52 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %52 to i32
  store i32 %conv47, ptr %x, align 4
  %53 = load i32, ptr %x, align 4
  %54 = load i32, ptr %minc1.addr, align 4
  %cmp48 = icmp slt i32 %53, %54
  br i1 %cmp48, label %if.then50, label %if.else61

if.then50:                                        ; preds = %if.end42
  %55 = load i32, ptr %x, align 4
  %56 = load i32, ptr %minc1.addr, align 4
  %sub51 = sub nsw i32 %55, %56
  %mul52 = mul nsw i32 %sub51, 3
  %conv53 = sext i32 %mul52 to i64
  store i64 %conv53, ptr %tdist, align 8
  %57 = load i64, ptr %tdist, align 8
  %58 = load i64, ptr %tdist, align 8
  %mul54 = mul nsw i64 %57, %58
  %59 = load i64, ptr %min_dist, align 8
  %add55 = add nsw i64 %59, %mul54
  store i64 %add55, ptr %min_dist, align 8
  %60 = load i32, ptr %x, align 4
  %61 = load i32, ptr %maxc1, align 4
  %sub56 = sub nsw i32 %60, %61
  %mul57 = mul nsw i32 %sub56, 3
  %conv58 = sext i32 %mul57 to i64
  store i64 %conv58, ptr %tdist, align 8
  %62 = load i64, ptr %tdist, align 8
  %63 = load i64, ptr %tdist, align 8
  %mul59 = mul nsw i64 %62, %63
  %64 = load i64, ptr %max_dist, align 8
  %add60 = add nsw i64 %64, %mul59
  store i64 %add60, ptr %max_dist, align 8
  br label %if.end92

if.else61:                                        ; preds = %if.end42
  %65 = load i32, ptr %x, align 4
  %66 = load i32, ptr %maxc1, align 4
  %cmp62 = icmp sgt i32 %65, %66
  br i1 %cmp62, label %if.then64, label %if.else75

if.then64:                                        ; preds = %if.else61
  %67 = load i32, ptr %x, align 4
  %68 = load i32, ptr %maxc1, align 4
  %sub65 = sub nsw i32 %67, %68
  %mul66 = mul nsw i32 %sub65, 3
  %conv67 = sext i32 %mul66 to i64
  store i64 %conv67, ptr %tdist, align 8
  %69 = load i64, ptr %tdist, align 8
  %70 = load i64, ptr %tdist, align 8
  %mul68 = mul nsw i64 %69, %70
  %71 = load i64, ptr %min_dist, align 8
  %add69 = add nsw i64 %71, %mul68
  store i64 %add69, ptr %min_dist, align 8
  %72 = load i32, ptr %x, align 4
  %73 = load i32, ptr %minc1.addr, align 4
  %sub70 = sub nsw i32 %72, %73
  %mul71 = mul nsw i32 %sub70, 3
  %conv72 = sext i32 %mul71 to i64
  store i64 %conv72, ptr %tdist, align 8
  %74 = load i64, ptr %tdist, align 8
  %75 = load i64, ptr %tdist, align 8
  %mul73 = mul nsw i64 %74, %75
  %76 = load i64, ptr %max_dist, align 8
  %add74 = add nsw i64 %76, %mul73
  store i64 %add74, ptr %max_dist, align 8
  br label %if.end91

if.else75:                                        ; preds = %if.else61
  %77 = load i32, ptr %x, align 4
  %78 = load i32, ptr %centerc1, align 4
  %cmp76 = icmp sle i32 %77, %78
  br i1 %cmp76, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.else75
  %79 = load i32, ptr %x, align 4
  %80 = load i32, ptr %maxc1, align 4
  %sub79 = sub nsw i32 %79, %80
  %mul80 = mul nsw i32 %sub79, 3
  %conv81 = sext i32 %mul80 to i64
  store i64 %conv81, ptr %tdist, align 8
  %81 = load i64, ptr %tdist, align 8
  %82 = load i64, ptr %tdist, align 8
  %mul82 = mul nsw i64 %81, %82
  %83 = load i64, ptr %max_dist, align 8
  %add83 = add nsw i64 %83, %mul82
  store i64 %add83, ptr %max_dist, align 8
  br label %if.end90

if.else84:                                        ; preds = %if.else75
  %84 = load i32, ptr %x, align 4
  %85 = load i32, ptr %minc1.addr, align 4
  %sub85 = sub nsw i32 %84, %85
  %mul86 = mul nsw i32 %sub85, 3
  %conv87 = sext i32 %mul86 to i64
  store i64 %conv87, ptr %tdist, align 8
  %86 = load i64, ptr %tdist, align 8
  %87 = load i64, ptr %tdist, align 8
  %mul88 = mul nsw i64 %86, %87
  %88 = load i64, ptr %max_dist, align 8
  %add89 = add nsw i64 %88, %mul88
  store i64 %add89, ptr %max_dist, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then78
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then64
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then50
  %89 = load ptr, ptr %cinfo.addr, align 8
  %colormap93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 32
  %90 = load ptr, ptr %colormap93, align 8
  %arrayidx94 = getelementptr inbounds ptr, ptr %90, i64 2
  %91 = load ptr, ptr %arrayidx94, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %92 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %91, i64 %idxprom95
  %93 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %93 to i32
  store i32 %conv97, ptr %x, align 4
  %94 = load i32, ptr %x, align 4
  %95 = load i32, ptr %minc2.addr, align 4
  %cmp98 = icmp slt i32 %94, %95
  br i1 %cmp98, label %if.then100, label %if.else111

if.then100:                                       ; preds = %if.end92
  %96 = load i32, ptr %x, align 4
  %97 = load i32, ptr %minc2.addr, align 4
  %sub101 = sub nsw i32 %96, %97
  %mul102 = mul nsw i32 %sub101, 1
  %conv103 = sext i32 %mul102 to i64
  store i64 %conv103, ptr %tdist, align 8
  %98 = load i64, ptr %tdist, align 8
  %99 = load i64, ptr %tdist, align 8
  %mul104 = mul nsw i64 %98, %99
  %100 = load i64, ptr %min_dist, align 8
  %add105 = add nsw i64 %100, %mul104
  store i64 %add105, ptr %min_dist, align 8
  %101 = load i32, ptr %x, align 4
  %102 = load i32, ptr %maxc2, align 4
  %sub106 = sub nsw i32 %101, %102
  %mul107 = mul nsw i32 %sub106, 1
  %conv108 = sext i32 %mul107 to i64
  store i64 %conv108, ptr %tdist, align 8
  %103 = load i64, ptr %tdist, align 8
  %104 = load i64, ptr %tdist, align 8
  %mul109 = mul nsw i64 %103, %104
  %105 = load i64, ptr %max_dist, align 8
  %add110 = add nsw i64 %105, %mul109
  store i64 %add110, ptr %max_dist, align 8
  br label %if.end142

if.else111:                                       ; preds = %if.end92
  %106 = load i32, ptr %x, align 4
  %107 = load i32, ptr %maxc2, align 4
  %cmp112 = icmp sgt i32 %106, %107
  br i1 %cmp112, label %if.then114, label %if.else125

if.then114:                                       ; preds = %if.else111
  %108 = load i32, ptr %x, align 4
  %109 = load i32, ptr %maxc2, align 4
  %sub115 = sub nsw i32 %108, %109
  %mul116 = mul nsw i32 %sub115, 1
  %conv117 = sext i32 %mul116 to i64
  store i64 %conv117, ptr %tdist, align 8
  %110 = load i64, ptr %tdist, align 8
  %111 = load i64, ptr %tdist, align 8
  %mul118 = mul nsw i64 %110, %111
  %112 = load i64, ptr %min_dist, align 8
  %add119 = add nsw i64 %112, %mul118
  store i64 %add119, ptr %min_dist, align 8
  %113 = load i32, ptr %x, align 4
  %114 = load i32, ptr %minc2.addr, align 4
  %sub120 = sub nsw i32 %113, %114
  %mul121 = mul nsw i32 %sub120, 1
  %conv122 = sext i32 %mul121 to i64
  store i64 %conv122, ptr %tdist, align 8
  %115 = load i64, ptr %tdist, align 8
  %116 = load i64, ptr %tdist, align 8
  %mul123 = mul nsw i64 %115, %116
  %117 = load i64, ptr %max_dist, align 8
  %add124 = add nsw i64 %117, %mul123
  store i64 %add124, ptr %max_dist, align 8
  br label %if.end141

if.else125:                                       ; preds = %if.else111
  %118 = load i32, ptr %x, align 4
  %119 = load i32, ptr %centerc2, align 4
  %cmp126 = icmp sle i32 %118, %119
  br i1 %cmp126, label %if.then128, label %if.else134

if.then128:                                       ; preds = %if.else125
  %120 = load i32, ptr %x, align 4
  %121 = load i32, ptr %maxc2, align 4
  %sub129 = sub nsw i32 %120, %121
  %mul130 = mul nsw i32 %sub129, 1
  %conv131 = sext i32 %mul130 to i64
  store i64 %conv131, ptr %tdist, align 8
  %122 = load i64, ptr %tdist, align 8
  %123 = load i64, ptr %tdist, align 8
  %mul132 = mul nsw i64 %122, %123
  %124 = load i64, ptr %max_dist, align 8
  %add133 = add nsw i64 %124, %mul132
  store i64 %add133, ptr %max_dist, align 8
  br label %if.end140

if.else134:                                       ; preds = %if.else125
  %125 = load i32, ptr %x, align 4
  %126 = load i32, ptr %minc2.addr, align 4
  %sub135 = sub nsw i32 %125, %126
  %mul136 = mul nsw i32 %sub135, 1
  %conv137 = sext i32 %mul136 to i64
  store i64 %conv137, ptr %tdist, align 8
  %127 = load i64, ptr %tdist, align 8
  %128 = load i64, ptr %tdist, align 8
  %mul138 = mul nsw i64 %127, %128
  %129 = load i64, ptr %max_dist, align 8
  %add139 = add nsw i64 %129, %mul138
  store i64 %add139, ptr %max_dist, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.else134, %if.then128
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then114
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then100
  %130 = load i64, ptr %min_dist, align 8
  %131 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %131 to i64
  %arrayidx144 = getelementptr inbounds [256 x i64], ptr %mindist, i64 0, i64 %idxprom143
  store i64 %130, ptr %arrayidx144, align 8
  %132 = load i64, ptr %max_dist, align 8
  %133 = load i64, ptr %minmaxdist, align 8
  %cmp145 = icmp slt i64 %132, %133
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end142
  %134 = load i64, ptr %max_dist, align 8
  store i64 %134, ptr %minmaxdist, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end142
  br label %for.inc

for.inc:                                          ; preds = %if.end148
  %135 = load i32, ptr %i, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ncolors, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc163, %for.end
  %136 = load i32, ptr %i, align 4
  %137 = load i32, ptr %numcolors, align 4
  %cmp150 = icmp slt i32 %136, %137
  br i1 %cmp150, label %for.body152, label %for.end165

for.body152:                                      ; preds = %for.cond149
  %138 = load i32, ptr %i, align 4
  %idxprom153 = sext i32 %138 to i64
  %arrayidx154 = getelementptr inbounds [256 x i64], ptr %mindist, i64 0, i64 %idxprom153
  %139 = load i64, ptr %arrayidx154, align 8
  %140 = load i64, ptr %minmaxdist, align 8
  %cmp155 = icmp sle i64 %139, %140
  br i1 %cmp155, label %if.then157, label %if.end162

if.then157:                                       ; preds = %for.body152
  %141 = load i32, ptr %i, align 4
  %conv158 = trunc i32 %141 to i8
  %142 = load ptr, ptr %colorlist.addr, align 8
  %143 = load i32, ptr %ncolors, align 4
  %inc159 = add nsw i32 %143, 1
  store i32 %inc159, ptr %ncolors, align 4
  %idxprom160 = sext i32 %143 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %142, i64 %idxprom160
  store i8 %conv158, ptr %arrayidx161, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.then157, %for.body152
  br label %for.inc163

for.inc163:                                       ; preds = %if.end162
  %144 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %144, 1
  store i32 %inc164, ptr %i, align 4
  br label %for.cond149, !llvm.loop !50

for.end165:                                       ; preds = %for.cond149
  %145 = load i32, ptr %ncolors, align 4
  ret i32 %145
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
  %arraydecay = getelementptr inbounds [128 x i64], ptr %bestdist, i64 0, i64 0
  store ptr %arraydecay, ptr %bptr, align 8
  store i32 127, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %bptr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %bptr, align 8
  store i64 2147483647, ptr %1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc68, %for.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %numcolors.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end69

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %colorlist.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %icolor, align 4
  %8 = load i32, ptr %minc0.addr, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 32
  %10 = load ptr, ptr %colormap, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx4, align 8
  %12 = load i32, ptr %icolor, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 %idxprom5
  %13 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  %sub = sub nsw i32 %8, %conv7
  %mul = mul nsw i32 %sub, 2
  %conv8 = sext i32 %mul to i64
  store i64 %conv8, ptr %inc0, align 8
  %14 = load i64, ptr %inc0, align 8
  %15 = load i64, ptr %inc0, align 8
  %mul9 = mul nsw i64 %14, %15
  store i64 %mul9, ptr %dist0, align 8
  %16 = load i32, ptr %minc1.addr, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %colormap10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 32
  %18 = load ptr, ptr %colormap10, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %18, i64 1
  %19 = load ptr, ptr %arrayidx11, align 8
  %20 = load i32, ptr %icolor, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 %idxprom12
  %21 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %21 to i32
  %sub15 = sub nsw i32 %16, %conv14
  %mul16 = mul nsw i32 %sub15, 3
  %conv17 = sext i32 %mul16 to i64
  store i64 %conv17, ptr %inc1, align 8
  %22 = load i64, ptr %inc1, align 8
  %23 = load i64, ptr %inc1, align 8
  %mul18 = mul nsw i64 %22, %23
  %24 = load i64, ptr %dist0, align 8
  %add = add nsw i64 %24, %mul18
  store i64 %add, ptr %dist0, align 8
  %25 = load i32, ptr %minc2.addr, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %colormap19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 32
  %27 = load ptr, ptr %colormap19, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %27, i64 2
  %28 = load ptr, ptr %arrayidx20, align 8
  %29 = load i32, ptr %icolor, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %28, i64 %idxprom21
  %30 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %30 to i32
  %sub24 = sub nsw i32 %25, %conv23
  %mul25 = mul nsw i32 %sub24, 1
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, ptr %inc2, align 8
  %31 = load i64, ptr %inc2, align 8
  %32 = load i64, ptr %inc2, align 8
  %mul27 = mul nsw i64 %31, %32
  %33 = load i64, ptr %dist0, align 8
  %add28 = add nsw i64 %33, %mul27
  store i64 %add28, ptr %dist0, align 8
  %34 = load i64, ptr %inc0, align 8
  %mul29 = mul nsw i64 %34, 32
  %add30 = add nsw i64 %mul29, 256
  store i64 %add30, ptr %inc0, align 8
  %35 = load i64, ptr %inc1, align 8
  %mul31 = mul nsw i64 %35, 24
  %add32 = add nsw i64 %mul31, 144
  store i64 %add32, ptr %inc1, align 8
  %36 = load i64, ptr %inc2, align 8
  %mul33 = mul nsw i64 %36, 16
  %add34 = add nsw i64 %mul33, 64
  store i64 %add34, ptr %inc2, align 8
  %arraydecay35 = getelementptr inbounds [128 x i64], ptr %bestdist, i64 0, i64 0
  store ptr %arraydecay35, ptr %bptr, align 8
  %37 = load ptr, ptr %bestcolor.addr, align 8
  store ptr %37, ptr %cptr, align 8
  %38 = load i64, ptr %inc0, align 8
  store i64 %38, ptr %xx0, align 8
  store i32 3, ptr %ic0, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc65, %for.body3
  %39 = load i32, ptr %ic0, align 4
  %cmp37 = icmp sge i32 %39, 0
  br i1 %cmp37, label %for.body39, label %for.end67

for.body39:                                       ; preds = %for.cond36
  %40 = load i64, ptr %dist0, align 8
  store i64 %40, ptr %dist1, align 8
  %41 = load i64, ptr %inc1, align 8
  store i64 %41, ptr %xx1, align 8
  store i32 7, ptr %ic1, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc60, %for.body39
  %42 = load i32, ptr %ic1, align 4
  %cmp41 = icmp sge i32 %42, 0
  br i1 %cmp41, label %for.body43, label %for.end62

for.body43:                                       ; preds = %for.cond40
  %43 = load i64, ptr %dist1, align 8
  store i64 %43, ptr %dist2, align 8
  %44 = load i64, ptr %inc2, align 8
  store i64 %44, ptr %xx2, align 8
  store i32 3, ptr %ic2, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc55, %for.body43
  %45 = load i32, ptr %ic2, align 4
  %cmp45 = icmp sge i32 %45, 0
  br i1 %cmp45, label %for.body47, label %for.end57

for.body47:                                       ; preds = %for.cond44
  %46 = load i64, ptr %dist2, align 8
  %47 = load ptr, ptr %bptr, align 8
  %48 = load i64, ptr %47, align 8
  %cmp48 = icmp slt i64 %46, %48
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %for.body47
  %49 = load i64, ptr %dist2, align 8
  %50 = load ptr, ptr %bptr, align 8
  store i64 %49, ptr %50, align 8
  %51 = load i32, ptr %icolor, align 4
  %conv50 = trunc i32 %51 to i8
  %52 = load ptr, ptr %cptr, align 8
  store i8 %conv50, ptr %52, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body47
  %53 = load i64, ptr %xx2, align 8
  %54 = load i64, ptr %dist2, align 8
  %add51 = add nsw i64 %54, %53
  store i64 %add51, ptr %dist2, align 8
  %55 = load i64, ptr %xx2, align 8
  %add52 = add nsw i64 %55, 128
  store i64 %add52, ptr %xx2, align 8
  %56 = load ptr, ptr %bptr, align 8
  %incdec.ptr53 = getelementptr inbounds i64, ptr %56, i32 1
  store ptr %incdec.ptr53, ptr %bptr, align 8
  %57 = load ptr, ptr %cptr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr54, ptr %cptr, align 8
  br label %for.inc55

for.inc55:                                        ; preds = %if.end
  %58 = load i32, ptr %ic2, align 4
  %dec56 = add nsw i32 %58, -1
  store i32 %dec56, ptr %ic2, align 4
  br label %for.cond44, !llvm.loop !52

for.end57:                                        ; preds = %for.cond44
  %59 = load i64, ptr %xx1, align 8
  %60 = load i64, ptr %dist1, align 8
  %add58 = add nsw i64 %60, %59
  store i64 %add58, ptr %dist1, align 8
  %61 = load i64, ptr %xx1, align 8
  %add59 = add nsw i64 %61, 288
  store i64 %add59, ptr %xx1, align 8
  br label %for.inc60

for.inc60:                                        ; preds = %for.end57
  %62 = load i32, ptr %ic1, align 4
  %dec61 = add nsw i32 %62, -1
  store i32 %dec61, ptr %ic1, align 4
  br label %for.cond40, !llvm.loop !53

for.end62:                                        ; preds = %for.cond40
  %63 = load i64, ptr %xx0, align 8
  %64 = load i64, ptr %dist0, align 8
  %add63 = add nsw i64 %64, %63
  store i64 %add63, ptr %dist0, align 8
  %65 = load i64, ptr %xx0, align 8
  %add64 = add nsw i64 %65, 512
  store i64 %add64, ptr %xx0, align 8
  br label %for.inc65

for.inc65:                                        ; preds = %for.end62
  %66 = load i32, ptr %ic0, align 4
  %dec66 = add nsw i32 %66, -1
  store i32 %dec66, ptr %ic0, align 4
  br label %for.cond36, !llvm.loop !54

for.end67:                                        ; preds = %for.cond36
  br label %for.inc68

for.inc68:                                        ; preds = %for.end67
  %67 = load i32, ptr %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !55

for.end69:                                        ; preds = %for.cond1
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
