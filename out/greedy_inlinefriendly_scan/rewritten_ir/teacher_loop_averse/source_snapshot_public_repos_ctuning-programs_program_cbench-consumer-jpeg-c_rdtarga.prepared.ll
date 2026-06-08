; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdtarga.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdtarga.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_targa(ptr noundef %cinfo) #0 {
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
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 112)
  store ptr %call, ptr %source, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %source, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, ptr %5, i32 0, i32 1
  store ptr %4, ptr %cinfo1, align 8
  %6 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %6, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 0
  store ptr @start_input_tga, ptr %start_input, align 8
  %7 = load ptr, ptr %source, align 8
  %pub2 = getelementptr inbounds %struct._tga_source_struct, ptr %7, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub2, i32 0, i32 2
  store ptr @finish_input_tga, ptr %finish_input, align 8
  %8 = load ptr, ptr %source, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_tga(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %targaheader = alloca [18 x i8], align 1
  %idlen = alloca i32, align 4
  %cmaptype = alloca i32, align 4
  %subtype = alloca i32, align 4
  %flags = alloca i32, align 4
  %interlace_type = alloca i32, align 4
  %components = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %maplen = alloca i32, align 4
  %is_bottom_up = alloca i32, align 4
  %progress141 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %arraydecay = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 0
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 18, ptr noundef %2)
  %cmp = icmp eq i64 %call, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 15
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  store i8 16, ptr %arrayidx5, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %arrayidx7 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 0
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  store i32 %conv8, ptr %idlen, align 4
  %arrayidx9 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 1
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  store i32 %conv10, ptr %cmaptype, align 4
  %arrayidx11 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 2
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  store i32 %conv12, ptr %subtype, align 4
  %arrayidx13 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 5
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %arrayidx15 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 6
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %shl = shl i32 %conv16, 8
  %add = add i32 %conv14, %shl
  store i32 %add, ptr %maplen, align 4
  %arrayidx17 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 12
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %arrayidx19 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 13
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %shl21 = shl i32 %conv20, 8
  %add22 = add i32 %conv18, %shl21
  store i32 %add22, ptr %width, align 4
  %arrayidx23 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 14
  %17 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %17 to i32
  %arrayidx25 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 15
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %shl27 = shl i32 %conv26, 8
  %add28 = add i32 %conv24, %shl27
  store i32 %add28, ptr %height, align 4
  %arrayidx29 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  %19 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %shr = ashr i32 %conv30, 3
  %20 = load ptr, ptr %source, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, ptr %20, i32 0, i32 7
  store i32 %shr, ptr %pixel_size, align 4
  %arrayidx31 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 17
  %21 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %21 to i32
  store i32 %conv32, ptr %flags, align 4
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 32
  %cmp33 = icmp eq i32 %and, 0
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, ptr %is_bottom_up, align 4
  %23 = load i32, ptr %flags, align 4
  %shr35 = ashr i32 %23, 6
  store i32 %shr35, ptr %interlace_type, align 4
  %24 = load i32, ptr %cmaptype, align 4
  %cmp36 = icmp sgt i32 %24, 1
  br i1 %cmp36, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %25 = load ptr, ptr %source, align 8
  %pixel_size38 = getelementptr inbounds %struct._tga_source_struct, ptr %25, i32 0, i32 7
  %26 = load i32, ptr %pixel_size38, align 4
  %cmp39 = icmp slt i32 %26, 1
  br i1 %cmp39, label %if.then54, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %27 = load ptr, ptr %source, align 8
  %pixel_size42 = getelementptr inbounds %struct._tga_source_struct, ptr %27, i32 0, i32 7
  %28 = load i32, ptr %pixel_size42, align 4
  %cmp43 = icmp sgt i32 %28, 4
  br i1 %cmp43, label %if.then54, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %arrayidx46 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 16
  %29 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %29 to i32
  %and48 = and i32 %conv47, 7
  %cmp49 = icmp ne i32 %and48, 0
  br i1 %cmp49, label %if.then54, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false45
  %30 = load i32, ptr %interlace_type, align 4
  %cmp52 = icmp ne i32 %30, 0
  br i1 %cmp52, label %if.then54, label %if.end59

