; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jdcolor.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jdcolor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_color_deconverter = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind ssp uwtable
define void @jinit_color_deconverter(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cconvert = alloca ptr, align 8
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 48) #2
  store ptr %call, ptr %cconvert, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 82
  store ptr %call, ptr %cconvert1, align 8
  store ptr @start_pass_dcolor, ptr %call, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 9
  %3 = load i32, ptr %jpeg_color_space, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb3
    i32 4, label %sw.bb12
    i32 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 8
  %5 = load i32, ptr %num_components, align 8
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 8, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %num_components4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 8
  %11 = load i32, ptr %num_components4, align 8
  %cmp5.not = icmp eq i32 %11, 3
  br i1 %cmp5.not, label %sw.epilog, label %if.then6

if.then6:                                         ; preds = %sw.bb3
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 8, ptr %msg_code8, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull %12) #2
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry, %entry
  %16 = load ptr, ptr %cinfo.addr, align 8
  %num_components13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 8
  %17 = load i32, ptr %num_components13, align 8
  %cmp14.not = icmp eq i32 %17, 4
  br i1 %cmp14.not, label %sw.epilog, label %if.then15

if.then15:                                        ; preds = %sw.bb12
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 8, ptr %msg_code17, align 8
  %20 = load ptr, ptr %18, align 8
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull %18) #2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load ptr, ptr %cinfo.addr, align 8
  %num_components21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 8
  %23 = load i32, ptr %num_components21, align 8
  %cmp22 = icmp slt i32 %23, 1
  br i1 %cmp22, label %if.then23, label %sw.epilog

if.then23:                                        ; preds = %sw.default
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 8, ptr %msg_code25, align 8
  %26 = load ptr, ptr %24, align 8
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull %24) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then23, %sw.bb12, %if.then15, %sw.bb3, %if.then6, %sw.bb, %if.then
  %28 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 10
  %29 = load i32, ptr %out_color_space, align 8
  switch i32 %29, label %sw.default83 [
    i32 1, label %sw.bb29
    i32 2, label %sw.bb43
    i32 4, label %sw.bb63
  ]

sw.bb29:                                          ; preds = %sw.epilog
  %30 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i64 0, i32 28
  store i32 1, ptr %out_color_components, align 8
  %jpeg_color_space30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i64 0, i32 9
  %31 = load i32, ptr %jpeg_color_space30, align 4
  %cmp31 = icmp eq i32 %31, 1
  br i1 %cmp31, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb29
  %32 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 9
  %33 = load i32, ptr %jpeg_color_space32, align 4
  %cmp33 = icmp eq i32 %33, 3
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %lor.lhs.false, %sw.bb29
  %34 = load ptr, ptr %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %34, i64 0, i32 1
  store ptr @grayscale_convert, ptr %color_convert, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then34
  %storemerge = phi i32 [ 1, %if.then34 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %num_components36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 8
  %36 = load i32, ptr %num_components36, align 8
  %cmp37 = icmp slt i32 %storemerge, %36
  br i1 %cmp37, label %for.body, label %sw.epilog98

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 43
  %38 = load ptr, ptr %comp_info, align 8
  %39 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %39 to i64
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 %idxprom, i32 12
  store i32 0, ptr %component_needed, align 8
  %40 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %40, 1
  br label %for.cond, !llvm.loop !6

if.else:                                          ; preds = %lor.lhs.false
  %41 = load ptr, ptr %cinfo.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %msg_code39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 25, ptr %msg_code39, align 8
  %43 = load ptr, ptr %41, align 8
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr noundef nonnull %41) #2
  br label %sw.epilog98

sw.bb43:                                          ; preds = %sw.epilog
  %45 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 28
  store i32 3, ptr %out_color_components44, align 8
  %jpeg_color_space45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 9
  %46 = load i32, ptr %jpeg_color_space45, align 4
  %cmp46 = icmp eq i32 %46, 3
  br i1 %cmp46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %sw.bb43
  %47 = load ptr, ptr %cconvert, align 8
  %color_convert49 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %47, i64 0, i32 1
  store ptr @ycc_rgb_convert, ptr %color_convert49, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  call void @build_ycc_rgb_table(ptr noundef %48)
  br label %sw.epilog98

