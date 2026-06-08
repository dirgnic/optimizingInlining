; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_rdgif.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdgif.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_gif(ptr noundef %cinfo) #0 {
entry:
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 440) #2
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %call, i64 0, i32 1
  store ptr %cinfo, ptr %cinfo1, align 8
  store ptr @start_input_gif, ptr %call, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call, i64 0, i32 2
  store ptr @finish_input_gif, ptr %finish_input, align 8
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_gif(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %hdrbuf = alloca [10 x i8], align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %colormaplen = alloca i32, align 4
  %aspectRatio = alloca i32, align 4
  %c = alloca i32, align 4
  %_mp = alloca ptr, align 8
  %_mp226 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %alloc_sarray, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i32 noundef 256, i32 noundef 3) #2
  %colormap = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 2
  store ptr %call, ptr %colormap, align 8
  %2 = load ptr, ptr %source, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %input_file, align 8
  %call1 = call i64 @fread(ptr noundef nonnull %hdrbuf, i64 noundef 1, i64 noundef 6, ptr noundef %3) #2
  %cmp = icmp eq i64 %call1, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 1016, ptr %msg_code, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %4) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, ptr %hdrbuf, align 1
  %cmp3.not = icmp eq i8 %8, 71
  %arrayidx5 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 1
  %9 = load i8, ptr %arrayidx5, align 1
  %cmp7.not = icmp eq i8 %9, 73
  %or.cond = select i1 %cmp3.not, i1 %cmp7.not, i1 false
  %arrayidx10 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 2
  %10 = load i8, ptr %arrayidx10, align 1
  %cmp12.not = icmp eq i8 %10, 70
  %or.cond15 = select i1 %or.cond, i1 %cmp12.not, i1 false
  br i1 %or.cond15, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 1016, ptr %msg_code16, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull %11) #2
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then14
  %arrayidx20 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %15 = load i8, ptr %arrayidx20, align 1
  %cmp22.not = icmp eq i8 %15, 56
  %arrayidx25 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %16 = load i8, ptr %arrayidx25, align 1
  %cmp27.not = icmp eq i8 %16, 55
  %or.cond16 = select i1 %cmp22.not, i1 %cmp27.not, i1 false
  %arrayidx30 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %17 = load i8, ptr %arrayidx30, align 1
  %cmp32.not = icmp eq i8 %17, 97
  %or.cond17 = select i1 %or.cond16, i1 %cmp32.not, i1 false
  br i1 %or.cond17, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19
  %arrayidx34 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %18 = load i8, ptr %arrayidx34, align 1
  %cmp36.not = icmp eq i8 %18, 56
  %arrayidx39 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %19 = load i8, ptr %arrayidx39, align 1
  %cmp41.not = icmp eq i8 %19, 57
  %or.cond18 = select i1 %cmp36.not, i1 %cmp41.not, i1 false
  %arrayidx44 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %20 = load i8, ptr %arrayidx44, align 1
  %cmp46.not = icmp eq i8 %20, 97
  %or.cond19 = select i1 %or.cond18, i1 %cmp46.not, i1 false
  br i1 %or.cond19, label %if.end63, label %do.body

do.body:                                          ; preds = %land.lhs.true
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 6
  store ptr %msg_parm, ptr %_mp, align 8
  %arrayidx51 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %23 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %23 to i32
  store i32 %conv52, ptr %msg_parm, align 4
  %arrayidx54 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %24 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %24 to i32
  %25 = load ptr, ptr %_mp, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %conv55, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %26 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %26 to i32
  %arrayidx59 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %conv58, ptr %arrayidx59, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %msg_code61 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 1018, ptr %msg_code61, align 8
  %29 = load ptr, ptr %27, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %emit_message, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31, i32 noundef 1) #2
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true, %if.end19, %do.body
  %32 = load ptr, ptr %source, align 8
  %input_file66 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %32, i64 0, i32 3
  %33 = load ptr, ptr %input_file66, align 8
  %call67 = call i64 @fread(ptr noundef nonnull %hdrbuf, i64 noundef 1, i64 noundef 7, ptr noundef %33) #2
  %cmp68 = icmp eq i64 %call67, 7
  br i1 %cmp68, label %if.end75, label %if.then70

if.then70:                                        ; preds = %if.end63
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %34, align 8
  %msg_code72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 42, ptr %msg_code72, align 8
  %36 = load ptr, ptr %34, align 8
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef nonnull %34) #2
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end63
  %arrayidx76 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 1
  %38 = load i8, ptr %arrayidx76, align 1
  %conv771 = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv771, 8
  %39 = load i8, ptr %hdrbuf, align 1
  %conv792 = zext i8 %39 to i32
  %or = or i32 %shl, %conv792
  store i32 %or, ptr %width, align 4
  %arrayidx81 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %40 = load i8, ptr %arrayidx81, align 1
  %conv823 = zext i8 %40 to i32
  %shl84 = shl nuw nsw i32 %conv823, 8
  %arrayidx85 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 2
  %41 = load i8, ptr %arrayidx85, align 1
  %conv864 = zext i8 %41 to i32
  %or88 = or i32 %shl84, %conv864
  store i32 %or88, ptr %height, align 4
  %arrayidx89 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %42 = load i8, ptr %arrayidx89, align 1
  %43 = and i8 %42, 7
  %and91 = zext i8 %43 to i32
  %shl92 = shl i32 2, %and91
  store i32 %shl92, ptr %colormaplen, align 4
  %arrayidx93 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 6
  %44 = load i8, ptr %arrayidx93, align 1
  %conv946 = zext i8 %44 to i32
  store i32 %conv946, ptr %aspectRatio, align 4
  %cmp96.not = icmp eq i8 %44, 0
  %45 = load i32, ptr %aspectRatio, align 4
  %cmp99.not = icmp eq i32 %45, 49
  %or.cond20 = select i1 %cmp96.not, i1 true, i1 %cmp99.not
  br i1 %or.cond20, label %if.end106, label %if.then101

if.then101:                                       ; preds = %if.end75
  %46 = load ptr, ptr %cinfo.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %msg_code103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 5
  store i32 1020, ptr %msg_code103, align 8
  %48 = load ptr, ptr %46, align 8
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 1
  %49 = load ptr, ptr %emit_message105, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  call void %49(ptr noundef %50, i32 noundef 1) #2
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.end75
  %arrayidx107 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %51 = load i8, ptr %arrayidx107, align 1
  %tobool.not = icmp sgt i8 %51, -1
  br i1 %tobool.not, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.end106
  %52 = load ptr, ptr %source, align 8
  %53 = load i32, ptr %colormaplen, align 4
  %colormap111 = getelementptr inbounds %struct.gif_source_struct, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %colormap111, align 8
  call void @ReadColorMap(ptr noundef %52, i32 noundef %53, ptr noundef %54)
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end106
  br label %for.cond

