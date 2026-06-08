; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdbmp.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdbmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_bmp(ptr noundef %cinfo) #0 {
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
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 88)
  store ptr %call, ptr %source, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %source, align 8
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, ptr %5, i32 0, i32 1
  store ptr %4, ptr %cinfo1, align 8
  %6 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, ptr %6, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 0
  store ptr @start_input_bmp, ptr %start_input, align 8
  %7 = load ptr, ptr %source, align 8
  %pub2 = getelementptr inbounds %struct._bmp_source_struct, ptr %7, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub2, i32 0, i32 2
  store ptr @finish_input_bmp, ptr %finish_input, align 8
  %8 = load ptr, ptr %source, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_bmp(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpinfoheader = alloca [64 x i8], align 1
  %bfOffBits = alloca i64, align 8
  %headerSize = alloca i64, align 8
  %biWidth = alloca i64, align 8
  %biHeight = alloca i64, align 8
  %biPlanes = alloca i32, align 4
  %biCompression = alloca i64, align 8
  %biXPelsPerMeter = alloca i64, align 8
  %biYPelsPerMeter = alloca i64, align 8
  %biClrUsed = alloca i64, align 8
  %mapentrysize = alloca i32, align 4
  %bPad = alloca i64, align 8
  %row_width = alloca i32, align 4
  %progress389 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  store i64 0, ptr %biWidth, align 8
  store i64 0, ptr %biHeight, align 8
  store i64 0, ptr %biClrUsed, align 8
  store i32 0, ptr %mapentrysize, align 4
  %arraydecay = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 14, ptr noundef %2)
  %cmp = icmp eq i64 %call, 14
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
  %arrayidx = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %arrayidx2 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  %10 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %10 to i32
  %shl = shl i32 %conv3, 8
  %add = add i32 %conv, %shl
  %cmp4 = icmp ne i32 %add, 19778
  br i1 %cmp4, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err7, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 1007, ptr %msg_code8, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err9, align 8
  %error_exit10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit10, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end
  %arrayidx12 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  %17 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %17 to i32
  %conv14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %conv17 = sext i32 %conv16 to i64
  %shl18 = shl i64 %conv17, 8
  %add19 = add nsw i64 %conv14, %shl18
  %arrayidx20 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i32
  %conv22 = sext i32 %conv21 to i64
  %shl23 = shl i64 %conv22, 16
  %add24 = add nsw i64 %add19, %shl23
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  %20 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %conv27 = sext i32 %conv26 to i64
  %shl28 = shl i64 %conv27, 24
  %add29 = add nsw i64 %add24, %shl28
  store i64 %add29, ptr %bfOffBits, align 8
  %arraydecay30 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 0
  %21 = load ptr, ptr %source, align 8
  %pub31 = getelementptr inbounds %struct._bmp_source_struct, ptr %21, i32 0, i32 0
  %input_file32 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub31, i32 0, i32 3
  %22 = load ptr, ptr %input_file32, align 8
  %call33 = call i64 @fread(ptr noundef %arraydecay30, i64 noundef 1, i64 noundef 4, ptr noundef %22)
  %cmp34 = icmp eq i64 %call33, 4
  br i1 %cmp34, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end11
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err37, align 8
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5
  store i32 42, ptr %msg_code38, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err39, align 8
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %error_exit40, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  call void %27(ptr noundef %28)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end11
  %arrayidx42 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 0
  %29 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %29 to i32
  %conv44 = sext i32 %conv43 to i64
  %arrayidx45 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 1
  %30 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %conv47 = sext i32 %conv46 to i64
  %shl48 = shl i64 %conv47, 8
  %add49 = add nsw i64 %conv44, %shl48
  %arrayidx50 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 2
  %31 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %31 to i32
  %conv52 = sext i32 %conv51 to i64
  %shl53 = shl i64 %conv52, 16
  %add54 = add nsw i64 %add49, %shl53
  %arrayidx55 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 3
  %32 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %32 to i32
  %conv57 = sext i32 %conv56 to i64
  %shl58 = shl i64 %conv57, 24
  %add59 = add nsw i64 %add54, %shl58
  store i64 %add59, ptr %headerSize, align 8
  %33 = load i64, ptr %headerSize, align 8
  %cmp60 = icmp slt i64 %33, 12
  br i1 %cmp60, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41
  %34 = load i64, ptr %headerSize, align 8
  %cmp62 = icmp sgt i64 %34, 64
  br i1 %cmp62, label %if.then64, label %if.end69

if.then64:                                        ; preds = %lor.lhs.false, %if.end41
  %35 = load ptr, ptr %cinfo.addr, align 8
  %err65 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err65, align 8
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i32 0, i32 5
  store i32 1003, ptr %msg_code66, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err67, align 8
  %error_exit68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %error_exit68, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  call void %39(ptr noundef %40)
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %lor.lhs.false
  %arraydecay70 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay70, i64 4
  %41 = load i64, ptr %headerSize, align 8
  %sub = sub nsw i64 %41, 4
  %42 = load ptr, ptr %source, align 8
  %pub71 = getelementptr inbounds %struct._bmp_source_struct, ptr %42, i32 0, i32 0
  %input_file72 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub71, i32 0, i32 3
  %43 = load ptr, ptr %input_file72, align 8
  %call73 = call i64 @fread(ptr noundef %add.ptr, i64 noundef 1, i64 noundef %sub, ptr noundef %43)
  %44 = load i64, ptr %headerSize, align 8
  %sub74 = sub nsw i64 %44, 4
  %cmp75 = icmp eq i64 %call73, %sub74
  br i1 %cmp75, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.end69
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err78, align 8
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5
  store i32 42, ptr %msg_code79, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err80, align 8
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %error_exit81, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  call void %49(ptr noundef %50)
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end69
  %51 = load i64, ptr %headerSize, align 8
  %conv83 = trunc i64 %51 to i32
  switch i32 %conv83, label %sw.default327 [
    i32 12, label %sw.bb
    i32 40, label %sw.bb147
    i32 64, label %sw.bb147
  ]

