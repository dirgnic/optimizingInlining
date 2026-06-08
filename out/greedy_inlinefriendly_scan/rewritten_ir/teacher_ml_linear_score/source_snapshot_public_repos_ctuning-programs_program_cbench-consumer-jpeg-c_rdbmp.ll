; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_rdbmp.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdbmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_bmp(ptr noundef %cinfo) #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 88) #2
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, ptr %call, i64 0, i32 1
  store ptr %cinfo, ptr %cinfo1, align 8
  store ptr @start_input_bmp, ptr %call, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call, i64 0, i32 2
  store ptr @finish_input_bmp, ptr %finish_input, align 8
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_bmp(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
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
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  store i64 0, ptr %biWidth, align 8
  store i64 0, ptr %biHeight, align 8
  store i64 0, ptr %biClrUsed, align 8
  store i32 0, ptr %mapentrysize, align 4
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  %call = call i64 @fread(ptr noundef nonnull %bmpfileheader, i64 noundef 1, i64 noundef 14, ptr noundef %0) #2
  %cmp = icmp eq i64 %call, 14
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
  %5 = load i8, ptr %bmpfileheader, align 1
  %conv = zext i8 %5 to i32
  %arrayidx2 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 1
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %add = or i32 %shl, %conv
  %cmp4.not = icmp eq i32 %add, 19778
  br i1 %cmp4.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 1007, ptr %msg_code8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %7) #2
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end
  %arrayidx12 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 10
  %11 = load i8, ptr %arrayidx12, align 1
  %conv14 = zext i8 %11 to i64
  %arrayidx15 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 11
  %12 = load i8, ptr %arrayidx15, align 1
  %conv17 = zext i8 %12 to i64
  %shl18 = shl nuw nsw i64 %conv17, 8
  %add19 = or i64 %shl18, %conv14
  %arrayidx20 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 12
  %13 = load i8, ptr %arrayidx20, align 1
  %conv22 = zext i8 %13 to i64
  %shl23 = shl nuw nsw i64 %conv22, 16
  %add24 = or i64 %add19, %shl23
  %arrayidx25 = getelementptr inbounds [14 x i8], ptr %bmpfileheader, i64 0, i64 13
  %14 = load i8, ptr %arrayidx25, align 1
  %conv27 = zext i8 %14 to i64
  %shl28 = shl nuw nsw i64 %conv27, 24
  %add29 = or i64 %add24, %shl28
  store i64 %add29, ptr %bfOffBits, align 8
  %15 = load ptr, ptr %source, align 8
  %input_file32 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %15, i64 0, i32 3
  %16 = load ptr, ptr %input_file32, align 8
  %call33 = call i64 @fread(ptr noundef nonnull %bmpinfoheader, i64 noundef 1, i64 noundef 4, ptr noundef %16) #2
  %cmp34 = icmp eq i64 %call33, 4
  br i1 %cmp34, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end11
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 42, ptr %msg_code38, align 8
  %19 = load ptr, ptr %17, align 8
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull %17) #2
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end11
  %21 = load i8, ptr %bmpinfoheader, align 1
  %conv44 = zext i8 %21 to i64
  %arrayidx45 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 1
  %22 = load i8, ptr %arrayidx45, align 1
  %conv47 = zext i8 %22 to i64
  %shl48 = shl nuw nsw i64 %conv47, 8
  %add49 = or i64 %shl48, %conv44
  %arrayidx50 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 2
  %23 = load i8, ptr %arrayidx50, align 1
  %conv52 = zext i8 %23 to i64
  %shl53 = shl nuw nsw i64 %conv52, 16
  %add54 = or i64 %add49, %shl53
  %arrayidx55 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 3
  %24 = load i8, ptr %arrayidx55, align 1
  %conv57 = zext i8 %24 to i64
  %shl58 = shl nuw nsw i64 %conv57, 24
  %add59 = or i64 %add54, %shl58
  store i64 %add59, ptr %headerSize, align 8
  %cmp60 = icmp ult i64 %add59, 12
  %25 = load i64, ptr %headerSize, align 8
  %cmp62 = icmp sgt i64 %25, 64
  %or.cond = select i1 %cmp60, i1 true, i1 %cmp62
  br i1 %or.cond, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end41
  %26 = load ptr, ptr %cinfo.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 5
  store i32 1003, ptr %msg_code66, align 8
  %28 = load ptr, ptr %26, align 8
  %29 = load ptr, ptr %28, align 8
  call void %29(ptr noundef nonnull %26) #2
  br label %if.end69

if.end69:                                         ; preds = %if.end41, %if.then64
  %add.ptr = getelementptr inbounds i8, ptr %bmpinfoheader, i64 4
  %30 = load i64, ptr %headerSize, align 8
  %sub = add nsw i64 %30, -4
  %31 = load ptr, ptr %source, align 8
  %input_file72 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %31, i64 0, i32 3
  %32 = load ptr, ptr %input_file72, align 8
  %call73 = call i64 @fread(ptr noundef nonnull %add.ptr, i64 noundef 1, i64 noundef %sub, ptr noundef %32) #2
  %sub74 = add nsw i64 %30, -4
  %cmp75 = icmp eq i64 %call73, %sub74
  br i1 %cmp75, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.end69
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load ptr, ptr %33, align 8
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 5
  store i32 42, ptr %msg_code79, align 8
  %35 = load ptr, ptr %33, align 8
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull %33) #2
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end69
  %37 = load i64, ptr %headerSize, align 8
  %conv83 = trunc i64 %37 to i32
  switch i32 %conv83, label %sw.default327 [
    i32 12, label %sw.bb
    i32 40, label %sw.bb147
    i32 64, label %sw.bb147
  ]

