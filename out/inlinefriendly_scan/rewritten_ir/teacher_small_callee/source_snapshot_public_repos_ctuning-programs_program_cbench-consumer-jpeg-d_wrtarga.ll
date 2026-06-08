; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_wrtarga.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrtarga.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tga_dest_struct = type { %struct.djpeg_dest_struct, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_write_targa(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 64) #3
  store ptr %call, ptr %dest, align 8
  store ptr @start_output_tga, ptr %call, align 8
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %call, i64 0, i32 2
  store ptr @finish_output_tga, ptr %finish_output, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %2) #3
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 29
  %4 = load i32, ptr %output_components, align 4
  %mul = mul i32 %3, %4
  %5 = load ptr, ptr %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %5, i64 0, i32 2
  store i32 %mul, ptr %buffer_width, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %mem2, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %dest, align 8
  %buffer_width4 = getelementptr inbounds %struct.tga_dest_struct, ptr %9, i64 0, i32 2
  %10 = load i32, ptr %buffer_width4, align 8
  %conv = zext i32 %10 to i64
  %call6 = call ptr %8(ptr noundef %6, i32 noundef 1, i64 noundef %conv) #3
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %9, i64 0, i32 1
  store ptr %call6, ptr %iobuffer, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %mem7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %mem7, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %alloc_sarray, align 8
  %14 = load ptr, ptr %dest, align 8
  %buffer_width8 = getelementptr inbounds %struct.tga_dest_struct, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %buffer_width8, align 8
  %call9 = call ptr %13(ptr noundef %11, i32 noundef 1, i32 noundef %15, i32 noundef 1) #3
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %14, i64 0, i32 4
  store ptr %call9, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %14, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %16 = load ptr, ptr %dest, align 8
  ret ptr %16
}