if.else50:                                        ; preds = %sw.bb43
  %49 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i64 0, i32 9
  %50 = load i32, ptr %jpeg_color_space51, align 4
  %cmp52 = icmp eq i32 %50, 2
  br i1 %cmp52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.else50
  %51 = load ptr, ptr %cconvert, align 8
  %color_convert55 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %51, i64 0, i32 1
  store ptr @null_convert, ptr %color_convert55, align 8
  br label %sw.epilog98

if.else56:                                        ; preds = %if.else50
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 5
  store i32 25, ptr %msg_code58, align 8
  %54 = load ptr, ptr %52, align 8
  %55 = load ptr, ptr %54, align 8
  call void %55(ptr noundef nonnull %52) #2
  br label %sw.epilog98

sw.bb63:                                          ; preds = %sw.epilog
  %56 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i64 0, i32 28
  store i32 4, ptr %out_color_components64, align 8
  %jpeg_color_space65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i64 0, i32 9
  %57 = load i32, ptr %jpeg_color_space65, align 4
  %cmp66 = icmp eq i32 %57, 5
  br i1 %cmp66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %sw.bb63
  %58 = load ptr, ptr %cconvert, align 8
  %color_convert69 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %58, i64 0, i32 1
  store ptr @ycck_cmyk_convert, ptr %color_convert69, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  call void @build_ycc_rgb_table(ptr noundef %59)
  br label %sw.epilog98

if.else70:                                        ; preds = %sw.bb63
  %60 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 9
  %61 = load i32, ptr %jpeg_color_space71, align 4
  %cmp72 = icmp eq i32 %61, 4
  br i1 %cmp72, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.else70
  %62 = load ptr, ptr %cconvert, align 8
  %color_convert75 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %62, i64 0, i32 1
  store ptr @null_convert, ptr %color_convert75, align 8
  br label %sw.epilog98

if.else76:                                        ; preds = %if.else70
  %63 = load ptr, ptr %cinfo.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 5
  store i32 25, ptr %msg_code78, align 8
  %65 = load ptr, ptr %63, align 8
  %66 = load ptr, ptr %65, align 8
  call void %66(ptr noundef nonnull %63) #2
  br label %sw.epilog98

sw.default83:                                     ; preds = %sw.epilog
  %67 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 10
  %68 = load i32, ptr %out_color_space84, align 8
  %jpeg_color_space85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 9
  %69 = load i32, ptr %jpeg_color_space85, align 4
  %cmp86 = icmp eq i32 %68, %69
  br i1 %cmp86, label %if.then87, label %if.else92

if.then87:                                        ; preds = %sw.default83
  %70 = load ptr, ptr %cinfo.addr, align 8
  %num_components88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i64 0, i32 8
  %71 = load i32, ptr %num_components88, align 8
  %out_color_components89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i64 0, i32 28
  store i32 %71, ptr %out_color_components89, align 8
  %72 = load ptr, ptr %cconvert, align 8
  %color_convert91 = getelementptr inbounds %struct.jpeg_color_deconverter, ptr %72, i64 0, i32 1
  store ptr @null_convert, ptr %color_convert91, align 8
  br label %sw.epilog98

if.else92:                                        ; preds = %sw.default83
  %73 = load ptr, ptr %cinfo.addr, align 8
  %74 = load ptr, ptr %73, align 8
  %msg_code94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 25, ptr %msg_code94, align 8
  %75 = load ptr, ptr %73, align 8
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr noundef nonnull %73) #2
  br label %sw.epilog98

sw.epilog98:                                      ; preds = %if.then87, %if.else92, %if.then67, %if.else76, %if.then73, %if.then47, %if.else56, %if.then53, %if.else, %for.cond
  %77 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i64 0, i32 19
  %78 = load i32, ptr %quantize_colors, align 4
  %tobool.not = icmp eq i32 %78, 0
  br i1 %tobool.not, label %if.else100, label %if.then99

