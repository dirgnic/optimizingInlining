; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_rdtarga.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdtarga.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_targa(ptr noundef %cinfo) #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 112) #2
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, ptr %call, i64 0, i32 1
  store ptr %cinfo, ptr %cinfo1, align 8
  store ptr @start_input_tga, ptr %call, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call, i64 0, i32 2
  store ptr @finish_input_tga, ptr %finish_input, align 8
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_tga(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %targaheader = alloca [18 x i8], align 1
  %idlen = alloca i32, align 4
  %cmaptype = alloca i32, align 4
  %subtype = alloca i32, align 4
  %interlace_type = alloca i32, align 4
  %components = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %maplen = alloca i32, align 4
  %is_bottom_up = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef nonnull %targaheader, i64 noundef 1, i64 noundef 18, ptr noundef %0) #2
  %cmp = icmp eq i64 %call, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr noundef nonnull %1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  %5 = load i8, ptr %arrayidx, align 1
  %cmp2 = icmp eq i8 %5, 15
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 16, ptr %arrayidx5, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = load i8, ptr %targaheader, align 1
  %conv8 = zext i8 %6 to i32
  store i32 %conv8, ptr %idlen, align 4
  %arrayidx9 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 1
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  store i32 %conv10, ptr %cmaptype, align 4
  %arrayidx11 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  store i32 %conv12, ptr %subtype, align 4
  %arrayidx13 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 5
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %arrayidx15 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 6
  %10 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv16, 8
  %add = or i32 %shl, %conv14
  store i32 %add, ptr %maplen, align 4
  %arrayidx17 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 12
  %11 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %arrayidx19 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 13
  %12 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %12 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %add22 = or i32 %shl21, %conv18
  store i32 %add22, ptr %width, align 4
  %arrayidx23 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 14
  %13 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %arrayidx25 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 15
  %14 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %add28 = or i32 %shl27, %conv24
  store i32 %add28, ptr %height, align 4
  %arrayidx29 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  %15 = load i8, ptr %arrayidx29, align 1
  %16 = lshr i8 %15, 3
  %17 = zext i8 %16 to i32
  %18 = load ptr, ptr %source, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, ptr %18, i64 0, i32 7
  store i32 %17, ptr %pixel_size, align 4
  %arrayidx31 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 17
  %19 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %and = lshr i32 %conv32, 5
  %and.lobit = and i32 %and, 1
  %20 = xor i32 %and.lobit, 1
  store i32 %20, ptr %is_bottom_up, align 4
  %21 = lshr i32 %conv32, 6
  store i32 %21, ptr %interlace_type, align 4
  %22 = load i32, ptr %cmaptype, align 4
  %cmp36 = icmp sgt i32 %22, 1
  br i1 %cmp36, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %23 = load ptr, ptr %source, align 8
  %pixel_size38 = getelementptr inbounds %struct._tga_source_struct, ptr %23, i64 0, i32 7
  %24 = load i32, ptr %pixel_size38, align 4
  %cmp39 = icmp slt i32 %24, 1
  br i1 %cmp39, label %if.then54, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %25 = load ptr, ptr %source, align 8
  %pixel_size42 = getelementptr inbounds %struct._tga_source_struct, ptr %25, i64 0, i32 7
  %26 = load i32, ptr %pixel_size42, align 4
  %cmp43 = icmp sgt i32 %26, 4
  br i1 %cmp43, label %if.then54, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %arrayidx46 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  %27 = load i8, ptr %arrayidx46, align 1
  %28 = and i8 %27, 7
  %cmp49.not = icmp eq i8 %28, 0
  %29 = load i32, ptr %interlace_type, align 4
  %cmp52.not = icmp eq i32 %29, 0
  %or.cond = select i1 %cmp49.not, i1 %cmp52.not, i1 false
  br i1 %or.cond, label %if.end59, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false45, %lor.lhs.false41, %lor.lhs.false, %if.end6
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %msg_code56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 1033, ptr %msg_code56, align 8
  %32 = load ptr, ptr %30, align 8
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull %30) #2
  br label %if.end59