if.then54:                                        ; preds = %lor.lhs.false51, %lor.lhs.false45, %lor.lhs.false41, %lor.lhs.false, %if.end6
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err55, align 8
  %msg_code56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5
  store i32 1033, ptr %msg_code56, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err57, align 8
  %error_exit58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %error_exit58, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  call void %35(ptr noundef %36)
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %lor.lhs.false51
  %37 = load i32, ptr %subtype, align 4
  %cmp60 = icmp sgt i32 %37, 8
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end59
  %38 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %38, i32 0, i32 5
  store ptr @read_rle_pixel, ptr %read_pixel, align 8
  %39 = load ptr, ptr %source, align 8
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, ptr %39, i32 0, i32 9
  store i32 0, ptr %dup_pixel_count, align 4
  %40 = load ptr, ptr %source, align 8
  %block_count = getelementptr inbounds %struct._tga_source_struct, ptr %40, i32 0, i32 8
  store i32 0, ptr %block_count, align 8
  %41 = load i32, ptr %subtype, align 4
  %sub = sub nsw i32 %41, 8
  store i32 %sub, ptr %subtype, align 4
  br label %if.end64

if.else:                                          ; preds = %if.end59
  %42 = load ptr, ptr %source, align 8
  %read_pixel63 = getelementptr inbounds %struct._tga_source_struct, ptr %42, i32 0, i32 5
  store ptr @read_non_rle_pixel, ptr %read_pixel63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then62
  store i32 3, ptr %components, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  %44 = load i32, ptr %subtype, align 4
  switch i32 %44, label %sw.default130 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb85
    i32 3, label %sw.bb107
  ]

sw.bb:                                            ; preds = %if.end64
  %45 = load ptr, ptr %source, align 8
  %pixel_size65 = getelementptr inbounds %struct._tga_source_struct, ptr %45, i32 0, i32 7
  %46 = load i32, ptr %pixel_size65, align 4
  %cmp66 = icmp eq i32 %46, 1
  br i1 %cmp66, label %land.lhs.true, label %if.else71

land.lhs.true:                                    ; preds = %sw.bb
  %47 = load i32, ptr %cmaptype, align 4
  %cmp68 = icmp eq i32 %47, 1
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %land.lhs.true
  %48 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, ptr %48, i32 0, i32 10
  store ptr @get_8bit_row, ptr %get_pixel_rows, align 8
  br label %if.end76

if.else71:                                        ; preds = %land.lhs.true, %sw.bb
  %49 = load ptr, ptr %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err72, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i32 0, i32 5
  store i32 1033, ptr %msg_code73, align 8
  %51 = load ptr, ptr %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %err74, align 8
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %error_exit75, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  call void %53(ptr noundef %54)
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %if.then70
  %55 = load ptr, ptr %cinfo.addr, align 8
  %err77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err77, align 8
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i32 0, i32 5
  store i32 1037, ptr %msg_code78, align 8
  %57 = load i32, ptr %width, align 4
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err79, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 6
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %57, ptr %arrayidx80, align 4
  %60 = load i32, ptr %height, align 4
  %61 = load ptr, ptr %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %err81, align 8
  %msg_parm82 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i32 0, i32 6
  %arrayidx83 = getelementptr inbounds [8 x i32], ptr %msg_parm82, i64 0, i64 1
  store i32 %60, ptr %arrayidx83, align 4
  %63 = load ptr, ptr %cinfo.addr, align 8
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %err84, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %emit_message, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  call void %65(ptr noundef %66, i32 noundef 1)
  br label %sw.epilog135

sw.bb85:                                          ; preds = %if.end64
  %67 = load ptr, ptr %source, align 8
  %pixel_size86 = getelementptr inbounds %struct._tga_source_struct, ptr %67, i32 0, i32 7
  %68 = load i32, ptr %pixel_size86, align 4
  switch i32 %68, label %sw.default [
    i32 2, label %sw.bb87
    i32 3, label %sw.bb89
    i32 4, label %sw.bb91
  ]

sw.bb87:                                          ; preds = %sw.bb85
  %69 = load ptr, ptr %source, align 8
  %get_pixel_rows88 = getelementptr inbounds %struct._tga_source_struct, ptr %69, i32 0, i32 10
  store ptr @get_16bit_row, ptr %get_pixel_rows88, align 8
  br label %sw.epilog

sw.bb89:                                          ; preds = %sw.bb85
  %70 = load ptr, ptr %source, align 8
  %get_pixel_rows90 = getelementptr inbounds %struct._tga_source_struct, ptr %70, i32 0, i32 10
  store ptr @get_24bit_row, ptr %get_pixel_rows90, align 8
  br label %sw.epilog

