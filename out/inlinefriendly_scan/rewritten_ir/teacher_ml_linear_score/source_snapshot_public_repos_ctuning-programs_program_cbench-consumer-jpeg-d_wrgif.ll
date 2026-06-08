; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_wrgif.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/wrgif.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gif_dest_struct = type { %struct.djpeg_dest_struct, ptr, i32, i16, i32, i64, i32, i16, i32, i16, i16, i16, ptr, ptr, i32, [256 x i8] }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_write_gif(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 384) #4
  store ptr %call, ptr %dest, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_dest_struct, ptr %call, i64 0, i32 1
  store ptr %cinfo, ptr %cinfo1, align 8
  store ptr @start_output_gif, ptr %call, align 8
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %call, i64 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows, align 8
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %call, i64 0, i32 2
  store ptr @finish_output_gif, ptr %finish_output, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 10
  %3 = load i32, ptr %out_color_space, align 8
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 10
  %5 = load i32, ptr %out_color_space4, align 8
  %cmp5.not = icmp eq i32 %5, 2
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 1014, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 10
  %11 = load i32, ptr %out_color_space7, align 8
  %cmp8.not = icmp eq i32 %11, 1
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %12 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 42
  %13 = load i32, ptr %data_precision, align 8
  %cmp9 = icmp sgt i32 %13, 8
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 19
  store i32 1, ptr %quantize_colors, align 4
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 22
  %15 = load i32, ptr %desired_number_of_colors, align 8
  %cmp11 = icmp sgt i32 %15, 256
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then10
  %16 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 22
  store i32 256, ptr %desired_number_of_colors13, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then12, %lor.lhs.false
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %17) #4
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 29
  %18 = load i32, ptr %output_components, align 4
  %cmp16.not = icmp eq i32 %18, 1
  br i1 %cmp16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end15
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 1012, ptr %msg_code19, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull %19) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15
  %23 = load ptr, ptr %cinfo.addr, align 8
  %mem23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %mem23, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %24, i64 0, i32 2
  %25 = load ptr, ptr %alloc_sarray, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 26
  %26 = load i32, ptr %output_width, align 8
  %call24 = call ptr %25(ptr noundef %23, i32 noundef 1, i32 noundef %26, i32 noundef 1) #4
  %27 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %27, i64 0, i32 4
  store ptr %call24, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %27, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %mem27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %mem27, align 8
  %30 = load ptr, ptr %29, align 8
  %call29 = call ptr %30(ptr noundef %28, i32 noundef 1, i64 noundef 10006) #4
  %31 = load ptr, ptr %dest, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %31, i64 0, i32 12
  store ptr %call29, ptr %hash_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %mem30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %mem30, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %alloc_large, align 8
  %call31 = call ptr %34(ptr noundef %32, i32 noundef 1, i64 noundef 40024) #4
  %35 = load ptr, ptr %dest, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, ptr %35, i64 0, i32 13
  store ptr %call31, ptr %hash_value, align 8
  ret ptr %35
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_gif(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 19
  %0 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dest, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 31
  %3 = load i32, ptr %actual_number_of_colors, align 4
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 32
  %4 = load ptr, ptr %colormap, align 8
  call void @emit_header(ptr noundef %1, i32 noundef %3, ptr noundef %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %dest, align 8
  call void @emit_header(ptr noundef %5, i32 noundef 256, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %dest = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %dinfo, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 4
  %0 = load ptr, ptr %buffer, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %ptr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %2, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %dest, align 8
  %4 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  call void @compress_byte(ptr noundef %3, i32 noundef %conv)
  %6 = load i32, ptr %col, align 4
  %dec = add i32 %6, -1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_gif(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  call void @compress_term(ptr noundef %dinfo)
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %0 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef 0, ptr noundef %0) #4
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %1 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef 59, ptr noundef %1) #4
  %2 = load ptr, ptr %dest, align 8
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @fflush(ptr noundef %3) #4
  %output_file8 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %output_file8, align 8
  %call9 = call i32 @ferror(ptr noundef %4) #4
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #4
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
  %cshift = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %num_colors, ptr %num_colors.addr, align 4
  store ptr %colormap, ptr %colormap.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 1
  %0 = load ptr, ptr %cinfo, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 42
  %1 = load i32, ptr %data_precision, align 8
  %sub = add nsw i32 %1, -8
  store i32 %sub, ptr %cshift, align 4
  %2 = load i32, ptr %num_colors.addr, align 4
  %cmp = icmp sgt i32 %2, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %cinfo1, align 8
  %5 = load ptr, ptr %4, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 1039, ptr %msg_code, align 8
  %6 = load i32, ptr %num_colors.addr, align 4
  %7 = load ptr, ptr %dinfo.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %cinfo2, align 8
  %9 = load ptr, ptr %8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %6, ptr %msg_parm, align 4
  %cinfo4 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %cinfo4, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %dinfo.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %cinfo6, align 8
  call void %12(ptr noundef %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ %inc, %while.body ]
  store i32 %storemerge, ptr %BitsPerPixel, align 4
  %15 = load i32, ptr %num_colors.addr, align 4
  %shl = shl i32 1, %storemerge
  %cmp7 = icmp sgt i32 %15, %shl
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %BitsPerPixel, align 4
  %inc = add nsw i32 %16, 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr %BitsPerPixel, align 4
  %shl8 = shl i32 1, %17
  store i32 %shl8, ptr %ColorMapSize, align 4
  %cmp9 = icmp slt i32 %17, 2
  %18 = load i32, ptr %BitsPerPixel, align 4
  %storemerge1 = select i1 %cmp9, i32 2, i32 %18
  store i32 %storemerge1, ptr %InitCodeSize, align 4
  %19 = load ptr, ptr %dinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef 71, ptr noundef %20) #4
  %output_file13 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %output_file13, align 8
  %call14 = call i32 @putc(i32 noundef 73, ptr noundef %21) #4
  %22 = load ptr, ptr %dinfo.addr, align 8
  %output_file16 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %22, i64 0, i32 3
  %23 = load ptr, ptr %output_file16, align 8
  %call17 = call i32 @putc(i32 noundef 70, ptr noundef %23) #4
  %output_file19 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %output_file19, align 8
  %call20 = call i32 @putc(i32 noundef 56, ptr noundef %24) #4
  %25 = load ptr, ptr %dinfo.addr, align 8
  %output_file22 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %25, i64 0, i32 3
  %26 = load ptr, ptr %output_file22, align 8
  %call23 = call i32 @putc(i32 noundef 55, ptr noundef %26) #4
  %output_file25 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %output_file25, align 8
  %call26 = call i32 @putc(i32 noundef 97, ptr noundef %27) #4
  %28 = load ptr, ptr %dinfo.addr, align 8
  %cinfo27 = getelementptr inbounds %struct.gif_dest_struct, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %cinfo27, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 26
  %30 = load i32, ptr %output_width, align 8
  call void @put_word(ptr noundef %28, i32 noundef %30)
  %cinfo28 = getelementptr inbounds %struct.gif_dest_struct, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %cinfo28, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 27
  %32 = load i32, ptr %output_height, align 4
  call void @put_word(ptr noundef %28, i32 noundef %32)
  %33 = load i32, ptr %BitsPerPixel, align 4
  %sub29 = shl i32 %33, 4
  %shl30 = add i32 %sub29, -16
  %sub31 = add nsw i32 %33, -1
  %or = or i32 %shl30, %sub31
  %or32 = or i32 %or, 128
  %34 = load ptr, ptr %dinfo.addr, align 8
  %output_file34 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %34, i64 0, i32 3
  %35 = load ptr, ptr %output_file34, align 8
  %call35 = call i32 @putc(i32 noundef %or32, ptr noundef %35) #4
  %output_file37 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %output_file37, align 8
  %call38 = call i32 @putc(i32 noundef 0, ptr noundef %36) #4
  %37 = load ptr, ptr %dinfo.addr, align 8
  %output_file40 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %37, i64 0, i32 3
  %38 = load ptr, ptr %output_file40, align 8
  %call41 = call i32 @putc(i32 noundef 0, ptr noundef %38) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %storemerge2 = phi i32 [ 0, %while.end ], [ %inc85, %for.inc ]
  store i32 %storemerge2, ptr %i, align 4
  %39 = load i32, ptr %ColorMapSize, align 4
  %cmp42 = icmp slt i32 %storemerge2, %39
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %num_colors.addr, align 4
  %cmp43 = icmp slt i32 %40, %41
  br i1 %cmp43, label %if.then44, label %if.else83

if.then44:                                        ; preds = %for.body
  %42 = load ptr, ptr %colormap.addr, align 8
  %cmp45.not = icmp eq ptr %42, null
  br i1 %cmp45.not, label %if.else78, label %if.then46

if.then46:                                        ; preds = %if.then44
  %43 = load ptr, ptr %dinfo.addr, align 8
  %cinfo47 = getelementptr inbounds %struct.gif_dest_struct, ptr %43, i64 0, i32 1
  %44 = load ptr, ptr %cinfo47, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i64 0, i32 10
  %45 = load i32, ptr %out_color_space, align 8
  %cmp48 = icmp eq i32 %45, 2
  br i1 %cmp48, label %if.then49, label %if.else71

if.then49:                                        ; preds = %if.then46
  %46 = load ptr, ptr %colormap.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom = sext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %47, i64 %idxprom
  %49 = load i8, ptr %arrayidx51, align 1
  %conv = zext i8 %49 to i32
  %50 = load i32, ptr %cshift, align 4
  %shr = lshr i32 %conv, %50
  %51 = load ptr, ptr %dinfo.addr, align 8
  %output_file53 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %51, i64 0, i32 3
  %52 = load ptr, ptr %output_file53, align 8
  %call54 = call i32 @putc(i32 noundef %shr, ptr noundef %52) #4
  %53 = load ptr, ptr %colormap.addr, align 8
  %arrayidx55 = getelementptr inbounds ptr, ptr %53, i64 1
  %54 = load ptr, ptr %arrayidx55, align 8
  %55 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %54, i64 %idxprom56
  %56 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %56 to i32
  %57 = load i32, ptr %cshift, align 4
  %shr59 = lshr i32 %conv58, %57
  %58 = load ptr, ptr %dinfo.addr, align 8
  %output_file61 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %58, i64 0, i32 3
  %59 = load ptr, ptr %output_file61, align 8
  %call62 = call i32 @putc(i32 noundef %shr59, ptr noundef %59) #4
  %60 = load ptr, ptr %colormap.addr, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %60, i64 2
  %61 = load ptr, ptr %arrayidx63, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %62 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %61, i64 %idxprom64
  %63 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %63 to i32
  %64 = load i32, ptr %cshift, align 4
  %shr67 = lshr i32 %conv66, %64
  %65 = load ptr, ptr %dinfo.addr, align 8
  %output_file69 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %65, i64 0, i32 3
  %66 = load ptr, ptr %output_file69, align 8
  %call70 = call i32 @putc(i32 noundef %shr67, ptr noundef %66) #4
  br label %for.inc

if.else71:                                        ; preds = %if.then46
  %67 = load ptr, ptr %dinfo.addr, align 8
  %68 = load ptr, ptr %colormap.addr, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %70 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %69, i64 %idxprom73
  %71 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %71 to i32
  %72 = load i32, ptr %cshift, align 4
  %shr76 = lshr i32 %conv75, %72
  call void @put_3bytes(ptr noundef %67, i32 noundef %shr76)
  br label %for.inc

if.else78:                                        ; preds = %if.then44
  %73 = load ptr, ptr %dinfo.addr, align 8
  %74 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %74, 255
  %75 = load i32, ptr %num_colors.addr, align 4
  %sub79 = add nsw i32 %75, -1
  %div = sdiv i32 %sub79, 2
  %add = add nsw i32 %mul, %div
  %sub80 = add nsw i32 %75, -1
  %div81 = sdiv i32 %add, %sub80
  call void @put_3bytes(ptr noundef %73, i32 noundef %div81)
  br label %for.inc

if.else83:                                        ; preds = %for.body
  %76 = load ptr, ptr %dinfo.addr, align 8
  call void @put_3bytes(ptr noundef %76, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.else83, %if.then49, %if.else71, %if.else78
  %77 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %77, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %78 = load ptr, ptr %dinfo.addr, align 8
  %output_file87 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %78, i64 0, i32 3
  %79 = load ptr, ptr %output_file87, align 8
  %call88 = call i32 @putc(i32 noundef 44, ptr noundef %79) #4
  call void @put_word(ptr noundef %78, i32 noundef 0)
  call void @put_word(ptr noundef %78, i32 noundef 0)
  %cinfo89 = getelementptr inbounds %struct.gif_dest_struct, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %cinfo89, align 8
  %output_width90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i64 0, i32 26
  %81 = load i32, ptr %output_width90, align 8
  call void @put_word(ptr noundef %78, i32 noundef %81)
  %82 = load ptr, ptr %dinfo.addr, align 8
  %cinfo91 = getelementptr inbounds %struct.gif_dest_struct, ptr %82, i64 0, i32 1
  %83 = load ptr, ptr %cinfo91, align 8
  %output_height92 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i64 0, i32 27
  %84 = load i32, ptr %output_height92, align 4
  call void @put_word(ptr noundef %82, i32 noundef %84)
  %output_file94 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %82, i64 0, i32 3
  %85 = load ptr, ptr %output_file94, align 8
  %call95 = call i32 @putc(i32 noundef 0, ptr noundef %85) #4
  %86 = load i32, ptr %InitCodeSize, align 4
  %87 = load ptr, ptr %dinfo.addr, align 8
  %output_file97 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %87, i64 0, i32 3
  %88 = load ptr, ptr %output_file97, align 8
  %call98 = call i32 @putc(i32 noundef %86, ptr noundef %88) #4
  %add99 = add nsw i32 %86, 1
  call void @compress_init(ptr noundef %87, i32 noundef %add99)
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @put_word(ptr noundef %dinfo, i32 noundef %w) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %and = and i32 %w, 255
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %0 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %0) #4
  %shr = lshr i32 %w, 8
  %and1 = and i32 %shr, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_3bytes(ptr noundef %dinfo, i32 noundef %val) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %0 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %val, ptr noundef %0) #4
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %1 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef %val, ptr noundef %1) #4
  %2 = load i32, ptr %val.addr, align 4
  %3 = load ptr, ptr %dinfo.addr, align 8
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @putc(i32 noundef %2, ptr noundef %4) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress_init(ptr noundef %dinfo, i32 noundef %i_bits) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  %i_bits.addr = alloca i32, align 4
  store ptr %dinfo, ptr %dinfo.addr, align 8
  store i32 %i_bits, ptr %i_bits.addr, align 4
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 4
  store i32 %i_bits, ptr %init_bits, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 2
  store i32 %i_bits, ptr %n_bits, align 8
  %notmask = shl nsw i32 -1, %i_bits
  %0 = trunc i32 %notmask to i16
  %conv = xor i16 %0, -1
  %1 = load ptr, ptr %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 3
  store i16 %conv, ptr %maxcode, align 4
  %2 = load i32, ptr %i_bits.addr, align 4
  %sub2 = add nsw i32 %2, -1
  %shl3 = shl i32 1, %sub2
  %conv4 = trunc i32 %shl3 to i16
  %3 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 9
  store i16 %conv4, ptr %ClearCode, align 4
  %4 = shl i32 1, %sub2
  %5 = trunc i32 %4 to i16
  %conv7 = add i16 %5, 1
  %EOFCode = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 10
  store i16 %conv7, ptr %EOFCode, align 2
  %6 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode8 = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 9
  %7 = load i16, ptr %ClearCode8, align 4
  %add10 = add i16 %7, 2
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 11
  store i16 %add10, ptr %free_code, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 8
  store i32 1, ptr %first_byte, align 8
  %8 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 14
  store i32 0, ptr %bytesinpkt, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 5
  store i64 0, ptr %cur_accum, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 6
  store i32 0, ptr %cur_bits, align 8
  %9 = load ptr, ptr %dinfo.addr, align 8
  call void @clear_hash(ptr noundef %9)
  %ClearCode12 = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 9
  %10 = load i16, ptr %ClearCode12, align 4
  call void @output(ptr noundef %9, i16 noundef signext %10)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @clear_hash(ptr noundef %dinfo) #0 {
