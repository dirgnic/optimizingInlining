; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_never_inline/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_rdcolmap.prepared.ll'
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
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %alloc_sarray, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i32 noundef 256, i32 noundef 3) #2
  %2 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 32
  store ptr %call, ptr %colormap, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 31
  store i32 0, ptr %actual_number_of_colors, align 4
  %3 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %3) #2
  switch i32 %call1, label %sw.default [
    i32 71, label %sw.bb
    i32 80, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %infile.addr, align 8
  call void @read_gif_map(ptr noundef %4, ptr noundef %5)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %infile.addr, align 8
  call void @read_ppm_map(ptr noundef %6, ptr noundef %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr noundef nonnull %8) #2
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %infile.addr, align 8
  %call = call i32 @getc(ptr noundef %0) #2
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 %idxprom
  store i32 %call, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 8
  call void %5(ptr noundef nonnull %2) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 1
  %7 = load i32, ptr %arrayidx3, align 4
  %cmp4.not = icmp eq i32 %7, 73
  %arrayidx5 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 2
  %8 = load i32, ptr %arrayidx5, align 4
  %cmp6.not = icmp eq i32 %8, 70
  %or.cond = select i1 %cmp4.not, i1 %cmp6.not, i1 false
  br i1 %or.cond, label %if.end12, label %if.then7

if.then7:                                         ; preds = %for.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 1038, ptr %msg_code9, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr noundef nonnull %9) #2
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then7
  %arrayidx13 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 10
  %13 = load i32, ptr %arrayidx13, align 4
  %and = and i32 %13, 128
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 1038, ptr %msg_code17, align 8
  %16 = load ptr, ptr %14, align 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull %14) #2
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12
  %arrayidx21 = getelementptr inbounds [13 x i32], ptr %header, i64 0, i64 10
  %18 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %18, 7
  %shl = shl i32 2, %and22
  store i32 %shl, ptr %colormaplen, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %if.end39, %if.end20
  %storemerge1 = phi i32 [ 0, %if.end20 ], [ %inc44, %if.end39 ]
  store i32 %storemerge1, ptr %i, align 4
  %19 = load i32, ptr %colormaplen, align 4
  %cmp24 = icmp slt i32 %storemerge1, %19
  br i1 %cmp24, label %for.body25, label %for.end45

for.body25:                                       ; preds = %for.cond23
  %20 = load ptr, ptr %infile.addr, align 8
  %call26 = call i32 @getc(ptr noundef %20) #2
  store i32 %call26, ptr %R, align 4
  %call27 = call i32 @getc(ptr noundef %20) #2
  store i32 %call27, ptr %G, align 4
  %call28 = call i32 @getc(ptr noundef %20) #2
  store i32 %call28, ptr %B, align 4
  %cmp29 = icmp eq i32 %call26, -1
  %21 = load i32, ptr %G, align 4
  %cmp31 = icmp eq i32 %21, -1
  %or.cond2 = select i1 %cmp29, i1 true, i1 %cmp31
  %22 = load i32, ptr %B, align 4
  %cmp33 = icmp eq i32 %22, -1
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp33
  br i1 %or.cond3, label %if.then34, label %if.end39

if.then34:                                        ; preds = %for.body25
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 1038, ptr %msg_code36, align 8
  %25 = load ptr, ptr %23, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull %23) #2
  br label %if.end39

if.end39:                                         ; preds = %for.body25, %if.then34
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load i32, ptr %R, align 4
  %29 = load i32, ptr %G, align 4
  %30 = load i32, ptr %B, align 4
  call void @add_map_entry(ptr noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30)
  %31 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %31, 1
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
  %call = call i32 @getc(ptr noundef %infile) #2
  store i32 %call, ptr %c, align 4
  %call1 = call i32 @read_pbm_integer(ptr noundef %cinfo, ptr noundef %infile)
  store i32 %call1, ptr %w, align 4
  %call2 = call i32 @read_pbm_integer(ptr noundef %cinfo, ptr noundef %infile)
  store i32 %call2, ptr %h, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load ptr, ptr %infile.addr, align 8
  %call3 = call i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  store i32 %call3, ptr %maxval, align 4
  %2 = load i32, ptr %w, align 4
  %cmp = icmp eq i32 %2, 0
  %3 = load i32, ptr %h, align 4
  %cmp4 = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  %4 = load i32, ptr %maxval, align 4
  %cmp6 = icmp eq i32 %4, 0
  %or.cond4 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 1038, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %9 = load i32, ptr %maxval, align 4
  %cmp8.not = icmp eq i32 %9, 255
  br i1 %cmp8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 1038, ptr %msg_code11, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr noundef nonnull %10) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end
  %14 = load i32, ptr %c, align 4
  switch i32 %14, label %sw.default [
    i32 51, label %for.cond
    i32 54, label %for.cond26
  ]