if.end59:                                         ; preds = %lor.lhs.false45, %if.then54
  %34 = load i32, ptr %subtype, align 4
  %cmp60 = icmp sgt i32 %34, 8
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end59
  %35 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %35, i64 0, i32 5
  store ptr @read_rle_pixel, ptr %read_pixel, align 8
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, ptr %35, i64 0, i32 9
  store i32 0, ptr %dup_pixel_count, align 4
  %block_count = getelementptr inbounds %struct._tga_source_struct, ptr %35, i64 0, i32 8
  store i32 0, ptr %block_count, align 8
  %36 = load i32, ptr %subtype, align 4
  %sub = add nsw i32 %36, -8
  store i32 %sub, ptr %subtype, align 4
  br label %if.end64

if.else:                                          ; preds = %if.end59
  %37 = load ptr, ptr %source, align 8
  %read_pixel63 = getelementptr inbounds %struct._tga_source_struct, ptr %37, i64 0, i32 5
  store ptr @read_non_rle_pixel, ptr %read_pixel63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then62
  store i32 3, ptr %components, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i64 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  %39 = load i32, ptr %subtype, align 4
  switch i32 %39, label %sw.default130 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb85
    i32 3, label %sw.bb107
  ]

sw.bb:                                            ; preds = %if.end64
  %40 = load ptr, ptr %source, align 8
  %pixel_size65 = getelementptr inbounds %struct._tga_source_struct, ptr %40, i64 0, i32 7
  %41 = load i32, ptr %pixel_size65, align 4
  %cmp66 = icmp eq i32 %41, 1
  %42 = load i32, ptr %cmaptype, align 4
  %cmp68 = icmp eq i32 %42, 1
  %or.cond1 = select i1 %cmp66, i1 %cmp68, i1 false
  br i1 %or.cond1, label %if.then70, label %if.else71

if.then70:                                        ; preds = %sw.bb
  %43 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, ptr %43, i64 0, i32 10
  store ptr @get_8bit_row, ptr %get_pixel_rows, align 8
  br label %if.end76

if.else71:                                        ; preds = %sw.bb
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %44, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 1033, ptr %msg_code73, align 8
  %46 = load ptr, ptr %44, align 8
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull %44) #2
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %if.then70
  %48 = load ptr, ptr %cinfo.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 1037, ptr %msg_code78, align 8
  %50 = load i32, ptr %width, align 4
  %51 = load ptr, ptr %48, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6
  store i32 %50, ptr %msg_parm, align 4
  %52 = load i32, ptr %height, align 4
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %arrayidx83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 6, i32 0, i64 1
  store i32 %52, ptr %arrayidx83, align 4
  %55 = load ptr, ptr %53, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 1
  %56 = load ptr, ptr %emit_message, align 8
  %57 = load ptr, ptr %cinfo.addr, align 8
  call void %56(ptr noundef %57, i32 noundef 1) #2
  br label %sw.epilog135

sw.bb85:                                          ; preds = %if.end64
  %58 = load ptr, ptr %source, align 8
  %pixel_size86 = getelementptr inbounds %struct._tga_source_struct, ptr %58, i64 0, i32 7
  %59 = load i32, ptr %pixel_size86, align 4
  switch i32 %59, label %sw.default [
    i32 2, label %sw.bb87
    i32 3, label %sw.bb89
    i32 4, label %sw.bb91
  ]

sw.bb87:                                          ; preds = %sw.bb85
  %60 = load ptr, ptr %source, align 8
  %get_pixel_rows88 = getelementptr inbounds %struct._tga_source_struct, ptr %60, i64 0, i32 10
  store ptr @get_16bit_row, ptr %get_pixel_rows88, align 8
  br label %sw.epilog

