; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jquant1.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jquant1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, [4 x i32], i32, [4 x ptr], [4 x ptr], i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@base_dither_matrix = internal constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 1
@select_ncolors.RGB_order = internal constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_1pass_quantizer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 152)
  store ptr %call, ptr %cquantize, align 8
  %4 = load ptr, ptr %cquantize, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 83
  store ptr %4, ptr %cquantize1, align 8
  %6 = load ptr, ptr %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub, i32 0, i32 0
  store ptr @start_pass_1_quant, ptr %start_pass, align 8
  %7 = load ptr, ptr %cquantize, align 8
  %pub2 = getelementptr inbounds %struct.my_cquantizer, ptr %7, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub2, i32 0, i32 2
  store ptr @finish_pass_1_quant, ptr %finish_pass, align 8
  %8 = load ptr, ptr %cquantize, align 8
  %pub3 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub3, i32 0, i32 3
  store ptr @new_color_map_1_quant, ptr %new_color_map, align 8
  %9 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 0
  store ptr null, ptr %arrayidx, align 8
  %10 = load ptr, ptr %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %10, i32 0, i32 7
  %arrayidx4 = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 0
  store ptr null, ptr %arrayidx4, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 28
  %12 = load i32, ptr %out_color_components, align 8
  %cmp = icmp sgt i32 %12, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5
  store i32 54, ptr %msg_code, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err5, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 4, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 22
  %22 = load i32, ptr %desired_number_of_colors, align 8
  %cmp8 = icmp sgt i32 %22, 256
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5
  store i32 56, ptr %msg_code11, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err12, align 8
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 6
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %msg_parm13, i64 0, i64 0
  store i32 256, ptr %arrayidx14, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %err15, align 8
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %error_exit16, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  call void %29(ptr noundef %30)
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_0(ptr noundef %31)
  %32 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_1(ptr noundef %32)
  %33 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 20
  %34 = load i32, ptr %dither_mode, align 8
  %cmp18 = icmp eq i32 %34, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_2(ptr noundef %35)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_1_quant(ptr noundef %cinfo, i32 noundef %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %is_pre_scan, ptr %is_pre_scan.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %sv_colormap, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 32
  store ptr %3, ptr %colormap, align 8
  %5 = load ptr, ptr %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %sv_actual, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 31
  store i32 %6, ptr %actual_number_of_colors, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 20
  %9 = load i32, ptr %dither_mode, align 8
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 28
  %11 = load i32, ptr %out_color_components, align 8
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %12 = load ptr, ptr %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub, i32 0, i32 1
  store ptr @color_quantize3, ptr %color_quantize, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %cquantize, align 8
  %pub2 = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 0
  %color_quantize3 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub2, i32 0, i32 1
  store ptr @color_quantize, ptr %color_quantize3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 28
  %15 = load i32, ptr %out_color_components5, align 8
  %cmp6 = icmp eq i32 %15, 3
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %sw.bb4
  %16 = load ptr, ptr %cquantize, align 8
  %pub8 = getelementptr inbounds %struct.my_cquantizer, ptr %16, i32 0, i32 0
  %color_quantize9 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub8, i32 0, i32 1
  store ptr @quantize3_ord_dither, ptr %color_quantize9, align 8
  br label %if.end13

if.else10:                                        ; preds = %sw.bb4
  %17 = load ptr, ptr %cquantize, align 8
  %pub11 = getelementptr inbounds %struct.my_cquantizer, ptr %17, i32 0, i32 0
  %color_quantize12 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub11, i32 0, i32 1
  store ptr @quantize_ord_dither, ptr %color_quantize12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then7
  %18 = load ptr, ptr %cquantize, align 8
  %row_index = getelementptr inbounds %struct.my_cquantizer, ptr %18, i32 0, i32 6
  store i32 0, ptr %row_index, align 4
  %19 = load ptr, ptr %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %is_padded, align 8
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end13
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_3(ptr noundef %21)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end13
  %22 = load ptr, ptr %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %22, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 0
  %23 = load ptr, ptr %arrayidx, align 8
  %cmp16 = icmp eq ptr %23, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_4(ptr noundef %24)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %25 = load ptr, ptr %cquantize, align 8
  %pub20 = getelementptr inbounds %struct.my_cquantizer, ptr %25, i32 0, i32 0
  %color_quantize21 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub20, i32 0, i32 1
  store ptr @quantize_fs_dither, ptr %color_quantize21, align 8
  %26 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %26, i32 0, i32 9
  store i32 0, ptr %on_odd_row, align 8
  %27 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %27, i32 0, i32 8
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 0
  %28 = load ptr, ptr %arrayidx22, align 8
  %cmp23 = icmp eq ptr %28, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb19
  %29 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_5(ptr noundef %29)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb19
  %30 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 26
  %31 = load i32, ptr %output_width, align 8
  %add = add i32 %31, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, ptr %arraysize, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %32 = load i32, ptr %i, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 28
  %34 = load i32, ptr %out_color_components26, align 8
  %cmp27 = icmp slt i32 %32, %34
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %cquantize, align 8
  %fserrors29 = getelementptr inbounds %struct.my_cquantizer, ptr %35, i32 0, i32 8
  %36 = load i32, ptr %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [4 x ptr], ptr %fserrors29, i64 0, i64 %idxprom
  %37 = load ptr, ptr %arrayidx30, align 8
  %38 = load i64, ptr %arraysize, align 8
  call void @jzero_far(ptr noundef %37, i64 noundef %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 5
  store i32 47, ptr %msg_code, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err31, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %error_exit, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void %44(ptr noundef %45)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %if.end18, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_1_quant(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @new_color_map_1_quant(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i32 0, i32 5
  store i32 45, ptr %msg_code, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %error_exit, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %3, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 0
  %call = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_6(ptr noundef %2, ptr noundef %arraydecay)
  store i32 %call, ptr %total_colors, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 28
  %5 = load i32, ptr %out_color_components, align 8
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arraydecay2 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay2, ptr %_mp, align 8
  %8 = load i32, ptr %total_colors, align 4
  %9 = load ptr, ptr %_mp, align 8
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 0
  store i32 %8, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cquantize, align 8
  %Ncolors3 = getelementptr inbounds %struct.my_cquantizer, ptr %10, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %Ncolors3, i64 0, i64 0
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %_mp, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 1
  store i32 %11, ptr %arrayidx5, align 4
  %13 = load ptr, ptr %cquantize, align 8
  %Ncolors6 = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %Ncolors6, i64 0, i64 1
  %14 = load i32, ptr %arrayidx7, align 4
  %15 = load ptr, ptr %_mp, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 2
  store i32 %14, ptr %arrayidx8, align 4
  %16 = load ptr, ptr %cquantize, align 8
  %Ncolors9 = getelementptr inbounds %struct.my_cquantizer, ptr %16, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %Ncolors9, i64 0, i64 2
  %17 = load i32, ptr %arrayidx10, align 4
  %18 = load ptr, ptr %_mp, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 3
  store i32 %17, ptr %arrayidx11, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 93, ptr %msg_code, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err13, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %emit_message, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24, i32 noundef 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err14, align 8
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 5
  store i32 94, ptr %msg_code15, align 8
  %27 = load i32, ptr %total_colors, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err16, align 8
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %msg_parm17, i64 0, i64 0
  store i32 %27, ptr %arrayidx18, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err19, align 8
  %emit_message20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %emit_message20, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void %32(ptr noundef %33, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %34 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %alloc_sarray, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load i32, ptr %total_colors, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 28
  %40 = load i32, ptr %out_color_components21, align 8
  %call22 = call ptr %36(ptr noundef %37, i32 noundef 1, i32 noundef %38, i32 noundef %40)
  store ptr %call22, ptr %colormap, align 8
  %41 = load i32, ptr %total_colors, align 4
  store i32 %41, ptr %blkdist, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %if.end
  %42 = load i32, ptr %i, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 28
  %44 = load i32, ptr %out_color_components23, align 8
  %cmp24 = icmp slt i32 %42, %44
  br i1 %cmp24, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %cquantize, align 8
  %Ncolors25 = getelementptr inbounds %struct.my_cquantizer, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %i, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %Ncolors25, i64 0, i64 %idxprom
  %47 = load i32, ptr %arrayidx26, align 4
  store i32 %47, ptr %nci, align 4
  %48 = load i32, ptr %blkdist, align 4
  %49 = load i32, ptr %nci, align 4
  %div = sdiv i32 %48, %49
  store i32 %div, ptr %blksize, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc44, %for.body
  %50 = load i32, ptr %j, align 4
  %51 = load i32, ptr %nci, align 4
  %cmp28 = icmp slt i32 %50, %51
  br i1 %cmp28, label %for.body29, label %for.end46

for.body29:                                       ; preds = %for.cond27
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %j, align 4
  %55 = load i32, ptr %nci, align 4
  %sub = sub nsw i32 %55, 1
  %call30 = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_7(ptr noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %sub)
  store i32 %call30, ptr %val, align 4
  %56 = load i32, ptr %j, align 4
  %57 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %56, %57
  store i32 %mul, ptr %ptr, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.body29
  %58 = load i32, ptr %ptr, align 4
  %59 = load i32, ptr %total_colors, align 4
  %cmp32 = icmp slt i32 %58, %59
  br i1 %cmp32, label %for.body33, label %for.end43

for.body33:                                       ; preds = %for.cond31
  store i32 0, ptr %k, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %for.body33
  %60 = load i32, ptr %k, align 4
  %61 = load i32, ptr %blksize, align 4
  %cmp35 = icmp slt i32 %60, %61
  br i1 %cmp35, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond34
  %62 = load i32, ptr %val, align 4
  %conv = trunc i32 %62 to i8
  %63 = load ptr, ptr %colormap, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %64 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %63, i64 %idxprom37
  %65 = load ptr, ptr %arrayidx38, align 8
  %66 = load i32, ptr %ptr, align 4
  %67 = load i32, ptr %k, align 4
  %add = add nsw i32 %66, %67
  %idxprom39 = sext i32 %add to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %65, i64 %idxprom39
  store i8 %conv, ptr %arrayidx40, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %68 = load i32, ptr %k, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond34, !llvm.loop !8

for.end:                                          ; preds = %for.cond34
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %69 = load i32, ptr %blkdist, align 4
  %70 = load i32, ptr %ptr, align 4
  %add42 = add nsw i32 %70, %69
  store i32 %add42, ptr %ptr, align 4
  br label %for.cond31, !llvm.loop !9

for.end43:                                        ; preds = %for.cond31
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %71 = load i32, ptr %j, align 4
  %inc45 = add nsw i32 %71, 1
  store i32 %inc45, ptr %j, align 4
  br label %for.cond27, !llvm.loop !10

for.end46:                                        ; preds = %for.cond27
  %72 = load i32, ptr %blksize, align 4
  store i32 %72, ptr %blkdist, align 4
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %73 = load i32, ptr %i, align 4
  %inc48 = add nsw i32 %73, 1
  store i32 %inc48, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end49:                                        ; preds = %for.cond
  %74 = load ptr, ptr %colormap, align 8
  %75 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %75, i32 0, i32 1
  store ptr %74, ptr %sv_colormap, align 8
  %76 = load i32, ptr %total_colors, align 4
  %77 = load ptr, ptr %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %77, i32 0, i32 2
  store i32 %76, ptr %sv_actual, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 20
  %3 = load i32, ptr %dither_mode, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 510, ptr %pad, align 4
  %4 = load ptr, ptr %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %4, i32 0, i32 4
  store i32 1, ptr %is_padded, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %pad, align 4
  %5 = load ptr, ptr %cquantize, align 8
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 4
  store i32 0, ptr %is_padded2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %alloc_sarray, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %pad, align 4
  %add = add nsw i32 256, %10
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 28
  %12 = load i32, ptr %out_color_components, align 8
  %call = call ptr %8(ptr noundef %9, i32 noundef 1, i32 noundef %add, i32 noundef %12)
  %13 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 3
  store ptr %call, ptr %colorindex, align 8
  %14 = load ptr, ptr %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %sv_actual, align 8
  store i32 %15, ptr %blksize, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %if.end
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 28
  %18 = load i32, ptr %out_color_components3, align 8
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  store i32 %21, ptr %nci, align 4
  %22 = load i32, ptr %blksize, align 4
  %23 = load i32, ptr %nci, align 4
  %div = sdiv i32 %22, %23
  store i32 %div, ptr %blksize, align 4
  %24 = load i32, ptr %pad, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %25 = load ptr, ptr %cquantize, align 8
  %colorindex6 = getelementptr inbounds %struct.my_cquantizer, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %colorindex6, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %26, i64 %idxprom7
  %28 = load ptr, ptr %arrayidx8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 255
  store ptr %add.ptr, ptr %arrayidx8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body
  %29 = load ptr, ptr %cquantize, align 8
  %colorindex10 = getelementptr inbounds %struct.my_cquantizer, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %colorindex10, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %30, i64 %idxprom11
  %32 = load ptr, ptr %arrayidx12, align 8
  store ptr %32, ptr %indexptr, align 8
  store i32 0, ptr %val, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nci, align 4
  %sub = sub nsw i32 %35, 1
  %call13 = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_8(ptr noundef %33, i32 noundef %34, i32 noundef 0, i32 noundef %sub)
  store i32 %call13, ptr %k, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.end9
  %36 = load i32, ptr %j, align 4
  %cmp15 = icmp sle i32 %36, 255
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body16
  %37 = load i32, ptr %j, align 4
  %38 = load i32, ptr %k, align 4
  %cmp17 = icmp sgt i32 %37, %38
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %val, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %val, align 4
  %42 = load i32, ptr %nci, align 4
  %sub18 = sub nsw i32 %42, 1
  %call19 = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_9(ptr noundef %39, i32 noundef %40, i32 noundef %inc, i32 noundef %sub18)
  store i32 %call19, ptr %k, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %43 = load i32, ptr %val, align 4
  %44 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %43, %44
  %conv = trunc i32 %mul to i8
  %45 = load ptr, ptr %indexptr, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %46 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %45, i64 %idxprom20
  store i8 %conv, ptr %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %47 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %47, 1
  store i32 %inc22, ptr %j, align 4
  br label %for.cond14, !llvm.loop !13

for.end:                                          ; preds = %for.cond14
  %48 = load i32, ptr %pad, align 4
  %tobool23 = icmp ne i32 %48, 0
  br i1 %tobool23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %for.end
  store i32 1, ptr %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %if.then24
  %49 = load i32, ptr %j, align 4
  %cmp26 = icmp sle i32 %49, 255
  br i1 %cmp26, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond25
  %50 = load ptr, ptr %indexptr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx29, align 1
  %52 = load ptr, ptr %indexptr, align 8
  %53 = load i32, ptr %j, align 4
  %sub30 = sub nsw i32 0, %53
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %52, i64 %idxprom31
  store i8 %51, ptr %arrayidx32, align 1
  %54 = load ptr, ptr %indexptr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %54, i64 255
  %55 = load i8, ptr %arrayidx33, align 1
  %56 = load ptr, ptr %indexptr, align 8
  %57 = load i32, ptr %j, align 4
  %add34 = add nsw i32 255, %57
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %56, i64 %idxprom35
  store i8 %55, ptr %arrayidx36, align 1
  br label %for.inc37

for.inc37:                                        ; preds = %for.body28
  %58 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %58, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond25, !llvm.loop !14

for.end39:                                        ; preds = %for.cond25
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %for.end
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %59 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %59, 1
  store i32 %inc42, ptr %i, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  %add = add i32 %3, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, ptr %arraysize, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 28
  %6 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %alloc_large, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i64, ptr %arraysize, align 8
  %call = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef %11)
  %12 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %colorindex, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %colorindex0, align 8
  %5 = load ptr, ptr %cquantize, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %colorindex2, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx3, align 8
  store ptr %7, ptr %colorindex1, align 8
  %8 = load ptr, ptr %cquantize, align 8
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %colorindex5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx6, align 8
  store ptr %10, ptr %colorindex24, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 26
  %12 = load i32, ptr %output_width, align 8
  store i32 %12, ptr %width, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %13 = load i32, ptr %row, align 4
  %14 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %input_buf.addr, align 8
  %16 = load i32, ptr %row, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx7, align 8
  store ptr %17, ptr %ptrin, align 8
  %18 = load ptr, ptr %output_buf.addr, align 8
  %19 = load i32, ptr %row, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %18, i64 %idxprom8
  %20 = load ptr, ptr %arrayidx9, align 8
  store ptr %20, ptr %ptrout, align 8
  %21 = load i32, ptr %width, align 4
  store i32 %21, ptr %col, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %22 = load i32, ptr %col, align 4
  %cmp11 = icmp ugt i32 %22, 0
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %23 = load ptr, ptr %colorindex0, align 8
  %24 = load ptr, ptr %ptrin, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %ptrin, align 8
  %25 = load i8, ptr %24, align 1
  %conv = zext i8 %25 to i32
  %idxprom13 = sext i32 %conv to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %23, i64 %idxprom13
  %26 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %26 to i32
  store i32 %conv15, ptr %pixcode, align 4
  %27 = load ptr, ptr %colorindex1, align 8
  %28 = load ptr, ptr %ptrin, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr16, ptr %ptrin, align 8
  %29 = load i8, ptr %28, align 1
  %conv17 = zext i8 %29 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %27, i64 %idxprom18
  %30 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %30 to i32
  %31 = load i32, ptr %pixcode, align 4
  %add = add nsw i32 %31, %conv20
  store i32 %add, ptr %pixcode, align 4
  %32 = load ptr, ptr %colorindex24, align 8
  %33 = load ptr, ptr %ptrin, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr21, ptr %ptrin, align 8
  %34 = load i8, ptr %33, align 1
  %conv22 = zext i8 %34 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %32, i64 %idxprom23
  %35 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %35 to i32
  %36 = load i32, ptr %pixcode, align 4
  %add26 = add nsw i32 %36, %conv25
  store i32 %add26, ptr %pixcode, align 4
  %37 = load i32, ptr %pixcode, align 4
  %conv27 = trunc i32 %37 to i8
  %38 = load ptr, ptr %ptrout, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr28, ptr %ptrout, align 8
  store i8 %conv27, ptr %38, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %39 = load i32, ptr %col, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond10, !llvm.loop !17

for.end:                                          ; preds = %for.cond10
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %40 = load i32, ptr %row, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %row, align 4
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
  %cquantize = alloca ptr, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %colorindex2, align 8
  store ptr %3, ptr %colorindex, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %width, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 28
  %7 = load i32, ptr %out_color_components, align 8
  store i32 %7, ptr %nc, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %8 = load i32, ptr %row, align 4
  %9 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %input_buf.addr, align 8
  %11 = load i32, ptr %row, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %ptrin, align 8
  %13 = load ptr, ptr %output_buf.addr, align 8
  %14 = load i32, ptr %row, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %13, i64 %idxprom3
  %15 = load ptr, ptr %arrayidx4, align 8
  store ptr %15, ptr %ptrout, align 8
  %16 = load i32, ptr %width, align 4
  store i32 %16, ptr %col, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.body
  %17 = load i32, ptr %col, align 4
  %cmp6 = icmp ugt i32 %17, 0
  br i1 %cmp6, label %for.body7, label %for.end19

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %pixcode, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %18 = load i32, ptr %ci, align 4
  %19 = load i32, ptr %nc, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %colorindex, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %20, i64 %idxprom11
  %22 = load ptr, ptr %arrayidx12, align 8
  %23 = load ptr, ptr %ptrin, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %ptrin, align 8
  %24 = load i8, ptr %23, align 1
  %conv = zext i8 %24 to i32
  %idxprom13 = sext i32 %conv to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %22, i64 %idxprom13
  %25 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %25 to i32
  %26 = load i32, ptr %pixcode, align 4
  %add = add nsw i32 %26, %conv15
  store i32 %add, ptr %pixcode, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %27 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond8, !llvm.loop !19

for.end:                                          ; preds = %for.cond8
  %28 = load i32, ptr %pixcode, align 4
  %conv16 = trunc i32 %28 to i8
  %29 = load ptr, ptr %ptrout, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr17, ptr %ptrout, align 8
  store i8 %conv16, ptr %29, align 1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %30 = load i32, ptr %col, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond5, !llvm.loop !20

for.end19:                                        ; preds = %for.cond5
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %31 = load i32, ptr %row, align 4
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, ptr %row, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %colorindex, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %colorindex0, align 8
  %5 = load ptr, ptr %cquantize, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %colorindex2, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx3, align 8
  store ptr %7, ptr %colorindex1, align 8
  %8 = load ptr, ptr %cquantize, align 8
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %colorindex5, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx6, align 8
  store ptr %10, ptr %colorindex24, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 26
  %12 = load i32, ptr %output_width, align 8
  store i32 %12, ptr %width, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %entry
  %13 = load i32, ptr %row, align 4
  %14 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cquantize, align 8
  %row_index7 = getelementptr inbounds %struct.my_cquantizer, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %row_index7, align 4
  store i32 %16, ptr %row_index, align 4
  %17 = load ptr, ptr %input_buf.addr, align 8
  %18 = load i32, ptr %row, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %19 = load ptr, ptr %arrayidx8, align 8
  store ptr %19, ptr %input_ptr, align 8
  %20 = load ptr, ptr %output_buf.addr, align 8
  %21 = load i32, ptr %row, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9
  %22 = load ptr, ptr %arrayidx10, align 8
  store ptr %22, ptr %output_ptr, align 8
  %23 = load ptr, ptr %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %23, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 0
  %24 = load ptr, ptr %arrayidx11, align 8
  %25 = load i32, ptr %row_index, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %24, i64 %idxprom12
  %arraydecay = getelementptr inbounds [16 x i32], ptr %arrayidx13, i64 0, i64 0
  store ptr %arraydecay, ptr %dither0, align 8
  %26 = load ptr, ptr %cquantize, align 8
  %odither14 = getelementptr inbounds %struct.my_cquantizer, ptr %26, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %odither14, i64 0, i64 1
  %27 = load ptr, ptr %arrayidx15, align 8
  %28 = load i32, ptr %row_index, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds [16 x i32], ptr %27, i64 %idxprom16
  %arraydecay18 = getelementptr inbounds [16 x i32], ptr %arrayidx17, i64 0, i64 0
  store ptr %arraydecay18, ptr %dither1, align 8
  %29 = load ptr, ptr %cquantize, align 8
  %odither19 = getelementptr inbounds %struct.my_cquantizer, ptr %29, i32 0, i32 7
  %arrayidx20 = getelementptr inbounds [4 x ptr], ptr %odither19, i64 0, i64 2
  %30 = load ptr, ptr %arrayidx20, align 8
  %31 = load i32, ptr %row_index, align 4
  %idxprom21 = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %30, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [16 x i32], ptr %arrayidx22, i64 0, i64 0
  store ptr %arraydecay23, ptr %dither2, align 8
  store i32 0, ptr %col_index, align 4
  %32 = load i32, ptr %width, align 4
  store i32 %32, ptr %col, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %for.body
  %33 = load i32, ptr %col, align 4
  %cmp25 = icmp ugt i32 %33, 0
  br i1 %cmp25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond24
  %34 = load ptr, ptr %colorindex0, align 8
  %35 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %input_ptr, align 8
  %36 = load i8, ptr %35, align 1
  %conv = zext i8 %36 to i32
  %37 = load ptr, ptr %dither0, align 8
  %38 = load i32, ptr %col_index, align 4
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %37, i64 %idxprom27
  %39 = load i32, ptr %arrayidx28, align 4
  %add = add nsw i32 %conv, %39
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %34, i64 %idxprom29
  %40 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %40 to i32
  store i32 %conv31, ptr %pixcode, align 4
  %41 = load ptr, ptr %colorindex1, align 8
  %42 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr32, ptr %input_ptr, align 8
  %43 = load i8, ptr %42, align 1
  %conv33 = zext i8 %43 to i32
  %44 = load ptr, ptr %dither1, align 8
  %45 = load i32, ptr %col_index, align 4
  %idxprom34 = sext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %44, i64 %idxprom34
  %46 = load i32, ptr %arrayidx35, align 4
  %add36 = add nsw i32 %conv33, %46
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %41, i64 %idxprom37
  %47 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %47 to i32
  %48 = load i32, ptr %pixcode, align 4
  %add40 = add nsw i32 %48, %conv39
  store i32 %add40, ptr %pixcode, align 4
  %49 = load ptr, ptr %colorindex24, align 8
  %50 = load ptr, ptr %input_ptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr41, ptr %input_ptr, align 8
  %51 = load i8, ptr %50, align 1
  %conv42 = zext i8 %51 to i32
  %52 = load ptr, ptr %dither2, align 8
  %53 = load i32, ptr %col_index, align 4
  %idxprom43 = sext i32 %53 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %52, i64 %idxprom43
  %54 = load i32, ptr %arrayidx44, align 4
  %add45 = add nsw i32 %conv42, %54
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %49, i64 %idxprom46
  %55 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %55 to i32
  %56 = load i32, ptr %pixcode, align 4
  %add49 = add nsw i32 %56, %conv48
  store i32 %add49, ptr %pixcode, align 4
  %57 = load i32, ptr %pixcode, align 4
  %conv50 = trunc i32 %57 to i8
  %58 = load ptr, ptr %output_ptr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr51, ptr %output_ptr, align 8
  store i8 %conv50, ptr %58, align 1
  %59 = load i32, ptr %col_index, align 4
  %add52 = add nsw i32 %59, 1
  %and = and i32 %add52, 15
  store i32 %and, ptr %col_index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %60 = load i32, ptr %col, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond24, !llvm.loop !22

for.end:                                          ; preds = %for.cond24
  %61 = load i32, ptr %row_index, align 4
  %add53 = add nsw i32 %61, 1
  %and54 = and i32 %add53, 15
  store i32 %and54, ptr %row_index, align 4
  %62 = load i32, ptr %row_index, align 4
  %63 = load ptr, ptr %cquantize, align 8
  %row_index55 = getelementptr inbounds %struct.my_cquantizer, ptr %63, i32 0, i32 6
  store i32 %62, ptr %row_index55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end
  %64 = load i32, ptr %row, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %row, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 28
  %3 = load i32, ptr %out_color_components, align 8
  store i32 %3, ptr %nc, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %width, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %6 = load i32, ptr %row, align 4
  %7 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %output_buf.addr, align 8
  %9 = load i32, ptr %row, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load i32, ptr %width, align 4
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, 1
  call void @jzero_far(ptr noundef %10, i64 noundef %mul)
  %12 = load ptr, ptr %cquantize, align 8
  %row_index2 = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %row_index2, align 4
  store i32 %13, ptr %row_index, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %for.body
  %14 = load i32, ptr %ci, align 4
  %15 = load i32, ptr %nc, align 4
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %for.body6, label %for.end34

for.body6:                                        ; preds = %for.cond3
  %16 = load ptr, ptr %input_buf.addr, align 8
  %17 = load i32, ptr %row, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %16, i64 %idxprom7
  %18 = load ptr, ptr %arrayidx8, align 8
  %19 = load i32, ptr %ci, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %input_ptr, align 8
  %20 = load ptr, ptr %output_buf.addr, align 8
  %21 = load i32, ptr %row, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9
  %22 = load ptr, ptr %arrayidx10, align 8
  store ptr %22, ptr %output_ptr, align 8
  %23 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %colorindex, align 8
  %25 = load i32, ptr %ci, align 4
  %idxprom11 = sext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %24, i64 %idxprom11
  %26 = load ptr, ptr %arrayidx12, align 8
  store ptr %26, ptr %colorindex_ci, align 8
  %27 = load ptr, ptr %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %27, i32 0, i32 7
  %28 = load i32, ptr %ci, align 4
  %idxprom13 = sext i32 %28 to i64
  %arrayidx14 = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 %idxprom13
  %29 = load ptr, ptr %arrayidx14, align 8
  %30 = load i32, ptr %row_index, align 4
  %idxprom15 = sext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr %29, i64 %idxprom15
  %arraydecay = getelementptr inbounds [16 x i32], ptr %arrayidx16, i64 0, i64 0
  store ptr %arraydecay, ptr %dither, align 8
  store i32 0, ptr %col_index, align 4
  %31 = load i32, ptr %width, align 4
  store i32 %31, ptr %col, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body6
  %32 = load i32, ptr %col, align 4
  %cmp18 = icmp ugt i32 %32, 0
  br i1 %cmp18, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %33 = load ptr, ptr %colorindex_ci, align 8
  %34 = load ptr, ptr %input_ptr, align 8
  %35 = load i8, ptr %34, align 1
  %conv21 = zext i8 %35 to i32
  %36 = load ptr, ptr %dither, align 8
  %37 = load i32, ptr %col_index, align 4
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %36, i64 %idxprom22
  %38 = load i32, ptr %arrayidx23, align 4
  %add = add nsw i32 %conv21, %38
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %33, i64 %idxprom24
  %39 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %39 to i32
  %40 = load ptr, ptr %output_ptr, align 8
  %41 = load i8, ptr %40, align 1
  %conv27 = zext i8 %41 to i32
  %add28 = add nsw i32 %conv27, %conv26
  %conv29 = trunc i32 %add28 to i8
  store i8 %conv29, ptr %40, align 1
  %42 = load i32, ptr %nc, align 4
  %43 = load ptr, ptr %input_ptr, align 8
  %idx.ext30 = sext i32 %42 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %43, i64 %idx.ext30
  store ptr %add.ptr31, ptr %input_ptr, align 8
  %44 = load ptr, ptr %output_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr, ptr %output_ptr, align 8
  %45 = load i32, ptr %col_index, align 4
  %add32 = add nsw i32 %45, 1
  %and = and i32 %add32, 15
  store i32 %and, ptr %col_index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %46 = load i32, ptr %col, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond17, !llvm.loop !24

for.end:                                          ; preds = %for.cond17
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %47 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond3, !llvm.loop !25

for.end34:                                        ; preds = %for.cond3
  %48 = load i32, ptr %row_index, align 4
  %add35 = add nsw i32 %48, 1
  %and36 = and i32 %add35, 15
  store i32 %and36, ptr %row_index, align 4
  %49 = load i32, ptr %row_index, align 4
  %50 = load ptr, ptr %cquantize, align 8
  %row_index37 = getelementptr inbounds %struct.my_cquantizer, ptr %50, i32 0, i32 6
  store i32 %49, ptr %row_index37, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.end34
  %51 = load i32, ptr %row, align 4
  %inc39 = add nsw i32 %51, 1
  store i32 %inc39, ptr %row, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %nci, align 4
  store ptr null, ptr %odither, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, ptr %nci, align 4
  %11 = load ptr, ptr %cquantize, align 8
  %Ncolors5 = getelementptr inbounds %struct.my_cquantizer, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %Ncolors5, i64 0, i64 %idxprom6
  %13 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp eq i32 %10, %13
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %14 = load ptr, ptr %cquantize, align 8
  %odither9 = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %odither9, i64 0, i64 %idxprom10
  %16 = load ptr, ptr %arrayidx11, align 8
  store ptr %16, ptr %odither, align 8
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond2, !llvm.loop !27

for.end:                                          ; preds = %if.then, %for.cond2
  %18 = load ptr, ptr %odither, align 8
  %cmp12 = icmp eq ptr %18, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load i32, ptr %nci, align 4
  %call = call ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_10(ptr noundef %19, i32 noundef %20)
  store ptr %call, ptr %odither, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  %21 = load ptr, ptr %odither, align 8
  %22 = load ptr, ptr %cquantize, align 8
  %odither15 = getelementptr inbounds %struct.my_cquantizer, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [4 x ptr], ptr %odither15, i64 0, i64 %idxprom16
  store ptr %21, ptr %arrayidx17, align 8
  br label %for.inc18

for.inc18:                                        ; preds = %if.end14
  %24 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, ptr %i, align 4
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
  %pixcode = alloca i32, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 28
  %3 = load i32, ptr %out_color_components, align 8
  store i32 %3, ptr %nc, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  store i32 %5, ptr %width, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 61
  %7 = load ptr, ptr %sample_range_limit, align 8
  store ptr %7, ptr %range_limit, align 8
  store i32 0, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %entry
  %8 = load i32, ptr %row, align 4
  %9 = load i32, ptr %num_rows.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %output_buf.addr, align 8
  %11 = load i32, ptr %row, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  %13 = load i32, ptr %width, align 4
  %conv = zext i32 %13 to i64
  %mul = mul i64 %conv, 1
  call void @jzero_far(ptr noundef %12, i64 noundef %mul)
  store i32 0, ptr %ci, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc70, %for.body
  %14 = load i32, ptr %ci, align 4
  %15 = load i32, ptr %nc, align 4
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body5, label %for.end71

for.body5:                                        ; preds = %for.cond2
  %16 = load ptr, ptr %input_buf.addr, align 8
  %17 = load i32, ptr %row, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %16, i64 %idxprom6
  %18 = load ptr, ptr %arrayidx7, align 8
  %19 = load i32, ptr %ci, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %input_ptr, align 8
  %20 = load ptr, ptr %output_buf.addr, align 8
  %21 = load i32, ptr %row, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %20, i64 %idxprom8
  %22 = load ptr, ptr %arrayidx9, align 8
  store ptr %22, ptr %output_ptr, align 8
  %23 = load ptr, ptr %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %on_odd_row, align 8
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body5
  %25 = load i32, ptr %width, align 4
  %sub = sub i32 %25, 1
  %26 = load i32, ptr %nc, align 4
  %mul10 = mul i32 %sub, %26
  %27 = load ptr, ptr %input_ptr, align 8
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %27, i64 %idx.ext11
  store ptr %add.ptr12, ptr %input_ptr, align 8
  %28 = load i32, ptr %width, align 4
  %sub13 = sub i32 %28, 1
  %29 = load ptr, ptr %output_ptr, align 8
  %idx.ext14 = zext i32 %sub13 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %29, i64 %idx.ext14
  store ptr %add.ptr15, ptr %output_ptr, align 8
  store i32 -1, ptr %dir, align 4
  %30 = load i32, ptr %nc, align 4
  %sub16 = sub nsw i32 0, %30
  store i32 %sub16, ptr %dirnc, align 4
  %31 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %31, i32 0, i32 8
  %32 = load i32, ptr %ci, align 4
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 %idxprom17
  %33 = load ptr, ptr %arrayidx18, align 8
  %34 = load i32, ptr %width, align 4
  %add = add i32 %34, 1
  %idx.ext19 = zext i32 %add to i64
  %add.ptr20 = getelementptr inbounds i16, ptr %33, i64 %idx.ext19
  store ptr %add.ptr20, ptr %errorptr, align 8
  br label %if.end

if.else:                                          ; preds = %for.body5
  store i32 1, ptr %dir, align 4
  %35 = load i32, ptr %nc, align 4
  store i32 %35, ptr %dirnc, align 4
  %36 = load ptr, ptr %cquantize, align 8
  %fserrors21 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i32 0, i32 8
  %37 = load i32, ptr %ci, align 4
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds [4 x ptr], ptr %fserrors21, i64 0, i64 %idxprom22
  %38 = load ptr, ptr %arrayidx23, align 8
  store ptr %38, ptr %errorptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %colorindex, align 8
  %41 = load i32, ptr %ci, align 4
  %idxprom24 = sext i32 %41 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %40, i64 %idxprom24
  %42 = load ptr, ptr %arrayidx25, align 8
  store ptr %42, ptr %colorindex_ci, align 8
  %43 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %sv_colormap, align 8
  %45 = load i32, ptr %ci, align 4
  %idxprom26 = sext i32 %45 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %44, i64 %idxprom26
  %46 = load ptr, ptr %arrayidx27, align 8
  store ptr %46, ptr %colormap_ci, align 8
  store i32 0, ptr %cur, align 4
  store i32 0, ptr %bpreverr, align 4
  store i32 0, ptr %belowerr, align 4
  %47 = load i32, ptr %width, align 4
  store i32 %47, ptr %col, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %if.end
  %48 = load i32, ptr %col, align 4
  %cmp29 = icmp ugt i32 %48, 0
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %49 = load i32, ptr %cur, align 4
  %50 = load ptr, ptr %errorptr, align 8
  %51 = load i32, ptr %dir, align 4
  %idxprom32 = sext i32 %51 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %50, i64 %idxprom32
  %52 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %52 to i32
  %add35 = add nsw i32 %49, %conv34
  %add36 = add nsw i32 %add35, 8
  %shr = ashr i32 %add36, 4
  store i32 %shr, ptr %cur, align 4
  %53 = load ptr, ptr %input_ptr, align 8
  %54 = load i8, ptr %53, align 1
  %conv37 = zext i8 %54 to i32
  %55 = load i32, ptr %cur, align 4
  %add38 = add nsw i32 %55, %conv37
  store i32 %add38, ptr %cur, align 4
  %56 = load ptr, ptr %range_limit, align 8
  %57 = load i32, ptr %cur, align 4
  %idxprom39 = sext i32 %57 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %56, i64 %idxprom39
  %58 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %58 to i32
  store i32 %conv41, ptr %cur, align 4
  %59 = load ptr, ptr %colorindex_ci, align 8
  %60 = load i32, ptr %cur, align 4
  %idxprom42 = sext i32 %60 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %59, i64 %idxprom42
  %61 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %61 to i32
  store i32 %conv44, ptr %pixcode, align 4
  %62 = load i32, ptr %pixcode, align 4
  %conv45 = trunc i32 %62 to i8
  %conv46 = zext i8 %conv45 to i32
  %63 = load ptr, ptr %output_ptr, align 8
  %64 = load i8, ptr %63, align 1
  %conv47 = zext i8 %64 to i32
  %add48 = add nsw i32 %conv47, %conv46
  %conv49 = trunc i32 %add48 to i8
  store i8 %conv49, ptr %63, align 1
  %65 = load ptr, ptr %colormap_ci, align 8
  %66 = load i32, ptr %pixcode, align 4
  %idxprom50 = sext i32 %66 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %65, i64 %idxprom50
  %67 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %67 to i32
  %68 = load i32, ptr %cur, align 4
  %sub53 = sub nsw i32 %68, %conv52
  store i32 %sub53, ptr %cur, align 4
  %69 = load i32, ptr %cur, align 4
  store i32 %69, ptr %bnexterr, align 4
  %70 = load i32, ptr %cur, align 4
  %mul54 = mul nsw i32 %70, 2
  store i32 %mul54, ptr %delta, align 4
  %71 = load i32, ptr %delta, align 4
  %72 = load i32, ptr %cur, align 4
  %add55 = add nsw i32 %72, %71
  store i32 %add55, ptr %cur, align 4
  %73 = load i32, ptr %bpreverr, align 4
  %74 = load i32, ptr %cur, align 4
  %add56 = add nsw i32 %73, %74
  %conv57 = trunc i32 %add56 to i16
  %75 = load ptr, ptr %errorptr, align 8
  %arrayidx58 = getelementptr inbounds i16, ptr %75, i64 0
  store i16 %conv57, ptr %arrayidx58, align 2
  %76 = load i32, ptr %delta, align 4
  %77 = load i32, ptr %cur, align 4
  %add59 = add nsw i32 %77, %76
  store i32 %add59, ptr %cur, align 4
  %78 = load i32, ptr %belowerr, align 4
  %79 = load i32, ptr %cur, align 4
  %add60 = add nsw i32 %78, %79
  store i32 %add60, ptr %bpreverr, align 4
  %80 = load i32, ptr %bnexterr, align 4
  store i32 %80, ptr %belowerr, align 4
  %81 = load i32, ptr %delta, align 4
  %82 = load i32, ptr %cur, align 4
  %add61 = add nsw i32 %82, %81
  store i32 %add61, ptr %cur, align 4
  %83 = load i32, ptr %dirnc, align 4
  %84 = load ptr, ptr %input_ptr, align 8
  %idx.ext62 = sext i32 %83 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %84, i64 %idx.ext62
  store ptr %add.ptr63, ptr %input_ptr, align 8
  %85 = load i32, ptr %dir, align 4
  %86 = load ptr, ptr %output_ptr, align 8
  %idx.ext64 = sext i32 %85 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %86, i64 %idx.ext64
  store ptr %add.ptr65, ptr %output_ptr, align 8
  %87 = load i32, ptr %dir, align 4
  %88 = load ptr, ptr %errorptr, align 8
  %idx.ext66 = sext i32 %87 to i64
  %add.ptr67 = getelementptr inbounds i16, ptr %88, i64 %idx.ext66
  store ptr %add.ptr67, ptr %errorptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body31
  %89 = load i32, ptr %col, align 4
  %dec = add i32 %89, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond28, !llvm.loop !29

for.end:                                          ; preds = %for.cond28
  %90 = load i32, ptr %bpreverr, align 4
  %conv68 = trunc i32 %90 to i16
  %91 = load ptr, ptr %errorptr, align 8
  %arrayidx69 = getelementptr inbounds i16, ptr %91, i64 0
  store i16 %conv68, ptr %arrayidx69, align 2
  br label %for.inc70

for.inc70:                                        ; preds = %for.end
  %92 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond2, !llvm.loop !30

for.end71:                                        ; preds = %for.cond2
  %93 = load ptr, ptr %cquantize, align 8
  %on_odd_row72 = getelementptr inbounds %struct.my_cquantizer, ptr %93, i32 0, i32 9
  %94 = load i32, ptr %on_odd_row72, align 8
  %tobool73 = icmp ne i32 %94, 0
  %95 = zext i1 %tobool73 to i64
  %cond = select i1 %tobool73, i32 0, i32 1
  %96 = load ptr, ptr %cquantize, align 8
  %on_odd_row74 = getelementptr inbounds %struct.my_cquantizer, ptr %96, i32 0, i32 9
  store i32 %cond, ptr %on_odd_row74, align 8
  br label %for.inc75

for.inc75:                                        ; preds = %for.end71
  %97 = load i32, ptr %row, align 4
  %inc76 = add nsw i32 %97, 1
  store i32 %inc76, ptr %row, align 4
  br label %for.cond, !llvm.loop !31

for.end77:                                        ; preds = %for.cond
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @make_odither_array(ptr noundef %cinfo, i32 noundef %ncolors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ncolors.addr = alloca i32, align 4
  %odither = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ncolors, ptr %ncolors.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 1024)
  store ptr %call, ptr %odither, align 8
  %4 = load i32, ptr %ncolors.addr, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 512, %conv
  store i64 %mul, ptr %den, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %5 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %5, 16
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %k, align 4
  %cmp3 = icmp slt i32 %6, 16
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %7 = load i32, ptr %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %idxprom
  %8 = load i32, ptr %k, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [16 x i8], ptr %arrayidx, i64 0, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %mul9 = mul nsw i32 2, %conv8
  %sub10 = sub nsw i32 255, %mul9
  %conv11 = sext i32 %sub10 to i64
  %mul12 = mul nsw i64 %conv11, 255
  store i64 %mul12, ptr %num, align 8
  %10 = load i64, ptr %num, align 8
  %cmp13 = icmp slt i64 %10, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body5
  %11 = load i64, ptr %num, align 8
  %sub15 = sub nsw i64 0, %11
  %12 = load i64, ptr %den, align 8
  %div = sdiv i64 %sub15, %12
  %sub16 = sub nsw i64 0, %div
  br label %cond.end

cond.false:                                       ; preds = %for.body5
  %13 = load i64, ptr %num, align 8
  %14 = load i64, ptr %den, align 8
  %div17 = sdiv i64 %13, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub16, %cond.true ], [ %div17, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  %15 = load ptr, ptr %odither, align 8
  %16 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %15, i64 %idxprom19
  %17 = load i32, ptr %k, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  store i32 %conv18, ptr %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, ptr %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond2, !llvm.loop !32

for.end:                                          ; preds = %for.cond2
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %19 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond, !llvm.loop !33

for.end25:                                        ; preds = %for.cond
  %20 = load ptr, ptr %odither, align 8
  ret ptr %20
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 28
  %1 = load i32, ptr %out_color_components, align 8
  store i32 %1, ptr %nc, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 22
  %3 = load i32, ptr %desired_number_of_colors, align 8
  store i32 %3, ptr %max_colors, align 4
  store i32 1, ptr %iroot, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32, ptr %iroot, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %iroot, align 4
  %5 = load i32, ptr %iroot, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, ptr %temp, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %nc, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %iroot, align 4
  %conv2 = sext i32 %8 to i64
  %9 = load i64, ptr %temp, align 8
  %mul = mul nsw i64 %9, %conv2
  store i64 %mul, ptr %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %11 = load i64, ptr %temp, align 8
  %12 = load i32, ptr %max_colors, align 4
  %conv4 = sext i32 %12 to i64
  %cmp5 = icmp sle i64 %11, %conv4
  br i1 %cmp5, label %do.body, label %do.end, !llvm.loop !35

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %iroot, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %iroot, align 4
  %14 = load i32, ptr %iroot, align 4
  %cmp7 = icmp slt i32 %14, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 55, ptr %msg_code, align 8
  %17 = load i64, ptr %temp, align 8
  %conv9 = trunc i64 %17 to i32
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv9, ptr %arrayidx, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %error_exit, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void %22(ptr noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 1, ptr %total_colors, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %if.end
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nc, align 4
  %cmp13 = icmp slt i32 %24, %25
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %26 = load i32, ptr %iroot, align 4
  %27 = load ptr, ptr %Ncolors.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %27, i64 %idxprom
  store i32 %26, ptr %arrayidx16, align 4
  %29 = load i32, ptr %iroot, align 4
  %30 = load i32, ptr %total_colors, align 4
  %mul17 = mul nsw i32 %30, %29
  store i32 %mul17, ptr %total_colors, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %31 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond12, !llvm.loop !36

for.end20:                                        ; preds = %for.cond12
  br label %do.body21

do.body21:                                        ; preds = %do.cond49, %for.end20
  store i32 0, ptr %changed, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc46, %do.body21
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %nc, align 4
  %cmp23 = icmp slt i32 %32, %33
  br i1 %cmp23, label %for.body25, label %for.end48

for.body25:                                       ; preds = %for.cond22
  %34 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 10
  %35 = load i32, ptr %out_color_space, align 8
  %cmp26 = icmp eq i32 %35, 2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body25
  %36 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %idxprom28
  %37 = load i32, ptr %arrayidx29, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body25
  %38 = load i32, ptr %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, ptr %j, align 4
  %39 = load i32, ptr %total_colors, align 4
  %40 = load ptr, ptr %Ncolors.addr, align 8
  %41 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %40, i64 %idxprom30
  %42 = load i32, ptr %arrayidx31, align 4
  %div = sdiv i32 %39, %42
  %conv32 = sext i32 %div to i64
  store i64 %conv32, ptr %temp, align 8
  %43 = load ptr, ptr %Ncolors.addr, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %43, i64 %idxprom33
  %45 = load i32, ptr %arrayidx34, align 4
  %add = add nsw i32 %45, 1
  %conv35 = sext i32 %add to i64
  %46 = load i64, ptr %temp, align 8
  %mul36 = mul nsw i64 %46, %conv35
  store i64 %mul36, ptr %temp, align 8
  %47 = load i64, ptr %temp, align 8
  %48 = load i32, ptr %max_colors, align 4
  %conv37 = sext i32 %48 to i64
  %cmp38 = icmp sgt i64 %47, %conv37
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %cond.end
  br label %for.end48

if.end41:                                         ; preds = %cond.end
  %49 = load ptr, ptr %Ncolors.addr, align 8
  %50 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %50 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %49, i64 %idxprom42
  %51 = load i32, ptr %arrayidx43, align 4
  %inc44 = add nsw i32 %51, 1
  store i32 %inc44, ptr %arrayidx43, align 4
  %52 = load i64, ptr %temp, align 8
  %conv45 = trunc i64 %52 to i32
  store i32 %conv45, ptr %total_colors, align 4
  store i32 1, ptr %changed, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.end41
  %53 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %53, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond22, !llvm.loop !37

for.end48:                                        ; preds = %if.then40, %for.cond22
  br label %do.cond49

do.cond49:                                        ; preds = %for.end48
  %54 = load i32, ptr %changed, align 4
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %do.body21, label %do.end50, !llvm.loop !38

do.end50:                                         ; preds = %do.cond49
  %55 = load i32, ptr %total_colors, align 4
  ret i32 %55
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @output_value(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ci, ptr %ci.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %maxj, ptr %maxj.addr, align 4
  %0 = load i32, ptr %j.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 255
  %1 = load i32, ptr %maxj.addr, align 4
  %div = sdiv i32 %1, 2
  %conv1 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv1
  %2 = load i32, ptr %maxj.addr, align 4
  %conv2 = sext i32 %2 to i64
  %div3 = sdiv i64 %add, %conv2
  %conv4 = trunc i64 %div3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @largest_input_value(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ci, ptr %ci.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %maxj, ptr %maxj.addr, align 4
  %0 = load i32, ptr %j.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 255
  %1 = load i32, ptr %maxj.addr, align 4
  %conv2 = sext i32 %1 to i64
  %add3 = add nsw i64 %mul1, %conv2
  %2 = load i32, ptr %maxj.addr, align 4
  %mul4 = mul nsw i32 2, %2
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_0(ptr noundef %cinfo)  alwaysinline#0 {
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %3, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 0
  %call = call i32 @select_ncolors(ptr noundef %2, ptr noundef %arraydecay)
  store i32 %call, ptr %total_colors, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 28
  %5 = load i32, ptr %out_color_components, align 8
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arraydecay2 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay2, ptr %_mp, align 8
  %8 = load i32, ptr %total_colors, align 4
  %9 = load ptr, ptr %_mp, align 8
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 0
  store i32 %8, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cquantize, align 8
  %Ncolors3 = getelementptr inbounds %struct.my_cquantizer, ptr %10, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %Ncolors3, i64 0, i64 0
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %_mp, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 1
  store i32 %11, ptr %arrayidx5, align 4
  %13 = load ptr, ptr %cquantize, align 8
  %Ncolors6 = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %Ncolors6, i64 0, i64 1
  %14 = load i32, ptr %arrayidx7, align 4
  %15 = load ptr, ptr %_mp, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 2
  store i32 %14, ptr %arrayidx8, align 4
  %16 = load ptr, ptr %cquantize, align 8
  %Ncolors9 = getelementptr inbounds %struct.my_cquantizer, ptr %16, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %Ncolors9, i64 0, i64 2
  %17 = load i32, ptr %arrayidx10, align 4
  %18 = load ptr, ptr %_mp, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 3
  store i32 %17, ptr %arrayidx11, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err12, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5
  store i32 93, ptr %msg_code, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err13, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %emit_message, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24, i32 noundef 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err14, align 8
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 5
  store i32 94, ptr %msg_code15, align 8
  %27 = load i32, ptr %total_colors, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err16, align 8
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %msg_parm17, i64 0, i64 0
  store i32 %27, ptr %arrayidx18, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err19, align 8
  %emit_message20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %emit_message20, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void %32(ptr noundef %33, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %34 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %alloc_sarray, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load i32, ptr %total_colors, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 28
  %40 = load i32, ptr %out_color_components21, align 8
  %call22 = call ptr %36(ptr noundef %37, i32 noundef 1, i32 noundef %38, i32 noundef %40)
  store ptr %call22, ptr %colormap, align 8
  %41 = load i32, ptr %total_colors, align 4
  store i32 %41, ptr %blkdist, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %if.end
  %42 = load i32, ptr %i, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 28
  %44 = load i32, ptr %out_color_components23, align 8
  %cmp24 = icmp slt i32 %42, %44
  br i1 %cmp24, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %cquantize, align 8
  %Ncolors25 = getelementptr inbounds %struct.my_cquantizer, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %i, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %Ncolors25, i64 0, i64 %idxprom
  %47 = load i32, ptr %arrayidx26, align 4
  store i32 %47, ptr %nci, align 4
  %48 = load i32, ptr %blkdist, align 4
  %49 = load i32, ptr %nci, align 4
  %div = sdiv i32 %48, %49
  store i32 %div, ptr %blksize, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc44, %for.body
  %50 = load i32, ptr %j, align 4
  %51 = load i32, ptr %nci, align 4
  %cmp28 = icmp slt i32 %50, %51
  br i1 %cmp28, label %for.body29, label %for.end46

for.body29:                                       ; preds = %for.cond27
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %j, align 4
  %55 = load i32, ptr %nci, align 4
  %sub = sub nsw i32 %55, 1
  %call30 = call i32 @output_value(ptr noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %sub)
  store i32 %call30, ptr %val, align 4
  %56 = load i32, ptr %j, align 4
  %57 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %56, %57
  store i32 %mul, ptr %ptr, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.body29
  %58 = load i32, ptr %ptr, align 4
  %59 = load i32, ptr %total_colors, align 4
  %cmp32 = icmp slt i32 %58, %59
  br i1 %cmp32, label %for.body33, label %for.end43

for.body33:                                       ; preds = %for.cond31
  store i32 0, ptr %k, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %for.body33
  %60 = load i32, ptr %k, align 4
  %61 = load i32, ptr %blksize, align 4
  %cmp35 = icmp slt i32 %60, %61
  br i1 %cmp35, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond34
  %62 = load i32, ptr %val, align 4
  %conv = trunc i32 %62 to i8
  %63 = load ptr, ptr %colormap, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %64 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %63, i64 %idxprom37
  %65 = load ptr, ptr %arrayidx38, align 8
  %66 = load i32, ptr %ptr, align 4
  %67 = load i32, ptr %k, align 4
  %add = add nsw i32 %66, %67
  %idxprom39 = sext i32 %add to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %65, i64 %idxprom39
  store i8 %conv, ptr %arrayidx40, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %68 = load i32, ptr %k, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond34, !llvm.loop !8

for.end:                                          ; preds = %for.cond34
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %69 = load i32, ptr %blkdist, align 4
  %70 = load i32, ptr %ptr, align 4
  %add42 = add nsw i32 %70, %69
  store i32 %add42, ptr %ptr, align 4
  br label %for.cond31, !llvm.loop !9

for.end43:                                        ; preds = %for.cond31
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %71 = load i32, ptr %j, align 4
  %inc45 = add nsw i32 %71, 1
  store i32 %inc45, ptr %j, align 4
  br label %for.cond27, !llvm.loop !10

for.end46:                                        ; preds = %for.cond27
  %72 = load i32, ptr %blksize, align 4
  store i32 %72, ptr %blkdist, align 4
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %73 = load i32, ptr %i, align 4
  %inc48 = add nsw i32 %73, 1
  store i32 %inc48, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end49:                                        ; preds = %for.cond
  %74 = load ptr, ptr %colormap, align 8
  %75 = load ptr, ptr %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %75, i32 0, i32 1
  store ptr %74, ptr %sv_colormap, align 8
  %76 = load i32, ptr %total_colors, align 4
  %77 = load ptr, ptr %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %77, i32 0, i32 2
  store i32 %76, ptr %sv_actual, align 8
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_1(ptr noundef %cinfo)  alwaysinline#0 {
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 20
  %3 = load i32, ptr %dither_mode, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 510, ptr %pad, align 4
  %4 = load ptr, ptr %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %4, i32 0, i32 4
  store i32 1, ptr %is_padded, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %pad, align 4
  %5 = load ptr, ptr %cquantize, align 8
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 4
  store i32 0, ptr %is_padded2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %alloc_sarray, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %pad, align 4
  %add = add nsw i32 256, %10
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 28
  %12 = load i32, ptr %out_color_components, align 8
  %call = call ptr %8(ptr noundef %9, i32 noundef 1, i32 noundef %add, i32 noundef %12)
  %13 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 3
  store ptr %call, ptr %colorindex, align 8
  %14 = load ptr, ptr %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %sv_actual, align 8
  store i32 %15, ptr %blksize, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %if.end
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 28
  %18 = load i32, ptr %out_color_components3, align 8
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  store i32 %21, ptr %nci, align 4
  %22 = load i32, ptr %blksize, align 4
  %23 = load i32, ptr %nci, align 4
  %div = sdiv i32 %22, %23
  store i32 %div, ptr %blksize, align 4
  %24 = load i32, ptr %pad, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %25 = load ptr, ptr %cquantize, align 8
  %colorindex6 = getelementptr inbounds %struct.my_cquantizer, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %colorindex6, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %26, i64 %idxprom7
  %28 = load ptr, ptr %arrayidx8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 255
  store ptr %add.ptr, ptr %arrayidx8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body
  %29 = load ptr, ptr %cquantize, align 8
  %colorindex10 = getelementptr inbounds %struct.my_cquantizer, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %colorindex10, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %30, i64 %idxprom11
  %32 = load ptr, ptr %arrayidx12, align 8
  store ptr %32, ptr %indexptr, align 8
  store i32 0, ptr %val, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nci, align 4
  %sub = sub nsw i32 %35, 1
  %call13 = call i32 @largest_input_value(ptr noundef %33, i32 noundef %34, i32 noundef 0, i32 noundef %sub)
  store i32 %call13, ptr %k, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.end9
  %36 = load i32, ptr %j, align 4
  %cmp15 = icmp sle i32 %36, 255
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body16
  %37 = load i32, ptr %j, align 4
  %38 = load i32, ptr %k, align 4
  %cmp17 = icmp sgt i32 %37, %38
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %val, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %val, align 4
  %42 = load i32, ptr %nci, align 4
  %sub18 = sub nsw i32 %42, 1
  %call19 = call i32 @largest_input_value(ptr noundef %39, i32 noundef %40, i32 noundef %inc, i32 noundef %sub18)
  store i32 %call19, ptr %k, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %43 = load i32, ptr %val, align 4
  %44 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %43, %44
  %conv = trunc i32 %mul to i8
  %45 = load ptr, ptr %indexptr, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %46 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %45, i64 %idxprom20
  store i8 %conv, ptr %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %47 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %47, 1
  store i32 %inc22, ptr %j, align 4
  br label %for.cond14, !llvm.loop !13

for.end:                                          ; preds = %for.cond14
  %48 = load i32, ptr %pad, align 4
  %tobool23 = icmp ne i32 %48, 0
  br i1 %tobool23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %for.end
  store i32 1, ptr %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %if.then24
  %49 = load i32, ptr %j, align 4
  %cmp26 = icmp sle i32 %49, 255
  br i1 %cmp26, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond25
  %50 = load ptr, ptr %indexptr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx29, align 1
  %52 = load ptr, ptr %indexptr, align 8
  %53 = load i32, ptr %j, align 4
  %sub30 = sub nsw i32 0, %53
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %52, i64 %idxprom31
  store i8 %51, ptr %arrayidx32, align 1
  %54 = load ptr, ptr %indexptr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %54, i64 255
  %55 = load i8, ptr %arrayidx33, align 1
  %56 = load ptr, ptr %indexptr, align 8
  %57 = load i32, ptr %j, align 4
  %add34 = add nsw i32 255, %57
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %56, i64 %idxprom35
  store i8 %55, ptr %arrayidx36, align 1
  br label %for.inc37

for.inc37:                                        ; preds = %for.body28
  %58 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %58, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond25, !llvm.loop !14

for.end39:                                        ; preds = %for.cond25
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %for.end
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %59 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %59, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end43:                                        ; preds = %for.cond
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_2(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  %add = add i32 %3, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, ptr %arraysize, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 28
  %6 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %alloc_large, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i64, ptr %arraysize, align 8
  %call = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef %11)
  %12 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_3(ptr noundef %cinfo)  alwaysinline#0 {
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 20
  %3 = load i32, ptr %dither_mode, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 510, ptr %pad, align 4
  %4 = load ptr, ptr %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %4, i32 0, i32 4
  store i32 1, ptr %is_padded, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %pad, align 4
  %5 = load ptr, ptr %cquantize, align 8
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 4
  store i32 0, ptr %is_padded2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %alloc_sarray, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %pad, align 4
  %add = add nsw i32 256, %10
  %11 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 28
  %12 = load i32, ptr %out_color_components, align 8
  %call = call ptr %8(ptr noundef %9, i32 noundef 1, i32 noundef %add, i32 noundef %12)
  %13 = load ptr, ptr %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 3
  store ptr %call, ptr %colorindex, align 8
  %14 = load ptr, ptr %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %sv_actual, align 8
  store i32 %15, ptr %blksize, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %if.end
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 28
  %18 = load i32, ptr %out_color_components3, align 8
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  store i32 %21, ptr %nci, align 4
  %22 = load i32, ptr %blksize, align 4
  %23 = load i32, ptr %nci, align 4
  %div = sdiv i32 %22, %23
  store i32 %div, ptr %blksize, align 4
  %24 = load i32, ptr %pad, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %25 = load ptr, ptr %cquantize, align 8
  %colorindex6 = getelementptr inbounds %struct.my_cquantizer, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %colorindex6, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %26, i64 %idxprom7
  %28 = load ptr, ptr %arrayidx8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 255
  store ptr %add.ptr, ptr %arrayidx8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body
  %29 = load ptr, ptr %cquantize, align 8
  %colorindex10 = getelementptr inbounds %struct.my_cquantizer, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %colorindex10, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %30, i64 %idxprom11
  %32 = load ptr, ptr %arrayidx12, align 8
  store ptr %32, ptr %indexptr, align 8
  store i32 0, ptr %val, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nci, align 4
  %sub = sub nsw i32 %35, 1
  %call13 = call i32 @largest_input_value(ptr noundef %33, i32 noundef %34, i32 noundef 0, i32 noundef %sub)
  store i32 %call13, ptr %k, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.end9
  %36 = load i32, ptr %j, align 4
  %cmp15 = icmp sle i32 %36, 255
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body16
  %37 = load i32, ptr %j, align 4
  %38 = load i32, ptr %k, align 4
  %cmp17 = icmp sgt i32 %37, %38
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %val, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %val, align 4
  %42 = load i32, ptr %nci, align 4
  %sub18 = sub nsw i32 %42, 1
  %call19 = call i32 @largest_input_value(ptr noundef %39, i32 noundef %40, i32 noundef %inc, i32 noundef %sub18)
  store i32 %call19, ptr %k, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %43 = load i32, ptr %val, align 4
  %44 = load i32, ptr %blksize, align 4
  %mul = mul nsw i32 %43, %44
  %conv = trunc i32 %mul to i8
  %45 = load ptr, ptr %indexptr, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %46 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %45, i64 %idxprom20
  store i8 %conv, ptr %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %47 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %47, 1
  store i32 %inc22, ptr %j, align 4
  br label %for.cond14, !llvm.loop !13

for.end:                                          ; preds = %for.cond14
  %48 = load i32, ptr %pad, align 4
  %tobool23 = icmp ne i32 %48, 0
  br i1 %tobool23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %for.end
  store i32 1, ptr %j, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %if.then24
  %49 = load i32, ptr %j, align 4
  %cmp26 = icmp sle i32 %49, 255
  br i1 %cmp26, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond25
  %50 = load ptr, ptr %indexptr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx29, align 1
  %52 = load ptr, ptr %indexptr, align 8
  %53 = load i32, ptr %j, align 4
  %sub30 = sub nsw i32 0, %53
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %52, i64 %idxprom31
  store i8 %51, ptr %arrayidx32, align 1
  %54 = load ptr, ptr %indexptr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %54, i64 255
  %55 = load i8, ptr %arrayidx33, align 1
  %56 = load ptr, ptr %indexptr, align 8
  %57 = load i32, ptr %j, align 4
  %add34 = add nsw i32 255, %57
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %56, i64 %idxprom35
  store i8 %55, ptr %arrayidx36, align 1
  br label %for.inc37

for.inc37:                                        ; preds = %for.body28
  %58 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %58, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond25, !llvm.loop !14

for.end39:                                        ; preds = %for.cond25
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %for.end
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %59 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %59, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end43:                                        ; preds = %for.cond
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_4(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %odither = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %nci, align 4
  store ptr null, ptr %odither, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, ptr %nci, align 4
  %11 = load ptr, ptr %cquantize, align 8
  %Ncolors5 = getelementptr inbounds %struct.my_cquantizer, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %Ncolors5, i64 0, i64 %idxprom6
  %13 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp eq i32 %10, %13
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %14 = load ptr, ptr %cquantize, align 8
  %odither9 = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %odither9, i64 0, i64 %idxprom10
  %16 = load ptr, ptr %arrayidx11, align 8
  store ptr %16, ptr %odither, align 8
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond2, !llvm.loop !27

for.end:                                          ; preds = %if.then, %for.cond2
  %18 = load ptr, ptr %odither, align 8
  %cmp12 = icmp eq ptr %18, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load i32, ptr %nci, align 4
  %call = call ptr @make_odither_array(ptr noundef %19, i32 noundef %20)
  store ptr %call, ptr %odither, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  %21 = load ptr, ptr %odither, align 8
  %22 = load ptr, ptr %cquantize, align 8
  %odither15 = getelementptr inbounds %struct.my_cquantizer, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [4 x ptr], ptr %odither15, i64 0, i64 %idxprom16
  store ptr %21, ptr %arrayidx17, align 8
  br label %for.inc18

for.inc18:                                        ; preds = %if.end14
  %24 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond, !llvm.loop !28

for.end20:                                        ; preds = %for.cond
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_5(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %cquantize1, align 8
  store ptr %1, ptr %cquantize, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  %add = add i32 %3, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, ptr %arraysize, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 28
  %6 = load i32, ptr %out_color_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %alloc_large, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i64, ptr %arraysize, align 8
  %call = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef %11)
  %12 = load ptr, ptr %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_6(ptr noundef %cinfo, ptr noundef %Ncolors)  alwaysinline#0 {
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 28
  %1 = load i32, ptr %out_color_components, align 8
  store i32 %1, ptr %nc, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 22
  %3 = load i32, ptr %desired_number_of_colors, align 8
  store i32 %3, ptr %max_colors, align 4
  store i32 1, ptr %iroot, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32, ptr %iroot, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %iroot, align 4
  %5 = load i32, ptr %iroot, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, ptr %temp, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %nc, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %iroot, align 4
  %conv2 = sext i32 %8 to i64
  %9 = load i64, ptr %temp, align 8
  %mul = mul nsw i64 %9, %conv2
  store i64 %mul, ptr %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %11 = load i64, ptr %temp, align 8
  %12 = load i32, ptr %max_colors, align 4
  %conv4 = sext i32 %12 to i64
  %cmp5 = icmp sle i64 %11, %conv4
  br i1 %cmp5, label %do.body, label %do.end, !llvm.loop !35

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %iroot, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %iroot, align 4
  %14 = load i32, ptr %iroot, align 4
  %cmp7 = icmp slt i32 %14, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 55, ptr %msg_code, align 8
  %17 = load i64, ptr %temp, align 8
  %conv9 = trunc i64 %17 to i32
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv9, ptr %arrayidx, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %error_exit, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void %22(ptr noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 1, ptr %total_colors, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %if.end
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nc, align 4
  %cmp13 = icmp slt i32 %24, %25
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %26 = load i32, ptr %iroot, align 4
  %27 = load ptr, ptr %Ncolors.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %27, i64 %idxprom
  store i32 %26, ptr %arrayidx16, align 4
  %29 = load i32, ptr %iroot, align 4
  %30 = load i32, ptr %total_colors, align 4
  %mul17 = mul nsw i32 %30, %29
  store i32 %mul17, ptr %total_colors, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %31 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond12, !llvm.loop !36

for.end20:                                        ; preds = %for.cond12
  br label %do.body21

do.body21:                                        ; preds = %do.cond49, %for.end20
  store i32 0, ptr %changed, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc46, %do.body21
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %nc, align 4
  %cmp23 = icmp slt i32 %32, %33
  br i1 %cmp23, label %for.body25, label %for.end48

for.body25:                                       ; preds = %for.cond22
  %34 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 10
  %35 = load i32, ptr %out_color_space, align 8
  %cmp26 = icmp eq i32 %35, 2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body25
  %36 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_6.RGB_order, i64 0, i64 %idxprom28
  %37 = load i32, ptr %arrayidx29, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body25
  %38 = load i32, ptr %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, ptr %j, align 4
  %39 = load i32, ptr %total_colors, align 4
  %40 = load ptr, ptr %Ncolors.addr, align 8
  %41 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %40, i64 %idxprom30
  %42 = load i32, ptr %arrayidx31, align 4
  %div = sdiv i32 %39, %42
  %conv32 = sext i32 %div to i64
  store i64 %conv32, ptr %temp, align 8
  %43 = load ptr, ptr %Ncolors.addr, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %43, i64 %idxprom33
  %45 = load i32, ptr %arrayidx34, align 4
  %add = add nsw i32 %45, 1
  %conv35 = sext i32 %add to i64
  %46 = load i64, ptr %temp, align 8
  %mul36 = mul nsw i64 %46, %conv35
  store i64 %mul36, ptr %temp, align 8
  %47 = load i64, ptr %temp, align 8
  %48 = load i32, ptr %max_colors, align 4
  %conv37 = sext i32 %48 to i64
  %cmp38 = icmp sgt i64 %47, %conv37
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %cond.end
  br label %for.end48

if.end41:                                         ; preds = %cond.end
  %49 = load ptr, ptr %Ncolors.addr, align 8
  %50 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %50 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %49, i64 %idxprom42
  %51 = load i32, ptr %arrayidx43, align 4
  %inc44 = add nsw i32 %51, 1
  store i32 %inc44, ptr %arrayidx43, align 4
  %52 = load i64, ptr %temp, align 8
  %conv45 = trunc i64 %52 to i32
  store i32 %conv45, ptr %total_colors, align 4
  store i32 1, ptr %changed, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.end41
  %53 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %53, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond22, !llvm.loop !37

for.end48:                                        ; preds = %if.then40, %for.cond22
  br label %do.cond49

do.cond49:                                        ; preds = %for.end48
  %54 = load i32, ptr %changed, align 4
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %do.body21, label %do.end50, !llvm.loop !38

do.end50:                                         ; preds = %do.cond49
  %55 = load i32, ptr %total_colors, align 4
  ret i32 %55
}

define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_7(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ci, ptr %ci.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %maxj, ptr %maxj.addr, align 4
  %0 = load i32, ptr %j.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 255
  %1 = load i32, ptr %maxj.addr, align 4
  %div = sdiv i32 %1, 2
  %conv1 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv1
  %2 = load i32, ptr %maxj.addr, align 4
  %conv2 = sext i32 %2 to i64
  %div3 = sdiv i64 %add, %conv2
  %conv4 = trunc i64 %div3 to i32
  ret i32 %conv4
}

define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_8(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ci, ptr %ci.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %maxj, ptr %maxj.addr, align 4
  %0 = load i32, ptr %j.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 255
  %1 = load i32, ptr %maxj.addr, align 4
  %conv2 = sext i32 %1 to i64
  %add3 = add nsw i64 %mul1, %conv2
  %2 = load i32, ptr %maxj.addr, align 4
  %mul4 = mul nsw i32 2, %2
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
}

define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_9(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ci, ptr %ci.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %maxj, ptr %maxj.addr, align 4
  %0 = load i32, ptr %j.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 255
  %1 = load i32, ptr %maxj.addr, align 4
  %conv2 = sext i32 %1 to i64
  %add3 = add nsw i64 %mul1, %conv2
  %2 = load i32, ptr %maxj.addr, align 4
  %mul4 = mul nsw i32 2, %2
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
}

define internal ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jquant1_10(ptr noundef %cinfo, i32 noundef %ncolors)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ncolors.addr = alloca i32, align 4
  %odither = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %ncolors, ptr %ncolors.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 1024)
  store ptr %call, ptr %odither, align 8
  %4 = load i32, ptr %ncolors.addr, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 512, %conv
  store i64 %mul, ptr %den, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %5 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %5, 16
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %k, align 4
  %cmp3 = icmp slt i32 %6, 16
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %7 = load i32, ptr %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %idxprom
  %8 = load i32, ptr %k, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [16 x i8], ptr %arrayidx, i64 0, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %mul9 = mul nsw i32 2, %conv8
  %sub10 = sub nsw i32 255, %mul9
  %conv11 = sext i32 %sub10 to i64
  %mul12 = mul nsw i64 %conv11, 255
  store i64 %mul12, ptr %num, align 8
  %10 = load i64, ptr %num, align 8
  %cmp13 = icmp slt i64 %10, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body5
  %11 = load i64, ptr %num, align 8
  %sub15 = sub nsw i64 0, %11
  %12 = load i64, ptr %den, align 8
  %div = sdiv i64 %sub15, %12
  %sub16 = sub nsw i64 0, %div
  br label %cond.end

cond.false:                                       ; preds = %for.body5
  %13 = load i64, ptr %num, align 8
  %14 = load i64, ptr %den, align 8
  %div17 = sdiv i64 %13, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub16, %cond.true ], [ %div17, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  %15 = load ptr, ptr %odither, align 8
  %16 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %15, i64 %idxprom19
  %17 = load i32, ptr %k, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  store i32 %conv18, ptr %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, ptr %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond2, !llvm.loop !32

for.end:                                          ; preds = %for.cond2
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %19 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond, !llvm.loop !33

for.end25:                                        ; preds = %for.cond
  %20 = load ptr, ptr %odither, align 8
  ret ptr %20
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
