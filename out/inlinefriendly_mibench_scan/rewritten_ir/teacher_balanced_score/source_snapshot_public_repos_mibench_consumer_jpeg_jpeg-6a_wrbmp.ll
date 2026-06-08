; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_wrbmp.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/wrbmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bmp_dest_struct = type { %struct.djpeg_dest_struct, i32, ptr, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_write_bmp(ptr noundef %cinfo, i32 noundef %is_os2) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %is_os2.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  %row_width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %is_os2, ptr %is_os2.addr, align 4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 80) #3
  store ptr %call, ptr %dest, align 8
  store ptr @start_output_bmp, ptr %call, align 8
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %call, i64 0, i32 2
  store ptr @finish_output_bmp, ptr %finish_output, align 8
  %2 = load i32, ptr %is_os2.addr, align 4
  %is_os22 = getelementptr inbounds %struct.bmp_dest_struct, ptr %call, i64 0, i32 1
  store i32 %2, ptr %is_os22, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 10
  %4 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dest, align 8
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %5, i64 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 10
  %7 = load i32, ptr %out_color_space4, align 8
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 19
  %9 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else10, label %if.then7

if.then7:                                         ; preds = %if.then6
  %10 = load ptr, ptr %dest, align 8
  %put_pixel_rows9 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %10, i64 0, i32 1
  store ptr @put_gray_rows, ptr %put_pixel_rows9, align 8
  br label %if.end16

if.else10:                                        ; preds = %if.then6
  %11 = load ptr, ptr %dest, align 8
  %put_pixel_rows12 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %11, i64 0, i32 1
  store ptr @put_pixel_rows, ptr %put_pixel_rows12, align 8
  br label %if.end16