sw.bb91:                                          ; preds = %sw.bb85
  %71 = load ptr, ptr %source, align 8
  %get_pixel_rows92 = getelementptr inbounds %struct._tga_source_struct, ptr %71, i32 0, i32 10
  store ptr @get_24bit_row, ptr %get_pixel_rows92, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb85
  %72 = load ptr, ptr %cinfo.addr, align 8
  %err93 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %err93, align 8
  %msg_code94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i32 0, i32 5
  store i32 1033, ptr %msg_code94, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %err95 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %err95, align 8
  %error_exit96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %error_exit96, align 8
  %77 = load ptr, ptr %cinfo.addr, align 8
  call void %76(ptr noundef %77)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb91, %sw.bb89, %sw.bb87
  %78 = load ptr, ptr %cinfo.addr, align 8
  %err97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %err97, align 8
  %msg_code98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i32 0, i32 5
  store i32 1035, ptr %msg_code98, align 8
  %80 = load i32, ptr %width, align 4
  %81 = load ptr, ptr %cinfo.addr, align 8
  %err99 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %err99, align 8
  %msg_parm100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i32 0, i32 6
  %arrayidx101 = getelementptr inbounds [8 x i32], ptr %msg_parm100, i64 0, i64 0
  store i32 %80, ptr %arrayidx101, align 4
  %83 = load i32, ptr %height, align 4
  %84 = load ptr, ptr %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %err102, align 8
  %msg_parm103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i32 0, i32 6
  %arrayidx104 = getelementptr inbounds [8 x i32], ptr %msg_parm103, i64 0, i64 1
  store i32 %83, ptr %arrayidx104, align 4
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err105, align 8
  %emit_message106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %emit_message106, align 8
  %89 = load ptr, ptr %cinfo.addr, align 8
  call void %88(ptr noundef %89, i32 noundef 1)
  br label %sw.epilog135

sw.bb107:                                         ; preds = %if.end64
  store i32 1, ptr %components, align 4
  %90 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space108 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %90, i32 0, i32 9
  store i32 1, ptr %in_color_space108, align 4
  %91 = load ptr, ptr %source, align 8
  %pixel_size109 = getelementptr inbounds %struct._tga_source_struct, ptr %91, i32 0, i32 7
  %92 = load i32, ptr %pixel_size109, align 4
  %cmp110 = icmp eq i32 %92, 1
  br i1 %cmp110, label %if.then112, label %if.else114

if.then112:                                       ; preds = %sw.bb107
  %93 = load ptr, ptr %source, align 8
  %get_pixel_rows113 = getelementptr inbounds %struct._tga_source_struct, ptr %93, i32 0, i32 10
  store ptr @get_8bit_gray_row, ptr %get_pixel_rows113, align 8
  br label %if.end119

if.else114:                                       ; preds = %sw.bb107
  %94 = load ptr, ptr %cinfo.addr, align 8
  %err115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %err115, align 8
  %msg_code116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i32 0, i32 5
  store i32 1033, ptr %msg_code116, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  %err117 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %err117, align 8
  %error_exit118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %error_exit118, align 8
  %99 = load ptr, ptr %cinfo.addr, align 8
  call void %98(ptr noundef %99)
  br label %if.end119

if.end119:                                        ; preds = %if.else114, %if.then112
  %100 = load ptr, ptr %cinfo.addr, align 8
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %err120, align 8
  %msg_code121 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i32 0, i32 5
  store i32 1036, ptr %msg_code121, align 8
  %102 = load i32, ptr %width, align 4
  %103 = load ptr, ptr %cinfo.addr, align 8
  %err122 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %err122, align 8
  %msg_parm123 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %104, i32 0, i32 6
  %arrayidx124 = getelementptr inbounds [8 x i32], ptr %msg_parm123, i64 0, i64 0
  store i32 %102, ptr %arrayidx124, align 4
  %105 = load i32, ptr %height, align 4
  %106 = load ptr, ptr %cinfo.addr, align 8
  %err125 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %err125, align 8
  %msg_parm126 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i32 0, i32 6
  %arrayidx127 = getelementptr inbounds [8 x i32], ptr %msg_parm126, i64 0, i64 1
  store i32 %105, ptr %arrayidx127, align 4
  %108 = load ptr, ptr %cinfo.addr, align 8
  %err128 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %err128, align 8
  %emit_message129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %emit_message129, align 8
  %111 = load ptr, ptr %cinfo.addr, align 8
  call void %110(ptr noundef %111, i32 noundef 1)
  br label %sw.epilog135

sw.default130:                                    ; preds = %if.end64
  %112 = load ptr, ptr %cinfo.addr, align 8
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %err131, align 8
  %msg_code132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i32 0, i32 5
  store i32 1033, ptr %msg_code132, align 8
  %114 = load ptr, ptr %cinfo.addr, align 8
  %err133 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %err133, align 8
  %error_exit134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %error_exit134, align 8
  %117 = load ptr, ptr %cinfo.addr, align 8
  call void %116(ptr noundef %117)
  br label %sw.epilog135