sw.bb:                                            ; preds = %if.end82
  %arrayidx84 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 4
  %52 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %52 to i32
  %arrayidx86 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 5
  %53 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %53 to i32
  %shl88 = shl i32 %conv87, 8
  %add89 = add i32 %conv85, %shl88
  %conv90 = zext i32 %add89 to i64
  store i64 %conv90, ptr %biWidth, align 8
  %arrayidx91 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 6
  %54 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %54 to i32
  %arrayidx93 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 7
  %55 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %55 to i32
  %shl95 = shl i32 %conv94, 8
  %add96 = add i32 %conv92, %shl95
  %conv97 = zext i32 %add96 to i64
  store i64 %conv97, ptr %biHeight, align 8
  %arrayidx98 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 8
  %56 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %56 to i32
  %arrayidx100 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 9
  %57 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %57 to i32
  %shl102 = shl i32 %conv101, 8
  %add103 = add i32 %conv99, %shl102
  store i32 %add103, ptr %biPlanes, align 4
  %arrayidx104 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 10
  %58 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %58 to i32
  %arrayidx106 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 11
  %59 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %59 to i32
  %shl108 = shl i32 %conv107, 8
  %add109 = add i32 %conv105, %shl108
  %60 = load ptr, ptr %source, align 8
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, ptr %60, i32 0, i32 6
  store i32 %add109, ptr %bits_per_pixel, align 8
  %61 = load ptr, ptr %source, align 8
  %bits_per_pixel110 = getelementptr inbounds %struct._bmp_source_struct, ptr %61, i32 0, i32 6
  %62 = load i32, ptr %bits_per_pixel110, align 8
  switch i32 %62, label %sw.default [
    i32 8, label %sw.bb111
    i32 24, label %sw.bb122
  ]

sw.bb111:                                         ; preds = %sw.bb
  store i32 3, ptr %mapentrysize, align 4
  %63 = load ptr, ptr %cinfo.addr, align 8
  %err112 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %err112, align 8
  %msg_code113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i32 0, i32 5
  store i32 1011, ptr %msg_code113, align 8
  %65 = load i64, ptr %biWidth, align 8
  %conv114 = trunc i64 %65 to i32
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err115, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 6
  %arrayidx116 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv114, ptr %arrayidx116, align 4
  %68 = load i64, ptr %biHeight, align 8
  %conv117 = trunc i64 %68 to i32
  %69 = load ptr, ptr %cinfo.addr, align 8
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err118, align 8
  %msg_parm119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i32 0, i32 6
  %arrayidx120 = getelementptr inbounds [8 x i32], ptr %msg_parm119, i64 0, i64 1
  store i32 %conv117, ptr %arrayidx120, align 4
  %71 = load ptr, ptr %cinfo.addr, align 8
  %err121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %err121, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %emit_message, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  call void %73(ptr noundef %74, i32 noundef 1)
  br label %sw.epilog

sw.bb122:                                         ; preds = %sw.bb
  %75 = load ptr, ptr %cinfo.addr, align 8
  %err123 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %err123, align 8
  %msg_code124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i32 0, i32 5
  store i32 1010, ptr %msg_code124, align 8
  %77 = load i64, ptr %biWidth, align 8
  %conv125 = trunc i64 %77 to i32
  %78 = load ptr, ptr %cinfo.addr, align 8
  %err126 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %err126, align 8
  %msg_parm127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i32 0, i32 6
  %arrayidx128 = getelementptr inbounds [8 x i32], ptr %msg_parm127, i64 0, i64 0
  store i32 %conv125, ptr %arrayidx128, align 4
  %80 = load i64, ptr %biHeight, align 8
  %conv129 = trunc i64 %80 to i32
  %81 = load ptr, ptr %cinfo.addr, align 8
  %err130 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %err130, align 8
  %msg_parm131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i32 0, i32 6
  %arrayidx132 = getelementptr inbounds [8 x i32], ptr %msg_parm131, i64 0, i64 1
  store i32 %conv129, ptr %arrayidx132, align 4
  %83 = load ptr, ptr %cinfo.addr, align 8
  %err133 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %err133, align 8
  %emit_message134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %emit_message134, align 8
  %86 = load ptr, ptr %cinfo.addr, align 8
  call void %85(ptr noundef %86, i32 noundef 1)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %87 = load ptr, ptr %cinfo.addr, align 8
  %err135 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %err135, align 8
  %msg_code136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i32 0, i32 5
  store i32 1002, ptr %msg_code136, align 8
  %89 = load ptr, ptr %cinfo.addr, align 8
  %err137 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %err137, align 8
  %error_exit138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %error_exit138, align 8
  %92 = load ptr, ptr %cinfo.addr, align 8
  call void %91(ptr noundef %92)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb122, %sw.bb111
  %93 = load i32, ptr %biPlanes, align 4
  %cmp139 = icmp ne i32 %93, 1
  br i1 %cmp139, label %if.then141, label %if.end146

if.then141:                                       ; preds = %sw.epilog
  %94 = load ptr, ptr %cinfo.addr, align 8
  %err142 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %err142, align 8
  %msg_code143 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i32 0, i32 5
  store i32 1004, ptr %msg_code143, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  %err144 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %err144, align 8
  %error_exit145 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %error_exit145, align 8
  %99 = load ptr, ptr %cinfo.addr, align 8
  call void %98(ptr noundef %99)
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %sw.epilog
  br label %sw.epilog332