sw.bb:                                            ; preds = %if.end82
  %arrayidx84 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 4
  %38 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %38 to i64
  %arrayidx86 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 5
  %39 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %39 to i64
  %shl88 = shl nuw nsw i64 %conv87, 8
  %add89 = or i64 %shl88, %conv85
  store i64 %add89, ptr %biWidth, align 8
  %arrayidx91 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 6
  %40 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %40 to i64
  %arrayidx93 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 7
  %41 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %41 to i64
  %shl95 = shl nuw nsw i64 %conv94, 8
  %add96 = or i64 %shl95, %conv92
  store i64 %add96, ptr %biHeight, align 8
  %arrayidx98 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 8
  %42 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %42 to i32
  %arrayidx100 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 9
  %43 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %43 to i32
  %shl102 = shl nuw nsw i32 %conv101, 8
  %add103 = or i32 %shl102, %conv99
  store i32 %add103, ptr %biPlanes, align 4
  %arrayidx104 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 10
  %44 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %44 to i32
  %arrayidx106 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 11
  %45 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %45 to i32
  %shl108 = shl nuw nsw i32 %conv107, 8
  %add109 = or i32 %shl108, %conv105
  %46 = load ptr, ptr %source, align 8
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, ptr %46, i64 0, i32 6
  store i32 %add109, ptr %bits_per_pixel, align 8
  %trunc = trunc i32 %add109 to i16
  switch i16 %trunc, label %sw.default [
    i16 8, label %sw.bb111
    i16 24, label %sw.bb122
  ]

sw.bb111:                                         ; preds = %sw.bb
  store i32 3, ptr %mapentrysize, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %msg_code113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 1011, ptr %msg_code113, align 8
  %49 = load i64, ptr %biWidth, align 8
  %conv114 = trunc i64 %49 to i32
  %50 = load ptr, ptr %47, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6
  store i32 %conv114, ptr %msg_parm, align 4
  %51 = load i64, ptr %biHeight, align 8
  %conv117 = trunc i64 %51 to i32
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %arrayidx120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6, i32 0, i64 1
  store i32 %conv117, ptr %arrayidx120, align 4
  %54 = load ptr, ptr %52, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %emit_message, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  call void %55(ptr noundef %56, i32 noundef 1) #2
  br label %sw.epilog

sw.bb122:                                         ; preds = %sw.bb
  %57 = load ptr, ptr %cinfo.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %msg_code124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 1010, ptr %msg_code124, align 8
  %59 = load i64, ptr %biWidth, align 8
  %conv125 = trunc i64 %59 to i32
  %60 = load ptr, ptr %57, align 8
  %msg_parm127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 6
  store i32 %conv125, ptr %msg_parm127, align 4
  %61 = load i64, ptr %biHeight, align 8
  %conv129 = trunc i64 %61 to i32
  %62 = load ptr, ptr %cinfo.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %arrayidx132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 6, i32 0, i64 1
  store i32 %conv129, ptr %arrayidx132, align 4
  %64 = load ptr, ptr %62, align 8
  %emit_message134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 1
  %65 = load ptr, ptr %emit_message134, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  call void %65(ptr noundef %66, i32 noundef 1) #2
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %67 = load ptr, ptr %cinfo.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %msg_code136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 1002, ptr %msg_code136, align 8
  %69 = load ptr, ptr %67, align 8
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull %67) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb122, %sw.bb111
  %71 = load i32, ptr %biPlanes, align 4
  %cmp139.not = icmp eq i32 %71, 1
  br i1 %cmp139.not, label %sw.epilog332, label %if.then141

if.then141:                                       ; preds = %sw.epilog
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_code143 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 1004, ptr %msg_code143, align 8
  %74 = load ptr, ptr %72, align 8
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull %72) #2
  br label %sw.epilog332

