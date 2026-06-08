; ModuleID = './out/real_signal_run_all/rewritten_ir/student_decision_tree/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jquant1.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jquant1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, [4 x i32], i32, [4 x ptr], [4 x ptr], i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@base_dither_matrix = internal constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 1
@select_ncolors.RGB_order = internal constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_1pass_quantizer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 152) #2
  store ptr %call, ptr %cquantize, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  store ptr %call, ptr %cquantize1, align 8
  store ptr @start_pass_1_quant, ptr %call, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %call, i64 0, i32 2
  store ptr @finish_pass_1_quant, ptr %finish_pass, align 8
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %call, i64 0, i32 3
  store ptr @new_color_map_1_quant, ptr %new_color_map, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %2, i64 0, i32 8
  store ptr null, ptr %fserrors, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %2, i64 0, i32 7
  store ptr null, ptr %odither, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8
  %cmp = icmp sgt i32 %4, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 54, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 4, ptr %msg_parm, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %8) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 22
  %12 = load i32, ptr %desired_number_of_colors, align 8
  %cmp8 = icmp sgt i32 %12, 256
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 56, ptr %msg_code11, align 8
  %15 = load ptr, ptr %13, align 8
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 256, ptr %msg_parm13, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull %16) #2
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void @create_colormap(ptr noundef %19)
  call void @create_colorindex(ptr noundef %19)
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 20
  %20 = load i32, ptr %dither_mode, align 8
  %cmp18 = icmp eq i32 %20, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void @alloc_fs_workspace(ptr noundef %21)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_1_quant(ptr noundef %cinfo, i32 noundef %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %sv_colormap, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 32
  store ptr %1, ptr %colormap, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 2
  %2 = load i32, ptr %sv_actual, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 31
  store i32 %2, ptr %actual_number_of_colors, align 4
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 20
  %4 = load i32, ptr %dither_mode, align 8
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 28
  %6 = load i32, ptr %out_color_components, align 8
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load ptr, ptr %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %7, i64 0, i32 1
  store ptr @color_quantize3, ptr %color_quantize, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %8 = load ptr, ptr %cquantize, align 8
  %color_quantize3 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %8, i64 0, i32 1
  store ptr @color_quantize, ptr %color_quantize3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 28
  %10 = load i32, ptr %out_color_components5, align 8
  %cmp6 = icmp eq i32 %10, 3
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %sw.bb4
  %11 = load ptr, ptr %cquantize, align 8
  %color_quantize9 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %11, i64 0, i32 1
  store ptr @quantize3_ord_dither, ptr %color_quantize9, align 8
  br label %if.end13

if.else10:                                        ; preds = %sw.bb4
  %12 = load ptr, ptr %cquantize, align 8
  %color_quantize12 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %12, i64 0, i32 1
  store ptr @quantize_ord_dither, ptr %color_quantize12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then7
  %13 = load ptr, ptr %cquantize, align 8
  %row_index = getelementptr inbounds %struct.my_cquantizer, ptr %13, i64 0, i32 6
  store i32 0, ptr %row_index, align 4
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %13, i64 0, i32 4
  %14 = load i32, ptr %is_padded, align 8
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end13
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void @create_colorindex(ptr noundef %15)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end13
  %16 = load ptr, ptr %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %16, i64 0, i32 7
  %17 = load ptr, ptr %odither, align 8
  %cmp16 = icmp eq ptr %17, null
  br i1 %cmp16, label %if.then17, label %sw.epilog

if.then17:                                        ; preds = %if.end15
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void @create_odither_tables(ptr noundef %18)
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %19 = load ptr, ptr %cquantize, align 8
  %color_quantize21 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %19, i64 0, i32 1
  store ptr @quantize_fs_dither, ptr %color_quantize21, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %19, i64 0, i32 9
  store i32 0, ptr %on_odd_row, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %19, i64 0, i32 8
  %20 = load ptr, ptr %fserrors, align 8
  %cmp23 = icmp eq ptr %20, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb19
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void @alloc_fs_workspace(ptr noundef %21)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb19
  %22 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 26
  %23 = load i32, ptr %output_width, align 8
  %add = add i32 %23, 2
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 1
  store i64 %mul, ptr %arraysize, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end25
  %storemerge = phi i32 [ 0, %if.end25 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 28
  %25 = load i32, ptr %out_color_components26, align 8
  %cmp27 = icmp slt i32 %storemerge, %25
  br i1 %cmp27, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %cquantize, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds %struct.my_cquantizer, ptr %26, i64 0, i32 8, i64 %idxprom
  %28 = load ptr, ptr %arrayidx30, align 8
  %29 = load i64, ptr %arraysize, align 8
  call void @jzero_far(ptr noundef %28, i64 noundef %29) #2
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  br label %for.cond, !llvm.loop !6

sw.default:                                       ; preds = %entry
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 47, ptr %msg_code, align 8
  %33 = load ptr, ptr %31, align 8
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull %31) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond, %if.end15, %if.then17, %if.then, %if.else, %sw.default
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_1_quant(ptr noundef %cinfo) #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @new_color_map_1_quant(ptr noundef %cinfo) #0 {
entry:
  %0 = load ptr, ptr %cinfo, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 5
  store i32 45, ptr %msg_code, align 8
  %1 = load ptr, ptr %cinfo, align 8
  %2 = load ptr, ptr %1, align 8
  call void %2(ptr noundef nonnull %cinfo) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_colormap(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %colormap = alloca ptr, align 8
  %total_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %blkdist = alloca i32, align 4
  %ptr = alloca i32, align 4
  %val = alloca i32, align 4
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 5
  %call = call i32 @select_ncolors(ptr noundef %cinfo, ptr noundef nonnull %Ncolors)
  store i32 %call, ptr %total_colors, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 28
  %2 = load i32, ptr %out_color_components, align 8
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store ptr %msg_parm, ptr %_mp, align 8
  %5 = load i32, ptr %total_colors, align 4
  store i32 %5, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cquantize, align 8
  %Ncolors3 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 5
  %7 = load i32, ptr %Ncolors3, align 4
  %arrayidx5 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6, i32 0, i64 1
  store i32 %7, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 5, i64 1
  %8 = load i32, ptr %arrayidx7, align 4
  %9 = load ptr, ptr %_mp, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %9, i64 2
  store i32 %8, ptr %arrayidx8, align 4
  %10 = load ptr, ptr %cquantize, align 8
  %arrayidx10 = getelementptr inbounds %struct.my_cquantizer, ptr %10, i64 0, i32 5, i64 2
  %11 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds i32, ptr %9, i64 3
  store i32 %11, ptr %arrayidx11, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 93, ptr %msg_code, align 8
  %14 = load ptr, ptr %12, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %emit_message, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16, i32 noundef 1) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 94, ptr %msg_code15, align 8
  %19 = load i32, ptr %total_colors, align 4
  %20 = load ptr, ptr %17, align 8
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 6
  store i32 %19, ptr %msg_parm17, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %emit_message20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 1
  %23 = load ptr, ptr %emit_message20, align 8
  call void %23(ptr noundef nonnull %21, i32 noundef 1) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %24 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %alloc_sarray, align 8
  %27 = load i32, ptr %total_colors, align 4
  %out_color_components21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 28
  %28 = load i32, ptr %out_color_components21, align 8
  %call22 = call ptr %26(ptr noundef %24, i32 noundef 1, i32 noundef %27, i32 noundef %28) #2
  store ptr %call22, ptr %colormap, align 8
  store i32 %27, ptr %blkdist, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end46, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc48, %for.end46 ]
  store i32 %storemerge, ptr %i, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 28
  %30 = load i32, ptr %out_color_components23, align 8
  %cmp24 = icmp slt i32 %storemerge, %30
  br i1 %cmp24, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %cquantize, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 5, i64 %idxprom
  %33 = load i32, ptr %arrayidx26, align 4
  store i32 %33, ptr %nci, align 4
  %34 = load i32, ptr %blkdist, align 4
  %div = sdiv i32 %34, %33
  store i32 %div, ptr %blksize, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc44, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc45, %for.inc44 ]
  store i32 %storemerge1, ptr %j, align 4
  %35 = load i32, ptr %nci, align 4
  %cmp28 = icmp slt i32 %storemerge1, %35
  br i1 %cmp28, label %for.body29, label %for.end46

