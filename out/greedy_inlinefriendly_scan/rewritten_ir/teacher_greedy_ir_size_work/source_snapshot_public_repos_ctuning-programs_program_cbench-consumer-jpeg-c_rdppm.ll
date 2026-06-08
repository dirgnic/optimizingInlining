; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_rdppm.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdppm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, i64, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_ppm(ptr noundef %cinfo) #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 80) #3
  store ptr @start_input_ppm, ptr %call, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call, i64 0, i32 2
  store ptr @finish_input_ppm, ptr %finish_input, align 8
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_ppm(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr.i = alloca ptr, align 8
  %infile.addr.i = alloca ptr, align 8
  %ch.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %c = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %maxval = alloca i32, align 4
  %need_iobuffer = alloca i32, align 4
  %use_raw_buffer = alloca i32, align 4
  %need_rescale = alloca i32, align 4
  %val = alloca i64, align 8
  %half_maxval = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  %call = call i32 @getc(ptr noundef %0) #3
  %cmp.not = icmp eq i32 %call, 80
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 1027, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %source, align 8
  %input_file3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %input_file3, align 8
  %call4 = call i32 @getc(ptr noundef %6) #3
  store i32 %call4, ptr %c, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %input_file6 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 3
  %8 = load ptr, ptr %input_file6, align 8
  %call7 = call i32 @read_pbm_integer(ptr noundef %7, ptr noundef %8)
  store i32 %call7, ptr %w, align 4
  %9 = load ptr, ptr %source, align 8
  %input_file9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %input_file9, align 8
  %call10 = call i32 @read_pbm_integer(ptr noundef %7, ptr noundef %10)
  store i32 %call10, ptr %h, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %input_file12 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %input_file12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %infile.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  store ptr %11, ptr %cinfo.addr.i, align 8
  store ptr %12, ptr %infile.addr.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %if.end
  %13 = load ptr, ptr %infile.addr.i, align 8
  %call.i = call i32 @pbm_getc(ptr noundef %13)
  store i32 %call.i, ptr %ch.i, align 4
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  %14 = load ptr, ptr %cinfo.addr.i, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %msg_code.i, align 8
  %16 = load ptr, ptr %14, align 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull %14) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i
  %18 = load i32, ptr %ch.i, align 4
  %cmp2.i = icmp eq i32 %18, 32
  %19 = load i32, ptr %ch.i, align 4
  %cmp3.i = icmp eq i32 %19, 9
  %or.cond = select i1 %cmp2.i, i1 true, i1 %cmp3.i
  %20 = load i32, ptr %ch.i, align 4
  %cmp5.i = icmp eq i32 %20, 10
  %or.cond3 = select i1 %or.cond, i1 true, i1 %cmp5.i
  %21 = load i32, ptr %ch.i, align 4
  %cmp6.i = icmp eq i32 %21, 13
  %or.cond7 = select i1 %or.cond3, i1 true, i1 %cmp6.i
  br i1 %or.cond7, label %do.body.i, label %do.end.i, !llvm.loop !6

do.end.i:                                         ; preds = %if.end.i
  %22 = load i32, ptr %ch.i, align 4
  %cmp7.i = icmp slt i32 %22, 48
  %23 = load i32, ptr %ch.i, align 4
  %cmp9.i = icmp sgt i32 %23, 57
  %or.cond4 = select i1 %cmp7.i, i1 true, i1 %cmp9.i
  br i1 %or.cond4, label %if.then10.i, label %if.end15.i