if.else13:                                        ; preds = %if.else
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 1005, ptr %msg_code, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull %12) #3
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.else10, %if.then7, %if.then
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(ptr noundef %16) #3
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 26
  %17 = load i32, ptr %output_width, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 29
  %18 = load i32, ptr %output_components, align 4
  %mul = mul i32 %17, %18
  store i32 %mul, ptr %row_width, align 4
  %19 = load ptr, ptr %dest, align 8
  %data_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %19, i64 0, i32 3
  store i32 %mul, ptr %data_width, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end16
  %20 = load i32, ptr %row_width, align 4
  %and = and i32 %20, 3
  %cmp17.not = icmp eq i32 %and, 0
  br i1 %cmp17.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %21 = load i32, ptr %row_width, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %row_width, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr %row_width, align 4
  %23 = load ptr, ptr %dest, align 8
  %row_width18 = getelementptr inbounds %struct.bmp_dest_struct, ptr %23, i64 0, i32 4
  store i32 %22, ptr %row_width18, align 4
  %data_width19 = getelementptr inbounds %struct.bmp_dest_struct, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %data_width19, align 8
  %sub = sub i32 %22, %24
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, ptr %23, i64 0, i32 5
  store i32 %sub, ptr %pad_bytes, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %mem20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %mem20, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %26, i64 0, i32 4
  %27 = load ptr, ptr %request_virt_sarray, align 8
  %28 = load i32, ptr %row_width, align 4
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 27
  %29 = load i32, ptr %output_height, align 4
  %call21 = call ptr %27(ptr noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef %28, i32 noundef %29, i32 noundef 1) #3
  %30 = load ptr, ptr %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %30, i64 0, i32 2
  store ptr %call21, ptr %whole_image, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, ptr %30, i64 0, i32 6
  store i32 0, ptr %cur_output_row, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 2
  %32 = load ptr, ptr %progress, align 8
  %cmp22.not = icmp eq ptr %32, null
  br i1 %cmp22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %while.end
  %33 = load ptr, ptr %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 2
  %34 = load ptr, ptr %progress25, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %34, i64 0, i32 2
  %35 = load i32, ptr %total_extra_passes, align 4
  %inc26 = add nsw i32 %35, 1
  store i32 %inc26, ptr %total_extra_passes, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %while.end
  %36 = load ptr, ptr %cinfo.addr, align 8
  %mem28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 1
  %37 = load ptr, ptr %mem28, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %37, i64 0, i32 2
  %38 = load ptr, ptr %alloc_sarray, align 8
  %39 = load i32, ptr %row_width, align 4
  %call29 = call ptr %38(ptr noundef %36, i32 noundef 1, i32 noundef %39, i32 noundef 1) #3
  %40 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %40, i64 0, i32 4
  store ptr %call29, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %40, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  ret ptr %40
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_bmp(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_bmp(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %outfile = alloca ptr, align 8
  %data_ptr = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %0 = load ptr, ptr %output_file, align 8
  store ptr %0, ptr %outfile, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 2
  %1 = load ptr, ptr %progress1, align 8
  store ptr %1, ptr %progress, align 8
  %2 = load ptr, ptr %dest, align 8
  %is_os2 = getelementptr inbounds %struct.bmp_dest_struct, ptr %2, i64 0, i32 1
  %3 = load i32, ptr %is_os2, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %dest, align 8
  call void @write_os2_header(ptr noundef %4, ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %dest, align 8
  call void @write_bmp_header(ptr noundef %6, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 27
  %9 = load i32, ptr %output_height, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %if.end
  %storemerge = phi i32 [ %9, %if.end ], [ %dec19, %for.inc18 ]
  store i32 %storemerge, ptr %row, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end20, label %for.body

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %progress, align 8
  %cmp2.not = icmp eq ptr %10, null
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %for.body
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_height4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 27
  %12 = load i32, ptr %output_height4, align 4
  %13 = load i32, ptr %row, align 4
  %sub = sub i32 %12, %13
  %conv = zext i32 %sub to i64
  %14 = load ptr, ptr %progress, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %14, i64 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %output_height6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 27
  %16 = load i32, ptr %output_height6, align 4
  %conv7 = zext i32 %16 to i64
  %17 = load ptr, ptr %progress, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %17, i64 0, i32 2
  store i64 %conv7, ptr %pass_limit, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %for.body
  %20 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 1
  %21 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %21, i64 0, i32 7
  %22 = load ptr, ptr %access_virt_sarray, align 8
  %23 = load ptr, ptr %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %23, i64 0, i32 2
  %24 = load ptr, ptr %whole_image, align 8
  %25 = load i32, ptr %row, align 4
  %sub11 = add i32 %25, -1
  %call = call ptr %22(ptr noundef %20, ptr noundef %24, i32 noundef %sub11, i32 noundef 1, i32 noundef 0) #3
  %26 = load ptr, ptr %call, align 8
  store ptr %26, ptr %data_ptr, align 8
  %27 = load ptr, ptr %dest, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %27, i64 0, i32 4
  %28 = load i32, ptr %row_width, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.body15, %if.end10
  %storemerge1 = phi i32 [ %28, %if.end10 ], [ %dec, %for.body15 ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp13.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp13.not, label %for.inc18, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %29 = load ptr, ptr %data_ptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv16 = zext i8 %30 to i32
  %31 = load ptr, ptr %outfile, align 8
  %call17 = call i32 @putc(i32 noundef %conv16, ptr noundef %31) #3
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %data_ptr, align 8
  %32 = load i32, ptr %col, align 4
  %dec = add i32 %32, -1
  br label %for.cond12, !llvm.loop !8

for.inc18:                                        ; preds = %for.cond12
  %33 = load i32, ptr %row, align 4
  %dec19 = add i32 %33, -1
  br label %for.cond, !llvm.loop !9

for.end20:                                        ; preds = %for.cond
  %34 = load ptr, ptr %progress, align 8
  %cmp21.not = icmp eq ptr %34, null
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %for.end20
  %35 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %35, i64 0, i32 1
  %36 = load i32, ptr %completed_extra_passes, align 8
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %completed_extra_passes, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end20
  %37 = load ptr, ptr %outfile, align 8
  %call25 = call i32 @fflush(ptr noundef %37) #3
  %call26 = call i32 @ferror(ptr noundef %37) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end24
  %38 = load ptr, ptr %cinfo.addr, align 8
  %39 = load ptr, ptr %38, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %40 = load ptr, ptr %38, align 8
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef nonnull %38) #3
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_gray_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %pad = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %access_virt_sarray, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %dinfo, i64 0, i32 2
  %2 = load ptr, ptr %whole_image, align 8
  %3 = load ptr, ptr %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %cur_output_row, align 4
  %call = call ptr %1(ptr noundef %cinfo, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef 1) #3
  store ptr %call, ptr %image_ptr, align 8
  %cur_output_row1 = getelementptr inbounds %struct.bmp_dest_struct, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %cur_output_row1, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cur_output_row1, align 4
  %6 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %buffer, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %image_ptr, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 26
  %12 = load i32, ptr %output_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %12, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %14 = load i8, ptr %13, align 1
  %15 = load ptr, ptr %outptr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr3, ptr %outptr, align 8
  store i8 %14, ptr %15, align 1
  %16 = load i32, ptr %col, align 4
  %dec = add i32 %16, -1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, ptr %17, i64 0, i32 5
  %18 = load i32, ptr %pad_bytes, align 8
  store i32 %18, ptr %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %19 = load i32, ptr %pad, align 4
  %dec4 = add nsw i32 %19, -1
  store i32 %dec4, ptr %pad, align 4
  %cmp5 = icmp sgt i32 %19, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr6, ptr %outptr, align 8
  store i8 0, ptr %20, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %pad = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %access_virt_sarray, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, ptr %dinfo, i64 0, i32 2
  %2 = load ptr, ptr %whole_image, align 8
  %3 = load ptr, ptr %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %cur_output_row, align 4
  %call = call ptr %1(ptr noundef %cinfo, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef 1) #3
  store ptr %call, ptr %image_ptr, align 8
  %cur_output_row1 = getelementptr inbounds %struct.bmp_dest_struct, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %cur_output_row1, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cur_output_row1, align 4
  %6 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %buffer, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %image_ptr, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 26
  %12 = load i32, ptr %output_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %12, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %14 = load i8, ptr %13, align 1
  %15 = load ptr, ptr %outptr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %14, ptr %arrayidx3, align 1
  %incdec.ptr4 = getelementptr inbounds i8, ptr %13, i64 2
  store ptr %incdec.ptr4, ptr %inptr, align 8
  %16 = load i8, ptr %incdec.ptr, align 1
  %arrayidx5 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %16, ptr %arrayidx5, align 1
  %incdec.ptr6 = getelementptr inbounds i8, ptr %13, i64 3
  store ptr %incdec.ptr6, ptr %inptr, align 8
  %17 = load i8, ptr %incdec.ptr4, align 1
  %18 = load ptr, ptr %outptr, align 8
  store i8 %17, ptr %18, align 1
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  %19 = load i32, ptr %col, align 4
  %dec = add i32 %19, -1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, ptr %20, i64 0, i32 5
  %21 = load i32, ptr %pad_bytes, align 8
  store i32 %21, ptr %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %22 = load i32, ptr %pad, align 4
  %dec8 = add nsw i32 %22, -1
  store i32 %dec8, ptr %pad, align 4
  %cmp9 = icmp sgt i32 %22, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %outptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr10, ptr %outptr, align 8
  store i8 0, ptr %23, align 1
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
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 10
  %0 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 19
  %2 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i32 24, i32 8
  %.4 = select i1 %tobool.not, i32 0, i32 256
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %storemerge3 = phi i32 [ %., %if.then ], [ 8, %entry ]
  %storemerge2 = phi i32 [ %.4, %if.then ], [ 256, %entry ]
  store i32 %storemerge3, ptr %bits_per_pixel, align 4
  store i32 %storemerge2, ptr %cmap_entries, align 4
  %mul = mul nsw i32 %storemerge2, 3
  %add = add nsw i32 %mul, 26
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %headersize, align 8
  %3 = load ptr, ptr %dest.addr, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %3, i64 0, i32 4
  %4 = load i32, ptr %row_width, align 4
  %conv4 = zext i32 %4 to i64
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 27
  %6 = load i32, ptr %output_height, align 4
  %conv5 = zext i32 %6 to i64
  %mul6 = mul nuw nsw i64 %conv4, %conv5
  %add7 = add nsw i64 %mul6, %conv
  store i64 %add7, ptr %bfSize, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %bmpfileheader, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %bmpcoreheader, i8 0, i64 12, i1 false)
  store i8 66, ptr %bmpfileheader, align 1
  %arrayidx9 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  store i8 77, ptr %arrayidx9, align 1
  %conv10 = trunc i64 %add7 to i8
  %arrayidx11 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 2
  store i8 %conv10, ptr %arrayidx11, align 1
  %7 = load i64, ptr %bfSize, align 8
  %8 = lshr i64 %7, 8
  %conv13 = trunc i64 %8 to i8
  %arrayidx14 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 3
  store i8 %conv13, ptr %arrayidx14, align 1
  %9 = lshr i64 %7, 16
  %conv17 = trunc i64 %9 to i8
  %arrayidx18 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 4
  store i8 %conv17, ptr %arrayidx18, align 1
  %10 = load i64, ptr %bfSize, align 8
  %11 = lshr i64 %10, 24
  %conv21 = trunc i64 %11 to i8
  %arrayidx22 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 5
  store i8 %conv21, ptr %arrayidx22, align 1
  %12 = load i64, ptr %headersize, align 8
  %conv24 = trunc i64 %12 to i8
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  store i8 %conv24, ptr %arrayidx25, align 1
  %13 = lshr i64 %12, 8
  %conv28 = trunc i64 %13 to i8
  %arrayidx29 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  store i8 %conv28, ptr %arrayidx29, align 1
  %14 = load i64, ptr %headersize, align 8
  %15 = lshr i64 %14, 16
  %conv32 = trunc i64 %15 to i8
  %arrayidx33 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  store i8 %conv32, ptr %arrayidx33, align 1
  %16 = lshr i64 %14, 24
  %conv36 = trunc i64 %16 to i8
  %arrayidx37 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  store i8 %conv36, ptr %arrayidx37, align 1
  store i8 12, ptr %bmpcoreheader, align 1
  %arrayidx39 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 1
  store i8 0, ptr %arrayidx39, align 1
  %17 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 26
  %18 = load i32, ptr %output_width, align 8
  %conv41 = trunc i32 %18 to i8
  %arrayidx42 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 4
  store i8 %conv41, ptr %arrayidx42, align 1
  %shr44 = lshr i32 %18, 8
  %conv46 = trunc i32 %shr44 to i8
  %arrayidx47 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 5
  store i8 %conv46, ptr %arrayidx47, align 1
  %19 = load ptr, ptr %cinfo.addr, align 8
  %output_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 27
  %20 = load i32, ptr %output_height48, align 4
  %conv50 = trunc i32 %20 to i8
  %arrayidx51 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 6
  store i8 %conv50, ptr %arrayidx51, align 1
  %shr53 = lshr i32 %20, 8
  %conv55 = trunc i32 %shr53 to i8
  %arrayidx56 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 7
  store i8 %conv55, ptr %arrayidx56, align 1
  %arrayidx57 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 8
  store i8 1, ptr %arrayidx57, align 1
  %arrayidx58 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 9
  store i8 0, ptr %arrayidx58, align 1
  %21 = load i32, ptr %bits_per_pixel, align 4
  %conv60 = trunc i32 %21 to i8
  %arrayidx61 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 10
  store i8 %conv60, ptr %arrayidx61, align 1
  %22 = lshr i32 %21, 8
  %conv64 = trunc i32 %22 to i8
  %arrayidx65 = getelementptr inbounds [12 x i8], ptr %bmpcoreheader, i64 0, i64 11
  store i8 %conv64, ptr %arrayidx65, align 1
  %23 = load ptr, ptr %dest.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %23, i64 0, i32 3
  %24 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef nonnull %bmpfileheader, i64 noundef 1, i64 noundef 14, ptr noundef %24) #3
  %cmp67.not = icmp eq i64 %call, 14
  br i1 %cmp67.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.end3
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %27 = load ptr, ptr %25, align 8
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull %25) #3
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end3
  %29 = load ptr, ptr %dest.addr, align 8
  %output_file74 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %29, i64 0, i32 3
  %30 = load ptr, ptr %output_file74, align 8
  %call75 = call i64 @"\01_fwrite"(ptr noundef nonnull %bmpcoreheader, i64 noundef 1, i64 noundef 12, ptr noundef %30) #3
  %cmp76.not = icmp eq i64 %call75, 12
  br i1 %cmp76.not, label %if.end83, label %if.then78

if.then78:                                        ; preds = %if.end71
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %msg_code80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 36, ptr %msg_code80, align 8
  %33 = load ptr, ptr %31, align 8
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull %31) #3
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end71
  %35 = load i32, ptr %cmap_entries, align 4
  %cmp84 = icmp sgt i32 %35, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load ptr, ptr %dest.addr, align 8
  %38 = load i32, ptr %cmap_entries, align 4
  call void @write_colormap(ptr noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef 3)
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
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 10
  %0 = load i32, ptr %out_color_space, align 8
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 19
  %2 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i32 24, i32 8
  %.4 = select i1 %tobool.not, i32 0, i32 256
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %storemerge3 = phi i32 [ %., %if.then ], [ 8, %entry ]
  %storemerge2 = phi i32 [ %.4, %if.then ], [ 256, %entry ]
  store i32 %storemerge3, ptr %bits_per_pixel, align 4
  store i32 %storemerge2, ptr %cmap_entries, align 4
  %mul = shl nsw i32 %storemerge2, 2
  %add = add nsw i32 %mul, 54
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %headersize, align 8
  %3 = load ptr, ptr %dest.addr, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, ptr %3, i64 0, i32 4
  %4 = load i32, ptr %row_width, align 4
  %conv4 = zext i32 %4 to i64
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 27
  %6 = load i32, ptr %output_height, align 4
  %conv5 = zext i32 %6 to i64
  %mul6 = mul nuw nsw i64 %conv4, %conv5
  %add7 = add nsw i64 %mul6, %conv
  store i64 %add7, ptr %bfSize, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %bmpfileheader, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %bmpinfoheader, i8 0, i64 40, i1 false)
  store i8 66, ptr %bmpfileheader, align 1
  %arrayidx9 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  store i8 77, ptr %arrayidx9, align 1
  %conv10 = trunc i64 %add7 to i8
  %arrayidx11 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 2
  store i8 %conv10, ptr %arrayidx11, align 1
  %7 = load i64, ptr %bfSize, align 8
  %8 = lshr i64 %7, 8
  %conv13 = trunc i64 %8 to i8
  %arrayidx14 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 3
  store i8 %conv13, ptr %arrayidx14, align 1
  %9 = lshr i64 %7, 16
  %conv17 = trunc i64 %9 to i8
  %arrayidx18 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 4
  store i8 %conv17, ptr %arrayidx18, align 1
  %10 = load i64, ptr %bfSize, align 8
  %11 = lshr i64 %10, 24
  %conv21 = trunc i64 %11 to i8
  %arrayidx22 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 5
  store i8 %conv21, ptr %arrayidx22, align 1
  %12 = load i64, ptr %headersize, align 8
  %conv24 = trunc i64 %12 to i8
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  store i8 %conv24, ptr %arrayidx25, align 1
  %13 = lshr i64 %12, 8
  %conv28 = trunc i64 %13 to i8
  %arrayidx29 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  store i8 %conv28, ptr %arrayidx29, align 1
  %14 = load i64, ptr %headersize, align 8
  %15 = lshr i64 %14, 16
  %conv32 = trunc i64 %15 to i8
  %arrayidx33 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  store i8 %conv32, ptr %arrayidx33, align 1
  %16 = lshr i64 %14, 24
  %conv36 = trunc i64 %16 to i8
  %arrayidx37 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  store i8 %conv36, ptr %arrayidx37, align 1
  store i8 40, ptr %bmpinfoheader, align 1
  %arrayidx39 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 1
  store i8 0, ptr %arrayidx39, align 1
  %17 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 26
  %18 = load i32, ptr %output_width, align 8
  %conv41 = trunc i32 %18 to i8
  %arrayidx42 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 4
  store i8 %conv41, ptr %arrayidx42, align 1
  %shr44 = lshr i32 %18, 8
  %conv46 = trunc i32 %shr44 to i8
  %arrayidx47 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 5
  store i8 %conv46, ptr %arrayidx47, align 1
  %19 = load ptr, ptr %cinfo.addr, align 8
  %output_width48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 26
  %20 = load i32, ptr %output_width48, align 8
  %shr49 = lshr i32 %20, 16
  %conv51 = trunc i32 %shr49 to i8
  %arrayidx52 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 6
  store i8 %conv51, ptr %arrayidx52, align 1
  %21 = load ptr, ptr %cinfo.addr, align 8
  %output_width53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 26
  %22 = load i32, ptr %output_width53, align 8
  %shr54 = lshr i32 %22, 24
  %conv56 = trunc i32 %shr54 to i8
  %arrayidx57 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 7
  store i8 %conv56, ptr %arrayidx57, align 1
  %23 = load ptr, ptr %cinfo.addr, align 8
  %output_height58 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 27
  %24 = load i32, ptr %output_height58, align 4
  %conv60 = trunc i32 %24 to i8
  %arrayidx61 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 8
  store i8 %conv60, ptr %arrayidx61, align 1
  %shr63 = lshr i32 %24, 8
  %conv65 = trunc i32 %shr63 to i8
  %arrayidx66 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 9
  store i8 %conv65, ptr %arrayidx66, align 1
  %25 = load ptr, ptr %cinfo.addr, align 8
  %output_height67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 27
  %26 = load i32, ptr %output_height67, align 4
  %shr68 = lshr i32 %26, 16
  %conv70 = trunc i32 %shr68 to i8
  %arrayidx71 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 10
  store i8 %conv70, ptr %arrayidx71, align 1
  %27 = load ptr, ptr %cinfo.addr, align 8
  %output_height72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 27
  %28 = load i32, ptr %output_height72, align 4
  %shr73 = lshr i32 %28, 24
  %conv75 = trunc i32 %shr73 to i8
  %arrayidx76 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 11
  store i8 %conv75, ptr %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 12
  store i8 1, ptr %arrayidx77, align 1
  %arrayidx78 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 13
  store i8 0, ptr %arrayidx78, align 1
  %29 = load i32, ptr %bits_per_pixel, align 4
  %conv80 = trunc i32 %29 to i8
  %arrayidx81 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 14
  store i8 %conv80, ptr %arrayidx81, align 1
  %30 = lshr i32 %29, 8
  %conv84 = trunc i32 %30 to i8
  %arrayidx85 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 15
  store i8 %conv84, ptr %arrayidx85, align 1
  %31 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 51
  %32 = load i8, ptr %density_unit, align 8
  %cmp87 = icmp eq i8 %32, 2
  br i1 %cmp87, label %if.then89, label %if.end150