sw.bb147:                                         ; preds = %if.end82, %if.end82
  %arrayidx148 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 4
  %100 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %100 to i32
  %conv150 = sext i32 %conv149 to i64
  %arrayidx151 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 5
  %101 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %101 to i32
  %conv153 = sext i32 %conv152 to i64
  %shl154 = shl i64 %conv153, 8
  %add155 = add nsw i64 %conv150, %shl154
  %arrayidx156 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 6
  %102 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %102 to i32
  %conv158 = sext i32 %conv157 to i64
  %shl159 = shl i64 %conv158, 16
  %add160 = add nsw i64 %add155, %shl159
  %arrayidx161 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 7
  %103 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %103 to i32
  %conv163 = sext i32 %conv162 to i64
  %shl164 = shl i64 %conv163, 24
  %add165 = add nsw i64 %add160, %shl164
  store i64 %add165, ptr %biWidth, align 8
  %arrayidx166 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 8
  %104 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %104 to i32
  %conv168 = sext i32 %conv167 to i64
  %arrayidx169 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 9
  %105 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %105 to i32
  %conv171 = sext i32 %conv170 to i64
  %shl172 = shl i64 %conv171, 8
  %add173 = add nsw i64 %conv168, %shl172
  %arrayidx174 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 10
  %106 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %106 to i32
  %conv176 = sext i32 %conv175 to i64
  %shl177 = shl i64 %conv176, 16
  %add178 = add nsw i64 %add173, %shl177
  %arrayidx179 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 11
  %107 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %107 to i32
  %conv181 = sext i32 %conv180 to i64
  %shl182 = shl i64 %conv181, 24
  %add183 = add nsw i64 %add178, %shl182
  store i64 %add183, ptr %biHeight, align 8
  %arrayidx184 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 12
  %108 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %108 to i32
  %arrayidx186 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 13
  %109 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %109 to i32
  %shl188 = shl i32 %conv187, 8
  %add189 = add i32 %conv185, %shl188
  store i32 %add189, ptr %biPlanes, align 4
  %arrayidx190 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 14
  %110 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %110 to i32
  %arrayidx192 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 15
  %111 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %111 to i32
  %shl194 = shl i32 %conv193, 8
  %add195 = add i32 %conv191, %shl194
  %112 = load ptr, ptr %source, align 8
  %bits_per_pixel196 = getelementptr inbounds %struct._bmp_source_struct, ptr %112, i32 0, i32 6
  store i32 %add195, ptr %bits_per_pixel196, align 8
  %arrayidx197 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 16
  %113 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %113 to i32
  %conv199 = sext i32 %conv198 to i64
  %arrayidx200 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 17
  %114 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %114 to i32
  %conv202 = sext i32 %conv201 to i64
  %shl203 = shl i64 %conv202, 8
  %add204 = add nsw i64 %conv199, %shl203
  %arrayidx205 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 18
  %115 = load i8, ptr %arrayidx205, align 1
  %conv206 = zext i8 %115 to i32
  %conv207 = sext i32 %conv206 to i64
  %shl208 = shl i64 %conv207, 16
  %add209 = add nsw i64 %add204, %shl208
  %arrayidx210 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 19
  %116 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %116 to i32
  %conv212 = sext i32 %conv211 to i64
  %shl213 = shl i64 %conv212, 24
  %add214 = add nsw i64 %add209, %shl213
  store i64 %add214, ptr %biCompression, align 8
  %arrayidx215 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 24
  %117 = load i8, ptr %arrayidx215, align 1
  %conv216 = zext i8 %117 to i32
  %conv217 = sext i32 %conv216 to i64
  %arrayidx218 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 25
  %118 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %118 to i32
  %conv220 = sext i32 %conv219 to i64
  %shl221 = shl i64 %conv220, 8
  %add222 = add nsw i64 %conv217, %shl221
  %arrayidx223 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 26
  %119 = load i8, ptr %arrayidx223, align 1
  %conv224 = zext i8 %119 to i32
  %conv225 = sext i32 %conv224 to i64
  %shl226 = shl i64 %conv225, 16
  %add227 = add nsw i64 %add222, %shl226
  %arrayidx228 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 27
  %120 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %120 to i32
  %conv230 = sext i32 %conv229 to i64
  %shl231 = shl i64 %conv230, 24
  %add232 = add nsw i64 %add227, %shl231
  store i64 %add232, ptr %biXPelsPerMeter, align 8
  %arrayidx233 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 28
  %121 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %121 to i32
  %conv235 = sext i32 %conv234 to i64
  %arrayidx236 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 29
  %122 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %122 to i32
  %conv238 = sext i32 %conv237 to i64
  %shl239 = shl i64 %conv238, 8
  %add240 = add nsw i64 %conv235, %shl239
  %arrayidx241 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 30
  %123 = load i8, ptr %arrayidx241, align 1
  %conv242 = zext i8 %123 to i32
  %conv243 = sext i32 %conv242 to i64
  %shl244 = shl i64 %conv243, 16
  %add245 = add nsw i64 %add240, %shl244
  %arrayidx246 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 31
  %124 = load i8, ptr %arrayidx246, align 1
  %conv247 = zext i8 %124 to i32
  %conv248 = sext i32 %conv247 to i64
  %shl249 = shl i64 %conv248, 24
  %add250 = add nsw i64 %add245, %shl249
  store i64 %add250, ptr %biYPelsPerMeter, align 8
  %arrayidx251 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 32
  %125 = load i8, ptr %arrayidx251, align 1
  %conv252 = zext i8 %125 to i32
  %conv253 = sext i32 %conv252 to i64
  %arrayidx254 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 33
  %126 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %126 to i32
  %conv256 = sext i32 %conv255 to i64
  %shl257 = shl i64 %conv256, 8
  %add258 = add nsw i64 %conv253, %shl257
  %arrayidx259 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 34
  %127 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %127 to i32
  %conv261 = sext i32 %conv260 to i64
  %shl262 = shl i64 %conv261, 16
  %add263 = add nsw i64 %add258, %shl262
  %arrayidx264 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 35
  %128 = load i8, ptr %arrayidx264, align 1
  %conv265 = zext i8 %128 to i32
  %conv266 = sext i32 %conv265 to i64
  %shl267 = shl i64 %conv266, 24
  %add268 = add nsw i64 %add263, %shl267
  store i64 %add268, ptr %biClrUsed, align 8
  %129 = load ptr, ptr %source, align 8
  %bits_per_pixel269 = getelementptr inbounds %struct._bmp_source_struct, ptr %129, i32 0, i32 6
  %130 = load i32, ptr %bits_per_pixel269, align 8
  switch i32 %130, label %sw.default296 [
    i32 8, label %sw.bb270
    i32 24, label %sw.bb283
  ]