sw.bb89:                                          ; preds = %sw.bb85
  %61 = load ptr, ptr %source, align 8
  %get_pixel_rows90 = getelementptr inbounds %struct._tga_source_struct, ptr %61, i64 0, i32 10
  store ptr @get_24bit_row, ptr %get_pixel_rows90, align 8
  br label %sw.epilog

sw.bb91:                                          ; preds = %sw.bb85
  %62 = load ptr, ptr %source, align 8
  %get_pixel_rows92 = getelementptr inbounds %struct._tga_source_struct, ptr %62, i64 0, i32 10
  store ptr @get_24bit_row, ptr %get_pixel_rows92, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb85
  %63 = load ptr, ptr %cinfo.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %msg_code94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 5
  store i32 1033, ptr %msg_code94, align 8
  %65 = load ptr, ptr %63, align 8
  %66 = load ptr, ptr %65, align 8
  call void %66(ptr noundef nonnull %63) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb91, %sw.bb89, %sw.bb87
  %67 = load ptr, ptr %cinfo.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %msg_code98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 1035, ptr %msg_code98, align 8
  %69 = load i32, ptr %width, align 4
  %70 = load ptr, ptr %67, align 8
  %msg_parm100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 6
  store i32 %69, ptr %msg_parm100, align 4
  %71 = load i32, ptr %height, align 4
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %arrayidx104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 6, i32 0, i64 1
  store i32 %71, ptr %arrayidx104, align 4
  %74 = load ptr, ptr %72, align 8
  %emit_message106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 1
  %75 = load ptr, ptr %emit_message106, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void %75(ptr noundef %76, i32 noundef 1) #2
  br label %sw.epilog135

sw.bb107:                                         ; preds = %if.end64
  store i32 1, ptr %components, align 4
  %77 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space108 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %77, i64 0, i32 9
  store i32 1, ptr %in_color_space108, align 4
  %78 = load ptr, ptr %source, align 8
  %pixel_size109 = getelementptr inbounds %struct._tga_source_struct, ptr %78, i64 0, i32 7
  %79 = load i32, ptr %pixel_size109, align 4
  %cmp110 = icmp eq i32 %79, 1
  br i1 %cmp110, label %if.then112, label %if.else114

if.then112:                                       ; preds = %sw.bb107
  %80 = load ptr, ptr %source, align 8
  %get_pixel_rows113 = getelementptr inbounds %struct._tga_source_struct, ptr %80, i64 0, i32 10
  store ptr @get_8bit_gray_row, ptr %get_pixel_rows113, align 8
  br label %if.end119

if.else114:                                       ; preds = %sw.bb107
  %81 = load ptr, ptr %cinfo.addr, align 8
  %82 = load ptr, ptr %81, align 8
  %msg_code116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 5
  store i32 1033, ptr %msg_code116, align 8
  %83 = load ptr, ptr %81, align 8
  %84 = load ptr, ptr %83, align 8
  call void %84(ptr noundef nonnull %81) #2
  br label %if.end119

if.end119:                                        ; preds = %if.else114, %if.then112
  %85 = load ptr, ptr %cinfo.addr, align 8
  %86 = load ptr, ptr %85, align 8
  %msg_code121 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 5
  store i32 1036, ptr %msg_code121, align 8
  %87 = load i32, ptr %width, align 4
  %88 = load ptr, ptr %85, align 8
  %msg_parm123 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 6
  store i32 %87, ptr %msg_parm123, align 4
  %89 = load i32, ptr %height, align 4
  %90 = load ptr, ptr %cinfo.addr, align 8
  %91 = load ptr, ptr %90, align 8
  %arrayidx127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i64 0, i32 6, i32 0, i64 1
  store i32 %89, ptr %arrayidx127, align 4
  %92 = load ptr, ptr %90, align 8
  %emit_message129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 1
  %93 = load ptr, ptr %emit_message129, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  call void %93(ptr noundef %94, i32 noundef 1) #2
  br label %sw.epilog135