if.then89:                                        ; preds = %if.end3
  %33 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 52
  %34 = load i16, ptr %X_density, align 2
  %35 = trunc i16 %34 to i8
  %conv94 = mul i8 %35, 100
  %arrayidx95 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 24
  store i8 %conv94, ptr %arrayidx95, align 1
  %36 = load ptr, ptr %cinfo.addr, align 8
  %X_density96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 52
  %37 = load i16, ptr %X_density96, align 2
  %conv97 = zext i16 %37 to i64
  %mul98 = mul nuw nsw i64 %conv97, 100
  %38 = lshr i64 %mul98, 8
  %conv102 = trunc i64 %38 to i8
  %arrayidx103 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 25
  store i8 %conv102, ptr %arrayidx103, align 1
  %39 = load ptr, ptr %cinfo.addr, align 8
  %X_density104 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 52
  %40 = load i16, ptr %X_density104, align 2
  %conv105 = zext i16 %40 to i64
  %mul106 = mul nuw nsw i64 %conv105, 100
  %41 = lshr i64 %mul106, 16
  %conv110 = trunc i64 %41 to i8
  %arrayidx111 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 26
  store i8 %conv110, ptr %arrayidx111, align 1
  %arrayidx119 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 27
  store i8 0, ptr %arrayidx119, align 1
  %42 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i64 0, i32 53
  %43 = load i16, ptr %Y_density, align 4
  %44 = trunc i16 %43 to i8
  %conv124 = mul i8 %44, 100
  %arrayidx125 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 28
  store i8 %conv124, ptr %arrayidx125, align 1
  %45 = load ptr, ptr %cinfo.addr, align 8
  %Y_density126 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 53
  %46 = load i16, ptr %Y_density126, align 4
  %conv127 = zext i16 %46 to i64
  %mul128 = mul nuw nsw i64 %conv127, 100
  %47 = lshr i64 %mul128, 8
  %conv132 = trunc i64 %47 to i8
  %arrayidx133 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 29
  store i8 %conv132, ptr %arrayidx133, align 1
  %48 = load ptr, ptr %cinfo.addr, align 8
  %Y_density134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 53
  %49 = load i16, ptr %Y_density134, align 4
  %conv135 = zext i16 %49 to i64
  %mul136 = mul nuw nsw i64 %conv135, 100
  %50 = lshr i64 %mul136, 16
  %conv140 = trunc i64 %50 to i8
  %arrayidx141 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 30
  store i8 %conv140, ptr %arrayidx141, align 1
  %arrayidx149 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 31
  store i8 0, ptr %arrayidx149, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.then89, %if.end3
  %51 = load i32, ptr %cmap_entries, align 4
  %conv152 = trunc i32 %51 to i8
  %arrayidx153 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 32
  store i8 %conv152, ptr %arrayidx153, align 1
  %52 = lshr i32 %51, 8
  %conv156 = trunc i32 %52 to i8
  %arrayidx157 = getelementptr inbounds [40 x i8], ptr %bmpinfoheader, i64 0, i64 33
  store i8 %conv156, ptr %arrayidx157, align 1
  %53 = load ptr, ptr %dest.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %53, i64 0, i32 3
  %54 = load ptr, ptr %output_file, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef nonnull %bmpfileheader, i64 noundef 1, i64 noundef 14, ptr noundef %54) #3
  %cmp159.not = icmp eq i64 %call, 14
  br i1 %cmp159.not, label %if.end163, label %if.then161