sw.bb147:                                         ; preds = %if.end82, %if.end82
  %arrayidx148 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 4
  %76 = load i8, ptr %arrayidx148, align 1
  %conv150 = zext i8 %76 to i64
  %arrayidx151 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 5
  %77 = load i8, ptr %arrayidx151, align 1
  %conv153 = zext i8 %77 to i64
  %shl154 = shl nuw nsw i64 %conv153, 8
  %add155 = or i64 %shl154, %conv150
  %arrayidx156 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 6
  %78 = load i8, ptr %arrayidx156, align 1
  %conv158 = zext i8 %78 to i64
  %shl159 = shl nuw nsw i64 %conv158, 16
  %add160 = or i64 %add155, %shl159
  %arrayidx161 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 7
  %79 = load i8, ptr %arrayidx161, align 1
  %conv163 = zext i8 %79 to i64
  %shl164 = shl nuw nsw i64 %conv163, 24
  %add165 = or i64 %add160, %shl164
  store i64 %add165, ptr %biWidth, align 8
  %arrayidx166 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 8
  %80 = load i8, ptr %arrayidx166, align 1
  %conv168 = zext i8 %80 to i64
  %arrayidx169 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 9
  %81 = load i8, ptr %arrayidx169, align 1
  %conv171 = zext i8 %81 to i64
  %shl172 = shl nuw nsw i64 %conv171, 8
  %add173 = or i64 %shl172, %conv168
  %arrayidx174 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 10
  %82 = load i8, ptr %arrayidx174, align 1
  %conv176 = zext i8 %82 to i64
  %shl177 = shl nuw nsw i64 %conv176, 16
  %add178 = or i64 %add173, %shl177
  %arrayidx179 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 11
  %83 = load i8, ptr %arrayidx179, align 1
  %conv181 = zext i8 %83 to i64
  %shl182 = shl nuw nsw i64 %conv181, 24
  %add183 = or i64 %add178, %shl182
  store i64 %add183, ptr %biHeight, align 8
  %arrayidx184 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 12
  %84 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %84 to i32
  %arrayidx186 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 13
  %85 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %85 to i32
  %shl188 = shl nuw nsw i32 %conv187, 8
  %add189 = or i32 %shl188, %conv185
  store i32 %add189, ptr %biPlanes, align 4
  %arrayidx190 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 14
  %86 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %86 to i32
  %arrayidx192 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 15
  %87 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %87 to i32
  %shl194 = shl nuw nsw i32 %conv193, 8
  %add195 = or i32 %shl194, %conv191
  %88 = load ptr, ptr %source, align 8
  %bits_per_pixel196 = getelementptr inbounds %struct._bmp_source_struct, ptr %88, i64 0, i32 6
  store i32 %add195, ptr %bits_per_pixel196, align 8
  %arrayidx197 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 16
  %89 = load i8, ptr %arrayidx197, align 1
  %conv199 = zext i8 %89 to i64
  %arrayidx200 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 17
  %90 = load i8, ptr %arrayidx200, align 1
  %conv202 = zext i8 %90 to i64
  %shl203 = shl nuw nsw i64 %conv202, 8
  %add204 = or i64 %shl203, %conv199
  %arrayidx205 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 18
  %91 = load i8, ptr %arrayidx205, align 1
  %conv207 = zext i8 %91 to i64
  %shl208 = shl nuw nsw i64 %conv207, 16
  %add209 = or i64 %add204, %shl208
  %arrayidx210 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 19
  %92 = load i8, ptr %arrayidx210, align 1
  %conv212 = zext i8 %92 to i64
  %shl213 = shl nuw nsw i64 %conv212, 24
  %add214 = or i64 %add209, %shl213
  store i64 %add214, ptr %biCompression, align 8
  %arrayidx215 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 24
  %93 = load i8, ptr %arrayidx215, align 1
  %conv217 = zext i8 %93 to i64
  %arrayidx218 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 25
  %94 = load i8, ptr %arrayidx218, align 1
  %conv220 = zext i8 %94 to i64
  %shl221 = shl nuw nsw i64 %conv220, 8
  %add222 = or i64 %shl221, %conv217
  %arrayidx223 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 26
  %95 = load i8, ptr %arrayidx223, align 1
  %conv225 = zext i8 %95 to i64
  %shl226 = shl nuw nsw i64 %conv225, 16
  %add227 = or i64 %add222, %shl226
  %arrayidx228 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 27
  %96 = load i8, ptr %arrayidx228, align 1
  %conv230 = zext i8 %96 to i64
  %shl231 = shl nuw nsw i64 %conv230, 24
  %add232 = or i64 %add227, %shl231
  store i64 %add232, ptr %biXPelsPerMeter, align 8
  %arrayidx233 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 28
  %97 = load i8, ptr %arrayidx233, align 1
  %conv235 = zext i8 %97 to i64
  %arrayidx236 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 29
  %98 = load i8, ptr %arrayidx236, align 1
  %conv238 = zext i8 %98 to i64
  %shl239 = shl nuw nsw i64 %conv238, 8
  %add240 = or i64 %shl239, %conv235
  %arrayidx241 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 30
  %99 = load i8, ptr %arrayidx241, align 1
  %conv243 = zext i8 %99 to i64
  %shl244 = shl nuw nsw i64 %conv243, 16
  %add245 = or i64 %add240, %shl244
  %arrayidx246 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 31
  %100 = load i8, ptr %arrayidx246, align 1
  %conv248 = zext i8 %100 to i64
  %shl249 = shl nuw nsw i64 %conv248, 24
  %add250 = or i64 %add245, %shl249
  store i64 %add250, ptr %biYPelsPerMeter, align 8
  %arrayidx251 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 32
  %101 = load i8, ptr %arrayidx251, align 1
  %conv253 = zext i8 %101 to i64
  %arrayidx254 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 33
  %102 = load i8, ptr %arrayidx254, align 1
  %conv256 = zext i8 %102 to i64
  %shl257 = shl nuw nsw i64 %conv256, 8
  %add258 = or i64 %shl257, %conv253
  %arrayidx259 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 34
  %103 = load i8, ptr %arrayidx259, align 1
  %conv261 = zext i8 %103 to i64
  %shl262 = shl nuw nsw i64 %conv261, 16
  %add263 = or i64 %add258, %shl262
  %arrayidx264 = getelementptr inbounds [64 x i8], ptr %bmpinfoheader, i64 0, i64 35
  %104 = load i8, ptr %arrayidx264, align 1
  %conv266 = zext i8 %104 to i64
  %shl267 = shl nuw nsw i64 %conv266, 24
  %add268 = or i64 %add263, %shl267
  store i64 %add268, ptr %biClrUsed, align 8
  %105 = load ptr, ptr %source, align 8
  %bits_per_pixel269 = getelementptr inbounds %struct._bmp_source_struct, ptr %105, i64 0, i32 6
  %106 = load i32, ptr %bits_per_pixel269, align 8
  switch i32 %106, label %sw.default296 [
    i32 8, label %sw.bb270
    i32 24, label %sw.bb283
  ]