sw.bb270:                                         ; preds = %sw.bb147
  store i32 4, ptr %mapentrysize, align 4
  %131 = load ptr, ptr %cinfo.addr, align 8
  %err271 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %err271, align 8
  %msg_code272 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i32 0, i32 5
  store i32 1009, ptr %msg_code272, align 8
  %133 = load i64, ptr %biWidth, align 8
  %conv273 = trunc i64 %133 to i32
  %134 = load ptr, ptr %cinfo.addr, align 8
  %err274 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %err274, align 8
  %msg_parm275 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i32 0, i32 6
  %arrayidx276 = getelementptr inbounds [8 x i32], ptr %msg_parm275, i64 0, i64 0
  store i32 %conv273, ptr %arrayidx276, align 4
  %136 = load i64, ptr %biHeight, align 8
  %conv277 = trunc i64 %136 to i32
  %137 = load ptr, ptr %cinfo.addr, align 8
  %err278 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %err278, align 8
  %msg_parm279 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i32 0, i32 6
  %arrayidx280 = getelementptr inbounds [8 x i32], ptr %msg_parm279, i64 0, i64 1
  store i32 %conv277, ptr %arrayidx280, align 4
  %139 = load ptr, ptr %cinfo.addr, align 8
  %err281 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %err281, align 8
  %emit_message282 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %emit_message282, align 8
  %142 = load ptr, ptr %cinfo.addr, align 8
  call void %141(ptr noundef %142, i32 noundef 1)
  br label %sw.epilog301

sw.bb283:                                         ; preds = %sw.bb147
  %143 = load ptr, ptr %cinfo.addr, align 8
  %err284 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %143, i32 0, i32 0
  %144 = load ptr, ptr %err284, align 8
  %msg_code285 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %144, i32 0, i32 5
  store i32 1008, ptr %msg_code285, align 8
  %145 = load i64, ptr %biWidth, align 8
  %conv286 = trunc i64 %145 to i32
  %146 = load ptr, ptr %cinfo.addr, align 8
  %err287 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %err287, align 8
  %msg_parm288 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %147, i32 0, i32 6
  %arrayidx289 = getelementptr inbounds [8 x i32], ptr %msg_parm288, i64 0, i64 0
  store i32 %conv286, ptr %arrayidx289, align 4
  %148 = load i64, ptr %biHeight, align 8
  %conv290 = trunc i64 %148 to i32
  %149 = load ptr, ptr %cinfo.addr, align 8
  %err291 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %err291, align 8
  %msg_parm292 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i32 0, i32 6
  %arrayidx293 = getelementptr inbounds [8 x i32], ptr %msg_parm292, i64 0, i64 1
  store i32 %conv290, ptr %arrayidx293, align 4
  %151 = load ptr, ptr %cinfo.addr, align 8
  %err294 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %err294, align 8
  %emit_message295 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %152, i32 0, i32 1
  %153 = load ptr, ptr %emit_message295, align 8
  %154 = load ptr, ptr %cinfo.addr, align 8
  call void %153(ptr noundef %154, i32 noundef 1)
  br label %sw.epilog301

sw.default296:                                    ; preds = %sw.bb147
  %155 = load ptr, ptr %cinfo.addr, align 8
  %err297 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %err297, align 8
  %msg_code298 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %156, i32 0, i32 5
  store i32 1002, ptr %msg_code298, align 8
  %157 = load ptr, ptr %cinfo.addr, align 8
  %err299 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %err299, align 8
  %error_exit300 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %error_exit300, align 8
  %160 = load ptr, ptr %cinfo.addr, align 8
  call void %159(ptr noundef %160)
  br label %sw.epilog301

sw.epilog301:                                     ; preds = %sw.default296, %sw.bb283, %sw.bb270
  %161 = load i32, ptr %biPlanes, align 4
  %cmp302 = icmp ne i32 %161, 1
  br i1 %cmp302, label %if.then304, label %if.end309

if.then304:                                       ; preds = %sw.epilog301
  %162 = load ptr, ptr %cinfo.addr, align 8
  %err305 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %162, i32 0, i32 0
  %163 = load ptr, ptr %err305, align 8
  %msg_code306 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %163, i32 0, i32 5
  store i32 1004, ptr %msg_code306, align 8
  %164 = load ptr, ptr %cinfo.addr, align 8
  %err307 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %err307, align 8
  %error_exit308 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %165, i32 0, i32 0
  %166 = load ptr, ptr %error_exit308, align 8
  %167 = load ptr, ptr %cinfo.addr, align 8
  call void %166(ptr noundef %167)
  br label %if.end309

if.end309:                                        ; preds = %if.then304, %sw.epilog301
  %168 = load i64, ptr %biCompression, align 8
  %cmp310 = icmp ne i64 %168, 0
  br i1 %cmp310, label %if.then312, label %if.end317

if.then312:                                       ; preds = %if.end309
  %169 = load ptr, ptr %cinfo.addr, align 8
  %err313 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %err313, align 8
  %msg_code314 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %170, i32 0, i32 5
  store i32 1006, ptr %msg_code314, align 8
  %171 = load ptr, ptr %cinfo.addr, align 8
  %err315 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %171, i32 0, i32 0
  %172 = load ptr, ptr %err315, align 8
  %error_exit316 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %172, i32 0, i32 0
  %173 = load ptr, ptr %error_exit316, align 8
  %174 = load ptr, ptr %cinfo.addr, align 8
  call void %173(ptr noundef %174)
  br label %if.end317