if.then161:                                       ; preds = %if.end150
  %55 = load ptr, ptr %cinfo.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %57 = load ptr, ptr %55, align 8
  %58 = load ptr, ptr %57, align 8
  call void %58(ptr noundef nonnull %55) #3
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end150
  %59 = load ptr, ptr %dest.addr, align 8
  %output_file166 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %59, i64 0, i32 3
  %60 = load ptr, ptr %output_file166, align 8
  %call167 = call i64 @"\01_fwrite"(ptr noundef nonnull %bmpinfoheader, i64 noundef 1, i64 noundef 40, ptr noundef %60) #3
  %cmp168.not = icmp eq i64 %call167, 40
  br i1 %cmp168.not, label %if.end175, label %if.then170

if.then170:                                       ; preds = %if.end163
  %61 = load ptr, ptr %cinfo.addr, align 8
  %62 = load ptr, ptr %61, align 8
  %msg_code172 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 36, ptr %msg_code172, align 8
  %63 = load ptr, ptr %61, align 8
  %64 = load ptr, ptr %63, align 8
  call void %64(ptr noundef nonnull %61) #3
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %if.end163
  %65 = load i32, ptr %cmap_entries, align 4
  %cmp176 = icmp sgt i32 %65, 0
  br i1 %cmp176, label %if.then178, label %if.end179

