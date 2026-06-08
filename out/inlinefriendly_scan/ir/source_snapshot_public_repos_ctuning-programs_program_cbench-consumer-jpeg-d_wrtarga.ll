; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrtarga.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrtarga.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.tga_dest_struct = type { %struct.djpeg_dest_struct, ptr, i32 }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jinit_write_targa(ptr noundef %cinfo) #0 {
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
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 64)
  store ptr %call, ptr %dest, align 8
  %4 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, ptr %4, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 0
  store ptr @start_output_tga, ptr %start_output, align 8
  %5 = load ptr, ptr %dest, align 8
  %pub1 = getelementptr inbounds %struct.tga_dest_struct, ptr %5, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub1, i32 0, i32 2
  store ptr @finish_output_tga, ptr %finish_output, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %6)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 26
  %8 = load i32, ptr %output_width, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 29
  %10 = load i32, ptr %output_components, align 4
  %mul = mul i32 %8, %10
  %11 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %11, i32 0, i32 2
  store i32 %mul, ptr %buffer_width, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %alloc_small3, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %dest, align 8
  %buffer_width4 = getelementptr inbounds %struct.tga_dest_struct, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %buffer_width4, align 8
  %conv = zext i32 %17 to i64
  %mul5 = mul i64 %conv, 1
  %call6 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef %mul5)
  %18 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %18, i32 0, i32 1
  store ptr %call6, ptr %iobuffer, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %mem7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %mem7, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %alloc_sarray, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %dest, align 8
  %buffer_width8 = getelementptr inbounds %struct.tga_dest_struct, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %buffer_width8, align 8
  %call9 = call ptr %21(ptr noundef %22, i32 noundef 1, i32 noundef %24, i32 noundef 1)
  %25 = load ptr, ptr %dest, align 8
  %pub10 = getelementptr inbounds %struct.tga_dest_struct, ptr %25, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub10, i32 0, i32 4
  store ptr %call9, ptr %buffer, align 8
  %26 = load ptr, ptr %dest, align 8
  %pub11 = getelementptr inbounds %struct.tga_dest_struct, ptr %26, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub11, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %27 = load ptr, ptr %dest, align 8
  ret ptr %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_output_tga(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %num_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %outfile = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %dinfo.addr, align 8
  call void @write_header(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %5 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 19
  %6 = load i32, ptr %quantize_colors, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, ptr %7, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 1
  store ptr @put_demapped_gray, ptr %put_pixel_rows, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %dest, align 8
  %pub2 = getelementptr inbounds %struct.tga_dest_struct, ptr %8, i32 0, i32 0
  %put_pixel_rows3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub2, i32 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end44

if.else4:                                         ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 10
  %10 = load i32, ptr %out_color_space5, align 8
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then7, label %if.else38

if.then7:                                         ; preds = %if.else4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 19
  %12 = load i32, ptr %quantize_colors8, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then10, label %if.else34

if.then10:                                        ; preds = %if.then7
  %13 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 31
  %14 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %14, ptr %num_colors, align 4
  %15 = load i32, ptr %num_colors, align 4
  %cmp11 = icmp sgt i32 %15, 256
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then10
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 1039, ptr %msg_code, align 8
  %18 = load i32, ptr %num_colors, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err13, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %18, ptr %arrayidx, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err14, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then10
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %dinfo.addr, align 8
  %27 = load i32, ptr %num_colors, align 4
  call void @write_header(ptr noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = load ptr, ptr %dest, align 8
  %pub16 = getelementptr inbounds %struct.tga_dest_struct, ptr %28, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub16, i32 0, i32 3
  %29 = load ptr, ptr %output_file, align 8
  store ptr %29, ptr %outfile, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %num_colors, align 4
  %cmp17 = icmp slt i32 %30, %31
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 32
  %33 = load ptr, ptr %colormap, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %33, i64 2
  %34 = load ptr, ptr %arrayidx18, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %34, i64 %idxprom
  %36 = load i8, ptr %arrayidx19, align 1
  %conv = zext i8 %36 to i32
  %37 = load ptr, ptr %outfile, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %37)
  %38 = load ptr, ptr %cinfo.addr, align 8
  %colormap20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 32
  %39 = load ptr, ptr %colormap20, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %39, i64 1
  %40 = load ptr, ptr %arrayidx21, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %41 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %40, i64 %idxprom22
  %42 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %42 to i32
  %43 = load ptr, ptr %outfile, align 8
  %call25 = call i32 @putc(i32 noundef %conv24, ptr noundef %43)
  %44 = load ptr, ptr %cinfo.addr, align 8
  %colormap26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 32
  %45 = load ptr, ptr %colormap26, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %45, i64 0
  %46 = load ptr, ptr %arrayidx27, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %47 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %46, i64 %idxprom28
  %48 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %48 to i32
  %49 = load ptr, ptr %outfile, align 8
  %call31 = call i32 @putc(i32 noundef %conv30, ptr noundef %49)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, ptr %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %51 = load ptr, ptr %dest, align 8
  %pub32 = getelementptr inbounds %struct.tga_dest_struct, ptr %51, i32 0, i32 0
  %put_pixel_rows33 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub32, i32 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows33, align 8
  br label %if.end37

if.else34:                                        ; preds = %if.then7
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %dinfo.addr, align 8
  call void @write_header(ptr noundef %52, ptr noundef %53, i32 noundef 0)
  %54 = load ptr, ptr %dest, align 8
  %pub35 = getelementptr inbounds %struct.tga_dest_struct, ptr %54, i32 0, i32 0
  %put_pixel_rows36 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub35, i32 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %for.end
  br label %if.end43

if.else38:                                        ; preds = %if.else4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err39, align 8
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i32 0, i32 5
  store i32 1034, ptr %msg_code40, align 8
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err41, align 8
  %error_exit42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %error_exit42, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  call void %59(ptr noundef %60)
  br label %if.end43

if.end43:                                         ; preds = %if.else38, %if.end37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @finish_output_tga(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
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
define internal void @write_header(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %num_colors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %num_colors.addr = alloca i32, align 4
  %targaheader = alloca [18 x i8], align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %num_colors, ptr %num_colors.addr, align 4
  %arraydecay = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 18, i1 false)
  %0 = load i32, ptr %num_colors.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 1
  store i8 1, ptr %arrayidx, align 1
  %1 = load i32, ptr %num_colors.addr, align 4
  %and = and i32 %1, 255
  %conv = trunc i32 %and to i8
  %arrayidx1 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 5
  store i8 %conv, ptr %arrayidx1, align 1
  %2 = load i32, ptr %num_colors.addr, align 4
  %shr = ashr i32 %2, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 6
  store i8 %conv2, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 7
  store i8 24, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 26
  %4 = load i32, ptr %output_width, align 8
  %and5 = and i32 %4, 255
  %conv6 = trunc i32 %and5 to i8
  %arrayidx7 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 12
  store i8 %conv6, ptr %arrayidx7, align 1
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_width8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 26
  %6 = load i32, ptr %output_width8, align 8
  %shr9 = lshr i32 %6, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 13
  store i8 %conv10, ptr %arrayidx11, align 1
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %output_height, align 4
  %and12 = and i32 %8, 255
  %conv13 = trunc i32 %and12 to i8
  %arrayidx14 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 14
  store i8 %conv13, ptr %arrayidx14, align 1
  %9 = load ptr, ptr %cinfo.addr, align 8
  %output_height15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 27
  %10 = load i32, ptr %output_height15, align 4
  %shr16 = lshr i32 %10, 8
  %conv17 = trunc i32 %shr16 to i8
  %arrayidx18 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 15
  store i8 %conv17, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 17
  store i8 32, ptr %arrayidx19, align 1
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %out_color_space, align 8
  %cmp20 = icmp eq i32 %12, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %arrayidx23 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  store i8 3, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 8, ptr %arrayidx24, align 1
  br label %if.end34

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %num_colors.addr, align 4
  %cmp25 = icmp sgt i32 %13, 0
  br i1 %cmp25, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.else
  %arrayidx28 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  store i8 1, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 8, ptr %arrayidx29, align 1
  br label %if.end33

if.else30:                                        ; preds = %if.else
  %arrayidx31 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  store i8 2, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 24, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then22
  %arraydecay35 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 0
  %14 = load ptr, ptr %dinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %arraydecay35, i64 noundef 1, i64 noundef 18, ptr noundef %15)
  %cmp36 = icmp ne i64 %call, 18
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end34
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err39, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %error_exit, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void %20(ptr noundef %21)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put_demapped_gray(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %color_map0 = alloca ptr, align 8
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
  %4 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, ptr %4, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %5 = load ptr, ptr %buffer, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx1, align 8
  store ptr %6, ptr %inptr, align 8
  %7 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %iobuffer, align 8
  store ptr %8, ptr %outptr, align 8
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
  %12 = load ptr, ptr %color_map0, align 8
  %13 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %14 = load i8, ptr %13, align 1
  %conv = zext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %15 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %15 to i32
  %conv4 = trunc i32 %conv3 to i8
  %16 = load ptr, ptr %outptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr5, ptr %outptr, align 8
  store i8 %conv4, ptr %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %col, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %dest, align 8
  %iobuffer6 = getelementptr inbounds %struct.tga_dest_struct, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %iobuffer6, align 8
  %20 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %buffer_width, align 8
  %conv7 = zext i32 %21 to i64
  %22 = load ptr, ptr %dest, align 8
  %pub8 = getelementptr inbounds %struct.tga_dest_struct, ptr %22, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub8, i32 0, i32 3
  %23 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %19, i64 noundef 1, i64 noundef %conv7, ptr noundef %23)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put_gray_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %inptr, align 8
  %4 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %iobuffer, align 8
  store ptr %5, ptr %outptr, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 26
  %7 = load i32, ptr %output_width, align 8
  store i32 %7, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %10 = load i8, ptr %9, align 1
  %conv = zext i8 %10 to i32
  %conv1 = trunc i32 %conv to i8
  %11 = load ptr, ptr %outptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr2, ptr %outptr, align 8
  store i8 %conv1, ptr %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %col, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %dest, align 8
  %iobuffer3 = getelementptr inbounds %struct.tga_dest_struct, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %iobuffer3, align 8
  %15 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %buffer_width, align 8
  %conv4 = zext i32 %16 to i64
  %17 = load ptr, ptr %dest, align 8
  %pub5 = getelementptr inbounds %struct.tga_dest_struct, ptr %17, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub5, i32 0, i32 3
  %18 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %14, i64 noundef 1, i64 noundef %conv4, ptr noundef %18)
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %rows_supplied, ptr %rows_supplied.addr, align 4
  %0 = load ptr, ptr %dinfo.addr, align 8
  store ptr %0, ptr %dest, align 8
  %1 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %inptr, align 8
  %4 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %iobuffer, align 8
  store ptr %5, ptr %outptr, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 26
  %7 = load i32, ptr %output_width, align 8
  store i32 %7, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %inptr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %9, i64 2
  %10 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %10 to i32
  %conv2 = trunc i32 %conv to i8
  %11 = load ptr, ptr %outptr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 %conv2, ptr %arrayidx3, align 1
  %12 = load ptr, ptr %inptr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %conv6 = trunc i32 %conv5 to i8
  %14 = load ptr, ptr %outptr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %conv6, ptr %arrayidx7, align 1
  %15 = load ptr, ptr %inptr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  %conv10 = trunc i32 %conv9 to i8
  %17 = load ptr, ptr %outptr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %conv10, ptr %arrayidx11, align 1
  %18 = load ptr, ptr %inptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 3
  store ptr %add.ptr, ptr %inptr, align 8
  %19 = load ptr, ptr %outptr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %19, i64 3
  store ptr %add.ptr12, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %col, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %dest, align 8
  %iobuffer13 = getelementptr inbounds %struct.tga_dest_struct, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %iobuffer13, align 8
  %23 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %buffer_width, align 8
  %conv14 = zext i32 %24 to i64
  %25 = load ptr, ptr %dest, align 8
  %pub15 = getelementptr inbounds %struct.tga_dest_struct, ptr %25, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %pub15, i32 0, i32 3
  %26 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %22, i64 noundef 1, i64 noundef %conv14, ptr noundef %26)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
