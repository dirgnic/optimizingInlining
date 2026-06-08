; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdcolmap.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdcolmap.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind ssp uwtable
define void @read_color_map(ptr noundef %cinfo, ptr noundef %infile) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %alloc_sarray, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i32 noundef 256, i32 noundef 3)
  %4 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 32
  store ptr %call, ptr %colormap, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 31
  store i32 0, ptr %actual_number_of_colors, align 4
  %6 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %6)
  switch i32 %call1, label %sw.default [
    i32 71, label %sw.bb
    i32 80, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %infile.addr, align 8
  call void @read_gif_map(ptr noundef %7, ptr noundef %8)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %infile.addr, align 8
  call void @read_ppm_map(ptr noundef %9, ptr noundef %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret void
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @read_gif_map(ptr noundef %cinfo, ptr noundef %infile) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  %header = alloca [13 x i32], align 4
  %i = alloca i32, align 4
  %colormaplen = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @getc(ptr noundef %1)
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 %idxprom
  store i32 %call, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 1
  %10 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp ne i32 %10, 73
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arrayidx5 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 2
  %11 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp ne i32 %11, 70
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %lor.lhs.false, %for.end
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 5
  store i32 1038, ptr %msg_code9, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %error_exit11, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %lor.lhs.false
  %arrayidx13 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 10
  %18 = load i32, ptr %arrayidx13, align 4
  %and = and i32 %18, 128
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err16, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 1038, ptr %msg_code17, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err18, align 8
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit19, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12
  %arrayidx21 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 10
  %25 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %25, 7
  %shl = shl i32 2, %and22
  store i32 %shl, ptr %colormaplen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc43, %if.end20
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %colormaplen, align 4
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body25, label %for.end45

for.body25:                                       ; preds = %for.cond23
  %28 = load ptr, ptr %infile.addr, align 8
  %call26 = call i32 @getc(ptr noundef %28)
  store i32 %call26, ptr %R, align 4
  %29 = load ptr, ptr %infile.addr, align 8
  %call27 = call i32 @getc(ptr noundef %29)
  store i32 %call27, ptr %G, align 4
  %30 = load ptr, ptr %infile.addr, align 8
  %call28 = call i32 @getc(ptr noundef %30)
  store i32 %call28, ptr %B, align 4
  %31 = load i32, ptr %R, align 4
  %cmp29 = icmp eq i32 %31, -1
  br i1 %cmp29, label %if.then34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %for.body25
  %32 = load i32, ptr %G, align 4
  %cmp31 = icmp eq i32 %32, -1
  br i1 %cmp31, label %if.then34, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false30
  %33 = load i32, ptr %B, align 4
  %cmp33 = icmp eq i32 %33, -1
  br i1 %cmp33, label %if.then34, label %if.end39

if.then34:                                        ; preds = %lor.lhs.false32, %lor.lhs.false30, %for.body25
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err35, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 5
  store i32 1038, ptr %msg_code36, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err37, align 8
  %error_exit38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %error_exit38, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  call void %38(ptr noundef %39)
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %lor.lhs.false32
  %40 = load ptr, ptr %cinfo.addr, align 8
  %41 = load i32, ptr %R, align 4
  %shl40 = shl i32 %41, 0
  %42 = load i32, ptr %G, align 4
  %shl41 = shl i32 %42, 0
  %43 = load i32, ptr %B, align 4
  %shl42 = shl i32 %43, 0
  call void @add_map_entry(ptr noundef %40, i32 noundef %shl40, i32 noundef %shl41, i32 noundef %shl42)
  br label %for.inc43

for.inc43:                                        ; preds = %if.end39
  %44 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %44, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end45:                                        ; preds = %for.cond23
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @read_ppm_map(ptr noundef %cinfo, ptr noundef %infile) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %maxval = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  %0 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @read_pbm_integer(ptr noundef %1, ptr noundef %2)
  store i32 %call1, ptr %w, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %infile.addr, align 8
  %call2 = call i32 @read_pbm_integer(ptr noundef %3, ptr noundef %4)
  store i32 %call2, ptr %h, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %infile.addr, align 8
  %call3 = call i32 @read_pbm_integer(ptr noundef %5, ptr noundef %6)
  store i32 %call3, ptr %maxval, align 4
  %7 = load i32, ptr %w, align 4
  %cmp = icmp ule i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, ptr %h, align 4
  %cmp4 = icmp ule i32 %8, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load i32, ptr %maxval, align 4
  %cmp6 = icmp ule i32 %9, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false5
  %16 = load i32, ptr %maxval, align 4
  %cmp8 = icmp ne i32 %16, 255
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5
  store i32 1038, ptr %msg_code11, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err12, align 8
  %error_exit13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %error_exit13, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end
  %23 = load i32, ptr %c, align 4
  switch i32 %23, label %sw.default [
    i32 51, label %sw.bb
    i32 54, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end14
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %sw.bb
  %24 = load i32, ptr %row, align 4
  %25 = load i32, ptr %h, align 4
  %cmp15 = icmp ult i32 %24, %25
  br i1 %cmp15, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %col, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body
  %26 = load i32, ptr %col, align 4
  %27 = load i32, ptr %w, align 4
  %cmp17 = icmp ult i32 %26, %27
  br i1 %cmp17, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond16
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %infile.addr, align 8
  %call19 = call i32 @read_pbm_integer(ptr noundef %28, ptr noundef %29)
  store i32 %call19, ptr %R, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load ptr, ptr %infile.addr, align 8
  %call20 = call i32 @read_pbm_integer(ptr noundef %30, ptr noundef %31)
  store i32 %call20, ptr %G, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %infile.addr, align 8
  %call21 = call i32 @read_pbm_integer(ptr noundef %32, ptr noundef %33)
  store i32 %call21, ptr %B, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load i32, ptr %R, align 4
  %36 = load i32, ptr %G, align 4
  %37 = load i32, ptr %B, align 4
  call void @add_map_entry(ptr noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  %38 = load i32, ptr %col, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %col, align 4
  br label %for.cond16, !llvm.loop !9

for.end:                                          ; preds = %for.cond16
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %39 = load i32, ptr %row, align 4
  %inc23 = add i32 %39, 1
  store i32 %inc23, ptr %row, align 4
  br label %for.cond, !llvm.loop !10

for.end24:                                        ; preds = %for.cond
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end14
  store i32 0, ptr %row, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc49, %sw.bb25
  %40 = load i32, ptr %row, align 4
  %41 = load i32, ptr %h, align 4
  %cmp27 = icmp ult i32 %40, %41
  br i1 %cmp27, label %for.body28, label %for.end51

for.body28:                                       ; preds = %for.cond26
  store i32 0, ptr %col, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %for.body28
  %42 = load i32, ptr %col, align 4
  %43 = load i32, ptr %w, align 4
  %cmp30 = icmp ult i32 %42, %43
  br i1 %cmp30, label %for.body31, label %for.end48

for.body31:                                       ; preds = %for.cond29
  %44 = load ptr, ptr %infile.addr, align 8
  %call32 = call i32 @pbm_getc(ptr noundef %44)
  store i32 %call32, ptr %R, align 4
  %45 = load ptr, ptr %infile.addr, align 8
  %call33 = call i32 @pbm_getc(ptr noundef %45)
  store i32 %call33, ptr %G, align 4
  %46 = load ptr, ptr %infile.addr, align 8
  %call34 = call i32 @pbm_getc(ptr noundef %46)
  store i32 %call34, ptr %B, align 4
  %47 = load i32, ptr %R, align 4
  %cmp35 = icmp eq i32 %47, -1
  br i1 %cmp35, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %for.body31
  %48 = load i32, ptr %G, align 4
  %cmp37 = icmp eq i32 %48, -1
  br i1 %cmp37, label %if.then40, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false36
  %49 = load i32, ptr %B, align 4
  %cmp39 = icmp eq i32 %49, -1
  br i1 %cmp39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %lor.lhs.false38, %lor.lhs.false36, %for.body31
  %50 = load ptr, ptr %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err41, align 8
  %msg_code42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i32 0, i32 5
  store i32 1038, ptr %msg_code42, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %err43, align 8
  %error_exit44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %error_exit44, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  call void %54(ptr noundef %55)
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %lor.lhs.false38
  %56 = load ptr, ptr %cinfo.addr, align 8
  %57 = load i32, ptr %R, align 4
  %58 = load i32, ptr %G, align 4
  %59 = load i32, ptr %B, align 4
  call void @add_map_entry(ptr noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %60 = load i32, ptr %col, align 4
  %inc47 = add i32 %60, 1
  store i32 %inc47, ptr %col, align 4
  br label %for.cond29, !llvm.loop !11

for.end48:                                        ; preds = %for.cond29
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %61 = load i32, ptr %row, align 4
  %inc50 = add i32 %61, 1
  store i32 %inc50, ptr %row, align 4
  br label %for.cond26, !llvm.loop !12

for.end51:                                        ; preds = %for.cond26
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err52, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 5
  store i32 1038, ptr %msg_code53, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err54, align 8
  %error_exit55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %error_exit55, align 8
  %67 = load ptr, ptr %cinfo.addr, align 8
  call void %66(ptr noundef %67)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end51, %for.end24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @add_map_entry(ptr noundef %cinfo, i32 noundef %R, i32 noundef %G, i32 noundef %B) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %R.addr = alloca i32, align 4
  %G.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %colormap0 = alloca ptr, align 8
  %colormap1 = alloca ptr, align 8
  %colormap24 = alloca ptr, align 8
  %ncolors = alloca i32, align 4
  %index = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %R, ptr %R.addr, align 4
  store i32 %G, ptr %G.addr, align 4
  store i32 %B, ptr %B.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 32
  %1 = load ptr, ptr %colormap, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %colormap0, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %colormap2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 32
  %4 = load ptr, ptr %colormap2, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  store ptr %5, ptr %colormap1, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %colormap5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 32
  %7 = load ptr, ptr %colormap5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 2
  %8 = load ptr, ptr %arrayidx6, align 8
  store ptr %8, ptr %colormap24, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 31
  %10 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %10, ptr %ncolors, align 4
  store i32 0, ptr %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %index, align 4
  %12 = load i32, ptr %ncolors, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %colormap0, align 8
  %14 = load i32, ptr %index, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %15 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %15 to i32
  %16 = load i32, ptr %R.addr, align 4
  %cmp8 = icmp eq i32 %conv, %16
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %colormap1, align 8
  %18 = load i32, ptr %index, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %17, i64 %idxprom10
  %19 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  %20 = load i32, ptr %G.addr, align 4
  %cmp13 = icmp eq i32 %conv12, %20
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %colormap24, align 8
  %22 = load i32, ptr %index, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %21, i64 %idxprom16
  %23 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %23 to i32
  %24 = load i32, ptr %B.addr, align 4
  %cmp19 = icmp eq i32 %conv18, %24
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true15
  br label %return

if.end:                                           ; preds = %land.lhs.true15, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %index, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %index, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %ncolors, align 4
  %cmp21 = icmp sge i32 %26, 256
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.end
  %27 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5
  store i32 56, ptr %msg_code, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %err24, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 256, ptr %arrayidx25, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err26, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %error_exit, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  call void %33(ptr noundef %34)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.end
  %35 = load i32, ptr %R.addr, align 4
  %conv28 = trunc i32 %35 to i8
  %36 = load ptr, ptr %colormap0, align 8
  %37 = load i32, ptr %ncolors, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %36, i64 %idxprom29
  store i8 %conv28, ptr %arrayidx30, align 1
  %38 = load i32, ptr %G.addr, align 4
  %conv31 = trunc i32 %38 to i8
  %39 = load ptr, ptr %colormap1, align 8
  %40 = load i32, ptr %ncolors, align 4
  %idxprom32 = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %39, i64 %idxprom32
  store i8 %conv31, ptr %arrayidx33, align 1
  %41 = load i32, ptr %B.addr, align 4
  %conv34 = trunc i32 %41 to i8
  %42 = load ptr, ptr %colormap24, align 8
  %43 = load i32, ptr %ncolors, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %42, i64 %idxprom35
  store i8 %conv34, ptr %arrayidx36, align 1
  %44 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 31
  %45 = load i32, ptr %actual_number_of_colors37, align 4
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, ptr %actual_number_of_colors37, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then
  ret void
}

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
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
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
  br i1 %12, label %do.body, label %do.end, !llvm.loop !14

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
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 1038, ptr %msg_code12, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
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
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %land.end
  %28 = load i32, ptr %val, align 4
  ret i32 %28
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
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