if.then178:                                       ; preds = %if.end175
  %66 = load ptr, ptr %cinfo.addr, align 8
  %67 = load ptr, ptr %dest.addr, align 8
  %68 = load i32, ptr %cmap_entries, align 4
  call void @write_colormap(ptr noundef %66, ptr noundef %67, i32 noundef %68, i32 noundef 4)
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
  %colormap1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 32
  %0 = load ptr, ptr %colormap1, align 8
  store ptr %0, ptr %colormap, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 31
  %2 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %2, ptr %num_colors, align 4
  %3 = load ptr, ptr %dest.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %output_file, align 8
  store ptr %4, ptr %outfile, align 8
  %5 = load ptr, ptr %colormap, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %for.cond49, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 28
  %7 = load i32, ptr %out_color_components, align 8
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %for.cond, label %for.cond20

for.cond:                                         ; preds = %if.then, %for.inc
  %storemerge2 = phi i32 [ %inc, %for.inc ], [ 0, %if.then ]
  store i32 %storemerge2, ptr %i, align 4
  %8 = load i32, ptr %num_colors, align 4
  %cmp4 = icmp slt i32 %storemerge2, %8
  br i1 %cmp4, label %for.body, label %if.end64

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %12 to i32
  %13 = load ptr, ptr %outfile, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %13) #3
  %14 = load ptr, ptr %colormap, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx6, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i64 %idxprom7
  %17 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %18 = load ptr, ptr %outfile, align 8
  %call10 = call i32 @putc(i32 noundef %conv9, ptr noundef %18) #3
  %19 = load ptr, ptr %colormap, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %20, i64 %idxprom12
  %22 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %22 to i32
  %23 = load ptr, ptr %outfile, align 8
  %call15 = call i32 @putc(i32 noundef %conv14, ptr noundef %23) #3
  %24 = load i32, ptr %map_entry_size.addr, align 4
  %cmp16 = icmp eq i32 %24, 4
  br i1 %cmp16, label %if.then18, label %for.inc