for.cond:                                         ; preds = %if.then128, %if.then124, %if.end112
  %55 = load ptr, ptr %source, align 8
  %call113 = call i32 @ReadByte(ptr noundef %55)
  store i32 %call113, ptr %c, align 4
  %cmp114 = icmp eq i32 %call113, 59
  br i1 %cmp114, label %if.then116, label %if.end121

if.then116:                                       ; preds = %for.cond
  %56 = load ptr, ptr %cinfo.addr, align 8
  %57 = load ptr, ptr %56, align 8
  %msg_code118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 1015, ptr %msg_code118, align 8
  %58 = load ptr, ptr %56, align 8
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull %56) #2
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %for.cond
  %60 = load i32, ptr %c, align 4
  %cmp122 = icmp eq i32 %60, 33
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end121
  %61 = load ptr, ptr %source, align 8
  call void @DoExtension(ptr noundef %61)
  br label %for.cond

if.end125:                                        ; preds = %if.end121
  %62 = load i32, ptr %c, align 4
  %cmp126.not = icmp eq i32 %62, 44
  br i1 %cmp126.not, label %if.end136, label %if.then128

if.then128:                                       ; preds = %if.end125
  %63 = load ptr, ptr %cinfo.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 5
  store i32 1022, ptr %msg_code130, align 8
  %65 = load i32, ptr %c, align 4
  %66 = load ptr, ptr %63, align 8
  %msg_parm132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 6
  store i32 %65, ptr %msg_parm132, align 4
  %67 = load ptr, ptr %cinfo.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %emit_message135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 1
  %69 = load ptr, ptr %emit_message135, align 8
  call void %69(ptr noundef nonnull %67, i32 noundef -1) #2
  br label %for.cond

if.end136:                                        ; preds = %if.end125
  %70 = load ptr, ptr %source, align 8
  %input_file139 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %70, i64 0, i32 3
  %71 = load ptr, ptr %input_file139, align 8
  %call140 = call i64 @fread(ptr noundef nonnull %hdrbuf, i64 noundef 1, i64 noundef 9, ptr noundef %71) #2
  %cmp141 = icmp eq i64 %call140, 9
  br i1 %cmp141, label %if.end148, label %if.then143

if.then143:                                       ; preds = %if.end136
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_code145 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 42, ptr %msg_code145, align 8
  %74 = load ptr, ptr %72, align 8
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull %72) #2
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end136
  %arrayidx149 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %76 = load i8, ptr %arrayidx149, align 1
  %conv1508 = zext i8 %76 to i32
  %shl152 = shl nuw nsw i32 %conv1508, 8
  %arrayidx153 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %77 = load i8, ptr %arrayidx153, align 1
  %conv1549 = zext i8 %77 to i32
  %or156 = or i32 %shl152, %conv1549
  store i32 %or156, ptr %width, align 4
  %arrayidx157 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 7
  %78 = load i8, ptr %arrayidx157, align 1
  %conv15810 = zext i8 %78 to i32
  %shl160 = shl nuw nsw i32 %conv15810, 8
  %arrayidx161 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 6
  %79 = load i8, ptr %arrayidx161, align 1
  %conv16211 = zext i8 %79 to i32
  %or164 = or i32 %shl160, %conv16211
  store i32 %or164, ptr %height, align 4
  %arrayidx165 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 8
  %80 = load i8, ptr %arrayidx165, align 1
  %81 = and i8 %80, 64
  %and167 = zext i8 %81 to i32
  %82 = load ptr, ptr %source, align 8
  %is_interlaced = getelementptr inbounds %struct.gif_source_struct, ptr %82, i64 0, i32 21
  store i32 %and167, ptr %is_interlaced, align 8
  %arrayidx168 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 8
  %83 = load i8, ptr %arrayidx168, align 1
  %tobool171.not = icmp sgt i8 %83, -1
  br i1 %tobool171.not, label %if.end178, label %if.then172

if.then172:                                       ; preds = %if.end148
  %arrayidx173 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 8
  %84 = load i8, ptr %arrayidx173, align 1
  %85 = and i8 %84, 7
  %and175 = zext i8 %85 to i32
  %shl176 = shl i32 2, %and175
  store i32 %shl176, ptr %colormaplen, align 4
  %86 = load ptr, ptr %source, align 8
  %colormap177 = getelementptr inbounds %struct.gif_source_struct, ptr %86, i64 0, i32 2
  %87 = load ptr, ptr %colormap177, align 8
  call void @ReadColorMap(ptr noundef %86, i32 noundef %shl176, ptr noundef %87)
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %if.end148
  %88 = load ptr, ptr %source, align 8
  %call179 = call i32 @ReadByte(ptr noundef %88)
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %88, i64 0, i32 8
  store i32 %call179, ptr %input_code_size, align 4
  %cmp181 = icmp slt i32 %call179, 2
  br i1 %cmp181, label %if.then187, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %if.end178
  %89 = load ptr, ptr %source, align 8
  %input_code_size184 = getelementptr inbounds %struct.gif_source_struct, ptr %89, i64 0, i32 8
  %90 = load i32, ptr %input_code_size184, align 4
  %cmp185 = icmp sgt i32 %90, 11
  br i1 %cmp185, label %if.then187, label %for.end