; Function Attrs: nounwind ssp uwtable
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
  store ptr %dinfo, ptr %dest, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 10
  %0 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %dinfo.addr, align 8
  call void @write_header(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 19
  %3 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %dest, align 8
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %4, i64 0, i32 1
  store ptr @put_demapped_gray, ptr %put_pixel_rows, align 8
  br label %if.end44

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %dest, align 8
  %put_pixel_rows3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows3, align 8
  br label %if.end44

if.else4:                                         ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 10
  %7 = load i32, ptr %out_color_space5, align 8
  %cmp6 = icmp eq i32 %7, 2
  br i1 %cmp6, label %if.then7, label %if.else38

if.then7:                                         ; preds = %if.else4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 19
  %9 = load i32, ptr %quantize_colors8, align 4
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.else34, label %if.then10

if.then10:                                        ; preds = %if.then7
  %10 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 31
  %11 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %11, ptr %num_colors, align 4
  %cmp11 = icmp sgt i32 %11, 256
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then10
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 1039, ptr %msg_code, align 8
  %14 = load i32, ptr %num_colors, align 4
  %15 = load ptr, ptr %12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 %14, ptr %msg_parm, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull %16) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then10
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %dinfo.addr, align 8
  %21 = load i32, ptr %num_colors, align 4
  call void @write_header(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %dest, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %22, i64 0, i32 3
  %23 = load ptr, ptr %output_file, align 8
  store ptr %23, ptr %outfile, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end15
  %storemerge = phi i32 [ 0, %if.end15 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %24 = load i32, ptr %num_colors, align 4
  %cmp17 = icmp slt i32 %storemerge, %24
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 32
  %26 = load ptr, ptr %colormap, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %26, i64 2
  %27 = load ptr, ptr %arrayidx18, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %27, i64 %idxprom
  %29 = load i8, ptr %arrayidx19, align 1
  %conv = zext i8 %29 to i32
  %30 = load ptr, ptr %outfile, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %30) #3
  %31 = load ptr, ptr %cinfo.addr, align 8
  %colormap20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 32
  %32 = load ptr, ptr %colormap20, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %32, i64 1
  %33 = load ptr, ptr %arrayidx21, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %33, i64 %idxprom22
  %35 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %35 to i32
  %36 = load ptr, ptr %outfile, align 8
  %call25 = call i32 @putc(i32 noundef %conv24, ptr noundef %36) #3
  %37 = load ptr, ptr %cinfo.addr, align 8
  %colormap26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 32
  %38 = load ptr, ptr %colormap26, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %39, i64 %idxprom28
  %41 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %41 to i32
  %42 = load ptr, ptr %outfile, align 8
  %call31 = call i32 @putc(i32 noundef %conv30, ptr noundef %42) #3
  %43 = load i32, ptr %i, align 4
  %inc = add nsw i32 %43, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %44 = load ptr, ptr %dest, align 8
  %put_pixel_rows33 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %44, i64 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows33, align 8
  br label %if.end44

if.else34:                                        ; preds = %if.then7
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %dinfo.addr, align 8
  call void @write_header(ptr noundef %45, ptr noundef %46, i32 noundef 0)
  %47 = load ptr, ptr %dest, align 8
  %put_pixel_rows36 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %47, i64 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows36, align 8
  br label %if.end44

if.else38:                                        ; preds = %if.else4
  %48 = load ptr, ptr %cinfo.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 1034, ptr %msg_code40, align 8
  %50 = load ptr, ptr %48, align 8
  %51 = load ptr, ptr %50, align 8
  call void %51(ptr noundef nonnull %48) #3
  br label %if.end44

if.end44:                                         ; preds = %if.else38, %if.else34, %for.end, %if.then1, %if.else
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_tga(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %0 = load ptr, ptr %output_file, align 8
  %call = call i32 @fflush(ptr noundef %0) #3
  %output_file1 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %1 = load ptr, ptr %output_file1, align 8
  %call2 = call i32 @ferror(ptr noundef %1) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 8
  call void %5(ptr noundef nonnull %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @write_header(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %num_colors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  %num_colors.addr = alloca i32, align 4
  %targaheader = alloca [18 x i8], align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %num_colors, ptr %num_colors.addr, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %targaheader, i8 0, i64 18, i1 false)
  %cmp = icmp sgt i32 %num_colors, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 1
  store i8 1, ptr %arrayidx, align 1
  %0 = load i32, ptr %num_colors.addr, align 4
  %conv = trunc i32 %0 to i8
  %arrayidx1 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 5
  store i8 %conv, ptr %arrayidx1, align 1
  %1 = lshr i32 %0, 8
  %conv2 = trunc i32 %1 to i8
  %arrayidx3 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 6
  store i8 %conv2, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 7
  store i8 24, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  %conv6 = trunc i32 %3 to i8
  %arrayidx7 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 12
  store i8 %conv6, ptr %arrayidx7, align 1
  %shr9 = lshr i32 %3, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 13
  store i8 %conv10, ptr %arrayidx11, align 1
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 27
  %5 = load i32, ptr %output_height, align 4
  %conv13 = trunc i32 %5 to i8
  %arrayidx14 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 14
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr16 = lshr i32 %5, 8
  %conv17 = trunc i32 %shr16 to i8
  %arrayidx18 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 15
  store i8 %conv17, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 17
  store i8 32, ptr %arrayidx19, align 1
  %6 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 10
  %7 = load i32, ptr %out_color_space, align 8
  %cmp20 = icmp eq i32 %7, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %arrayidx23 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  store i8 3, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 8, ptr %arrayidx24, align 1
  br label %if.end34

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %num_colors.addr, align 4
  %cmp25 = icmp sgt i32 %8, 0
  br i1 %cmp25, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.else
  %arrayidx28 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  store i8 1, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 8, ptr %arrayidx29, align 1
  br label %if.end34

if.else30:                                        ; preds = %if.else
  %arrayidx31 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  store i8 2, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 24, ptr %arrayidx32, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.else30, %if.then22
  %9 = load ptr, ptr %dinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef nonnull %targaheader, i64 noundef 1, i64 noundef 18, ptr noundef %10) #3
  %cmp36.not = icmp eq i64 %call, 18
  br i1 %cmp36.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end34
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull %11) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_demapped_gray(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %color_map0 = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 32
  %0 = load ptr, ptr %colormap, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %color_map0, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %inptr, align 8
  %4 = load ptr, ptr %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %iobuffer, align 8
  store ptr %5, ptr %outptr, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 26
  %7 = load i32, ptr %output_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %7, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %color_map0, align 8
  %9 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %11 = load i8, ptr %arrayidx2, align 1
  %12 = load ptr, ptr %outptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr5, ptr %outptr, align 8
  store i8 %11, ptr %12, align 1
  %13 = load i32, ptr %col, align 4
  %dec = add i32 %13, -1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %dest, align 8
  %iobuffer6 = getelementptr inbounds %struct.tga_dest_struct, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %iobuffer6, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %buffer_width, align 8
  %conv7 = zext i32 %16 to i64
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %15, i64 noundef 1, i64 noundef %conv7, ptr noundef %17) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_gray_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 4
  %0 = load ptr, ptr %buffer, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %inptr, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %dinfo, i64 0, i32 1
  %2 = load ptr, ptr %iobuffer, align 8
  store ptr %2, ptr %outptr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 26
  %4 = load i32, ptr %output_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %4, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %outptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr2, ptr %outptr, align 8
  store i8 %6, ptr %7, align 1
  %8 = load i32, ptr %col, align 4
  %dec = add i32 %8, -1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %dest, align 8
  %iobuffer3 = getelementptr inbounds %struct.tga_dest_struct, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %iobuffer3, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %buffer_width, align 8
  %conv4 = zext i32 %11 to i64
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %10, i64 noundef 1, i64 noundef %conv4, ptr noundef %12) #3
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 4
  %0 = load ptr, ptr %buffer, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %inptr, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, ptr %dinfo, i64 0, i32 1
  %2 = load ptr, ptr %iobuffer, align 8
  store ptr %2, ptr %outptr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 26
  %4 = load i32, ptr %output_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %4, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %inptr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx1, align 1
  %7 = load ptr, ptr %outptr, align 8
  store i8 %6, ptr %7, align 1
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1
  %8 = load i8, ptr %arrayidx4, align 1
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %8, ptr %arrayidx7, align 1
  %9 = load ptr, ptr %inptr, align 8
  %10 = load i8, ptr %9, align 1
  %11 = load ptr, ptr %outptr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 2
  store i8 %10, ptr %arrayidx11, align 1
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 3
  store ptr %add.ptr, ptr %inptr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %11, i64 3
  store ptr %add.ptr12, ptr %outptr, align 8
  %12 = load i32, ptr %col, align 4
  %dec = add i32 %12, -1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %dest, align 8
  %iobuffer13 = getelementptr inbounds %struct.tga_dest_struct, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %iobuffer13, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %buffer_width, align 8
  %conv14 = zext i32 %15 to i64
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %14, i64 noundef 1, i64 noundef %conv14, ptr noundef %16) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

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