if.then18:                                        ; preds = %for.body
  %25 = load ptr, ptr %outfile, align 8
  %call19 = call i32 @putc(i32 noundef 0, ptr noundef %25) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then18
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  br label %for.cond, !llvm.loop !14

for.cond20:                                       ; preds = %if.then, %for.inc44
  %storemerge1 = phi i32 [ %inc45, %for.inc44 ], [ 0, %if.then ]
  store i32 %storemerge1, ptr %i, align 4
  %27 = load i32, ptr %num_colors, align 4
  %cmp21 = icmp slt i32 %storemerge1, %27
  br i1 %cmp21, label %for.body23, label %if.end64

for.body23:                                       ; preds = %for.cond20
  %28 = load ptr, ptr %colormap, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %29, i64 %idxprom25
  %31 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %31 to i32
  %32 = load ptr, ptr %outfile, align 8
  %call28 = call i32 @putc(i32 noundef %conv27, ptr noundef %32) #3
  %33 = load ptr, ptr %colormap, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %34, i64 %idxprom30
  %36 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %36 to i32
  %37 = load ptr, ptr %outfile, align 8
  %call33 = call i32 @putc(i32 noundef %conv32, ptr noundef %37) #3
  %38 = load ptr, ptr %colormap, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %39, i64 %idxprom35
  %41 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %41 to i32
  %42 = load ptr, ptr %outfile, align 8
  %call38 = call i32 @putc(i32 noundef %conv37, ptr noundef %42) #3
  %43 = load i32, ptr %map_entry_size.addr, align 4
  %cmp39 = icmp eq i32 %43, 4
  br i1 %cmp39, label %if.then41, label %for.inc44