sw.default130:                                    ; preds = %if.end64
  %95 = load ptr, ptr %cinfo.addr, align 8
  %96 = load ptr, ptr %95, align 8
  %msg_code132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 1033, ptr %msg_code132, align 8
  %97 = load ptr, ptr %95, align 8
  %98 = load ptr, ptr %97, align 8
  call void %98(ptr noundef nonnull %95) #2
  br label %sw.epilog135

sw.epilog135:                                     ; preds = %sw.default130, %if.end119, %sw.epilog, %if.end76
  %99 = load i32, ptr %is_bottom_up, align 4
  %tobool.not = icmp eq i32 %99, 0
  br i1 %tobool.not, label %if.else147, label %if.then136

if.then136:                                       ; preds = %sw.epilog135
  %100 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %100, i64 0, i32 1
  %101 = load ptr, ptr %mem, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %101, i64 0, i32 4
  %102 = load ptr, ptr %request_virt_sarray, align 8
  %103 = load i32, ptr %width, align 4
  %104 = load i32, ptr %components, align 4
  %mul = mul i32 %103, %104
  %105 = load i32, ptr %height, align 4
  %call137 = call ptr %102(ptr noundef %100, i32 noundef 1, i32 noundef 0, i32 noundef %mul, i32 noundef %105, i32 noundef 1) #2
  %106 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %106, i64 0, i32 3
  store ptr %call137, ptr %whole_image, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %107, i64 0, i32 2
  %108 = load ptr, ptr %progress, align 8
  %cmp138.not = icmp eq ptr %108, null
  br i1 %cmp138.not, label %if.end143, label %if.then140

if.then140:                                       ; preds = %if.then136
  %109 = load ptr, ptr %cinfo.addr, align 8
  %progress142 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %109, i64 0, i32 2
  %110 = load ptr, ptr %progress142, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %110, i64 0, i32 2
  %111 = load i32, ptr %total_extra_passes, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, ptr %total_extra_passes, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.then136
  %112 = load ptr, ptr %source, align 8
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %112, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %get_pixel_rows146 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %112, i64 0, i32 1
  store ptr @preload_image, ptr %get_pixel_rows146, align 8
  br label %if.end158

if.else147:                                       ; preds = %sw.epilog135
  %113 = load ptr, ptr %source, align 8
  %whole_image148 = getelementptr inbounds %struct._tga_source_struct, ptr %113, i64 0, i32 3
  store ptr null, ptr %whole_image148, align 8
  %114 = load ptr, ptr %cinfo.addr, align 8
  %mem149 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i64 0, i32 1
  %115 = load ptr, ptr %mem149, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %115, i64 0, i32 2
  %116 = load ptr, ptr %alloc_sarray, align 8
  %117 = load i32, ptr %width, align 4
  %118 = load i32, ptr %components, align 4
  %mul150 = mul i32 %117, %118
  %call151 = call ptr %116(ptr noundef %114, i32 noundef 1, i32 noundef %mul150, i32 noundef 1) #2
  %119 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %119, i64 0, i32 4
  store ptr %call151, ptr %buffer, align 8
  %buffer_height154 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %119, i64 0, i32 5
  store i32 1, ptr %buffer_height154, align 8
  %get_pixel_rows155 = getelementptr inbounds %struct._tga_source_struct, ptr %119, i64 0, i32 10
  %120 = load ptr, ptr %get_pixel_rows155, align 8
  %121 = load ptr, ptr %source, align 8
  %get_pixel_rows157 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %121, i64 0, i32 1
  store ptr %120, ptr %get_pixel_rows157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.else147, %if.end143
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end158
  %122 = load i32, ptr %idlen, align 4
  %dec = add nsw i32 %122, -1
  store i32 %dec, ptr %idlen, align 4
  %tobool159.not = icmp eq i32 %122, 0
  br i1 %tobool159.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %123 = load ptr, ptr %source, align 8
  %call160 = call i32 @read_byte(ptr noundef %123)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %124 = load i32, ptr %maplen, align 4
  %cmp161.not = icmp eq i32 %124, 0
  br i1 %cmp161.not, label %if.else186, label %if.then163

