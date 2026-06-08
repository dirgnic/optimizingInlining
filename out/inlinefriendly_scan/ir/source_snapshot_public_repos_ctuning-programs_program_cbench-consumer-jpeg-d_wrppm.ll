; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrppm.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrppm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.ppm_dest_struct = type { %struct.djpeg_dest_struct, ptr, ptr, i64, i32 }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"P5\0A%ld %ld\0A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P6\0A%ld %ld\0A%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jinit_write_ppm(ptr noundef %cinfo) #0 {
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
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 80)
  store ptr %call, ptr %dest, align 8
  %4 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, ptr %4, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 0
  store ptr @start_output_ppm, ptr %start_output, align 8
  %5 = load ptr, ptr %dest, align 8
  %pub1 = getelementptr inbounds %struct.ppm_dest_struct, ptr %5, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 2
  store ptr @finish_output_ppm, ptr %finish_output, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %6)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 26
  %8 = load i32, ptr %output_width, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 28
  %10 = load i32, ptr %out_color_components, align 8
  %mul = mul i32 %8, %10
  %11 = load ptr, ptr %dest, align 8
  %samples_per_row = getelementptr inbounds %struct.ppm_dest_struct, ptr %11, i32 0, i32 4
  store i32 %mul, ptr %samples_per_row, align 8
  %12 = load ptr, ptr %dest, align 8
  %samples_per_row2 = getelementptr inbounds %struct.ppm_dest_struct, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %samples_per_row2, align 8
  %conv = zext i32 %13 to i64
  %mul3 = mul i64 %conv, 1
  %14 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, ptr %14, i32 0, i32 3
  store i64 %mul3, ptr %buffer_width, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %mem4, align 8
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %alloc_small5, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %dest, align 8
  %buffer_width6 = getelementptr inbounds %struct.ppm_dest_struct, ptr %19, i32 0, i32 3
  %20 = load i64, ptr %buffer_width6, align 8
  %call7 = call ptr %17(ptr noundef %18, i32 noundef 1, i64 noundef %20)
  %21 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, ptr %21, i32 0, i32 1
  store ptr %call7, ptr %iobuffer, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 19
  %23 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.else26

if.then:                                          ; preds = %entry
  %24 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %mem8, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %alloc_sarray, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %output_width9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 26
  %29 = load i32, ptr %output_width9, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 29
  %31 = load i32, ptr %output_components, align 4
  %mul10 = mul i32 %29, %31
  %call11 = call ptr %26(ptr noundef %27, i32 noundef 1, i32 noundef %mul10, i32 noundef 1)
  %32 = load ptr, ptr %dest, align 8
  %pub12 = getelementptr inbounds %struct.ppm_dest_struct, ptr %32, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub12, i32 0, i32 4
  store ptr %call11, ptr %buffer, align 8
  %33 = load ptr, ptr %dest, align 8
  %pub13 = getelementptr inbounds %struct.ppm_dest_struct, ptr %33, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub13, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 19
  %35 = load i32, ptr %quantize_colors14, align 4
  %tobool15 = icmp ne i32 %35, 0
  br i1 %tobool15, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then
  %36 = load ptr, ptr %dest, align 8
  %pub17 = getelementptr inbounds %struct.ppm_dest_struct, ptr %36, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub17, i32 0, i32 1
  store ptr @copy_pixel_rows, ptr %put_pixel_rows, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then
  %37 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 10
  %38 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %38, 1
  br i1 %cmp, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else
  %39 = load ptr, ptr %dest, align 8
  %pub20 = getelementptr inbounds %struct.ppm_dest_struct, ptr %39, i32 0, i32 0
  %put_pixel_rows21 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub20, i32 0, i32 1
  store ptr @put_demapped_gray, ptr %put_pixel_rows21, align 8
  br label %if.end