entry:
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 12
  %0 = load ptr, ptr %hash_code, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef 10006, i64 noundef %1) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @output(ptr noundef %dinfo, i16 noundef signext %code) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %conv = sext i16 %code to i64
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 6
  %0 = load i32, ptr %cur_bits, align 8
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 %conv, %sh_prom
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 5
  %1 = load i64, ptr %cur_accum, align 8
  %or = or i64 %1, %shl
  store i64 %or, ptr %cur_accum, align 8
  %2 = load ptr, ptr %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %n_bits, align 8
  %cur_bits1 = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i64 0, i32 6
  %4 = load i32, ptr %cur_bits1, align 8
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %cur_bits1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load ptr, ptr %dinfo.addr, align 8
  %cur_bits2 = getelementptr inbounds %struct.gif_dest_struct, ptr %5, i64 0, i32 6
  %6 = load i32, ptr %cur_bits2, align 8
  %cmp = icmp sgt i32 %6, 7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum4 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 5
  %8 = load i64, ptr %cur_accum4, align 8
  %conv5 = trunc i64 %8 to i8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 14
  %9 = load i32, ptr %bytesinpkt, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %bytesinpkt, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 15, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %10 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt6 = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i64 0, i32 14
  %11 = load i32, ptr %bytesinpkt6, align 8
  %cmp7 = icmp sgt i32 %11, 254
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load ptr, ptr %dinfo.addr, align 8
  call void @flush_packet(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum9 = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i64 0, i32 5
  %14 = load i64, ptr %cur_accum9, align 8
  %shr = ashr i64 %14, 8
  store i64 %shr, ptr %cur_accum9, align 8
  %cur_bits10 = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %cur_bits10, align 8
  %sub = add nsw i32 %15, -8
  store i32 %sub, ptr %cur_bits10, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i64 0, i32 11
  %17 = load i16, ptr %free_code, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i64 0, i32 3
  %18 = load i16, ptr %maxcode, align 4
  %cmp13 = icmp sgt i16 %17, %18
  br i1 %cmp13, label %if.then15, label %if.end29

if.then15:                                        ; preds = %while.end
  %19 = load ptr, ptr %dinfo.addr, align 8
  %n_bits16 = getelementptr inbounds %struct.gif_dest_struct, ptr %19, i64 0, i32 2
  %20 = load i32, ptr %n_bits16, align 8
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, ptr %n_bits16, align 8
  %cmp19 = icmp eq i32 %inc17, 12
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then15
  %21 = load ptr, ptr %dinfo.addr, align 8
  %maxcode22 = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i64 0, i32 3
  store i16 4096, ptr %maxcode22, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then15
  %22 = load ptr, ptr %dinfo.addr, align 8
  %n_bits23 = getelementptr inbounds %struct.gif_dest_struct, ptr %22, i64 0, i32 2
  %23 = load i32, ptr %n_bits23, align 8
  %notmask = shl nsw i32 -1, %23
  %24 = trunc i32 %notmask to i16
  %conv26 = xor i16 %24, -1
  %maxcode27 = getelementptr inbounds %struct.gif_dest_struct, ptr %22, i64 0, i32 3
  store i16 %conv26, ptr %maxcode27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.else, %while.end
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
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 14
  %0 = load i32, ptr %bytesinpkt, align 8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt1 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 14
  %2 = load i32, ptr %bytesinpkt1, align 8
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %bytesinpkt1, align 8
  %conv = trunc i32 %2 to i8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 15
  store i8 %conv, ptr %packetbuf, align 4
  %3 = load ptr, ptr %dinfo.addr, align 8
  %packetbuf2 = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 15
  %bytesinpkt3 = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 14
  %4 = load i32, ptr %bytesinpkt3, align 8
  %conv4 = sext i32 %4 to i64
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef nonnull %packetbuf2, i64 noundef 1, i64 noundef %conv4, ptr noundef %5) #4
  %6 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt5 = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 14
  %7 = load i32, ptr %bytesinpkt5, align 8
  %conv6 = sext i32 %7 to i64
  %cmp7.not = icmp eq i64 %call, %conv6
  br i1 %cmp7.not, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %8 = load ptr, ptr %dinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %cinfo, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %cinfo10 = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %cinfo10, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %dinfo.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.gif_dest_struct, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %cinfo12, align 8
  call void %13(ptr noundef %15) #4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %16 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt13 = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i64 0, i32 14
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
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 8
  %0 = load i32, ptr %first_byte, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %1 to i16
  %2 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i64 0, i32 7
  store i16 %conv, ptr %waiting_code, align 4
  %first_byte1 = getelementptr inbounds %struct.gif_dest_struct, ptr %2, i64 0, i32 8
  store i32 0, ptr %first_byte1, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4
  %shl = shl i32 %3, 4
  %4 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code2 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i64 0, i32 7
  %5 = load i16, ptr %waiting_code2, align 4
  %conv3 = sext i16 %5 to i32
  %add = add nsw i32 %shl, %conv3
  store i32 %add, ptr %i, align 4
  %cmp = icmp sgt i32 %add, 5002
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %sub = add nsw i32 %6, -5003
  store i32 %sub, ptr %i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %7 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code7 = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 7
  %8 = load i16, ptr %waiting_code7, align 4
  %conv8 = sext i16 %8 to i64
  %shl9 = shl nsw i64 %conv8, 8
  %9 = load i32, ptr %c.addr, align 4
  %conv10 = sext i32 %9 to i64
  %or = or i64 %shl9, %conv10
  store i64 %or, ptr %probe_value, align 8
  %10 = load ptr, ptr %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i64 0, i32 12
  %11 = load ptr, ptr %hash_code, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i16, ptr %11, i64 %idxprom
  %13 = load i16, ptr %arrayidx, align 2
  %cmp12.not = icmp eq i16 %13, 0
  br i1 %cmp12.not, label %if.end55, label %if.then14