for.body29:                                       ; preds = %for.cond27
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %j, align 4
  %39 = load i32, ptr %nci, align 4
  %sub = add nsw i32 %39, -1
  %call30 = call i32 @output_value(ptr noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %sub)
  store i32 %call30, ptr %val, align 4
  %40 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %38, %40
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.body29
  %storemerge2 = phi i32 [ %mul, %for.body29 ], [ %add42, %for.inc41 ]
  store i32 %storemerge2, ptr %ptr, align 4
  %41 = load i32, ptr %total_colors, align 4
  %cmp32 = icmp slt i32 %storemerge2, %41
  br i1 %cmp32, label %for.cond34, label %for.inc44

for.cond34:                                       ; preds = %for.cond31, %for.body36
  %storemerge3 = phi i32 [ %inc, %for.body36 ], [ 0, %for.cond31 ]
  store i32 %storemerge3, ptr %k, align 4
  %42 = load i32, ptr %blksize, align 4
  %cmp35 = icmp slt i32 %storemerge3, %42
  br i1 %cmp35, label %for.body36, label %for.inc41

for.body36:                                       ; preds = %for.cond34
  %43 = load i32, ptr %val, align 4
  %conv = trunc i32 %43 to i8
  %44 = load ptr, ptr %colormap, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %44, i64 %idxprom37
  %46 = load ptr, ptr %arrayidx38, align 8
  %47 = load i32, ptr %ptr, align 4
  %48 = load i32, ptr %k, align 4
  %add = add nsw i32 %47, %48
  %idxprom39 = sext i32 %add to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %46, i64 %idxprom39
  store i8 %conv, ptr %arrayidx40, align 1
  %49 = load i32, ptr %k, align 4
  %inc = add nsw i32 %49, 1
  br label %for.cond34, !llvm.loop !8

for.inc41:                                        ; preds = %for.cond34
  %50 = load i32, ptr %blkdist, align 4
  %51 = load i32, ptr %ptr, align 4
  %add42 = add nsw i32 %51, %50
  br label %for.cond31, !llvm.loop !9

for.inc44:                                        ; preds = %for.cond31
  %52 = load i32, ptr %j, align 4
  %inc45 = add nsw i32 %52, 1
  br label %for.cond27, !llvm.loop !10

for.end46:                                        ; preds = %for.cond27
  %53 = load i32, ptr %blksize, align 4
  store i32 %53, ptr %blkdist, align 4
  %54 = load i32, ptr %i, align 4
  %inc48 = add nsw i32 %54, 1
  br label %for.cond, !llvm.loop !11

for.end49:                                        ; preds = %for.cond
  %55 = load ptr, ptr %colormap, align 8
  %56 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %56, i64 0, i32 1
  store ptr %55, ptr %sv_colormap, align 8
  %57 = load i32, ptr %total_colors, align 4
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %56, i64 0, i32 2
  store i32 %57, ptr %sv_actual, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_colorindex(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %indexptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %val = alloca i32, align 4
  %pad = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 20
  %1 = load i32, ptr %dither_mode, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 510, ptr %pad, align 4
  %2 = load ptr, ptr %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %2, i64 0, i32 4
  store i32 1, ptr %is_padded, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %pad, align 4
  %3 = load ptr, ptr %cquantize, align 8
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 4
  store i32 0, ptr %is_padded2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i64 0, i32 2
  %6 = load ptr, ptr %alloc_sarray, align 8
  %7 = load i32, ptr %pad, align 4
  %add = add nsw i32 %7, 256
  %8 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 28
  %9 = load i32, ptr %out_color_components, align 8
  %call = call ptr %6(ptr noundef %4, i32 noundef 1, i32 noundef %add, i32 noundef %9) #2
  %10 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %10, i64 0, i32 3
  store ptr %call, ptr %colorindex, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %10, i64 0, i32 2
  %11 = load i32, ptr %sv_actual, align 8
  store i32 %11, ptr %blksize, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc42, %for.inc41 ]
  store i32 %storemerge, ptr %i, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 28
  %13 = load i32, ptr %out_color_components3, align 8
  %cmp4 = icmp slt i32 %storemerge, %13
  br i1 %cmp4, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %cquantize, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.my_cquantizer, ptr %14, i64 0, i32 5, i64 %idxprom
  %16 = load i32, ptr %arrayidx, align 4
  store i32 %16, ptr %nci, align 4
  %17 = load i32, ptr %blksize, align 4
  %div = sdiv i32 %17, %16
  store i32 %div, ptr %blksize, align 4
  %18 = load i32, ptr %pad, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %for.body
  %19 = load ptr, ptr %cquantize, align 8
  %colorindex6 = getelementptr inbounds %struct.my_cquantizer, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %colorindex6, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 %idxprom7
  %22 = load ptr, ptr %arrayidx8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 255
  store ptr %add.ptr, ptr %arrayidx8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body
  %23 = load ptr, ptr %cquantize, align 8
  %colorindex10 = getelementptr inbounds %struct.my_cquantizer, ptr %23, i64 0, i32 3
  %24 = load ptr, ptr %colorindex10, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %24, i64 %idxprom11
  %26 = load ptr, ptr %arrayidx12, align 8
  store ptr %26, ptr %indexptr, align 8
  store i32 0, ptr %val, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %nci, align 4
  %sub = add nsw i32 %29, -1
  %call13 = call i32 @largest_input_value(ptr noundef %27, i32 noundef %28, i32 noundef 0, i32 noundef %sub)
  store i32 %call13, ptr %k, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %while.end, %if.end9
  %storemerge1 = phi i32 [ 0, %if.end9 ], [ %inc22, %while.end ]
  store i32 %storemerge1, ptr %j, align 4
  %cmp15 = icmp slt i32 %storemerge1, 256
  br i1 %cmp15, label %while.cond, label %for.end

