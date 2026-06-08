; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_wrgif.prepared.ll'
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
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 384) #5
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
  call void %9(ptr noundef nonnull %6) #5
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
  call void @jpeg_calc_output_dimensions(ptr noundef %17) #5
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
  call void %22(ptr noundef nonnull %19) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15
  %23 = load ptr, ptr %cinfo.addr, align 8
  %mem23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %mem23, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %24, i64 0, i32 2
  %25 = load ptr, ptr %alloc_sarray, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 26
  %26 = load i32, ptr %output_width, align 8
  %call24 = call ptr %25(ptr noundef %23, i32 noundef 1, i32 noundef %26, i32 noundef 1) #5
  %27 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %27, i64 0, i32 4
  store ptr %call24, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %27, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %mem27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %mem27, align 8
  %30 = load ptr, ptr %29, align 8
  %call29 = call ptr %30(ptr noundef %28, i32 noundef 1, i64 noundef 10006) #5
  %31 = load ptr, ptr %dest, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, ptr %31, i64 0, i32 12
  store ptr %call29, ptr %hash_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %mem30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %mem30, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %alloc_large, align 8
  %call31 = call ptr %34(ptr noundef %32, i32 noundef 1, i64 noundef 40024) #5
  %35 = load ptr, ptr %dest, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, ptr %35, i64 0, i32 13
  store ptr %call31, ptr %hash_value, align 8
  ret ptr %35
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_output_gif(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr.i1 = alloca ptr, align 8
  %num_colors.addr.i2 = alloca i32, align 4
  %colormap.addr.i3 = alloca ptr, align 8
  %BitsPerPixel.i4 = alloca i32, align 4
  %ColorMapSize.i5 = alloca i32, align 4
  %InitCodeSize.i6 = alloca i32, align 4
  %cshift.i8 = alloca i32, align 4
  %i.i9 = alloca i32, align 4
  %dinfo.addr.i = alloca ptr, align 8
  %num_colors.addr.i = alloca i32, align 4
  %colormap.addr.i = alloca ptr, align 8
  %BitsPerPixel.i = alloca i32, align 4
  %ColorMapSize.i = alloca i32, align 4
  %InitCodeSize.i = alloca i32, align 4
  %cshift.i = alloca i32, align 4
  %i.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_colors.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %colormap.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BitsPerPixel.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ColorMapSize.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %InitCodeSize.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cshift.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store ptr %1, ptr %dinfo.addr.i, align 8
  store i32 %3, ptr %num_colors.addr.i, align 4
  store ptr %4, ptr %colormap.addr.i, align 8
  %cinfo.i = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %cinfo.i, align 8
  %data_precision.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 42
  %6 = load i32, ptr %data_precision.i, align 8
  %sub.i = add nsw i32 %6, -8
  store i32 %sub.i, ptr %cshift.i, align 4
  %7 = load i32, ptr %num_colors.addr.i, align 4
  %cmp.i = icmp sgt i32 %7, 256
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %8 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo1.i = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %cinfo1.i, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 1039, ptr %msg_code.i, align 8
  %11 = load i32, ptr %num_colors.addr.i, align 4
  %12 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo2.i = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %cinfo2.i, align 8
  %14 = load ptr, ptr %13, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6
  store i32 %11, ptr %msg_parm.i, align 4
  %cinfo4.i = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %cinfo4.i, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo6.i = getelementptr inbounds %struct.gif_dest_struct, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %cinfo6.i, align 8
  call void %17(ptr noundef %19) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end.i
  %storemerge121 = phi i32 [ 1, %if.end.i ], [ %inc.i, %while.body.i ]
  store i32 %storemerge121, ptr %BitsPerPixel.i, align 4
  %20 = load i32, ptr %num_colors.addr.i, align 4
  %shl.i = shl i32 1, %storemerge121
  %cmp7.i = icmp sgt i32 %20, %shl.i
  br i1 %cmp7.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %21 = load i32, ptr %BitsPerPixel.i, align 4
  %inc.i = add nsw i32 %21, 1
  br label %while.cond.i, !llvm.loop !6

while.end.i:                                      ; preds = %while.cond.i
  %22 = load i32, ptr %BitsPerPixel.i, align 4
  %shl8.i = shl i32 1, %22
  store i32 %shl8.i, ptr %ColorMapSize.i, align 4
  %cmp9.i = icmp slt i32 %22, 2
  %23 = load i32, ptr %BitsPerPixel.i, align 4
  %storemerge122 = select i1 %cmp9.i, i32 2, i32 %23
  store i32 %storemerge122, ptr %InitCodeSize.i, align 4
  %24 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %24, i64 0, i32 3
  %25 = load ptr, ptr %output_file.i, align 8
  %call.i = call i32 @putc(i32 noundef 71, ptr noundef %25) #5
  %output_file13.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %output_file13.i, align 8
  %call14.i = call i32 @putc(i32 noundef 73, ptr noundef %26) #5
  %27 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file16.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %27, i64 0, i32 3
  %28 = load ptr, ptr %output_file16.i, align 8
  %call17.i = call i32 @putc(i32 noundef 70, ptr noundef %28) #5
  %output_file19.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %output_file19.i, align 8
  %call20.i = call i32 @putc(i32 noundef 56, ptr noundef %29) #5
  %30 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file22.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %30, i64 0, i32 3
  %31 = load ptr, ptr %output_file22.i, align 8
  %call23.i = call i32 @putc(i32 noundef 55, ptr noundef %31) #5
  %output_file25.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %output_file25.i, align 8
  %call26.i = call i32 @putc(i32 noundef 97, ptr noundef %32) #5
  %33 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo27.i = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %cinfo27.i, align 8
  %output_width.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 26
  %35 = load i32, ptr %output_width.i, align 8
  call void @put_word(ptr noundef %33, i32 noundef %35)
  %cinfo28.i = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %cinfo28.i, align 8
  %output_height.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 27
  %37 = load i32, ptr %output_height.i, align 4
  call void @put_word(ptr noundef %33, i32 noundef %37)
  %38 = load i32, ptr %BitsPerPixel.i, align 4
  %sub29.i = shl i32 %38, 4
  %shl30.i = add i32 %sub29.i, -16
  %sub31.i = add nsw i32 %38, -1
  %or.i = or i32 %shl30.i, %sub31.i
  %or32.i = or i32 %or.i, 128
  %39 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file34.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %39, i64 0, i32 3
  %40 = load ptr, ptr %output_file34.i, align 8
  %call35.i = call i32 @putc(i32 noundef %or32.i, ptr noundef %40) #5
  %output_file37.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %output_file37.i, align 8
  %call38.i = call i32 @putc(i32 noundef 0, ptr noundef %41) #5
  %42 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file40.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %42, i64 0, i32 3
  %43 = load ptr, ptr %output_file40.i, align 8
  %call41.i = call i32 @putc(i32 noundef 0, ptr noundef %43) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end84.i, %while.end.i
  %storemerge123 = phi i32 [ 0, %while.end.i ], [ %inc85.i, %if.end84.i ]
  store i32 %storemerge123, ptr %i.i, align 4
  %44 = load i32, ptr %ColorMapSize.i, align 4
  %cmp42.i = icmp slt i32 %storemerge123, %44
  br i1 %cmp42.i, label %for.body.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %45 = load i32, ptr %i.i, align 4
  %46 = load i32, ptr %num_colors.addr.i, align 4
  %cmp43.i = icmp slt i32 %45, %46
  br i1 %cmp43.i, label %if.then44.i, label %if.else83.i

if.then44.i:                                      ; preds = %for.body.i
  %47 = load ptr, ptr %colormap.addr.i, align 8
  %cmp45.i.not = icmp eq ptr %47, null
  br i1 %cmp45.i.not, label %if.else78.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.then44.i
  %48 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo47.i = getelementptr inbounds %struct.gif_dest_struct, ptr %48, i64 0, i32 1
  %49 = load ptr, ptr %cinfo47.i, align 8
  %out_color_space.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i64 0, i32 10
  %50 = load i32, ptr %out_color_space.i, align 8
  %cmp48.i = icmp eq i32 %50, 2
  br i1 %cmp48.i, label %if.then49.i, label %if.else71.i

if.then49.i:                                      ; preds = %if.then46.i
  %51 = load ptr, ptr %colormap.addr.i, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load i32, ptr %i.i, align 4
  %idxprom.i = sext i32 %53 to i64
  %arrayidx51.i = getelementptr inbounds i8, ptr %52, i64 %idxprom.i
  %54 = load i8, ptr %arrayidx51.i, align 1
  %conv.i = zext i8 %54 to i32
  %55 = load i32, ptr %cshift.i, align 4
  %shr.i = lshr i32 %conv.i, %55
  %56 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file53.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %56, i64 0, i32 3
  %57 = load ptr, ptr %output_file53.i, align 8
  %call54.i = call i32 @putc(i32 noundef %shr.i, ptr noundef %57) #5
  %58 = load ptr, ptr %colormap.addr.i, align 8
  %arrayidx55.i = getelementptr inbounds ptr, ptr %58, i64 1
  %59 = load ptr, ptr %arrayidx55.i, align 8
  %60 = load i32, ptr %i.i, align 4
  %idxprom56.i = sext i32 %60 to i64
  %arrayidx57.i = getelementptr inbounds i8, ptr %59, i64 %idxprom56.i
  %61 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = zext i8 %61 to i32
  %62 = load i32, ptr %cshift.i, align 4
  %shr59.i = lshr i32 %conv58.i, %62
  %63 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file61.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %63, i64 0, i32 3
  %64 = load ptr, ptr %output_file61.i, align 8
  %call62.i = call i32 @putc(i32 noundef %shr59.i, ptr noundef %64) #5
  %65 = load ptr, ptr %colormap.addr.i, align 8
  %arrayidx63.i = getelementptr inbounds ptr, ptr %65, i64 2
  %66 = load ptr, ptr %arrayidx63.i, align 8
  %67 = load i32, ptr %i.i, align 4
  %idxprom64.i = sext i32 %67 to i64
  %arrayidx65.i = getelementptr inbounds i8, ptr %66, i64 %idxprom64.i
  %68 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %68 to i32
  %69 = load i32, ptr %cshift.i, align 4
  %shr67.i = lshr i32 %conv66.i, %69
  %70 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file69.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %70, i64 0, i32 3
  %71 = load ptr, ptr %output_file69.i, align 8
  %call70.i = call i32 @putc(i32 noundef %shr67.i, ptr noundef %71) #5
  br label %if.end84.i

if.else71.i:                                      ; preds = %if.then46.i
  %72 = load ptr, ptr %dinfo.addr.i, align 8
  %73 = load ptr, ptr %colormap.addr.i, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = load i32, ptr %i.i, align 4
  %idxprom73.i = sext i32 %75 to i64
  %arrayidx74.i = getelementptr inbounds i8, ptr %74, i64 %idxprom73.i
  %76 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %76 to i32
  %77 = load i32, ptr %cshift.i, align 4
  %shr76.i = lshr i32 %conv75.i, %77
  call void @put_3bytes(ptr noundef %72, i32 noundef %shr76.i)
  br label %if.end84.i

if.else78.i:                                      ; preds = %if.then44.i
  %78 = load ptr, ptr %dinfo.addr.i, align 8
  %79 = load i32, ptr %i.i, align 4
  %mul.i = mul nsw i32 %79, 255
  %80 = load i32, ptr %num_colors.addr.i, align 4
  %sub79.i = add nsw i32 %80, -1
  %div.i = sdiv i32 %sub79.i, 2
  %add.i = add nsw i32 %mul.i, %div.i
  %sub80.i = add nsw i32 %80, -1
  %div81.i = sdiv i32 %add.i, %sub80.i
  call void @put_3bytes(ptr noundef %78, i32 noundef %div81.i)
  br label %if.end84.i

if.else83.i:                                      ; preds = %for.body.i
  %81 = load ptr, ptr %dinfo.addr.i, align 8
  call void @put_3bytes(ptr noundef %81, i32 noundef 0)
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.else78.i, %if.else71.i, %if.then49.i, %if.else83.i
  %82 = load i32, ptr %i.i, align 4
  %inc85.i = add nsw i32 %82, 1
  br label %for.cond.i, !llvm.loop !8

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_0.exit: ; preds = %for.cond.i
  %83 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file87.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %83, i64 0, i32 3
  %84 = load ptr, ptr %output_file87.i, align 8
  %call88.i = call i32 @putc(i32 noundef 44, ptr noundef %84) #5
  call void @put_word(ptr noundef %83, i32 noundef 0)
  call void @put_word(ptr noundef %83, i32 noundef 0)
  %cinfo89.i = getelementptr inbounds %struct.gif_dest_struct, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %cinfo89.i, align 8
  %output_width90.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i64 0, i32 26
  %86 = load i32, ptr %output_width90.i, align 8
  call void @put_word(ptr noundef %83, i32 noundef %86)
  %87 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo91.i = getelementptr inbounds %struct.gif_dest_struct, ptr %87, i64 0, i32 1
  %88 = load ptr, ptr %cinfo91.i, align 8
  %output_height92.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i64 0, i32 27
  %89 = load i32, ptr %output_height92.i, align 4
  call void @put_word(ptr noundef %87, i32 noundef %89)
  %output_file94.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %87, i64 0, i32 3
  %90 = load ptr, ptr %output_file94.i, align 8
  %call95.i = call i32 @putc(i32 noundef 0, ptr noundef %90) #5
  %91 = load i32, ptr %InitCodeSize.i, align 4
  %92 = load ptr, ptr %dinfo.addr.i, align 8
  %output_file97.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %92, i64 0, i32 3
  %93 = load ptr, ptr %output_file97.i, align 8
  %call98.i = call i32 @putc(i32 noundef %91, ptr noundef %93) #5
  %add99.i = add nsw i32 %91, 1
  call void @compress_init(ptr noundef %92, i32 noundef %add99.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_colors.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %colormap.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BitsPerPixel.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ColorMapSize.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %InitCodeSize.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cshift.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  br label %if.end

if.else:                                          ; preds = %entry
  %94 = load ptr, ptr %dest, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_colors.addr.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %colormap.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BitsPerPixel.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ColorMapSize.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %InitCodeSize.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cshift.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i9)
  store ptr %94, ptr %dinfo.addr.i1, align 8
  store i32 256, ptr %num_colors.addr.i2, align 4
  store ptr null, ptr %colormap.addr.i3, align 8
  %cinfo.i10 = getelementptr inbounds %struct.gif_dest_struct, ptr %94, i64 0, i32 1
  %95 = load ptr, ptr %cinfo.i10, align 8
  %data_precision.i11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %95, i64 0, i32 42
  %96 = load i32, ptr %data_precision.i11, align 8
  %sub.i12 = add nsw i32 %96, -8
  store i32 %sub.i12, ptr %cshift.i8, align 4
  %97 = load i32, ptr %num_colors.addr.i2, align 4
  %cmp.i13 = icmp sgt i32 %97, 256
  br i1 %cmp.i13, label %if.then.i20, label %if.end.i21

if.then.i20:                                      ; preds = %if.else
  %98 = load ptr, ptr %dinfo.addr.i1, align 8
  %cinfo1.i14 = getelementptr inbounds %struct.gif_dest_struct, ptr %98, i64 0, i32 1
  %99 = load ptr, ptr %cinfo1.i14, align 8
  %100 = load ptr, ptr %99, align 8
  %msg_code.i15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 5
  store i32 1039, ptr %msg_code.i15, align 8
  %101 = load i32, ptr %num_colors.addr.i2, align 4
  %102 = load ptr, ptr %dinfo.addr.i1, align 8
  %cinfo2.i16 = getelementptr inbounds %struct.gif_dest_struct, ptr %102, i64 0, i32 1
  %103 = load ptr, ptr %cinfo2.i16, align 8
  %104 = load ptr, ptr %103, align 8
  %msg_parm.i17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %104, i64 0, i32 6
  store i32 %101, ptr %msg_parm.i17, align 4
  %cinfo4.i18 = getelementptr inbounds %struct.gif_dest_struct, ptr %102, i64 0, i32 1
  %105 = load ptr, ptr %cinfo4.i18, align 8
  %106 = load ptr, ptr %105, align 8
  %107 = load ptr, ptr %106, align 8
  %108 = load ptr, ptr %dinfo.addr.i1, align 8
  %cinfo6.i19 = getelementptr inbounds %struct.gif_dest_struct, ptr %108, i64 0, i32 1
  %109 = load ptr, ptr %cinfo6.i19, align 8
  call void %107(ptr noundef %109) #5
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i20, %if.else
  br label %while.cond.i24

while.cond.i24:                                   ; preds = %while.body.i26, %if.end.i21
  %storemerge = phi i32 [ 1, %if.end.i21 ], [ %inc.i25, %while.body.i26 ]
  store i32 %storemerge, ptr %BitsPerPixel.i4, align 4
  %110 = load i32, ptr %num_colors.addr.i2, align 4
  %shl.i22 = shl i32 1, %storemerge
  %cmp7.i23 = icmp sgt i32 %110, %shl.i22
  br i1 %cmp7.i23, label %while.body.i26, label %while.end.i29

while.body.i26:                                   ; preds = %while.cond.i24
  %111 = load i32, ptr %BitsPerPixel.i4, align 4
  %inc.i25 = add nsw i32 %111, 1
  br label %while.cond.i24, !llvm.loop !6

while.end.i29:                                    ; preds = %while.cond.i24
  %112 = load i32, ptr %BitsPerPixel.i4, align 4
  %shl8.i27 = shl i32 1, %112
  store i32 %shl8.i27, ptr %ColorMapSize.i5, align 4
  %cmp9.i28 = icmp slt i32 %112, 2
  %113 = load i32, ptr %BitsPerPixel.i4, align 4
  %storemerge119 = select i1 %cmp9.i28, i32 2, i32 %113
  store i32 %storemerge119, ptr %InitCodeSize.i6, align 4
  %114 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file.i32 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %114, i64 0, i32 3
  %115 = load ptr, ptr %output_file.i32, align 8
  %call.i33 = call i32 @putc(i32 noundef 71, ptr noundef %115) #5
  %output_file13.i34 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %output_file13.i34, align 8
  %call14.i35 = call i32 @putc(i32 noundef 73, ptr noundef %116) #5
  %117 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file16.i36 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %117, i64 0, i32 3
  %118 = load ptr, ptr %output_file16.i36, align 8
  %call17.i37 = call i32 @putc(i32 noundef 70, ptr noundef %118) #5
  %output_file19.i38 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %output_file19.i38, align 8
  %call20.i39 = call i32 @putc(i32 noundef 56, ptr noundef %119) #5
  %120 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file22.i40 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %120, i64 0, i32 3
  %121 = load ptr, ptr %output_file22.i40, align 8
  %call23.i41 = call i32 @putc(i32 noundef 55, ptr noundef %121) #5
  %output_file25.i42 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %output_file25.i42, align 8
  %call26.i43 = call i32 @putc(i32 noundef 97, ptr noundef %122) #5
  %123 = load ptr, ptr %dinfo.addr.i1, align 8
  %cinfo27.i44 = getelementptr inbounds %struct.gif_dest_struct, ptr %123, i64 0, i32 1
  %124 = load ptr, ptr %cinfo27.i44, align 8
  %output_width.i45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %124, i64 0, i32 26
  %125 = load i32, ptr %output_width.i45, align 8
  call void @put_word(ptr noundef %123, i32 noundef %125)
  %cinfo28.i46 = getelementptr inbounds %struct.gif_dest_struct, ptr %123, i64 0, i32 1
  %126 = load ptr, ptr %cinfo28.i46, align 8
  %output_height.i47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %126, i64 0, i32 27
  %127 = load i32, ptr %output_height.i47, align 4
  call void @put_word(ptr noundef %123, i32 noundef %127)
  %128 = load i32, ptr %BitsPerPixel.i4, align 4
  %sub29.i48 = shl i32 %128, 4
  %shl30.i49 = add i32 %sub29.i48, -16
  %sub31.i51 = add nsw i32 %128, -1
  %or.i50 = or i32 %shl30.i49, %sub31.i51
  %or32.i52 = or i32 %or.i50, 128
  %129 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file34.i53 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %129, i64 0, i32 3
  %130 = load ptr, ptr %output_file34.i53, align 8
  %call35.i54 = call i32 @putc(i32 noundef %or32.i52, ptr noundef %130) #5
  %output_file37.i55 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %output_file37.i55, align 8
  %call38.i56 = call i32 @putc(i32 noundef 0, ptr noundef %131) #5
  %132 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file40.i57 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %132, i64 0, i32 3
  %133 = load ptr, ptr %output_file40.i57, align 8
  %call41.i58 = call i32 @putc(i32 noundef 0, ptr noundef %133) #5
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %if.end84.i106, %while.end.i29
  %storemerge120 = phi i32 [ 0, %while.end.i29 ], [ %inc85.i107, %if.end84.i106 ]
  store i32 %storemerge120, ptr %i.i9, align 4
  %134 = load i32, ptr %ColorMapSize.i5, align 4
  %cmp42.i60 = icmp slt i32 %storemerge120, %134
  br i1 %cmp42.i60, label %for.body.i63, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_1.exit

for.body.i63:                                     ; preds = %for.cond.i61
  %135 = load i32, ptr %i.i9, align 4
  %136 = load i32, ptr %num_colors.addr.i2, align 4
  %cmp43.i62 = icmp slt i32 %135, %136
  br i1 %cmp43.i62, label %if.then44.i65, label %if.else83.i105

if.then44.i65:                                    ; preds = %for.body.i63
  %137 = load ptr, ptr %colormap.addr.i3, align 8
  %cmp45.i64.not = icmp eq ptr %137, null
  br i1 %cmp45.i64.not, label %if.else78.i103, label %if.then46.i69

if.then46.i69:                                    ; preds = %if.then44.i65
  %138 = load ptr, ptr %dinfo.addr.i1, align 8
  %cinfo47.i66 = getelementptr inbounds %struct.gif_dest_struct, ptr %138, i64 0, i32 1
  %139 = load ptr, ptr %cinfo47.i66, align 8
  %out_color_space.i67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %139, i64 0, i32 10
  %140 = load i32, ptr %out_color_space.i67, align 8
  %cmp48.i68 = icmp eq i32 %140, 2
  br i1 %cmp48.i68, label %if.then49.i90, label %if.else71.i95

if.then49.i90:                                    ; preds = %if.then46.i69
  %141 = load ptr, ptr %colormap.addr.i3, align 8
  %142 = load ptr, ptr %141, align 8
  %143 = load i32, ptr %i.i9, align 4
  %idxprom.i70 = sext i32 %143 to i64
  %arrayidx51.i71 = getelementptr inbounds i8, ptr %142, i64 %idxprom.i70
  %144 = load i8, ptr %arrayidx51.i71, align 1
  %conv.i72 = zext i8 %144 to i32
  %145 = load i32, ptr %cshift.i8, align 4
  %shr.i73 = lshr i32 %conv.i72, %145
  %146 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file53.i74 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %146, i64 0, i32 3
  %147 = load ptr, ptr %output_file53.i74, align 8
  %call54.i75 = call i32 @putc(i32 noundef %shr.i73, ptr noundef %147) #5
  %148 = load ptr, ptr %colormap.addr.i3, align 8
  %arrayidx55.i76 = getelementptr inbounds ptr, ptr %148, i64 1
  %149 = load ptr, ptr %arrayidx55.i76, align 8
  %150 = load i32, ptr %i.i9, align 4
  %idxprom56.i77 = sext i32 %150 to i64
  %arrayidx57.i78 = getelementptr inbounds i8, ptr %149, i64 %idxprom56.i77
  %151 = load i8, ptr %arrayidx57.i78, align 1
  %conv58.i79 = zext i8 %151 to i32
  %152 = load i32, ptr %cshift.i8, align 4
  %shr59.i80 = lshr i32 %conv58.i79, %152
  %153 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file61.i81 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %153, i64 0, i32 3
  %154 = load ptr, ptr %output_file61.i81, align 8
  %call62.i82 = call i32 @putc(i32 noundef %shr59.i80, ptr noundef %154) #5
  %155 = load ptr, ptr %colormap.addr.i3, align 8
  %arrayidx63.i83 = getelementptr inbounds ptr, ptr %155, i64 2
  %156 = load ptr, ptr %arrayidx63.i83, align 8
  %157 = load i32, ptr %i.i9, align 4
  %idxprom64.i84 = sext i32 %157 to i64
  %arrayidx65.i85 = getelementptr inbounds i8, ptr %156, i64 %idxprom64.i84
  %158 = load i8, ptr %arrayidx65.i85, align 1
  %conv66.i86 = zext i8 %158 to i32
  %159 = load i32, ptr %cshift.i8, align 4
  %shr67.i87 = lshr i32 %conv66.i86, %159
  %160 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file69.i88 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %160, i64 0, i32 3
  %161 = load ptr, ptr %output_file69.i88, align 8
  %call70.i89 = call i32 @putc(i32 noundef %shr67.i87, ptr noundef %161) #5
  br label %if.end84.i106

if.else71.i95:                                    ; preds = %if.then46.i69
  %162 = load ptr, ptr %dinfo.addr.i1, align 8
  %163 = load ptr, ptr %colormap.addr.i3, align 8
  %164 = load ptr, ptr %163, align 8
  %165 = load i32, ptr %i.i9, align 4
  %idxprom73.i91 = sext i32 %165 to i64
  %arrayidx74.i92 = getelementptr inbounds i8, ptr %164, i64 %idxprom73.i91
  %166 = load i8, ptr %arrayidx74.i92, align 1
  %conv75.i93 = zext i8 %166 to i32
  %167 = load i32, ptr %cshift.i8, align 4
  %shr76.i94 = lshr i32 %conv75.i93, %167
  call void @put_3bytes(ptr noundef %162, i32 noundef %shr76.i94)
  br label %if.end84.i106

if.else78.i103:                                   ; preds = %if.then44.i65
  %168 = load ptr, ptr %dinfo.addr.i1, align 8
  %169 = load i32, ptr %i.i9, align 4
  %mul.i97 = mul nsw i32 %169, 255
  %170 = load i32, ptr %num_colors.addr.i2, align 4
  %sub79.i98 = add nsw i32 %170, -1
  %div.i99 = sdiv i32 %sub79.i98, 2
  %add.i100 = add nsw i32 %mul.i97, %div.i99
  %sub80.i101 = add nsw i32 %170, -1
  %div81.i102 = sdiv i32 %add.i100, %sub80.i101
  call void @put_3bytes(ptr noundef %168, i32 noundef %div81.i102)
  br label %if.end84.i106

if.else83.i105:                                   ; preds = %for.body.i63
  %171 = load ptr, ptr %dinfo.addr.i1, align 8
  call void @put_3bytes(ptr noundef %171, i32 noundef 0)
  br label %if.end84.i106

if.end84.i106:                                    ; preds = %if.else78.i103, %if.else71.i95, %if.then49.i90, %if.else83.i105
  %172 = load i32, ptr %i.i9, align 4
  %inc85.i107 = add nsw i32 %172, 1
  br label %for.cond.i61, !llvm.loop !8

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_1.exit: ; preds = %for.cond.i61
  %173 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file87.i108 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %173, i64 0, i32 3
  %174 = load ptr, ptr %output_file87.i108, align 8
  %call88.i109 = call i32 @putc(i32 noundef 44, ptr noundef %174) #5
  call void @put_word(ptr noundef %173, i32 noundef 0)
  call void @put_word(ptr noundef %173, i32 noundef 0)
  %cinfo89.i110 = getelementptr inbounds %struct.gif_dest_struct, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %cinfo89.i110, align 8
  %output_width90.i111 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %175, i64 0, i32 26
  %176 = load i32, ptr %output_width90.i111, align 8
  call void @put_word(ptr noundef %173, i32 noundef %176)
  %177 = load ptr, ptr %dinfo.addr.i1, align 8
  %cinfo91.i112 = getelementptr inbounds %struct.gif_dest_struct, ptr %177, i64 0, i32 1
  %178 = load ptr, ptr %cinfo91.i112, align 8
  %output_height92.i113 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %178, i64 0, i32 27
  %179 = load i32, ptr %output_height92.i113, align 4
  call void @put_word(ptr noundef %177, i32 noundef %179)
  %output_file94.i114 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %177, i64 0, i32 3
  %180 = load ptr, ptr %output_file94.i114, align 8
  %call95.i115 = call i32 @putc(i32 noundef 0, ptr noundef %180) #5
  %181 = load i32, ptr %InitCodeSize.i6, align 4
  %182 = load ptr, ptr %dinfo.addr.i1, align 8
  %output_file97.i116 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %182, i64 0, i32 3
  %183 = load ptr, ptr %output_file97.i116, align 8
  %call98.i117 = call i32 @putc(i32 noundef %181, ptr noundef %183) #5
  %add99.i118 = add nsw i32 %181, 1
  call void @compress_init(ptr noundef %182, i32 noundef %add99.i118)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_colors.addr.i2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %colormap.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BitsPerPixel.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ColorMapSize.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %InitCodeSize.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cshift.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i9)
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_1.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_0.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @put_pixel_rows(ptr noundef %cinfo, ptr noundef %dinfo, i32 noundef %rows_supplied) #0 {
entry:
  %dinfo.addr.i = alloca ptr, align 8
  %c.addr.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %disp.i = alloca i32, align 4
  %probe_value.i = alloca i64, align 8
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