sw.bb270:                                         ; preds = %sw.bb147
  store i32 4, ptr %mapentrysize, align 4
  %107 = load ptr, ptr %cinfo.addr, align 8
  %108 = load ptr, ptr %107, align 8
  %msg_code272 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 5
  store i32 1009, ptr %msg_code272, align 8
  %109 = load i64, ptr %biWidth, align 8
  %conv273 = trunc i64 %109 to i32
  %110 = load ptr, ptr %107, align 8
  %msg_parm275 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i64 0, i32 6
  store i32 %conv273, ptr %msg_parm275, align 4
  %111 = load i64, ptr %biHeight, align 8
  %conv277 = trunc i64 %111 to i32
  %112 = load ptr, ptr %cinfo.addr, align 8
  %113 = load ptr, ptr %112, align 8
  %arrayidx280 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 6, i32 0, i64 1
  store i32 %conv277, ptr %arrayidx280, align 4
  %114 = load ptr, ptr %112, align 8
  %emit_message282 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %114, i64 0, i32 1
  %115 = load ptr, ptr %emit_message282, align 8
  %116 = load ptr, ptr %cinfo.addr, align 8
  call void %115(ptr noundef %116, i32 noundef 1) #2
  br label %sw.epilog301

sw.bb283:                                         ; preds = %sw.bb147
  %117 = load ptr, ptr %cinfo.addr, align 8
  %118 = load ptr, ptr %117, align 8
  %msg_code285 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 1008, ptr %msg_code285, align 8
  %119 = load i64, ptr %biWidth, align 8
  %conv286 = trunc i64 %119 to i32
  %120 = load ptr, ptr %117, align 8
  %msg_parm288 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %120, i64 0, i32 6
  store i32 %conv286, ptr %msg_parm288, align 4
  %121 = load i64, ptr %biHeight, align 8
  %conv290 = trunc i64 %121 to i32
  %122 = load ptr, ptr %cinfo.addr, align 8
  %123 = load ptr, ptr %122, align 8
  %arrayidx293 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i64 0, i32 6, i32 0, i64 1
  store i32 %conv290, ptr %arrayidx293, align 4
  %124 = load ptr, ptr %122, align 8
  %emit_message295 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 1
  %125 = load ptr, ptr %emit_message295, align 8
  %126 = load ptr, ptr %cinfo.addr, align 8
  call void %125(ptr noundef %126, i32 noundef 1) #2
  br label %sw.epilog301

sw.default296:                                    ; preds = %sw.bb147
  %127 = load ptr, ptr %cinfo.addr, align 8
  %128 = load ptr, ptr %127, align 8
  %msg_code298 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 5
  store i32 1002, ptr %msg_code298, align 8
  %129 = load ptr, ptr %127, align 8
  %130 = load ptr, ptr %129, align 8
  call void %130(ptr noundef nonnull %127) #2
  br label %sw.epilog301

sw.epilog301:                                     ; preds = %sw.default296, %sw.bb283, %sw.bb270
  %131 = load i32, ptr %biPlanes, align 4
  %cmp302.not = icmp eq i32 %131, 1
  br i1 %cmp302.not, label %if.end309, label %if.then304

if.then304:                                       ; preds = %sw.epilog301
  %132 = load ptr, ptr %cinfo.addr, align 8
  %133 = load ptr, ptr %132, align 8
  %msg_code306 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 5
  store i32 1004, ptr %msg_code306, align 8
  %134 = load ptr, ptr %132, align 8
  %135 = load ptr, ptr %134, align 8
  call void %135(ptr noundef nonnull %132) #2
  br label %if.end309

if.end309:                                        ; preds = %if.then304, %sw.epilog301
  %136 = load i64, ptr %biCompression, align 8
  %cmp310.not = icmp eq i64 %136, 0
  br i1 %cmp310.not, label %if.end317, label %if.then312

if.then312:                                       ; preds = %if.end309
  %137 = load ptr, ptr %cinfo.addr, align 8
  %138 = load ptr, ptr %137, align 8
  %msg_code314 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i64 0, i32 5
  store i32 1006, ptr %msg_code314, align 8
  %139 = load ptr, ptr %137, align 8
  %140 = load ptr, ptr %139, align 8
  call void %140(ptr noundef nonnull %137) #2
  br label %if.end317