sw.epilog135:                                     ; preds = %sw.default130, %if.end119, %sw.epilog, %if.end76
  %118 = load i32, ptr %is_bottom_up, align 4
  %tobool = icmp ne i32 %118, 0
  br i1 %tobool, label %if.then136, label %if.else147

if.then136:                                       ; preds = %sw.epilog135
  %119 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %mem, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %120, i32 0, i32 4
  %121 = load ptr, ptr %request_virt_sarray, align 8
  %122 = load ptr, ptr %cinfo.addr, align 8
  %123 = load i32, ptr %width, align 4
  %124 = load i32, ptr %components, align 4
  %mul = mul i32 %123, %124
  %125 = load i32, ptr %height, align 4
  %call137 = call ptr %121(ptr noundef %122, i32 noundef 1, i32 noundef 0, i32 noundef %mul, i32 noundef %125, i32 noundef 1)
  %126 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %126, i32 0, i32 3
  store ptr %call137, ptr %whole_image, align 8
  %127 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %127, i32 0, i32 2
  %128 = load ptr, ptr %progress, align 8
  %cmp138 = icmp ne ptr %128, null
  br i1 %cmp138, label %if.then140, label %if.end143

if.then140:                                       ; preds = %if.then136
  %129 = load ptr, ptr %cinfo.addr, align 8
  %progress142 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %129, i32 0, i32 2
  %130 = load ptr, ptr %progress142, align 8
  store ptr %130, ptr %progress141, align 8
  %131 = load ptr, ptr %progress141, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %131, i32 0, i32 2
  %132 = load i32, ptr %total_extra_passes, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, ptr %total_extra_passes, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.then136
  %133 = load ptr, ptr %source, align 8
  %pub144 = getelementptr inbounds %struct._tga_source_struct, ptr %133, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub144, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %134 = load ptr, ptr %source, align 8
  %pub145 = getelementptr inbounds %struct._tga_source_struct, ptr %134, i32 0, i32 0
  %get_pixel_rows146 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub145, i32 0, i32 1
  store ptr @preload_image, ptr %get_pixel_rows146, align 8
  br label %if.end158

if.else147:                                       ; preds = %sw.epilog135
  %135 = load ptr, ptr %source, align 8
  %whole_image148 = getelementptr inbounds %struct._tga_source_struct, ptr %135, i32 0, i32 3
  store ptr null, ptr %whole_image148, align 8
  %136 = load ptr, ptr %cinfo.addr, align 8
  %mem149 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %136, i32 0, i32 1
  %137 = load ptr, ptr %mem149, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %137, i32 0, i32 2
  %138 = load ptr, ptr %alloc_sarray, align 8
  %139 = load ptr, ptr %cinfo.addr, align 8
  %140 = load i32, ptr %width, align 4
  %141 = load i32, ptr %components, align 4
  %mul150 = mul i32 %140, %141
  %call151 = call ptr %138(ptr noundef %139, i32 noundef 1, i32 noundef %mul150, i32 noundef 1)
  %142 = load ptr, ptr %source, align 8
  %pub152 = getelementptr inbounds %struct._tga_source_struct, ptr %142, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub152, i32 0, i32 4
  store ptr %call151, ptr %buffer, align 8
  %143 = load ptr, ptr %source, align 8
  %pub153 = getelementptr inbounds %struct._tga_source_struct, ptr %143, i32 0, i32 0
  %buffer_height154 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub153, i32 0, i32 5
  store i32 1, ptr %buffer_height154, align 8
  %144 = load ptr, ptr %source, align 8
  %get_pixel_rows155 = getelementptr inbounds %struct._tga_source_struct, ptr %144, i32 0, i32 10
  %145 = load ptr, ptr %get_pixel_rows155, align 8
  %146 = load ptr, ptr %source, align 8
  %pub156 = getelementptr inbounds %struct._tga_source_struct, ptr %146, i32 0, i32 0
  %get_pixel_rows157 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub156, i32 0, i32 1
  store ptr %145, ptr %get_pixel_rows157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.else147, %if.end143
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end158
  %147 = load i32, ptr %idlen, align 4
  %dec = add nsw i32 %147, -1
  store i32 %dec, ptr %idlen, align 4
  %tobool159 = icmp ne i32 %147, 0
  br i1 %tobool159, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %148 = load ptr, ptr %source, align 8
  %call160 = call i32 @read_byte(ptr noundef %148)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %149 = load i32, ptr %maplen, align 4
  %cmp161 = icmp ugt i32 %149, 0
  br i1 %cmp161, label %if.then163, label %if.else186