for.cond:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit, %entry
  %storemerge = phi i32 [ %2, %entry ], [ %dec, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit ]
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %probe_value.i)
  store ptr %3, ptr %dinfo.addr.i, align 8
  store i32 %conv, ptr %c.addr.i, align 4
  %first_byte.i = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 8
  %6 = load i32, ptr %first_byte.i, align 8
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %7 = load i32, ptr %c.addr.i, align 4
  %conv.i = trunc i32 %7 to i16
  %8 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 7
  store i16 %conv.i, ptr %waiting_code.i, align 4
  %first_byte1.i = getelementptr inbounds %struct.gif_dest_struct, ptr %8, i64 0, i32 8
  store i32 0, ptr %first_byte1.i, align 8
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit

if.end.i:                                         ; preds = %for.body
  %9 = load i32, ptr %c.addr.i, align 4
  %shl.i = shl i32 %9, 4
  %10 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code2.i = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i64 0, i32 7
  %11 = load i16, ptr %waiting_code2.i, align 4
  %conv3.i = sext i16 %11 to i32
  %add.i = add nsw i32 %shl.i, %conv3.i
  store i32 %add.i, ptr %i.i, align 4
  %cmp.i = icmp sgt i32 %add.i, 5002
  br i1 %cmp.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  %12 = load i32, ptr %i.i, align 4
  %sub.i = add nsw i32 %12, -5003
  store i32 %sub.i, ptr %i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i
  %13 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code7.i = getelementptr inbounds %struct.gif_dest_struct, ptr %13, i64 0, i32 7
  %14 = load i16, ptr %waiting_code7.i, align 4
  %conv8.i = sext i16 %14 to i64
  %shl9.i = shl nsw i64 %conv8.i, 8
  %15 = load i32, ptr %c.addr.i, align 4
  %conv10.i = sext i32 %15 to i64
  %or.i = or i64 %shl9.i, %conv10.i
  store i64 %or.i, ptr %probe_value.i, align 8
  %16 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i64 0, i32 12
  %17 = load ptr, ptr %hash_code.i, align 8
  %18 = load i32, ptr %i.i, align 4
  %idxprom.i = sext i32 %18 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %17, i64 %idxprom.i
  %19 = load i16, ptr %arrayidx.i, align 2
  %cmp12.i.not = icmp eq i16 %19, 0
  br i1 %cmp12.i.not, label %if.end55.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end6.i
  %20 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_value.i = getelementptr inbounds %struct.gif_dest_struct, ptr %20, i64 0, i32 13
  %21 = load ptr, ptr %hash_value.i, align 8
  %22 = load i32, ptr %i.i, align 4
  %idxprom15.i = sext i32 %22 to i64
  %arrayidx16.i = getelementptr inbounds i64, ptr %21, i64 %idxprom15.i
  %23 = load i64, ptr %arrayidx16.i, align 8
  %24 = load i64, ptr %probe_value.i, align 8
  %cmp17.i = icmp eq i64 %23, %24
  br i1 %cmp17.i, label %if.then19.i, label %if.end24.i