if.then10.i:                                      ; preds = %do.end.i
  %24 = load ptr, ptr %cinfo.addr.i, align 8
  %25 = load ptr, ptr %24, align 8
  %msg_code12.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 1026, ptr %msg_code12.i, align 8
  %26 = load ptr, ptr %24, align 8
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull %24) #3
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.then10.i
  %28 = load i32, ptr %ch.i, align 4
  %sub.i = add nsw i32 %28, -48
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end15.i
  %storemerge = phi i32 [ %sub.i, %if.end15.i ], [ %add.i, %while.body.i ]
  store i32 %storemerge, ptr %val.i, align 4
  %29 = load ptr, ptr %infile.addr.i, align 8
  %call16.i = call i32 @pbm_getc(ptr noundef %29)
  store i32 %call16.i, ptr %ch.i, align 4
  %cmp17.i = icmp sgt i32 %call16.i, 47
  %30 = load i32, ptr %ch.i, align 4
  %cmp18.i = icmp slt i32 %30, 58
  %31 = select i1 %cmp17.i, i1 %cmp18.i, i1 false
  br i1 %31, label %while.body.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdppm_0.exit

while.body.i:                                     ; preds = %while.cond.i
  %32 = load i32, ptr %val.i, align 4
  %mul.i = mul i32 %32, 10
  store i32 %mul.i, ptr %val.i, align 4
  %33 = load i32, ptr %ch.i, align 4
  %sub19.i = add nsw i32 %33, -48
  %add.i = add i32 %mul.i, %sub19.i
  br label %while.cond.i, !llvm.loop !8

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdppm_0.exit: ; preds = %while.cond.i
  %34 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %infile.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  store i32 %34, ptr %maxval, align 4
  %35 = load i32, ptr %w, align 4
  %cmp14 = icmp eq i32 %35, 0
  %36 = load i32, ptr %h, align 4
  %cmp15 = icmp eq i32 %36, 0
  %or.cond5 = select i1 %cmp14, i1 true, i1 %cmp15
  %37 = load i32, ptr %maxval, align 4
  %cmp17 = icmp eq i32 %37, 0
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp17
  br i1 %or.cond6, label %if.then18, label %if.end23

if.then18:                                        ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdppm_0.exit
  %38 = load ptr, ptr %cinfo.addr, align 8
  %39 = load ptr, ptr %38, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 5
  store i32 1027, ptr %msg_code20, align 8
  %40 = load ptr, ptr %38, align 8
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef nonnull %38) #3
  br label %if.end23

if.end23:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdppm_0.exit, %if.then18
  %42 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %43 = load i32, ptr %w, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i64 0, i32 6
  store i32 %43, ptr %image_width, align 8
  %44 = load i32, ptr %h, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i64 0, i32 7
  store i32 %44, ptr %image_height, align 4
  store i32 1, ptr %need_iobuffer, align 4
  store i32 0, ptr %use_raw_buffer, align 4
  store i32 1, ptr %need_rescale, align 4
  %46 = load i32, ptr %c, align 4
  switch i32 %46, label %sw.default [
    i32 50, label %sw.bb
    i32 51, label %sw.bb32
    i32 53, label %sw.bb47
    i32 54, label %sw.bb73
  ]

