; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdgif.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdgif.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define ptr @jinit_read_gif(ptr noundef %cinfo) #0 {
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
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 440)
  store ptr %call, ptr %source, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %source, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 1
  store ptr %4, ptr %cinfo1, align 8
  %6 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 0
  store ptr @start_input_gif, ptr %start_input, align 8
  %7 = load ptr, ptr %source, align 8
  %pub2 = getelementptr inbounds %struct.gif_source_struct, ptr %7, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub2, i32 0, i32 2
  store ptr @finish_input_gif, ptr %finish_input, align 8
  %8 = load ptr, ptr %source, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_input_gif(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %hdrbuf = alloca [10 x i8], align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %colormaplen = alloca i32, align 4
  %aspectRatio = alloca i32, align 4
  %c = alloca i32, align 4
  %_mp = alloca ptr, align 8
  %progress213 = alloca ptr, align 8
  %_mp226 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %alloc_sarray, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %3(ptr noundef %4, i32 noundef 1, i32 noundef 256, i32 noundef 3)
  %5 = load ptr, ptr %source, align 8
  %colormap = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 2
  store ptr %call, ptr %colormap, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 0
  %6 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %7 = load ptr, ptr %input_file, align 8
  %call1 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 6, ptr noundef %7)
  %cmp = icmp eq i64 %call1, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 1016, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 0
  %14 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp3 = icmp ne i32 %conv, 71
  br i1 %cmp3, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 1
  %15 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp ne i32 %conv6, 73
  br i1 %cmp7, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 2
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %16 to i32
  %cmp12 = icmp ne i32 %conv11, 70
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5
  store i32 1016, ptr %msg_code16, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err17, align 8
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %error_exit18, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %lor.lhs.false9
  %arrayidx20 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %23 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp ne i32 %conv21, 56
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end19
  %arrayidx25 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %24 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp ne i32 %conv26, 55
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %arrayidx30 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %25 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %25 to i32
  %cmp32 = icmp ne i32 %conv31, 97
  br i1 %cmp32, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %lor.lhs.false29, %lor.lhs.false24, %if.end19
  %arrayidx34 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %26 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %26 to i32
  %cmp36 = icmp ne i32 %conv35, 56
  br i1 %cmp36, label %if.then48, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %27 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %27 to i32
  %cmp41 = icmp ne i32 %conv40, 57
  br i1 %cmp41, label %if.then48, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %arrayidx44 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %28 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %28 to i32
  %cmp46 = icmp ne i32 %conv45, 97
  br i1 %cmp46, label %if.then48, label %if.end63