if.then19.i:                                      ; preds = %if.then14.i
  %25 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_code20.i = getelementptr inbounds %struct.gif_dest_struct, ptr %25, i64 0, i32 12
  %26 = load ptr, ptr %hash_code20.i, align 8
  %27 = load i32, ptr %i.i, align 4
  %idxprom21.i = sext i32 %27 to i64
  %arrayidx22.i = getelementptr inbounds i16, ptr %26, i64 %idxprom21.i
  %28 = load i16, ptr %arrayidx22.i, align 2
  %29 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code23.i = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i64 0, i32 7
  store i16 %28, ptr %waiting_code23.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit

if.end24.i:                                       ; preds = %if.then14.i
  %30 = load i32, ptr %i.i, align 4
  %cmp25.i = icmp eq i32 %30, 0
  %31 = load i32, ptr %i.i, align 4
  %sub28.i = sub nsw i32 5003, %31
  %storemerge1 = select i1 %cmp25.i, i32 1, i32 %sub28.i
  store i32 %storemerge1, ptr %disp.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end43.i, %if.end24.i
  %32 = load i32, ptr %disp.i, align 4
  %33 = load i32, ptr %i.i, align 4
  %sub30.i = sub nsw i32 %33, %32
  store i32 %sub30.i, ptr %i.i, align 4
  %cmp31.i = icmp slt i32 %sub30.i, 0
  br i1 %cmp31.i, label %if.then33.i, label %if.end35.i