if.end317:                                        ; preds = %if.then312, %if.end309
  %141 = load i64, ptr %biXPelsPerMeter, align 8
  %cmp318 = icmp sgt i64 %141, 0
  %142 = load i64, ptr %biYPelsPerMeter, align 8
  %cmp320 = icmp sgt i64 %142, 0
  %or.cond2 = select i1 %cmp318, i1 %cmp320, i1 false
  br i1 %or.cond2, label %if.then322, label %sw.epilog332

if.then322:                                       ; preds = %if.end317
  %143 = load i64, ptr %biXPelsPerMeter, align 8
  %div = sdiv i64 %143, 100
  %conv323 = trunc i64 %div to i16
  %144 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %144, i64 0, i32 33
  store i16 %conv323, ptr %X_density, align 2
  %145 = load i64, ptr %biYPelsPerMeter, align 8
  %div324 = sdiv i64 %145, 100
  %conv325 = trunc i64 %div324 to i16
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %144, i64 0, i32 34
  store i16 %conv325, ptr %Y_density, align 8
  %146 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %146, i64 0, i32 32
  store i8 2, ptr %density_unit, align 4
  br label %sw.epilog332

sw.default327:                                    ; preds = %if.end82
  %147 = load ptr, ptr %cinfo.addr, align 8
  %148 = load ptr, ptr %147, align 8
  %msg_code329 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %148, i64 0, i32 5
  store i32 1003, ptr %msg_code329, align 8
  %149 = load ptr, ptr %147, align 8
  %150 = load ptr, ptr %149, align 8
  call void %150(ptr noundef nonnull %147) #2
  br label %sw.epilog332

sw.epilog332:                                     ; preds = %if.end317, %if.then322, %sw.epilog, %if.then141, %sw.default327
  %151 = load i64, ptr %bfOffBits, align 8
  %152 = load i64, ptr %headerSize, align 8
  %add333 = add nsw i64 %152, 14
  %sub334 = sub nsw i64 %151, %add333
  store i64 %sub334, ptr %bPad, align 8
  %153 = load i32, ptr %mapentrysize, align 4
  %cmp335 = icmp sgt i32 %153, 0
  br i1 %cmp335, label %if.then337, label %if.end355

if.then337:                                       ; preds = %sw.epilog332
  %154 = load i64, ptr %biClrUsed, align 8
  %cmp338 = icmp slt i64 %154, 1
  br i1 %cmp338, label %if.then340, label %if.else

if.then340:                                       ; preds = %if.then337
  store i64 256, ptr %biClrUsed, align 8
  br label %if.end349

if.else:                                          ; preds = %if.then337
  %155 = load i64, ptr %biClrUsed, align 8
  %cmp341 = icmp sgt i64 %155, 256
  br i1 %cmp341, label %if.then343, label %if.end349

if.then343:                                       ; preds = %if.else
  %156 = load ptr, ptr %cinfo.addr, align 8
  %157 = load ptr, ptr %156, align 8
  %msg_code345 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %157, i64 0, i32 5
  store i32 1001, ptr %msg_code345, align 8
  %158 = load ptr, ptr %156, align 8
  %159 = load ptr, ptr %158, align 8
  call void %159(ptr noundef nonnull %156) #2
  br label %if.end349

if.end349:                                        ; preds = %if.else, %if.then343, %if.then340
  %160 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %160, i64 0, i32 1
  %161 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %161, i64 0, i32 2
  %162 = load ptr, ptr %alloc_sarray, align 8
  %163 = load i64, ptr %biClrUsed, align 8
  %conv350 = trunc i64 %163 to i32
  %call351 = call ptr %162(ptr noundef %160, i32 noundef 1, i32 noundef %conv350, i32 noundef 3) #2
  %164 = load ptr, ptr %source, align 8
  %colormap = getelementptr inbounds %struct._bmp_source_struct, ptr %164, i64 0, i32 2
  store ptr %call351, ptr %colormap, align 8
  %conv352 = trunc i64 %163 to i32
  %165 = load i32, ptr %mapentrysize, align 4
  call void @read_colormap(ptr noundef %164, i32 noundef %conv352, i32 noundef %165)
  %166 = load i64, ptr %biClrUsed, align 8
  %conv353 = sext i32 %165 to i64
  %mul = mul nsw i64 %166, %conv353
  %167 = load i64, ptr %bPad, align 8
  %sub354 = sub nsw i64 %167, %mul
  store i64 %sub354, ptr %bPad, align 8
  br label %if.end355

if.end355:                                        ; preds = %if.end349, %sw.epilog332
  %168 = load i64, ptr %bPad, align 8
  %cmp356 = icmp slt i64 %168, 0
  br i1 %cmp356, label %if.then358, label %if.end363

if.then358:                                       ; preds = %if.end355
  %169 = load ptr, ptr %cinfo.addr, align 8
  %170 = load ptr, ptr %169, align 8
  %msg_code360 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %170, i64 0, i32 5
  store i32 1003, ptr %msg_code360, align 8
  %171 = load ptr, ptr %169, align 8
  %172 = load ptr, ptr %171, align 8
  call void %172(ptr noundef nonnull %169) #2
  br label %if.end363

