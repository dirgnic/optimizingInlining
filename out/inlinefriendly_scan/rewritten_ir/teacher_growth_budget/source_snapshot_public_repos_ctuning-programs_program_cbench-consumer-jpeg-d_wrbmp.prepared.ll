; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrbmp.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrbmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.bmp_dest_struct = type { %struct.djpeg_dest_struct, i32, ptr, i32, i32, i32, i32 }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_write_bmp(ptr noundef %cinfo, i32 noundef %is_os2) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %is_os2.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %row_width = alloca i32, align 4
  %progress24 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %is_os2, ptr %is_os2.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 80)
  store ptr %call, ptr %dest, align 8
  %4 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %4, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 0
  store ptr @start_output_bmp, ptr %start_output, align 8
  %5 = load ptr, ptr %dest, align 8
  %pub1 = getelementptr inbounds %struct.bmp_dest_struct, ptr %5, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 2
  store ptr @finish_output_bmp, ptr %finish_output, align 8
  %6 = load i32, ptr %is_os2.addr, align 4
  %7 = load ptr, ptr %dest, align 8
  %is_os22 = getelementptr inbounds %struct.bmp_dest_struct, ptr %7, i32 0, i32 1
  store i32 %6, ptr %is_os22, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %dest, align 8
  %pub3 = getelementptr inbounds %struct.bmp_dest_struct, ptr %10, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub3, i32 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %out_color_space4, align 8
  %cmp5 = icmp eq i32 %12, 2
  br i1 %cmp5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else
  %13 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 19
  %14 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.then6
  %15 = load ptr, ptr %dest, align 8
  %pub8 = getelementptr inbounds %struct.bmp_dest_struct, ptr %15, i32 0, i32 0
  %put_pixel_rows9 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub8, i32 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows9, align 8
  br label %if.end

if.else10:                                        ; preds = %if.then6
  %16 = load ptr, ptr %dest, align 8
  %pub11 = getelementptr inbounds %struct.bmp_dest_struct, ptr %16, i32 0, i32 0
  %put_pixel_rows12 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub11, i32 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then7
  br label %if.end15