if.then33.i:                                      ; preds = %for.cond.i
  %34 = load i32, ptr %i.i, align 4
  %add34.i = add nsw i32 %34, 5003
  store i32 %add34.i, ptr %i.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %for.cond.i
  %35 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_code36.i = getelementptr inbounds %struct.gif_dest_struct, ptr %35, i64 0, i32 12
  %36 = load ptr, ptr %hash_code36.i, align 8
  %37 = load i32, ptr %i.i, align 4
  %idxprom37.i = sext i32 %37 to i64
  %arrayidx38.i = getelementptr inbounds i16, ptr %36, i64 %idxprom37.i
  %38 = load i16, ptr %arrayidx38.i, align 2
  %cmp40.i = icmp eq i16 %38, 0
  br i1 %cmp40.i, label %if.end55.i, label %if.end43.i

if.end43.i:                                       ; preds = %if.end35.i
  %39 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_value44.i = getelementptr inbounds %struct.gif_dest_struct, ptr %39, i64 0, i32 13
  %40 = load ptr, ptr %hash_value44.i, align 8
  %41 = load i32, ptr %i.i, align 4
  %idxprom45.i = sext i32 %41 to i64
  %arrayidx46.i = getelementptr inbounds i64, ptr %40, i64 %idxprom45.i
  %42 = load i64, ptr %arrayidx46.i, align 8
  %43 = load i64, ptr %probe_value.i, align 8
  %cmp47.i = icmp eq i64 %42, %43
  br i1 %cmp47.i, label %if.then49.i, label %for.cond.i