sw.bb:                                            ; preds = %if.end23
  %47 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 8
  store i32 1, ptr %input_components, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 9
  store i32 1, ptr %in_color_space, align 4
  %48 = load ptr, ptr %47, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 1029, ptr %msg_code25, align 8
  %49 = load i32, ptr %w, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6
  store i32 %49, ptr %msg_parm, align 4
  %52 = load i32, ptr %h, align 4
  %53 = load ptr, ptr %50, align 8
  %arrayidx29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6, i32 0, i64 1
  store i32 %52, ptr %arrayidx29, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load ptr, ptr %54, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 1
  %56 = load ptr, ptr %emit_message, align 8
  call void %56(ptr noundef nonnull %54, i32 noundef 1) #3
  %57 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %57, i64 0, i32 1
  store ptr @get_text_gray_row, ptr %get_pixel_rows, align 8
  store i32 0, ptr %need_iobuffer, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  %58 = load ptr, ptr %cinfo.addr, align 8
  %input_components33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i64 0, i32 8
  store i32 3, ptr %input_components33, align 8
  %in_color_space34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i64 0, i32 9
  store i32 2, ptr %in_color_space34, align 4
  %59 = load ptr, ptr %58, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 5
  store i32 1031, ptr %msg_code36, align 8
  %60 = load i32, ptr %w, align 4
  %61 = load ptr, ptr %cinfo.addr, align 8
  %62 = load ptr, ptr %61, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 6
  store i32 %60, ptr %msg_parm38, align 4
  %63 = load i32, ptr %h, align 4
  %64 = load ptr, ptr %61, align 8
  %arrayidx42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 6, i32 0, i64 1
  store i32 %63, ptr %arrayidx42, align 4
  %65 = load ptr, ptr %cinfo.addr, align 8
  %66 = load ptr, ptr %65, align 8
  %emit_message44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 1
  %67 = load ptr, ptr %emit_message44, align 8
  call void %67(ptr noundef nonnull %65, i32 noundef 1) #3
  %68 = load ptr, ptr %source, align 8
  %get_pixel_rows46 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %68, i64 0, i32 1
  store ptr @get_text_rgb_row, ptr %get_pixel_rows46, align 8
  store i32 0, ptr %need_iobuffer, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end23
  %69 = load ptr, ptr %cinfo.addr, align 8
  %input_components48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 8
  store i32 1, ptr %input_components48, align 8
  %in_color_space49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 9
  store i32 1, ptr %in_color_space49, align 4
  %70 = load ptr, ptr %69, align 8
  %msg_code51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 5
  store i32 1028, ptr %msg_code51, align 8
  %71 = load i32, ptr %w, align 4
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_parm53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 6
  store i32 %71, ptr %msg_parm53, align 4
  %74 = load i32, ptr %h, align 4
  %75 = load ptr, ptr %72, align 8
  %arrayidx57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i64 0, i32 6, i32 0, i64 1
  store i32 %74, ptr %arrayidx57, align 4
  %76 = load ptr, ptr %cinfo.addr, align 8
  %77 = load ptr, ptr %76, align 8
  %emit_message59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 1
  %78 = load ptr, ptr %emit_message59, align 8
  call void %78(ptr noundef nonnull %76, i32 noundef 1) #3
  %79 = load i32, ptr %maxval, align 4
  %cmp60 = icmp ugt i32 %79, 255
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %sw.bb47
  %80 = load ptr, ptr %source, align 8
  %get_pixel_rows63 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %80, i64 0, i32 1
  store ptr @get_word_gray_row, ptr %get_pixel_rows63, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb47
  %81 = load i32, ptr %maxval, align 4
  %cmp64 = icmp eq i32 %81, 255
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.else
  %82 = load ptr, ptr %source, align 8
  %get_pixel_rows67 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %82, i64 0, i32 1
  store ptr @get_raw_row, ptr %get_pixel_rows67, align 8
  store i32 1, ptr %use_raw_buffer, align 4
  store i32 0, ptr %need_rescale, align 4
  br label %sw.epilog

if.else68:                                        ; preds = %if.else
  %83 = load ptr, ptr %source, align 8
  %get_pixel_rows70 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %83, i64 0, i32 1
  store ptr @get_scaled_gray_row, ptr %get_pixel_rows70, align 8
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end23
  %84 = load ptr, ptr %cinfo.addr, align 8
  %input_components74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i64 0, i32 8
  store i32 3, ptr %input_components74, align 8
  %in_color_space75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i64 0, i32 9
  store i32 2, ptr %in_color_space75, align 4
  %85 = load ptr, ptr %84, align 8
  %msg_code77 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 5
  store i32 1030, ptr %msg_code77, align 8
  %86 = load i32, ptr %w, align 4
  %87 = load ptr, ptr %cinfo.addr, align 8
  %88 = load ptr, ptr %87, align 8
  %msg_parm79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 6
  store i32 %86, ptr %msg_parm79, align 4
  %89 = load i32, ptr %h, align 4
  %90 = load ptr, ptr %87, align 8
  %arrayidx83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i64 0, i32 6, i32 0, i64 1
  store i32 %89, ptr %arrayidx83, align 4
  %91 = load ptr, ptr %cinfo.addr, align 8
  %92 = load ptr, ptr %91, align 8
  %emit_message85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 1
  %93 = load ptr, ptr %emit_message85, align 8
  call void %93(ptr noundef nonnull %91, i32 noundef 1) #3
  %94 = load i32, ptr %maxval, align 4
  %cmp86 = icmp ugt i32 %94, 255
  br i1 %cmp86, label %if.then87, label %if.else90