if.end317:                                        ; preds = %if.then312, %if.end309
  %175 = load i64, ptr %biXPelsPerMeter, align 8
  %cmp318 = icmp sgt i64 %175, 0
  br i1 %cmp318, label %land.lhs.true, label %if.end326

land.lhs.true:                                    ; preds = %if.end317
  %176 = load i64, ptr %biYPelsPerMeter, align 8
  %cmp320 = icmp sgt i64 %176, 0
  br i1 %cmp320, label %if.then322, label %if.end326

if.then322:                                       ; preds = %land.lhs.true
  %177 = load i64, ptr %biXPelsPerMeter, align 8
  %div = sdiv i64 %177, 100
  %conv323 = trunc i64 %div to i16
  %178 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %178, i32 0, i32 33
  store i16 %conv323, ptr %X_density, align 2
  %179 = load i64, ptr %biYPelsPerMeter, align 8
  %div324 = sdiv i64 %179, 100
  %conv325 = trunc i64 %div324 to i16
  %180 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %180, i32 0, i32 34
  store i16 %conv325, ptr %Y_density, align 8
  %181 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %181, i32 0, i32 32
  store i8 2, ptr %density_unit, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then322, %land.lhs.true, %if.end317
  br label %sw.epilog332

sw.default327:                                    ; preds = %if.end82
  %182 = load ptr, ptr %cinfo.addr, align 8
  %err328 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %182, i32 0, i32 0
  %183 = load ptr, ptr %err328, align 8
  %msg_code329 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %183, i32 0, i32 5
  store i32 1003, ptr %msg_code329, align 8
  %184 = load ptr, ptr %cinfo.addr, align 8
  %err330 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %184, i32 0, i32 0
  %185 = load ptr, ptr %err330, align 8
  %error_exit331 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %185, i32 0, i32 0
  %186 = load ptr, ptr %error_exit331, align 8
  %187 = load ptr, ptr %cinfo.addr, align 8
  call void %186(ptr noundef %187)
  br label %sw.epilog332

sw.epilog332:                                     ; preds = %sw.default327, %if.end326, %if.end146
  %188 = load i64, ptr %bfOffBits, align 8
  %189 = load i64, ptr %headerSize, align 8
  %add333 = add nsw i64 %189, 14
  %sub334 = sub nsw i64 %188, %add333
  store i64 %sub334, ptr %bPad, align 8
  %190 = load i32, ptr %mapentrysize, align 4
  %cmp335 = icmp sgt i32 %190, 0
  br i1 %cmp335, label %if.then337, label %if.end355

if.then337:                                       ; preds = %sw.epilog332
  %191 = load i64, ptr %biClrUsed, align 8
  %cmp338 = icmp sle i64 %191, 0
  br i1 %cmp338, label %if.then340, label %if.else

if.then340:                                       ; preds = %if.then337
  store i64 256, ptr %biClrUsed, align 8
  br label %if.end349

if.else:                                          ; preds = %if.then337
  %192 = load i64, ptr %biClrUsed, align 8
  %cmp341 = icmp sgt i64 %192, 256
  br i1 %cmp341, label %if.then343, label %if.end348

if.then343:                                       ; preds = %if.else
  %193 = load ptr, ptr %cinfo.addr, align 8
  %err344 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %err344, align 8
  %msg_code345 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %194, i32 0, i32 5
  store i32 1001, ptr %msg_code345, align 8
  %195 = load ptr, ptr %cinfo.addr, align 8
  %err346 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %195, i32 0, i32 0
  %196 = load ptr, ptr %err346, align 8
  %error_exit347 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %error_exit347, align 8
  %198 = load ptr, ptr %cinfo.addr, align 8
  call void %197(ptr noundef %198)
  br label %if.end348

if.end348:                                        ; preds = %if.then343, %if.else
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %if.then340
  %199 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %199, i32 0, i32 1
  %200 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %200, i32 0, i32 2
  %201 = load ptr, ptr %alloc_sarray, align 8
  %202 = load ptr, ptr %cinfo.addr, align 8
  %203 = load i64, ptr %biClrUsed, align 8
  %conv350 = trunc i64 %203 to i32
  %call351 = call ptr %201(ptr noundef %202, i32 noundef 1, i32 noundef %conv350, i32 noundef 3)
  %204 = load ptr, ptr %source, align 8
  %colormap = getelementptr inbounds %struct._bmp_source_struct, ptr %204, i32 0, i32 2
  store ptr %call351, ptr %colormap, align 8
  %205 = load ptr, ptr %source, align 8
  %206 = load i64, ptr %biClrUsed, align 8
  %conv352 = trunc i64 %206 to i32
  %207 = load i32, ptr %mapentrysize, align 4
  call void @read_colormap(ptr noundef %205, i32 noundef %conv352, i32 noundef %207)
  %208 = load i64, ptr %biClrUsed, align 8
  %209 = load i32, ptr %mapentrysize, align 4
  %conv353 = sext i32 %209 to i64
  %mul = mul nsw i64 %208, %conv353
  %210 = load i64, ptr %bPad, align 8
  %sub354 = sub nsw i64 %210, %mul
  store i64 %sub354, ptr %bPad, align 8
  br label %if.end355

if.end355:                                        ; preds = %if.end349, %sw.epilog332
  %211 = load i64, ptr %bPad, align 8
  %cmp356 = icmp slt i64 %211, 0
  br i1 %cmp356, label %if.then358, label %if.end363

if.then358:                                       ; preds = %if.end355
  %212 = load ptr, ptr %cinfo.addr, align 8
  %err359 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %212, i32 0, i32 0
  %213 = load ptr, ptr %err359, align 8
  %msg_code360 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %213, i32 0, i32 5
  store i32 1003, ptr %msg_code360, align 8
  %214 = load ptr, ptr %cinfo.addr, align 8
  %err361 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %err361, align 8
  %error_exit362 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %215, i32 0, i32 0
  %216 = load ptr, ptr %error_exit362, align 8
  %217 = load ptr, ptr %cinfo.addr, align 8
  call void %216(ptr noundef %217)
  br label %if.end363