if.then49.i:                                      ; preds = %if.end43.i
  %44 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_code50.i = getelementptr inbounds %struct.gif_dest_struct, ptr %44, i64 0, i32 12
  %45 = load ptr, ptr %hash_code50.i, align 8
  %46 = load i32, ptr %i.i, align 4
  %idxprom51.i = sext i32 %46 to i64
  %arrayidx52.i = getelementptr inbounds i16, ptr %45, i64 %idxprom51.i
  %47 = load i16, ptr %arrayidx52.i, align 2
  %48 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code53.i = getelementptr inbounds %struct.gif_dest_struct, ptr %48, i64 0, i32 7
  store i16 %47, ptr %waiting_code53.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit

if.end55.i:                                       ; preds = %if.end35.i, %if.end6.i
  %49 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code56.i = getelementptr inbounds %struct.gif_dest_struct, ptr %49, i64 0, i32 7
  %50 = load i16, ptr %waiting_code56.i, align 4
  call void @output(ptr noundef %49, i16 noundef signext %50)
  %free_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %49, i64 0, i32 11
  %51 = load i16, ptr %free_code.i, align 8
  %cmp58.i = icmp slt i16 %51, 4096
  br i1 %cmp58.i, label %if.then60.i, label %if.else68.i

if.then60.i:                                      ; preds = %if.end55.i
  %52 = load ptr, ptr %dinfo.addr.i, align 8
  %free_code61.i = getelementptr inbounds %struct.gif_dest_struct, ptr %52, i64 0, i32 11
  %53 = load i16, ptr %free_code61.i, align 8
  %inc.i = add i16 %53, 1
  store i16 %inc.i, ptr %free_code61.i, align 8
  %hash_code62.i = getelementptr inbounds %struct.gif_dest_struct, ptr %52, i64 0, i32 12
  %54 = load ptr, ptr %hash_code62.i, align 8
  %55 = load i32, ptr %i.i, align 4
  %idxprom63.i = sext i32 %55 to i64
  %arrayidx64.i = getelementptr inbounds i16, ptr %54, i64 %idxprom63.i
  store i16 %53, ptr %arrayidx64.i, align 2
  %56 = load i64, ptr %probe_value.i, align 8
  %57 = load ptr, ptr %dinfo.addr.i, align 8
  %hash_value65.i = getelementptr inbounds %struct.gif_dest_struct, ptr %57, i64 0, i32 13
  %58 = load ptr, ptr %hash_value65.i, align 8
  %59 = load i32, ptr %i.i, align 4
  %idxprom66.i = sext i32 %59 to i64
  %arrayidx67.i = getelementptr inbounds i64, ptr %58, i64 %idxprom66.i
  store i64 %56, ptr %arrayidx67.i, align 8
  br label %if.end69.i