if.then14:                                        ; preds = %if.end6
  %14 = load ptr, ptr %dinfo.addr, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, ptr %14, i64 0, i32 13
  %15 = load ptr, ptr %hash_value, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %15, i64 %idxprom15
  %17 = load i64, ptr %arrayidx16, align 8
  %18 = load i64, ptr %probe_value, align 8
  %cmp17 = icmp eq i64 %17, %18
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then14
  %19 = load ptr, ptr %dinfo.addr, align 8
  %hash_code20 = getelementptr inbounds %struct.gif_dest_struct, ptr %19, i64 0, i32 12
  %20 = load ptr, ptr %hash_code20, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %20, i64 %idxprom21
  %22 = load i16, ptr %arrayidx22, align 2
  %23 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code23 = getelementptr inbounds %struct.gif_dest_struct, ptr %23, i64 0, i32 7
  store i16 %22, ptr %waiting_code23, align 4
  br label %return

if.end24:                                         ; preds = %if.then14
  %24 = load i32, ptr %i, align 4
  %cmp25 = icmp eq i32 %24, 0
  %25 = load i32, ptr %i, align 4
  %sub28 = sub nsw i32 5003, %25
  %storemerge = select i1 %cmp25, i32 1, i32 %sub28
  store i32 %storemerge, ptr %disp, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end43, %if.end24
  %26 = load i32, ptr %disp, align 4
  %27 = load i32, ptr %i, align 4
  %sub30 = sub nsw i32 %27, %26
  store i32 %sub30, ptr %i, align 4
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.cond
  %28 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %28, 5003
  store i32 %add34, ptr %i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.cond
  %29 = load ptr, ptr %dinfo.addr, align 8
  %hash_code36 = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i64 0, i32 12
  %30 = load ptr, ptr %hash_code36, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %30, i64 %idxprom37
  %32 = load i16, ptr %arrayidx38, align 2
  %cmp40 = icmp eq i16 %32, 0
  br i1 %cmp40, label %if.end55, label %if.end43