if.then163:                                       ; preds = %while.end
  %125 = load i32, ptr %maplen, align 4
  %cmp164 = icmp ugt i32 %125, 256
  br i1 %cmp164, label %if.then175, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %if.then163
  %arrayidx167 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 3
  %126 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %126 to i32
  %arrayidx169 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 4
  %127 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %127 to i32
  %shl171 = shl nuw nsw i32 %conv170, 8
  %add172 = or i32 %shl171, %conv168
  %cmp173.not = icmp eq i32 %add172, 0
  br i1 %cmp173.not, label %if.end180, label %if.then175

if.then175:                                       ; preds = %lor.lhs.false166, %if.then163
  %128 = load ptr, ptr %cinfo.addr, align 8
  %129 = load ptr, ptr %128, align 8
  %msg_code177 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %129, i64 0, i32 5
  store i32 1032, ptr %msg_code177, align 8
  %130 = load ptr, ptr %128, align 8
  %131 = load ptr, ptr %130, align 8
  call void %131(ptr noundef nonnull %128) #2
  br label %if.end180

if.end180:                                        ; preds = %if.then175, %lor.lhs.false166
  %132 = load ptr, ptr %cinfo.addr, align 8
  %mem181 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %132, i64 0, i32 1
  %133 = load ptr, ptr %mem181, align 8
  %alloc_sarray182 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %133, i64 0, i32 2
  %134 = load ptr, ptr %alloc_sarray182, align 8
  %135 = load i32, ptr %maplen, align 4
  %call183 = call ptr %134(ptr noundef %132, i32 noundef 1, i32 noundef %135, i32 noundef 3) #2
  %136 = load ptr, ptr %source, align 8
  %colormap = getelementptr inbounds %struct._tga_source_struct, ptr %136, i64 0, i32 2
  store ptr %call183, ptr %colormap, align 8
  %arrayidx184 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 7
  %137 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %137 to i32
  call void @read_colormap(ptr noundef %136, i32 noundef %135, i32 noundef %conv185)
  br label %if.end195

if.else186:                                       ; preds = %while.end
  %138 = load i32, ptr %cmaptype, align 4
  %tobool187.not = icmp eq i32 %138, 0
  br i1 %tobool187.not, label %if.end193, label %if.then188