if.then87:                                        ; preds = %sw.bb73
  %95 = load ptr, ptr %source, align 8
  %get_pixel_rows89 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %95, i64 0, i32 1
  store ptr @get_word_rgb_row, ptr %get_pixel_rows89, align 8
  br label %sw.epilog

if.else90:                                        ; preds = %sw.bb73
  %96 = load i32, ptr %maxval, align 4
  %cmp91 = icmp eq i32 %96, 255
  br i1 %cmp91, label %if.then92, label %if.else95

if.then92:                                        ; preds = %if.else90
  %97 = load ptr, ptr %source, align 8
  %get_pixel_rows94 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %97, i64 0, i32 1
  store ptr @get_raw_row, ptr %get_pixel_rows94, align 8
  store i32 1, ptr %use_raw_buffer, align 4
  store i32 0, ptr %need_rescale, align 4
  br label %sw.epilog

if.else95:                                        ; preds = %if.else90
  %98 = load ptr, ptr %source, align 8
  %get_pixel_rows97 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %98, i64 0, i32 1
  store ptr @get_scaled_rgb_row, ptr %get_pixel_rows97, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  %99 = load ptr, ptr %cinfo.addr, align 8
  %100 = load ptr, ptr %99, align 8
  %msg_code101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 5
  store i32 1027, ptr %msg_code101, align 8
  %101 = load ptr, ptr %99, align 8
  %102 = load ptr, ptr %101, align 8
  call void %102(ptr noundef nonnull %99) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then87, %if.else95, %if.then92, %if.then61, %if.else68, %if.then65, %sw.default, %sw.bb32, %sw.bb
  %103 = load i32, ptr %need_iobuffer, align 4
  %tobool.not = icmp eq i32 %103, 0
  br i1 %tobool.not, label %if.end112, label %if.then104

if.then104:                                       ; preds = %sw.epilog
  %104 = load i32, ptr %w, align 4
  %conv = zext i32 %104 to i64
  %105 = load ptr, ptr %cinfo.addr, align 8
  %input_components105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i64 0, i32 8
  %106 = load i32, ptr %input_components105, align 8
  %conv106 = sext i32 %106 to i64
  %mul = mul nsw i64 %conv, %conv106
  %107 = load i32, ptr %maxval, align 4
  %cmp107 = icmp ult i32 %107, 256
  %cond = select i1 %cmp107, i64 1, i64 2
  %mul109 = mul i64 %mul, %cond
  %108 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %108, i64 0, i32 3
  store i64 %mul109, ptr %buffer_width, align 8
  %109 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %109, i64 0, i32 1
  %110 = load ptr, ptr %mem, align 8
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %source, align 8
  %buffer_width110 = getelementptr inbounds %struct.ppm_source_struct, ptr %112, i64 0, i32 3
  %113 = load i64, ptr %buffer_width110, align 8
  %call111 = call ptr %111(ptr noundef %109, i32 noundef 1, i64 noundef %113) #3
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %112, i64 0, i32 1
  store ptr %call111, ptr %iobuffer, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %sw.epilog
  %114 = load i32, ptr %use_raw_buffer, align 4
  %tobool113.not = icmp eq i32 %114, 0
  br i1 %tobool113.not, label %if.else119, label %if.then114

