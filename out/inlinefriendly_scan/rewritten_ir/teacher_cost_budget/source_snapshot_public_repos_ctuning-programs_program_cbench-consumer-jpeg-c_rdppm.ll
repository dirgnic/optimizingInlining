; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_rdppm.prepared.ll'
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
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 80) #2
  store ptr @start_input_ppm, ptr %call, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call, i64 0, i32 2
  store ptr @finish_input_ppm, ptr %finish_input, align 8
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_ppm(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
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
  %call = call i32 @getc(ptr noundef %0) #2
  %cmp.not = icmp eq i32 %call, 80
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 1027, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %source, align 8
  %input_file3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %input_file3, align 8
  %call4 = call i32 @getc(ptr noundef %6) #2
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
  %call13 = call i32 @read_pbm_integer(ptr noundef %11, ptr noundef %12)
  store i32 %call13, ptr %maxval, align 4
  %13 = load i32, ptr %w, align 4
  %cmp14 = icmp eq i32 %13, 0
  %14 = load i32, ptr %h, align 4
  %cmp15 = icmp eq i32 %14, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp15
  %15 = load i32, ptr %maxval, align 4
  %cmp17 = icmp eq i32 %15, 0
  %or.cond2 = select i1 %or.cond, i1 true, i1 %cmp17
  br i1 %or.cond2, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 1027, ptr %msg_code20, align 8
  %18 = load ptr, ptr %16, align 8
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull %16) #2
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then18
  %20 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %21 = load i32, ptr %w, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 6
  store i32 %21, ptr %image_width, align 8
  %22 = load i32, ptr %h, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 7
  store i32 %22, ptr %image_height, align 4
  store i32 1, ptr %need_iobuffer, align 4
  store i32 0, ptr %use_raw_buffer, align 4
  store i32 1, ptr %need_rescale, align 4
  %24 = load i32, ptr %c, align 4
  switch i32 %24, label %sw.default [
    i32 50, label %sw.bb
    i32 51, label %sw.bb32
    i32 53, label %sw.bb47
    i32 54, label %sw.bb73
  ]

sw.bb:                                            ; preds = %if.end23
  %25 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 8
  store i32 1, ptr %input_components, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 9
  store i32 1, ptr %in_color_space, align 4
  %26 = load ptr, ptr %25, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 1029, ptr %msg_code25, align 8
  %27 = load i32, ptr %w, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i64 0, i32 6
  store i32 %27, ptr %msg_parm, align 4
  %30 = load i32, ptr %h, align 4
  %31 = load ptr, ptr %28, align 8
  %arrayidx29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6, i32 0, i64 1
  store i32 %30, ptr %arrayidx29, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %emit_message, align 8
  call void %34(ptr noundef nonnull %32, i32 noundef 1) #2
  %35 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %35, i64 0, i32 1
  store ptr @get_text_gray_row, ptr %get_pixel_rows, align 8
  store i32 0, ptr %need_iobuffer, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  %36 = load ptr, ptr %cinfo.addr, align 8
  %input_components33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 8
  store i32 3, ptr %input_components33, align 8
  %in_color_space34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 9
  store i32 2, ptr %in_color_space34, align 4
  %37 = load ptr, ptr %36, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 1031, ptr %msg_code36, align 8
  %38 = load i32, ptr %w, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 6
  store i32 %38, ptr %msg_parm38, align 4
  %41 = load i32, ptr %h, align 4
  %42 = load ptr, ptr %39, align 8
  %arrayidx42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6, i32 0, i64 1
  store i32 %41, ptr %arrayidx42, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %44 = load ptr, ptr %43, align 8
  %emit_message44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %44, i64 0, i32 1
  %45 = load ptr, ptr %emit_message44, align 8
  call void %45(ptr noundef nonnull %43, i32 noundef 1) #2
  %46 = load ptr, ptr %source, align 8
  %get_pixel_rows46 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %46, i64 0, i32 1
  store ptr @get_text_rgb_row, ptr %get_pixel_rows46, align 8
  store i32 0, ptr %need_iobuffer, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end23
  %47 = load ptr, ptr %cinfo.addr, align 8
  %input_components48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 8
  store i32 1, ptr %input_components48, align 8
  %in_color_space49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 9
  store i32 1, ptr %in_color_space49, align 4
  %48 = load ptr, ptr %47, align 8
  %msg_code51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 1028, ptr %msg_code51, align 8
  %49 = load i32, ptr %w, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %msg_parm53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6
  store i32 %49, ptr %msg_parm53, align 4
  %52 = load i32, ptr %h, align 4
  %53 = load ptr, ptr %50, align 8
  %arrayidx57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6, i32 0, i64 1
  store i32 %52, ptr %arrayidx57, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load ptr, ptr %54, align 8
  %emit_message59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 1
  %56 = load ptr, ptr %emit_message59, align 8
  call void %56(ptr noundef nonnull %54, i32 noundef 1) #2
  %57 = load i32, ptr %maxval, align 4
  %cmp60 = icmp ugt i32 %57, 255
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %sw.bb47
  %58 = load ptr, ptr %source, align 8
  %get_pixel_rows63 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %58, i64 0, i32 1
  store ptr @get_word_gray_row, ptr %get_pixel_rows63, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb47
  %59 = load i32, ptr %maxval, align 4
  %cmp64 = icmp eq i32 %59, 255
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.else
  %60 = load ptr, ptr %source, align 8
  %get_pixel_rows67 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %60, i64 0, i32 1
  store ptr @get_raw_row, ptr %get_pixel_rows67, align 8
  store i32 1, ptr %use_raw_buffer, align 4
  store i32 0, ptr %need_rescale, align 4
  br label %sw.epilog