if.else68.i:                                      ; preds = %if.end55.i
  %60 = load ptr, ptr %dinfo.addr.i, align 8
  call void @clear_block(ptr noundef %60)
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else68.i, %if.then60.i
  %61 = load i32, ptr %c.addr.i, align 4
  %conv70.i = trunc i32 %61 to i16
  %62 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code71.i = getelementptr inbounds %struct.gif_dest_struct, ptr %62, i64 0, i32 7
  store i16 %conv70.i, ptr %waiting_code71.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_2.exit: ; preds = %if.then.i, %if.then19.i, %if.then49.i, %if.end69.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %probe_value.i)
  %63 = load i32, ptr %col, align 4
  %dec = add i32 %63, -1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_output_gif(ptr noundef %cinfo, ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr.i = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %dinfo, ptr %dest, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i)
  store ptr %dinfo, ptr %dinfo.addr.i, align 8
  %first_byte.i = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 8
  %0 = load i32, ptr %first_byte.i, align 8
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr %dinfo.addr.i, align 8
  %waiting_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %1, i64 0, i32 7
  %2 = load i16, ptr %waiting_code.i, align 4
  call void @output(ptr noundef %1, i16 noundef signext %2)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %3 = load ptr, ptr %dinfo.addr.i, align 8
  %EOFCode.i = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 10
  %4 = load i16, ptr %EOFCode.i, align 2
  call void @output(ptr noundef %3, i16 noundef signext %4)
  %cur_bits.i = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %cur_bits.i, align 8
  %cmp.i = icmp sgt i32 %5, 0
  br i1 %cmp.i, label %if.then1.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_3.exit

if.then1.i:                                       ; preds = %if.end.i
  %6 = load ptr, ptr %dinfo.addr.i, align 8
  %cur_accum.i = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 5
  %7 = load i64, ptr %cur_accum.i, align 8
  %conv.i = trunc i64 %7 to i8
  %bytesinpkt.i = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %bytesinpkt.i, align 8
  %inc.i = add nsw i32 %8, 1
  store i32 %inc.i, ptr %bytesinpkt.i, align 8
  %idxprom.i = sext i32 %inc.i to i64
  %arrayidx.i = getelementptr inbounds %struct.gif_dest_struct, ptr %6, i64 0, i32 15, i64 %idxprom.i
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %9 = load ptr, ptr %dinfo.addr.i, align 8
  %bytesinpkt2.i = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 14
  %10 = load i32, ptr %bytesinpkt2.i, align 8
  %cmp3.i = icmp sgt i32 %10, 254
  br i1 %cmp3.i, label %if.then5.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_3.exit

if.then5.i:                                       ; preds = %if.then1.i
  %11 = load ptr, ptr %dinfo.addr.i, align 8
  call void @flush_packet(ptr noundef %11)
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_3.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_3.exit: ; preds = %if.then1.i, %if.then5.i, %if.end.i
  %12 = load ptr, ptr %dinfo.addr.i, align 8
  call void @flush_packet(ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i)
  %13 = load ptr, ptr %dest, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %13, i64 0, i32 3
  %14 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef 0, ptr noundef %14) #5
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef 59, ptr noundef %15) #5
  %16 = load ptr, ptr %dest, align 8
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %16, i64 0, i32 3
  %17 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @fflush(ptr noundef %17) #5
  %output_file8 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %output_file8, align 8
  %call9 = call i32 @ferror(ptr noundef %18) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_3.exit
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull %19) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_3.exit
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @put_word(ptr noundef %dinfo, i32 noundef %w) #0 {
entry:
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %and = and i32 %w, 255
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %0 = load ptr, ptr %output_file, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %0) #5
  %shr = lshr i32 %w, 8
  %and1 = and i32 %shr, 255
  %1 = load ptr, ptr %dinfo.addr, align 8
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %output_file3, align 8
  %call4 = call i32 @putc(i32 noundef %and1, ptr noundef %2) #5
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
  %call = call i32 @putc(i32 noundef %val, ptr noundef %0) #5
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %dinfo, i64 0, i32 3
  %1 = load ptr, ptr %output_file2, align 8
  %call3 = call i32 @putc(i32 noundef %val, ptr noundef %1) #5
  %2 = load i32, ptr %val.addr, align 4
  %3 = load ptr, ptr %dinfo.addr, align 8
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %output_file5, align 8
  %call6 = call i32 @putc(i32 noundef %2, ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress_init(ptr noundef %dinfo, i32 noundef %i_bits) #0 {
entry:
  %dinfo.addr.i1 = alloca ptr, align 8
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
  %hash_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 12
  %10 = load ptr, ptr %hash_code.i, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call.i = call ptr @__memset_chk(ptr noundef %10, i32 noundef 0, i64 noundef 10006, i64 noundef %11) #5
  %ClearCode12 = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 9
  %12 = load i16, ptr %ClearCode12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i1)
  store ptr %9, ptr %dinfo.addr.i1, align 8
  %conv.i = sext i16 %12 to i64
  %cur_bits.i = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %cur_bits.i, align 8
  %sh_prom.i = zext i32 %13 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %cur_accum.i = getelementptr inbounds %struct.gif_dest_struct, ptr %9, i64 0, i32 5
  %14 = load i64, ptr %cur_accum.i, align 8
  %or.i = or i64 %14, %shl.i
  store i64 %or.i, ptr %cur_accum.i, align 8
  %15 = load ptr, ptr %dinfo.addr.i1, align 8
  %n_bits.i = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %n_bits.i, align 8
  %cur_bits1.i = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %cur_bits1.i, align 8
  %add.i = add nsw i32 %17, %16
  store i32 %add.i, ptr %cur_bits1.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %entry
  %18 = load ptr, ptr %dinfo.addr.i1, align 8
  %cur_bits2.i = getelementptr inbounds %struct.gif_dest_struct, ptr %18, i64 0, i32 6
  %19 = load i32, ptr %cur_bits2.i, align 8
  %cmp.i = icmp sgt i32 %19, 7
  br i1 %cmp.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %20 = load ptr, ptr %dinfo.addr.i1, align 8
  %cur_accum4.i = getelementptr inbounds %struct.gif_dest_struct, ptr %20, i64 0, i32 5
  %21 = load i64, ptr %cur_accum4.i, align 8
  %conv5.i = trunc i64 %21 to i8
  %bytesinpkt.i = getelementptr inbounds %struct.gif_dest_struct, ptr %20, i64 0, i32 14
  %22 = load i32, ptr %bytesinpkt.i, align 8
  %inc.i = add nsw i32 %22, 1
  store i32 %inc.i, ptr %bytesinpkt.i, align 8
  %idxprom.i = sext i32 %inc.i to i64
  %arrayidx.i = getelementptr inbounds %struct.gif_dest_struct, ptr %20, i64 0, i32 15, i64 %idxprom.i
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %23 = load ptr, ptr %dinfo.addr.i1, align 8
  %bytesinpkt6.i = getelementptr inbounds %struct.gif_dest_struct, ptr %23, i64 0, i32 14
  %24 = load i32, ptr %bytesinpkt6.i, align 8
  %cmp7.i = icmp sgt i32 %24, 254
  br i1 %cmp7.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %25 = load ptr, ptr %dinfo.addr.i1, align 8
  call void @flush_packet(ptr noundef %25)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %26 = load ptr, ptr %dinfo.addr.i1, align 8
  %cur_accum9.i = getelementptr inbounds %struct.gif_dest_struct, ptr %26, i64 0, i32 5
  %27 = load i64, ptr %cur_accum9.i, align 8
  %shr.i = ashr i64 %27, 8
  store i64 %shr.i, ptr %cur_accum9.i, align 8
  %cur_bits10.i = getelementptr inbounds %struct.gif_dest_struct, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %cur_bits10.i, align 8
  %sub.i = add nsw i32 %28, -8
  store i32 %sub.i, ptr %cur_bits10.i, align 8
  br label %while.cond.i, !llvm.loop !10