if.then188:                                       ; preds = %if.else186
  %139 = load ptr, ptr %cinfo.addr, align 8
  %140 = load ptr, ptr %139, align 8
  %msg_code190 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 5
  store i32 1033, ptr %msg_code190, align 8
  %141 = load ptr, ptr %139, align 8
  %142 = load ptr, ptr %141, align 8
  call void %142(ptr noundef nonnull %139) #2
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %if.else186
  %143 = load ptr, ptr %source, align 8
  %colormap194 = getelementptr inbounds %struct._tga_source_struct, ptr %143, i64 0, i32 2
  store ptr null, ptr %colormap194, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.end193, %if.end180
  %144 = load i32, ptr %components, align 4
  %145 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %145, i64 0, i32 8
  store i32 %144, ptr %input_components, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %145, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %146 = load i32, ptr %width, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %145, i64 0, i32 6
  store i32 %146, ptr %image_width, align 8
  %147 = load i32, ptr %height, align 4
  %148 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %148, i64 0, i32 7
  store i32 %147, ptr %image_height, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_tga(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @read_rle_pixel(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  store ptr %0, ptr %infile, align 8
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, ptr %sinfo, i64 0, i32 9
  %1 = load i32, ptr %dup_pixel_count, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sinfo.addr, align 8
  %dup_pixel_count1 = getelementptr inbounds %struct._tga_source_struct, ptr %2, i64 0, i32 9
  %3 = load i32, ptr %dup_pixel_count1, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %dup_pixel_count1, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %sinfo.addr, align 8
  %block_count = getelementptr inbounds %struct._tga_source_struct, ptr %4, i64 0, i32 8
  %5 = load i32, ptr %block_count, align 8
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, ptr %block_count, align 8
  %cmp3 = icmp slt i32 %5, 1
  br i1 %cmp3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @read_byte(ptr noundef %6)
  store i32 %call, ptr %i, align 4
  %and = and i32 %call, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then4
  %7 = load i32, ptr %i, align 4
  %and6 = and i32 %7, 127
  %8 = load ptr, ptr %sinfo.addr, align 8
  %dup_pixel_count7 = getelementptr inbounds %struct._tga_source_struct, ptr %8, i64 0, i32 9
  store i32 %and6, ptr %dup_pixel_count7, align 4
  %block_count8 = getelementptr inbounds %struct._tga_source_struct, ptr %8, i64 0, i32 8
  store i32 0, ptr %block_count8, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %9 = load i32, ptr %i, align 4
  %and9 = and i32 %9, 127
  %10 = load ptr, ptr %sinfo.addr, align 8
  %block_count10 = getelementptr inbounds %struct._tga_source_struct, ptr %10, i64 0, i32 8
  store i32 %and9, ptr %block_count10, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.else, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end12
  %storemerge = phi i32 [ 0, %if.end12 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %11 = load ptr, ptr %sinfo.addr, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, ptr %11, i64 0, i32 7
  %12 = load i32, ptr %pixel_size, align 4
  %cmp13 = icmp slt i32 %storemerge, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %infile, align 8
  %call14 = call i32 @getc(ptr noundef %13) #2
  %conv = trunc i32 %call14 to i8
  %14 = load ptr, ptr %sinfo.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct._tga_source_struct, ptr %14, i64 0, i32 6, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @read_non_rle_pixel(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  store ptr %0, ptr %infile, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %sinfo.addr, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %pixel_size, align 4
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %infile, align 8
  %call = call i32 @getc(ptr noundef %3) #2
  %conv = trunc i32 %call to i8
  %4 = load ptr, ptr %sinfo.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct._tga_source_struct, ptr %4, i64 0, i32 6, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %t = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %colormap = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct._tga_source_struct, ptr %sinfo, i64 0, i32 2
  %0 = load ptr, ptr %colormap1, align 8
  store ptr %0, ptr %colormap, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  %1 = load ptr, ptr %buffer, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %ptr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %4, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %5, i64 0, i32 5
  %6 = load ptr, ptr %read_pixel, align 8
  call void %6(ptr noundef %5) #2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %tga_pixel, align 8
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %t, align 4
  %8 = load ptr, ptr %colormap, align 8
  %9 = load ptr, ptr %8, align 8
  %idxprom = zext i8 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %10 = load i8, ptr %arrayidx4, align 1
  %11 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %10, ptr %11, align 1
  %12 = load ptr, ptr %colormap, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx5, align 8
  %14 = load i32, ptr %t, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 %idxprom6
  %15 = load i8, ptr %arrayidx7, align 1
  %16 = load ptr, ptr %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr8, ptr %ptr, align 8
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %colormap, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx9, align 8
  %19 = load i32, ptr %t, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %18, i64 %idxprom10
  %20 = load i8, ptr %arrayidx11, align 1
  %21 = load ptr, ptr %ptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr12, ptr %ptr, align 8
  store i8 %20, ptr %21, align 1
  %22 = load i32, ptr %col, align 4
  %dec = add i32 %22, -1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_16bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %source = alloca ptr, align 8
  %t = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %sinfo, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %buffer, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %ptr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %2 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %2, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %read_pixel, align 8
  call void %4(ptr noundef %3) #2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %tga_pixel, align 8
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %t, align 4
  %6 = load ptr, ptr %source, align 8
  %arrayidx3 = getelementptr inbounds %struct._tga_source_struct, ptr %6, i64 0, i32 6, i64 1
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %add = or i32 %shl, %conv
  store i32 %add, ptr %t, align 4
  %and = and i32 %conv, 31
  %idxprom = zext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx5, align 1
  %9 = load ptr, ptr %ptr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %8, ptr %arrayidx6, align 1
  %10 = load i32, ptr %t, align 4
  %shr = ashr i32 %10, 5
  store i32 %shr, ptr %t, align 4
  %and7 = and i32 %shr, 31
  %idxprom8 = zext i32 %and7 to i64
  %arrayidx9 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %idxprom8
  %11 = load i8, ptr %arrayidx9, align 1
  %12 = load ptr, ptr %ptr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %11, ptr %arrayidx10, align 1
  %13 = load i32, ptr %t, align 4
  %shr11 = ashr i32 %13, 5
  store i32 %shr11, ptr %t, align 4
  %and12 = and i32 %shr11, 31
  %idxprom13 = zext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %idxprom13
  %14 = load i8, ptr %arrayidx14, align 1
  %15 = load ptr, ptr %ptr, align 8
  store i8 %14, ptr %15, align 1
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 3
  store ptr %add.ptr, ptr %ptr, align 8
  %16 = load i32, ptr %col, align 4
  %dec = add i32 %16, -1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_24bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %sinfo, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %buffer, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %ptr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %2 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %2, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %read_pixel, align 8
  call void %4(ptr noundef %3) #2
  %arrayidx1 = getelementptr inbounds %struct._tga_source_struct, ptr %3, i64 0, i32 6, i64 2
  %5 = load i8, ptr %arrayidx1, align 2
  %6 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %5, ptr %6, align 1
  %7 = load ptr, ptr %source, align 8
  %arrayidx4 = getelementptr inbounds %struct._tga_source_struct, ptr %7, i64 0, i32 6, i64 1
  %8 = load i8, ptr %arrayidx4, align 1
  %incdec.ptr7 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %incdec.ptr7, ptr %ptr, align 8
  store i8 %8, ptr %incdec.ptr, align 1
  %tga_pixel8 = getelementptr inbounds %struct._tga_source_struct, ptr %7, i64 0, i32 6
  %9 = load i8, ptr %tga_pixel8, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %6, i64 3
  store ptr %incdec.ptr12, ptr %ptr, align 8
  store i8 %9, ptr %incdec.ptr7, align 1
  %10 = load i32, ptr %col, align 4
  %dec = add i32 %10, -1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %sinfo, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load ptr, ptr %buffer, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %ptr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 6
  %2 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %2, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %read_pixel, align 8
  call void %4(ptr noundef %3) #2
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %tga_pixel, align 8
  %6 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %5, ptr %6, align 1
  %7 = load i32, ptr %col, align 4
  %dec = add i32 %7, -1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @preload_image(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %row = alloca i32, align 4
  %progress = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 2
  %0 = load ptr, ptr %progress1, align 8
  store ptr %0, ptr %progress, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  store i32 %storemerge, ptr %row, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %image_height, align 4
  %cmp = icmp ult i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %progress, align 8
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %row, align 4
  %conv = zext i32 %4 to i64
  %5 = load ptr, ptr %progress, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %5, i64 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %image_height3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 7
  %7 = load i32, ptr %image_height3, align 4
  %conv4 = zext i32 %7 to i64
  %8 = load ptr, ptr %progress, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %8, i64 0, i32 2
  store i64 %conv4, ptr %pass_limit, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  call void %9(ptr noundef %10) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %12, i64 0, i32 7
  %13 = load ptr, ptr %access_virt_sarray, align 8
  %14 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %whole_image, align 8
  %16 = load i32, ptr %row, align 4
  %call = call ptr %13(ptr noundef %11, ptr noundef %15, i32 noundef %16, i32 noundef 1, i32 noundef 1) #2
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %14, i64 0, i32 4
  store ptr %call, ptr %buffer, align 8
  %17 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, ptr %17, i64 0, i32 10
  %18 = load ptr, ptr %get_pixel_rows, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %sinfo.addr, align 8
  %call8 = call i32 %18(ptr noundef %19, ptr noundef %20) #2
  %21 = load i32, ptr %row, align 4
  %inc = add i32 %21, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %progress, align 8
  %cmp9.not = icmp eq ptr %22, null
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %for.end
  %23 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %completed_extra_passes, align 8
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, ptr %completed_extra_passes, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end
  %25 = load ptr, ptr %source, align 8
  %get_pixel_rows15 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %25, i64 0, i32 1
  store ptr @get_memory_row, ptr %get_pixel_rows15, align 8
  %current_row = getelementptr inbounds %struct._tga_source_struct, ptr %25, i64 0, i32 4
  store i32 0, ptr %current_row, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %27 = load ptr, ptr %sinfo.addr, align 8
  %call16 = call i32 @get_memory_row(ptr noundef %26, ptr noundef %27)
  ret i32 %call16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_byte(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  %call = call i32 @getc(ptr noundef %0) #2
  store i32 %call, ptr %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %cinfo, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %cinfo1, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %cinfo3, align 8
  call void %6(ptr noundef %8) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %c, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define internal void @read_colormap(ptr noundef %sinfo, i32 noundef %cmaplen, i32 noundef %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %cmaplen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store i32 %cmaplen, ptr %cmaplen.addr, align 4
  %cmp.not = icmp eq i32 %mapentrysize, 24
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %cinfo, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 1032, ptr %msg_code, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %cinfo1, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %cinfo3, align 8
  call void %5(ptr noundef %7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %8 = load i32, ptr %cmaplen.addr, align 4
  %cmp4 = icmp slt i32 %storemerge, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @read_byte(ptr noundef %9)
  %conv = trunc i32 %call to i8
  %colormap = getelementptr inbounds %struct._tga_source_struct, ptr %9, i64 0, i32 2
  %10 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  store i8 %conv, ptr %arrayidx5, align 1
  %13 = load ptr, ptr %sinfo.addr, align 8
  %call6 = call i32 @read_byte(ptr noundef %13)
  %conv7 = trunc i32 %call6 to i8
  %colormap8 = getelementptr inbounds %struct._tga_source_struct, ptr %13, i64 0, i32 2
  %14 = load ptr, ptr %colormap8, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx9, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %15, i64 %idxprom10
  store i8 %conv7, ptr %arrayidx11, align 1
  %17 = load ptr, ptr %sinfo.addr, align 8
  %call12 = call i32 @read_byte(ptr noundef %17)
  %conv13 = trunc i32 %call12 to i8
  %colormap14 = getelementptr inbounds %struct._tga_source_struct, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %colormap14, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %19, i64 %idxprom16
  store i8 %conv13, ptr %arrayidx17, align 1
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_memory_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %source_row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  %0 = load i32, ptr %image_height, align 4
  %current_row = getelementptr inbounds %struct._tga_source_struct, ptr %sinfo, i64 0, i32 4
  %1 = load i32, ptr %current_row, align 8
  %2 = xor i32 %1, -1
  %sub1 = add i32 %0, %2
  store i32 %sub1, ptr %source_row, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %access_virt_sarray, align 8
  %6 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %6, i64 0, i32 3
  %7 = load ptr, ptr %whole_image, align 8
  %8 = load i32, ptr %source_row, align 4
  %call = call ptr %5(ptr noundef %3, ptr noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0) #2
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %6, i64 0, i32 4
  store ptr %call, ptr %buffer, align 8
  %9 = load ptr, ptr %source, align 8
  %current_row2 = getelementptr inbounds %struct._tga_source_struct, ptr %9, i64 0, i32 4
  %10 = load i32, ptr %current_row2, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %current_row2, align 8
  ret i32 1
}

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