if.end363:                                        ; preds = %if.then358, %if.end355
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end363
  %173 = load i64, ptr %bPad, align 8
  %dec = add nsw i64 %173, -1
  store i64 %dec, ptr %bPad, align 8
  %cmp364 = icmp sgt i64 %173, 0
  br i1 %cmp364, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %174 = load ptr, ptr %source, align 8
  %call366 = call i32 @read_byte(ptr noundef %174)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %175 = load ptr, ptr %source, align 8
  %bits_per_pixel367 = getelementptr inbounds %struct._bmp_source_struct, ptr %175, i64 0, i32 6
  %176 = load i32, ptr %bits_per_pixel367, align 8
  %cmp368 = icmp eq i32 %176, 24
  %177 = load i64, ptr %biWidth, align 8
  %178 = load i64, ptr %biWidth, align 8
  %mul371 = mul nsw i64 %178, 3
  %storemerge.in = select i1 %cmp368, i64 %mul371, i64 %177
  %storemerge = trunc i64 %storemerge.in to i32
  br label %while.cond376

while.cond376:                                    ; preds = %while.body379, %while.end
  %storemerge1 = phi i32 [ %storemerge, %while.end ], [ %inc, %while.body379 ]
  store i32 %storemerge1, ptr %row_width, align 4
  %and = and i32 %storemerge1, 3
  %cmp377.not = icmp eq i32 %and, 0
  br i1 %cmp377.not, label %while.end380, label %while.body379

while.body379:                                    ; preds = %while.cond376
  %179 = load i32, ptr %row_width, align 4
  %inc = add i32 %179, 1
  br label %while.cond376, !llvm.loop !8

while.end380:                                     ; preds = %while.cond376
  %180 = load i32, ptr %row_width, align 4
  %181 = load ptr, ptr %source, align 8
  %row_width381 = getelementptr inbounds %struct._bmp_source_struct, ptr %181, i64 0, i32 5
  store i32 %180, ptr %row_width381, align 4
  %182 = load ptr, ptr %cinfo.addr, align 8
  %mem382 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %182, i64 0, i32 1
  %183 = load ptr, ptr %mem382, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %183, i64 0, i32 4
  %184 = load ptr, ptr %request_virt_sarray, align 8
  %185 = load i32, ptr %row_width, align 4
  %186 = load i64, ptr %biHeight, align 8
  %conv383 = trunc i64 %186 to i32
  %call384 = call ptr %184(ptr noundef %182, i32 noundef 1, i32 noundef 0, i32 noundef %185, i32 noundef %conv383, i32 noundef 1) #2
  %187 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %187, i64 0, i32 3
  store ptr %call384, ptr %whole_image, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %187, i64 0, i32 1
  store ptr @preload_image, ptr %get_pixel_rows, align 8
  %188 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %188, i64 0, i32 2
  %189 = load ptr, ptr %progress, align 8
  %cmp386.not = icmp eq ptr %189, null
  br i1 %cmp386.not, label %if.end392, label %if.then388

if.then388:                                       ; preds = %while.end380
  %190 = load ptr, ptr %cinfo.addr, align 8
  %progress390 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %190, i64 0, i32 2
  %191 = load ptr, ptr %progress390, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %191, i64 0, i32 2
  %192 = load i32, ptr %total_extra_passes, align 4
  %inc391 = add nsw i32 %192, 1
  store i32 %inc391, ptr %total_extra_passes, align 4
  br label %if.end392