while.end.i:                                      ; preds = %while.cond.i
  %29 = load ptr, ptr %dinfo.addr.i1, align 8
  %free_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i64 0, i32 11
  %30 = load i16, ptr %free_code.i, align 8
  %maxcode.i = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i64 0, i32 3
  %31 = load i16, ptr %maxcode.i, align 4
  %cmp13.i = icmp sgt i16 %30, %31
  br i1 %cmp13.i, label %if.then15.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_15.exit

if.then15.i:                                      ; preds = %while.end.i
  %32 = load ptr, ptr %dinfo.addr.i1, align 8
  %n_bits16.i = getelementptr inbounds %struct.gif_dest_struct, ptr %32, i64 0, i32 2
  %33 = load i32, ptr %n_bits16.i, align 8
  %inc17.i = add nsw i32 %33, 1
  store i32 %inc17.i, ptr %n_bits16.i, align 8
  %cmp19.i = icmp eq i32 %inc17.i, 12
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then15.i
  %34 = load ptr, ptr %dinfo.addr.i1, align 8
  %maxcode22.i = getelementptr inbounds %struct.gif_dest_struct, ptr %34, i64 0, i32 3
  store i16 4096, ptr %maxcode22.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_15.exit

if.else.i:                                        ; preds = %if.then15.i
  %35 = load ptr, ptr %dinfo.addr.i1, align 8
  %n_bits23.i = getelementptr inbounds %struct.gif_dest_struct, ptr %35, i64 0, i32 2
  %36 = load i32, ptr %n_bits23.i, align 8
  %notmask2 = shl nsw i32 -1, %36
  %37 = trunc i32 %notmask2 to i16
  %conv26.i = xor i16 %37, -1
  %maxcode27.i = getelementptr inbounds %struct.gif_dest_struct, ptr %35, i64 0, i32 3
  store i16 %conv26.i, ptr %maxcode27.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_15.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_15.exit: ; preds = %if.then21.i, %if.else.i, %while.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @output(ptr noundef %dinfo, i16 noundef signext %code) #0 {
entry:
  %dinfo.addr.i = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i)
  store ptr %12, ptr %dinfo.addr.i, align 8
  %bytesinpkt.i = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i64 0, i32 14
  %13 = load i32, ptr %bytesinpkt.i, align 8
  %cmp.i = icmp sgt i32 %13, 0
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_16.exit

if.then.i:                                        ; preds = %if.then
  %14 = load ptr, ptr %dinfo.addr.i, align 8
  %bytesinpkt1.i = getelementptr inbounds %struct.gif_dest_struct, ptr %14, i64 0, i32 14
  %15 = load i32, ptr %bytesinpkt1.i, align 8
  %inc.i = add nsw i32 %15, 1
  store i32 %inc.i, ptr %bytesinpkt1.i, align 8
  %conv.i = trunc i32 %15 to i8
  %packetbuf.i = getelementptr inbounds %struct.gif_dest_struct, ptr %14, i64 0, i32 15
  store i8 %conv.i, ptr %packetbuf.i, align 4
  %16 = load ptr, ptr %dinfo.addr.i, align 8
  %packetbuf2.i = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i64 0, i32 15
  %bytesinpkt3.i = getelementptr inbounds %struct.gif_dest_struct, ptr %16, i64 0, i32 14
  %17 = load i32, ptr %bytesinpkt3.i, align 8
  %conv4.i = sext i32 %17 to i64
  %output_file.i = getelementptr inbounds %struct.djpeg_dest_struct, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %output_file.i, align 8
  %call.i = call i64 @"\01_fwrite"(ptr noundef nonnull %packetbuf2.i, i64 noundef 1, i64 noundef %conv4.i, ptr noundef %18) #5
  %19 = load ptr, ptr %dinfo.addr.i, align 8
  %bytesinpkt5.i = getelementptr inbounds %struct.gif_dest_struct, ptr %19, i64 0, i32 14
  %20 = load i32, ptr %bytesinpkt5.i, align 8
  %conv6.i = sext i32 %20 to i64
  %cmp7.i.not = icmp eq i64 %call.i, %conv6.i
  br i1 %cmp7.i.not, label %if.end.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  %21 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo.i = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %cinfo.i, align 8
  %23 = load ptr, ptr %22, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 5
  store i32 36, ptr %msg_code.i, align 8
  %cinfo10.i = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %cinfo10.i, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %dinfo.addr.i, align 8
  %cinfo12.i = getelementptr inbounds %struct.gif_dest_struct, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %cinfo12.i, align 8
  call void %26(ptr noundef %28) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i
  %29 = load ptr, ptr %dinfo.addr.i, align 8
  %bytesinpkt13.i = getelementptr inbounds %struct.gif_dest_struct, ptr %29, i64 0, i32 14
  store i32 0, ptr %bytesinpkt13.i, align 8
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_16.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_16.exit: ; preds = %if.then, %if.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i)
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_16.exit, %while.body
  %30 = load ptr, ptr %dinfo.addr, align 8
  %cur_accum9 = getelementptr inbounds %struct.gif_dest_struct, ptr %30, i64 0, i32 5
  %31 = load i64, ptr %cur_accum9, align 8
  %shr = ashr i64 %31, 8
  store i64 %shr, ptr %cur_accum9, align 8
  %cur_bits10 = getelementptr inbounds %struct.gif_dest_struct, ptr %30, i64 0, i32 6
  %32 = load i32, ptr %cur_bits10, align 8
  %sub = add nsw i32 %32, -8
  store i32 %sub, ptr %cur_bits10, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i64 0, i32 11
  %34 = load i16, ptr %free_code, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i64 0, i32 3
  %35 = load i16, ptr %maxcode, align 4
  %cmp13 = icmp sgt i16 %34, %35
  br i1 %cmp13, label %if.then15, label %if.end29