if.else68:                                        ; preds = %if.else
  %61 = load ptr, ptr %source, align 8
  %get_pixel_rows70 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %61, i64 0, i32 1
  store ptr @get_scaled_gray_row, ptr %get_pixel_rows70, align 8
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end23
  %62 = load ptr, ptr %cinfo.addr, align 8
  %input_components74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i64 0, i32 8
  store i32 3, ptr %input_components74, align 8
  %in_color_space75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i64 0, i32 9
  store i32 2, ptr %in_color_space75, align 4
  %63 = load ptr, ptr %62, align 8
  %msg_code77 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 5
  store i32 1030, ptr %msg_code77, align 8
  %64 = load i32, ptr %w, align 4
  %65 = load ptr, ptr %cinfo.addr, align 8
  %66 = load ptr, ptr %65, align 8
  %msg_parm79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 6
  store i32 %64, ptr %msg_parm79, align 4
  %67 = load i32, ptr %h, align 4
  %68 = load ptr, ptr %65, align 8
  %arrayidx83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 6, i32 0, i64 1
  store i32 %67, ptr %arrayidx83, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %70 = load ptr, ptr %69, align 8
  %emit_message85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 1
  %71 = load ptr, ptr %emit_message85, align 8
  call void %71(ptr noundef nonnull %69, i32 noundef 1) #2
  %72 = load i32, ptr %maxval, align 4
  %cmp86 = icmp ugt i32 %72, 255
  br i1 %cmp86, label %if.then87, label %if.else90

if.then87:                                        ; preds = %sw.bb73
  %73 = load ptr, ptr %source, align 8
  %get_pixel_rows89 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %73, i64 0, i32 1
  store ptr @get_word_rgb_row, ptr %get_pixel_rows89, align 8
  br label %sw.epilog

if.else90:                                        ; preds = %sw.bb73
  %74 = load i32, ptr %maxval, align 4
  %cmp91 = icmp eq i32 %74, 255
  br i1 %cmp91, label %if.then92, label %if.else95