if.else13:                                        ; preds = %if.else
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5
  store i32 1005, ptr %msg_code, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err14, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %error_exit, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22)
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %23)
  %24 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 26
  %25 = load i32, ptr %output_width, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 29
  %27 = load i32, ptr %output_components, align 4
  %mul = mul i32 %25, %27
  store i32 %mul, ptr %row_width, align 4
  %28 = load i32, ptr %row_width, align 4
  %29 = load ptr, ptr %dest, align 8
  %data_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %29, i32 0, i32 3
  store i32 %28, ptr %data_width, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end16
  %30 = load i32, ptr %row_width, align 4
  %and = and i32 %30, 3
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, ptr %row_width, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %row_width, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %32 = load i32, ptr %row_width, align 4
  %33 = load ptr, ptr %dest, align 8
  %row_width18 = getelementptr inbounds %struct.bmp_dest_struct, ptr %33, i32 0, i32 4
  store i32 %32, ptr %row_width18, align 4
  %34 = load i32, ptr %row_width, align 4
  %35 = load ptr, ptr %dest, align 8
  %data_width19 = getelementptr inbounds %struct.bmp_dest_struct, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %data_width19, align 8
  %sub = sub i32 %34, %36
  %37 = load ptr, ptr %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, ptr %37, i32 0, i32 5
  store i32 %sub, ptr %pad_bytes, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  %mem20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %mem20, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %request_virt_sarray, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %42 = load i32, ptr %row_width, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 27
  %44 = load i32, ptr %output_height, align 4
  %call21 = call ptr %40(ptr noundef %41, i32 noundef 1, i32 noundef 0, i32 noundef %42, i32 noundef %44, i32 noundef 1)
  %45 = load ptr, ptr %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %45, i32 0, i32 2
  store ptr %call21, ptr %whole_image, align 8
  %46 = load ptr, ptr %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, ptr %46, i32 0, i32 6
  store i32 0, ptr %cur_output_row, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %progress, align 8
  %cmp22 = icmp ne ptr %48, null
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %while.end
  %49 = load ptr, ptr %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %progress25, align 8
  store ptr %50, ptr %progress24, align 8
  %51 = load ptr, ptr %progress24, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %total_extra_passes, align 4
  %inc26 = add nsw i32 %52, 1
  store i32 %inc26, ptr %total_extra_passes, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %while.end
  %53 = load ptr, ptr %cinfo.addr, align 8
  %mem28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %mem28, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %alloc_sarray, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %57 = load i32, ptr %row_width, align 4
  %call29 = call ptr %55(ptr noundef %56, i32 noundef 1, i32 noundef %57, i32 noundef 1)
  %58 = load ptr, ptr %dest, align 8
  %pub30 = getelementptr inbounds %struct.bmp_dest_struct, ptr %58, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub30, i32 0, i32 4
  store ptr %call29, ptr %buffer, align 8
  %59 = load ptr, ptr %dest, align 8
  %pub31 = getelementptr inbounds %struct.bmp_dest_struct, ptr %59, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub31, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %60 = load ptr, ptr %dest, align 8
  ret ptr %60
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_bmp(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_bmp(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %outfile = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %data_ptr = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %output_file, align 8
  store ptr %2, ptr %outfile, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %progress1, align 8
  store ptr %4, ptr %progress, align 8
  %5 = load ptr, ptr %dest, align 8
  %is_os2 = getelementptr inbounds %struct.bmp_dest_struct, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %is_os2, align 8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %dest, align 8
  call void @write_os2_header(ptr noundef %7, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %dest, align 8
  call void @write_bmp_header(ptr noundef %9, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 27
  %12 = load i32, ptr %output_height, align 4
  store i32 %12, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %if.end
  %13 = load i32, ptr %row, align 4
  %cmp = icmp ugt i32 %13, 0
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %progress, align 8
  %cmp2 = icmp ne ptr %14, null
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %for.body
  %15 = load ptr, ptr %cinfo.addr, align 8
  %output_height4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 27
  %16 = load i32, ptr %output_height4, align 4
  %17 = load i32, ptr %row, align 4
  %sub = sub i32 %16, %17
  %conv = zext i32 %sub to i64
  %18 = load ptr, ptr %progress, align 8
  %pub5 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %18, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub5, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %output_height6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 27
  %20 = load i32, ptr %output_height6, align 4
  %conv7 = zext i32 %20 to i64
  %21 = load ptr, ptr %progress, align 8
  %pub8 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %21, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub8, i32 0, i32 2
  store i64 %conv7, ptr %pass_limit, align 8
  %22 = load ptr, ptr %progress, align 8
  %pub9 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %22, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub9, i32 0, i32 0
  %23 = load ptr, ptr %progress_monitor, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %for.body
  %25 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %26, i32 0, i32 7
  %27 = load ptr, ptr %access_virt_sarray, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %whole_image, align 8
  %31 = load i32, ptr %row, align 4
  %sub11 = sub i32 %31, 1
  %call = call ptr %27(ptr noundef %28, ptr noundef %30, i32 noundef %sub11, i32 noundef 1, i32 noundef 0)
  store ptr %call, ptr %image_ptr, align 8
  %32 = load ptr, ptr %image_ptr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %32, i64 0
  %33 = load ptr, ptr %arrayidx, align 8
  store ptr %33, ptr %data_ptr, align 8
  %34 = load ptr, ptr %dest, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %row_width, align 4
  store i32 %35, ptr %col, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.end10
  %36 = load i32, ptr %col, align 4
  %cmp13 = icmp ugt i32 %36, 0
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %37 = load ptr, ptr %data_ptr, align 8
  %38 = load i8, ptr %37, align 1
  %conv16 = zext i8 %38 to i32
  %39 = load ptr, ptr %outfile, align 8
  %call17 = call i32 @putc(i32 noundef %conv16, ptr noundef %39)
  %40 = load ptr, ptr %data_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %data_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %41 = load i32, ptr %col, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond12, !llvm.loop !8

for.end:                                          ; preds = %for.cond12
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %42 = load i32, ptr %row, align 4
  %dec19 = add i32 %42, -1
  store i32 %dec19, ptr %row, align 4
  br label %for.cond, !llvm.loop !9

for.end20:                                        ; preds = %for.cond
  %43 = load ptr, ptr %progress, align 8
  %cmp21 = icmp ne ptr %43, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end20
  %44 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %completed_extra_passes, align 8
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %completed_extra_passes, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end20
  %46 = load ptr, ptr %outfile, align 8
  %call25 = call i32 @fflush(ptr noundef %46)
  %47 = load ptr, ptr %outfile, align 8
  %call26 = call i32 @ferror(ptr noundef %47)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  %48 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err29, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %error_exit, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void %52(ptr noundef %53)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_gray_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %pad = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %access_virt_sarray, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %whole_image, align 8
  %7 = load ptr, ptr %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %cur_output_row, align 4
  %call = call ptr %3(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef 1, i32 noundef 1)
  store ptr %call, ptr %image_ptr, align 8
  %9 = load ptr, ptr %dest, align 8
  %cur_output_row1 = getelementptr inbounds %struct.bmp_dest_struct, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %cur_output_row1, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %cur_output_row1, align 4
  %11 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %11, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %12 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %inptr, align 8
  %14 = load ptr, ptr %image_ptr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx2, align 8
  store ptr %15, ptr %outptr, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 26
  %17 = load i32, ptr %output_width, align 8
  store i32 %17, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %18, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %20 = load i8, ptr %19, align 1
  %21 = load ptr, ptr %outptr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr3, ptr %outptr, align 8
  store i8 %20, ptr %21, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %col, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %pad_bytes, align 8
  store i32 %24, ptr %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %25 = load i32, ptr %pad, align 4
  %dec4 = add nsw i32 %25, -1
  store i32 %dec4, ptr %pad, align 4
  %cmp5 = icmp sge i32 %dec4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr6, ptr %outptr, align 8
  store i8 0, ptr %26, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %pad = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %access_virt_sarray, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %whole_image, align 8
  %7 = load ptr, ptr %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %cur_output_row, align 4
  %call = call ptr %3(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef 1, i32 noundef 1)
  store ptr %call, ptr %image_ptr, align 8
  %9 = load ptr, ptr %dest, align 8
  %cur_output_row1 = getelementptr inbounds %struct.bmp_dest_struct, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %cur_output_row1, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %cur_output_row1, align 4
  %11 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %11, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %12 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %inptr, align 8
  %14 = load ptr, ptr %image_ptr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx2, align 8
  store ptr %15, ptr %outptr, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 26
  %17 = load i32, ptr %output_width, align 8
  store i32 %17, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %18, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %20 = load i8, ptr %19, align 1
  %21 = load ptr, ptr %outptr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 %20, ptr %arrayidx3, align 1
  %22 = load ptr, ptr %inptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr4, ptr %inptr, align 8
  %23 = load i8, ptr %22, align 1
  %24 = load ptr, ptr %outptr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %23, ptr %arrayidx5, align 1
  %25 = load ptr, ptr %inptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr6, ptr %inptr, align 8
  %26 = load i8, ptr %25, align 1
  %27 = load ptr, ptr %outptr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %27, i64 0
  store i8 %26, ptr %arrayidx7, align 1
  %28 = load ptr, ptr %outptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %col, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %pad_bytes, align 8
  store i32 %31, ptr %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %32 = load i32, ptr %pad, align 4
  %dec8 = add nsw i32 %32, -1
  store i32 %dec8, ptr %pad, align 4
  %cmp9 = icmp sge i32 %dec8, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load ptr, ptr %outptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr10, ptr %outptr, align 8
  store i8 0, ptr %33, align 1
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @write_os2_header(ptr noundef %cinfo, ptr noundef %dest) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpcoreheader = alloca [12 x i8], align 1
  %headersize = alloca i64, align 8
  %bfSize = alloca i64, align 8
  %bits_per_pixel = alloca i32, align 4
  %cmap_entries = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 19
  %3 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  store i32 8, ptr %bits_per_pixel, align 4
  store i32 256, ptr %cmap_entries, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 24, ptr %bits_per_pixel, align 4
  store i32 0, ptr %cmap_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3

if.else2:                                         ; preds = %entry
  store i32 8, ptr %bits_per_pixel, align 4
  store i32 256, ptr %cmap_entries, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else2, %if.end
  %4 = load i32, ptr %cmap_entries, align 4
  %mul = mul nsw i32 %4, 3
  %add = add nsw i32 26, %mul
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %headersize, align 8
  %5 = load i64, ptr %headersize, align 8
  %6 = load ptr, ptr %dest.addr, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %row_width, align 4
  %conv4 = zext i32 %7 to i64
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 27
  %9 = load i32, ptr %output_height, align 4
  %conv5 = zext i32 %9 to i64
  %mul6 = mul nsw i64 %conv4, %conv5
  %add7 = add nsw i64 %5, %mul6
  store i64 %add7, ptr %bfSize, align 8
  %arraydecay = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 14, i1 false)
  %arraydecay8 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay8, i8 0, i64 12, i1 false)
  %arrayidx = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  store i8 66, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  store i8 77, ptr %arrayidx9, align 1
  %10 = load i64, ptr %bfSize, align 8
  %and = and i64 %10, 255
  %conv10 = trunc i64 %and to i8
  %arrayidx11 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 2
  store i8 %conv10, ptr %arrayidx11, align 1
  %11 = load i64, ptr %bfSize, align 8
  %shr = ashr i64 %11, 8
  %and12 = and i64 %shr, 255
  %conv13 = trunc i64 %and12 to i8
  %arrayidx14 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 3
  store i8 %conv13, ptr %arrayidx14, align 1
  %12 = load i64, ptr %bfSize, align 8
  %shr15 = ashr i64 %12, 16
  %and16 = and i64 %shr15, 255
  %conv17 = trunc i64 %and16 to i8
  %arrayidx18 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 4
  store i8 %conv17, ptr %arrayidx18, align 1
  %13 = load i64, ptr %bfSize, align 8
  %shr19 = ashr i64 %13, 24
  %and20 = and i64 %shr19, 255
  %conv21 = trunc i64 %and20 to i8
  %arrayidx22 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 5
  store i8 %conv21, ptr %arrayidx22, align 1
  %14 = load i64, ptr %headersize, align 8
  %and23 = and i64 %14, 255
  %conv24 = trunc i64 %and23 to i8
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  store i8 %conv24, ptr %arrayidx25, align 1
  %15 = load i64, ptr %headersize, align 8
  %shr26 = ashr i64 %15, 8
  %and27 = and i64 %shr26, 255
  %conv28 = trunc i64 %and27 to i8
  %arrayidx29 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  store i8 %conv28, ptr %arrayidx29, align 1
  %16 = load i64, ptr %headersize, align 8
  %shr30 = ashr i64 %16, 16
  %and31 = and i64 %shr30, 255
  %conv32 = trunc i64 %and31 to i8
  %arrayidx33 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  store i8 %conv32, ptr %arrayidx33, align 1
  %17 = load i64, ptr %headersize, align 8
  %shr34 = ashr i64 %17, 24
  %and35 = and i64 %shr34, 255
  %conv36 = trunc i64 %and35 to i8
  %arrayidx37 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  store i8 %conv36, ptr %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 0
  store i8 12, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 1
  store i8 0, ptr %arrayidx39, align 1
  %18 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 26
  %19 = load i32, ptr %output_width, align 8
  %and40 = and i32 %19, 255
  %conv41 = trunc i32 %and40 to i8
  %arrayidx42 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 4
  store i8 %conv41, ptr %arrayidx42, align 1
  %20 = load ptr, ptr %cinfo.addr, align 8
  %output_width43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 26
  %21 = load i32, ptr %output_width43, align 8
  %shr44 = lshr i32 %21, 8
  %and45 = and i32 %shr44, 255
  %conv46 = trunc i32 %and45 to i8
  %arrayidx47 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 5
  store i8 %conv46, ptr %arrayidx47, align 1
  %22 = load ptr, ptr %cinfo.addr, align 8
  %output_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 27
  %23 = load i32, ptr %output_height48, align 4
  %and49 = and i32 %23, 255
  %conv50 = trunc i32 %and49 to i8
  %arrayidx51 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 6
  store i8 %conv50, ptr %arrayidx51, align 1
  %24 = load ptr, ptr %cinfo.addr, align 8
  %output_height52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 27
  %25 = load i32, ptr %output_height52, align 4
  %shr53 = lshr i32 %25, 8
  %and54 = and i32 %shr53, 255
  %conv55 = trunc i32 %and54 to i8
  %arrayidx56 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 7
  store i8 %conv55, ptr %arrayidx56, align 1
  %arrayidx57 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 8
  store i8 1, ptr %arrayidx57, align 1
  %arrayidx58 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 9
  store i8 0, ptr %arrayidx58, align 1
  %26 = load i32, ptr %bits_per_pixel, align 4
  %and59 = and i32 %26, 255
  %conv60 = trunc i32 %and59 to i8
  %arrayidx61 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 10
  store i8 %conv60, ptr %arrayidx61, align 1
  %27 = load i32, ptr %bits_per_pixel, align 4
  %shr62 = ashr i32 %27, 8
  %and63 = and i32 %shr62, 255
  %conv64 = trunc i32 %and63 to i8
  %arrayidx65 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 11
  store i8 %conv64, ptr %arrayidx65, align 1
  %arraydecay66 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  %28 = load ptr, ptr %dest.addr, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %28, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %29 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %arraydecay66, i64 noundef 1, i64 noundef 14, ptr noundef %29)
  %cmp67 = icmp ne i64 %call, 14
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end3
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err70, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end3
  %arraydecay72 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 0
  %36 = load ptr, ptr %dest.addr, align 8
  %pub73 = getelementptr inbounds %struct.bmp_dest_struct, ptr %36, i32 0, i32 0
  %output_file74 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub73, i32 0, i32 3
  %37 = load ptr, ptr %output_file74, align 8
  %call75 = call i64 @"\01_fwrite"(ptr noundef %arraydecay72, i64 noundef 1, i64 noundef 12, ptr noundef %37)
  %cmp76 = icmp ne i64 %call75, 12
  br i1 %cmp76, label %if.then78, label %if.end83

if.then78:                                        ; preds = %if.end71
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err79, align 8
  %msg_code80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 5
  store i32 36, ptr %msg_code80, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err81, align 8
  %error_exit82 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %error_exit82, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  call void %42(ptr noundef %43)
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end71
  %44 = load i32, ptr %cmap_entries, align 4
  %cmp84 = icmp sgt i32 %44, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %dest.addr, align 8
  %47 = load i32, ptr %cmap_entries, align 4
  call void @write_colormap(ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef 3)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end83
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_bmp_header(ptr noundef %cinfo, ptr noundef %dest) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpinfoheader = alloca [40 x i8], align 1
  %headersize = alloca i64, align 8
  %bfSize = alloca i64, align 8
  %bits_per_pixel = alloca i32, align 4
  %cmap_entries = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 19
  %3 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  store i32 8, ptr %bits_per_pixel, align 4
  store i32 256, ptr %cmap_entries, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 24, ptr %bits_per_pixel, align 4
  store i32 0, ptr %cmap_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3

if.else2:                                         ; preds = %entry
  store i32 8, ptr %bits_per_pixel, align 4
  store i32 256, ptr %cmap_entries, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else2, %if.end
  %4 = load i32, ptr %cmap_entries, align 4
  %mul = mul nsw i32 %4, 4
  %add = add nsw i32 54, %mul
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %headersize, align 8
  %5 = load i64, ptr %headersize, align 8
  %6 = load ptr, ptr %dest.addr, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %row_width, align 4
  %conv4 = zext i32 %7 to i64
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 27
  %9 = load i32, ptr %output_height, align 4
  %conv5 = zext i32 %9 to i64
  %mul6 = mul nsw i64 %conv4, %conv5
  %add7 = add nsw i64 %5, %mul6
  store i64 %add7, ptr %bfSize, align 8
  %arraydecay = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 14, i1 false)
  %arraydecay8 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay8, i8 0, i64 40, i1 false)
  %arrayidx = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  store i8 66, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  store i8 77, ptr %arrayidx9, align 1
  %10 = load i64, ptr %bfSize, align 8
  %and = and i64 %10, 255
  %conv10 = trunc i64 %and to i8
  %arrayidx11 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 2
  store i8 %conv10, ptr %arrayidx11, align 1
  %11 = load i64, ptr %bfSize, align 8
  %shr = ashr i64 %11, 8
  %and12 = and i64 %shr, 255
  %conv13 = trunc i64 %and12 to i8
  %arrayidx14 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 3
  store i8 %conv13, ptr %arrayidx14, align 1
  %12 = load i64, ptr %bfSize, align 8
  %shr15 = ashr i64 %12, 16
  %and16 = and i64 %shr15, 255
  %conv17 = trunc i64 %and16 to i8
  %arrayidx18 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 4
  store i8 %conv17, ptr %arrayidx18, align 1
  %13 = load i64, ptr %bfSize, align 8
  %shr19 = ashr i64 %13, 24
  %and20 = and i64 %shr19, 255
  %conv21 = trunc i64 %and20 to i8
  %arrayidx22 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 5
  store i8 %conv21, ptr %arrayidx22, align 1
  %14 = load i64, ptr %headersize, align 8
  %and23 = and i64 %14, 255
  %conv24 = trunc i64 %and23 to i8
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  store i8 %conv24, ptr %arrayidx25, align 1
  %15 = load i64, ptr %headersize, align 8
  %shr26 = ashr i64 %15, 8
  %and27 = and i64 %shr26, 255
  %conv28 = trunc i64 %and27 to i8
  %arrayidx29 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  store i8 %conv28, ptr %arrayidx29, align 1
  %16 = load i64, ptr %headersize, align 8
  %shr30 = ashr i64 %16, 16
  %and31 = and i64 %shr30, 255
  %conv32 = trunc i64 %and31 to i8
  %arrayidx33 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  store i8 %conv32, ptr %arrayidx33, align 1
  %17 = load i64, ptr %headersize, align 8
  %shr34 = ashr i64 %17, 24
  %and35 = and i64 %shr34, 255
  %conv36 = trunc i64 %and35 to i8
  %arrayidx37 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  store i8 %conv36, ptr %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 0
  store i8 40, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 1
  store i8 0, ptr %arrayidx39, align 1
  %18 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 26
  %19 = load i32, ptr %output_width, align 8
  %and40 = and i32 %19, 255
  %conv41 = trunc i32 %and40 to i8
  %arrayidx42 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 4
  store i8 %conv41, ptr %arrayidx42, align 1
  %20 = load ptr, ptr %cinfo.addr, align 8
  %output_width43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 26
  %21 = load i32, ptr %output_width43, align 8
  %shr44 = lshr i32 %21, 8
  %and45 = and i32 %shr44, 255
  %conv46 = trunc i32 %and45 to i8
  %arrayidx47 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 5
  store i8 %conv46, ptr %arrayidx47, align 1
  %22 = load ptr, ptr %cinfo.addr, align 8
  %output_width48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 26
  %23 = load i32, ptr %output_width48, align 8
  %shr49 = lshr i32 %23, 16
  %and50 = and i32 %shr49, 255
  %conv51 = trunc i32 %and50 to i8
  %arrayidx52 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 6
  store i8 %conv51, ptr %arrayidx52, align 1
  %24 = load ptr, ptr %cinfo.addr, align 8
  %output_width53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 26
  %25 = load i32, ptr %output_width53, align 8
  %shr54 = lshr i32 %25, 24
  %and55 = and i32 %shr54, 255
  %conv56 = trunc i32 %and55 to i8
  %arrayidx57 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 7
  store i8 %conv56, ptr %arrayidx57, align 1
  %26 = load ptr, ptr %cinfo.addr, align 8
  %output_height58 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 27
  %27 = load i32, ptr %output_height58, align 4
  %and59 = and i32 %27, 255
  %conv60 = trunc i32 %and59 to i8
  %arrayidx61 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 8
  store i8 %conv60, ptr %arrayidx61, align 1
  %28 = load ptr, ptr %cinfo.addr, align 8
  %output_height62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 27
  %29 = load i32, ptr %output_height62, align 4
  %shr63 = lshr i32 %29, 8
  %and64 = and i32 %shr63, 255
  %conv65 = trunc i32 %and64 to i8
  %arrayidx66 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 9
  store i8 %conv65, ptr %arrayidx66, align 1
  %30 = load ptr, ptr %cinfo.addr, align 8
  %output_height67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 27
  %31 = load i32, ptr %output_height67, align 4
  %shr68 = lshr i32 %31, 16
  %and69 = and i32 %shr68, 255
  %conv70 = trunc i32 %and69 to i8
  %arrayidx71 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 10
  store i8 %conv70, ptr %arrayidx71, align 1
  %32 = load ptr, ptr %cinfo.addr, align 8
  %output_height72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 27
  %33 = load i32, ptr %output_height72, align 4
  %shr73 = lshr i32 %33, 24
  %and74 = and i32 %shr73, 255
  %conv75 = trunc i32 %and74 to i8
  %arrayidx76 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 11
  store i8 %conv75, ptr %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 12
  store i8 1, ptr %arrayidx77, align 1
  %arrayidx78 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 13
  store i8 0, ptr %arrayidx78, align 1
  %34 = load i32, ptr %bits_per_pixel, align 4
  %and79 = and i32 %34, 255
  %conv80 = trunc i32 %and79 to i8
  %arrayidx81 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 14
  store i8 %conv80, ptr %arrayidx81, align 1
  %35 = load i32, ptr %bits_per_pixel, align 4
  %shr82 = ashr i32 %35, 8
  %and83 = and i32 %shr82, 255
  %conv84 = trunc i32 %and83 to i8
  %arrayidx85 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 15
  store i8 %conv84, ptr %arrayidx85, align 1
  %36 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 51
  %37 = load i8, ptr %density_unit, align 8
  %conv86 = zext i8 %37 to i32
  %cmp87 = icmp eq i32 %conv86, 2
  br i1 %cmp87, label %if.then89, label %if.end150