if.then41:                                        ; preds = %for.body23
  %44 = load ptr, ptr %outfile, align 8
  %call42 = call i32 @putc(i32 noundef 0, ptr noundef %44) #3
  br label %for.inc44

for.inc44:                                        ; preds = %for.body23, %if.then41
  %45 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %45, 1
  br label %for.cond20, !llvm.loop !15

for.cond49:                                       ; preds = %entry, %for.inc61
  %storemerge = phi i32 [ %inc62, %for.inc61 ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %cmp50 = icmp slt i32 %storemerge, 256
  br i1 %cmp50, label %for.body52, label %if.end64

for.body52:                                       ; preds = %for.cond49
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %outfile, align 8
  %call53 = call i32 @putc(i32 noundef %46, ptr noundef %47) #3
  %call54 = call i32 @putc(i32 noundef %46, ptr noundef %47) #3
  %call55 = call i32 @putc(i32 noundef %46, ptr noundef %47) #3
  %48 = load i32, ptr %map_entry_size.addr, align 4
  %cmp56 = icmp eq i32 %48, 4
  br i1 %cmp56, label %if.then58, label %for.inc61

if.then58:                                        ; preds = %for.body52
  %49 = load ptr, ptr %outfile, align 8
  %call59 = call i32 @putc(i32 noundef 0, ptr noundef %49) #3
  br label %for.inc61

for.inc61:                                        ; preds = %for.body52, %if.then58
  %50 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %50, 1
  br label %for.cond49, !llvm.loop !16

if.end64:                                         ; preds = %for.cond49, %for.cond, %for.cond20
  %51 = load i32, ptr %i, align 4
  %52 = load i32, ptr %map_colors.addr, align 4
  %cmp65 = icmp sgt i32 %51, %52
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end64
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 5
  store i32 1039, ptr %msg_code, align 8
  %55 = load i32, ptr %i, align 4
  %56 = load ptr, ptr %53, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %55, ptr %msg_parm, align 4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull %57) #3
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end64
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc84, %if.end71
  %60 = load i32, ptr %i, align 4
  %61 = load i32, ptr %map_colors.addr, align 4
  %cmp73 = icmp slt i32 %60, %61
  br i1 %cmp73, label %for.body75, label %for.end86

for.body75:                                       ; preds = %for.cond72
  %62 = load ptr, ptr %outfile, align 8
  %call76 = call i32 @putc(i32 noundef 0, ptr noundef %62) #3
  %call77 = call i32 @putc(i32 noundef 0, ptr noundef %62) #3
  %call78 = call i32 @putc(i32 noundef 0, ptr noundef %62) #3
  %63 = load i32, ptr %map_entry_size.addr, align 4
  %cmp79 = icmp eq i32 %63, 4
  br i1 %cmp79, label %if.then81, label %for.inc84

if.then81:                                        ; preds = %for.body75
  %64 = load ptr, ptr %outfile, align 8
  %call82 = call i32 @putc(i32 noundef 0, ptr noundef %64) #3
  br label %for.inc84

for.inc84:                                        ; preds = %for.body75, %if.then81
  %65 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %65, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond72, !llvm.loop !17

for.end86:                                        ; preds = %for.cond72
  ret void
}

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