if.then92:                                        ; preds = %if.else90
  %75 = load ptr, ptr %source, align 8
  %get_pixel_rows94 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %75, i64 0, i32 1
  store ptr @get_raw_row, ptr %get_pixel_rows94, align 8
  store i32 1, ptr %use_raw_buffer, align 4
  store i32 0, ptr %need_rescale, align 4
  br label %sw.epilog

if.else95:                                        ; preds = %if.else90
  %76 = load ptr, ptr %source, align 8
  %get_pixel_rows97 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %76, i64 0, i32 1
  store ptr @get_scaled_rgb_row, ptr %get_pixel_rows97, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  %77 = load ptr, ptr %cinfo.addr, align 8
  %78 = load ptr, ptr %77, align 8
  %msg_code101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 5
  store i32 1027, ptr %msg_code101, align 8
  %79 = load ptr, ptr %77, align 8
  %80 = load ptr, ptr %79, align 8
  call void %80(ptr noundef nonnull %77) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then87, %if.else95, %if.then92, %if.then61, %if.else68, %if.then65, %sw.default, %sw.bb32, %sw.bb
  %81 = load i32, ptr %need_iobuffer, align 4
  %tobool.not = icmp eq i32 %81, 0
  br i1 %tobool.not, label %if.end112, label %if.then104

if.then104:                                       ; preds = %sw.epilog
  %82 = load i32, ptr %w, align 4
  %conv = zext i32 %82 to i64
  %83 = load ptr, ptr %cinfo.addr, align 8
  %input_components105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %83, i64 0, i32 8
  %84 = load i32, ptr %input_components105, align 8
  %conv106 = sext i32 %84 to i64
  %mul = mul nsw i64 %conv, %conv106
  %85 = load i32, ptr %maxval, align 4
  %cmp107 = icmp ult i32 %85, 256
  %cond = select i1 %cmp107, i64 1, i64 2
  %mul109 = mul i64 %mul, %cond
  %86 = load ptr, ptr %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, ptr %86, i64 0, i32 3
  store i64 %mul109, ptr %buffer_width, align 8
  %87 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %87, i64 0, i32 1
  %88 = load ptr, ptr %mem, align 8
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr %source, align 8
  %buffer_width110 = getelementptr inbounds %struct.ppm_source_struct, ptr %90, i64 0, i32 3
  %91 = load i64, ptr %buffer_width110, align 8
  %call111 = call ptr %89(ptr noundef %87, i32 noundef 1, i64 noundef %91) #2
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, ptr %90, i64 0, i32 1
  store ptr %call111, ptr %iobuffer, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %sw.epilog
  %92 = load i32, ptr %use_raw_buffer, align 4
  %tobool113.not = icmp eq i32 %92, 0
  br i1 %tobool113.not, label %if.else119, label %if.then114

if.then114:                                       ; preds = %if.end112
  %93 = load ptr, ptr %source, align 8
  %iobuffer115 = getelementptr inbounds %struct.ppm_source_struct, ptr %93, i64 0, i32 1
  %94 = load ptr, ptr %iobuffer115, align 8
  %pixrow = getelementptr inbounds %struct.ppm_source_struct, ptr %93, i64 0, i32 2
  store ptr %94, ptr %pixrow, align 8
  %pixrow116 = getelementptr inbounds %struct.ppm_source_struct, ptr %93, i64 0, i32 2
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %93, i64 0, i32 4
  store ptr %pixrow116, ptr %buffer, align 8
  %95 = load ptr, ptr %source, align 8
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %95, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  br label %if.end128