while.cond:                                       ; preds = %for.cond14, %while.body
  %30 = load i32, ptr %j, align 4
  %31 = load i32, ptr %k, align 4
  %cmp17 = icmp sgt i32 %30, %31
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load i32, ptr %i, align 4
  %34 = load i32, ptr %val, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %val, align 4
  %35 = load i32, ptr %nci, align 4
  %sub18 = add nsw i32 %35, -1
  %call19 = call i32 @largest_input_value(ptr noundef %32, i32 noundef %33, i32 noundef %inc, i32 noundef %sub18)
  store i32 %call19, ptr %k, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %36 = load i32, ptr %val, align 4
  %37 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %36, %37
  %conv = trunc i32 %mul to i8
  %38 = load ptr, ptr %indexptr, align 8
  %39 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %39 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %38, i64 %idxprom20
  store i8 %conv, ptr %arrayidx21, align 1
  %40 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %40, 1
  br label %for.cond14, !llvm.loop !13

for.end:                                          ; preds = %for.cond14
  %41 = load i32, ptr %pad, align 4
  %tobool23.not = icmp eq i32 %41, 0
  br i1 %tobool23.not, label %for.inc41, label %for.cond25

for.cond25:                                       ; preds = %for.end, %for.body28
  %storemerge2 = phi i32 [ %inc38, %for.body28 ], [ 1, %for.end ]
  store i32 %storemerge2, ptr %j, align 4
  %cmp26 = icmp slt i32 %storemerge2, 256
  br i1 %cmp26, label %for.body28, label %for.inc41

for.body28:                                       ; preds = %for.cond25
  %42 = load ptr, ptr %indexptr, align 8
  %43 = load i8, ptr %42, align 1
  %44 = load i32, ptr %j, align 4
  %sub30 = sub nsw i32 0, %44
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %42, i64 %idxprom31
  store i8 %43, ptr %arrayidx32, align 1
  %45 = load ptr, ptr %indexptr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %45, i64 255
  %46 = load i8, ptr %arrayidx33, align 1
  %47 = load i32, ptr %j, align 4
  %add34 = add nsw i32 %47, 255
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %45, i64 %idxprom35
  store i8 %46, ptr %arrayidx36, align 1
  %48 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %48, 1
  br label %for.cond25, !llvm.loop !14

for.inc41:                                        ; preds = %for.end, %for.cond25
  %49 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %49, 1
  br label %for.cond, !llvm.loop !15