if.then187:                                       ; preds = %lor.lhs.false183, %if.end178
  %91 = load ptr, ptr %cinfo.addr, align 8
  %92 = load ptr, ptr %91, align 8
  %msg_code189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 1013, ptr %msg_code189, align 8
  %93 = load ptr, ptr %source, align 8
  %input_code_size190 = getelementptr inbounds %struct.gif_source_struct, ptr %93, i64 0, i32 8
  %94 = load i32, ptr %input_code_size190, align 4
  %95 = load ptr, ptr %cinfo.addr, align 8
  %96 = load ptr, ptr %95, align 8
  %msg_parm192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 6
  store i32 %94, ptr %msg_parm192, align 4
  %97 = load ptr, ptr %95, align 8
  %98 = load ptr, ptr %97, align 8
  call void %98(ptr noundef nonnull %95) #2
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false183, %if.then187
  %99 = load ptr, ptr %cinfo.addr, align 8
  %mem197 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %99, i64 0, i32 1
  %100 = load ptr, ptr %mem197, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %100, i64 0, i32 1
  %101 = load ptr, ptr %alloc_large, align 8
  %call198 = call ptr %101(ptr noundef %99, i32 noundef 1, i64 noundef 8192) #2
  %102 = load ptr, ptr %source, align 8
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, ptr %102, i64 0, i32 17
  store ptr %call198, ptr %symbol_head, align 8
  %103 = load ptr, ptr %cinfo.addr, align 8
  %mem199 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %103, i64 0, i32 1
  %104 = load ptr, ptr %mem199, align 8
  %alloc_large200 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %104, i64 0, i32 1
  %105 = load ptr, ptr %alloc_large200, align 8
  %call201 = call ptr %105(ptr noundef %103, i32 noundef 1, i64 noundef 4096) #2
  %106 = load ptr, ptr %source, align 8
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, ptr %106, i64 0, i32 18
  store ptr %call201, ptr %symbol_tail, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %mem202 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %107, i64 0, i32 1
  %108 = load ptr, ptr %mem202, align 8
  %alloc_large203 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %108, i64 0, i32 1
  %109 = load ptr, ptr %alloc_large203, align 8
  %call204 = call ptr %109(ptr noundef %107, i32 noundef 1, i64 noundef 4096) #2
  %110 = load ptr, ptr %source, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %110, i64 0, i32 19
  store ptr %call204, ptr %symbol_stack, align 8
  call void @InitLZWCode(ptr noundef %110)
  %is_interlaced205 = getelementptr inbounds %struct.gif_source_struct, ptr %110, i64 0, i32 21
  %111 = load i32, ptr %is_interlaced205, align 8
  %tobool206.not = icmp eq i32 %111, 0
  br i1 %tobool206.not, label %if.else, label %if.then207

if.then207:                                       ; preds = %for.end
  %112 = load ptr, ptr %cinfo.addr, align 8
  %mem208 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %112, i64 0, i32 1
  %113 = load ptr, ptr %mem208, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %113, i64 0, i32 4
  %114 = load ptr, ptr %request_virt_sarray, align 8
  %115 = load i32, ptr %width, align 4
  %116 = load i32, ptr %height, align 4
  %call209 = call ptr %114(ptr noundef %112, i32 noundef 1, i32 noundef 0, i32 noundef %115, i32 noundef %116, i32 noundef 1) #2
  %117 = load ptr, ptr %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, ptr %117, i64 0, i32 22
  store ptr %call209, ptr %interlaced_image, align 8
  %118 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i64 0, i32 2
  %119 = load ptr, ptr %progress, align 8
  %cmp210.not = icmp eq ptr %119, null
  br i1 %cmp210.not, label %if.end215, label %if.then212

if.then212:                                       ; preds = %if.then207
  %120 = load ptr, ptr %cinfo.addr, align 8
  %progress214 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %120, i64 0, i32 2
  %121 = load ptr, ptr %progress214, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %121, i64 0, i32 2
  %122 = load i32, ptr %total_extra_passes, align 4
  %inc = add nsw i32 %122, 1
  store i32 %inc, ptr %total_extra_passes, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then212, %if.then207
  %123 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %123, i64 0, i32 1
  store ptr @load_interlaced_image, ptr %get_pixel_rows, align 8
  br label %if.end219