if.end363:                                        ; preds = %if.then358, %if.end355
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end363
  %218 = load i64, ptr %bPad, align 8
  %dec = add nsw i64 %218, -1
  store i64 %dec, ptr %bPad, align 8
  %cmp364 = icmp sge i64 %dec, 0
  br i1 %cmp364, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %219 = load ptr, ptr %source, align 8
  %call366 = call i32 @read_byte(ptr noundef %219)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %220 = load ptr, ptr %source, align 8
  %bits_per_pixel367 = getelementptr inbounds %struct._bmp_source_struct, ptr %220, i32 0, i32 6
  %221 = load i32, ptr %bits_per_pixel367, align 8
  %cmp368 = icmp eq i32 %221, 24
  br i1 %cmp368, label %if.then370, label %if.else373

if.then370:                                       ; preds = %while.end
  %222 = load i64, ptr %biWidth, align 8
  %mul371 = mul nsw i64 %222, 3
  %conv372 = trunc i64 %mul371 to i32
  store i32 %conv372, ptr %row_width, align 4
  br label %if.end375

if.else373:                                       ; preds = %while.end
  %223 = load i64, ptr %biWidth, align 8
  %conv374 = trunc i64 %223 to i32
  store i32 %conv374, ptr %row_width, align 4
  br label %if.end375

if.end375:                                        ; preds = %if.else373, %if.then370
  br label %while.cond376

while.cond376:                                    ; preds = %while.body379, %if.end375
  %224 = load i32, ptr %row_width, align 4
  %and = and i32 %224, 3
  %cmp377 = icmp ne i32 %and, 0
  br i1 %cmp377, label %while.body379, label %while.end380

while.body379:                                    ; preds = %while.cond376
  %225 = load i32, ptr %row_width, align 4
  %inc = add i32 %225, 1
  store i32 %inc, ptr %row_width, align 4
  br label %while.cond376, !llvm.loop !8

while.end380:                                     ; preds = %while.cond376
  %226 = load i32, ptr %row_width, align 4
  %227 = load ptr, ptr %source, align 8
  %row_width381 = getelementptr inbounds %struct._bmp_source_struct, ptr %227, i32 0, i32 5
  store i32 %226, ptr %row_width381, align 4
  %228 = load ptr, ptr %cinfo.addr, align 8
  %mem382 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %228, i32 0, i32 1
  %229 = load ptr, ptr %mem382, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %229, i32 0, i32 4
  %230 = load ptr, ptr %request_virt_sarray, align 8
  %231 = load ptr, ptr %cinfo.addr, align 8
  %232 = load i32, ptr %row_width, align 4
  %233 = load i64, ptr %biHeight, align 8
  %conv383 = trunc i64 %233 to i32
  %call384 = call ptr %230(ptr noundef %231, i32 noundef 1, i32 noundef 0, i32 noundef %232, i32 noundef %conv383, i32 noundef 1)
  %234 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %234, i32 0, i32 3
  store ptr %call384, ptr %whole_image, align 8
  %235 = load ptr, ptr %source, align 8
  %pub385 = getelementptr inbounds %struct._bmp_source_struct, ptr %235, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub385, i32 0, i32 1
  store ptr @preload_image, ptr %get_pixel_rows, align 8
  %236 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %236, i32 0, i32 2
  %237 = load ptr, ptr %progress, align 8
  %cmp386 = icmp ne ptr %237, null
  br i1 %cmp386, label %if.then388, label %if.end392

if.then388:                                       ; preds = %while.end380
  %238 = load ptr, ptr %cinfo.addr, align 8
  %progress390 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %238, i32 0, i32 2
  %239 = load ptr, ptr %progress390, align 8
  store ptr %239, ptr %progress389, align 8
  %240 = load ptr, ptr %progress389, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %240, i32 0, i32 2
  %241 = load i32, ptr %total_extra_passes, align 4
  %inc391 = add nsw i32 %241, 1
  store i32 %inc391, ptr %total_extra_passes, align 4
  br label %if.end392