for.cond:                                         ; preds = %if.end14, %for.inc22
  %storemerge2 = phi i32 [ %inc23, %for.inc22 ], [ 0, %if.end14 ]
  store i32 %storemerge2, ptr %row, align 4
  %15 = load i32, ptr %h, align 4
  %cmp15 = icmp ult i32 %storemerge2, %15
  br i1 %cmp15, label %for.cond16, label %sw.epilog

for.cond16:                                       ; preds = %for.cond, %for.body18
  %storemerge3 = phi i32 [ %inc, %for.body18 ], [ 0, %for.cond ]
  store i32 %storemerge3, ptr %col, align 4
  %16 = load i32, ptr %w, align 4
  %cmp17 = icmp ult i32 %storemerge3, %16
  br i1 %cmp17, label %for.body18, label %for.inc22

for.body18:                                       ; preds = %for.cond16
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %infile.addr, align 8
  %call19 = call i32 @read_pbm_integer(ptr noundef %17, ptr noundef %18)
  store i32 %call19, ptr %R, align 4
  %call20 = call i32 @read_pbm_integer(ptr noundef %17, ptr noundef %18)
  store i32 %call20, ptr %G, align 4
  %call21 = call i32 @read_pbm_integer(ptr noundef %17, ptr noundef %18)
  store i32 %call21, ptr %B, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void @add_map_entry(ptr noundef %19, i32 noundef %call19, i32 noundef %call20, i32 noundef %call21)
  %20 = load i32, ptr %col, align 4
  %inc = add i32 %20, 1
  br label %for.cond16, !llvm.loop !9

for.inc22:                                        ; preds = %for.cond16
  %21 = load i32, ptr %row, align 4
  %inc23 = add i32 %21, 1
  br label %for.cond, !llvm.loop !10

for.cond26:                                       ; preds = %if.end14, %for.inc49
  %storemerge = phi i32 [ %inc50, %for.inc49 ], [ 0, %if.end14 ]
  store i32 %storemerge, ptr %row, align 4
  %22 = load i32, ptr %h, align 4
  %cmp27 = icmp ult i32 %storemerge, %22
  br i1 %cmp27, label %for.cond29, label %sw.epilog

for.cond29:                                       ; preds = %for.cond26, %if.end45
  %storemerge1 = phi i32 [ %inc47, %if.end45 ], [ 0, %for.cond26 ]
  store i32 %storemerge1, ptr %col, align 4
  %23 = load i32, ptr %w, align 4
  %cmp30 = icmp ult i32 %storemerge1, %23
  br i1 %cmp30, label %for.body31, label %for.inc49

for.body31:                                       ; preds = %for.cond29
  %24 = load ptr, ptr %infile.addr, align 8
  %call32 = call i32 @pbm_getc(ptr noundef %24)
  store i32 %call32, ptr %R, align 4
  %call33 = call i32 @pbm_getc(ptr noundef %24)
  store i32 %call33, ptr %G, align 4
  %call34 = call i32 @pbm_getc(ptr noundef %24)
  store i32 %call34, ptr %B, align 4
  %cmp35 = icmp eq i32 %call32, -1
  %25 = load i32, ptr %G, align 4
  %cmp37 = icmp eq i32 %25, -1
  %or.cond5 = select i1 %cmp35, i1 true, i1 %cmp37
  %26 = load i32, ptr %B, align 4
  %cmp39 = icmp eq i32 %26, -1
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp39
  br i1 %or.cond6, label %if.then40, label %if.end45