if.then163:                                       ; preds = %while.end
  %150 = load i32, ptr %maplen, align 4
  %cmp164 = icmp ugt i32 %150, 256
  br i1 %cmp164, label %if.then175, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %if.then163
  %arrayidx167 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 3
  %151 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %151 to i32
  %arrayidx169 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 4
  %152 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %152 to i32
  %shl171 = shl i32 %conv170, 8
  %add172 = add i32 %conv168, %shl171
  %cmp173 = icmp ne i32 %add172, 0
  br i1 %cmp173, label %if.then175, label %if.end180

if.then175:                                       ; preds = %lor.lhs.false166, %if.then163
  %153 = load ptr, ptr %cinfo.addr, align 8
  %err176 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %153, i32 0, i32 0
  %154 = load ptr, ptr %err176, align 8
  %msg_code177 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i32 0, i32 5
  store i32 1032, ptr %msg_code177, align 8
  %155 = load ptr, ptr %cinfo.addr, align 8
  %err178 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %err178, align 8
  %error_exit179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %error_exit179, align 8
  %158 = load ptr, ptr %cinfo.addr, align 8
  call void %157(ptr noundef %158)
  br label %if.end180

if.end180:                                        ; preds = %if.then175, %lor.lhs.false166
  %159 = load ptr, ptr %cinfo.addr, align 8
  %mem181 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %159, i32 0, i32 1
  %160 = load ptr, ptr %mem181, align 8
  %alloc_sarray182 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %160, i32 0, i32 2
  %161 = load ptr, ptr %alloc_sarray182, align 8
  %162 = load ptr, ptr %cinfo.addr, align 8
  %163 = load i32, ptr %maplen, align 4
  %call183 = call ptr %161(ptr noundef %162, i32 noundef 1, i32 noundef %163, i32 noundef 3)
  %164 = load ptr, ptr %source, align 8
  %colormap = getelementptr inbounds %struct._tga_source_struct, ptr %164, i32 0, i32 2
  store ptr %call183, ptr %colormap, align 8
  %165 = load ptr, ptr %source, align 8
  %166 = load i32, ptr %maplen, align 4
  %arrayidx184 = getelementptr inbounds [18 x i8], ptr %targaheader, i64 0, i64 7
  %167 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %167 to i32
  call void @read_colormap(ptr noundef %165, i32 noundef %166, i32 noundef %conv185)
  br label %if.end195

if.else186:                                       ; preds = %while.end
  %168 = load i32, ptr %cmaptype, align 4
  %tobool187 = icmp ne i32 %168, 0
  br i1 %tobool187, label %if.then188, label %if.end193