if.end43:                                         ; preds = %if.end35
  %33 = load ptr, ptr %dinfo.addr, align 8
  %hash_value44 = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i64 0, i32 13
  %34 = load ptr, ptr %hash_value44, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %34, i64 %idxprom45
  %36 = load i64, ptr %arrayidx46, align 8
  %37 = load i64, ptr %probe_value, align 8
  %cmp47 = icmp eq i64 %36, %37
  br i1 %cmp47, label %if.then49, label %for.cond

if.then49:                                        ; preds = %if.end43
  %38 = load ptr, ptr %dinfo.addr, align 8
  %hash_code50 = getelementptr inbounds %struct.gif_dest_struct, ptr %38, i64 0, i32 12
  %39 = load ptr, ptr %hash_code50, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %40 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %39, i64 %idxprom51
  %41 = load i16, ptr %arrayidx52, align 2
  %42 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code53 = getelementptr inbounds %struct.gif_dest_struct, ptr %42, i64 0, i32 7
  store i16 %41, ptr %waiting_code53, align 4
  br label %return

if.end55:                                         ; preds = %if.end35, %if.end6
  %43 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code56 = getelementptr inbounds %struct.gif_dest_struct, ptr %43, i64 0, i32 7
  %44 = load i16, ptr %waiting_code56, align 4
  call void @output(ptr noundef %43, i16 noundef signext %44)
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %43, i64 0, i32 11
  %45 = load i16, ptr %free_code, align 8
  %cmp58 = icmp slt i16 %45, 4096
  br i1 %cmp58, label %if.then60, label %if.else68