if.else119:                                       ; preds = %if.end112
  %96 = load ptr, ptr %cinfo.addr, align 8
  %mem120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i64 0, i32 1
  %97 = load ptr, ptr %mem120, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %97, i64 0, i32 2
  %98 = load ptr, ptr %alloc_sarray, align 8
  %99 = load i32, ptr %w, align 4
  %input_components121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i64 0, i32 8
  %100 = load i32, ptr %input_components121, align 8
  %mul122 = mul i32 %99, %100
  %call123 = call ptr %98(ptr noundef %96, i32 noundef 1, i32 noundef %mul122, i32 noundef 1) #2
  %101 = load ptr, ptr %source, align 8
  %buffer125 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %101, i64 0, i32 4
  store ptr %call123, ptr %buffer125, align 8
  %buffer_height127 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %101, i64 0, i32 5
  store i32 1, ptr %buffer_height127, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.else119, %if.then114
  %102 = load i32, ptr %need_rescale, align 4
  %tobool129.not = icmp eq i32 %102, 0
  br i1 %tobool129.not, label %if.end147, label %if.then130

if.then130:                                       ; preds = %if.end128
  %103 = load ptr, ptr %cinfo.addr, align 8
  %mem131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i64 0, i32 1
  %104 = load ptr, ptr %mem131, align 8
  %105 = load ptr, ptr %104, align 8
  %106 = load i32, ptr %maxval, align 4
  %conv133 = zext i32 %106 to i64
  %add = add nuw nsw i64 %conv133, 1
  %call135 = call ptr %105(ptr noundef %103, i32 noundef 1, i64 noundef %add) #2
  %107 = load ptr, ptr %source, align 8
  %rescale = getelementptr inbounds %struct.ppm_source_struct, ptr %107, i64 0, i32 4
  store ptr %call135, ptr %rescale, align 8
  %108 = load i32, ptr %maxval, align 4
  %div1 = lshr i32 %108, 1
  %conv136 = zext i32 %div1 to i64
  store i64 %conv136, ptr %half_maxval, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then130
  %storemerge = phi i64 [ 0, %if.then130 ], [ %inc, %for.body ]
  store i64 %storemerge, ptr %val, align 8
  %109 = load i32, ptr %maxval, align 4
  %conv137 = zext i32 %109 to i64
  %cmp138.not = icmp sgt i64 %storemerge, %conv137
  br i1 %cmp138.not, label %if.end147, label %for.body

for.body:                                         ; preds = %for.cond
  %110 = load i64, ptr %val, align 8
  %mul140 = mul nsw i64 %110, 255
  %111 = load i64, ptr %half_maxval, align 8
  %add141 = add nsw i64 %mul140, %111
  %112 = load i32, ptr %maxval, align 4
  %conv142 = zext i32 %112 to i64
  %div143 = sdiv i64 %add141, %conv142
  %conv144 = trunc i64 %div143 to i8
  %113 = load ptr, ptr %source, align 8
  %rescale145 = getelementptr inbounds %struct.ppm_source_struct, ptr %113, i64 0, i32 4
  %114 = load ptr, ptr %rescale145, align 8
  %115 = load i64, ptr %val, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %114, i64 %115
  store i8 %conv144, ptr %arrayidx146, align 1
  %116 = load i64, ptr %val, align 8
  %inc = add nsw i64 %116, 1
  br label %for.cond, !llvm.loop !6

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
  call void %4(ptr noundef nonnull %1) #2
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
  br i1 %or.cond3, label %do.body, label %do.end, !llvm.loop !8

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
  call void %14(ptr noundef nonnull %11) #2
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
  br label %while.cond, !llvm.loop !9

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
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #2
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
  call void %9(ptr noundef nonnull %6) #2
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
  %call = call i64 @fread(ptr noundef %0, i64 noundef 1, i64 noundef %1, ptr noundef %2) #2
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
  call void %8(ptr noundef nonnull %5) #2
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
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #2
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
  call void %9(ptr noundef nonnull %6) #2
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
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #2
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
  call void %9(ptr noundef nonnull %6) #2
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
  %call = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %4) #2
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
  call void %9(ptr noundef nonnull %6) #2
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
  %call = call i32 @getc(ptr noundef %infile) #2
  store i32 %call, ptr %ch, align 4
  %cmp = icmp eq i32 %call, 35
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry, %do.body
  %0 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %0) #2
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

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