for.end43:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @alloc_fs_workspace(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %1 = load i32, ptr %output_width, align 8
  %add = add i32 %1, 2
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 1
  store i64 %mul, ptr %arraysize, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 28
  %3 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %storemerge, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %alloc_large, align 8
  %7 = load i64, ptr %arraysize, align 8
  %call = call ptr %6(ptr noundef %4, i32 noundef 1, i64 noundef %7) #2
  %8 = load ptr, ptr %cquantize, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.my_cquantizer, ptr %8, i64 0, i32 8, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @color_quantize3(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %ptrin = alloca ptr, align 8
  %ptrout = alloca ptr, align 8
  %colorindex0 = alloca ptr, align 8
  %colorindex1 = alloca ptr, align 8
  %colorindex24 = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %colorindex, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %colorindex0, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %1, i64 1
  %3 = load ptr, ptr %arrayidx3, align 8
  store ptr %3, ptr %colorindex1, align 8
  %4 = load ptr, ptr %cquantize, align 8
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %colorindex5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx6, align 8
  store ptr %6, ptr %colorindex24, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 26
  %8 = load i32, ptr %output_width, align 8
  store i32 %8, ptr %width, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc29 ]
  store i32 %storemerge, ptr %row, align 4
  %9 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %9
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %input_buf.addr, align 8
  %11 = load i32, ptr %row, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx7, align 8
  store ptr %12, ptr %ptrin, align 8
  %13 = load ptr, ptr %output_buf.addr, align 8
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %13, i64 %idxprom8
  %14 = load ptr, ptr %arrayidx9, align 8
  store ptr %14, ptr %ptrout, align 8
  %15 = load i32, ptr %width, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.body12, %for.body
  %storemerge1 = phi i32 [ %15, %for.body ], [ %dec, %for.body12 ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp11.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp11.not, label %for.inc29, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %16 = load ptr, ptr %colorindex0, align 8
  %17 = load ptr, ptr %ptrin, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %ptrin, align 8
  %18 = load i8, ptr %17, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 %idxprom13
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  store i32 %conv15, ptr %pixcode, align 4
  %20 = load ptr, ptr %colorindex1, align 8
  %21 = load ptr, ptr %ptrin, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr16, ptr %ptrin, align 8
  %22 = load i8, ptr %21, align 1
  %idxprom18 = zext i8 %22 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %20, i64 %idxprom18
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %24 = load i32, ptr %pixcode, align 4
  %add = add nsw i32 %24, %conv20
  store i32 %add, ptr %pixcode, align 4
  %25 = load ptr, ptr %colorindex24, align 8
  %26 = load ptr, ptr %ptrin, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr21, ptr %ptrin, align 8
  %27 = load i8, ptr %26, align 1
  %idxprom23 = zext i8 %27 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %25, i64 %idxprom23
  %28 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %28 to i32
  %29 = load i32, ptr %pixcode, align 4
  %add26 = add nsw i32 %29, %conv25
  store i32 %add26, ptr %pixcode, align 4
  %conv27 = trunc i32 %add26 to i8
  %30 = load ptr, ptr %ptrout, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr28, ptr %ptrout, align 8
  store i8 %conv27, ptr %30, align 1
  %31 = load i32, ptr %col, align 4
  %dec = add i32 %31, -1
  br label %for.cond10, !llvm.loop !17

for.inc29:                                        ; preds = %for.cond10
  %32 = load i32, ptr %row, align 4
  %inc = add nsw i32 %32, 1
  br label %for.cond, !llvm.loop !18

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @color_quantize(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %colorindex = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %ci = alloca i32, align 4
  %ptrin = alloca ptr, align 8
  %ptrout = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %nc = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %colorindex2, align 8
  store ptr %1, ptr %colorindex, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %width, align 4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8
  store i32 %4, ptr %nc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ]
  store i32 %storemerge, ptr %row, align 4
  %5 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %5
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %input_buf.addr, align 8
  %7 = load i32, ptr %row, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %ptrin, align 8
  %9 = load ptr, ptr %output_buf.addr, align 8
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  %10 = load ptr, ptr %arrayidx4, align 8
  store ptr %10, ptr %ptrout, align 8
  %11 = load i32, ptr %width, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.end, %for.body
  %storemerge1 = phi i32 [ %11, %for.body ], [ %dec, %for.end ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp6.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp6.not, label %for.inc20, label %for.body7

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %pixcode, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.body7
  %storemerge2 = phi i32 [ 0, %for.body7 ], [ %inc, %for.body10 ]
  store i32 %storemerge2, ptr %ci, align 4
  %12 = load i32, ptr %nc, align 4
  %cmp9 = icmp slt i32 %storemerge2, %12
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %13 = load ptr, ptr %colorindex, align 8
  %14 = load i32, ptr %ci, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8
  %16 = load ptr, ptr %ptrin, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %ptrin, align 8
  %17 = load i8, ptr %16, align 1
  %idxprom13 = zext i8 %17 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %15, i64 %idxprom13
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %19 = load i32, ptr %pixcode, align 4
  %add = add nsw i32 %19, %conv15
  store i32 %add, ptr %pixcode, align 4
  %20 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %20, 1
  br label %for.cond8, !llvm.loop !19

for.end:                                          ; preds = %for.cond8
  %21 = load i32, ptr %pixcode, align 4
  %conv16 = trunc i32 %21 to i8
  %22 = load ptr, ptr %ptrout, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr17, ptr %ptrout, align 8
  store i8 %conv16, ptr %22, align 1
  %23 = load i32, ptr %col, align 4
  %dec = add i32 %23, -1
  br label %for.cond5, !llvm.loop !20

for.inc20:                                        ; preds = %for.cond5
  %24 = load i32, ptr %row, align 4
  %inc21 = add nsw i32 %24, 1
  br label %for.cond, !llvm.loop !21

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @quantize3_ord_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %input_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %colorindex0 = alloca ptr, align 8
  %colorindex1 = alloca ptr, align 8
  %colorindex24 = alloca ptr, align 8
  %dither0 = alloca ptr, align 8
  %dither1 = alloca ptr, align 8
  %dither2 = alloca ptr, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %colorindex, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %colorindex0, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %1, i64 1
  %3 = load ptr, ptr %arrayidx3, align 8
  store ptr %3, ptr %colorindex1, align 8
  %4 = load ptr, ptr %cquantize, align 8
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %colorindex5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx6, align 8
  store ptr %6, ptr %colorindex24, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 26
  %8 = load i32, ptr %output_width, align 8
  store i32 %8, ptr %width, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.end ]
  store i32 %storemerge, ptr %row, align 4
  %9 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %9
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %cquantize, align 8
  %row_index7 = getelementptr inbounds %struct.my_cquantizer, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %row_index7, align 4
  store i32 %11, ptr %row_index, align 4
  %12 = load ptr, ptr %input_buf.addr, align 8
  %13 = load i32, ptr %row, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx8, align 8
  store ptr %14, ptr %input_ptr, align 8
  %15 = load ptr, ptr %output_buf.addr, align 8
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %15, i64 %idxprom9
  %16 = load ptr, ptr %arrayidx10, align 8
  store ptr %16, ptr %output_ptr, align 8
  %17 = load ptr, ptr %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %17, i64 0, i32 7
  %18 = load ptr, ptr %odither, align 8
  %19 = load i32, ptr %row_index, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %18, i64 %idxprom12
  store ptr %arrayidx13, ptr %dither0, align 8
  %20 = load ptr, ptr %cquantize, align 8
  %arrayidx15 = getelementptr inbounds %struct.my_cquantizer, ptr %20, i64 0, i32 7, i64 1
  %21 = load ptr, ptr %arrayidx15, align 8
  %22 = load i32, ptr %row_index, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [16 x i32], ptr %21, i64 %idxprom16
  store ptr %arrayidx17, ptr %dither1, align 8
  %23 = load ptr, ptr %cquantize, align 8
  %arrayidx20 = getelementptr inbounds %struct.my_cquantizer, ptr %23, i64 0, i32 7, i64 2
  %24 = load ptr, ptr %arrayidx20, align 8
  %25 = load i32, ptr %row_index, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %24, i64 %idxprom21
  store ptr %arrayidx22, ptr %dither2, align 8
  store i32 0, ptr %col_index, align 4
  %26 = load i32, ptr %width, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.body26, %for.body
  %storemerge1 = phi i32 [ %26, %for.body ], [ %dec, %for.body26 ]
  store i32 %storemerge1, ptr %col, align 4
  %cmp25.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp25.not, label %for.end, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %27 = load ptr, ptr %colorindex0, align 8
  %28 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr, ptr %input_ptr, align 8
  %29 = load i8, ptr %28, align 1
  %conv = zext i8 %29 to i32
  %30 = load ptr, ptr %dither0, align 8
  %31 = load i32, ptr %col_index, align 4
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %30, i64 %idxprom27
  %32 = load i32, ptr %arrayidx28, align 4
  %add = add nsw i32 %32, %conv
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %27, i64 %idxprom29
  %33 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %33 to i32
  store i32 %conv31, ptr %pixcode, align 4
  %34 = load ptr, ptr %colorindex1, align 8
  %35 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr32, ptr %input_ptr, align 8
  %36 = load i8, ptr %35, align 1
  %conv33 = zext i8 %36 to i32
  %37 = load ptr, ptr %dither1, align 8
  %38 = load i32, ptr %col_index, align 4
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %37, i64 %idxprom34
  %39 = load i32, ptr %arrayidx35, align 4
  %add36 = add nsw i32 %39, %conv33
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %34, i64 %idxprom37
  %40 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %40 to i32
  %41 = load i32, ptr %pixcode, align 4
  %add40 = add nsw i32 %41, %conv39
  store i32 %add40, ptr %pixcode, align 4
  %42 = load ptr, ptr %colorindex24, align 8
  %43 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr41, ptr %input_ptr, align 8
  %44 = load i8, ptr %43, align 1
  %conv42 = zext i8 %44 to i32
  %45 = load ptr, ptr %dither2, align 8
  %46 = load i32, ptr %col_index, align 4
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %45, i64 %idxprom43
  %47 = load i32, ptr %arrayidx44, align 4
  %add45 = add nsw i32 %47, %conv42
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %42, i64 %idxprom46
  %48 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %48 to i32
  %49 = load i32, ptr %pixcode, align 4
  %add49 = add nsw i32 %49, %conv48
  store i32 %add49, ptr %pixcode, align 4
  %conv50 = trunc i32 %add49 to i8
  %50 = load ptr, ptr %output_ptr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %incdec.ptr51, ptr %output_ptr, align 8
  store i8 %conv50, ptr %50, align 1
  %51 = load i32, ptr %col_index, align 4
  %add52 = add nsw i32 %51, 1
  %and = and i32 %add52, 15
  store i32 %and, ptr %col_index, align 4
  %52 = load i32, ptr %col, align 4
  %dec = add i32 %52, -1
  br label %for.cond24, !llvm.loop !22

for.end:                                          ; preds = %for.cond24
  %53 = load i32, ptr %row_index, align 4
  %add53 = add nsw i32 %53, 1
  %and54 = and i32 %add53, 15
  store i32 %and54, ptr %row_index, align 4
  %54 = load ptr, ptr %cquantize, align 8
  %row_index55 = getelementptr inbounds %struct.my_cquantizer, ptr %54, i64 0, i32 6
  store i32 %and54, ptr %row_index55, align 4
  %55 = load i32, ptr %row, align 4
  %inc = add nsw i32 %55, 1
  br label %for.cond, !llvm.loop !23

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @quantize_ord_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %input_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %colorindex_ci = alloca ptr, align 8
  %dither = alloca ptr, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %nc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 28
  %2 = load i32, ptr %out_color_components, align 8
  store i32 %2, ptr %nc, align 4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %width, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end34, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc39, %for.end34 ]
  store i32 %storemerge, ptr %row, align 4
  %4 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %output_buf.addr, align 8
  %6 = load i32, ptr %row, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %width, align 4
  %conv = zext i32 %8 to i64
  call void @jzero_far(ptr noundef %7, i64 noundef %conv) #2
  %9 = load ptr, ptr %cquantize, align 8
  %row_index2 = getelementptr inbounds %struct.my_cquantizer, ptr %9, i64 0, i32 6
  %10 = load i32, ptr %row_index2, align 4
  store i32 %10, ptr %row_index, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.inc33 ]
  store i32 %storemerge1, ptr %ci, align 4
  %11 = load i32, ptr %nc, align 4
  %cmp4 = icmp slt i32 %storemerge1, %11
  br i1 %cmp4, label %for.body6, label %for.end34