if.then48:                                        ; preds = %lor.lhs.false43, %lor.lhs.false38, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then48
  %29 = load ptr, ptr %cinfo.addr, align 8
  %err49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %err49, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i32 0, i32 6
  %arraydecay50 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay50, ptr %_mp, align 8
  %arrayidx51 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %31 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %31 to i32
  %32 = load ptr, ptr %_mp, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %32, i64 0
  store i32 %conv52, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %33 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %33 to i32
  %34 = load ptr, ptr %_mp, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %conv55, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %35 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %35 to i32
  %36 = load ptr, ptr %_mp, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %36, i64 2
  store i32 %conv58, ptr %arrayidx59, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err60, align 8
  %msg_code61 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i32 0, i32 5
  store i32 1018, ptr %msg_code61, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %err62, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %emit_message, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  call void %41(ptr noundef %42, i32 noundef 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end63

if.end63:                                         ; preds = %do.end, %lor.lhs.false43, %lor.lhs.false29
  %arraydecay64 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 0
  %43 = load ptr, ptr %source, align 8
  %pub65 = getelementptr inbounds %struct.gif_source_struct, ptr %43, i32 0, i32 0
  %input_file66 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub65, i32 0, i32 3
  %44 = load ptr, ptr %input_file66, align 8
  %call67 = call i64 @fread(ptr noundef %arraydecay64, i64 noundef 1, i64 noundef 7, ptr noundef %44)
  %cmp68 = icmp eq i64 %call67, 7
  br i1 %cmp68, label %if.end75, label %if.then70

if.then70:                                        ; preds = %if.end63
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err71, align 8
  %msg_code72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5
  store i32 42, ptr %msg_code72, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err73 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err73, align 8
  %error_exit74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %error_exit74, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  call void %49(ptr noundef %50)
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.end63
  %arrayidx76 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 1
  %51 = load i8, ptr %arrayidx76, align 1
  %conv77 = sext i8 %51 to i32
  %and = and i32 %conv77, 255
  %shl = shl i32 %and, 8
  %arrayidx78 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 0
  %52 = load i8, ptr %arrayidx78, align 1
  %conv79 = sext i8 %52 to i32
  %and80 = and i32 %conv79, 255
  %or = or i32 %shl, %and80
  store i32 %or, ptr %width, align 4
  %arrayidx81 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 3
  %53 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %53 to i32
  %and83 = and i32 %conv82, 255
  %shl84 = shl i32 %and83, 8
  %arrayidx85 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 2
  %54 = load i8, ptr %arrayidx85, align 1
  %conv86 = sext i8 %54 to i32
  %and87 = and i32 %conv86, 255
  %or88 = or i32 %shl84, %and87
  store i32 %or88, ptr %height, align 4
  %arrayidx89 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %55 = load i8, ptr %arrayidx89, align 1
  %conv90 = sext i8 %55 to i32
  %and91 = and i32 %conv90, 7
  %shl92 = shl i32 2, %and91
  store i32 %shl92, ptr %colormaplen, align 4
  %arrayidx93 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 6
  %56 = load i8, ptr %arrayidx93, align 1
  %conv94 = sext i8 %56 to i32
  %and95 = and i32 %conv94, 255
  store i32 %and95, ptr %aspectRatio, align 4
  %57 = load i32, ptr %aspectRatio, align 4
  %cmp96 = icmp ne i32 %57, 0
  br i1 %cmp96, label %land.lhs.true98, label %if.end106

land.lhs.true98:                                  ; preds = %if.end75
  %58 = load i32, ptr %aspectRatio, align 4
  %cmp99 = icmp ne i32 %58, 49
  br i1 %cmp99, label %if.then101, label %if.end106

if.then101:                                       ; preds = %land.lhs.true98
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err102, align 8
  %msg_code103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 5
  store i32 1020, ptr %msg_code103, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %err104, align 8
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %emit_message105, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  call void %63(ptr noundef %64, i32 noundef 1)
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %land.lhs.true98, %if.end75
  %arrayidx107 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %65 = load i8, ptr %arrayidx107, align 1
  %conv108 = sext i8 %65 to i32
  %and109 = and i32 %conv108, 128
  %tobool = icmp ne i32 %and109, 0
  br i1 %tobool, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end106
  %66 = load ptr, ptr %source, align 8
  %67 = load i32, ptr %colormaplen, align 4
  %68 = load ptr, ptr %source, align 8
  %colormap111 = getelementptr inbounds %struct.gif_source_struct, ptr %68, i32 0, i32 2
  %69 = load ptr, ptr %colormap111, align 8
  call void @ReadColorMap(ptr noundef %66, i32 noundef %67, ptr noundef %69)
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end106
  br label %for.cond

for.cond:                                         ; preds = %if.then128, %if.then124, %if.end112
  %70 = load ptr, ptr %source, align 8
  %call113 = call i32 @ReadByte(ptr noundef %70)
  store i32 %call113, ptr %c, align 4
  %71 = load i32, ptr %c, align 4
  %cmp114 = icmp eq i32 %71, 59
  br i1 %cmp114, label %if.then116, label %if.end121

if.then116:                                       ; preds = %for.cond
  %72 = load ptr, ptr %cinfo.addr, align 8
  %err117 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %err117, align 8
  %msg_code118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i32 0, i32 5
  store i32 1015, ptr %msg_code118, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %err119 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %err119, align 8
  %error_exit120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %error_exit120, align 8
  %77 = load ptr, ptr %cinfo.addr, align 8
  call void %76(ptr noundef %77)
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %for.cond
  %78 = load i32, ptr %c, align 4
  %cmp122 = icmp eq i32 %78, 33
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end121
  %79 = load ptr, ptr %source, align 8
  call void @DoExtension(ptr noundef %79)
  br label %for.cond

if.end125:                                        ; preds = %if.end121
  %80 = load i32, ptr %c, align 4
  %cmp126 = icmp ne i32 %80, 44
  br i1 %cmp126, label %if.then128, label %if.end136

if.then128:                                       ; preds = %if.end125
  %81 = load ptr, ptr %cinfo.addr, align 8
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %err129, align 8
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i32 0, i32 5
  store i32 1022, ptr %msg_code130, align 8
  %83 = load i32, ptr %c, align 4
  %84 = load ptr, ptr %cinfo.addr, align 8
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %err131, align 8
  %msg_parm132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i32 0, i32 6
  %arrayidx133 = getelementptr inbounds [8 x i32], ptr %msg_parm132, i64 0, i64 0
  store i32 %83, ptr %arrayidx133, align 4
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err134 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err134, align 8
  %emit_message135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %emit_message135, align 8
  %89 = load ptr, ptr %cinfo.addr, align 8
  call void %88(ptr noundef %89, i32 noundef -1)
  br label %for.cond

if.end136:                                        ; preds = %if.end125
  %arraydecay137 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 0
  %90 = load ptr, ptr %source, align 8
  %pub138 = getelementptr inbounds %struct.gif_source_struct, ptr %90, i32 0, i32 0
  %input_file139 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub138, i32 0, i32 3
  %91 = load ptr, ptr %input_file139, align 8
  %call140 = call i64 @fread(ptr noundef %arraydecay137, i64 noundef 1, i64 noundef 9, ptr noundef %91)
  %cmp141 = icmp eq i64 %call140, 9
  br i1 %cmp141, label %if.end148, label %if.then143

if.then143:                                       ; preds = %if.end136
  %92 = load ptr, ptr %cinfo.addr, align 8
  %err144 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %err144, align 8
  %msg_code145 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i32 0, i32 5
  store i32 42, ptr %msg_code145, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  %err146 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %err146, align 8
  %error_exit147 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %error_exit147, align 8
  %97 = load ptr, ptr %cinfo.addr, align 8
  call void %96(ptr noundef %97)
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end136
  %arrayidx149 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 5
  %98 = load i8, ptr %arrayidx149, align 1
  %conv150 = sext i8 %98 to i32
  %and151 = and i32 %conv150, 255
  %shl152 = shl i32 %and151, 8
  %arrayidx153 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 4
  %99 = load i8, ptr %arrayidx153, align 1
  %conv154 = sext i8 %99 to i32
  %and155 = and i32 %conv154, 255
  %or156 = or i32 %shl152, %and155
  store i32 %or156, ptr %width, align 4
  %arrayidx157 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 7
  %100 = load i8, ptr %arrayidx157, align 1
  %conv158 = sext i8 %100 to i32
  %and159 = and i32 %conv158, 255
  %shl160 = shl i32 %and159, 8
  %arrayidx161 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 6
  %101 = load i8, ptr %arrayidx161, align 1
  %conv162 = sext i8 %101 to i32
  %and163 = and i32 %conv162, 255
  %or164 = or i32 %shl160, %and163
  store i32 %or164, ptr %height, align 4
  %arrayidx165 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 8
  %102 = load i8, ptr %arrayidx165, align 1
  %conv166 = sext i8 %102 to i32
  %and167 = and i32 %conv166, 64
  %103 = load ptr, ptr %source, align 8
  %is_interlaced = getelementptr inbounds %struct.gif_source_struct, ptr %103, i32 0, i32 21
  store i32 %and167, ptr %is_interlaced, align 8
  %arrayidx168 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 8
  %104 = load i8, ptr %arrayidx168, align 1
  %conv169 = sext i8 %104 to i32
  %and170 = and i32 %conv169, 128
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %if.then172, label %if.end178

if.then172:                                       ; preds = %if.end148
  %arrayidx173 = getelementptr inbounds [10 x i8], ptr %hdrbuf, i64 0, i64 8
  %105 = load i8, ptr %arrayidx173, align 1
  %conv174 = sext i8 %105 to i32
  %and175 = and i32 %conv174, 7
  %shl176 = shl i32 2, %and175
  store i32 %shl176, ptr %colormaplen, align 4
  %106 = load ptr, ptr %source, align 8
  %107 = load i32, ptr %colormaplen, align 4
  %108 = load ptr, ptr %source, align 8
  %colormap177 = getelementptr inbounds %struct.gif_source_struct, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %colormap177, align 8
  call void @ReadColorMap(ptr noundef %106, i32 noundef %107, ptr noundef %109)
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %if.end148
  %110 = load ptr, ptr %source, align 8
  %call179 = call i32 @ReadByte(ptr noundef %110)
  %111 = load ptr, ptr %source, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %111, i32 0, i32 8
  store i32 %call179, ptr %input_code_size, align 4
  %112 = load ptr, ptr %source, align 8
  %input_code_size180 = getelementptr inbounds %struct.gif_source_struct, ptr %112, i32 0, i32 8
  %113 = load i32, ptr %input_code_size180, align 4
  %cmp181 = icmp slt i32 %113, 2
  br i1 %cmp181, label %if.then187, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %if.end178
  %114 = load ptr, ptr %source, align 8
  %input_code_size184 = getelementptr inbounds %struct.gif_source_struct, ptr %114, i32 0, i32 8
  %115 = load i32, ptr %input_code_size184, align 4
  %cmp185 = icmp sge i32 %115, 12
  br i1 %cmp185, label %if.then187, label %if.end196

if.then187:                                       ; preds = %lor.lhs.false183, %if.end178
  %116 = load ptr, ptr %cinfo.addr, align 8
  %err188 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %err188, align 8
  %msg_code189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i32 0, i32 5
  store i32 1013, ptr %msg_code189, align 8
  %118 = load ptr, ptr %source, align 8
  %input_code_size190 = getelementptr inbounds %struct.gif_source_struct, ptr %118, i32 0, i32 8
  %119 = load i32, ptr %input_code_size190, align 4
  %120 = load ptr, ptr %cinfo.addr, align 8
  %err191 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err191, align 8
  %msg_parm192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i32 0, i32 6
  %arrayidx193 = getelementptr inbounds [8 x i32], ptr %msg_parm192, i64 0, i64 0
  store i32 %119, ptr %arrayidx193, align 4
  %122 = load ptr, ptr %cinfo.addr, align 8
  %err194 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %err194, align 8
  %error_exit195 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %error_exit195, align 8
  %125 = load ptr, ptr %cinfo.addr, align 8
  call void %124(ptr noundef %125)
  br label %if.end196

if.end196:                                        ; preds = %if.then187, %lor.lhs.false183
  br label %for.end

for.end:                                          ; preds = %if.end196
  %126 = load ptr, ptr %cinfo.addr, align 8
  %mem197 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %126, i32 0, i32 1
  %127 = load ptr, ptr %mem197, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %alloc_large, align 8
  %129 = load ptr, ptr %cinfo.addr, align 8
  %call198 = call ptr %128(ptr noundef %129, i32 noundef 1, i64 noundef 8192)
  %130 = load ptr, ptr %source, align 8
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, ptr %130, i32 0, i32 17
  store ptr %call198, ptr %symbol_head, align 8
  %131 = load ptr, ptr %cinfo.addr, align 8
  %mem199 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %mem199, align 8
  %alloc_large200 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %132, i32 0, i32 1
  %133 = load ptr, ptr %alloc_large200, align 8
  %134 = load ptr, ptr %cinfo.addr, align 8
  %call201 = call ptr %133(ptr noundef %134, i32 noundef 1, i64 noundef 4096)
  %135 = load ptr, ptr %source, align 8
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, ptr %135, i32 0, i32 18
  store ptr %call201, ptr %symbol_tail, align 8
  %136 = load ptr, ptr %cinfo.addr, align 8
  %mem202 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %136, i32 0, i32 1
  %137 = load ptr, ptr %mem202, align 8
  %alloc_large203 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %137, i32 0, i32 1
  %138 = load ptr, ptr %alloc_large203, align 8
  %139 = load ptr, ptr %cinfo.addr, align 8
  %call204 = call ptr %138(ptr noundef %139, i32 noundef 1, i64 noundef 4096)
  %140 = load ptr, ptr %source, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %140, i32 0, i32 19
  store ptr %call204, ptr %symbol_stack, align 8
  %141 = load ptr, ptr %source, align 8
  call void @InitLZWCode(ptr noundef %141)
  %142 = load ptr, ptr %source, align 8
  %is_interlaced205 = getelementptr inbounds %struct.gif_source_struct, ptr %142, i32 0, i32 21
  %143 = load i32, ptr %is_interlaced205, align 8
  %tobool206 = icmp ne i32 %143, 0
  br i1 %tobool206, label %if.then207, label %if.else

if.then207:                                       ; preds = %for.end
  %144 = load ptr, ptr %cinfo.addr, align 8
  %mem208 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %144, i32 0, i32 1
  %145 = load ptr, ptr %mem208, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %145, i32 0, i32 4
  %146 = load ptr, ptr %request_virt_sarray, align 8
  %147 = load ptr, ptr %cinfo.addr, align 8
  %148 = load i32, ptr %width, align 4
  %149 = load i32, ptr %height, align 4
  %call209 = call ptr %146(ptr noundef %147, i32 noundef 1, i32 noundef 0, i32 noundef %148, i32 noundef %149, i32 noundef 1)
  %150 = load ptr, ptr %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, ptr %150, i32 0, i32 22
  store ptr %call209, ptr %interlaced_image, align 8
  %151 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %151, i32 0, i32 2
  %152 = load ptr, ptr %progress, align 8
  %cmp210 = icmp ne ptr %152, null
  br i1 %cmp210, label %if.then212, label %if.end215

if.then212:                                       ; preds = %if.then207
  %153 = load ptr, ptr %cinfo.addr, align 8
  %progress214 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %153, i32 0, i32 2
  %154 = load ptr, ptr %progress214, align 8
  store ptr %154, ptr %progress213, align 8
  %155 = load ptr, ptr %progress213, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %155, i32 0, i32 2
  %156 = load i32, ptr %total_extra_passes, align 4
  %inc = add nsw i32 %156, 1
  store i32 %inc, ptr %total_extra_passes, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then212, %if.then207
  %157 = load ptr, ptr %source, align 8
  %pub216 = getelementptr inbounds %struct.gif_source_struct, ptr %157, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub216, i32 0, i32 1
  store ptr @load_interlaced_image, ptr %get_pixel_rows, align 8
  br label %if.end219

if.else:                                          ; preds = %for.end
  %158 = load ptr, ptr %source, align 8
  %pub217 = getelementptr inbounds %struct.gif_source_struct, ptr %158, i32 0, i32 0
  %get_pixel_rows218 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub217, i32 0, i32 1
  store ptr @get_pixel_rows, ptr %get_pixel_rows218, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.else, %if.end215
  %159 = load ptr, ptr %cinfo.addr, align 8
  %mem220 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %159, i32 0, i32 1
  %160 = load ptr, ptr %mem220, align 8
  %alloc_sarray221 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %160, i32 0, i32 2
  %161 = load ptr, ptr %alloc_sarray221, align 8
  %162 = load ptr, ptr %cinfo.addr, align 8
  %163 = load i32, ptr %width, align 4
  %mul = mul i32 %163, 3
  %call222 = call ptr %161(ptr noundef %162, i32 noundef 1, i32 noundef %mul, i32 noundef 1)
  %164 = load ptr, ptr %source, align 8
  %pub223 = getelementptr inbounds %struct.gif_source_struct, ptr %164, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub223, i32 0, i32 4
  store ptr %call222, ptr %buffer, align 8
  %165 = load ptr, ptr %source, align 8
  %pub224 = getelementptr inbounds %struct.gif_source_struct, ptr %165, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub224, i32 0, i32 5
  store i32 1, ptr %buffer_height, align 8
  %166 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %166, i32 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  %167 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %167, i32 0, i32 8
  store i32 3, ptr %input_components, align 8
  %168 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %168, i32 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %169 = load i32, ptr %width, align 4
  %170 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %170, i32 0, i32 6
  store i32 %169, ptr %image_width, align 8
  %171 = load i32, ptr %height, align 4
  %172 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %172, i32 0, i32 7
  store i32 %171, ptr %image_height, align 4
  br label %do.body225

do.body225:                                       ; preds = %if.end219
  %173 = load ptr, ptr %cinfo.addr, align 8
  %err227 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %173, i32 0, i32 0
  %174 = load ptr, ptr %err227, align 8
  %msg_parm228 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %174, i32 0, i32 6
  %arraydecay229 = getelementptr inbounds [8 x i32], ptr %msg_parm228, i64 0, i64 0
  store ptr %arraydecay229, ptr %_mp226, align 8
  %175 = load i32, ptr %width, align 4
  %176 = load ptr, ptr %_mp226, align 8
  %arrayidx230 = getelementptr inbounds i32, ptr %176, i64 0
  store i32 %175, ptr %arrayidx230, align 4
  %177 = load i32, ptr %height, align 4
  %178 = load ptr, ptr %_mp226, align 8
  %arrayidx231 = getelementptr inbounds i32, ptr %178, i64 1
  store i32 %177, ptr %arrayidx231, align 4
  %179 = load i32, ptr %colormaplen, align 4
  %180 = load ptr, ptr %_mp226, align 8
  %arrayidx232 = getelementptr inbounds i32, ptr %180, i64 2
  store i32 %179, ptr %arrayidx232, align 4
  %181 = load ptr, ptr %cinfo.addr, align 8
  %err233 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %181, i32 0, i32 0
  %182 = load ptr, ptr %err233, align 8
  %msg_code234 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %182, i32 0, i32 5
  store i32 1017, ptr %msg_code234, align 8
  %183 = load ptr, ptr %cinfo.addr, align 8
  %err235 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %err235, align 8
  %emit_message236 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %184, i32 0, i32 1
  %185 = load ptr, ptr %emit_message236, align 8
  %186 = load ptr, ptr %cinfo.addr, align 8
  call void %185(ptr noundef %186, i32 noundef 1)
  br label %do.end237

do.end237:                                        ; preds = %do.body225
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_input_gif(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
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
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %cmaplen.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @ReadByte(ptr noundef %2)
  %conv = trunc i32 %call to i8
  %3 = load ptr, ptr %cmap.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %6 = load ptr, ptr %sinfo.addr, align 8
  %call2 = call i32 @ReadByte(ptr noundef %6)
  %conv3 = trunc i32 %call2 to i8
  %7 = load ptr, ptr %cmap.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx4, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  store i8 %conv3, ptr %arrayidx6, align 1
  %10 = load ptr, ptr %sinfo.addr, align 8
  %call7 = call i32 @ReadByte(ptr noundef %10)
  %conv8 = trunc i32 %call7 to i8
  %11 = load ptr, ptr %cmap.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %11, i64 2
  %12 = load ptr, ptr %arrayidx9, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  store i8 %conv8, ptr %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @ReadByte(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 0
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
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %6 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %error_exit, align 8
  %10 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %cinfo3, align 8
  call void %9(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %c, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define internal void @DoExtension(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %extlabel = alloca i32, align 4
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @ReadByte(ptr noundef %0)
  store i32 %call, ptr %extlabel, align 4
  %1 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 1019, ptr %msg_code, align 8
  %4 = load i32, ptr %extlabel, align 4
  %5 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %4, ptr %arrayidx, align 4
  %8 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %cinfo3, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err4, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %emit_message, align 8
  %12 = load ptr, ptr %sinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.gif_source_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %cinfo5, align 8
  call void %11(ptr noundef %13, i32 noundef 1)
  %14 = load ptr, ptr %sinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_0(ptr noundef %14)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @InitLZWCode(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %last_byte = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 4
  store i32 2, ptr %last_byte, align 4
  %1 = load ptr, ptr %sinfo.addr, align 8
  %last_bit = getelementptr inbounds %struct.gif_source_struct, ptr %1, i32 0, i32 5
  store i32 0, ptr %last_bit, align 8
  %2 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, ptr %2, i32 0, i32 6
  store i32 0, ptr %cur_bit, align 4
  %3 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 7
  store i32 0, ptr %out_of_blocks, align 8
  %4 = load ptr, ptr %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %4, i32 0, i32 8
  %5 = load i32, ptr %input_code_size, align 4
  %shl = shl i32 1, %5
  %6 = load ptr, ptr %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 9
  store i32 %shl, ptr %clear_code, align 8
  %7 = load ptr, ptr %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %clear_code1, align 8
  %add = add nsw i32 %8, 1
  %9 = load ptr, ptr %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, ptr %9, i32 0, i32 10
  store i32 %add, ptr %end_code, align 4
  %10 = load ptr, ptr %sinfo.addr, align 8
  %first_time = getelementptr inbounds %struct.gif_source_struct, ptr %10, i32 0, i32 14
  store i32 1, ptr %first_time, align 4
  %11 = load ptr, ptr %sinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_1(ptr noundef %11)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @load_interlaced_image(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %sptr = alloca ptr, align 8
  %col = alloca i32, align 4
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

for.cond:                                         ; preds = %for.inc13, %entry
  %3 = load i32, ptr %row, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %image_height, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end14

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
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, ptr %19, i32 0, i32 22
  %20 = load ptr, ptr %interlaced_image, align 8
  %21 = load i32, ptr %row, align 4
  %call = call ptr %17(ptr noundef %18, ptr noundef %20, i32 noundef %21, i32 noundef 1, i32 noundef 1)
  store ptr %call, ptr %image_ptr, align 8
  %22 = load ptr, ptr %image_ptr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx, align 8
  store ptr %23, ptr %sptr, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %image_width, align 8
  store i32 %25, ptr %col, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.end
  %26 = load i32, ptr %col, align 4
  %cmp8 = icmp ugt i32 %26, 0
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %27 = load ptr, ptr %source, align 8
  %call11 = call i32 @LZWReadByte(ptr noundef %27)
  %conv12 = trunc i32 %call11 to i8
  %28 = load ptr, ptr %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %sptr, align 8
  store i8 %conv12, ptr %28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %29 = load i32, ptr %col, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond7, !llvm.loop !8

for.end:                                          ; preds = %for.cond7
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %30 = load i32, ptr %row, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %row, align 4
  br label %for.cond, !llvm.loop !9

for.end14:                                        ; preds = %for.cond
  %31 = load ptr, ptr %progress, align 8
  %cmp15 = icmp ne ptr %31, null
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.end14
  %32 = load ptr, ptr %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %completed_extra_passes, align 8
  %inc18 = add nsw i32 %33, 1
  store i32 %inc18, ptr %completed_extra_passes, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end14
  %34 = load ptr, ptr %source, align 8
  %pub20 = getelementptr inbounds %struct.gif_source_struct, ptr %34, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub20, i32 0, i32 1
  store ptr @get_interlaced_row, ptr %get_pixel_rows, align 8
  %35 = load ptr, ptr %source, align 8
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, ptr %35, i32 0, i32 23
  store i32 0, ptr %cur_row_number, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %image_height21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 7
  %37 = load i32, ptr %image_height21, align 4
  %add = add i32 %37, 7
  %div = udiv i32 %add, 8
  %38 = load ptr, ptr %source, align 8
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, ptr %38, i32 0, i32 24
  store i32 %div, ptr %pass2_offset, align 4
  %39 = load ptr, ptr %source, align 8
  %pass2_offset22 = getelementptr inbounds %struct.gif_source_struct, ptr %39, i32 0, i32 24
  %40 = load i32, ptr %pass2_offset22, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %image_height23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 7
  %42 = load i32, ptr %image_height23, align 4
  %add24 = add i32 %42, 3
  %div25 = udiv i32 %add24, 8
  %add26 = add i32 %40, %div25
  %43 = load ptr, ptr %source, align 8
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, ptr %43, i32 0, i32 25
  store i32 %add26, ptr %pass3_offset, align 8
  %44 = load ptr, ptr %source, align 8
  %pass3_offset27 = getelementptr inbounds %struct.gif_source_struct, ptr %44, i32 0, i32 25
  %45 = load i32, ptr %pass3_offset27, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  %image_height28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %46, i32 0, i32 7
  %47 = load i32, ptr %image_height28, align 4
  %add29 = add i32 %47, 1
  %div30 = udiv i32 %add29, 4
  %add31 = add i32 %45, %div30
  %48 = load ptr, ptr %source, align 8
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, ptr %48, i32 0, i32 26
  store i32 %add31, ptr %pass4_offset, align 4
  %49 = load ptr, ptr %cinfo.addr, align 8
  %50 = load ptr, ptr %sinfo.addr, align 8
  %call32 = call i32 @get_interlaced_row(ptr noundef %49, ptr noundef %50)
  ret i32 %call32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_pixel_rows(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %c = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %colormap = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %colormap1, align 8
  store ptr %2, ptr %colormap, align 8
  %3 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 0
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
  %call = call i32 @LZWReadByte(ptr noundef %9)
  store i32 %call, ptr %c, align 4
  %10 = load ptr, ptr %colormap, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx2, align 8
  %12 = load i32, ptr %c, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load i8, ptr %arrayidx3, align 1
  %14 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  store i8 %13, ptr %14, align 1
  %15 = load ptr, ptr %colormap, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx4, align 8
  %17 = load i32, ptr %c, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %16, i64 %idxprom5
  %18 = load i8, ptr %arrayidx6, align 1
  %19 = load ptr, ptr %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr7, ptr %ptr, align 8
  store i8 %18, ptr %19, align 1
  %20 = load ptr, ptr %colormap, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx8, align 8
  %22 = load i32, ptr %c, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %21, i64 %idxprom9
  %23 = load i8, ptr %arrayidx10, align 1
  %24 = load ptr, ptr %ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr11, ptr %ptr, align 8
  store i8 %23, ptr %24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %col, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %col, align 4
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

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %sinfo.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call = call i32 @GetDataBlock(ptr noundef %0, ptr noundef %arraydecay)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !11

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
  %0 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @ReadByte(ptr noundef %0)
  store i32 %call, ptr %count, align 4
  %1 = load i32, ptr %count, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i32, ptr %count, align 4
  %conv = sext i32 %3 to i64
  %4 = load ptr, ptr %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, ptr %4, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 3
  %5 = load ptr, ptr %input_file, align 8
  %call1 = call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %conv, ptr noundef %5)
  %6 = load i32, ptr %count, align 4
  %conv2 = sext i32 %6 to i64
  %cmp3 = icmp eq i64 %call1, %conv2
  br i1 %cmp3, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 42, ptr %msg_code, align 8
  %10 = load ptr, ptr %sinfo.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.gif_source_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %cinfo6, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8
  %14 = load ptr, ptr %sinfo.addr, align 8
  %cinfo8 = getelementptr inbounds %struct.gif_source_struct, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %cinfo8, align 8
  call void %13(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %16 = load i32, ptr %count, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal void @ReInitLZW(ptr noundef %sinfo) #0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %input_code_size, align 4
  %add = add nsw i32 %1, 1
  %2 = load ptr, ptr %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %2, i32 0, i32 11
  store i32 %add, ptr %code_size, align 8
  %3 = load ptr, ptr %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %clear_code, align 8
  %shl = shl i32 %4, 1
  %5 = load ptr, ptr %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 12
  store i32 %shl, ptr %limit_code, align 4
  %6 = load ptr, ptr %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %clear_code1, align 8
  %add2 = add nsw i32 %7, 2
  %8 = load ptr, ptr %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, ptr %8, i32 0, i32 13
  store i32 %add2, ptr %max_code, align 8
  %9 = load ptr, ptr %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %9, i32 0, i32 19
  %10 = load ptr, ptr %symbol_stack, align 8
  %11 = load ptr, ptr %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, ptr %11, i32 0, i32 20
  store ptr %10, ptr %sp, align 8
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
  %0 = load ptr, ptr %sinfo.addr, align 8
  %first_time = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %first_time, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sinfo.addr, align 8
  %first_time1 = getelementptr inbounds %struct.gif_source_struct, ptr %2, i32 0, i32 14
  store i32 0, ptr %first_time1, align 4
  %3 = load ptr, ptr %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %clear_code, align 8
  store i32 %4, ptr %code, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 20
  %6 = load ptr, ptr %sp, align 8
  %7 = load ptr, ptr %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %7, i32 0, i32 19
  %8 = load ptr, ptr %symbol_stack, align 8
  %cmp = icmp ugt ptr %6, %8
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %9 = load ptr, ptr %sinfo.addr, align 8
  %sp3 = getelementptr inbounds %struct.gif_source_struct, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %sp3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %sp3, align 8
  %11 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %12 = load ptr, ptr %sinfo.addr, align 8
  %call = call i32 @GetCode(ptr noundef %12)
  store i32 %call, ptr %code, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %13 = load i32, ptr %code, align 4
  %14 = load ptr, ptr %sinfo.addr, align 8
  %clear_code5 = getelementptr inbounds %struct.gif_source_struct, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %clear_code5, align 8
  %cmp6 = icmp eq i32 %13, %15
  br i1 %cmp6, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end4
  %16 = load ptr, ptr %sinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_2(ptr noundef %16)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then8
  %17 = load ptr, ptr %sinfo.addr, align 8
  %call9 = call i32 @GetCode(ptr noundef %17)
  store i32 %call9, ptr %code, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, ptr %code, align 4
  %19 = load ptr, ptr %sinfo.addr, align 8
  %clear_code10 = getelementptr inbounds %struct.gif_source_struct, ptr %19, i32 0, i32 9
  %20 = load i32, ptr %clear_code10, align 8
  %cmp11 = icmp eq i32 %18, %20
  br i1 %cmp11, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  %21 = load i32, ptr %code, align 4
  %22 = load ptr, ptr %sinfo.addr, align 8
  %clear_code13 = getelementptr inbounds %struct.gif_source_struct, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %clear_code13, align 8
  %cmp14 = icmp sgt i32 %21, %23
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %do.end
  %24 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 5
  store i32 1021, ptr %msg_code, align 8
  %27 = load ptr, ptr %sinfo.addr, align 8
  %cinfo17 = getelementptr inbounds %struct.gif_source_struct, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %cinfo17, align 8
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err18, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %emit_message, align 8
  %31 = load ptr, ptr %sinfo.addr, align 8
  %cinfo19 = getelementptr inbounds %struct.gif_source_struct, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %cinfo19, align 8
  call void %30(ptr noundef %32, i32 noundef -1)
  store i32 0, ptr %code, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.end
  %33 = load i32, ptr %code, align 4
  %34 = load ptr, ptr %sinfo.addr, align 8
  %oldcode = getelementptr inbounds %struct.gif_source_struct, ptr %34, i32 0, i32 15
  store i32 %33, ptr %oldcode, align 8
  %35 = load ptr, ptr %sinfo.addr, align 8
  %firstcode = getelementptr inbounds %struct.gif_source_struct, ptr %35, i32 0, i32 16
  store i32 %33, ptr %firstcode, align 4
  %36 = load i32, ptr %code, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end4
  %37 = load i32, ptr %code, align 4
  %38 = load ptr, ptr %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, ptr %38, i32 0, i32 10
  %39 = load i32, ptr %end_code, align 4
  %cmp22 = icmp eq i32 %37, %39
  br i1 %cmp22, label %if.then24, label %if.end36

if.then24:                                        ; preds = %if.end21
  %40 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, ptr %40, i32 0, i32 7
  %41 = load i32, ptr %out_of_blocks, align 8
  %tobool25 = icmp ne i32 %41, 0
  br i1 %tobool25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then24
  %42 = load ptr, ptr %sinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_3(ptr noundef %42)
  %43 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks27 = getelementptr inbounds %struct.gif_source_struct, ptr %43, i32 0, i32 7
  store i32 1, ptr %out_of_blocks27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then24
  %44 = load ptr, ptr %sinfo.addr, align 8
  %cinfo29 = getelementptr inbounds %struct.gif_source_struct, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %cinfo29, align 8
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err30, align 8
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5
  store i32 1023, ptr %msg_code31, align 8
  %47 = load ptr, ptr %sinfo.addr, align 8
  %cinfo32 = getelementptr inbounds %struct.gif_source_struct, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %cinfo32, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %err33, align 8
  %emit_message34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %emit_message34, align 8
  %51 = load ptr, ptr %sinfo.addr, align 8
  %cinfo35 = getelementptr inbounds %struct.gif_source_struct, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %cinfo35, align 8
  call void %50(ptr noundef %52, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end21
  %53 = load i32, ptr %code, align 4
  store i32 %53, ptr %incode, align 4
  %54 = load i32, ptr %code, align 4
  %55 = load ptr, ptr %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, ptr %55, i32 0, i32 13
  %56 = load i32, ptr %max_code, align 8
  %cmp37 = icmp sge i32 %54, %56
  br i1 %cmp37, label %if.then39, label %if.end57

if.then39:                                        ; preds = %if.end36
  %57 = load i32, ptr %code, align 4
  %58 = load ptr, ptr %sinfo.addr, align 8
  %max_code40 = getelementptr inbounds %struct.gif_source_struct, ptr %58, i32 0, i32 13
  %59 = load i32, ptr %max_code40, align 8
  %cmp41 = icmp sgt i32 %57, %59
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %if.then39
  %60 = load ptr, ptr %sinfo.addr, align 8
  %cinfo44 = getelementptr inbounds %struct.gif_source_struct, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %cinfo44, align 8
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %err45, align 8
  %msg_code46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i32 0, i32 5
  store i32 1021, ptr %msg_code46, align 8
  %63 = load ptr, ptr %sinfo.addr, align 8
  %cinfo47 = getelementptr inbounds %struct.gif_source_struct, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %cinfo47, align 8
  %err48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err48, align 8
  %emit_message49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %emit_message49, align 8
  %67 = load ptr, ptr %sinfo.addr, align 8
  %cinfo50 = getelementptr inbounds %struct.gif_source_struct, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %cinfo50, align 8
  call void %66(ptr noundef %68, i32 noundef -1)
  store i32 0, ptr %incode, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then39
  %69 = load ptr, ptr %sinfo.addr, align 8
  %firstcode52 = getelementptr inbounds %struct.gif_source_struct, ptr %69, i32 0, i32 16
  %70 = load i32, ptr %firstcode52, align 4
  %conv53 = trunc i32 %70 to i8
  %71 = load ptr, ptr %sinfo.addr, align 8
  %sp54 = getelementptr inbounds %struct.gif_source_struct, ptr %71, i32 0, i32 20
  %72 = load ptr, ptr %sp54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr55, ptr %sp54, align 8
  store i8 %conv53, ptr %72, align 1
  %73 = load ptr, ptr %sinfo.addr, align 8
  %oldcode56 = getelementptr inbounds %struct.gif_source_struct, ptr %73, i32 0, i32 15
  %74 = load i32, ptr %oldcode56, align 8
  store i32 %74, ptr %code, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end51, %if.end36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end57
  %75 = load i32, ptr %code, align 4
  %76 = load ptr, ptr %sinfo.addr, align 8
  %clear_code58 = getelementptr inbounds %struct.gif_source_struct, ptr %76, i32 0, i32 9
  %77 = load i32, ptr %clear_code58, align 8
  %cmp59 = icmp sge i32 %75, %77
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load ptr, ptr %sinfo.addr, align 8
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, ptr %78, i32 0, i32 18
  %79 = load ptr, ptr %symbol_tail, align 8
  %80 = load i32, ptr %code, align 4
  %idxprom = sext i32 %80 to i64
  %arrayidx = getelementptr inbounds i8, ptr %79, i64 %idxprom
  %81 = load i8, ptr %arrayidx, align 1
  %82 = load ptr, ptr %sinfo.addr, align 8
  %sp61 = getelementptr inbounds %struct.gif_source_struct, ptr %82, i32 0, i32 20
  %83 = load ptr, ptr %sp61, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr62, ptr %sp61, align 8
  store i8 %81, ptr %83, align 1
  %84 = load ptr, ptr %sinfo.addr, align 8
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, ptr %84, i32 0, i32 17
  %85 = load ptr, ptr %symbol_head, align 8
  %86 = load i32, ptr %code, align 4
  %idxprom63 = sext i32 %86 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %85, i64 %idxprom63
  %87 = load i16, ptr %arrayidx64, align 2
  %conv65 = zext i16 %87 to i32
  store i32 %conv65, ptr %code, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %88 = load i32, ptr %code, align 4
  %89 = load ptr, ptr %sinfo.addr, align 8
  %firstcode66 = getelementptr inbounds %struct.gif_source_struct, ptr %89, i32 0, i32 16
  store i32 %88, ptr %firstcode66, align 4
  %90 = load ptr, ptr %sinfo.addr, align 8
  %max_code67 = getelementptr inbounds %struct.gif_source_struct, ptr %90, i32 0, i32 13
  %91 = load i32, ptr %max_code67, align 8
  store i32 %91, ptr %code, align 4
  %cmp68 = icmp slt i32 %91, 4096
  br i1 %cmp68, label %if.then70, label %if.end92

if.then70:                                        ; preds = %while.end
  %92 = load ptr, ptr %sinfo.addr, align 8
  %oldcode71 = getelementptr inbounds %struct.gif_source_struct, ptr %92, i32 0, i32 15
  %93 = load i32, ptr %oldcode71, align 8
  %conv72 = trunc i32 %93 to i16
  %94 = load ptr, ptr %sinfo.addr, align 8
  %symbol_head73 = getelementptr inbounds %struct.gif_source_struct, ptr %94, i32 0, i32 17
  %95 = load ptr, ptr %symbol_head73, align 8
  %96 = load i32, ptr %code, align 4
  %idxprom74 = sext i32 %96 to i64
  %arrayidx75 = getelementptr inbounds i16, ptr %95, i64 %idxprom74
  store i16 %conv72, ptr %arrayidx75, align 2
  %97 = load ptr, ptr %sinfo.addr, align 8
  %firstcode76 = getelementptr inbounds %struct.gif_source_struct, ptr %97, i32 0, i32 16
  %98 = load i32, ptr %firstcode76, align 4
  %conv77 = trunc i32 %98 to i8
  %99 = load ptr, ptr %sinfo.addr, align 8
  %symbol_tail78 = getelementptr inbounds %struct.gif_source_struct, ptr %99, i32 0, i32 18
  %100 = load ptr, ptr %symbol_tail78, align 8
  %101 = load i32, ptr %code, align 4
  %idxprom79 = sext i32 %101 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %100, i64 %idxprom79
  store i8 %conv77, ptr %arrayidx80, align 1
  %102 = load ptr, ptr %sinfo.addr, align 8
  %max_code81 = getelementptr inbounds %struct.gif_source_struct, ptr %102, i32 0, i32 13
  %103 = load i32, ptr %max_code81, align 8
  %inc = add nsw i32 %103, 1
  store i32 %inc, ptr %max_code81, align 8
  %104 = load ptr, ptr %sinfo.addr, align 8
  %max_code82 = getelementptr inbounds %struct.gif_source_struct, ptr %104, i32 0, i32 13
  %105 = load i32, ptr %max_code82, align 8
  %106 = load ptr, ptr %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, ptr %106, i32 0, i32 12
  %107 = load i32, ptr %limit_code, align 4
  %cmp83 = icmp sge i32 %105, %107
  br i1 %cmp83, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %if.then70
  %108 = load ptr, ptr %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %108, i32 0, i32 11
  %109 = load i32, ptr %code_size, align 8
  %cmp85 = icmp slt i32 %109, 12
  br i1 %cmp85, label %if.then87, label %if.end91

if.then87:                                        ; preds = %land.lhs.true
  %110 = load ptr, ptr %sinfo.addr, align 8
  %code_size88 = getelementptr inbounds %struct.gif_source_struct, ptr %110, i32 0, i32 11
  %111 = load i32, ptr %code_size88, align 8
  %inc89 = add nsw i32 %111, 1
  store i32 %inc89, ptr %code_size88, align 8
  %112 = load ptr, ptr %sinfo.addr, align 8
  %limit_code90 = getelementptr inbounds %struct.gif_source_struct, ptr %112, i32 0, i32 12
  %113 = load i32, ptr %limit_code90, align 4
  %shl = shl i32 %113, 1
  store i32 %shl, ptr %limit_code90, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %land.lhs.true, %if.then70
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %while.end
  %114 = load i32, ptr %incode, align 4
  %115 = load ptr, ptr %sinfo.addr, align 8
  %oldcode93 = getelementptr inbounds %struct.gif_source_struct, ptr %115, i32 0, i32 15
  store i32 %114, ptr %oldcode93, align 8
  %116 = load ptr, ptr %sinfo.addr, align 8
  %firstcode94 = getelementptr inbounds %struct.gif_source_struct, ptr %116, i32 0, i32 16
  %117 = load i32, ptr %firstcode94, align 4
  store i32 %117, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end92, %if.end28, %if.end20, %if.then2
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_interlaced_row(ptr noundef %cinfo, ptr noundef %sinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %image_ptr = alloca ptr, align 8
  %c = alloca i32, align 4
  %sptr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %col = alloca i32, align 4
  %colormap = alloca ptr, align 8
  %irow = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  store ptr %0, ptr %source, align 8
  %1 = load ptr, ptr %source, align 8
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %colormap1, align 8
  store ptr %2, ptr %colormap, align 8
  %3 = load ptr, ptr %source, align 8
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 23
  %4 = load i32, ptr %cur_row_number, align 8
  %and = and i32 %4, 7
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb3
    i32 2, label %sw.bb6
    i32 6, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %source, align 8
  %cur_row_number2 = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 23
  %6 = load i32, ptr %cur_row_number2, align 8
  %shr = lshr i32 %6, 3
  store i32 %shr, ptr %irow, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %source, align 8
  %cur_row_number4 = getelementptr inbounds %struct.gif_source_struct, ptr %7, i32 0, i32 23
  %8 = load i32, ptr %cur_row_number4, align 8
  %shr5 = lshr i32 %8, 3
  %9 = load ptr, ptr %source, align 8
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, ptr %9, i32 0, i32 24
  %10 = load i32, ptr %pass2_offset, align 4
  %add = add i32 %shr5, %10
  store i32 %add, ptr %irow, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry
  %11 = load ptr, ptr %source, align 8
  %cur_row_number7 = getelementptr inbounds %struct.gif_source_struct, ptr %11, i32 0, i32 23
  %12 = load i32, ptr %cur_row_number7, align 8
  %shr8 = lshr i32 %12, 2
  %13 = load ptr, ptr %source, align 8
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, ptr %13, i32 0, i32 25
  %14 = load i32, ptr %pass3_offset, align 8
  %add9 = add i32 %shr8, %14
  store i32 %add9, ptr %irow, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load ptr, ptr %source, align 8
  %cur_row_number10 = getelementptr inbounds %struct.gif_source_struct, ptr %15, i32 0, i32 23
  %16 = load i32, ptr %cur_row_number10, align 8
  %shr11 = lshr i32 %16, 1
  %17 = load ptr, ptr %source, align 8
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, ptr %17, i32 0, i32 26
  %18 = load i32, ptr %pass4_offset, align 4
  %add12 = add i32 %shr11, %18
  store i32 %add12, ptr %irow, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb3, %sw.bb
  %19 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %access_virt_sarray, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, ptr %23, i32 0, i32 22
  %24 = load ptr, ptr %interlaced_image, align 8
  %25 = load i32, ptr %irow, align 4
  %call = call ptr %21(ptr noundef %22, ptr noundef %24, i32 noundef %25, i32 noundef 1, i32 noundef 0)
  store ptr %call, ptr %image_ptr, align 8
  %26 = load ptr, ptr %image_ptr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 0
  %27 = load ptr, ptr %arrayidx, align 8
  store ptr %27, ptr %sptr, align 8
  %28 = load ptr, ptr %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, ptr %28, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %pub, i32 0, i32 4
  %29 = load ptr, ptr %buffer, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %29, i64 0
  %30 = load ptr, ptr %arrayidx13, align 8
  store ptr %30, ptr %ptr, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %image_width, align 8
  store i32 %32, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %33 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %33, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %sptr, align 8
  %35 = load i8, ptr %34, align 1
  %conv = zext i8 %35 to i32
  store i32 %conv, ptr %c, align 4
  %36 = load ptr, ptr %colormap, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %36, i64 0
  %37 = load ptr, ptr %arrayidx14, align 8
  %38 = load i32, ptr %c, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %37, i64 %idxprom
  %39 = load i8, ptr %arrayidx15, align 1
  %40 = load ptr, ptr %ptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr16, ptr %ptr, align 8
  store i8 %39, ptr %40, align 1
  %41 = load ptr, ptr %colormap, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %41, i64 1
  %42 = load ptr, ptr %arrayidx17, align 8
  %43 = load i32, ptr %c, align 4
  %idxprom18 = sext i32 %43 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %42, i64 %idxprom18
  %44 = load i8, ptr %arrayidx19, align 1
  %45 = load ptr, ptr %ptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr20, ptr %ptr, align 8
  store i8 %44, ptr %45, align 1
  %46 = load ptr, ptr %colormap, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %46, i64 2
  %47 = load ptr, ptr %arrayidx21, align 8
  %48 = load i32, ptr %c, align 4
  %idxprom22 = sext i32 %48 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %47, i64 %idxprom22
  %49 = load i8, ptr %arrayidx23, align 1
  %50 = load ptr, ptr %ptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr24, ptr %ptr, align 8
  store i8 %49, ptr %50, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, ptr %col, align 4
  %dec = add i32 %51, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %52 = load ptr, ptr %source, align 8
  %cur_row_number25 = getelementptr inbounds %struct.gif_source_struct, ptr %52, i32 0, i32 23
  %53 = load i32, ptr %cur_row_number25, align 8
  %inc = add i32 %53, 1
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
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %cur_bit, align 4
  %2 = load ptr, ptr %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %code_size, align 8
  %add = add nsw i32 %1, %3
  %4 = load ptr, ptr %sinfo.addr, align 8
  %last_bit = getelementptr inbounds %struct.gif_source_struct, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %last_bit, align 8
  %cmp = icmp sgt i32 %add, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %out_of_blocks, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 1024, ptr %msg_code, align 8
  %11 = load ptr, ptr %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err2, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %emit_message, align 8
  %15 = load ptr, ptr %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %cinfo3, align 8
  call void %14(ptr noundef %16, i32 noundef -1)
  %17 = load ptr, ptr %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %end_code, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %19 = load ptr, ptr %sinfo.addr, align 8
  %code_buf = getelementptr inbounds %struct.gif_source_struct, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %sinfo.addr, align 8
  %last_byte = getelementptr inbounds %struct.gif_source_struct, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %last_byte, align 4
  %sub = sub nsw i32 %21, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [260 x i8], ptr %code_buf, i64 0, i64 %idxprom
  %22 = load i8, ptr %arrayidx, align 1
  %23 = load ptr, ptr %sinfo.addr, align 8
  %code_buf4 = getelementptr inbounds %struct.gif_source_struct, ptr %23, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [260 x i8], ptr %code_buf4, i64 0, i64 0
  store i8 %22, ptr %arrayidx5, align 8
  %24 = load ptr, ptr %sinfo.addr, align 8
  %code_buf6 = getelementptr inbounds %struct.gif_source_struct, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %sinfo.addr, align 8
  %last_byte7 = getelementptr inbounds %struct.gif_source_struct, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %last_byte7, align 4
  %sub8 = sub nsw i32 %26, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [260 x i8], ptr %code_buf6, i64 0, i64 %idxprom9
  %27 = load i8, ptr %arrayidx10, align 1
  %28 = load ptr, ptr %sinfo.addr, align 8
  %code_buf11 = getelementptr inbounds %struct.gif_source_struct, ptr %28, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [260 x i8], ptr %code_buf11, i64 0, i64 1
  store i8 %27, ptr %arrayidx12, align 1
  %29 = load ptr, ptr %sinfo.addr, align 8
  %30 = load ptr, ptr %sinfo.addr, align 8
  %code_buf13 = getelementptr inbounds %struct.gif_source_struct, ptr %30, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [260 x i8], ptr %code_buf13, i64 0, i64 2
  %call = call i32 @GetDataBlock(ptr noundef %29, ptr noundef %arrayidx14)
  store i32 %call, ptr %count, align 4
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end
  %31 = load ptr, ptr %sinfo.addr, align 8
  %out_of_blocks17 = getelementptr inbounds %struct.gif_source_struct, ptr %31, i32 0, i32 7
  store i32 1, ptr %out_of_blocks17, align 8
  %32 = load ptr, ptr %sinfo.addr, align 8
  %cinfo18 = getelementptr inbounds %struct.gif_source_struct, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %cinfo18, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err19, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 5
  store i32 1024, ptr %msg_code20, align 8
  %35 = load ptr, ptr %sinfo.addr, align 8
  %cinfo21 = getelementptr inbounds %struct.gif_source_struct, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %cinfo21, align 8
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err22, align 8
  %emit_message23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %emit_message23, align 8
  %39 = load ptr, ptr %sinfo.addr, align 8
  %cinfo24 = getelementptr inbounds %struct.gif_source_struct, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %cinfo24, align 8
  call void %38(ptr noundef %40, i32 noundef -1)
  %41 = load ptr, ptr %sinfo.addr, align 8
  %end_code25 = getelementptr inbounds %struct.gif_source_struct, ptr %41, i32 0, i32 10
  %42 = load i32, ptr %end_code25, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end
  %43 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit27 = getelementptr inbounds %struct.gif_source_struct, ptr %43, i32 0, i32 6
  %44 = load i32, ptr %cur_bit27, align 4
  %45 = load ptr, ptr %sinfo.addr, align 8
  %last_bit28 = getelementptr inbounds %struct.gif_source_struct, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %last_bit28, align 8
  %sub29 = sub nsw i32 %44, %46
  %add30 = add nsw i32 %sub29, 16
  %47 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit31 = getelementptr inbounds %struct.gif_source_struct, ptr %47, i32 0, i32 6
  store i32 %add30, ptr %cur_bit31, align 4
  %48 = load i32, ptr %count, align 4
  %add32 = add nsw i32 2, %48
  %49 = load ptr, ptr %sinfo.addr, align 8
  %last_byte33 = getelementptr inbounds %struct.gif_source_struct, ptr %49, i32 0, i32 4
  store i32 %add32, ptr %last_byte33, align 4
  %50 = load ptr, ptr %sinfo.addr, align 8
  %last_byte34 = getelementptr inbounds %struct.gif_source_struct, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %last_byte34, align 4
  %mul = mul nsw i32 %51, 8
  %52 = load ptr, ptr %sinfo.addr, align 8
  %last_bit35 = getelementptr inbounds %struct.gif_source_struct, ptr %52, i32 0, i32 5
  store i32 %mul, ptr %last_bit35, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %53 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit36 = getelementptr inbounds %struct.gif_source_struct, ptr %53, i32 0, i32 6
  %54 = load i32, ptr %cur_bit36, align 4
  %shr = ashr i32 %54, 3
  store i32 %shr, ptr %offs, align 4
  %55 = load ptr, ptr %sinfo.addr, align 8
  %code_buf37 = getelementptr inbounds %struct.gif_source_struct, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %offs, align 4
  %add38 = add nsw i32 %56, 2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [260 x i8], ptr %code_buf37, i64 0, i64 %idxprom39
  %57 = load i8, ptr %arrayidx40, align 1
  %conv = sext i8 %57 to i32
  %and = and i32 %conv, 255
  %conv41 = sext i32 %and to i64
  store i64 %conv41, ptr %accum, align 8
  %58 = load i64, ptr %accum, align 8
  %shl = shl i64 %58, 8
  store i64 %shl, ptr %accum, align 8
  %59 = load ptr, ptr %sinfo.addr, align 8
  %code_buf42 = getelementptr inbounds %struct.gif_source_struct, ptr %59, i32 0, i32 3
  %60 = load i32, ptr %offs, align 4
  %add43 = add nsw i32 %60, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [260 x i8], ptr %code_buf42, i64 0, i64 %idxprom44
  %61 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %61 to i32
  %and47 = and i32 %conv46, 255
  %conv48 = sext i32 %and47 to i64
  %62 = load i64, ptr %accum, align 8
  %or = or i64 %62, %conv48
  store i64 %or, ptr %accum, align 8
  %63 = load i64, ptr %accum, align 8
  %shl49 = shl i64 %63, 8
  store i64 %shl49, ptr %accum, align 8
  %64 = load ptr, ptr %sinfo.addr, align 8
  %code_buf50 = getelementptr inbounds %struct.gif_source_struct, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %offs, align 4
  %idxprom51 = sext i32 %65 to i64
  %arrayidx52 = getelementptr inbounds [260 x i8], ptr %code_buf50, i64 0, i64 %idxprom51
  %66 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %66 to i32
  %and54 = and i32 %conv53, 255
  %conv55 = sext i32 %and54 to i64
  %67 = load i64, ptr %accum, align 8
  %or56 = or i64 %67, %conv55
  store i64 %or56, ptr %accum, align 8
  %68 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit57 = getelementptr inbounds %struct.gif_source_struct, ptr %68, i32 0, i32 6
  %69 = load i32, ptr %cur_bit57, align 4
  %and58 = and i32 %69, 7
  %70 = load i64, ptr %accum, align 8
  %sh_prom = zext i32 %and58 to i64
  %shr59 = ashr i64 %70, %sh_prom
  store i64 %shr59, ptr %accum, align 8
  %71 = load i64, ptr %accum, align 8
  %conv60 = trunc i64 %71 to i32
  %72 = load ptr, ptr %sinfo.addr, align 8
  %code_size61 = getelementptr inbounds %struct.gif_source_struct, ptr %72, i32 0, i32 11
  %73 = load i32, ptr %code_size61, align 8
  %shl62 = shl i32 1, %73
  %sub63 = sub nsw i32 %shl62, 1
  %and64 = and i32 %conv60, %sub63
  store i32 %and64, ptr %ret, align 4
  %74 = load ptr, ptr %sinfo.addr, align 8
  %code_size65 = getelementptr inbounds %struct.gif_source_struct, ptr %74, i32 0, i32 11
  %75 = load i32, ptr %code_size65, align 8
  %76 = load ptr, ptr %sinfo.addr, align 8
  %cur_bit66 = getelementptr inbounds %struct.gif_source_struct, ptr %76, i32 0, i32 6
  %77 = load i32, ptr %cur_bit66, align 4
  %add67 = add nsw i32 %77, %75
  store i32 %add67, ptr %cur_bit66, align 4
  %78 = load i32, ptr %ret, align 4
  store i32 %78, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_0(ptr noundef %sinfo)  alwaysinline#0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %buf = alloca [256 x i8], align 1
  store ptr %sinfo, ptr %sinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %sinfo.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call = call i32 @GetDataBlock(ptr noundef %0, ptr noundef %arraydecay)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_1(ptr noundef %sinfo)  alwaysinline#0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %input_code_size, align 4
  %add = add nsw i32 %1, 1
  %2 = load ptr, ptr %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %2, i32 0, i32 11
  store i32 %add, ptr %code_size, align 8
  %3 = load ptr, ptr %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %clear_code, align 8
  %shl = shl i32 %4, 1
  %5 = load ptr, ptr %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 12
  store i32 %shl, ptr %limit_code, align 4
  %6 = load ptr, ptr %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %clear_code1, align 8
  %add2 = add nsw i32 %7, 2
  %8 = load ptr, ptr %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, ptr %8, i32 0, i32 13
  store i32 %add2, ptr %max_code, align 8
  %9 = load ptr, ptr %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %9, i32 0, i32 19
  %10 = load ptr, ptr %symbol_stack, align 8
  %11 = load ptr, ptr %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, ptr %11, i32 0, i32 20
  store ptr %10, ptr %sp, align 8
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_2(ptr noundef %sinfo)  alwaysinline#0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  %0 = load ptr, ptr %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %input_code_size, align 4
  %add = add nsw i32 %1, 1
  %2 = load ptr, ptr %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, ptr %2, i32 0, i32 11
  store i32 %add, ptr %code_size, align 8
  %3 = load ptr, ptr %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %clear_code, align 8
  %shl = shl i32 %4, 1
  %5 = load ptr, ptr %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, ptr %5, i32 0, i32 12
  store i32 %shl, ptr %limit_code, align 4
  %6 = load ptr, ptr %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %clear_code1, align 8
  %add2 = add nsw i32 %7, 2
  %8 = load ptr, ptr %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, ptr %8, i32 0, i32 13
  store i32 %add2, ptr %max_code, align 8
  %9 = load ptr, ptr %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, ptr %9, i32 0, i32 19
  %10 = load ptr, ptr %symbol_stack, align 8
  %11 = load ptr, ptr %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, ptr %11, i32 0, i32 20
  store ptr %10, ptr %sp, align 8
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdgif_3(ptr noundef %sinfo)  alwaysinline#0 {
entry:
  %sinfo.addr = alloca ptr, align 8
  %buf = alloca [256 x i8], align 1
  store ptr %sinfo, ptr %sinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %sinfo.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call = call i32 @GetDataBlock(ptr noundef %0, ptr noundef %arraydecay)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
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