if.then99:                                        ; preds = %sw.epilog98
  %79 = load ptr, ptr %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i64 0, i32 29
  store i32 1, ptr %output_components, align 4
  br label %if.end103

if.else100:                                       ; preds = %sw.epilog98
  %80 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i64 0, i32 28
  %81 = load i32, ptr %out_color_components101, align 8
  %output_components102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i64 0, i32 29
  store i32 %81, ptr %output_components102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then99
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_dcolor(ptr noundef %cinfo) #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @grayscale_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %0 = load ptr, ptr %input_buf, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 26
  %1 = load i32, ptr %output_width, align 8
  call void @jcopy_sample_rows(ptr noundef %0, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef 0, i32 noundef %num_rows, i32 noundef %1) #2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @ycc_rgb_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca ptr, align 8
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %inptr2 = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 82
  %0 = load ptr, ptr %cconvert1, align 8
  store ptr %0, ptr %cconvert, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8
  store i32 %2, ptr %num_cols, align 4
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 61
  %3 = load ptr, ptr %sample_range_limit, align 8
  store ptr %3, ptr %range_limit, align 8
  %4 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %5, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %6, ptr %Cbbtab, align 8
  %7 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %8, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.cond, %entry
  %10 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %input_buf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %input_row.addr, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx2, align 8
  store ptr %14, ptr %inptr0, align 8
  %15 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx3, align 8
  %17 = load i32, ptr %input_row.addr, align 4
  %idxprom4 = zext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %16, i64 %idxprom4
  %18 = load ptr, ptr %arrayidx5, align 8
  store ptr %18, ptr %inptr1, align 8
  %19 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %19, i64 2
  %20 = load ptr, ptr %arrayidx6, align 8
  %21 = load i32, ptr %input_row.addr, align 4
  %idxprom7 = zext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 %idxprom7
  %22 = load ptr, ptr %arrayidx8, align 8
  store ptr %22, ptr %inptr2, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %input_row.addr, align 4
  %23 = load ptr, ptr %output_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr %incdec.ptr, ptr %output_buf.addr, align 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %outptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i32 [ 0, %while.body ], [ %inc39, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %25 = load i32, ptr %num_cols, align 4
  %cmp9 = icmp ult i32 %storemerge, %25
  br i1 %cmp9, label %for.body, label %while.cond, !llvm.loop !8

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %inptr0, align 8
  %27 = load i32, ptr %col, align 4
  %idxprom10 = zext i32 %27 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %26, i64 %idxprom10
  %28 = load i8, ptr %arrayidx11, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, ptr %y, align 4
  %29 = load ptr, ptr %inptr1, align 8
  %30 = load i32, ptr %col, align 4
  %idxprom12 = zext i32 %30 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %29, i64 %idxprom12
  %31 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %31 to i32
  store i32 %conv14, ptr %cb, align 4
  %32 = load ptr, ptr %inptr2, align 8
  %33 = load i32, ptr %col, align 4
  %idxprom15 = zext i32 %33 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %32, i64 %idxprom15
  %34 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %34 to i32
  store i32 %conv17, ptr %cr, align 4
  %35 = load ptr, ptr %range_limit, align 8
  %36 = load i32, ptr %y, align 4
  %37 = load ptr, ptr %Crrtab, align 8
  %idxprom18 = zext i8 %34 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %37, i64 %idxprom18
  %38 = load i32, ptr %arrayidx19, align 4
  %add = add nsw i32 %36, %38
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %35, i64 %idxprom20
  %39 = load i8, ptr %arrayidx21, align 1
  %40 = load ptr, ptr %outptr, align 8
  store i8 %39, ptr %40, align 1
  %41 = load ptr, ptr %range_limit, align 8
  %42 = load i32, ptr %y, align 4
  %43 = load ptr, ptr %Cbgtab, align 8
  %44 = load i32, ptr %cb, align 4
  %idxprom23 = sext i32 %44 to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %43, i64 %idxprom23
  %45 = load i64, ptr %arrayidx24, align 8
  %46 = load ptr, ptr %Crgtab, align 8
  %47 = load i32, ptr %cr, align 4
  %idxprom25 = sext i32 %47 to i64
  %arrayidx26 = getelementptr inbounds i64, ptr %46, i64 %idxprom25
  %48 = load i64, ptr %arrayidx26, align 8
  %add27 = add nsw i64 %45, %48
  %49 = lshr i64 %add27, 16
  %conv28 = trunc i64 %49 to i32
  %add29 = add nsw i32 %42, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %41, i64 %idxprom30
  %50 = load i8, ptr %arrayidx31, align 1
  %51 = load ptr, ptr %outptr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %50, ptr %arrayidx32, align 1
  %52 = load ptr, ptr %range_limit, align 8
  %53 = load i32, ptr %y, align 4
  %54 = load ptr, ptr %Cbbtab, align 8
  %55 = load i32, ptr %cb, align 4
  %idxprom33 = sext i32 %55 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %54, i64 %idxprom33
  %56 = load i32, ptr %arrayidx34, align 4
  %add35 = add nsw i32 %53, %56
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %52, i64 %idxprom36
  %57 = load i8, ptr %arrayidx37, align 1
  %58 = load ptr, ptr %outptr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %58, i64 2
  store i8 %57, ptr %arrayidx38, align 1
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  %59 = load i32, ptr %col, align 4
  %inc39 = add i32 %59, 1
  br label %for.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_ycc_rgb_table(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cconvert = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 82
  %0 = load ptr, ptr %cconvert1, align 8
  store ptr %0, ptr %cconvert, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 1024) #2
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %0, i64 0, i32 1
  store ptr %call, ptr %Cr_r_tab, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %mem2, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %5(ptr noundef %6, i32 noundef 1, i64 noundef 1024) #2
  %7 = load ptr, ptr %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 2
  store ptr %call4, ptr %Cb_b_tab, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %mem5, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 2048) #2
  %11 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %11, i64 0, i32 3
  store ptr %call7, ptr %Cr_g_tab, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %mem8, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %call10 = call ptr %13(ptr noundef %14, i32 noundef 1, i64 noundef 2048) #2
  %15 = load ptr, ptr %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %15, i64 0, i32 4
  store ptr %call10, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i64 [ -128, %entry ], [ %inc28, %for.body ]
  store i64 %storemerge, ptr %x, align 8
  %16 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %16, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i64, ptr %x, align 8
  %mul = mul nsw i64 %17, 91881
  %add = add nsw i64 %mul, 32768
  %18 = lshr i64 %add, 16
  %conv = trunc i64 %18 to i32
  %19 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_color_deconverter, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %Cr_r_tab11, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 %idxprom
  store i32 %conv, ptr %arrayidx, align 4
  %22 = load i64, ptr %x, align 8
  %mul12 = mul nsw i64 %22, 116130
  %add13 = add nsw i64 %mul12, 32768
  %23 = lshr i64 %add13, 16
  %conv15 = trunc i64 %23 to i32
  %24 = load ptr, ptr %cconvert, align 8
  %Cb_b_tab16 = getelementptr inbounds %struct.my_color_deconverter, ptr %24, i64 0, i32 2
  %25 = load ptr, ptr %Cb_b_tab16, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %25, i64 %idxprom17
  store i32 %conv15, ptr %arrayidx18, align 4
  %27 = load i64, ptr %x, align 8
  %mul19 = mul nsw i64 %27, -46802
  %28 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab20 = getelementptr inbounds %struct.my_color_deconverter, ptr %28, i64 0, i32 3
  %29 = load ptr, ptr %Cr_g_tab20, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %29, i64 %idxprom21
  store i64 %mul19, ptr %arrayidx22, align 8
  %31 = load i64, ptr %x, align 8
  %mul23 = mul nsw i64 %31, -22554
  %add24 = add nsw i64 %mul23, 32768
  %32 = load ptr, ptr %cconvert, align 8
  %Cb_g_tab25 = getelementptr inbounds %struct.my_color_deconverter, ptr %32, i64 0, i32 4
  %33 = load ptr, ptr %Cb_g_tab25, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %33, i64 %idxprom26
  store i64 %add24, ptr %arrayidx27, align 8
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  %36 = load i64, ptr %x, align 8
  %inc28 = add nsw i64 %36, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @null_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %count = alloca i32, align 4
  %num_components = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %num_components1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %0 = load i32, ptr %num_components1, align 8
  store i32 %0, ptr %num_components, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8
  store i32 %2, ptr %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end13, %entry
  %3 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.inc12
  %storemerge = phi i32 [ %inc, %for.inc12 ], [ 0, %while.cond ]
  store i32 %storemerge, ptr %ci, align 4
  %4 = load i32, ptr %num_components, align 4
  %cmp2 = icmp slt i32 %storemerge, %4
  br i1 %cmp2, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %input_buf.addr, align 8
  %6 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %input_row.addr, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom3
  %9 = load ptr, ptr %arrayidx4, align 8
  store ptr %9, ptr %inptr, align 8
  %10 = load ptr, ptr %output_buf.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %ci, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %outptr, align 8
  %13 = load i32, ptr %num_cols, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %for.body
  %storemerge1 = phi i32 [ %13, %for.body ], [ %dec11, %for.body8 ]
  store i32 %storemerge1, ptr %count, align 4
  %cmp7.not = icmp eq i32 %storemerge1, 0
  br i1 %cmp7.not, label %for.inc12, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %14 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %outptr, align 8
  store i8 %15, ptr %16, align 1
  %17 = load i32, ptr %num_components, align 4
  %idx.ext9 = sext i32 %17 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %16, i64 %idx.ext9
  store ptr %add.ptr10, ptr %outptr, align 8
  %18 = load i32, ptr %count, align 4
  %dec11 = add i32 %18, -1
  br label %for.cond6, !llvm.loop !11