for.body6:                                        ; preds = %for.cond3
  %12 = load ptr, ptr %input_buf.addr, align 8
  %13 = load i32, ptr %row, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %12, i64 %idxprom7
  %14 = load ptr, ptr %arrayidx8, align 8
  %15 = load i32, ptr %ci, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %input_ptr, align 8
  %16 = load ptr, ptr %output_buf.addr, align 8
  %17 = load i32, ptr %row, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %16, i64 %idxprom9
  %18 = load ptr, ptr %arrayidx10, align 8
  store ptr %18, ptr %output_ptr, align 8
  %19 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %colorindex, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %20, i64 %idxprom11
  %22 = load ptr, ptr %arrayidx12, align 8
  store ptr %22, ptr %colorindex_ci, align 8
  %23 = load ptr, ptr %cquantize, align 8
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds %struct.my_cquantizer, ptr %23, i64 0, i32 7, i64 %idxprom13
  %24 = load ptr, ptr %arrayidx14, align 8
  %25 = load i32, ptr %row_index, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr %24, i64 %idxprom15
  store ptr %arrayidx16, ptr %dither, align 8
  store i32 0, ptr %col_index, align 4
  %26 = load i32, ptr %width, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.body20, %for.body6
  %storemerge2 = phi i32 [ %26, %for.body6 ], [ %dec, %for.body20 ]
  store i32 %storemerge2, ptr %col, align 4
  %cmp18.not = icmp eq i32 %storemerge2, 0
  br i1 %cmp18.not, label %for.inc33, label %for.body20

for.body20:                                       ; preds = %for.cond17
  %27 = load ptr, ptr %colorindex_ci, align 8
  %28 = load ptr, ptr %input_ptr, align 8
  %29 = load i8, ptr %28, align 1
  %conv21 = zext i8 %29 to i32
  %30 = load ptr, ptr %dither, align 8
  %31 = load i32, ptr %col_index, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %30, i64 %idxprom22
  %32 = load i32, ptr %arrayidx23, align 4
  %add = add nsw i32 %32, %conv21
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %27, i64 %idxprom24
  %33 = load i8, ptr %arrayidx25, align 1
  %34 = load ptr, ptr %output_ptr, align 8
  %35 = load i8, ptr %34, align 1
  %add28 = add i8 %35, %33
  store i8 %add28, ptr %34, align 1
  %36 = load i32, ptr %nc, align 4
  %37 = load ptr, ptr %input_ptr, align 8
  %idx.ext30 = sext i32 %36 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %37, i64 %idx.ext30
  store ptr %add.ptr31, ptr %input_ptr, align 8
  %38 = load ptr, ptr %output_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr, ptr %output_ptr, align 8
  %39 = load i32, ptr %col_index, align 4
  %add32 = add nsw i32 %39, 1
  %and = and i32 %add32, 15
  store i32 %and, ptr %col_index, align 4
  %40 = load i32, ptr %col, align 4
  %dec = add i32 %40, -1
  br label %for.cond17, !llvm.loop !24

for.inc33:                                        ; preds = %for.cond17
  %41 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %41, 1
  br label %for.cond3, !llvm.loop !25

for.end34:                                        ; preds = %for.cond3
  %42 = load i32, ptr %row_index, align 4
  %add35 = add nsw i32 %42, 1
  %and36 = and i32 %add35, 15
  store i32 %and36, ptr %row_index, align 4
  %43 = load ptr, ptr %cquantize, align 8
  %row_index37 = getelementptr inbounds %struct.my_cquantizer, ptr %43, i64 0, i32 6
  store i32 %and36, ptr %row_index37, align 4
  %44 = load i32, ptr %row, align 4
  %inc39 = add nsw i32 %44, 1
  br label %for.cond, !llvm.loop !26