if.then188:                                       ; preds = %if.else186
  %169 = load ptr, ptr %cinfo.addr, align 8
  %err189 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %err189, align 8
  %msg_code190 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %170, i32 0, i32 5
  store i32 1033, ptr %msg_code190, align 8
  %171 = load ptr, ptr %cinfo.addr, align 8
  %err191 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %171, i32 0, i32 0
  %172 = load ptr, ptr %err191, align 8
  %error_exit192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %172, i32 0, i32 0
  %173 = load ptr, ptr %error_exit192, align 8
  %174 = load ptr, ptr %cinfo.addr, align 8
  call void %173(ptr noundef %174)
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %if.else186
  %175 = load ptr, ptr %source, align 8
  %colormap194 = getelementptr inbounds %struct._tga_source_struct, ptr %175, i32 0, i32 2
  store ptr null, ptr %colormap194, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.end193, %if.end180
  %176 = load i32, ptr %components, align 4
  %177 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %177, i32 0, i32 8
  store i32 %176, ptr %input_components, align 8
  %178 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %178, i32 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %179 = load i32, ptr %width, align 4
  %180 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %180, i32 0, i32 6
  store i32 %179, ptr %image_width, align 8
  %181 = load i32, ptr %height, align 4
  %182 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %182, i32 0, i32 7
  store i32 %181, ptr %image_height, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_tga(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
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
  %0 = load ptr, ptr %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %1 = load ptr, ptr %input_file, align 8
  store ptr %1, ptr %infile, align 8
  %2 = load ptr, ptr %sinfo.addr, align 8
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %dup_pixel_count, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %sinfo.addr, align 8
  %dup_pixel_count1 = getelementptr inbounds %struct._tga_source_struct, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %dup_pixel_count1, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %dup_pixel_count1, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sinfo.addr, align 8
  %block_count = getelementptr inbounds %struct._tga_source_struct, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %block_count, align 8
  %dec2 = add nsw i32 %7, -1
  store i32 %dec2, ptr %block_count, align 8
  %cmp3 = icmp slt i32 %dec2, 0
  br i1 %cmp3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @read_byte(ptr noundef %8)
  store i32 %call, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %and = and i32 %9, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then4
  %10 = load i32, ptr %i, align 4
  %and6 = and i32 %10, 127
  %11 = load ptr, ptr %sinfo.addr, align 8
  %dup_pixel_count7 = getelementptr inbounds %struct._tga_source_struct, ptr %11, i32 0, i32 9
  store i32 %and6, ptr %dup_pixel_count7, align 4
  %12 = load ptr, ptr %sinfo.addr, align 8
  %block_count8 = getelementptr inbounds %struct._tga_source_struct, ptr %12, i32 0, i32 8
  store i32 0, ptr %block_count8, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %13 = load i32, ptr %i, align 4
  %and9 = and i32 %13, 127
  %14 = load ptr, ptr %sinfo.addr, align 8
  %block_count10 = getelementptr inbounds %struct._tga_source_struct, ptr %14, i32 0, i32 8
  store i32 %and9, ptr %block_count10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %15 = load i32, ptr %i, align 4
  %16 = load ptr, ptr %sinfo.addr, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %pixel_size, align 4
  %cmp13 = icmp slt i32 %15, %17
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %infile, align 8
  %call14 = call i32 @getc(ptr noundef %18)
  %conv = trunc i32 %call14 to i8
  %19 = load ptr, ptr %sinfo.addr, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %tga_pixel, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @read_non_rle_pixel(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %1 = load ptr, ptr %input_file, align 8
  store ptr %1, ptr %infile, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %sinfo.addr, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %pixel_size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %infile, align 8
  %call = call i32 @getc(ptr noundef %5)
  %conv = trunc i32 %call to i8
  %6 = load ptr, ptr %sinfo.addr, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %tga_pixel, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %t = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %colormap = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %colormap1, align 8
  store ptr %2, ptr %colormap, align 8
  %3 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %3, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %4 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  store ptr %5, ptr %ptr, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %image_width, align 8
  store i32 %7, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %read_pixel, align 8
  %11 = load ptr, ptr %source, align 8
  call void %10(ptr noundef %11)
  %12 = load ptr, ptr %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %12, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [4 x i8], ptr %tga_pixel, i64 0, i64 0
  %13 = load i8, ptr %arrayidx2, align 8
  %conv = zext i8 %13 to i32
  store i32 %conv, ptr %t, align 4
  %14 = load ptr, ptr %colormap, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx3, align 8
  %16 = load i32, ptr %t, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %17 = load i8, ptr %arrayidx4, align 1
  %18 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %17, ptr %18, align 1
  %19 = load ptr, ptr %colormap, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %19, i64 1
  %20 = load ptr, ptr %arrayidx5, align 8
  %21 = load i32, ptr %t, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %20, i64 %idxprom6
  %22 = load i8, ptr %arrayidx7, align 1
  %23 = load ptr, ptr %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr8, ptr %ptr, align 8
  store i8 %22, ptr %23, align 1
  %24 = load ptr, ptr %colormap, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %24, i64 2
  %25 = load ptr, ptr %arrayidx9, align 8
  %26 = load i32, ptr %t, align 4
  %idxprom10 = sext i32 %26 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %25, i64 %idxprom10
  %27 = load i8, ptr %arrayidx11, align 1
  %28 = load ptr, ptr %ptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr12, ptr %ptr, align 8
  store i8 %27, ptr %28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %col, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_16bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %t = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %ptr, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  store i32 %5, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %read_pixel, align 8
  %9 = load ptr, ptr %source, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %10, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %tga_pixel, i64 0, i64 0
  %11 = load i8, ptr %arrayidx1, align 8
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %t, align 4
  %12 = load ptr, ptr %source, align 8
  %tga_pixel2 = getelementptr inbounds %struct._tga_source_struct, ptr %12, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %tga_pixel2, i64 0, i64 1
  %13 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  %shl = shl i32 %conv4, 8
  %14 = load i32, ptr %t, align 4
  %add = add nsw i32 %14, %shl
  store i32 %add, ptr %t, align 4
  %15 = load i32, ptr %t, align 4
  %and = and i32 %15, 31
  %idxprom = sext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %idxprom
  %16 = load i8, ptr %arrayidx5, align 1
  %17 = load ptr, ptr %ptr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %16, ptr %arrayidx6, align 1
  %18 = load i32, ptr %t, align 4
  %shr = ashr i32 %18, 5
  store i32 %shr, ptr %t, align 4
  %19 = load i32, ptr %t, align 4
  %and7 = and i32 %19, 31
  %idxprom8 = sext i32 %and7 to i64
  %arrayidx9 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %idxprom8
  %20 = load i8, ptr %arrayidx9, align 1
  %21 = load ptr, ptr %ptr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %20, ptr %arrayidx10, align 1
  %22 = load i32, ptr %t, align 4
  %shr11 = ashr i32 %22, 5
  store i32 %shr11, ptr %t, align 4
  %23 = load i32, ptr %t, align 4
  %and12 = and i32 %23, 31
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %idxprom13
  %24 = load i8, ptr %arrayidx14, align 1
  %25 = load ptr, ptr %ptr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %25, i64 0
  store i8 %24, ptr %arrayidx15, align 1
  %26 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 3
  store ptr %add.ptr, ptr %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %col, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_24bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %ptr, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  store i32 %5, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %read_pixel, align 8
  %9 = load ptr, ptr %source, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %10, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %tga_pixel, i64 0, i64 2
  %11 = load i8, ptr %arrayidx1, align 2
  %conv = zext i8 %11 to i32
  %conv2 = trunc i32 %conv to i8
  %12 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %conv2, ptr %12, align 1
  %13 = load ptr, ptr %source, align 8
  %tga_pixel3 = getelementptr inbounds %struct._tga_source_struct, ptr %13, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [4 x i8], ptr %tga_pixel3, i64 0, i64 1
  %14 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %14 to i32
  %conv6 = trunc i32 %conv5 to i8
  %15 = load ptr, ptr %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr7, ptr %ptr, align 8
  store i8 %conv6, ptr %15, align 1
  %16 = load ptr, ptr %source, align 8
  %tga_pixel8 = getelementptr inbounds %struct._tga_source_struct, ptr %16, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %tga_pixel8, i64 0, i64 0
  %17 = load i8, ptr %arrayidx9, align 8
  %conv10 = zext i8 %17 to i32
  %conv11 = trunc i32 %conv10 to i8
  %18 = load ptr, ptr %ptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr12, ptr %ptr, align 8
  store i8 %conv11, ptr %18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %col, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_gray_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %1, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %2 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %ptr, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %image_width, align 8
  store i32 %5, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %read_pixel, align 8
  %9 = load ptr, ptr %source, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, ptr %10, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %tga_pixel, i64 0, i64 0
  %11 = load i8, ptr %arrayidx1, align 8
  %conv = zext i8 %11 to i32
  %conv2 = trunc i32 %conv to i8
  %12 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %conv2, ptr %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %col, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %col, align 4
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
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %progress1, align 8
  store ptr %2, ptr %progress, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %row, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %image_height, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %progress, align 8
  %cmp2 = icmp ne ptr %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %row, align 4
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %progress, align 8
  %pub = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %8, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %image_height3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 7
  %10 = load i32, ptr %image_height3, align 4
  %conv4 = zext i32 %10 to i64
  %11 = load ptr, ptr %progress, align 8
  %pub5 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %11, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub5, i32 0, i32 2
  store i64 %conv4, ptr %pass_limit, align 8
  %12 = load ptr, ptr %progress, align 8
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %12, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub6, i32 0, i32 0
  %13 = load ptr, ptr %progress_monitor, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void %13(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %access_virt_sarray, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %whole_image, align 8
  %21 = load i32, ptr %row, align 4
  %call = call ptr %17(ptr noundef %18, ptr noundef %20, i32 noundef %21, i32 noundef 1, i32 noundef 1)
  %22 = load ptr, ptr %source, align 8
  %pub7 = getelementptr inbounds %struct._tga_source_struct, ptr %22, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub7, i32 0, i32 4
  store ptr %call, ptr %buffer, align 8
  %23 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %get_pixel_rows, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %sinfo.addr, align 8
  %call8 = call i32 %24(ptr noundef %25, ptr noundef %26)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, ptr %row, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %progress, align 8
  %cmp9 = icmp ne ptr %28, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.end
  %29 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %completed_extra_passes, align 8
  %inc12 = add nsw i32 %30, 1
  store i32 %inc12, ptr %completed_extra_passes, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end
  %31 = load ptr, ptr %source, align 8
  %pub14 = getelementptr inbounds %struct._tga_source_struct, ptr %31, i32 0, i32 0
  %get_pixel_rows15 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub14, i32 0, i32 1
  store ptr @get_memory_row, ptr %get_pixel_rows15, align 8
  %32 = load ptr, ptr %source, align 8
  %current_row = getelementptr inbounds %struct._tga_source_struct, ptr %32, i32 0, i32 4
  store i32 0, ptr %current_row, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load ptr, ptr %sinfo.addr, align 8
  %call16 = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdtarga_0(ptr noundef %33, ptr noundef %34)
  ret i32 %call16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_byte(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %1 = load ptr, ptr %input_file, align 8
  store ptr %1, ptr %infile, align 8
  %2 = load ptr, ptr %infile, align 8
  %call = call i32 @getc(ptr noundef %2)
  store i32 %call, ptr %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._tga_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %6 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %error_exit, align 8
  %10 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %cinfo3, align 8
  call void %9(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %c, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal void @read_colormap(ptr noundef %sinfo, i32 noundef %cmaplen, i32 noundef %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %cmaplen.addr = alloca i32, align 4
  %mapentrysize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store i32 %cmaplen, ptr %cmaplen.addr, align 4
  store i32 %mapentrysize, ptr %mapentrysize.addr, align 4
  %0 = load i32, ptr %mapentrysize.addr, align 4
  %cmp = icmp ne i32 %0, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._tga_source_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 1032, ptr %msg_code, align 8
  %4 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %cinfo3, align 8
  call void %7(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %cmaplen.addr, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @read_byte(ptr noundef %12)
  %conv = trunc i32 %call to i8
  %13 = load ptr, ptr %sinfo.addr, align 8
  %colormap = getelementptr inbounds %struct._tga_source_struct, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 2
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  store i8 %conv, ptr %arrayidx5, align 1
  %17 = load ptr, ptr %sinfo.addr, align 8
  %call6 = call i32 @read_byte(ptr noundef %17)
  %conv7 = trunc i32 %call6 to i8
  %18 = load ptr, ptr %sinfo.addr, align 8
  %colormap8 = getelementptr inbounds %struct._tga_source_struct, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %colormap8, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %19, i64 1
  %20 = load ptr, ptr %arrayidx9, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %20, i64 %idxprom10
  store i8 %conv7, ptr %arrayidx11, align 1
  %22 = load ptr, ptr %sinfo.addr, align 8
  %call12 = call i32 @read_byte(ptr noundef %22)
  %conv13 = trunc i32 %call12 to i8
  %23 = load ptr, ptr %sinfo.addr, align 8
  %colormap14 = getelementptr inbounds %struct._tga_source_struct, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %colormap14, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %24, i64 0
  %25 = load ptr, ptr %arrayidx15, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %25, i64 %idxprom16
  store i8 %conv13, ptr %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_memory_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %source_row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %image_height, align 4
  %3 = load ptr, ptr %source, align 8
  %current_row = getelementptr inbounds %struct._tga_source_struct, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %current_row, align 8
  %sub = sub i32 %2, %4
  %sub1 = sub i32 %sub, 1
  store i32 %sub1, ptr %source_row, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %access_virt_sarray, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %whole_image, align 8
  %11 = load i32, ptr %source_row, align 4
  %call = call ptr %7(ptr noundef %8, ptr noundef %10, i32 noundef %11, i32 noundef 1, i32 noundef 0)
  %12 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %12, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  store ptr %call, ptr %buffer, align 8
  %13 = load ptr, ptr %source, align 8
  %current_row2 = getelementptr inbounds %struct._tga_source_struct, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %current_row2, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %current_row2, align 8
  ret i32 1
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdtarga_0(ptr noundef %cinfo, ptr noundef %sinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %source_row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %image_height, align 4
  %3 = load ptr, ptr %source, align 8
  %current_row = getelementptr inbounds %struct._tga_source_struct, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %current_row, align 8
  %sub = sub i32 %2, %4
  %sub1 = sub i32 %sub, 1
  store i32 %sub1, ptr %source_row, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %access_virt_sarray, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %whole_image, align 8
  %11 = load i32, ptr %source_row, align 4
  %call = call ptr %7(ptr noundef %8, ptr noundef %10, i32 noundef %11, i32 noundef 1, i32 noundef 0)
  %12 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, ptr %12, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  store ptr %call, ptr %buffer, align 8
  %13 = load ptr, ptr %source, align 8
  %current_row2 = getelementptr inbounds %struct._tga_source_struct, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %current_row2, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %current_row2, align 8
  ret i32 1
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