for.inc12:                                        ; preds = %for.cond6
  %19 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %19, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %20 = load i32, ptr %input_row.addr, align 4
  %inc14 = add i32 %20, 1
  store i32 %inc14, ptr %input_row.addr, align 4
  %21 = load ptr, ptr %output_buf.addr, align 8
  %incdec.ptr15 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %incdec.ptr15, ptr %output_buf.addr, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @ycck_cmyk_convert(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %input_row, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca ptr, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca ptr, align 8
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %inptr2 = alloca ptr, align 8
  %inptr3 = alloca ptr, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %input_row, ptr %input_row.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %num_rows, ptr %num_rows.addr, align 4
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 82
  %0 = load ptr, ptr %cconvert1, align 8
  store ptr %0, ptr %cconvert, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 26
  %2 = load i32, ptr %output_width, align 8
  store i32 %2, ptr %num_cols, align 4
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 61
  %3 = load ptr, ptr %sample_range_limit, align 8
  store ptr %3, ptr %range_limit, align 8
  %4 = load ptr, ptr %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %5, ptr %Crrtab, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %6, ptr %Cbbtab, align 8
  %7 = load ptr, ptr %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %8, ptr %Crgtab, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %9, ptr %Cbgtab, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.cond, %entry
  %10 = load i32, ptr %num_rows.addr, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %num_rows.addr, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %input_buf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %input_row.addr, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx2, align 8
  store ptr %14, ptr %inptr0, align 8
  %15 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx3, align 8
  %17 = load i32, ptr %input_row.addr, align 4
  %idxprom4 = zext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %16, i64 %idxprom4
  %18 = load ptr, ptr %arrayidx5, align 8
  store ptr %18, ptr %inptr1, align 8
  %19 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %19, i64 2
  %20 = load ptr, ptr %arrayidx6, align 8
  %21 = load i32, ptr %input_row.addr, align 4
  %idxprom7 = zext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 %idxprom7
  %22 = load ptr, ptr %arrayidx8, align 8
  store ptr %22, ptr %inptr2, align 8
  %23 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %23, i64 3
  %24 = load ptr, ptr %arrayidx9, align 8
  %25 = load i32, ptr %input_row.addr, align 4
  %idxprom10 = zext i32 %25 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %24, i64 %idxprom10
  %26 = load ptr, ptr %arrayidx11, align 8
  store ptr %26, ptr %inptr3, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %input_row.addr, align 4
  %27 = load ptr, ptr %output_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i64 1
  store ptr %incdec.ptr, ptr %output_buf.addr, align 8
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %outptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %storemerge = phi i32 [ 0, %while.body ], [ %inc47, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %29 = load i32, ptr %num_cols, align 4
  %cmp12 = icmp ult i32 %storemerge, %29
  br i1 %cmp12, label %for.body, label %while.cond, !llvm.loop !14

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %inptr0, align 8
  %31 = load i32, ptr %col, align 4
  %idxprom13 = zext i32 %31 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %30, i64 %idxprom13
  %32 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %32 to i32
  store i32 %conv, ptr %y, align 4
  %33 = load ptr, ptr %inptr1, align 8
  %34 = load i32, ptr %col, align 4
  %idxprom15 = zext i32 %34 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %33, i64 %idxprom15
  %35 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %35 to i32
  store i32 %conv17, ptr %cb, align 4
  %36 = load ptr, ptr %inptr2, align 8
  %37 = load i32, ptr %col, align 4
  %idxprom18 = zext i32 %37 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %36, i64 %idxprom18
  %38 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %38 to i32
  store i32 %conv20, ptr %cr, align 4
  %39 = load ptr, ptr %range_limit, align 8
  %40 = load i32, ptr %y, align 4
  %41 = load ptr, ptr %Crrtab, align 8
  %idxprom21 = zext i8 %38 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %41, i64 %idxprom21
  %42 = load i32, ptr %arrayidx22, align 4
  %add = add nsw i32 %40, %42
  %sub = sub nsw i32 255, %add
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %39, i64 %idxprom23
  %43 = load i8, ptr %arrayidx24, align 1
  %44 = load ptr, ptr %outptr, align 8
  store i8 %43, ptr %44, align 1
  %45 = load ptr, ptr %range_limit, align 8
  %46 = load i32, ptr %y, align 4
  %47 = load ptr, ptr %Cbgtab, align 8
  %48 = load i32, ptr %cb, align 4
  %idxprom26 = sext i32 %48 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %47, i64 %idxprom26
  %49 = load i64, ptr %arrayidx27, align 8
  %50 = load ptr, ptr %Crgtab, align 8
  %51 = load i32, ptr %cr, align 4
  %idxprom28 = sext i32 %51 to i64
  %arrayidx29 = getelementptr inbounds i64, ptr %50, i64 %idxprom28
  %52 = load i64, ptr %arrayidx29, align 8
  %add30 = add nsw i64 %49, %52
  %53 = lshr i64 %add30, 16
  %conv31 = trunc i64 %53 to i32
  %add32 = add nsw i32 %46, %conv31
  %sub33 = sub nsw i32 255, %add32
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %45, i64 %idxprom34
  %54 = load i8, ptr %arrayidx35, align 1
  %55 = load ptr, ptr %outptr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %54, ptr %arrayidx36, align 1
  %56 = load ptr, ptr %range_limit, align 8
  %57 = load i32, ptr %y, align 4
  %58 = load ptr, ptr %Cbbtab, align 8
  %59 = load i32, ptr %cb, align 4
  %idxprom37 = sext i32 %59 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %58, i64 %idxprom37
  %60 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %57, %60
  %sub40 = sub nsw i32 255, %add39
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %56, i64 %idxprom41
  %61 = load i8, ptr %arrayidx42, align 1
  %62 = load ptr, ptr %outptr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %62, i64 2
  store i8 %61, ptr %arrayidx43, align 1
  %63 = load ptr, ptr %inptr3, align 8
  %64 = load i32, ptr %col, align 4
  %idxprom44 = zext i32 %64 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %63, i64 %idxprom44
  %65 = load i8, ptr %arrayidx45, align 1
  %66 = load ptr, ptr %outptr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %66, i64 3
  store i8 %65, ptr %arrayidx46, align 1
  %add.ptr = getelementptr inbounds i8, ptr %66, i64 4
  store ptr %add.ptr, ptr %outptr, align 8
  %67 = load i32, ptr %col, align 4
  %inc47 = add i32 %67, 1
  br label %for.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

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