for.end40:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @create_odither_tables(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %odither = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc19, %if.end14 ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 28
  %2 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cquantize, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 5, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %nci, align 4
  store ptr null, ptr %odither, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  store i32 %storemerge1, ptr %j, align 4
  %6 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %storemerge1, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %nci, align 4
  %8 = load ptr, ptr %cquantize, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i64 0, i32 5, i64 %idxprom6
  %10 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp eq i32 %7, %10
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %11 = load ptr, ptr %cquantize, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds %struct.my_cquantizer, ptr %11, i64 0, i32 7, i64 %idxprom10
  %13 = load ptr, ptr %arrayidx11, align 8
  store ptr %13, ptr %odither, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body4
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  br label %for.cond2, !llvm.loop !27

for.end:                                          ; preds = %if.then, %for.cond2
  %15 = load ptr, ptr %odither, align 8
  %cmp12 = icmp eq ptr %15, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %nci, align 4
  %call = call ptr @make_odither_array(ptr noundef %16, i32 noundef %17)
  store ptr %call, ptr %odither, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  %18 = load ptr, ptr %odither, align 8
  %19 = load ptr, ptr %cquantize, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds %struct.my_cquantizer, ptr %19, i64 0, i32 7, i64 %idxprom16
  store ptr %18, ptr %arrayidx17, align 8
  %21 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !28

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @quantize_fs_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %cur = alloca i32, align 4
  %belowerr = alloca i32, align 4
  %bpreverr = alloca i32, align 4
  %bnexterr = alloca i32, align 4
  %delta = alloca i32, align 4
  %errorptr = alloca ptr, align 8
  %input_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %colorindex_ci = alloca ptr, align 8
  %colormap_ci = alloca ptr, align 8
  %nc = alloca i32, align 4
  %dir = alloca i32, align 4
  %dirnc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 83
  %0 = load ptr, ptr %cquantize1, align 8
  store ptr %0, ptr %cquantize, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 28
  %2 = load i32, ptr %out_color_components, align 8
  store i32 %2, ptr %nc, align 4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  store i32 %3, ptr %width, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 61
  %5 = load ptr, ptr %sample_range_limit, align 8
  store ptr %5, ptr %range_limit, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end71, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc76, %for.end71 ]
  store i32 %storemerge, ptr %row, align 4
  %6 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %storemerge, %6
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %output_buf.addr, align 8
  %8 = load i32, ptr %row, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %width, align 4
  %conv = zext i32 %10 to i64
  call void @jzero_far(ptr noundef %9, i64 noundef %conv) #2
  br label %for.cond2

for.cond2:                                        ; preds = %for.end, %for.body
  %storemerge1 = phi i32 [ 0, %for.body ], [ %inc, %for.end ]
  store i32 %storemerge1, ptr %ci, align 4
  %11 = load i32, ptr %nc, align 4
  %cmp3 = icmp slt i32 %storemerge1, %11
  br i1 %cmp3, label %for.body5, label %for.end71

for.body5:                                        ; preds = %for.cond2
  %12 = load ptr, ptr %input_buf.addr, align 8
  %13 = load i32, ptr %row, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %12, i64 %idxprom6
  %14 = load ptr, ptr %arrayidx7, align 8
  %15 = load i32, ptr %ci, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %input_ptr, align 8
  %16 = load ptr, ptr %output_buf.addr, align 8
  %17 = load i32, ptr %row, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8
  store ptr %18, ptr %output_ptr, align 8
  %19 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %19, i64 0, i32 9
  %20 = load i32, ptr %on_odd_row, align 8
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body5
  %21 = load i32, ptr %width, align 4
  %sub = add i32 %21, -1
  %22 = load i32, ptr %nc, align 4
  %mul10 = mul i32 %sub, %22
  %23 = load ptr, ptr %input_ptr, align 8
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %23, i64 %idx.ext11
  store ptr %add.ptr12, ptr %input_ptr, align 8
  %24 = load i32, ptr %width, align 4
  %sub13 = add i32 %24, -1
  %25 = load ptr, ptr %output_ptr, align 8
  %idx.ext14 = zext i32 %sub13 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %25, i64 %idx.ext14
  store ptr %add.ptr15, ptr %output_ptr, align 8
  store i32 -1, ptr %dir, align 4
  %26 = load i32, ptr %nc, align 4
  %sub16 = sub nsw i32 0, %26
  store i32 %sub16, ptr %dirnc, align 4
  %27 = load ptr, ptr %cquantize, align 8
  %28 = load i32, ptr %ci, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds %struct.my_cquantizer, ptr %27, i64 0, i32 8, i64 %idxprom17
  %29 = load ptr, ptr %arrayidx18, align 8
  %30 = load i32, ptr %width, align 4
  %add = add i32 %30, 1
  %idx.ext19 = zext i32 %add to i64
  %add.ptr20 = getelementptr inbounds i16, ptr %29, i64 %idx.ext19
  br label %if.end

if.else:                                          ; preds = %for.body5
  store i32 1, ptr %dir, align 4
  %31 = load i32, ptr %nc, align 4
  store i32 %31, ptr %dirnc, align 4
  %32 = load ptr, ptr %cquantize, align 8
  %33 = load i32, ptr %ci, align 4
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds %struct.my_cquantizer, ptr %32, i64 0, i32 8, i64 %idxprom22
  %34 = load ptr, ptr %arrayidx23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge2 = phi ptr [ %34, %if.else ], [ %add.ptr20, %if.then ]
  store ptr %storemerge2, ptr %errorptr, align 8
  %35 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %35, i64 0, i32 3
  %36 = load ptr, ptr %colorindex, align 8
  %37 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %37 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %36, i64 %idxprom24
  %38 = load ptr, ptr %arrayidx25, align 8
  store ptr %38, ptr %colorindex_ci, align 8
  %39 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %39, i64 0, i32 1
  %40 = load ptr, ptr %sv_colormap, align 8
  %41 = load i32, ptr %ci, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %40, i64 %idxprom26
  %42 = load ptr, ptr %arrayidx27, align 8
  store ptr %42, ptr %colormap_ci, align 8
  store i32 0, ptr %cur, align 4
  store i32 0, ptr %bpreverr, align 4
  store i32 0, ptr %belowerr, align 4
  %43 = load i32, ptr %width, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.body31, %if.end
  %storemerge3 = phi i32 [ %43, %if.end ], [ %dec, %for.body31 ]
  store i32 %storemerge3, ptr %col, align 4
  %cmp29.not = icmp eq i32 %storemerge3, 0
  br i1 %cmp29.not, label %for.end, label %for.body31