if.then89:                                        ; preds = %if.end3
  %38 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 52
  %39 = load i16, ptr %X_density, align 2
  %conv90 = zext i16 %39 to i32
  %mul91 = mul nsw i32 %conv90, 100
  %conv92 = sext i32 %mul91 to i64
  %and93 = and i64 %conv92, 255
  %conv94 = trunc i64 %and93 to i8
  %arrayidx95 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 24
  store i8 %conv94, ptr %arrayidx95, align 1
  %40 = load ptr, ptr %cinfo.addr, align 8
  %X_density96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 52
  %41 = load i16, ptr %X_density96, align 2
  %conv97 = zext i16 %41 to i32
  %mul98 = mul nsw i32 %conv97, 100
  %conv99 = sext i32 %mul98 to i64
  %shr100 = ashr i64 %conv99, 8
  %and101 = and i64 %shr100, 255
  %conv102 = trunc i64 %and101 to i8
  %arrayidx103 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 25
  store i8 %conv102, ptr %arrayidx103, align 1
  %42 = load ptr, ptr %cinfo.addr, align 8
  %X_density104 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 52
  %43 = load i16, ptr %X_density104, align 2
  %conv105 = zext i16 %43 to i32
  %mul106 = mul nsw i32 %conv105, 100
  %conv107 = sext i32 %mul106 to i64
  %shr108 = ashr i64 %conv107, 16
  %and109 = and i64 %shr108, 255
  %conv110 = trunc i64 %and109 to i8
  %arrayidx111 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 26
  store i8 %conv110, ptr %arrayidx111, align 1
  %44 = load ptr, ptr %cinfo.addr, align 8
  %X_density112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 52
  %45 = load i16, ptr %X_density112, align 2
  %conv113 = zext i16 %45 to i32
  %mul114 = mul nsw i32 %conv113, 100
  %conv115 = sext i32 %mul114 to i64
  %shr116 = ashr i64 %conv115, 24
  %and117 = and i64 %shr116, 255
  %conv118 = trunc i64 %and117 to i8
  %arrayidx119 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 27
  store i8 %conv118, ptr %arrayidx119, align 1
  %46 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 53
  %47 = load i16, ptr %Y_density, align 4
  %conv120 = zext i16 %47 to i32
  %mul121 = mul nsw i32 %conv120, 100
  %conv122 = sext i32 %mul121 to i64
  %and123 = and i64 %conv122, 255
  %conv124 = trunc i64 %and123 to i8
  %arrayidx125 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 28
  store i8 %conv124, ptr %arrayidx125, align 1
  %48 = load ptr, ptr %cinfo.addr, align 8
  %Y_density126 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 53
  %49 = load i16, ptr %Y_density126, align 4
  %conv127 = zext i16 %49 to i32
  %mul128 = mul nsw i32 %conv127, 100
  %conv129 = sext i32 %mul128 to i64
  %shr130 = ashr i64 %conv129, 8
  %and131 = and i64 %shr130, 255
  %conv132 = trunc i64 %and131 to i8
  %arrayidx133 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 29
  store i8 %conv132, ptr %arrayidx133, align 1
  %50 = load ptr, ptr %cinfo.addr, align 8
  %Y_density134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 53
  %51 = load i16, ptr %Y_density134, align 4
  %conv135 = zext i16 %51 to i32
  %mul136 = mul nsw i32 %conv135, 100
  %conv137 = sext i32 %mul136 to i64
  %shr138 = ashr i64 %conv137, 16
  %and139 = and i64 %shr138, 255
  %conv140 = trunc i64 %and139 to i8
  %arrayidx141 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 30
  store i8 %conv140, ptr %arrayidx141, align 1
  %52 = load ptr, ptr %cinfo.addr, align 8
  %Y_density142 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 53
  %53 = load i16, ptr %Y_density142, align 4
  %conv143 = zext i16 %53 to i32
  %mul144 = mul nsw i32 %conv143, 100
  %conv145 = sext i32 %mul144 to i64
  %shr146 = ashr i64 %conv145, 24
  %and147 = and i64 %shr146, 255
  %conv148 = trunc i64 %and147 to i8
  %arrayidx149 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 31
  store i8 %conv148, ptr %arrayidx149, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.then89, %if.end3
  %54 = load i32, ptr %cmap_entries, align 4
  %and151 = and i32 %54, 255
  %conv152 = trunc i32 %and151 to i8
  %arrayidx153 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 32
  store i8 %conv152, ptr %arrayidx153, align 1
  %55 = load i32, ptr %cmap_entries, align 4
  %shr154 = ashr i32 %55, 8
  %and155 = and i32 %shr154, 255
  %conv156 = trunc i32 %and155 to i8
  %arrayidx157 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 33
  store i8 %conv156, ptr %arrayidx157, align 1
  %arraydecay158 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  %56 = load ptr, ptr %dest.addr, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %56, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %57 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %arraydecay158, i64 noundef 1, i64 noundef 14, ptr noundef %57)
  %cmp159 = icmp ne i64 %call, 14
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %if.end150
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  %err162 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err162, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %error_exit, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  call void %62(ptr noundef %63)
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end150
  %arraydecay164 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 0
  %64 = load ptr, ptr %dest.addr, align 8
  %pub165 = getelementptr inbounds %struct.bmp_dest_struct, ptr %64, i32 0, i32 0
  %output_file166 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub165, i32 0, i32 3
  %65 = load ptr, ptr %output_file166, align 8
  %call167 = call i64 @"\01_fwrite"(ptr noundef %arraydecay164, i64 noundef 1, i64 noundef 40, ptr noundef %65)
  %cmp168 = icmp ne i64 %call167, 40
  br i1 %cmp168, label %if.then170, label %if.end175