if.then60:                                        ; preds = %if.end55
  %46 = load ptr, ptr %dinfo.addr, align 8
  %free_code61 = getelementptr inbounds %struct.gif_dest_struct, ptr %46, i64 0, i32 11
  %47 = load i16, ptr %free_code61, align 8
  %inc = add i16 %47, 1
  store i16 %inc, ptr %free_code61, align 8
  %hash_code62 = getelementptr inbounds %struct.gif_dest_struct, ptr %46, i64 0, i32 12
  %48 = load ptr, ptr %hash_code62, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %49 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %48, i64 %idxprom63
  store i16 %47, ptr %arrayidx64, align 2
  %50 = load i64, ptr %probe_value, align 8
  %51 = load ptr, ptr %dinfo.addr, align 8
  %hash_value65 = getelementptr inbounds %struct.gif_dest_struct, ptr %51, i64 0, i32 13
  %52 = load ptr, ptr %hash_value65, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds i64, ptr %52, i64 %idxprom66
  store i64 %50, ptr %arrayidx67, align 8
  br label %if.end69

if.else68:                                        ; preds = %if.end55
  %54 = load ptr, ptr %dinfo.addr, align 8
  call void @clear_block(ptr noundef %54)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then60
  %55 = load i32, ptr %c.addr, align 4
  %conv70 = trunc i32 %55 to i16
  %56 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code71 = getelementptr inbounds %struct.gif_dest_struct, ptr %56, i64 0, i32 7
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
  call void @clear_hash(ptr noundef %dinfo)
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 9
  %0 = load i16, ptr %ClearCode, align 4
  %add = add i16 %0, 2
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 11
  store i16 %add, ptr %free_code, align 8
  %1 = load ptr, ptr %dinfo.addr, align 8
  %ClearCode2 = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 9
  %2 = load i16, ptr %ClearCode2, align 4
  call void @output(ptr noundef %1, i16 noundef signext %2)
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %init_bits, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 2
  store i32 %3, ptr %n_bits, align 8
  %4 = load ptr, ptr %dinfo.addr, align 8
  %n_bits3 = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %n_bits3, align 8
  %notmask = shl nsw i32 -1, %5
  %6 = trunc i32 %notmask to i16
  %conv4 = xor i16 %6, -1
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %4, i64 0, i32 3
  store i16 %conv4, ptr %maxcode, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress_term(ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 8
  %0 = load i32, ptr %first_byte, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dinfo.addr, align 8
  %waiting_code = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 7
  %2 = load i16, ptr %waiting_code, align 4
  call void @output(ptr noundef %1, i16 noundef signext %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dinfo.addr, align 8
  %EOFCode = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 10
  %4 = load i16, ptr %EOFCode, align 2
  call void @output(ptr noundef %3, i16 noundef signext %4)
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %cur_bits, align 8
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 5
  %7 = load i64, ptr %cur_accum, align 8
  %conv = trunc i64 %7 to i8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %bytesinpkt, align 8
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %bytesinpkt, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 15, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %9 = load ptr, ptr %dinfo.addr, align 8
  %bytesinpkt2 = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 14
  %10 = load i32, ptr %bytesinpkt2, align 8
  %cmp3 = icmp sgt i32 %10, 254
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then1
  %11 = load ptr, ptr %dinfo.addr, align 8
  call void @flush_packet(ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.then5, %if.end
  %12 = load ptr, ptr %dinfo.addr, align 8
  call void @flush_packet(ptr noundef %12)
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