for.body31:                                       ; preds = %for.cond28
  %44 = load i32, ptr %cur, align 4
  %45 = load ptr, ptr %errorptr, align 8
  %46 = load i32, ptr %dir, align 4
  %idxprom32 = sext i32 %46 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %45, i64 %idxprom32
  %47 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %47 to i32
  %add35 = add nsw i32 %44, %conv34
  %add36 = add nsw i32 %add35, 8
  %shr = ashr i32 %add36, 4
  store i32 %shr, ptr %cur, align 4
  %48 = load ptr, ptr %input_ptr, align 8
  %49 = load i8, ptr %48, align 1
  %conv37 = zext i8 %49 to i32
  %add38 = add nsw i32 %shr, %conv37
  store i32 %add38, ptr %cur, align 4
  %50 = load ptr, ptr %range_limit, align 8
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %50, i64 %idxprom39
  %51 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %51 to i32
  store i32 %conv41, ptr %cur, align 4
  %52 = load ptr, ptr %colorindex_ci, align 8
  %idxprom42 = zext i8 %51 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %52, i64 %idxprom42
  %53 = load i8, ptr %arrayidx43, align 1
  %54 = load ptr, ptr %output_ptr, align 8
  %55 = load i8, ptr %54, align 1
  %add48 = add i8 %55, %53
  store i8 %add48, ptr %54, align 1
  %56 = load ptr, ptr %colormap_ci, align 8
  %idxprom50 = zext i8 %53 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %56, i64 %idxprom50
  %57 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %57 to i32
  %58 = load i32, ptr %cur, align 4
  %sub53 = sub nsw i32 %58, %conv52
  store i32 %sub53, ptr %cur, align 4
  store i32 %sub53, ptr %bnexterr, align 4
  %mul54 = shl nsw i32 %sub53, 1
  store i32 %mul54, ptr %delta, align 4
  %add55 = mul nsw i32 %sub53, 3
  store i32 %add55, ptr %cur, align 4
  %59 = load i32, ptr %bpreverr, align 4
  %add56 = add nsw i32 %59, %add55
  %conv57 = trunc i32 %add56 to i16
  %60 = load ptr, ptr %errorptr, align 8
  store i16 %conv57, ptr %60, align 2
  %61 = load i32, ptr %delta, align 4
  %62 = load i32, ptr %cur, align 4
  %add59 = add nsw i32 %62, %61
  store i32 %add59, ptr %cur, align 4
  %63 = load i32, ptr %belowerr, align 4
  %add60 = add nsw i32 %63, %add59
  store i32 %add60, ptr %bpreverr, align 4
  %64 = load i32, ptr %bnexterr, align 4
  store i32 %64, ptr %belowerr, align 4
  %65 = load i32, ptr %delta, align 4
  %66 = load i32, ptr %cur, align 4
  %add61 = add nsw i32 %66, %65
  store i32 %add61, ptr %cur, align 4
  %67 = load i32, ptr %dirnc, align 4
  %68 = load ptr, ptr %input_ptr, align 8
  %idx.ext62 = sext i32 %67 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %68, i64 %idx.ext62
  store ptr %add.ptr63, ptr %input_ptr, align 8
  %69 = load i32, ptr %dir, align 4
  %70 = load ptr, ptr %output_ptr, align 8
  %idx.ext64 = sext i32 %69 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %70, i64 %idx.ext64
  store ptr %add.ptr65, ptr %output_ptr, align 8
  %71 = load ptr, ptr %errorptr, align 8
  %idx.ext66 = sext i32 %69 to i64
  %add.ptr67 = getelementptr inbounds i16, ptr %71, i64 %idx.ext66
  store ptr %add.ptr67, ptr %errorptr, align 8
  %72 = load i32, ptr %col, align 4
  %dec = add i32 %72, -1
  br label %for.cond28, !llvm.loop !29

for.end:                                          ; preds = %for.cond28
  %73 = load i32, ptr %bpreverr, align 4
  %conv68 = trunc i32 %73 to i16
  %74 = load ptr, ptr %errorptr, align 8
  store i16 %conv68, ptr %74, align 2
  %75 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %75, 1
  br label %for.cond2, !llvm.loop !30

for.end71:                                        ; preds = %for.cond2
  %76 = load ptr, ptr %cquantize, align 8
  %on_odd_row72 = getelementptr inbounds %struct.my_cquantizer, ptr %76, i64 0, i32 9
  %77 = load i32, ptr %on_odd_row72, align 8
  %tobool73.not = icmp eq i32 %77, 0
  %cond = zext i1 %tobool73.not to i32
  %on_odd_row74 = getelementptr inbounds %struct.my_cquantizer, ptr %76, i64 0, i32 9
  store i32 %cond, ptr %on_odd_row74, align 8
  %78 = load i32, ptr %row, align 4
  %inc76 = add nsw i32 %78, 1
  br label %for.cond, !llvm.loop !31

for.end77:                                        ; preds = %for.cond
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @make_odither_array(ptr noundef %cinfo, i32 noundef %ncolors) #0 {
entry:
  %odither = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 1024) #2
  store ptr %call, ptr %odither, align 8
  %sub = add nsw i32 %ncolors, -1
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 9
  store i64 %mul, ptr %den, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  store i32 %storemerge, ptr %j, align 4
  %cmp = icmp slt i32 %storemerge, 16
  br i1 %cmp, label %for.cond2, label %for.end25