if.then40:                                        ; preds = %for.body31
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %msg_code42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 1038, ptr %msg_code42, align 8
  %29 = load ptr, ptr %27, align 8
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull %27) #2
  br label %if.end45

if.end45:                                         ; preds = %for.body31, %if.then40
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load i32, ptr %R, align 4
  %33 = load i32, ptr %G, align 4
  %34 = load i32, ptr %B, align 4
  call void @add_map_entry(ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  %35 = load i32, ptr %col, align 4
  %inc47 = add i32 %35, 1
  br label %for.cond29, !llvm.loop !11

for.inc49:                                        ; preds = %for.cond29
  %36 = load i32, ptr %row, align 4
  %inc50 = add i32 %36, 1
  br label %for.cond26, !llvm.loop !12

sw.default:                                       ; preds = %if.end14
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 1038, ptr %msg_code53, align 8
  %39 = load ptr, ptr %37, align 8
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull %37) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond26, %for.cond, %sw.default
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
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 32
  %0 = load ptr, ptr %colormap, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %colormap0, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %colormap2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 32
  %3 = load ptr, ptr %colormap2, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx3, align 8
  store ptr %4, ptr %colormap1, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %arrayidx6, align 8
  store ptr %5, ptr %colormap24, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 31
  %7 = load i32, ptr %actual_number_of_colors, align 4
  store i32 %7, ptr %ncolors, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %index, align 4
  %8 = load i32, ptr %ncolors, align 4
  %cmp = icmp slt i32 %storemerge, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %colormap0, align 8
  %10 = load i32, ptr %index, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32, ptr %R.addr, align 4
  %cmp8 = icmp eq i32 %12, %conv
  br i1 %cmp8, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %colormap1, align 8
  %14 = load i32, ptr %index, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 %idxprom10
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %15 to i32
  %16 = load i32, ptr %G.addr, align 4
  %cmp13 = icmp eq i32 %16, %conv12
  br i1 %cmp13, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %colormap24, align 8
  %18 = load i32, ptr %index, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %17, i64 %idxprom16
  %19 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %20 = load i32, ptr %B.addr, align 4
  %cmp19 = icmp eq i32 %20, %conv18
  br i1 %cmp19, label %return, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true15
  %21 = load i32, ptr %index, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %22 = load i32, ptr %ncolors, align 4
  %cmp21 = icmp sgt i32 %22, 255
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 56, ptr %msg_code, align 8
  %25 = load ptr, ptr %23, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 6
  store i32 256, ptr %msg_parm, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull %26) #2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.end
  %29 = load i32, ptr %R.addr, align 4
  %conv28 = trunc i32 %29 to i8
  %30 = load ptr, ptr %colormap0, align 8
  %31 = load i32, ptr %ncolors, align 4
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %30, i64 %idxprom29
  store i8 %conv28, ptr %arrayidx30, align 1
  %32 = load i32, ptr %G.addr, align 4
  %conv31 = trunc i32 %32 to i8
  %33 = load ptr, ptr %colormap1, align 8
  %34 = load i32, ptr %ncolors, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %33, i64 %idxprom32
  store i8 %conv31, ptr %arrayidx33, align 1
  %35 = load i32, ptr %B.addr, align 4
  %conv34 = trunc i32 %35 to i8
  %36 = load ptr, ptr %colormap24, align 8
  %37 = load i32, ptr %ncolors, align 4
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %36, i64 %idxprom35
  store i8 %conv34, ptr %arrayidx36, align 1
  %38 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i64 0, i32 31
  %39 = load i32, ptr %actual_number_of_colors37, align 4
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, ptr %actual_number_of_colors37, align 4
  br label %return

return:                                           ; preds = %land.lhs.true15, %if.end27
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
  store i32 1038, ptr %msg_code, align 8
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
  br i1 %or.cond3, label %do.body, label %do.end, !llvm.loop !14

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
  store i32 1038, ptr %msg_code12, align 8
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
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %21 = load i32, ptr %val, align 4
  ret i32 %21
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