if.then170:                                       ; preds = %if.end163
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err171 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err171, align 8
  %msg_code172 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 5
  store i32 36, ptr %msg_code172, align 8
  %68 = load ptr, ptr %cinfo.addr, align 8
  %err173 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err173, align 8
  %error_exit174 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %error_exit174, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  call void %70(ptr noundef %71)
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %if.end163
  %72 = load i32, ptr %cmap_entries, align 4
  %cmp176 = icmp sgt i32 %72, 0
  br i1 %cmp176, label %if.then178, label %if.end179

if.then178:                                       ; preds = %if.end175
  %73 = load ptr, ptr %cinfo.addr, align 8
  %74 = load ptr, ptr %dest.addr, align 8
  %75 = load i32, ptr %cmap_entries, align 4
  call void @write_colormap(ptr noundef %73, ptr noundef %74, i32 noundef %75, i32 noundef 4)
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %if.end175
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @write_colormap(ptr noundef %cinfo, ptr noundef %dest, i32 noundef %map_colors, i32 noundef %map_entry_size) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %map_colors.addr = alloca i32, align 4
  %map_entry_size.addr = alloca i32, align 4
  %colormap = alloca ptr, align 8
  %num_colors = alloca i32, align 4
  %outfile = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store i32 %map_colors, ptr %map_colors.addr, align 4
  store i32 %map_entry_size, ptr %map_entry_size.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %colormap1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 32
  %1 = load ptr, ptr %colormap1, align 8
  store ptr %1, ptr %colormap, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 31
  %3 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %3, ptr %num_colors, align 4
  %4 = load ptr, ptr %dest.addr, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, ptr %4, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %5 = load ptr, ptr %output_file, align 8
  store ptr %5, ptr %outfile, align 8
  %6 = load ptr, ptr %colormap, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then, label %if.else48

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 28
  %8 = load i32, ptr %out_color_components, align 8
  %cmp2 = icmp eq i32 %8, 3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %num_colors, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 2
  %12 = load ptr, ptr %arrayidx, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %14 to i32
  %15 = load ptr, ptr %outfile, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %15)
  %16 = load ptr, ptr %colormap, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx6, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %17, i64 %idxprom7
  %19 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  %20 = load ptr, ptr %outfile, align 8
  %call10 = call i32 @putc(i32 noundef %conv9, ptr noundef %20)
  %21 = load ptr, ptr %colormap, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx11, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %22, i64 %idxprom12
  %24 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %24 to i32
  %25 = load ptr, ptr %outfile, align 8
  %call15 = call i32 @putc(i32 noundef %conv14, ptr noundef %25)
  %26 = load i32, ptr %map_entry_size.addr, align 4
  %cmp16 = icmp eq i32 %26, 4
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %for.body
  %27 = load ptr, ptr %outfile, align 8
  %call19 = call i32 @putc(i32 noundef 0, ptr noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %if.end47

if.else:                                          ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc44, %if.else
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %num_colors, align 4
  %cmp21 = icmp slt i32 %29, %30
  br i1 %cmp21, label %for.body23, label %for.end46

for.body23:                                       ; preds = %for.cond20
  %31 = load ptr, ptr %colormap, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %31, i64 0
  %32 = load ptr, ptr %arrayidx24, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %32, i64 %idxprom25
  %34 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %34 to i32
  %35 = load ptr, ptr %outfile, align 8
  %call28 = call i32 @putc(i32 noundef %conv27, ptr noundef %35)
  %36 = load ptr, ptr %colormap, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %36, i64 0
  %37 = load ptr, ptr %arrayidx29, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %38 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %37, i64 %idxprom30
  %39 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %39 to i32
  %40 = load ptr, ptr %outfile, align 8
  %call33 = call i32 @putc(i32 noundef %conv32, ptr noundef %40)
  %41 = load ptr, ptr %colormap, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %41, i64 0
  %42 = load ptr, ptr %arrayidx34, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %42, i64 %idxprom35
  %44 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %44 to i32
  %45 = load ptr, ptr %outfile, align 8
  %call38 = call i32 @putc(i32 noundef %conv37, ptr noundef %45)
  %46 = load i32, ptr %map_entry_size.addr, align 4
  %cmp39 = icmp eq i32 %46, 4
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body23
  %47 = load ptr, ptr %outfile, align 8
  %call42 = call i32 @putc(i32 noundef 0, ptr noundef %47)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %for.body23
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %48 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %48, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond20, !llvm.loop !15

for.end46:                                        ; preds = %for.cond20
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %for.end
  br label %if.end64

if.else48:                                        ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc61, %if.else48
  %49 = load i32, ptr %i, align 4
  %cmp50 = icmp slt i32 %49, 256
  br i1 %cmp50, label %for.body52, label %for.end63

for.body52:                                       ; preds = %for.cond49
  %50 = load i32, ptr %i, align 4
  %51 = load ptr, ptr %outfile, align 8
  %call53 = call i32 @putc(i32 noundef %50, ptr noundef %51)
  %52 = load i32, ptr %i, align 4
  %53 = load ptr, ptr %outfile, align 8
  %call54 = call i32 @putc(i32 noundef %52, ptr noundef %53)
  %54 = load i32, ptr %i, align 4
  %55 = load ptr, ptr %outfile, align 8
  %call55 = call i32 @putc(i32 noundef %54, ptr noundef %55)
  %56 = load i32, ptr %map_entry_size.addr, align 4
  %cmp56 = icmp eq i32 %56, 4
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %for.body52
  %57 = load ptr, ptr %outfile, align 8
  %call59 = call i32 @putc(i32 noundef 0, ptr noundef %57)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %for.body52
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %58 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %58, 1
  store i32 %inc62, ptr %i, align 4
  br label %for.cond49, !llvm.loop !16

for.end63:                                        ; preds = %for.cond49
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %if.end47
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %map_colors.addr, align 4
  %cmp65 = icmp sgt i32 %59, %60
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end64
  %61 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i32 0, i32 5
  store i32 1039, ptr %msg_code, align 8
  %63 = load i32, ptr %i, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err68, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 6
  %arrayidx69 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %63, ptr %arrayidx69, align 4
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err70, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %error_exit, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  call void %68(ptr noundef %69)
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end64
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc84, %if.end71
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %map_colors.addr, align 4
  %cmp73 = icmp slt i32 %70, %71
  br i1 %cmp73, label %for.body75, label %for.end86

for.body75:                                       ; preds = %for.cond72
  %72 = load ptr, ptr %outfile, align 8
  %call76 = call i32 @putc(i32 noundef 0, ptr noundef %72)
  %73 = load ptr, ptr %outfile, align 8
  %call77 = call i32 @putc(i32 noundef 0, ptr noundef %73)
  %74 = load ptr, ptr %outfile, align 8
  %call78 = call i32 @putc(i32 noundef 0, ptr noundef %74)
  %75 = load i32, ptr %map_entry_size.addr, align 4
  %cmp79 = icmp eq i32 %75, 4
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %for.body75
  %76 = load ptr, ptr %outfile, align 8
  %call82 = call i32 @putc(i32 noundef 0, ptr noundef %76)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %for.body75
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %77 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %77, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond72, !llvm.loop !17

for.end86:                                        ; preds = %for.cond72
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }

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
