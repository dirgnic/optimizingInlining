; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/wrgif.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/wrgif.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.gif_dest_struct = type { %struct.djpeg_dest_struct, ptr, i32, i16, i32, i64, i32, i16, i32, i16, i16, i16, ptr, ptr, i32, [256 x i8] }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_write_gif(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 384)
  store ptr %call, ptr %dest, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %dest, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i32 0, i32 1
  store ptr %4, ptr %cinfo1, align 8
  %6 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 0
  store ptr @start_output_gif, ptr %start_output, align 8
  %7 = load ptr, ptr %dest, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows, align 8
  %8 = load ptr, ptr %dest, align 8
  %pub3 = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub3, i32 0, i32 2
  store ptr @finish_output_gif, ptr %finish_output, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 10
  %10 = load i32, ptr %out_color_space, align 8
  %cmp = icmp ne i32 %10, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %out_color_space4, align 8
  %cmp5 = icmp ne i32 %12, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5
  store i32 1014, ptr %msg_code, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %error_exit, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void %17(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 10
  %20 = load i32, ptr %out_color_space7, align 8
  %cmp8 = icmp ne i32 %20, 1
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %21 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 42
  %22 = load i32, ptr %data_precision, align 8
  %cmp9 = icmp sgt i32 %22, 8
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 19
  store i32 1, ptr %quantize_colors, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 22
  %25 = load i32, ptr %desired_number_of_colors, align 8
  %cmp11 = icmp sgt i32 %25, 256
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then10
  %26 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 22
  store i32 256, ptr %desired_number_of_colors13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %lor.lhs.false
  %27 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %27)
  %28 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 29
  %29 = load i32, ptr %output_components, align 4
  %cmp16 = icmp ne i32 %29, 1
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end15
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err18, align 8
  %msg_code19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 1012, ptr %msg_code19, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err20, align 8
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit21, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15
  %36 = load ptr, ptr %cinfo.addr, align 8
  %mem23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %mem23, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %alloc_sarray, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 26
  %41 = load i32, ptr %output_width, align 8
  %call24 = call ptr %38(ptr noundef %39, i32 noundef 1, i32 noundef %41, i32 noundef 1)
  %42 = load ptr, ptr %dest, align 8
  %pub25 = getelementptr inbounds %struct.gif_dest_struct, ptr %42, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub25, i32 0, i32 4
  store ptr %call24, ptr %buffer, align 8
  %43 = load ptr, ptr %dest, align 8
  %pub26 = getelementptr inbounds %struct.gif_dest_struct, ptr %43, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub26, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %mem27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %mem27, align 8
  %alloc_small28 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %alloc_small28, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call ptr %46(ptr noundef %47, i32 noundef 1, i64 noundef 10006)
  %48 = load ptr, ptr %dest, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %48, i32 0, i32 12
  store ptr %call29, ptr %hash_code, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %mem30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %mem30, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %alloc_large, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %call31 = call ptr %51(ptr noundef %52, i32 noundef 1, i64 noundef 40024)
  %53 = load ptr, ptr %dest, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, ptr %53, i32 0, i32 13
  store ptr %call31, ptr %hash_value, align 8
  %54 = load ptr, ptr %dest, align 8
  ret ptr %54
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_gif(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 19
  %2 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dest, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 31
  %5 = load i32, ptr %actual_number_of_colors, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 32
  %7 = load ptr, ptr %colormap, align 8
  call void @emit_header(ptr noundef %3, i32 noundef %5, ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dest, align 8
  call void @emit_header(ptr noundef %8, i32 noundef 256, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %ptr, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dest, align 8
  %8 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %9 = load i8, ptr %8, align 1
  %conv = zext i8 %9 to i32
  call void @compress_byte(ptr noundef %7, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %col, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_gif(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  call void @compress_term(ptr noundef %1)
  %2 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %3 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef 0, ptr noundef %3)
  %4 = load ptr, ptr %dest, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 3
  %5 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef 59, ptr noundef %5)
  %6 = load ptr, ptr %dest, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub4, i32 0, i32 3
  %7 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @fflush(ptr noundef %7)
  %8 = load ptr, ptr %dest, align 8
  %pub7 = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i32 0, i32 0
  %output_file8 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub7, i32 0, i32 3
  %9 = load ptr, ptr %output_file8, align 8
  %call9 = call i32 @ferror(ptr noundef %9)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err10, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @emit_header(ptr noundef %dinfo, i32 noundef %num_colors, ptr noundef %colormap) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %num_colors.addr = alloca i32, align 4
  %colormap.addr = alloca ptr, align 8
  %BitsPerPixel = alloca i32, align 4
  %ColorMapSize = alloca i32, align 4
  %InitCodeSize = alloca i32, align 4
  %FlagByte = alloca i32, align 4
  %cshift = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %num_colors, ptr %num_colors.addr, align 4
  store ptr %colormap, ptr %colormap.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %cinfo, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 42
  %2 = load i32, ptr %data_precision, align 8
  %sub = sub nsw i32 %2, 8
  store i32 %sub, ptr %cshift, align 4
  %3 = load i32, ptr %num_colors.addr, align 4
  %cmp = icmp sgt i32 %3, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %cinfo1, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 5
  store i32 1039, ptr %msg_code, align 8
  %7 = load i32, ptr %num_colors.addr, align 4
  %8 = load ptr, ptr %dinfo.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %cinfo2, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %11 = load ptr, ptr %dinfo.addr, align 8
  %cinfo4 = getelementptr inbounds %struct.gif_dest_struct, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %cinfo4, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %dinfo.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %cinfo6, align 8
  call void %14(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, ptr %BitsPerPixel, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %17 = load i32, ptr %num_colors.addr, align 4
  %18 = load i32, ptr %BitsPerPixel, align 4
  %shl = shl i32 1, %18
  %cmp7 = icmp sgt i32 %17, %shl
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %BitsPerPixel, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %BitsPerPixel, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %20 = load i32, ptr %BitsPerPixel, align 4
  %shl8 = shl i32 1, %20
  store i32 %shl8, ptr %ColorMapSize, align 4
  %21 = load i32, ptr %BitsPerPixel, align 4
  %cmp9 = icmp sle i32 %21, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.end
  store i32 2, ptr %InitCodeSize, align 4
  br label %if.end11

if.else:                                          ; preds = %while.end
  %22 = load i32, ptr %BitsPerPixel, align 4
  store i32 %22, ptr %InitCodeSize, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %23 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %23, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %24 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef 71, ptr noundef %24)
  %25 = load ptr, ptr %dinfo.addr, align 8
  %pub12 = getelementptr inbounds %struct.gif_dest_struct, ptr %25, i32 0, i32 0
  %output_file13 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub12, i32 0, i32 3
  %26 = load ptr, ptr %output_file13, align 8
  %call14 = call i32 @putc(i32 noundef 73, ptr noundef %26)
  %27 = load ptr, ptr %dinfo.addr, align 8
  %pub15 = getelementptr inbounds %struct.gif_dest_struct, ptr %27, i32 0, i32 0
  %output_file16 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub15, i32 0, i32 3
  %28 = load ptr, ptr %output_file16, align 8
  %call17 = call i32 @putc(i32 noundef 70, ptr noundef %28)
  %29 = load ptr, ptr %dinfo.addr, align 8
  %pub18 = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i32 0, i32 0
  %output_file19 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub18, i32 0, i32 3
  %30 = load ptr, ptr %output_file19, align 8
  %call20 = call i32 @putc(i32 noundef 56, ptr noundef %30)
  %31 = load ptr, ptr %dinfo.addr, align 8
  %pub21 = getelementptr inbounds %struct.gif_dest_struct, ptr %31, i32 0, i32 0
  %output_file22 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub21, i32 0, i32 3
  %32 = load ptr, ptr %output_file22, align 8
  %call23 = call i32 @putc(i32 noundef 55, ptr noundef %32)
  %33 = load ptr, ptr %dinfo.addr, align 8
  %pub24 = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i32 0, i32 0
  %output_file25 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub24, i32 0, i32 3
  %34 = load ptr, ptr %output_file25, align 8
  %call26 = call i32 @putc(i32 noundef 97, ptr noundef %34)
  %35 = load ptr, ptr %dinfo.addr, align 8
  %36 = load ptr, ptr %dinfo.addr, align 8
  %cinfo27 = getelementptr inbounds %struct.gif_dest_struct, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %cinfo27, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 26
  %38 = load i32, ptr %output_width, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_0(ptr noundef %35, i32 noundef %38)
  %39 = load ptr, ptr %dinfo.addr, align 8
  %40 = load ptr, ptr %dinfo.addr, align 8
  %cinfo28 = getelementptr inbounds %struct.gif_dest_struct, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %cinfo28, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 27
  %42 = load i32, ptr %output_height, align 4
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_1(ptr noundef %39, i32 noundef %42)
  store i32 128, ptr %FlagByte, align 4
  %43 = load i32, ptr %BitsPerPixel, align 4
  %sub29 = sub nsw i32 %43, 1
  %shl30 = shl i32 %sub29, 4
  %44 = load i32, ptr %FlagByte, align 4
  %or = or i32 %44, %shl30
  store i32 %or, ptr %FlagByte, align 4
  %45 = load i32, ptr %BitsPerPixel, align 4
  %sub31 = sub nsw i32 %45, 1
  %46 = load i32, ptr %FlagByte, align 4
  %or32 = or i32 %46, %sub31
  store i32 %or32, ptr %FlagByte, align 4
  %47 = load i32, ptr %FlagByte, align 4
  %48 = load ptr, ptr %dinfo.addr, align 8
  %pub33 = getelementptr inbounds %struct.gif_dest_struct, ptr %48, i32 0, i32 0
  %output_file34 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub33, i32 0, i32 3
  %49 = load ptr, ptr %output_file34, align 8
  %call35 = call i32 @putc(i32 noundef %47, ptr noundef %49)
  %50 = load ptr, ptr %dinfo.addr, align 8
  %pub36 = getelementptr inbounds %struct.gif_dest_struct, ptr %50, i32 0, i32 0
  %output_file37 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub36, i32 0, i32 3
  %51 = load ptr, ptr %output_file37, align 8
  %call38 = call i32 @putc(i32 noundef 0, ptr noundef %51)
  %52 = load ptr, ptr %dinfo.addr, align 8
  %pub39 = getelementptr inbounds %struct.gif_dest_struct, ptr %52, i32 0, i32 0
  %output_file40 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub39, i32 0, i32 3
  %53 = load ptr, ptr %output_file40, align 8
  %call41 = call i32 @putc(i32 noundef 0, ptr noundef %53)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %ColorMapSize, align 4
  %cmp42 = icmp slt i32 %54, %55
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, ptr %i, align 4
  %57 = load i32, ptr %num_colors.addr, align 4
  %cmp43 = icmp slt i32 %56, %57
  br i1 %cmp43, label %if.then44, label %if.else83

if.then44:                                        ; preds = %for.body
  %58 = load ptr, ptr %colormap.addr, align 8
  %cmp45 = icmp ne ptr %58, null
  br i1 %cmp45, label %if.then46, label %if.else78

if.then46:                                        ; preds = %if.then44
  %59 = load ptr, ptr %dinfo.addr, align 8
  %cinfo47 = getelementptr inbounds %struct.gif_dest_struct, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %cinfo47, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 10
  %61 = load i32, ptr %out_color_space, align 8
  %cmp48 = icmp eq i32 %61, 2
  br i1 %cmp48, label %if.then49, label %if.else71

if.then49:                                        ; preds = %if.then46
  %62 = load ptr, ptr %colormap.addr, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %62, i64 0
  %63 = load ptr, ptr %arrayidx50, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom = sext i32 %64 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %63, i64 %idxprom
  %65 = load i8, ptr %arrayidx51, align 1
  %conv = zext i8 %65 to i32
  %66 = load i32, ptr %cshift, align 4
  %shr = ashr i32 %conv, %66
  %67 = load ptr, ptr %dinfo.addr, align 8
  %pub52 = getelementptr inbounds %struct.gif_dest_struct, ptr %67, i32 0, i32 0
  %output_file53 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub52, i32 0, i32 3
  %68 = load ptr, ptr %output_file53, align 8
  %call54 = call i32 @putc(i32 noundef %shr, ptr noundef %68)
  %69 = load ptr, ptr %colormap.addr, align 8
  %arrayidx55 = getelementptr inbounds ptr, ptr %69, i64 1
  %70 = load ptr, ptr %arrayidx55, align 8
  %71 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %71 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %70, i64 %idxprom56
  %72 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %72 to i32
  %73 = load i32, ptr %cshift, align 4
  %shr59 = ashr i32 %conv58, %73
  %74 = load ptr, ptr %dinfo.addr, align 8
  %pub60 = getelementptr inbounds %struct.gif_dest_struct, ptr %74, i32 0, i32 0
  %output_file61 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub60, i32 0, i32 3
  %75 = load ptr, ptr %output_file61, align 8
  %call62 = call i32 @putc(i32 noundef %shr59, ptr noundef %75)
  %76 = load ptr, ptr %colormap.addr, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %76, i64 2
  %77 = load ptr, ptr %arrayidx63, align 8
  %78 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %78 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %77, i64 %idxprom64
  %79 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %79 to i32
  %80 = load i32, ptr %cshift, align 4
  %shr67 = ashr i32 %conv66, %80
  %81 = load ptr, ptr %dinfo.addr, align 8
  %pub68 = getelementptr inbounds %struct.gif_dest_struct, ptr %81, i32 0, i32 0
  %output_file69 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub68, i32 0, i32 3
  %82 = load ptr, ptr %output_file69, align 8
  %call70 = call i32 @putc(i32 noundef %shr67, ptr noundef %82)
  br label %if.end77

if.else71:                                        ; preds = %if.then46
  %83 = load ptr, ptr %dinfo.addr, align 8
  %84 = load ptr, ptr %colormap.addr, align 8
  %arrayidx72 = getelementptr inbounds ptr, ptr %84, i64 0
  %85 = load ptr, ptr %arrayidx72, align 8
  %86 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %86 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %85, i64 %idxprom73
  %87 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %87 to i32
  %88 = load i32, ptr %cshift, align 4
  %shr76 = ashr i32 %conv75, %88
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_2(ptr noundef %83, i32 noundef %shr76)
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then49
  br label %if.end82

if.else78:                                        ; preds = %if.then44
  %89 = load ptr, ptr %dinfo.addr, align 8
  %90 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %90, 255
  %91 = load i32, ptr %num_colors.addr, align 4
  %sub79 = sub nsw i32 %91, 1
  %div = sdiv i32 %sub79, 2
  %add = add nsw i32 %mul, %div
  %92 = load i32, ptr %num_colors.addr, align 4
  %sub80 = sub nsw i32 %92, 1
  %div81 = sdiv i32 %add, %sub80
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_3(ptr noundef %89, i32 noundef %div81)
  br label %if.end82

if.end82:                                         ; preds = %if.else78, %if.end77
  br label %if.end84

if.else83:                                        ; preds = %for.body
  %93 = load ptr, ptr %dinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_4(ptr noundef %93, i32 noundef 0)
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.end82
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %94 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %94, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %95 = load ptr, ptr %dinfo.addr, align 8
  %pub86 = getelementptr inbounds %struct.gif_dest_struct, ptr %95, i32 0, i32 0
  %output_file87 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub86, i32 0, i32 3
  %96 = load ptr, ptr %output_file87, align 8
  %call88 = call i32 @putc(i32 noundef 44, ptr noundef %96)
  %97 = load ptr, ptr %dinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_5(ptr noundef %97, i32 noundef 0)
  %98 = load ptr, ptr %dinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_6(ptr noundef %98, i32 noundef 0)
  %99 = load ptr, ptr %dinfo.addr, align 8
  %100 = load ptr, ptr %dinfo.addr, align 8
  %cinfo89 = getelementptr inbounds %struct.gif_dest_struct, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %cinfo89, align 8
  %output_width90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %101, i32 0, i32 26
  %102 = load i32, ptr %output_width90, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_7(ptr noundef %99, i32 noundef %102)
  %103 = load ptr, ptr %dinfo.addr, align 8
  %104 = load ptr, ptr %dinfo.addr, align 8
  %cinfo91 = getelementptr inbounds %struct.gif_dest_struct, ptr %104, i32 0, i32 1
  %105 = load ptr, ptr %cinfo91, align 8
  %output_height92 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 27
  %106 = load i32, ptr %output_height92, align 4
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_8(ptr noundef %103, i32 noundef %106)
  %107 = load ptr, ptr %dinfo.addr, align 8
  %pub93 = getelementptr inbounds %struct.gif_dest_struct, ptr %107, i32 0, i32 0
  %output_file94 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub93, i32 0, i32 3
  %108 = load ptr, ptr %output_file94, align 8
  %call95 = call i32 @putc(i32 noundef 0, ptr noundef %108)
  %109 = load i32, ptr %InitCodeSize, align 4
  %110 = load ptr, ptr %dinfo.addr, align 8
  %pub96 = getelementptr inbounds %struct.gif_dest_struct, ptr %110, i32 0, i32 0
  %output_file97 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub96, i32 0, i32 3
  %111 = load ptr, ptr %output_file97, align 8
  %call98 = call i32 @putc(i32 noundef %109, ptr noundef %111)
  %112 = load ptr, ptr %dinfo.addr, align 8
  %113 = load i32, ptr %InitCodeSize, align 4
  %add99 = add nsw i32 %113, 1
  call void @compress_init(ptr noundef %112, i32 noundef %add99)
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @put_word(ptr noundef %dinfo, i32 noundef %w) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_3bytes(ptr noundef %dinfo, i32 noundef %val) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %0, ptr noundef %2)
  %3 = load i32, ptr %val.addr, align 4
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 3
  %5 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef %3, ptr noundef %5)
  %6 = load i32, ptr %val.addr, align 4
  %7 = load ptr, ptr %dinfo.addr, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub4, i32 0, i32 3
  %8 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @putc(i32 noundef %6, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress_init(ptr noundef %dinfo, i32 noundef %i_bits) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %i_bits.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %i_bits, ptr %i_bits.addr, align 4
  %0 = load i32, ptr %i_bits.addr, align 4
  %1 = load ptr, ptr %dinfo.addr, align 8
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 4
  store i32 %0, ptr %init_bits, align 8
  %2 = load ptr, ptr %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i32 0, i32 2
  store i32 %0, ptr %n_bits, align 8
  %3 = load ptr, ptr %dinfo.addr, align 8
  %n_bits1 = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %n_bits1, align 8
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  %conv = trunc i32 %sub to i16
  %5 = load ptr, ptr %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i32 0, i32 3
  store i16 %conv, ptr %maxcode, align 4
  %6 = load i32, ptr %i_bits.addr, align 4
  %sub2 = sub nsw i32 %6, 1
  %shl3 = shl i32 1, %sub2
  %conv4 = trunc i32 %shl3 to i16
  %7 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 9
  store i16 %conv4, ptr %ClearCode, align 4
  %8 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode5 = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i32 0, i32 9
  %9 = load i16, ptr %ClearCode5, align 4
  %conv6 = sext i16 %9 to i32
  %add = add nsw i32 %conv6, 1
  %conv7 = trunc i32 %add to i16
  %10 = load ptr, ptr %dinfo.addr, align 8
  %EOFCode = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i32 0, i32 10
  store i16 %conv7, ptr %EOFCode, align 2
  %11 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode8 = getelementptr inbounds %struct.gif_dest_struct, ptr %11, i32 0, i32 9
  %12 = load i16, ptr %ClearCode8, align 4
  %conv9 = sext i16 %12 to i32
  %add10 = add nsw i32 %conv9, 2
  %conv11 = trunc i32 %add10 to i16
  %13 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i32 0, i32 11
  store i16 %conv11, ptr %free_code, align 8
  %14 = load ptr, ptr %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, ptr %14, i32 0, i32 8
  store i32 1, ptr %first_byte, align 8
  %15 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i32 0, i32 14
  store i32 0, ptr %bytesinpkt, align 8
  %16 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i32 0, i32 5
  store i64 0, ptr %cur_accum, align 8
  %17 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %17, i32 0, i32 6
  store i32 0, ptr %cur_bits, align 8
  %18 = load ptr, ptr %dinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_9(ptr noundef %18)
  %19 = load ptr, ptr %dinfo.addr, align 8
  %20 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode12 = getelementptr inbounds %struct.gif_dest_struct, ptr %20, i32 0, i32 9
  %21 = load i16, ptr %ClearCode12, align 4
  call void @output(ptr noundef %19, i16 noundef signext %21)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @clear_hash(ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %hash_code, align 8
  %2 = load ptr, ptr %dinfo.addr, align 8
  %hash_code1 = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %hash_code1, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 10006, i64 noundef %4) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @output(ptr noundef %dinfo, i16 noundef signext %code) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %code.addr = alloca i16, align 2
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i16 %code, ptr %code.addr, align 2
  %0 = load i16, ptr %code.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %cur_bits, align 8
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 %conv, %sh_prom
  %3 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i32 0, i32 5
  %4 = load i64, ptr %cur_accum, align 8
  %or = or i64 %4, %shl
  store i64 %or, ptr %cur_accum, align 8
  %5 = load ptr, ptr %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %n_bits, align 8
  %7 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits1 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %cur_bits1, align 8
  %add = add nsw i32 %8, %6
  store i32 %add, ptr %cur_bits1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits2 = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %cur_bits2, align 8
  %cmp = icmp sge i32 %10, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum4 = getelementptr inbounds %struct.gif_dest_struct, ptr %11, i32 0, i32 5
  %12 = load i64, ptr %cur_accum4, align 8
  %and = and i64 %12, 255
  %conv5 = trunc i64 %and to i8
  %13 = load ptr, ptr %dinfo.addr, align 8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i32 0, i32 15
  %14 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %14, i32 0, i32 14
  %15 = load i32, ptr %bytesinpkt, align 8
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %bytesinpkt, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %packetbuf, i64 0, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %16 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt6 = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i32 0, i32 14
  %17 = load i32, ptr %bytesinpkt6, align 8
  %cmp7 = icmp sge i32 %17, 255
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load ptr, ptr %dinfo.addr, align 8
  call void @flush_packet(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum9 = getelementptr inbounds %struct.gif_dest_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cur_accum9, align 8
  %shr = ashr i64 %20, 8
  store i64 %shr, ptr %cur_accum9, align 8
  %21 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits10 = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %cur_bits10, align 8
  %sub = sub nsw i32 %22, 8
  store i32 %sub, ptr %cur_bits10, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %23, i32 0, i32 11
  %24 = load i16, ptr %free_code, align 8
  %conv11 = sext i16 %24 to i32
  %25 = load ptr, ptr %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %25, i32 0, i32 3
  %26 = load i16, ptr %maxcode, align 4
  %conv12 = sext i16 %26 to i32
  %cmp13 = icmp sgt i32 %conv11, %conv12
  br i1 %cmp13, label %if.then15, label %if.end29

if.then15:                                        ; preds = %while.end
  %27 = load ptr, ptr %dinfo.addr, align 8
  %n_bits16 = getelementptr inbounds %struct.gif_dest_struct, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %n_bits16, align 8
  %inc17 = add nsw i32 %28, 1
  store i32 %inc17, ptr %n_bits16, align 8
  %29 = load ptr, ptr %dinfo.addr, align 8
  %n_bits18 = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %n_bits18, align 8
  %cmp19 = icmp eq i32 %30, 12
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then15
  %31 = load ptr, ptr %dinfo.addr, align 8
  %maxcode22 = getelementptr inbounds %struct.gif_dest_struct, ptr %31, i32 0, i32 3
  store i16 4096, ptr %maxcode22, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then15
  %32 = load ptr, ptr %dinfo.addr, align 8
  %n_bits23 = getelementptr inbounds %struct.gif_dest_struct, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %n_bits23, align 8
  %shl24 = shl i32 1, %33
  %sub25 = sub nsw i32 %shl24, 1
  %conv26 = trunc i32 %sub25 to i16
  %34 = load ptr, ptr %dinfo.addr, align 8
  %maxcode27 = getelementptr inbounds %struct.gif_dest_struct, ptr %34, i32 0, i32 3
  store i16 %conv26, ptr %maxcode27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %while.end
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define internal void @flush_packet(ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %bytesinpkt, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt1 = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i32 0, i32 14
  %3 = load i32, ptr %bytesinpkt1, align 8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %bytesinpkt1, align 8
  %conv = trunc i32 %3 to i8
  %4 = load ptr, ptr %dinfo.addr, align 8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 15
  %arrayidx = getelementptr inbounds [256 x i8], ptr %packetbuf, i64 0, i64 0
  store i8 %conv, ptr %arrayidx, align 4
  %5 = load ptr, ptr %dinfo.addr, align 8
  %packetbuf2 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i32 0, i32 15
  %arraydecay = getelementptr inbounds [256 x i8], ptr %packetbuf2, i64 0, i64 0
  %6 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt3 = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i32 0, i32 14
  %7 = load i32, ptr %bytesinpkt3, align 8
  %conv4 = sext i32 %7 to i64
  %8 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %9 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %arraydecay, i64 noundef 1, i64 noundef %conv4, ptr noundef %9)
  %10 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt5 = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i32 0, i32 14
  %11 = load i32, ptr %bytesinpkt5, align 8
  %conv6 = sext i32 %11 to i64
  %cmp7 = icmp ne i64 %call, %conv6
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %12 = load ptr, ptr %dinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %15 = load ptr, ptr %dinfo.addr, align 8
  %cinfo10 = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %cinfo10, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %error_exit, align 8
  %19 = load ptr, ptr %dinfo.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.gif_dest_struct, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %cinfo12, align 8
  call void %18(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %21 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt13 = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i32 0, i32 14
  store i32 0, ptr %bytesinpkt13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @compress_byte(ptr noundef %dinfo, i32 noundef %c) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %disp = alloca i32, align 4
  %probe_value = alloca i64, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %first_byte, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %2 to i16
  %3 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i32 0, i32 7
  store i16 %conv, ptr %waiting_code, align 4
  %4 = load ptr, ptr %dinfo.addr, align 8
  %first_byte1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 8
  store i32 0, ptr %first_byte1, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %c.addr, align 4
  %shl = shl i32 %5, 4
  %6 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code2 = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i32 0, i32 7
  %7 = load i16, ptr %waiting_code2, align 4
  %conv3 = sext i16 %7 to i32
  %add = add nsw i32 %shl, %conv3
  store i32 %add, ptr %i, align 4
  %8 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %8, 5003
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 5003
  store i32 %sub, ptr %i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code7 = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i32 0, i32 7
  %11 = load i16, ptr %waiting_code7, align 4
  %conv8 = sext i16 %11 to i64
  %shl9 = shl i64 %conv8, 8
  %12 = load i32, ptr %c.addr, align 4
  %conv10 = sext i32 %12 to i64
  %or = or i64 %shl9, %conv10
  store i64 %or, ptr %probe_value, align 8
  %13 = load ptr, ptr %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %hash_code, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i16, ptr %14, i64 %idxprom
  %16 = load i16, ptr %arrayidx, align 2
  %conv11 = sext i16 %16 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end55

if.then14:                                        ; preds = %if.end6
  %17 = load ptr, ptr %dinfo.addr, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %hash_value, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i64 %idxprom15
  %20 = load i64, ptr %arrayidx16, align 8
  %21 = load i64, ptr %probe_value, align 8
  %cmp17 = icmp eq i64 %20, %21
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then14
  %22 = load ptr, ptr %dinfo.addr, align 8
  %hash_code20 = getelementptr inbounds %struct.gif_dest_struct, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %hash_code20, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %23, i64 %idxprom21
  %25 = load i16, ptr %arrayidx22, align 2
  %26 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code23 = getelementptr inbounds %struct.gif_dest_struct, ptr %26, i32 0, i32 7
  store i16 %25, ptr %waiting_code23, align 4
  br label %return

if.end24:                                         ; preds = %if.then14
  %27 = load i32, ptr %i, align 4
  %cmp25 = icmp eq i32 %27, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  store i32 1, ptr %disp, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end24
  %28 = load i32, ptr %i, align 4
  %sub28 = sub nsw i32 5003, %28
  store i32 %sub28, ptr %disp, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then27
  br label %for.cond

for.cond:                                         ; preds = %if.end54, %if.end29
  %29 = load i32, ptr %disp, align 4
  %30 = load i32, ptr %i, align 4
  %sub30 = sub nsw i32 %30, %29
  store i32 %sub30, ptr %i, align 4
  %31 = load i32, ptr %i, align 4
  %cmp31 = icmp slt i32 %31, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.cond
  %32 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %32, 5003
  store i32 %add34, ptr %i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.cond
  %33 = load ptr, ptr %dinfo.addr, align 8
  %hash_code36 = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %hash_code36, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %34, i64 %idxprom37
  %36 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %36 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  br label %for.end

if.end43:                                         ; preds = %if.end35
  %37 = load ptr, ptr %dinfo.addr, align 8
  %hash_value44 = getelementptr inbounds %struct.gif_dest_struct, ptr %37, i32 0, i32 13
  %38 = load ptr, ptr %hash_value44, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %38, i64 %idxprom45
  %40 = load i64, ptr %arrayidx46, align 8
  %41 = load i64, ptr %probe_value, align 8
  %cmp47 = icmp eq i64 %40, %41
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end43
  %42 = load ptr, ptr %dinfo.addr, align 8
  %hash_code50 = getelementptr inbounds %struct.gif_dest_struct, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %hash_code50, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %43, i64 %idxprom51
  %45 = load i16, ptr %arrayidx52, align 2
  %46 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code53 = getelementptr inbounds %struct.gif_dest_struct, ptr %46, i32 0, i32 7
  store i16 %45, ptr %waiting_code53, align 4
  br label %return

if.end54:                                         ; preds = %if.end43
  br label %for.cond

for.end:                                          ; preds = %if.then42
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.end6
  %47 = load ptr, ptr %dinfo.addr, align 8
  %48 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code56 = getelementptr inbounds %struct.gif_dest_struct, ptr %48, i32 0, i32 7
  %49 = load i16, ptr %waiting_code56, align 4
  call void @output(ptr noundef %47, i16 noundef signext %49)
  %50 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %50, i32 0, i32 11
  %51 = load i16, ptr %free_code, align 8
  %conv57 = sext i16 %51 to i32
  %cmp58 = icmp slt i32 %conv57, 4096
  br i1 %cmp58, label %if.then60, label %if.else68

if.then60:                                        ; preds = %if.end55
  %52 = load ptr, ptr %dinfo.addr, align 8
  %free_code61 = getelementptr inbounds %struct.gif_dest_struct, ptr %52, i32 0, i32 11
  %53 = load i16, ptr %free_code61, align 8
  %inc = add i16 %53, 1
  store i16 %inc, ptr %free_code61, align 8
  %54 = load ptr, ptr %dinfo.addr, align 8
  %hash_code62 = getelementptr inbounds %struct.gif_dest_struct, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %hash_code62, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %55, i64 %idxprom63
  store i16 %53, ptr %arrayidx64, align 2
  %57 = load i64, ptr %probe_value, align 8
  %58 = load ptr, ptr %dinfo.addr, align 8
  %hash_value65 = getelementptr inbounds %struct.gif_dest_struct, ptr %58, i32 0, i32 13
  %59 = load ptr, ptr %hash_value65, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %60 to i64
  %arrayidx67 = getelementptr inbounds i64, ptr %59, i64 %idxprom66
  store i64 %57, ptr %arrayidx67, align 8
  br label %if.end69

if.else68:                                        ; preds = %if.end55
  %61 = load ptr, ptr %dinfo.addr, align 8
  call void @clear_block(ptr noundef %61)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then60
  %62 = load i32, ptr %c.addr, align 4
  %conv70 = trunc i32 %62 to i16
  %63 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code71 = getelementptr inbounds %struct.gif_dest_struct, ptr %63, i32 0, i32 7
  store i16 %conv70, ptr %waiting_code71, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then49, %if.then19, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @clear_block(ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_10(ptr noundef %0)
  %1 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 9
  %2 = load i16, ptr %ClearCode, align 4
  %conv = sext i16 %2 to i32
  %add = add nsw i32 %conv, 2
  %conv1 = trunc i32 %add to i16
  %3 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i32 0, i32 11
  store i16 %conv1, ptr %free_code, align 8
  %4 = load ptr, ptr %dinfo.addr, align 8
  %5 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode2 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i32 0, i32 9
  %6 = load i16, ptr %ClearCode2, align 4
  call void @output(ptr noundef %4, i16 noundef signext %6)
  %7 = load ptr, ptr %dinfo.addr, align 8
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %init_bits, align 8
  %9 = load ptr, ptr %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i32 0, i32 2
  store i32 %8, ptr %n_bits, align 8
  %10 = load ptr, ptr %dinfo.addr, align 8
  %n_bits3 = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %n_bits3, align 8
  %shl = shl i32 1, %11
  %sub = sub nsw i32 %shl, 1
  %conv4 = trunc i32 %sub to i16
  %12 = load ptr, ptr %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i32 0, i32 3
  store i16 %conv4, ptr %maxcode, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress_term(ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %first_byte, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dinfo.addr, align 8
  %3 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i32 0, i32 7
  %4 = load i16, ptr %waiting_code, align 4
  call void @output(ptr noundef %2, i16 noundef signext %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %dinfo.addr, align 8
  %6 = load ptr, ptr %dinfo.addr, align 8
  %EOFCode = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %EOFCode, align 2
  call void @output(ptr noundef %5, i16 noundef signext %7)
  %8 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %cur_bits, align 8
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %10 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i32 0, i32 5
  %11 = load i64, ptr %cur_accum, align 8
  %and = and i64 %11, 255
  %conv = trunc i64 %and to i8
  %12 = load ptr, ptr %dinfo.addr, align 8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i32 0, i32 15
  %13 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i32 0, i32 14
  %14 = load i32, ptr %bytesinpkt, align 8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %bytesinpkt, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %packetbuf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %15 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt2 = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i32 0, i32 14
  %16 = load i32, ptr %bytesinpkt2, align 8
  %cmp3 = icmp sge i32 %16, 255
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then1
  %17 = load ptr, ptr %dinfo.addr, align 8
  call void @flush_packet(ptr noundef %17)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %18 = load ptr, ptr %dinfo.addr, align 8
  call void @flush_packet(ptr noundef %18)
  ret void
}

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_0(ptr noundef %dinfo, i32 noundef %w)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_1(ptr noundef %dinfo, i32 noundef %w)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_2(ptr noundef %dinfo, i32 noundef %val)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %0, ptr noundef %2)
  %3 = load i32, ptr %val.addr, align 4
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 3
  %5 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef %3, ptr noundef %5)
  %6 = load i32, ptr %val.addr, align 4
  %7 = load ptr, ptr %dinfo.addr, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub4, i32 0, i32 3
  %8 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @putc(i32 noundef %6, ptr noundef %8)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_3(ptr noundef %dinfo, i32 noundef %val)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %0, ptr noundef %2)
  %3 = load i32, ptr %val.addr, align 4
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 3
  %5 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef %3, ptr noundef %5)
  %6 = load i32, ptr %val.addr, align 4
  %7 = load ptr, ptr %dinfo.addr, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub4, i32 0, i32 3
  %8 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @putc(i32 noundef %6, ptr noundef %8)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_4(ptr noundef %dinfo, i32 noundef %val)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %0, ptr noundef %2)
  %3 = load i32, ptr %val.addr, align 4
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 3
  %5 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef %3, ptr noundef %5)
  %6 = load i32, ptr %val.addr, align 4
  %7 = load ptr, ptr %dinfo.addr, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub4, i32 0, i32 3
  %8 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @putc(i32 noundef %6, ptr noundef %8)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_5(ptr noundef %dinfo, i32 noundef %w)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_6(ptr noundef %dinfo, i32 noundef %w)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_7(ptr noundef %dinfo, i32 noundef %w)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_8(ptr noundef %dinfo, i32 noundef %w)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %2)
  %3 = load i32, ptr %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load ptr, ptr %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 3
  %5 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_9(ptr noundef %dinfo)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %hash_code, align 8
  %2 = load ptr, ptr %dinfo.addr, align 8
  %hash_code1 = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %hash_code1, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 10006, i64 noundef %4) #4
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrgif_10(ptr noundef %dinfo)  alwaysinline#0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %hash_code, align 8
  %2 = load ptr, ptr %dinfo.addr, align 8
  %hash_code1 = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %hash_code1, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 10006, i64 noundef %4) #4
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