if.end392:                                        ; preds = %if.then388, %while.end380
  %193 = load ptr, ptr %cinfo.addr, align 8
  %mem393 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %193, i64 0, i32 1
  %194 = load ptr, ptr %mem393, align 8
  %alloc_sarray394 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %194, i64 0, i32 2
  %195 = load ptr, ptr %alloc_sarray394, align 8
  %196 = load i64, ptr %biWidth, align 8
  %197 = trunc i64 %196 to i32
  %conv396 = mul i32 %197, 3
  %call397 = call ptr %195(ptr noundef %193, i32 noundef 1, i32 noundef %conv396, i32 noundef 1) #2
  %198 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %198, i64 0, i32 4
  store ptr %call397, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %198, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %199 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %199, i64 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %199, i64 0, i32 8
  store i32 3, ptr %input_components, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %199, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %200 = load i64, ptr %biWidth, align 8
  %conv400 = trunc i64 %200 to i32
  %201 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %201, i64 0, i32 6
  store i32 %conv400, ptr %image_width, align 8
  %202 = load i64, ptr %biHeight, align 8
  %conv401 = trunc i64 %202 to i32
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %201, i64 0, i32 7
  store i32 %conv401, ptr %image_height, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_bmp(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @read_colormap(ptr noundef %sinfo, i32 noundef %cmaplen, i32 noundef %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %cmaplen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store i32 %cmaplen, ptr %cmaplen.addr, align 4
  switch i32 %mapentrysize, label %sw.default [
    i32 3, label %for.cond
    i32 4, label %for.cond15
  ]

for.cond:                                         ; preds = %entry, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  store i32 %storemerge1, ptr %i, align 4
  %0 = load i32, ptr %cmaplen.addr, align 4
  %cmp = icmp slt i32 %storemerge1, %0
  br i1 %cmp, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @read_byte(ptr noundef %1)
  %conv = trunc i32 %call to i8
  %colormap = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 2
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %5 = load ptr, ptr %sinfo.addr, align 8
  %call2 = call i32 @read_byte(ptr noundef %5)
  %conv3 = trunc i32 %call2 to i8
  %colormap4 = getelementptr inbounds %struct._bmp_source_struct, ptr %5, i64 0, i32 2
  %6 = load ptr, ptr %colormap4, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx5, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %idxprom6
  store i8 %conv3, ptr %arrayidx7, align 1
  %9 = load ptr, ptr %sinfo.addr, align 8
  %call8 = call i32 @read_byte(ptr noundef %9)
  %conv9 = trunc i32 %call8 to i8
  %colormap10 = getelementptr inbounds %struct._bmp_source_struct, ptr %9, i64 0, i32 2
  %10 = load ptr, ptr %colormap10, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %11, i64 %idxprom12
  store i8 %conv9, ptr %arrayidx13, align 1
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond, !llvm.loop !9

for.cond15:                                       ; preds = %entry, %for.body18
  %storemerge = phi i32 [ %inc39, %for.body18 ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %14 = load i32, ptr %cmaplen.addr, align 4
  %cmp16 = icmp slt i32 %storemerge, %14
  br i1 %cmp16, label %for.body18, label %sw.epilog

for.body18:                                       ; preds = %for.cond15
  %15 = load ptr, ptr %sinfo.addr, align 8
  %call19 = call i32 @read_byte(ptr noundef %15)
  %conv20 = trunc i32 %call19 to i8
  %colormap21 = getelementptr inbounds %struct._bmp_source_struct, ptr %15, i64 0, i32 2
  %16 = load ptr, ptr %colormap21, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx22, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %17, i64 %idxprom23
  store i8 %conv20, ptr %arrayidx24, align 1
  %19 = load ptr, ptr %sinfo.addr, align 8
  %call25 = call i32 @read_byte(ptr noundef %19)
  %conv26 = trunc i32 %call25 to i8
  %colormap27 = getelementptr inbounds %struct._bmp_source_struct, ptr %19, i64 0, i32 2
  %20 = load ptr, ptr %colormap27, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx28, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %21, i64 %idxprom29
  store i8 %conv26, ptr %arrayidx30, align 1
  %23 = load ptr, ptr %sinfo.addr, align 8
  %call31 = call i32 @read_byte(ptr noundef %23)
  %conv32 = trunc i32 %call31 to i8
  %colormap33 = getelementptr inbounds %struct._bmp_source_struct, ptr %23, i64 0, i32 2
  %24 = load ptr, ptr %colormap33, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %25, i64 %idxprom35
  store i8 %conv32, ptr %arrayidx36, align 1
  %27 = load ptr, ptr %sinfo.addr, align 8
  %call37 = call i32 @read_byte(ptr noundef %27)
  %28 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %28, 1
  br label %for.cond15, !llvm.loop !10

sw.default:                                       ; preds = %entry
  %29 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %cinfo, align 8
  %31 = load ptr, ptr %30, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 1001, ptr %msg_code, align 8
  %cinfo41 = getelementptr inbounds %struct._bmp_source_struct, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %cinfo41, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %sinfo.addr, align 8
  %cinfo43 = getelementptr inbounds %struct._bmp_source_struct, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %cinfo43, align 8
  call void %34(ptr noundef %36) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond15, %for.cond, %sw.default
  ret void
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
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %cinfo, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %cinfo1, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._bmp_source_struct, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %cinfo3, align 8
  call void %6(ptr noundef %8) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %c, align 4
  ret i32 %9
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
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %sinfo, i64 0, i32 3
  %0 = load ptr, ptr %input_file, align 8
  store ptr %0, ptr %infile, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 2
  %1 = load ptr, ptr %progress1, align 8
  store ptr %1, ptr %progress, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc19 ]
  store i32 %storemerge, ptr %row, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 7
  %3 = load i32, ptr %image_height, align 4
  %cmp = icmp ult i32 %storemerge, %3
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %progress, align 8
  %cmp2.not = icmp eq ptr %4, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %row, align 4
  %conv = zext i32 %5 to i64
  %6 = load ptr, ptr %progress, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %6, i64 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %image_height4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 7
  %8 = load i32, ptr %image_height4, align 4
  %conv5 = zext i32 %8 to i64
  %9 = load ptr, ptr %progress, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %9, i64 0, i32 2
  store i64 %conv5, ptr %pass_limit, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i64 0, i32 7
  %14 = load ptr, ptr %access_virt_sarray, align 8
  %15 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %15, i64 0, i32 3
  %16 = load ptr, ptr %whole_image, align 8
  %17 = load i32, ptr %row, align 4
  %call = call ptr %14(ptr noundef %12, ptr noundef %16, i32 noundef %17, i32 noundef 1, i32 noundef 1) #2
  %18 = load ptr, ptr %call, align 8
  store ptr %18, ptr %out_ptr, align 8
  %19 = load ptr, ptr %source, align 8
  %row_width = getelementptr inbounds %struct._bmp_source_struct, ptr %19, i64 0, i32 5
  %20 = load i32, ptr %row_width, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %if.end17, %if.end
  %storemerge1 = phi i32 [ %20, %if.end ], [ %dec, %if.end17 ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp9.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp9.not, label %for.inc19, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %21 = load ptr, ptr %infile, align 8
  %call12 = call i32 @getc(ptr noundef %21) #2
  store i32 %call12, ptr %c, align 4
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body11
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %24 = load ptr, ptr %22, align 8
  %25 = load ptr, ptr %24, align 8
  call void %25(ptr noundef nonnull %22) #2
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body11
  %26 = load i32, ptr %c, align 4
  %conv18 = trunc i32 %26 to i8
  %27 = load ptr, ptr %out_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr, ptr %out_ptr, align 8
  store i8 %conv18, ptr %27, align 1
  %28 = load i32, ptr %col, align 4
  %dec = add i32 %28, -1
  br label %for.cond8, !llvm.loop !11

for.inc19:                                        ; preds = %for.cond8
  %29 = load i32, ptr %row, align 4
  %inc = add i32 %29, 1
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  %30 = load ptr, ptr %progress, align 8
  %cmp21.not = icmp eq ptr %30, null
  br i1 %cmp21.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %for.end20
  %31 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %31, i64 0, i32 1
  %32 = load i32, ptr %completed_extra_passes, align 8
  %inc24 = add nsw i32 %32, 1
  store i32 %inc24, ptr %completed_extra_passes, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end20
  %33 = load ptr, ptr %source, align 8
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, ptr %33, i64 0, i32 6
  %34 = load i32, ptr %bits_per_pixel, align 8
  switch i32 %34, label %sw.default [
    i32 8, label %sw.bb
    i32 24, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end25
  %35 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %35, i64 0, i32 1
  store ptr @get_8bit_row, ptr %get_pixel_rows, align 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end25
  %36 = load ptr, ptr %source, align 8
  %get_pixel_rows29 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %36, i64 0, i32 1
  store ptr @get_24bit_row, ptr %get_pixel_rows29, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 1002, ptr %msg_code31, align 8
  %39 = load ptr, ptr %37, align 8
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull %37) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb
  %41 = load ptr, ptr %cinfo.addr, align 8
  %image_height34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i64 0, i32 7
  %42 = load i32, ptr %image_height34, align 4
  %43 = load ptr, ptr %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %43, i64 0, i32 4
  store i32 %42, ptr %source_row, align 8
  %get_pixel_rows36 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %43, i64 0, i32 1
  %44 = load ptr, ptr %get_pixel_rows36, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %sinfo.addr, align 8
  %call37 = call i32 %44(ptr noundef %45, ptr noundef %46) #2
  ret i32 %call37
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_8bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %colormap = alloca ptr, align 8
  %t = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 2
  %0 = load ptr, ptr %colormap1, align 8
  store ptr %0, ptr %colormap, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 4
  %1 = load i32, ptr %source_row, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %source_row, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %access_virt_sarray, align 8
  %5 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %whole_image, align 8
  %source_row2 = getelementptr inbounds %struct._bmp_source_struct, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %source_row2, align 8
  %call = call ptr %4(ptr noundef %2, ptr noundef %6, i32 noundef %7, i32 noundef 1, i32 noundef 0) #2
  %8 = load ptr, ptr %call, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %buffer, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %outptr, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 6
  %13 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %13, %entry ], [ %dec15, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %15 = load i8, ptr %14, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %t, align 4
  %16 = load ptr, ptr %colormap, align 8
  %17 = load ptr, ptr %16, align 8
  %idxprom = zext i8 %15 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %17, i64 %idxprom
  %18 = load i8, ptr %arrayidx5, align 1
  %19 = load ptr, ptr %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr6, ptr %outptr, align 8
  store i8 %18, ptr %19, align 1
  %20 = load ptr, ptr %colormap, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx7, align 8
  %22 = load i32, ptr %t, align 4
  %idxprom8 = sext i32 %22 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %21, i64 %idxprom8
  %23 = load i8, ptr %arrayidx9, align 1
  %24 = load ptr, ptr %outptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr10, ptr %outptr, align 8
  store i8 %23, ptr %24, align 1
  %25 = load ptr, ptr %colormap, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %25, i64 2
  %26 = load ptr, ptr %arrayidx11, align 8
  %27 = load i32, ptr %t, align 4
  %idxprom12 = sext i32 %27 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %26, i64 %idxprom12
  %28 = load i8, ptr %arrayidx13, align 1
  %29 = load ptr, ptr %outptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr14, ptr %outptr, align 8
  store i8 %28, ptr %29, align 1
  %30 = load i32, ptr %col, align 4
  %dec15 = add i32 %30, -1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_24bit_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, ptr %sinfo, i64 0, i32 4
  %0 = load i32, ptr %source_row, align 8
  %dec = add i32 %0, -1
  store i32 %dec, ptr %source_row, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %access_virt_sarray, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %whole_image, align 8
  %source_row1 = getelementptr inbounds %struct._bmp_source_struct, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %source_row1, align 8
  %call = call ptr %2(ptr noundef %3, ptr noundef %5, i32 noundef %6, i32 noundef 1, i32 noundef 0) #2
  %7 = load ptr, ptr %call, align 8
  store ptr %7, ptr %inptr, align 8
  %8 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %buffer, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %12, %entry ], [ %dec8, %for.body ]
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
  %dec8 = add i32 %19, -1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
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