if.else:                                          ; preds = %for.end
  %124 = load ptr, ptr %source, align 8
  %get_pixel_rows218 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %124, i64 0, i32 1
  store ptr @get_pixel_rows, ptr %get_pixel_rows218, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.else, %if.end215
  %125 = load ptr, ptr %cinfo.addr, align 8
  %mem220 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %125, i64 0, i32 1
  %126 = load ptr, ptr %mem220, align 8
  %alloc_sarray221 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %126, i64 0, i32 2
  %127 = load ptr, ptr %alloc_sarray221, align 8
  %128 = load i32, ptr %width, align 4
  %mul = mul i32 %128, 3
  %call222 = call ptr %127(ptr noundef %125, i32 noundef 1, i32 noundef %mul, i32 noundef 1) #2
  %129 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %129, i64 0, i32 4
  store ptr %call222, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %129, i64 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %130 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %130, i64 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %130, i64 0, i32 8
  store i32 3, ptr %input_components, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %130, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %131 = load i32, ptr %width, align 4
  %132 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %132, i64 0, i32 6
  store i32 %131, ptr %image_width, align 8
  %133 = load i32, ptr %height, align 4
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %132, i64 0, i32 7
  store i32 %133, ptr %image_height, align 4
  %134 = load ptr, ptr %cinfo.addr, align 8
  %135 = load ptr, ptr %134, align 8
  %msg_parm228 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 6
  store ptr %msg_parm228, ptr %_mp226, align 8
  %136 = load i32, ptr %width, align 4
  store i32 %136, ptr %msg_parm228, align 4
  %137 = load i32, ptr %height, align 4
  %arrayidx231 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 6, i32 0, i64 1
  store i32 %137, ptr %arrayidx231, align 4
  %138 = load i32, ptr %colormaplen, align 4
  %139 = load ptr, ptr %_mp226, align 8
  %arrayidx232 = getelementptr inbounds i32, ptr %139, i64 2
  store i32 %138, ptr %arrayidx232, align 4
  %140 = load ptr, ptr %cinfo.addr, align 8
  %141 = load ptr, ptr %140, align 8
  %msg_code234 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %141, i64 0, i32 5
  store i32 1017, ptr %msg_code234, align 8
  %142 = load ptr, ptr %140, align 8
  %emit_message236 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %142, i64 0, i32 1
  %143 = load ptr, ptr %emit_message236, align 8
  %144 = load ptr, ptr %cinfo.addr, align 8
  call void %143(ptr noundef %144, i32 noundef 1) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_gif(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @ReadColorMap(ptr noundef %sinfo, i32 noundef %cmaplen, ptr noundef %cmap) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %cmaplen.addr = alloca i32, align 4
  %cmap.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store i32 %cmaplen, ptr %cmaplen.addr, align 4
  store ptr %cmap, ptr %cmap.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %cmaplen.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @ReadByte(ptr noundef %1)
  %conv = trunc i32 %call to i8
  %2 = load ptr, ptr %cmap.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %5 = load ptr, ptr %sinfo.addr, align 8
  %call2 = call i32 @ReadByte(ptr noundef %5)
  %conv3 = trunc i32 %call2 to i8
  %6 = load ptr, ptr %cmap.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx4, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  store i8 %conv3, ptr %arrayidx6, align 1
  %9 = load ptr, ptr %sinfo.addr, align 8
  %call7 = call i32 @ReadByte(ptr noundef %9)
  %conv8 = trunc i32 %call7 to i8
  %10 = load ptr, ptr %cmap.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx9, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom10
  store i8 %conv8, ptr %arrayidx11, align 1
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ReadByte(ptr noundef %sinfo) #0 {
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
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %cinfo, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %cinfo1, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %cinfo3, align 8
  call void %6(ptr noundef %8) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %c, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define internal void @DoExtension(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %call = call i32 @ReadByte(ptr noundef %sinfo)
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 1
  %0 = load ptr, ptr %cinfo, align 8
  %1 = load ptr, ptr %0, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 1019, ptr %msg_code, align 8
  %2 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %cinfo1, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %call, ptr %msg_parm, align 4
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %cinfo3, align 8
  %6 = load ptr, ptr %5, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %emit_message, align 8
  %8 = load ptr, ptr %sinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.gif_source_struct, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %cinfo5, align 8
  call void %7(ptr noundef %9, i32 noundef 1) #2
  call void @SkipDataBlocks(ptr noundef %8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @InitLZWCode(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %last_byte = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 4
  store i32 2, ptr %last_byte, align 4
  %last_bit = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 5
  store i32 0, ptr %last_bit, align 8
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 6
  store i32 0, ptr %cur_bit, align 4
  %0 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  store i32 0, ptr %out_of_blocks, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 8
  %1 = load i32, ptr %input_code_size, align 4
  %shl = shl i32 1, %1
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  store i32 %shl, ptr %clear_code, align 8
  %2 = load ptr, ptr %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 9
  %3 = load i32, ptr %clear_code1, align 8
  %add = add nsw i32 %3, 1
  %end_code = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 10
  store i32 %add, ptr %end_code, align 4
  %first_time = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 14
  store i32 1, ptr %first_time, align 4
  %4 = load ptr, ptr %sinfo.addr, align 8
  call void @ReInitLZW(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @load_interlaced_image(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %sptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %progress = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 2
  %0 = load ptr, ptr %progress1, align 8
  store ptr %0, ptr %progress, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc13 ]
  store i32 %storemerge, ptr %row, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %image_height, align 4
  %cmp = icmp ult i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end14

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
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, ptr %14, i64 0, i32 22
  %15 = load ptr, ptr %interlaced_image, align 8
  %16 = load i32, ptr %row, align 4
  %call = call ptr %13(ptr noundef %11, ptr noundef %15, i32 noundef %16, i32 noundef 1, i32 noundef 1) #2
  %17 = load ptr, ptr %call, align 8
  store ptr %17, ptr %sptr, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 6
  %19 = load i32, ptr %image_width, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.body10, %if.end
  %storemerge4 = phi i32 [ %19, %if.end ], [ %dec, %for.body10 ]
  store i32 %storemerge4, ptr %col, align 4
  %cmp8.not = icmp eq i32 %storemerge4, 0
  br i1 %cmp8.not, label %for.inc13, label %for.body10

for.body10:                                       ; preds = %for.cond7
  %20 = load ptr, ptr %source, align 8
  %call11 = call i32 @LZWReadByte(ptr noundef %20)
  %conv12 = trunc i32 %call11 to i8
  %21 = load ptr, ptr %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr, ptr %sptr, align 8
  store i8 %conv12, ptr %21, align 1
  %22 = load i32, ptr %col, align 4
  %dec = add i32 %22, -1
  br label %for.cond7, !llvm.loop !8

for.inc13:                                        ; preds = %for.cond7
  %23 = load i32, ptr %row, align 4
  %inc = add i32 %23, 1
  br label %for.cond, !llvm.loop !9

for.end14:                                        ; preds = %for.cond
  %24 = load ptr, ptr %progress, align 8
  %cmp15.not = icmp eq ptr %24, null
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %for.end14
  %25 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %25, i64 0, i32 1
  %26 = load i32, ptr %completed_extra_passes, align 8
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, ptr %completed_extra_passes, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end14
  %27 = load ptr, ptr %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %27, i64 0, i32 1
  store ptr @get_interlaced_row, ptr %get_pixel_rows, align 8
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, ptr %27, i64 0, i32 23
  store i32 0, ptr %cur_row_number, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %image_height21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i64 0, i32 7
  %29 = load i32, ptr %image_height21, align 4
  %add = add i32 %29, 7
  %div1 = lshr i32 %add, 3
  %30 = load ptr, ptr %source, align 8
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, ptr %30, i64 0, i32 24
  store i32 %div1, ptr %pass2_offset, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %image_height23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 7
  %32 = load i32, ptr %image_height23, align 4
  %add24 = add i32 %32, 3
  %div252 = lshr i32 %add24, 3
  %add26 = add nuw nsw i32 %div1, %div252
  %33 = load ptr, ptr %source, align 8
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, ptr %33, i64 0, i32 25
  store i32 %add26, ptr %pass3_offset, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %image_height28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i64 0, i32 7
  %35 = load i32, ptr %image_height28, align 4
  %add29 = add i32 %35, 1
  %div303 = lshr i32 %add29, 2
  %add31 = add nuw nsw i32 %add26, %div303
  %36 = load ptr, ptr %source, align 8
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, ptr %36, i64 0, i32 26
  store i32 %add31, ptr %pass4_offset, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load ptr, ptr %sinfo.addr, align 8
  %call32 = call i32 @get_interlaced_row(ptr noundef %37, ptr noundef %38)
  ret i32 %call32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_pixel_rows(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %c = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %colormap = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 2
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
  %call = call i32 @LZWReadByte(ptr noundef %5)
  store i32 %call, ptr %c, align 4
  %6 = load ptr, ptr %colormap, align 8
  %7 = load ptr, ptr %6, align 8
  %idxprom = sext i32 %call to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %8 = load i8, ptr %arrayidx3, align 1
  %9 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %8, ptr %9, align 1
  %10 = load ptr, ptr %colormap, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx4, align 8
  %12 = load i32, ptr %c, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 %idxprom5
  %13 = load i8, ptr %arrayidx6, align 1
  %14 = load ptr, ptr %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr7, ptr %ptr, align 8
  store i8 %13, ptr %14, align 1
  %15 = load ptr, ptr %colormap, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %15, i64 2
  %16 = load ptr, ptr %arrayidx8, align 8
  %17 = load i32, ptr %c, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %16, i64 %idxprom9
  %18 = load i8, ptr %arrayidx10, align 1
  %19 = load ptr, ptr %ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr11, ptr %ptr, align 8
  store i8 %18, ptr %19, align 1
  %20 = load i32, ptr %col, align 4
  %dec = add i32 %20, -1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 1
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @SkipDataBlocks(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %buf = alloca [256 x i8], align 1
  store ptr %sinfo, ptr %sinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @GetDataBlock(ptr noundef %0, ptr noundef nonnull %buf)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.cond, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @GetDataBlock(ptr noundef %sinfo, ptr noundef %buf) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %call = call i32 @ReadByte(ptr noundef %sinfo)
  store i32 %call, ptr %count, align 4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load i32, ptr %count, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %sinfo.addr, align 8
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %input_file, align 8
  %call1 = call i64 @fread(ptr noundef %0, i64 noundef 1, i64 noundef %conv, ptr noundef %3) #2
  %conv2 = sext i32 %1 to i64
  %cmp3 = icmp eq i64 %call1, %conv2
  br i1 %cmp3, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.then
  %4 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %cinfo, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %cinfo6 = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %cinfo6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %sinfo.addr, align 8
  %cinfo8 = getelementptr inbounds %struct.gif_source_struct, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %cinfo8, align 8
  call void %9(ptr noundef %11) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then5, %entry
  %12 = load i32, ptr %count, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal void @ReInitLZW(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 8
  %0 = load i32, ptr %input_code_size, align 4
  %add = add nsw i32 %0, 1
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 11
  store i32 %add, ptr %code_size, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 9
  %1 = load i32, ptr %clear_code, align 8
  %shl = shl i32 %1, 1
  %2 = load ptr, ptr %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 12
  store i32 %shl, ptr %limit_code, align 4
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 9
  %3 = load i32, ptr %clear_code1, align 8
  %add2 = add nsw i32 %3, 2
  %max_code = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 13
  store i32 %add2, ptr %max_code, align 8
  %4 = load ptr, ptr %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 19
  %5 = load ptr, ptr %symbol_stack, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 20
  store ptr %5, ptr %sp, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @LZWReadByte(ptr noundef %sinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %sinfo.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  %incode = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %first_time = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 14
  %0 = load i32, ptr %first_time, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sinfo.addr, align 8
  %first_time1 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 14
  store i32 0, ptr %first_time1, align 4
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 9
  %2 = load i32, ptr %clear_code, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, ptr %3, i64 0, i32 20
  %4 = load ptr, ptr %sp, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %symbol_stack, align 8
  %cmp = icmp ugt ptr %4, %5
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %6 = load ptr, ptr %sinfo.addr, align 8
  %sp3 = getelementptr inbounds %struct.gif_source_struct, ptr %6, i64 0, i32 20
  %7 = load ptr, ptr %sp3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 -1
  store ptr %incdec.ptr, ptr %sp3, align 8
  %8 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %9 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @GetCode(ptr noundef %9)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %call, %if.end ], [ %2, %if.then ]
  store i32 %storemerge, ptr %code, align 4
  %10 = load ptr, ptr %sinfo.addr, align 8
  %clear_code5 = getelementptr inbounds %struct.gif_source_struct, ptr %10, i64 0, i32 9
  %11 = load i32, ptr %clear_code5, align 8
  %cmp6 = icmp eq i32 %storemerge, %11
  br i1 %cmp6, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end4
  %12 = load ptr, ptr %sinfo.addr, align 8
  call void @ReInitLZW(ptr noundef %12)
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then8
  %13 = load ptr, ptr %sinfo.addr, align 8
  %call9 = call i32 @GetCode(ptr noundef %13)
  store i32 %call9, ptr %code, align 4
  %14 = load i32, ptr %code, align 4
  %15 = load ptr, ptr %sinfo.addr, align 8
  %clear_code10 = getelementptr inbounds %struct.gif_source_struct, ptr %15, i64 0, i32 9
  %16 = load i32, ptr %clear_code10, align 8
  %cmp11 = icmp eq i32 %14, %16
  br i1 %cmp11, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.body
  %17 = load i32, ptr %code, align 4
  %18 = load ptr, ptr %sinfo.addr, align 8
  %clear_code13 = getelementptr inbounds %struct.gif_source_struct, ptr %18, i64 0, i32 9
  %19 = load i32, ptr %clear_code13, align 8
  %cmp14 = icmp sgt i32 %17, %19
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %do.end
  %20 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %20, i64 0, i32 1
  %21 = load ptr, ptr %cinfo, align 8
  %22 = load ptr, ptr %21, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 1021, ptr %msg_code, align 8
  %cinfo17 = getelementptr inbounds %struct.gif_source_struct, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %cinfo17, align 8
  %24 = load ptr, ptr %23, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %emit_message, align 8
  %26 = load ptr, ptr %sinfo.addr, align 8
  %cinfo19 = getelementptr inbounds %struct.gif_source_struct, ptr %26, i64 0, i32 1
  %27 = load ptr, ptr %cinfo19, align 8
  call void %25(ptr noundef %27, i32 noundef -1) #2
  store i32 0, ptr %code, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.end
  %28 = load i32, ptr %code, align 4
  %29 = load ptr, ptr %sinfo.addr, align 8
  %oldcode = getelementptr inbounds %struct.gif_source_struct, ptr %29, i64 0, i32 15
  store i32 %28, ptr %oldcode, align 8
  %firstcode = getelementptr inbounds %struct.gif_source_struct, ptr %29, i64 0, i32 16
  store i32 %28, ptr %firstcode, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end4
  %30 = load i32, ptr %code, align 4
  %31 = load ptr, ptr %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, ptr %31, i64 0, i32 10
  %32 = load i32, ptr %end_code, align 4
  %cmp22 = icmp eq i32 %30, %32
  br i1 %cmp22, label %if.then24, label %if.end36

if.then24:                                        ; preds = %if.end21
  %33 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, ptr %33, i64 0, i32 7
  %34 = load i32, ptr %out_of_blocks, align 8
  %tobool25.not = icmp eq i32 %34, 0
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then24
  %35 = load ptr, ptr %sinfo.addr, align 8
  call void @SkipDataBlocks(ptr noundef %35)
  %out_of_blocks27 = getelementptr inbounds %struct.gif_source_struct, ptr %35, i64 0, i32 7
  store i32 1, ptr %out_of_blocks27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then24
  %36 = load ptr, ptr %sinfo.addr, align 8
  %cinfo29 = getelementptr inbounds %struct.gif_source_struct, ptr %36, i64 0, i32 1
  %37 = load ptr, ptr %cinfo29, align 8
  %38 = load ptr, ptr %37, align 8
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 1023, ptr %msg_code31, align 8
  %cinfo32 = getelementptr inbounds %struct.gif_source_struct, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %cinfo32, align 8
  %40 = load ptr, ptr %39, align 8
  %emit_message34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 1
  %41 = load ptr, ptr %emit_message34, align 8
  %42 = load ptr, ptr %sinfo.addr, align 8
  %cinfo35 = getelementptr inbounds %struct.gif_source_struct, ptr %42, i64 0, i32 1
  %43 = load ptr, ptr %cinfo35, align 8
  call void %41(ptr noundef %43, i32 noundef -1) #2
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end21
  %44 = load i32, ptr %code, align 4
  store i32 %44, ptr %incode, align 4
  %45 = load ptr, ptr %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, ptr %45, i64 0, i32 13
  %46 = load i32, ptr %max_code, align 8
  %cmp37.not = icmp slt i32 %44, %46
  br i1 %cmp37.not, label %if.end57, label %if.then39

if.then39:                                        ; preds = %if.end36
  %47 = load i32, ptr %code, align 4
  %48 = load ptr, ptr %sinfo.addr, align 8
  %max_code40 = getelementptr inbounds %struct.gif_source_struct, ptr %48, i64 0, i32 13
  %49 = load i32, ptr %max_code40, align 8
  %cmp41 = icmp sgt i32 %47, %49
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %if.then39
  %50 = load ptr, ptr %sinfo.addr, align 8
  %cinfo44 = getelementptr inbounds %struct.gif_source_struct, ptr %50, i64 0, i32 1
  %51 = load ptr, ptr %cinfo44, align 8
  %52 = load ptr, ptr %51, align 8
  %msg_code46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 1021, ptr %msg_code46, align 8
  %cinfo47 = getelementptr inbounds %struct.gif_source_struct, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %cinfo47, align 8
  %54 = load ptr, ptr %53, align 8
  %emit_message49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %emit_message49, align 8
  %56 = load ptr, ptr %sinfo.addr, align 8
  %cinfo50 = getelementptr inbounds %struct.gif_source_struct, ptr %56, i64 0, i32 1
  %57 = load ptr, ptr %cinfo50, align 8
  call void %55(ptr noundef %57, i32 noundef -1) #2
  store i32 0, ptr %incode, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then39
  %58 = load ptr, ptr %sinfo.addr, align 8
  %firstcode52 = getelementptr inbounds %struct.gif_source_struct, ptr %58, i64 0, i32 16
  %59 = load i32, ptr %firstcode52, align 4
  %conv53 = trunc i32 %59 to i8
  %sp54 = getelementptr inbounds %struct.gif_source_struct, ptr %58, i64 0, i32 20
  %60 = load ptr, ptr %sp54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr55, ptr %sp54, align 8
  store i8 %conv53, ptr %60, align 1
  %61 = load ptr, ptr %sinfo.addr, align 8
  %oldcode56 = getelementptr inbounds %struct.gif_source_struct, ptr %61, i64 0, i32 15
  %62 = load i32, ptr %oldcode56, align 8
  store i32 %62, ptr %code, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end51, %if.end36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end57
  %63 = load i32, ptr %code, align 4
  %64 = load ptr, ptr %sinfo.addr, align 8
  %clear_code58 = getelementptr inbounds %struct.gif_source_struct, ptr %64, i64 0, i32 9
  %65 = load i32, ptr %clear_code58, align 8
  %cmp59.not = icmp slt i32 %63, %65
  br i1 %cmp59.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %66 = load ptr, ptr %sinfo.addr, align 8
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, ptr %66, i64 0, i32 18
  %67 = load ptr, ptr %symbol_tail, align 8
  %68 = load i32, ptr %code, align 4
  %idxprom = sext i32 %68 to i64
  %arrayidx = getelementptr inbounds i8, ptr %67, i64 %idxprom
  %69 = load i8, ptr %arrayidx, align 1
  %70 = load ptr, ptr %sinfo.addr, align 8
  %sp61 = getelementptr inbounds %struct.gif_source_struct, ptr %70, i64 0, i32 20
  %71 = load ptr, ptr %sp61, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr62, ptr %sp61, align 8
  store i8 %69, ptr %71, align 1
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %symbol_head, align 8
  %73 = load i32, ptr %code, align 4
  %idxprom63 = sext i32 %73 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %72, i64 %idxprom63
  %74 = load i16, ptr %arrayidx64, align 2
  %conv65 = zext i16 %74 to i32
  store i32 %conv65, ptr %code, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %75 = load i32, ptr %code, align 4
  %76 = load ptr, ptr %sinfo.addr, align 8
  %firstcode66 = getelementptr inbounds %struct.gif_source_struct, ptr %76, i64 0, i32 16
  store i32 %75, ptr %firstcode66, align 4
  %max_code67 = getelementptr inbounds %struct.gif_source_struct, ptr %76, i64 0, i32 13
  %77 = load i32, ptr %max_code67, align 8
  store i32 %77, ptr %code, align 4
  %cmp68 = icmp slt i32 %77, 4096
  br i1 %cmp68, label %if.then70, label %if.end92

if.then70:                                        ; preds = %while.end
  %78 = load ptr, ptr %sinfo.addr, align 8
  %oldcode71 = getelementptr inbounds %struct.gif_source_struct, ptr %78, i64 0, i32 15
  %79 = load i32, ptr %oldcode71, align 8
  %conv72 = trunc i32 %79 to i16
  %symbol_head73 = getelementptr inbounds %struct.gif_source_struct, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %symbol_head73, align 8
  %81 = load i32, ptr %code, align 4
  %idxprom74 = sext i32 %81 to i64
  %arrayidx75 = getelementptr inbounds i16, ptr %80, i64 %idxprom74
  store i16 %conv72, ptr %arrayidx75, align 2
  %82 = load ptr, ptr %sinfo.addr, align 8
  %firstcode76 = getelementptr inbounds %struct.gif_source_struct, ptr %82, i64 0, i32 16
  %83 = load i32, ptr %firstcode76, align 4
  %conv77 = trunc i32 %83 to i8
  %symbol_tail78 = getelementptr inbounds %struct.gif_source_struct, ptr %82, i64 0, i32 18
  %84 = load ptr, ptr %symbol_tail78, align 8
  %85 = load i32, ptr %code, align 4
  %idxprom79 = sext i32 %85 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %84, i64 %idxprom79
  store i8 %conv77, ptr %arrayidx80, align 1
  %86 = load ptr, ptr %sinfo.addr, align 8
  %max_code81 = getelementptr inbounds %struct.gif_source_struct, ptr %86, i64 0, i32 13
  %87 = load i32, ptr %max_code81, align 8
  %inc = add nsw i32 %87, 1
  store i32 %inc, ptr %max_code81, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, ptr %86, i64 0, i32 12
  %88 = load i32, ptr %limit_code, align 4
  %cmp83.not = icmp slt i32 %inc, %88
  br i1 %cmp83.not, label %if.end92, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then70
  %89 = load ptr, ptr %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %89, i64 0, i32 11
  %90 = load i32, ptr %code_size, align 8
  %cmp85 = icmp slt i32 %90, 12
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %land.lhs.true
  %91 = load ptr, ptr %sinfo.addr, align 8
  %code_size88 = getelementptr inbounds %struct.gif_source_struct, ptr %91, i64 0, i32 11
  %92 = load i32, ptr %code_size88, align 8
  %inc89 = add nsw i32 %92, 1
  store i32 %inc89, ptr %code_size88, align 8
  %limit_code90 = getelementptr inbounds %struct.gif_source_struct, ptr %91, i64 0, i32 12
  %93 = load i32, ptr %limit_code90, align 4
  %shl = shl i32 %93, 1
  store i32 %shl, ptr %limit_code90, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then70, %land.lhs.true, %if.then87, %while.end
  %94 = load i32, ptr %incode, align 4
  %95 = load ptr, ptr %sinfo.addr, align 8
  %oldcode93 = getelementptr inbounds %struct.gif_source_struct, ptr %95, i64 0, i32 15
  store i32 %94, ptr %oldcode93, align 8
  %firstcode94 = getelementptr inbounds %struct.gif_source_struct, ptr %95, i64 0, i32 16
  %96 = load i32, ptr %firstcode94, align 4
  store i32 %96, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end92, %if.end28, %if.end20, %if.then2
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_interlaced_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %c = alloca i32, align 4
  %sptr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %colormap = alloca ptr, align 8
  %irow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 2
  %0 = load ptr, ptr %colormap1, align 8
  store ptr %0, ptr %colormap, align 8
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, ptr %sinfo, i64 0, i32 23
  %1 = load i32, ptr %cur_row_number, align 8
  %and = and i32 %1, 7
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb3
    i32 2, label %sw.bb6
    i32 6, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %source, align 8
  %cur_row_number2 = getelementptr inbounds %struct.gif_source_struct, ptr %2, i64 0, i32 23
  %3 = load i32, ptr %cur_row_number2, align 8
  %shr = lshr i32 %3, 3
  store i32 %shr, ptr %irow, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %source, align 8
  %cur_row_number4 = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 23
  %5 = load i32, ptr %cur_row_number4, align 8
  %shr5 = lshr i32 %5, 3
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 24
  %6 = load i32, ptr %pass2_offset, align 4
  %add = add i32 %shr5, %6
  store i32 %add, ptr %irow, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry
  %7 = load ptr, ptr %source, align 8
  %cur_row_number7 = getelementptr inbounds %struct.gif_source_struct, ptr %7, i64 0, i32 23
  %8 = load i32, ptr %cur_row_number7, align 8
  %shr8 = lshr i32 %8, 2
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, ptr %7, i64 0, i32 25
  %9 = load i32, ptr %pass3_offset, align 8
  %add9 = add i32 %shr8, %9
  store i32 %add9, ptr %irow, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load ptr, ptr %source, align 8
  %cur_row_number10 = getelementptr inbounds %struct.gif_source_struct, ptr %10, i64 0, i32 23
  %11 = load i32, ptr %cur_row_number10, align 8
  %shr11 = lshr i32 %11, 1
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, ptr %10, i64 0, i32 26
  %12 = load i32, ptr %pass4_offset, align 4
  %add12 = add i32 %shr11, %12
  store i32 %add12, ptr %irow, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb3, %sw.bb
  %13 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %14, i64 0, i32 7
  %15 = load ptr, ptr %access_virt_sarray, align 8
  %16 = load ptr, ptr %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, ptr %16, i64 0, i32 22
  %17 = load ptr, ptr %interlaced_image, align 8
  %18 = load i32, ptr %irow, align 4
  %call = call ptr %15(ptr noundef %13, ptr noundef %17, i32 noundef %18, i32 noundef 1, i32 noundef 0) #2
  %19 = load ptr, ptr %call, align 8
  store ptr %19, ptr %sptr, align 8
  %20 = load ptr, ptr %source, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %20, i64 0, i32 4
  %21 = load ptr, ptr %buffer, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %ptr, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 6
  %24 = load i32, ptr %image_width, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.epilog
  %storemerge = phi i32 [ %24, %sw.epilog ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr, ptr %sptr, align 8
  %26 = load i8, ptr %25, align 1
  %conv = zext i8 %26 to i32
  store i32 %conv, ptr %c, align 4
  %27 = load ptr, ptr %colormap, align 8
  %28 = load ptr, ptr %27, align 8
  %idxprom = zext i8 %26 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %28, i64 %idxprom
  %29 = load i8, ptr %arrayidx15, align 1
  %30 = load ptr, ptr %ptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr16, ptr %ptr, align 8
  store i8 %29, ptr %30, align 1
  %31 = load ptr, ptr %colormap, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %31, i64 1
  %32 = load ptr, ptr %arrayidx17, align 8
  %33 = load i32, ptr %c, align 4
  %idxprom18 = sext i32 %33 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %32, i64 %idxprom18
  %34 = load i8, ptr %arrayidx19, align 1
  %35 = load ptr, ptr %ptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr20, ptr %ptr, align 8
  store i8 %34, ptr %35, align 1
  %36 = load ptr, ptr %colormap, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %36, i64 2
  %37 = load ptr, ptr %arrayidx21, align 8
  %38 = load i32, ptr %c, align 4
  %idxprom22 = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %37, i64 %idxprom22
  %39 = load i8, ptr %arrayidx23, align 1
  %40 = load ptr, ptr %ptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr24, ptr %ptr, align 8
  store i8 %39, ptr %40, align 1
  %41 = load i32, ptr %col, align 4
  %dec = add i32 %41, -1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %source, align 8
  %cur_row_number25 = getelementptr inbounds %struct.gif_source_struct, ptr %42, i64 0, i32 23
  %43 = load i32, ptr %cur_row_number25, align 8
  %inc = add i32 %43, 1
  store i32 %inc, ptr %cur_row_number25, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @GetCode(ptr noundef %sinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %sinfo.addr = alloca ptr, align 8
  %accum = alloca i64, align 8
  %offs = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %entry
  %0 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 6
  %1 = load i32, ptr %cur_bit, align 4
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %2 = load i32, ptr %code_size, align 8
  %add = add nsw i32 %1, %2
  %last_bit = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %last_bit, align 8
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, ptr %4, i64 0, i32 7
  %5 = load i32, ptr %out_of_blocks, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %cinfo, align 8
  %8 = load ptr, ptr %7, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 1024, ptr %msg_code, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %cinfo1, align 8
  %10 = load ptr, ptr %9, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %emit_message, align 8
  %12 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %cinfo3, align 8
  call void %11(ptr noundef %13, i32 noundef -1) #2
  %end_code = getelementptr inbounds %struct.gif_source_struct, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %end_code, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %15 = load ptr, ptr %sinfo.addr, align 8
  %last_byte = getelementptr inbounds %struct.gif_source_struct, ptr %15, i64 0, i32 4
  %16 = load i32, ptr %last_byte, align 4
  %sub = add nsw i32 %16, -2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.gif_source_struct, ptr %15, i64 0, i32 3, i64 %idxprom
  %17 = load i8, ptr %arrayidx, align 1
  %18 = load ptr, ptr %sinfo.addr, align 8
  %code_buf4 = getelementptr inbounds %struct.gif_source_struct, ptr %18, i64 0, i32 3
  store i8 %17, ptr %code_buf4, align 8
  %last_byte7 = getelementptr inbounds %struct.gif_source_struct, ptr %18, i64 0, i32 4
  %19 = load i32, ptr %last_byte7, align 4
  %sub8 = add nsw i32 %19, -1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds %struct.gif_source_struct, ptr %18, i64 0, i32 3, i64 %idxprom9
  %20 = load i8, ptr %arrayidx10, align 1
  %21 = load ptr, ptr %sinfo.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.gif_source_struct, ptr %21, i64 0, i32 3, i64 1
  store i8 %20, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr inbounds %struct.gif_source_struct, ptr %21, i64 0, i32 3, i64 2
  %call = call i32 @GetDataBlock(ptr noundef %21, ptr noundef nonnull %arrayidx14)
  store i32 %call, ptr %count, align 4
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end
  %22 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks17 = getelementptr inbounds %struct.gif_source_struct, ptr %22, i64 0, i32 7
  store i32 1, ptr %out_of_blocks17, align 8
  %cinfo18 = getelementptr inbounds %struct.gif_source_struct, ptr %22, i64 0, i32 1
  %23 = load ptr, ptr %cinfo18, align 8
  %24 = load ptr, ptr %23, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 1024, ptr %msg_code20, align 8
  %25 = load ptr, ptr %sinfo.addr, align 8
  %cinfo21 = getelementptr inbounds %struct.gif_source_struct, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %cinfo21, align 8
  %27 = load ptr, ptr %26, align 8
  %emit_message23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %emit_message23, align 8
  call void %28(ptr noundef nonnull %26, i32 noundef -1) #2
  %29 = load ptr, ptr %sinfo.addr, align 8
  %end_code25 = getelementptr inbounds %struct.gif_source_struct, ptr %29, i64 0, i32 10
  %30 = load i32, ptr %end_code25, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end
  %31 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit27 = getelementptr inbounds %struct.gif_source_struct, ptr %31, i64 0, i32 6
  %32 = load i32, ptr %cur_bit27, align 4
  %last_bit28 = getelementptr inbounds %struct.gif_source_struct, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %last_bit28, align 8
  %sub29 = sub nsw i32 %32, %33
  %add30 = add nsw i32 %sub29, 16
  %34 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit31 = getelementptr inbounds %struct.gif_source_struct, ptr %34, i64 0, i32 6
  store i32 %add30, ptr %cur_bit31, align 4
  %35 = load i32, ptr %count, align 4
  %add32 = add nsw i32 %35, 2
  %last_byte33 = getelementptr inbounds %struct.gif_source_struct, ptr %34, i64 0, i32 4
  store i32 %add32, ptr %last_byte33, align 4
  %36 = load ptr, ptr %sinfo.addr, align 8
  %last_byte34 = getelementptr inbounds %struct.gif_source_struct, ptr %36, i64 0, i32 4
  %37 = load i32, ptr %last_byte34, align 4
  %mul = shl nsw i32 %37, 3
  %last_bit35 = getelementptr inbounds %struct.gif_source_struct, ptr %36, i64 0, i32 5
  store i32 %mul, ptr %last_bit35, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %38 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit36 = getelementptr inbounds %struct.gif_source_struct, ptr %38, i64 0, i32 6
  %39 = load i32, ptr %cur_bit36, align 4
  %shr = ashr i32 %39, 3
  store i32 %shr, ptr %offs, align 4
  %add38 = add nsw i32 %shr, 2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds %struct.gif_source_struct, ptr %38, i64 0, i32 3, i64 %idxprom39
  %40 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %40 to i64
  %shl = shl nuw nsw i64 %conv41, 8
  store i64 %shl, ptr %accum, align 8
  %41 = load ptr, ptr %sinfo.addr, align 8
  %42 = load i32, ptr %offs, align 4
  %add43 = add nsw i32 %42, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds %struct.gif_source_struct, ptr %41, i64 0, i32 3, i64 %idxprom44
  %43 = load i8, ptr %arrayidx45, align 1
  %conv48 = zext i8 %43 to i64
  %44 = load i64, ptr %accum, align 8
  %or = or i64 %44, %conv48
  %shl49 = shl i64 %or, 8
  store i64 %shl49, ptr %accum, align 8
  %45 = load ptr, ptr %sinfo.addr, align 8
  %46 = load i32, ptr %offs, align 4
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds %struct.gif_source_struct, ptr %45, i64 0, i32 3, i64 %idxprom51
  %47 = load i8, ptr %arrayidx52, align 1
  %conv55 = zext i8 %47 to i64
  %48 = load i64, ptr %accum, align 8
  %or56 = or i64 %48, %conv55
  store i64 %or56, ptr %accum, align 8
  %49 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit57 = getelementptr inbounds %struct.gif_source_struct, ptr %49, i64 0, i32 6
  %50 = load i32, ptr %cur_bit57, align 4
  %and58 = and i32 %50, 7
  %sh_prom = zext i32 %and58 to i64
  %shr59 = ashr i64 %or56, %sh_prom
  store i64 %shr59, ptr %accum, align 8
  %conv60 = trunc i64 %shr59 to i32
  %51 = load ptr, ptr %sinfo.addr, align 8
  %code_size61 = getelementptr inbounds %struct.gif_source_struct, ptr %51, i64 0, i32 11
  %52 = load i32, ptr %code_size61, align 8
  %notmask = shl nsw i32 -1, %52
  %sub63 = xor i32 %notmask, -1
  %and64 = and i32 %conv60, %sub63
  store i32 %and64, ptr %ret, align 4
  %53 = load ptr, ptr %sinfo.addr, align 8
  %code_size65 = getelementptr inbounds %struct.gif_source_struct, ptr %53, i64 0, i32 11
  %54 = load i32, ptr %code_size65, align 8
  %cur_bit66 = getelementptr inbounds %struct.gif_source_struct, ptr %53, i64 0, i32 6
  %55 = load i32, ptr %cur_bit66, align 4
  %add67 = add nsw i32 %55, %54
  store i32 %add67, ptr %cur_bit66, align 4
  %56 = load i32, ptr %ret, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
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