if.end392:                                        ; preds = %if.then388, %while.end380
  %242 = load ptr, ptr %cinfo.addr, align 8
  %mem393 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %242, i32 0, i32 1
  %243 = load ptr, ptr %mem393, align 8
  %alloc_sarray394 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %243, i32 0, i32 2
  %244 = load ptr, ptr %alloc_sarray394, align 8
  %245 = load ptr, ptr %cinfo.addr, align 8
  %246 = load i64, ptr %biWidth, align 8
  %mul395 = mul nsw i64 %246, 3
  %conv396 = trunc i64 %mul395 to i32
  %call397 = call ptr %244(ptr noundef %245, i32 noundef 1, i32 noundef %conv396, i32 noundef 1)
  %247 = load ptr, ptr %source, align 8
  %pub398 = getelementptr inbounds %struct._bmp_source_struct, ptr %247, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub398, i32 0, i32 4
  store ptr %call397, ptr %buffer, align 8
  %248 = load ptr, ptr %source, align 8
  %pub399 = getelementptr inbounds %struct._bmp_source_struct, ptr %248, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub399, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %249 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %249, i32 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  %250 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %250, i32 0, i32 8
  store i32 3, ptr %input_components, align 8
  %251 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %251, i32 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %252 = load i64, ptr %biWidth, align 8
  %conv400 = trunc i64 %252 to i32
  %253 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %253, i32 0, i32 6
  store i32 %conv400, ptr %image_width, align 8
  %254 = load i64, ptr %biHeight, align 8
  %conv401 = trunc i64 %254 to i32
  %255 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %255, i32 0, i32 7
  store i32 %conv401, ptr %image_height, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_bmp(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

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
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %cmaplen.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @read_byte(ptr noundef %3)
  %conv = trunc i32 %call to i8
  %4 = load ptr, ptr %sinfo.addr, align 8
  %colormap = getelementptr inbounds %struct._bmp_source_struct, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %8 = load ptr, ptr %sinfo.addr, align 8
  %call2 = call i32 @read_byte(ptr noundef %8)
  %conv3 = trunc i32 %call2 to i8
  %9 = load ptr, ptr %sinfo.addr, align 8
  %colormap4 = getelementptr inbounds %struct._bmp_source_struct, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %colormap4, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx5, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %11, i64 %idxprom6
  store i8 %conv3, ptr %arrayidx7, align 1
  %13 = load ptr, ptr %sinfo.addr, align 8
  %call8 = call i32 @read_byte(ptr noundef %13)
  %conv9 = trunc i32 %call8 to i8
  %14 = load ptr, ptr %sinfo.addr, align 8
  %colormap10 = getelementptr inbounds %struct._bmp_source_struct, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %colormap10, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx11, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %16, i64 %idxprom12
  store i8 %conv9, ptr %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc38, %sw.bb14
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %cmaplen.addr, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body18, label %for.end40

for.body18:                                       ; preds = %for.cond15
  %21 = load ptr, ptr %sinfo.addr, align 8
  %call19 = call i32 @read_byte(ptr noundef %21)
  %conv20 = trunc i32 %call19 to i8
  %22 = load ptr, ptr %sinfo.addr, align 8
  %colormap21 = getelementptr inbounds %struct._bmp_source_struct, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %colormap21, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx22, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 %idxprom23
  store i8 %conv20, ptr %arrayidx24, align 1
  %26 = load ptr, ptr %sinfo.addr, align 8
  %call25 = call i32 @read_byte(ptr noundef %26)
  %conv26 = trunc i32 %call25 to i8
  %27 = load ptr, ptr %sinfo.addr, align 8
  %colormap27 = getelementptr inbounds %struct._bmp_source_struct, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %colormap27, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %28, i64 1
  %29 = load ptr, ptr %arrayidx28, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %29, i64 %idxprom29
  store i8 %conv26, ptr %arrayidx30, align 1
  %31 = load ptr, ptr %sinfo.addr, align 8
  %call31 = call i32 @read_byte(ptr noundef %31)
  %conv32 = trunc i32 %call31 to i8
  %32 = load ptr, ptr %sinfo.addr, align 8
  %colormap33 = getelementptr inbounds %struct._bmp_source_struct, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %colormap33, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %33, i64 0
  %34 = load ptr, ptr %arrayidx34, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %35 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %34, i64 %idxprom35
  store i8 %conv32, ptr %arrayidx36, align 1
  %36 = load ptr, ptr %sinfo.addr, align 8
  %call37 = call i32 @read_byte(ptr noundef %36)
  br label %for.inc38

for.inc38:                                        ; preds = %for.body18
  %37 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %37, 1
  store i32 %inc39, ptr %i, align 4
  br label %for.cond15, !llvm.loop !10

for.end40:                                        ; preds = %for.cond15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %38 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i32 0, i32 5
  store i32 1001, ptr %msg_code, align 8
  %41 = load ptr, ptr %sinfo.addr, align 8
  %cinfo41 = getelementptr inbounds %struct._bmp_source_struct, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %cinfo41, align 8
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err42, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %error_exit, align 8
  %45 = load ptr, ptr %sinfo.addr, align 8
  %cinfo43 = getelementptr inbounds %struct._bmp_source_struct, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %cinfo43, align 8
  call void %44(ptr noundef %46)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end40, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_byte(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, ptr %0, i32 0, i32 0
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
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %6 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %error_exit, align 8
  %10 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._bmp_source_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %cinfo3, align 8
  call void %9(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %c, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @preload_image(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %c = alloca i32, align 4
  %out_ptr = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %2 = load ptr, ptr %input_file, align 8
  store ptr %2, ptr %infile, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %progress1, align 8
  store ptr %4, ptr %progress, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %5 = load i32, ptr %row, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %image_height, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %progress, align 8
  %cmp2 = icmp ne ptr %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %row, align 4
  %conv = zext i32 %9 to i64
  %10 = load ptr, ptr %progress, align 8
  %pub3 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %10, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub3, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %image_height4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 7
  %12 = load i32, ptr %image_height4, align 4
  %conv5 = zext i32 %12 to i64
  %13 = load ptr, ptr %progress, align 8
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %13, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub6, i32 0, i32 2
  store i64 %conv5, ptr %pass_limit, align 8
  %14 = load ptr, ptr %progress, align 8
  %pub7 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %14, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %pub7, i32 0, i32 0
  %15 = load ptr, ptr %progress_monitor, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %access_virt_sarray, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %whole_image, align 8
  %23 = load i32, ptr %row, align 4
  %call = call ptr %19(ptr noundef %20, ptr noundef %22, i32 noundef %23, i32 noundef 1, i32 noundef 1)
  store ptr %call, ptr %image_ptr, align 8
  %24 = load ptr, ptr %image_ptr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 0
  %25 = load ptr, ptr %arrayidx, align 8
  store ptr %25, ptr %out_ptr, align 8
  %26 = load ptr, ptr %source, align 8
  %row_width = getelementptr inbounds %struct._bmp_source_struct, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %row_width, align 4
  store i32 %27, ptr %col, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end
  %28 = load i32, ptr %col, align 4
  %cmp9 = icmp ugt i32 %28, 0
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %29 = load ptr, ptr %infile, align 8
  %call12 = call i32 @getc(ptr noundef %29)
  store i32 %call12, ptr %c, align 4
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body11
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err16, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body11
  %36 = load i32, ptr %c, align 4
  %conv18 = trunc i32 %36 to i8
  %37 = load ptr, ptr %out_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %out_ptr, align 8
  store i8 %conv18, ptr %37, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %38 = load i32, ptr %col, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond8, !llvm.loop !11

for.end:                                          ; preds = %for.cond8
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %39 = load i32, ptr %row, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  %40 = load ptr, ptr %progress, align 8
  %cmp21 = icmp ne ptr %40, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.end20
  %41 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %completed_extra_passes, align 8
  %inc24 = add nsw i32 %42, 1
  store i32 %inc24, ptr %completed_extra_passes, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end20
  %43 = load ptr, ptr %source, align 8
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, ptr %43, i32 0, i32 6
  %44 = load i32, ptr %bits_per_pixel, align 8
  switch i32 %44, label %sw.default [
    i32 8, label %sw.bb
    i32 24, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end25
  %45 = load ptr, ptr %source, align 8
  %pub26 = getelementptr inbounds %struct._bmp_source_struct, ptr %45, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub26, i32 0, i32 1
  store ptr @get_8bit_row, ptr %get_pixel_rows, align 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end25
  %46 = load ptr, ptr %source, align 8
  %pub28 = getelementptr inbounds %struct._bmp_source_struct, ptr %46, i32 0, i32 0
  %get_pixel_rows29 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub28, i32 0, i32 1
  store ptr @get_24bit_row, ptr %get_pixel_rows29, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err30, align 8
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 5
  store i32 1002, ptr %msg_code31, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %err32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err32, align 8
  %error_exit33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %error_exit33, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  call void %51(ptr noundef %52)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb
  %53 = load ptr, ptr %cinfo.addr, align 8
  %image_height34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 7
  %54 = load i32, ptr %image_height34, align 4
  %55 = load ptr, ptr %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %55, i32 0, i32 4
  store i32 %54, ptr %source_row, align 8
  %56 = load ptr, ptr %source, align 8
  %pub35 = getelementptr inbounds %struct._bmp_source_struct, ptr %56, i32 0, i32 0
  %get_pixel_rows36 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub35, i32 0, i32 1
  %57 = load ptr, ptr %get_pixel_rows36, align 8
  %58 = load ptr, ptr %cinfo.addr, align 8
  %59 = load ptr, ptr %sinfo.addr, align 8
  %call37 = call i32 %57(ptr noundef %58, ptr noundef %59)
  ret i32 %call37
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %colormap = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %t = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %colormap1, align 8
  store ptr %2, ptr %colormap, align 8
  %3 = load ptr, ptr %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %source_row, align 8
  %dec = add i32 %4, -1
  store i32 %dec, ptr %source_row, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %access_virt_sarray, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %whole_image, align 8
  %11 = load ptr, ptr %source, align 8
  %source_row2 = getelementptr inbounds %struct._bmp_source_struct, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %source_row2, align 8
  %call = call ptr %7(ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 1, i32 noundef 0)
  store ptr %call, ptr %image_ptr, align 8
  %13 = load ptr, ptr %image_ptr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx, align 8
  store ptr %14, ptr %inptr, align 8
  %15 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, ptr %15, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %16 = load ptr, ptr %buffer, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %16, i64 0
  %17 = load ptr, ptr %arrayidx3, align 8
  store ptr %17, ptr %outptr, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %image_width, align 8
  store i32 %19, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %22 = load i8, ptr %21, align 1
  %conv = zext i8 %22 to i32
  store i32 %conv, ptr %t, align 4
  %23 = load ptr, ptr %colormap, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %23, i64 0
  %24 = load ptr, ptr %arrayidx4, align 8
  %25 = load i32, ptr %t, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load i8, ptr %arrayidx5, align 1
  %27 = load ptr, ptr %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr6, ptr %outptr, align 8
  store i8 %26, ptr %27, align 1
  %28 = load ptr, ptr %colormap, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %28, i64 1
  %29 = load ptr, ptr %arrayidx7, align 8
  %30 = load i32, ptr %t, align 4
  %idxprom8 = sext i32 %30 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %29, i64 %idxprom8
  %31 = load i8, ptr %arrayidx9, align 1
  %32 = load ptr, ptr %outptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr10, ptr %outptr, align 8
  store i8 %31, ptr %32, align 1
  %33 = load ptr, ptr %colormap, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %33, i64 2
  %34 = load ptr, ptr %arrayidx11, align 8
  %35 = load i32, ptr %t, align 4
  %idxprom12 = sext i32 %35 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %34, i64 %idxprom12
  %36 = load i8, ptr %arrayidx13, align 1
  %37 = load ptr, ptr %outptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr14, ptr %outptr, align 8
  store i8 %36, ptr %37, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %col, align 4
  %dec15 = add i32 %38, -1
  store i32 %dec15, ptr %col, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_24bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %source_row, align 8
  %dec = add i32 %2, -1
  store i32 %dec, ptr %source_row, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %access_virt_sarray, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %whole_image, align 8
  %9 = load ptr, ptr %source, align 8
  %source_row1 = getelementptr inbounds %struct._bmp_source_struct, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %source_row1, align 8
  %call = call ptr %5(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 1, i32 noundef 0)
  store ptr %call, ptr %image_ptr, align 8
  %11 = load ptr, ptr %image_ptr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %inptr, align 8
  %13 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, ptr %13, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %14 = load ptr, ptr %buffer, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx2, align 8
  store ptr %15, ptr %outptr, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %image_width, align 8
  store i32 %17, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %18, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %20 = load i8, ptr %19, align 1
  %21 = load ptr, ptr %outptr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 %20, ptr %arrayidx3, align 1
  %22 = load ptr, ptr %inptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr4, ptr %inptr, align 8
  %23 = load i8, ptr %22, align 1
  %24 = load ptr, ptr %outptr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %23, ptr %arrayidx5, align 1
  %25 = load ptr, ptr %inptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr6, ptr %inptr, align 8
  %26 = load i8, ptr %25, align 1
  %27 = load ptr, ptr %outptr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %27, i64 0
  store i8 %26, ptr %arrayidx7, align 1
  %28 = load ptr, ptr %outptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %col, align 4
  %dec8 = add i32 %29, -1
  store i32 %dec8, ptr %col, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 1
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