if.then114:                                       ; preds = %if.end112
  %115 = load ptr, ptr %source, align 8
  %iobuffer115 = getelementptr inbounds %struct.ppm_source_struct, ptr %115, i64 0, i32 1
  %116 = load ptr, ptr %iobuffer115, align 8
  %pixrow = getelementptr inbounds %struct.ppm_source_struct, ptr %115, i64 0, i32 2
  store ptr %116, ptr %pixrow, align 8
  %pixrow116 = getelementptr inbounds %struct.ppm_source_struct, ptr %115, i64 0, i32 2
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %115, i64 0, i32 4
  store ptr %pixrow116, ptr %buffer, align 8
  %117 = load ptr, ptr %source, align 8
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %117, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  br label %if.end128

if.else119:                                       ; preds = %if.end112
  %118 = load ptr, ptr %cinfo.addr, align 8
  %mem120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i64 0, i32 1
  %119 = load ptr, ptr %mem120, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %119, i64 0, i32 2
  %120 = load ptr, ptr %alloc_sarray, align 8
  %121 = load i32, ptr %w, align 4
  %input_components121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i64 0, i32 8
  %122 = load i32, ptr %input_components121, align 8
  %mul122 = mul i32 %121, %122
  %call123 = call ptr %120(ptr noundef %118, i32 noundef 1, i32 noundef %mul122, i32 noundef 1) #3
  %123 = load ptr, ptr %source, align 8
  %buffer125 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %123, i64 0, i32 4
  store ptr %call123, ptr %buffer125, align 8
  %buffer_height127 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %123, i64 0, i32 5
  store i32 1, ptr %buffer_height127, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.else119, %if.then114
  %124 = load i32, ptr %need_rescale, align 4
  %tobool129.not = icmp eq i32 %124, 0
  br i1 %tobool129.not, label %if.end147, label %if.then130

if.then130:                                       ; preds = %if.end128
  %125 = load ptr, ptr %cinfo.addr, align 8
  %mem131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %125, i64 0, i32 1
  %126 = load ptr, ptr %mem131, align 8
  %127 = load ptr, ptr %126, align 8
  %128 = load i32, ptr %maxval, align 4
  %conv133 = zext i32 %128 to i64
  %add = add nuw nsw i64 %conv133, 1
  %call135 = call ptr %127(ptr noundef %125, i32 noundef 1, i64 noundef %add) #3
  %129 = load ptr, ptr %source, align 8
  %rescale = getelementptr inbounds %struct.ppm_source_struct, ptr %129, i64 0, i32 4
  store ptr %call135, ptr %rescale, align 8
  %130 = load i32, ptr %maxval, align 4
  %div1 = lshr i32 %130, 1
  %conv136 = zext i32 %div1 to i64
  store i64 %conv136, ptr %half_maxval, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then130
  %storemerge2 = phi i64 [ 0, %if.then130 ], [ %inc, %for.body ]
  store i64 %storemerge2, ptr %val, align 8
  %131 = load i32, ptr %maxval, align 4
  %conv137 = zext i32 %131 to i64
  %cmp138.not = icmp sgt i64 %storemerge2, %conv137
  br i1 %cmp138.not, label %if.end147, label %for.body

for.body:                                         ; preds = %for.cond
  %132 = load i64, ptr %val, align 8
  %mul140 = mul nsw i64 %132, 255
  %133 = load i64, ptr %half_maxval, align 8
  %add141 = add nsw i64 %mul140, %133
  %134 = load i32, ptr %maxval, align 4
  %conv142 = zext i32 %134 to i64
  %div143 = sdiv i64 %add141, %conv142
  %conv144 = trunc i64 %div143 to i8
  %135 = load ptr, ptr %source, align 8
  %rescale145 = getelementptr inbounds %struct.ppm_source_struct, ptr %135, i64 0, i32 4
  %136 = load ptr, ptr %rescale145, align 8
  %137 = load i64, ptr %val, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %136, i64 %137
  store i8 %conv144, ptr %arrayidx146, align 1
  %138 = load i64, ptr %val, align 8
  %inc = add nsw i64 %138, 1
  br label %for.cond, !llvm.loop !9