for.cond2:                                        ; preds = %for.cond, %cond.end
  %storemerge1 = phi i32 [ %inc, %cond.end ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %k, align 4
  %cmp3 = icmp slt i32 %storemerge1, 16
  br i1 %cmp3, label %for.body5, label %for.inc23

for.body5:                                        ; preds = %for.cond2
  %2 = load i32, ptr %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, ptr %k, align 4
  %idxprom6 = sext i32 %3 to i64
  %arrayidx7 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %idxprom, i64 %idxprom6
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i64
  %5 = mul nsw i64 %conv8, -510
  %mul12 = add nsw i64 %5, 65025
  store i64 %mul12, ptr %num, align 8
  %cmp13 = icmp slt i8 %4, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body5
  %6 = load i64, ptr %num, align 8
  %7 = load i64, ptr %den, align 8
  %div2 = sdiv i64 %6, %7
  br label %cond.end

cond.false:                                       ; preds = %for.body5
  %8 = load i64, ptr %num, align 8
  %9 = load i64, ptr %den, align 8
  %div17 = sdiv i64 %8, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div2, %cond.true ], [ %div17, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  %10 = load ptr, ptr %odither, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %11 to i64
  %12 = load i32, ptr %k, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %10, i64 %idxprom19, i64 %idxprom21
  store i32 %conv18, ptr %arrayidx22, align 4
  %13 = load i32, ptr %k, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond2, !llvm.loop !32

for.inc23:                                        ; preds = %for.cond2
  %14 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %14, 1
  br label %for.cond, !llvm.loop !33

for.end25:                                        ; preds = %for.cond
  %15 = load ptr, ptr %odither, align 8
  ret ptr %15
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @select_ncolors(ptr noundef %cinfo, ptr noundef %Ncolors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %Ncolors.addr = alloca ptr, align 8
  %nc = alloca i32, align 4
  %max_colors = alloca i32, align 4
  %total_colors = alloca i32, align 4
  %iroot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i32, align 4
  %temp = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %Ncolors, ptr %Ncolors.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 28
  %0 = load i32, ptr %out_color_components, align 8
  store i32 %0, ptr %nc, align 4
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 22
  %1 = load i32, ptr %desired_number_of_colors, align 8
  store i32 %1, ptr %max_colors, align 4
  store i32 1, ptr %iroot, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, ptr %iroot, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %iroot, align 4
  %conv = sext i32 %inc to i64
  store i64 %conv, ptr %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.body
  %storemerge = phi i32 [ 1, %do.body ], [ %inc3, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %3 = load i32, ptr %nc, align 4
  %cmp = icmp slt i32 %storemerge, %3
  br i1 %cmp, label %for.body, label %do.cond

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %iroot, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64, ptr %temp, align 8
  %mul = mul nsw i64 %5, %conv2
  store i64 %mul, ptr %temp, align 8
  %6 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !34

do.cond:                                          ; preds = %for.cond
  %7 = load i64, ptr %temp, align 8
  %8 = load i32, ptr %max_colors, align 4
  %conv4 = sext i32 %8 to i64
  %cmp5.not = icmp sgt i64 %7, %conv4
  br i1 %cmp5.not, label %do.end, label %do.body, !llvm.loop !35

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %iroot, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %iroot, align 4
  %cmp7 = icmp slt i32 %9, 3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 55, ptr %msg_code, align 8
  %12 = load i64, ptr %temp, align 8
  %conv9 = trunc i64 %12 to i32
  %13 = load ptr, ptr %10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 6
  store i32 %conv9, ptr %msg_parm, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull %14) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 1, ptr %total_colors, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.body15, %if.end
  %storemerge1 = phi i32 [ 0, %if.end ], [ %inc19, %for.body15 ]
  store i32 %storemerge1, ptr %i, align 4
  %17 = load i32, ptr %nc, align 4
  %cmp13 = icmp slt i32 %storemerge1, %17
  br i1 %cmp13, label %for.body15, label %do.body21

for.body15:                                       ; preds = %for.cond12
  %18 = load i32, ptr %iroot, align 4
  %19 = load ptr, ptr %Ncolors.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %19, i64 %idxprom
  store i32 %18, ptr %arrayidx16, align 4
  %21 = load i32, ptr %total_colors, align 4
  %mul17 = mul nsw i32 %21, %18
  store i32 %mul17, ptr %total_colors, align 4
  %22 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %22, 1
  br label %for.cond12, !llvm.loop !36

do.body21:                                        ; preds = %for.cond12, %do.cond49
  store i32 0, ptr %changed, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %if.end41, %do.body21
  %storemerge2 = phi i32 [ 0, %do.body21 ], [ %inc47, %if.end41 ]
  store i32 %storemerge2, ptr %i, align 4
  %23 = load i32, ptr %nc, align 4
  %cmp23 = icmp slt i32 %storemerge2, %23
  br i1 %cmp23, label %for.body25, label %do.cond49

for.body25:                                       ; preds = %for.cond22
  %24 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 10
  %25 = load i32, ptr %out_color_space, align 8
  %cmp26 = icmp eq i32 %25, 2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body25
  %26 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %idxprom28
  %27 = load i32, ptr %arrayidx29, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body25
  %28 = load i32, ptr %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, ptr %j, align 4
  %29 = load i32, ptr %total_colors, align 4
  %30 = load ptr, ptr %Ncolors.addr, align 8
  %idxprom30 = sext i32 %cond to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %30, i64 %idxprom30
  %31 = load i32, ptr %arrayidx31, align 4
  %div = sdiv i32 %29, %31
  %conv32 = sext i32 %div to i64
  store i64 %conv32, ptr %temp, align 8
  %32 = load ptr, ptr %Ncolors.addr, align 8
  %33 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %32, i64 %idxprom33
  %34 = load i32, ptr %arrayidx34, align 4
  %add = add nsw i32 %34, 1
  %conv35 = sext i32 %add to i64
  %35 = load i64, ptr %temp, align 8
  %mul36 = mul nsw i64 %35, %conv35
  store i64 %mul36, ptr %temp, align 8
  %36 = load i32, ptr %max_colors, align 4
  %conv37 = sext i32 %36 to i64
  %cmp38 = icmp sgt i64 %mul36, %conv37
  br i1 %cmp38, label %do.cond49, label %if.end41

if.end41:                                         ; preds = %cond.end
  %37 = load ptr, ptr %Ncolors.addr, align 8
  %38 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %38 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %37, i64 %idxprom42
  %39 = load i32, ptr %arrayidx43, align 4
  %inc44 = add nsw i32 %39, 1
  store i32 %inc44, ptr %arrayidx43, align 4
  %40 = load i64, ptr %temp, align 8
  %conv45 = trunc i64 %40 to i32
  store i32 %conv45, ptr %total_colors, align 4
  store i32 1, ptr %changed, align 4
  %41 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %41, 1
  br label %for.cond22, !llvm.loop !37

do.cond49:                                        ; preds = %for.cond22, %cond.end
  %42 = load i32, ptr %changed, align 4
  %tobool.not = icmp eq i32 %42, 0
  br i1 %tobool.not, label %do.end50, label %do.body21, !llvm.loop !38

do.end50:                                         ; preds = %do.cond49
  %43 = load i32, ptr %total_colors, align 4
  ret i32 %43
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @output_value(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj) #0 {
entry:
  %conv = sext i32 %j to i64
  %mul = mul nsw i64 %conv, 255
  %div = sdiv i32 %maxj, 2
  %conv1 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv1
  %conv2 = sext i32 %maxj to i64
  %div3 = sdiv i64 %add, %conv2
  %conv4 = trunc i64 %div3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @largest_input_value(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj) #0 {
entry:
  %maxj.addr = alloca i32, align 4
  store i32 %maxj, ptr %maxj.addr, align 4
  %mul = shl nsw i32 %j, 1
  %add = or i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 255
  %conv2 = sext i32 %maxj to i64
  %add3 = add nsw i64 %mul1, %conv2
  %0 = load i32, ptr %maxj.addr, align 4
  %mul4 = shl nsw i32 %0, 1
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