if.else22:                                        ; preds = %if.else
  %40 = load ptr, ptr %dest, align 8
  %pub23 = getelementptr inbounds %struct.ppm_dest_struct, ptr %40, i32 0, i32 0
  %put_pixel_rows24 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub23, i32 0, i32 1
  store ptr @put_demapped_rgb, ptr %put_pixel_rows24, align 8
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then16
  br label %if.end35

if.else26:                                        ; preds = %entry
  %41 = load ptr, ptr %dest, align 8
  %iobuffer27 = getelementptr inbounds %struct.ppm_dest_struct, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %iobuffer27, align 8
  %43 = load ptr, ptr %dest, align 8
  %pixrow = getelementptr inbounds %struct.ppm_dest_struct, ptr %43, i32 0, i32 2
  store ptr %42, ptr %pixrow, align 8
  %44 = load ptr, ptr %dest, align 8
  %pixrow28 = getelementptr inbounds %struct.ppm_dest_struct, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %dest, align 8
  %pub29 = getelementptr inbounds %struct.ppm_dest_struct, ptr %45, i32 0, i32 0
  %buffer30 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub29, i32 0, i32 4
  store ptr %pixrow28, ptr %buffer30, align 8
  %46 = load ptr, ptr %dest, align 8
  %pub31 = getelementptr inbounds %struct.ppm_dest_struct, ptr %46, i32 0, i32 0
  %buffer_height32 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub31, i32 0, i32 5
  store i32 1, ptr %buffer_height32, align 8
  %47 = load ptr, ptr %dest, align 8
  %pub33 = getelementptr inbounds %struct.ppm_dest_struct, ptr %47, i32 0, i32 0
  %put_pixel_rows34 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub33, i32 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else26, %if.end25
  %48 = load ptr, ptr %dest, align 8
  ret ptr %48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_output_ppm(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %out_color_space, align 8
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, ptr %3, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %4 = load ptr, ptr %output_file, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 26
  %6 = load i32, ptr %output_width, align 8
  %conv = zext i32 %6 to i64
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %output_height, align 4
  %conv1 = zext i32 %8 to i64
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, i64 noundef %conv, i64 noundef %conv1, i32 noundef 255)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %9 = load ptr, ptr %dest, align 8
  %pub3 = getelementptr inbounds %struct.ppm_dest_struct, ptr %9, i32 0, i32 0
  %output_file4 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub3, i32 0, i32 3
  %10 = load ptr, ptr %output_file4, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_width5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 26
  %12 = load i32, ptr %output_width5, align 8
  %conv6 = zext i32 %12 to i64
  %13 = load ptr, ptr %cinfo.addr, align 8
  %output_height7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 27
  %14 = load i32, ptr %output_height7, align 4
  %conv8 = zext i32 %14 to i64
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1, i64 noundef %conv6, i64 noundef %conv8, i32 noundef 255)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 1025, ptr %msg_code, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err10, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @finish_output_ppm(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %output_file, align 8
  %call = call i32 @fflush(ptr noundef %1)
  %2 = load ptr, ptr %dinfo.addr, align 8
  %output_file1 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %output_file1, align 8
  %call2 = call i32 @ferror(ptr noundef %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %error_exit, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copy_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %ptr, align 8
  %4 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %iobuffer, align 8
  store ptr %5, ptr %bufferptr, align 8
  %6 = load ptr, ptr %dest, align 8
  %samples_per_row = getelementptr inbounds %struct.ppm_dest_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %samples_per_row, align 8
  store i32 %7, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %10 = load i8, ptr %9, align 1
  %conv = zext i8 %10 to i32
  %conv1 = trunc i32 %conv to i8
  %11 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr2, ptr %bufferptr, align 8
  store i8 %conv1, ptr %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %col, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %dest, align 8
  %iobuffer3 = getelementptr inbounds %struct.ppm_dest_struct, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %iobuffer3, align 8
  %15 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %buffer_width, align 8
  %17 = load ptr, ptr %dest, align 8
  %pub4 = getelementptr inbounds %struct.ppm_dest_struct, ptr %17, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub4, i32 0, i32 3
  %18 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %14, i64 noundef 1, i64 noundef %16, ptr noundef %18)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put_demapped_gray(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %color_map = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 32
  %2 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %color_map, align 8
  %4 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, ptr %4, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %5 = load ptr, ptr %buffer, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx1, align 8
  store ptr %6, ptr %ptr, align 8
  %7 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %iobuffer, align 8
  store ptr %8, ptr %bufferptr, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 26
  %10 = load i32, ptr %output_width, align 8
  store i32 %10, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %color_map, align 8
  %13 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %14 = load i8, ptr %13, align 1
  %conv = zext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %15 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %15 to i32
  %conv4 = trunc i32 %conv3 to i8
  %16 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr5, ptr %bufferptr, align 8
  store i8 %conv4, ptr %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %col, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %dest, align 8
  %iobuffer6 = getelementptr inbounds %struct.ppm_dest_struct, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %iobuffer6, align 8
  %20 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, ptr %20, i32 0, i32 3
  %21 = load i64, ptr %buffer_width, align 8
  %22 = load ptr, ptr %dest, align 8
  %pub7 = getelementptr inbounds %struct.ppm_dest_struct, ptr %22, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub7, i32 0, i32 3
  %23 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %19, i64 noundef 1, i64 noundef %21, ptr noundef %23)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put_demapped_rgb(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %pixval = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %color_map0 = alloca ptr, align 8
  %color_map1 = alloca ptr, align 8
  %color_map2 = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 32
  %2 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %color_map0, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %colormap1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 32
  %5 = load ptr, ptr %colormap1, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx2, align 8
  store ptr %6, ptr %color_map1, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %colormap3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 32
  %8 = load ptr, ptr %colormap3, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 2
  %9 = load ptr, ptr %arrayidx4, align 8
  store ptr %9, ptr %color_map2, align 8
  %10 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, ptr %10, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %11 = load ptr, ptr %buffer, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx5, align 8
  store ptr %12, ptr %ptr, align 8
  %13 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %iobuffer, align 8
  store ptr %14, ptr %bufferptr, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 26
  %16 = load i32, ptr %output_width, align 8
  store i32 %16, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %17, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %19 = load i8, ptr %18, align 1
  %conv = zext i8 %19 to i32
  store i32 %conv, ptr %pixval, align 4
  %20 = load ptr, ptr %color_map0, align 8
  %21 = load i32, ptr %pixval, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %20, i64 %idxprom
  %22 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %22 to i32
  %conv8 = trunc i32 %conv7 to i8
  %23 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr9, ptr %bufferptr, align 8
  store i8 %conv8, ptr %23, align 1
  %24 = load ptr, ptr %color_map1, align 8
  %25 = load i32, ptr %pixval, align 4
  %idxprom10 = sext i32 %25 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %24, i64 %idxprom10
  %26 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %26 to i32
  %conv13 = trunc i32 %conv12 to i8
  %27 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr14, ptr %bufferptr, align 8
  store i8 %conv13, ptr %27, align 1
  %28 = load ptr, ptr %color_map2, align 8
  %29 = load i32, ptr %pixval, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %28, i64 %idxprom15
  %30 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %30 to i32
  %conv18 = trunc i32 %conv17 to i8
  %31 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr19, ptr %bufferptr, align 8
  store i8 %conv18, ptr %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %col, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %dest, align 8
  %iobuffer20 = getelementptr inbounds %struct.ppm_dest_struct, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %iobuffer20, align 8
  %35 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, ptr %35, i32 0, i32 3
  %36 = load i64, ptr %buffer_width, align 8
  %37 = load ptr, ptr %dest, align 8
  %pub21 = getelementptr inbounds %struct.ppm_dest_struct, ptr %37, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub21, i32 0, i32 3
  %38 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %34, i64 noundef 1, i64 noundef %36, ptr noundef %38)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %iobuffer, align 8
  %3 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %buffer_width, align 8
  %5 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, ptr %5, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 3
  %6 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %2, i64 noundef 1, i64 noundef %4, ptr noundef %6)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

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