if.end147:                                        ; preds = %for.cond, %if.end128
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_ppm(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  ret void
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_pbm_integer(ptr noundef %cinfo, ptr noundef %infile) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @pbm_getc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then
  %5 = load i32, ptr %ch, align 4
  %cmp2 = icmp eq i32 %5, 32
  %6 = load i32, ptr %ch, align 4
  %cmp3 = icmp eq i32 %6, 9
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  %7 = load i32, ptr %ch, align 4
  %cmp5 = icmp eq i32 %7, 10
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp5
  %8 = load i32, ptr %ch, align 4
  %cmp6 = icmp eq i32 %8, 13
  %or.cond3 = select i1 %or.cond1, i1 true, i1 %cmp6
  br i1 %or.cond3, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %ch, align 4
  %cmp7 = icmp slt i32 %9, 48
  %10 = load i32, ptr %ch, align 4
  %cmp9 = icmp sgt i32 %10, 57
  %or.cond2 = select i1 %cmp7, i1 true, i1 %cmp9
  br i1 %or.cond2, label %if.then10, label %if.end15

if.then10:                                        ; preds = %do.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 1026, ptr %msg_code12, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull %11) #3
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then10
  %15 = load i32, ptr %ch, align 4
  %sub = add nsw i32 %15, -48
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %storemerge = phi i32 [ %sub, %if.end15 ], [ %add, %while.body ]
  store i32 %storemerge, ptr %val, align 4
  %16 = load ptr, ptr %infile.addr, align 8
  %call16 = call i32 @pbm_getc(ptr noundef %16)
  store i32 %call16, ptr %ch, align 4
  %cmp17 = icmp sgt i32 %call16, 47
  %17 = load i32, ptr %ch, align 4
  %cmp18 = icmp slt i32 %17, 58
  %18 = select i1 %cmp17, i1 %cmp18, i1 false
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %val, align 4
  %mul = mul i32 %19, 10
  store i32 %mul, ptr %val, align 4
  %20 = load i32, ptr %ch, align 4
  %sub19 = add nsw i32 %20, -48
  %add = add i32 %mul, %sub19
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %21 = load i32, ptr %val, align 4
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_text_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  store ptr %0, ptr %infile, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 4
  %1 = load ptr, ptr %rescale1, align 8
  store ptr %1, ptr %rescale, align 8
  %2 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %buffer, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %ptr, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 6
  %6 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %6, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %rescale, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %infile, align 8
  %call = call i32 @read_pbm_integer(ptr noundef %8, ptr noundef %9)
  %idxprom = zext i32 %call to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %10 = load i8, ptr %arrayidx3, align 1
  %11 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %10, ptr %11, align 1
  %12 = load i32, ptr %col, align 4
  %dec = add i32 %12, -1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_text_rgb_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  store ptr %0, ptr %infile, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 4
  %1 = load ptr, ptr %rescale1, align 8
  store ptr %1, ptr %rescale, align 8
  %2 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %buffer, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %ptr, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 6
  %6 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %6, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %rescale, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %infile, align 8
  %call = call i32 @read_pbm_integer(ptr noundef %8, ptr noundef %9)
  %idxprom = zext i32 %call to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %10 = load i8, ptr %arrayidx3, align 1
  %11 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %10, ptr %11, align 1
  %12 = load ptr, ptr %rescale, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %infile, align 8
  %call4 = call i32 @read_pbm_integer(ptr noundef %13, ptr noundef %14)
  %idxprom5 = zext i32 %call4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 %idxprom5
  %15 = load i8, ptr %arrayidx6, align 1
  %16 = load ptr, ptr %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr7, ptr %ptr, align 8
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %rescale, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %infile, align 8
  %call8 = call i32 @read_pbm_integer(ptr noundef %18, ptr noundef %19)
  %idxprom9 = zext i32 %call8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %17, i64 %idxprom9
  %20 = load i8, ptr %arrayidx10, align 1
  %21 = load ptr, ptr %ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr11, ptr %ptr, align 8
  store i8 %20, ptr %21, align 1
  %22 = load i32, ptr %col, align 4
  %dec = add i32 %22, -1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_word_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %rescale1, align 8
  store ptr %0, ptr %rescale, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 1
  %1 = load ptr, ptr %iobuffer, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 3
  %2 = load i64, ptr %buffer_width, align 8
  %3 = load ptr, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #3
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %buffer, align 8
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %ptr, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %iobuffer5, align 8
  store ptr %13, ptr %bufferptr, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ %15, %if.end ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp6.not = icmp eq i32 %storemerge, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %17 = load i8, ptr %16, align 1
  %conv = zext i8 %17 to i64
  %incdec.ptr7 = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %incdec.ptr7, ptr %bufferptr, align 8
  %18 = load i8, ptr %incdec.ptr, align 1
  %conv8 = zext i8 %18 to i64
  %shl = shl nuw nsw i64 %conv8, 8
  %or = or i64 %shl, %conv
  %19 = load ptr, ptr %rescale, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %or
  %20 = load i8, ptr %arrayidx9, align 1
  %21 = load ptr, ptr %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr10, ptr %ptr, align 8
  store i8 %20, ptr %21, align 1
  %22 = load i32, ptr %col, align 4
  %dec = add i32 %22, -1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_raw_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 1
  %0 = load ptr, ptr %iobuffer, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 3
  %1 = load i64, ptr %buffer_width, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %0, i64 noundef 1, i64 noundef %1, ptr noundef %2) #3
  %3 = load ptr, ptr %source, align 8
  %buffer_width1 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i64 0, i32 3
  %4 = load i64, ptr %buffer_width1, align 8
  %cmp = icmp eq i64 %call, %4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_scaled_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %rescale1, align 8
  store ptr %0, ptr %rescale, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 1
  %1 = load ptr, ptr %iobuffer, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 3
  %2 = load i64, ptr %buffer_width, align 8
  %3 = load ptr, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #3
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %buffer, align 8
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %ptr, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %iobuffer5, align 8
  store ptr %13, ptr %bufferptr, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ %15, %if.end ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp6.not = icmp eq i32 %storemerge, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %rescale, align 8
  %17 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %18 = load i8, ptr %17, align 1
  %idxprom = zext i8 %18 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %idxprom
  %19 = load i8, ptr %arrayidx7, align 1
  %20 = load ptr, ptr %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr8, ptr %ptr, align 8
  store i8 %19, ptr %20, align 1
  %21 = load i32, ptr %col, align 4
  %dec = add i32 %21, -1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_word_rgb_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %rescale1, align 8
  store ptr %0, ptr %rescale, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 1
  %1 = load ptr, ptr %iobuffer, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 3
  %2 = load i64, ptr %buffer_width, align 8
  %3 = load ptr, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #3
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %buffer, align 8
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %ptr, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %iobuffer5, align 8
  store ptr %13, ptr %bufferptr, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ %15, %if.end ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp6.not = icmp eq i32 %storemerge, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %17 = load i8, ptr %16, align 1
  %conv = zext i8 %17 to i64
  %incdec.ptr7 = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %incdec.ptr7, ptr %bufferptr, align 8
  %18 = load i8, ptr %incdec.ptr, align 1
  %conv8 = zext i8 %18 to i64
  %shl = shl nuw nsw i64 %conv8, 8
  %or = or i64 %shl, %conv
  %19 = load ptr, ptr %rescale, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %or
  %20 = load i8, ptr %arrayidx9, align 1
  %21 = load ptr, ptr %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr10, ptr %ptr, align 8
  store i8 %20, ptr %21, align 1
  %22 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr11, ptr %bufferptr, align 8
  %23 = load i8, ptr %22, align 1
  %conv12 = zext i8 %23 to i64
  %incdec.ptr13 = getelementptr inbounds i8, ptr %22, i64 2
  store ptr %incdec.ptr13, ptr %bufferptr, align 8
  %24 = load i8, ptr %incdec.ptr11, align 1
  %conv14 = zext i8 %24 to i64
  %shl15 = shl nuw nsw i64 %conv14, 8
  %or16 = or i64 %shl15, %conv12
  %25 = load ptr, ptr %rescale, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %25, i64 %or16
  %26 = load i8, ptr %arrayidx18, align 1
  %27 = load ptr, ptr %ptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr19, ptr %ptr, align 8
  store i8 %26, ptr %27, align 1
  %28 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr20, ptr %bufferptr, align 8
  %29 = load i8, ptr %28, align 1
  %conv21 = zext i8 %29 to i64
  %incdec.ptr22 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %incdec.ptr22, ptr %bufferptr, align 8
  %30 = load i8, ptr %incdec.ptr20, align 1
  %conv23 = zext i8 %30 to i64
  %shl24 = shl nuw nsw i64 %conv23, 8
  %or25 = or i64 %shl24, %conv21
  %31 = load ptr, ptr %rescale, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %31, i64 %or25
  %32 = load i8, ptr %arrayidx27, align 1
  %33 = load ptr, ptr %ptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr28, ptr %ptr, align 8
  store i8 %32, ptr %33, align 1
  %34 = load i32, ptr %col, align 4
  %dec = add i32 %34, -1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_scaled_rgb_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %rescale1, align 8
  store ptr %0, ptr %rescale, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 1
  %1 = load ptr, ptr %iobuffer, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %sinfo, i64 0, i32 3
  %2 = load i64, ptr %buffer_width, align 8
  %3 = load ptr, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #3
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %5
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %buffer, align 8
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %ptr, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %iobuffer5, align 8
  store ptr %13, ptr %bufferptr, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ %15, %if.end ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp6.not = icmp eq i32 %storemerge, 0
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %rescale, align 8
  %17 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %18 = load i8, ptr %17, align 1
  %idxprom = zext i8 %18 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %idxprom
  %19 = load i8, ptr %arrayidx7, align 1
  %20 = load ptr, ptr %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr8, ptr %ptr, align 8
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr %rescale, align 8
  %22 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr9, ptr %bufferptr, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom11 = zext i8 %23 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %21, i64 %idxprom11
  %24 = load i8, ptr %arrayidx12, align 1
  %25 = load ptr, ptr %ptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr13, ptr %ptr, align 8
  store i8 %24, ptr %25, align 1
  %26 = load ptr, ptr %rescale, align 8
  %27 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr14, ptr %bufferptr, align 8
  %28 = load i8, ptr %27, align 1
  %idxprom16 = zext i8 %28 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %26, i64 %idxprom16
  %29 = load i8, ptr %arrayidx17, align 1
  %30 = load ptr, ptr %ptr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr18, ptr %ptr, align 8
  store i8 %29, ptr %30, align 1
  %31 = load i32, ptr %col, align 4
  %dec = add i32 %31, -1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @pbm_getc(ptr noundef %infile) #0 {
entry:
  %infile.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %infile, ptr %infile.addr, align 8
  %call = call i32 @getc(ptr noundef %infile) #3
  store i32 %call, ptr %ch, align 4
  %cmp = icmp eq i32 %call, 35
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry, %do.body
  %0 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %0) #3
  store i32 %call1, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp2.not = icmp eq i32 %1, 10
  %2 = load i32, ptr %ch, align 4
  %cmp3 = icmp ne i32 %2, -1
  %3 = select i1 %cmp2.not, i1 false, i1 %cmp3
  br i1 %3, label %do.body, label %if.end, !llvm.loop !16

if.end:                                           ; preds = %do.body, %entry
  %4 = load i32, ptr %ch, align 4
  ret i32 %4
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
