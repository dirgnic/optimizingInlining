; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdppm.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdppm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, i64, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_ppm(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 80)
  store ptr %call, ptr %source, align 8
  %4 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %4, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 0
  store ptr @start_input_ppm, ptr %start_input, align 8
  %5 = load ptr, ptr %source, align 8
  %pub1 = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub1, i32 0, i32 2
  store ptr @finish_input_ppm, ptr %finish_input, align 8
  %6 = load ptr, ptr %source, align 8
  ret ptr %6
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_ppm(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
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
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  %call = call i32 @getc(ptr noundef %2)
  %cmp = icmp ne i32 %call, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 1027, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %source, align 8
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, ptr %9, i32 0, i32 0
  %input_file3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub2, i32 0, i32 3
  %10 = load ptr, ptr %input_file3, align 8
  %call4 = call i32 @getc(ptr noundef %10)
  store i32 %call4, ptr %c, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %source, align 8
  %pub5 = getelementptr inbounds %struct.ppm_source_struct, ptr %12, i32 0, i32 0
  %input_file6 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub5, i32 0, i32 3
  %13 = load ptr, ptr %input_file6, align 8
  %call7 = call i32 @read_pbm_integer(ptr noundef %11, ptr noundef %13)
  store i32 %call7, ptr %w, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %source, align 8
  %pub8 = getelementptr inbounds %struct.ppm_source_struct, ptr %15, i32 0, i32 0
  %input_file9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub8, i32 0, i32 3
  %16 = load ptr, ptr %input_file9, align 8
  %call10 = call i32 @read_pbm_integer(ptr noundef %14, ptr noundef %16)
  store i32 %call10, ptr %h, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %source, align 8
  %pub11 = getelementptr inbounds %struct.ppm_source_struct, ptr %18, i32 0, i32 0
  %input_file12 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub11, i32 0, i32 3
  %19 = load ptr, ptr %input_file12, align 8
  %call13 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdppm_0(ptr noundef %17, ptr noundef %19)
  store i32 %call13, ptr %maxval, align 4
  %20 = load i32, ptr %w, align 4
  %cmp14 = icmp ule i32 %20, 0
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %21 = load i32, ptr %h, align 4
  %cmp15 = icmp ule i32 %21, 0
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %22 = load i32, ptr %maxval, align 4
  %cmp17 = icmp ule i32 %22, 0
  br i1 %cmp17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %lor.lhs.false16, %lor.lhs.false, %if.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err19, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5
  store i32 1027, ptr %msg_code20, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err21, align 8
  %error_exit22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %error_exit22, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  call void %27(ptr noundef %28)
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %lor.lhs.false16
  %29 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %30 = load i32, ptr %w, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 6
  store i32 %30, ptr %image_width, align 8
  %32 = load i32, ptr %h, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 7
  store i32 %32, ptr %image_height, align 4
  store i32 1, ptr %need_iobuffer, align 4
  store i32 0, ptr %use_raw_buffer, align 4
  store i32 1, ptr %need_rescale, align 4
  %34 = load i32, ptr %c, align 4
  switch i32 %34, label %sw.default [
    i32 50, label %sw.bb
    i32 51, label %sw.bb32
    i32 53, label %sw.bb47
    i32 54, label %sw.bb73
  ]

sw.bb:                                            ; preds = %if.end23
  %35 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 8
  store i32 1, ptr %input_components, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 9
  store i32 1, ptr %in_color_space, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err24, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i32 0, i32 5
  store i32 1029, ptr %msg_code25, align 8
  %39 = load i32, ptr %w, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err26, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %39, ptr %arrayidx, align 4
  %42 = load i32, ptr %h, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %err27, align 8
  %msg_parm28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %44, i32 0, i32 6
  %arrayidx29 = getelementptr inbounds [8 x i32], ptr %msg_parm28, i64 0, i64 1
  store i32 %42, ptr %arrayidx29, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err30, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %emit_message, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  call void %47(ptr noundef %48, i32 noundef 1)
  %49 = load ptr, ptr %source, align 8
  %pub31 = getelementptr inbounds %struct.ppm_source_struct, ptr %49, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub31, i32 0, i32 1
  store ptr @get_text_gray_row, ptr %get_pixel_rows, align 8
  store i32 0, ptr %need_iobuffer, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  %50 = load ptr, ptr %cinfo.addr, align 8
  %input_components33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i32 0, i32 8
  store i32 3, ptr %input_components33, align 8
  %51 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 9
  store i32 2, ptr %in_color_space34, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %err35, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i32 0, i32 5
  store i32 1031, ptr %msg_code36, align 8
  %54 = load i32, ptr %w, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err37, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %msg_parm38, i64 0, i64 0
  store i32 %54, ptr %arrayidx39, align 4
  %57 = load i32, ptr %h, align 4
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err40, align 8
  %msg_parm41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [8 x i32], ptr %msg_parm41, i64 0, i64 1
  store i32 %57, ptr %arrayidx42, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err43, align 8
  %emit_message44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %emit_message44, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  call void %62(ptr noundef %63, i32 noundef 1)
  %64 = load ptr, ptr %source, align 8
  %pub45 = getelementptr inbounds %struct.ppm_source_struct, ptr %64, i32 0, i32 0
  %get_pixel_rows46 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub45, i32 0, i32 1
  store ptr @get_text_rgb_row, ptr %get_pixel_rows46, align 8
  store i32 0, ptr %need_iobuffer, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end23
  %65 = load ptr, ptr %cinfo.addr, align 8
  %input_components48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i32 0, i32 8
  store i32 1, ptr %input_components48, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 9
  store i32 1, ptr %in_color_space49, align 4
  %67 = load ptr, ptr %cinfo.addr, align 8
  %err50 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %err50, align 8
  %msg_code51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i32 0, i32 5
  store i32 1028, ptr %msg_code51, align 8
  %69 = load i32, ptr %w, align 4
  %70 = load ptr, ptr %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %err52, align 8
  %msg_parm53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i32 0, i32 6
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %msg_parm53, i64 0, i64 0
  store i32 %69, ptr %arrayidx54, align 4
  %72 = load i32, ptr %h, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %err55, align 8
  %msg_parm56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i32 0, i32 6
  %arrayidx57 = getelementptr inbounds [8 x i32], ptr %msg_parm56, i64 0, i64 1
  store i32 %72, ptr %arrayidx57, align 4
  %75 = load ptr, ptr %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %err58, align 8
  %emit_message59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %emit_message59, align 8
  %78 = load ptr, ptr %cinfo.addr, align 8
  call void %77(ptr noundef %78, i32 noundef 1)
  %79 = load i32, ptr %maxval, align 4
  %cmp60 = icmp ugt i32 %79, 255
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %sw.bb47
  %80 = load ptr, ptr %source, align 8
  %pub62 = getelementptr inbounds %struct.ppm_source_struct, ptr %80, i32 0, i32 0
  %get_pixel_rows63 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub62, i32 0, i32 1
  store ptr @get_word_gray_row, ptr %get_pixel_rows63, align 8
  br label %if.end72

if.else:                                          ; preds = %sw.bb47
  %81 = load i32, ptr %maxval, align 4
  %cmp64 = icmp eq i32 %81, 255
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.else
  %82 = load ptr, ptr %source, align 8
  %pub66 = getelementptr inbounds %struct.ppm_source_struct, ptr %82, i32 0, i32 0
  %get_pixel_rows67 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub66, i32 0, i32 1
  store ptr @get_raw_row, ptr %get_pixel_rows67, align 8
  store i32 1, ptr %use_raw_buffer, align 4
  store i32 0, ptr %need_rescale, align 4
  br label %if.end71

if.else68:                                        ; preds = %if.else
  %83 = load ptr, ptr %source, align 8
  %pub69 = getelementptr inbounds %struct.ppm_source_struct, ptr %83, i32 0, i32 0
  %get_pixel_rows70 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub69, i32 0, i32 1
  store ptr @get_scaled_gray_row, ptr %get_pixel_rows70, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then65
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then61
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end23
  %84 = load ptr, ptr %cinfo.addr, align 8
  %input_components74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i32 0, i32 8
  store i32 3, ptr %input_components74, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %85, i32 0, i32 9
  store i32 2, ptr %in_color_space75, align 4
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err76 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err76, align 8
  %msg_code77 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 5
  store i32 1030, ptr %msg_code77, align 8
  %88 = load i32, ptr %w, align 4
  %89 = load ptr, ptr %cinfo.addr, align 8
  %err78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %err78, align 8
  %msg_parm79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i32 0, i32 6
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr %msg_parm79, i64 0, i64 0
  store i32 %88, ptr %arrayidx80, align 4
  %91 = load i32, ptr %h, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %err81, align 8
  %msg_parm82 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i32 0, i32 6
  %arrayidx83 = getelementptr inbounds [8 x i32], ptr %msg_parm82, i64 0, i64 1
  store i32 %91, ptr %arrayidx83, align 4
  %94 = load ptr, ptr %cinfo.addr, align 8
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %err84, align 8
  %emit_message85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i32 0, i32 1
  %96 = load ptr, ptr %emit_message85, align 8
  %97 = load ptr, ptr %cinfo.addr, align 8
  call void %96(ptr noundef %97, i32 noundef 1)
  %98 = load i32, ptr %maxval, align 4
  %cmp86 = icmp ugt i32 %98, 255
  br i1 %cmp86, label %if.then87, label %if.else90

if.then87:                                        ; preds = %sw.bb73
  %99 = load ptr, ptr %source, align 8
  %pub88 = getelementptr inbounds %struct.ppm_source_struct, ptr %99, i32 0, i32 0
  %get_pixel_rows89 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub88, i32 0, i32 1
  store ptr @get_word_rgb_row, ptr %get_pixel_rows89, align 8
  br label %if.end99

if.else90:                                        ; preds = %sw.bb73
  %100 = load i32, ptr %maxval, align 4
  %cmp91 = icmp eq i32 %100, 255
  br i1 %cmp91, label %if.then92, label %if.else95

if.then92:                                        ; preds = %if.else90
  %101 = load ptr, ptr %source, align 8
  %pub93 = getelementptr inbounds %struct.ppm_source_struct, ptr %101, i32 0, i32 0
  %get_pixel_rows94 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub93, i32 0, i32 1
  store ptr @get_raw_row, ptr %get_pixel_rows94, align 8
  store i32 1, ptr %use_raw_buffer, align 4
  store i32 0, ptr %need_rescale, align 4
  br label %if.end98

if.else95:                                        ; preds = %if.else90
  %102 = load ptr, ptr %source, align 8
  %pub96 = getelementptr inbounds %struct.ppm_source_struct, ptr %102, i32 0, i32 0
  %get_pixel_rows97 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub96, i32 0, i32 1
  store ptr @get_scaled_rgb_row, ptr %get_pixel_rows97, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.else95, %if.then92
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then87
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  %103 = load ptr, ptr %cinfo.addr, align 8
  %err100 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %err100, align 8
  %msg_code101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %104, i32 0, i32 5
  store i32 1027, ptr %msg_code101, align 8
  %105 = load ptr, ptr %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %err102, align 8
  %error_exit103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %error_exit103, align 8
  %108 = load ptr, ptr %cinfo.addr, align 8
  call void %107(ptr noundef %108)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end99, %if.end72, %sw.bb32, %sw.bb
  %109 = load i32, ptr %need_iobuffer, align 4
  %tobool = icmp ne i32 %109, 0
  br i1 %tobool, label %if.then104, label %if.end112

if.then104:                                       ; preds = %sw.epilog
  %110 = load i32, ptr %w, align 4
  %conv = zext i32 %110 to i64
  %111 = load ptr, ptr %cinfo.addr, align 8
  %input_components105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %111, i32 0, i32 8
  %112 = load i32, ptr %input_components105, align 8
  %conv106 = sext i32 %112 to i64
  %mul = mul i64 %conv, %conv106
  %113 = load i32, ptr %maxval, align 4
  %cmp107 = icmp ule i32 %113, 255
  %114 = zext i1 %cmp107 to i64
  %cond = select i1 %cmp107, i64 1, i64 2
  %mul109 = mul i64 %mul, %cond
  %115 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %115, i32 0, i32 3
  store i64 %mul109, ptr %buffer_width, align 8
  %116 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %116, i32 0, i32 1
  %117 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %alloc_small, align 8
  %119 = load ptr, ptr %cinfo.addr, align 8
  %120 = load ptr, ptr %source, align 8
  %buffer_width110 = getelementptr inbounds %struct.ppm_source_struct, ptr %120, i32 0, i32 3
  %121 = load i64, ptr %buffer_width110, align 8
  %call111 = call ptr %118(ptr noundef %119, i32 noundef 1, i64 noundef %121)
  %122 = load ptr, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %122, i32 0, i32 1
  store ptr %call111, ptr %iobuffer, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %sw.epilog
  %123 = load i32, ptr %use_raw_buffer, align 4
  %tobool113 = icmp ne i32 %123, 0
  br i1 %tobool113, label %if.then114, label %if.else119

if.then114:                                       ; preds = %if.end112
  %124 = load ptr, ptr %source, align 8
  %iobuffer115 = getelementptr inbounds %struct.ppm_source_struct, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %iobuffer115, align 8
  %126 = load ptr, ptr %source, align 8
  %pixrow = getelementptr inbounds %struct.ppm_source_struct, ptr %126, i32 0, i32 2
  store ptr %125, ptr %pixrow, align 8
  %127 = load ptr, ptr %source, align 8
  %pixrow116 = getelementptr inbounds %struct.ppm_source_struct, ptr %127, i32 0, i32 2
  %128 = load ptr, ptr %source, align 8
  %pub117 = getelementptr inbounds %struct.ppm_source_struct, ptr %128, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub117, i32 0, i32 4
  store ptr %pixrow116, ptr %buffer, align 8
  %129 = load ptr, ptr %source, align 8
  %pub118 = getelementptr inbounds %struct.ppm_source_struct, ptr %129, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub118, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  br label %if.end128

if.else119:                                       ; preds = %if.end112
  %130 = load ptr, ptr %cinfo.addr, align 8
  %mem120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %130, i32 0, i32 1
  %131 = load ptr, ptr %mem120, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %131, i32 0, i32 2
  %132 = load ptr, ptr %alloc_sarray, align 8
  %133 = load ptr, ptr %cinfo.addr, align 8
  %134 = load i32, ptr %w, align 4
  %135 = load ptr, ptr %cinfo.addr, align 8
  %input_components121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %135, i32 0, i32 8
  %136 = load i32, ptr %input_components121, align 8
  %mul122 = mul i32 %134, %136
  %call123 = call ptr %132(ptr noundef %133, i32 noundef 1, i32 noundef %mul122, i32 noundef 1)
  %137 = load ptr, ptr %source, align 8
  %pub124 = getelementptr inbounds %struct.ppm_source_struct, ptr %137, i32 0, i32 0
  %buffer125 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub124, i32 0, i32 4
  store ptr %call123, ptr %buffer125, align 8
  %138 = load ptr, ptr %source, align 8
  %pub126 = getelementptr inbounds %struct.ppm_source_struct, ptr %138, i32 0, i32 0
  %buffer_height127 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub126, i32 0, i32 5
  store i32 1, ptr %buffer_height127, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.else119, %if.then114
  %139 = load i32, ptr %need_rescale, align 4
  %tobool129 = icmp ne i32 %139, 0
  br i1 %tobool129, label %if.then130, label %if.end147

if.then130:                                       ; preds = %if.end128
  %140 = load ptr, ptr %cinfo.addr, align 8
  %mem131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %mem131, align 8
  %alloc_small132 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %alloc_small132, align 8
  %143 = load ptr, ptr %cinfo.addr, align 8
  %144 = load i32, ptr %maxval, align 4
  %conv133 = zext i32 %144 to i64
  %add = add nsw i64 %conv133, 1
  %mul134 = mul i64 %add, 1
  %call135 = call ptr %142(ptr noundef %143, i32 noundef 1, i64 noundef %mul134)
  %145 = load ptr, ptr %source, align 8
  %rescale = getelementptr inbounds %struct.ppm_source_struct, ptr %145, i32 0, i32 4
  store ptr %call135, ptr %rescale, align 8
  %146 = load i32, ptr %maxval, align 4
  %div = udiv i32 %146, 2
  %conv136 = zext i32 %div to i64
  store i64 %conv136, ptr %half_maxval, align 8
  store i64 0, ptr %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then130
  %147 = load i64, ptr %val, align 8
  %148 = load i32, ptr %maxval, align 4
  %conv137 = zext i32 %148 to i64
  %cmp138 = icmp sle i64 %147, %conv137
  br i1 %cmp138, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %149 = load i64, ptr %val, align 8
  %mul140 = mul nsw i64 %149, 255
  %150 = load i64, ptr %half_maxval, align 8
  %add141 = add nsw i64 %mul140, %150
  %151 = load i32, ptr %maxval, align 4
  %conv142 = zext i32 %151 to i64
  %div143 = sdiv i64 %add141, %conv142
  %conv144 = trunc i64 %div143 to i8
  %152 = load ptr, ptr %source, align 8
  %rescale145 = getelementptr inbounds %struct.ppm_source_struct, ptr %152, i32 0, i32 4
  %153 = load ptr, ptr %rescale145, align 8
  %154 = load i64, ptr %val, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %153, i64 %154
  store i8 %conv144, ptr %arrayidx146, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %155 = load i64, ptr %val, align 8
  %inc = add nsw i64 %155, 1
  store i64 %inc, ptr %val, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end147

if.end147:                                        ; preds = %for.end, %if.end128
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_ppm(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
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

do.body:                                          ; preds = %lor.end, %entry
  %0 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @pbm_getc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %error_exit, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void %6(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, ptr %ch, align 4
  %cmp2 = icmp eq i32 %8, 32
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %9 = load i32, ptr %ch, align 4
  %cmp3 = icmp eq i32 %9, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = load i32, ptr %ch, align 4
  %cmp5 = icmp eq i32 %10, 10
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  %11 = load i32, ptr %ch, align 4
  %cmp6 = icmp eq i32 %11, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false, %do.cond
  %12 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp6, %lor.rhs ]
  br i1 %12, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %lor.end
  %13 = load i32, ptr %ch, align 4
  %cmp7 = icmp slt i32 %13, 48
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %do.end
  %14 = load i32, ptr %ch, align 4
  %cmp9 = icmp sgt i32 %14, 57
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %lor.lhs.false8, %do.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 1026, ptr %msg_code12, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit14, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %lor.lhs.false8
  %21 = load i32, ptr %ch, align 4
  %sub = sub nsw i32 %21, 48
  store i32 %sub, ptr %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %22 = load ptr, ptr %infile.addr, align 8
  %call16 = call i32 @pbm_getc(ptr noundef %22)
  store i32 %call16, ptr %ch, align 4
  %cmp17 = icmp sge i32 %call16, 48
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i32, ptr %ch, align 4
  %cmp18 = icmp sle i32 %23, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %val, align 4
  %mul = mul i32 %25, 10
  store i32 %mul, ptr %val, align 4
  %26 = load i32, ptr %ch, align 4
  %sub19 = sub nsw i32 %26, 48
  %27 = load i32, ptr %val, align 4
  %add = add i32 %27, %sub19
  store i32 %add, ptr %val, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %28 = load i32, ptr %val, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_text_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  store ptr %2, ptr %infile, align 8
  %3 = load ptr, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %rescale1, align 8
  store ptr %4, ptr %rescale, align 8
  %5 = load ptr, ptr %source, align 8
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub2, i32 0, i32 4
  %6 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %ptr, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %image_width, align 8
  store i32 %9, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %rescale, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %infile, align 8
  %call = call i32 @read_pbm_integer(ptr noundef %12, ptr noundef %13)
  %idxprom = zext i32 %call to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %14 = load i8, ptr %arrayidx3, align 1
  %15 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %14, ptr %15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %col, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_text_rgb_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  store ptr %2, ptr %infile, align 8
  %3 = load ptr, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %rescale1, align 8
  store ptr %4, ptr %rescale, align 8
  %5 = load ptr, ptr %source, align 8
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub2, i32 0, i32 4
  %6 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %ptr, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %image_width, align 8
  store i32 %9, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %rescale, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %infile, align 8
  %call = call i32 @read_pbm_integer(ptr noundef %12, ptr noundef %13)
  %idxprom = zext i32 %call to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %14 = load i8, ptr %arrayidx3, align 1
  %15 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %14, ptr %15, align 1
  %16 = load ptr, ptr %rescale, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %infile, align 8
  %call4 = call i32 @read_pbm_integer(ptr noundef %17, ptr noundef %18)
  %idxprom5 = zext i32 %call4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %16, i64 %idxprom5
  %19 = load i8, ptr %arrayidx6, align 1
  %20 = load ptr, ptr %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr7, ptr %ptr, align 8
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr %rescale, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %infile, align 8
  %call8 = call i32 @read_pbm_integer(ptr noundef %22, ptr noundef %23)
  %idxprom9 = zext i32 %call8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %21, i64 %idxprom9
  %24 = load i8, ptr %arrayidx10, align 1
  %25 = load ptr, ptr %ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr11, ptr %ptr, align 8
  store i8 %24, ptr %25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %col, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_word_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %rescale1, align 8
  store ptr %2, ptr %rescale, align 8
  %3 = load ptr, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %iobuffer, align 8
  %5 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %buffer_width, align 8
  %7 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %7, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %8 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %10
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, ptr %17, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub4, i32 0, i32 4
  %18 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 0
  %19 = load ptr, ptr %arrayidx, align 8
  store ptr %19, ptr %ptr, align 8
  %20 = load ptr, ptr %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %iobuffer5, align 8
  store ptr %21, ptr %bufferptr, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %image_width, align 8
  store i32 %23, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %col, align 4
  %cmp6 = icmp ugt i32 %24, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %26 = load i8, ptr %25, align 1
  %conv = zext i8 %26 to i32
  store i32 %conv, ptr %temp, align 4
  %27 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr7, ptr %bufferptr, align 8
  %28 = load i8, ptr %27, align 1
  %conv8 = zext i8 %28 to i32
  %shl = shl i32 %conv8, 8
  %29 = load i32, ptr %temp, align 4
  %or = or i32 %29, %shl
  store i32 %or, ptr %temp, align 4
  %30 = load ptr, ptr %rescale, align 8
  %31 = load i32, ptr %temp, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %30, i64 %idxprom
  %32 = load i8, ptr %arrayidx9, align 1
  %33 = load ptr, ptr %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr10, ptr %ptr, align 8
  store i8 %32, ptr %33, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %col, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_raw_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %iobuffer, align 8
  %3 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %buffer_width, align 8
  %5 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %6 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %source, align 8
  %buffer_width1 = getelementptr inbounds %struct.ppm_source_struct, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %buffer_width1, align 8
  %cmp = icmp eq i64 %call, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void %13(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_scaled_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %rescale1, align 8
  store ptr %2, ptr %rescale, align 8
  %3 = load ptr, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %iobuffer, align 8
  %5 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %buffer_width, align 8
  %7 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %7, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %8 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %10
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, ptr %17, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub4, i32 0, i32 4
  %18 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 0
  %19 = load ptr, ptr %arrayidx, align 8
  store ptr %19, ptr %ptr, align 8
  %20 = load ptr, ptr %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %iobuffer5, align 8
  store ptr %21, ptr %bufferptr, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %image_width, align 8
  store i32 %23, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %col, align 4
  %cmp6 = icmp ugt i32 %24, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %rescale, align 8
  %26 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %27 = load i8, ptr %26, align 1
  %conv = zext i8 %27 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %25, i64 %idxprom
  %28 = load i8, ptr %arrayidx7, align 1
  %29 = load ptr, ptr %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr8, ptr %ptr, align 8
  store i8 %28, ptr %29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %col, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_word_rgb_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %rescale1, align 8
  store ptr %2, ptr %rescale, align 8
  %3 = load ptr, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %iobuffer, align 8
  %5 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %buffer_width, align 8
  %7 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %7, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %8 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %10
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, ptr %17, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub4, i32 0, i32 4
  %18 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 0
  %19 = load ptr, ptr %arrayidx, align 8
  store ptr %19, ptr %ptr, align 8
  %20 = load ptr, ptr %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %iobuffer5, align 8
  store ptr %21, ptr %bufferptr, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %image_width, align 8
  store i32 %23, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %col, align 4
  %cmp6 = icmp ugt i32 %24, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %26 = load i8, ptr %25, align 1
  %conv = zext i8 %26 to i32
  store i32 %conv, ptr %temp, align 4
  %27 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr7, ptr %bufferptr, align 8
  %28 = load i8, ptr %27, align 1
  %conv8 = zext i8 %28 to i32
  %shl = shl i32 %conv8, 8
  %29 = load i32, ptr %temp, align 4
  %or = or i32 %29, %shl
  store i32 %or, ptr %temp, align 4
  %30 = load ptr, ptr %rescale, align 8
  %31 = load i32, ptr %temp, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %30, i64 %idxprom
  %32 = load i8, ptr %arrayidx9, align 1
  %33 = load ptr, ptr %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr10, ptr %ptr, align 8
  store i8 %32, ptr %33, align 1
  %34 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr11, ptr %bufferptr, align 8
  %35 = load i8, ptr %34, align 1
  %conv12 = zext i8 %35 to i32
  store i32 %conv12, ptr %temp, align 4
  %36 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr13, ptr %bufferptr, align 8
  %37 = load i8, ptr %36, align 1
  %conv14 = zext i8 %37 to i32
  %shl15 = shl i32 %conv14, 8
  %38 = load i32, ptr %temp, align 4
  %or16 = or i32 %38, %shl15
  store i32 %or16, ptr %temp, align 4
  %39 = load ptr, ptr %rescale, align 8
  %40 = load i32, ptr %temp, align 4
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %39, i64 %idxprom17
  %41 = load i8, ptr %arrayidx18, align 1
  %42 = load ptr, ptr %ptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr19, ptr %ptr, align 8
  store i8 %41, ptr %42, align 1
  %43 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr20, ptr %bufferptr, align 8
  %44 = load i8, ptr %43, align 1
  %conv21 = zext i8 %44 to i32
  store i32 %conv21, ptr %temp, align 4
  %45 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr22, ptr %bufferptr, align 8
  %46 = load i8, ptr %45, align 1
  %conv23 = zext i8 %46 to i32
  %shl24 = shl i32 %conv23, 8
  %47 = load i32, ptr %temp, align 4
  %or25 = or i32 %47, %shl24
  store i32 %or25, ptr %temp, align 4
  %48 = load ptr, ptr %rescale, align 8
  %49 = load i32, ptr %temp, align 4
  %idxprom26 = sext i32 %49 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %48, i64 %idxprom26
  %50 = load i8, ptr %arrayidx27, align 1
  %51 = load ptr, ptr %ptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr28, ptr %ptr, align 8
  store i8 %50, ptr %51, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, ptr %col, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_scaled_rgb_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %bufferptr = alloca ptr, align 8
  %rescale = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %rescale1, align 8
  store ptr %2, ptr %rescale, align 8
  %3 = load ptr, ptr %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %iobuffer, align 8
  %5 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %buffer_width, align 8
  %7 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, ptr %7, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %8 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %10
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, ptr %17, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub4, i32 0, i32 4
  %18 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 0
  %19 = load ptr, ptr %arrayidx, align 8
  store ptr %19, ptr %ptr, align 8
  %20 = load ptr, ptr %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %iobuffer5, align 8
  store ptr %21, ptr %bufferptr, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %image_width, align 8
  store i32 %23, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %col, align 4
  %cmp6 = icmp ugt i32 %24, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %rescale, align 8
  %26 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %bufferptr, align 8
  %27 = load i8, ptr %26, align 1
  %conv = zext i8 %27 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %25, i64 %idxprom
  %28 = load i8, ptr %arrayidx7, align 1
  %29 = load ptr, ptr %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr8, ptr %ptr, align 8
  store i8 %28, ptr %29, align 1
  %30 = load ptr, ptr %rescale, align 8
  %31 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr9, ptr %bufferptr, align 8
  %32 = load i8, ptr %31, align 1
  %conv10 = zext i8 %32 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %30, i64 %idxprom11
  %33 = load i8, ptr %arrayidx12, align 1
  %34 = load ptr, ptr %ptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr13, ptr %ptr, align 8
  store i8 %33, ptr %34, align 1
  %35 = load ptr, ptr %rescale, align 8
  %36 = load ptr, ptr %bufferptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr14, ptr %bufferptr, align 8
  %37 = load i8, ptr %36, align 1
  %conv15 = zext i8 %37 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %35, i64 %idxprom16
  %38 = load i8, ptr %arrayidx17, align 1
  %39 = load ptr, ptr %ptr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr18, ptr %ptr, align 8
  store i8 %38, ptr %39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %col, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %col, align 4
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
  %0 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %2 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %2)
  store i32 %call1, ptr %ch, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %ch, align 4
  %cmp2 = icmp ne i32 %3, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %4 = load i32, ptr %ch, align 4
  %cmp3 = icmp ne i32 %4, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %6 = load i32, ptr %ch, align 4
  ret i32 %6
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdppm_0(ptr noundef %cinfo, ptr noundef %infile)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @pbm_getc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %error_exit, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void %6(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, ptr %ch, align 4
  %cmp2 = icmp eq i32 %8, 32
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %9 = load i32, ptr %ch, align 4
  %cmp3 = icmp eq i32 %9, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = load i32, ptr %ch, align 4
  %cmp5 = icmp eq i32 %10, 10
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  %11 = load i32, ptr %ch, align 4
  %cmp6 = icmp eq i32 %11, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false, %do.cond
  %12 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp6, %lor.rhs ]
  br i1 %12, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %lor.end
  %13 = load i32, ptr %ch, align 4
  %cmp7 = icmp slt i32 %13, 48
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %do.end
  %14 = load i32, ptr %ch, align 4
  %cmp9 = icmp sgt i32 %14, 57
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %lor.lhs.false8, %do.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 1026, ptr %msg_code12, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit14, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %lor.lhs.false8
  %21 = load i32, ptr %ch, align 4
  %sub = sub nsw i32 %21, 48
  store i32 %sub, ptr %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %22 = load ptr, ptr %infile.addr, align 8
  %call16 = call i32 @pbm_getc(ptr noundef %22)
  store i32 %call16, ptr %ch, align 4
  %cmp17 = icmp sge i32 %call16, 48
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i32, ptr %ch, align 4
  %cmp18 = icmp sle i32 %23, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %val, align 4
  %mul = mul i32 %25, 10
  store i32 %mul, ptr %val, align 4
  %26 = load i32, ptr %ch, align 4
  %sub19 = sub nsw i32 %26, 48
  %27 = load i32, ptr %val, align 4
  %add = add i32 %27, %sub19
  store i32 %add, ptr %val, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %28 = load i32, ptr %val, align 4
  ret i32 %28
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