if.then15:                                        ; preds = %while.end
  %36 = load ptr, ptr %dinfo.addr, align 8
  %n_bits16 = getelementptr inbounds %struct.gif_dest_struct, ptr %36, i64 0, i32 2
  %37 = load i32, ptr %n_bits16, align 8
  %inc17 = add nsw i32 %37, 1
  store i32 %inc17, ptr %n_bits16, align 8
  %cmp19 = icmp eq i32 %inc17, 12
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then15
  %38 = load ptr, ptr %dinfo.addr, align 8
  %maxcode22 = getelementptr inbounds %struct.gif_dest_struct, ptr %38, i64 0, i32 3
  store i16 4096, ptr %maxcode22, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then15
  %39 = load ptr, ptr %dinfo.addr, align 8
  %n_bits23 = getelementptr inbounds %struct.gif_dest_struct, ptr %39, i64 0, i32 2
  %40 = load i32, ptr %n_bits23, align 8
  %notmask = shl nsw i32 -1, %40
  %41 = trunc i32 %notmask to i16
  %conv26 = xor i16 %41, -1
  %maxcode27 = getelementptr inbounds %struct.gif_dest_struct, ptr %39, i64 0, i32 3
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
  %call = call i64 @"\01_fwrite"(ptr noundef nonnull %packetbuf2, i64 noundef 1, i64 noundef %conv4, ptr noundef %5) #5
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
  call void %13(ptr noundef %15) #5
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
define internal void @clear_block(ptr noundef %dinfo) #0 {
entry:
  %dinfo.addr.i1 = alloca ptr, align 8
  %dinfo.addr = alloca ptr, align 8
  store ptr %dinfo, ptr %dinfo.addr, align 8
  %hash_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 12
  %0 = load ptr, ptr %hash_code.i, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call.i = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef 10006, i64 noundef %1) #5
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, ptr %dinfo, i64 0, i32 9
  %2 = load i16, ptr %ClearCode, align 4
  %add = add i16 %2, 2
  %3 = load ptr, ptr %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 11
  store i16 %add, ptr %free_code, align 8
  %ClearCode2 = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 9
  %4 = load i16, ptr %ClearCode2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo.addr.i1)
  store ptr %3, ptr %dinfo.addr.i1, align 8
  %conv.i = sext i16 %4 to i64
  %cur_bits.i = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %cur_bits.i, align 8
  %sh_prom.i = zext i32 %5 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %cur_accum.i = getelementptr inbounds %struct.gif_dest_struct, ptr %3, i64 0, i32 5
  %6 = load i64, ptr %cur_accum.i, align 8
  %or.i = or i64 %6, %shl.i
  store i64 %or.i, ptr %cur_accum.i, align 8
  %7 = load ptr, ptr %dinfo.addr.i1, align 8
  %n_bits.i = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 2
  %8 = load i32, ptr %n_bits.i, align 8
  %cur_bits1.i = getelementptr inbounds %struct.gif_dest_struct, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %cur_bits1.i, align 8
  %add.i = add nsw i32 %9, %8
  store i32 %add.i, ptr %cur_bits1.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %entry
  %10 = load ptr, ptr %dinfo.addr.i1, align 8
  %cur_bits2.i = getelementptr inbounds %struct.gif_dest_struct, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %cur_bits2.i, align 8
  %cmp.i = icmp sgt i32 %11, 7
  br i1 %cmp.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %12 = load ptr, ptr %dinfo.addr.i1, align 8
  %cur_accum4.i = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i64 0, i32 5
  %13 = load i64, ptr %cur_accum4.i, align 8
  %conv5.i = trunc i64 %13 to i8
  %bytesinpkt.i = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i64 0, i32 14
  %14 = load i32, ptr %bytesinpkt.i, align 8
  %inc.i = add nsw i32 %14, 1
  store i32 %inc.i, ptr %bytesinpkt.i, align 8
  %idxprom.i = sext i32 %inc.i to i64
  %arrayidx.i = getelementptr inbounds %struct.gif_dest_struct, ptr %12, i64 0, i32 15, i64 %idxprom.i
  store i8 %conv5.i, ptr %arrayidx.i, align 1
  %15 = load ptr, ptr %dinfo.addr.i1, align 8
  %bytesinpkt6.i = getelementptr inbounds %struct.gif_dest_struct, ptr %15, i64 0, i32 14
  %16 = load i32, ptr %bytesinpkt6.i, align 8
  %cmp7.i = icmp sgt i32 %16, 254
  br i1 %cmp7.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %17 = load ptr, ptr %dinfo.addr.i1, align 8
  call void @flush_packet(ptr noundef %17)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %18 = load ptr, ptr %dinfo.addr.i1, align 8
  %cur_accum9.i = getelementptr inbounds %struct.gif_dest_struct, ptr %18, i64 0, i32 5
  %19 = load i64, ptr %cur_accum9.i, align 8
  %shr.i = ashr i64 %19, 8
  store i64 %shr.i, ptr %cur_accum9.i, align 8
  %cur_bits10.i = getelementptr inbounds %struct.gif_dest_struct, ptr %18, i64 0, i32 6
  %20 = load i32, ptr %cur_bits10.i, align 8
  %sub.i = add nsw i32 %20, -8
  store i32 %sub.i, ptr %cur_bits10.i, align 8
  br label %while.cond.i, !llvm.loop !10

while.end.i:                                      ; preds = %while.cond.i
  %21 = load ptr, ptr %dinfo.addr.i1, align 8
  %free_code.i = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i64 0, i32 11
  %22 = load i16, ptr %free_code.i, align 8
  %maxcode.i = getelementptr inbounds %struct.gif_dest_struct, ptr %21, i64 0, i32 3
  %23 = load i16, ptr %maxcode.i, align 4
  %cmp13.i = icmp sgt i16 %22, %23
  br i1 %cmp13.i, label %if.then15.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_20.exit

if.then15.i:                                      ; preds = %while.end.i
  %24 = load ptr, ptr %dinfo.addr.i1, align 8
  %n_bits16.i = getelementptr inbounds %struct.gif_dest_struct, ptr %24, i64 0, i32 2
  %25 = load i32, ptr %n_bits16.i, align 8
  %inc17.i = add nsw i32 %25, 1
  store i32 %inc17.i, ptr %n_bits16.i, align 8
  %cmp19.i = icmp eq i32 %inc17.i, 12
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then15.i
  %26 = load ptr, ptr %dinfo.addr.i1, align 8
  %maxcode22.i = getelementptr inbounds %struct.gif_dest_struct, ptr %26, i64 0, i32 3
  store i16 4096, ptr %maxcode22.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_20.exit

if.else.i:                                        ; preds = %if.then15.i
  %27 = load ptr, ptr %dinfo.addr.i1, align 8
  %n_bits23.i = getelementptr inbounds %struct.gif_dest_struct, ptr %27, i64 0, i32 2
  %28 = load i32, ptr %n_bits23.i, align 8
  %notmask2 = shl nsw i32 -1, %28
  %29 = trunc i32 %notmask2 to i16
  %conv26.i = xor i16 %29, -1
  %maxcode27.i = getelementptr inbounds %struct.gif_dest_struct, ptr %27, i64 0, i32 3
  store i16 %conv26.i, ptr %maxcode27.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_20.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_wrgif_20.exit: ; preds = %if.then21.i, %if.else.i, %while.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo.addr.i1)
  %30 = load ptr, ptr %dinfo.addr, align 8
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %30, i64 0, i32 4
  %31 = load i32, ptr %init_bits, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, ptr %30, i64 0, i32 2
  store i32 %31, ptr %n_bits, align 8
  %notmask = shl nsw i32 -1, %31
  %32 = trunc i32 %notmask to i16
  %conv4 = xor i16 %32, -1
  %33 = load ptr, ptr %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, ptr %33, i64 0, i32 3
  store i16 %conv4, ptr %maxcode, align 4
  ret void
}

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

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
