; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmerge.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmerge.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_upsampler = type { %struct.jpeg_upsampler, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_merged_upsampler(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 88)
  store ptr %call, ptr %upsample, align 8
  %4 = load ptr, ptr %upsample, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 81
  store ptr %4, ptr %upsample1, align 8
  %6 = load ptr, ptr %upsample, align 8
  %pub = getelementptr inbounds %struct.my_upsampler, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub, i32 0, i32 0
  store ptr @start_pass_merged_upsample, ptr %start_pass, align 8
  %7 = load ptr, ptr %upsample, align 8
  %pub2 = getelementptr inbounds %struct.my_upsampler, ptr %7, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub2, i32 0, i32 2
  store i32 0, ptr %need_context_rows, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 26
  %9 = load i32, ptr %output_width, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 28
  %11 = load i32, ptr %out_color_components, align 8
  %mul = mul i32 %9, %11
  %12 = load ptr, ptr %upsample, align 8
  %out_row_width = getelementptr inbounds %struct.my_upsampler, ptr %12, i32 0, i32 8
  store i32 %mul, ptr %out_row_width, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 58
  %14 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %upsample, align 8
  %pub3 = getelementptr inbounds %struct.my_upsampler, ptr %15, i32 0, i32 0
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub3, i32 0, i32 1
  store ptr @merged_2v_upsample, ptr %upsample4, align 8
  %16 = load ptr, ptr %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, ptr %16, i32 0, i32 1
  store ptr @h2v2_merged_upsample, ptr %upmethod, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mem5, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %alloc_large, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %upsample, align 8
  %out_row_width6 = getelementptr inbounds %struct.my_upsampler, ptr %21, i32 0, i32 8
  %22 = load i32, ptr %out_row_width6, align 4
  %conv = zext i32 %22 to i64
  %mul7 = mul i64 %conv, 1
  %call8 = call ptr %19(ptr noundef %20, i32 noundef 1, i64 noundef %mul7)
  %23 = load ptr, ptr %upsample, align 8
  %spare_row = getelementptr inbounds %struct.my_upsampler, ptr %23, i32 0, i32 6
  store ptr %call8, ptr %spare_row, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %upsample, align 8
  %pub9 = getelementptr inbounds %struct.my_upsampler, ptr %24, i32 0, i32 0
  %upsample10 = getelementptr inbounds %struct.jpeg_upsampler, ptr %pub9, i32 0, i32 1
  store ptr @merged_1v_upsample, ptr %upsample10, align 8
  %25 = load ptr, ptr %upsample, align 8
  %upmethod11 = getelementptr inbounds %struct.my_upsampler, ptr %25, i32 0, i32 1
  store ptr @h2v1_merged_upsample, ptr %upmethod11, align 8
  %26 = load ptr, ptr %upsample, align 8
  %spare_row12 = getelementptr inbounds %struct.my_upsampler, ptr %26, i32 0, i32 6
  store ptr null, ptr %spare_row12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmerge_0(ptr noundef %27)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_merged_upsample(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %upsample, align 8
  %spare_full = getelementptr inbounds %struct.my_upsampler, ptr %2, i32 0, i32 7
  store i32 0, ptr %spare_full, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 27
  %4 = load i32, ptr %output_height, align 4
  %5 = load ptr, ptr %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %5, i32 0, i32 9
  store i32 %4, ptr %rows_to_go, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @merged_2v_upsample(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca ptr, align 8
  %work_ptrs = alloca [2 x ptr], align 8
  %num_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %upsample, align 8
  %spare_full = getelementptr inbounds %struct.my_upsampler, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %spare_full, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %upsample, align 8
  %spare_row = getelementptr inbounds %struct.my_upsampler, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %output_buf.addr, align 8
  %6 = load ptr, ptr %out_row_ctr.addr, align 8
  %7 = load i32, ptr %6, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %idx.ext
  %8 = load ptr, ptr %upsample, align 8
  %out_row_width = getelementptr inbounds %struct.my_upsampler, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %out_row_width, align 4
  call void @jcopy_sample_rows(ptr noundef %spare_row, i32 noundef 0, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1, i32 noundef %9)
  store i32 1, ptr %num_rows, align 4
  %10 = load ptr, ptr %upsample, align 8
  %spare_full2 = getelementptr inbounds %struct.my_upsampler, ptr %10, i32 0, i32 7
  store i32 0, ptr %spare_full2, align 8
  br label %if.end19

if.else:                                          ; preds = %entry
  store i32 2, ptr %num_rows, align 4
  %11 = load i32, ptr %num_rows, align 4
  %12 = load ptr, ptr %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %rows_to_go, align 8
  %cmp = icmp ugt i32 %11, %13
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %14 = load ptr, ptr %upsample, align 8
  %rows_to_go4 = getelementptr inbounds %struct.my_upsampler, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %rows_to_go4, align 8
  store i32 %15, ptr %num_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %16 = load ptr, ptr %out_row_ctr.addr, align 8
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %out_rows_avail.addr, align 4
  %sub = sub i32 %18, %17
  store i32 %sub, ptr %out_rows_avail.addr, align 4
  %19 = load i32, ptr %num_rows, align 4
  %20 = load i32, ptr %out_rows_avail.addr, align 4
  %cmp5 = icmp ugt i32 %19, %20
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %21 = load i32, ptr %out_rows_avail.addr, align 4
  store i32 %21, ptr %num_rows, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %22 = load ptr, ptr %output_buf.addr, align 8
  %23 = load ptr, ptr %out_row_ctr.addr, align 8
  %24 = load i32, ptr %23, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %25 = load ptr, ptr %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds [2 x ptr], ptr %work_ptrs, i64 0, i64 0
  store ptr %25, ptr %arrayidx8, align 8
  %26 = load i32, ptr %num_rows, align 4
  %cmp9 = icmp ugt i32 %26, 1
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.end7
  %27 = load ptr, ptr %output_buf.addr, align 8
  %28 = load ptr, ptr %out_row_ctr.addr, align 8
  %29 = load i32, ptr %28, align 4
  %add = add i32 %29, 1
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %27, i64 %idxprom11
  %30 = load ptr, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %work_ptrs, i64 0, i64 1
  store ptr %30, ptr %arrayidx13, align 8
  br label %if.end18

if.else14:                                        ; preds = %if.end7
  %31 = load ptr, ptr %upsample, align 8
  %spare_row15 = getelementptr inbounds %struct.my_upsampler, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %spare_row15, align 8
  %arrayidx16 = getelementptr inbounds [2 x ptr], ptr %work_ptrs, i64 0, i64 1
  store ptr %32, ptr %arrayidx16, align 8
  %33 = load ptr, ptr %upsample, align 8
  %spare_full17 = getelementptr inbounds %struct.my_upsampler, ptr %33, i32 0, i32 7
  store i32 1, ptr %spare_full17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then10
  %34 = load ptr, ptr %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %upmethod, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load ptr, ptr %input_buf.addr, align 8
  %38 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %39 = load i32, ptr %38, align 4
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %work_ptrs, i64 0, i64 0
  call void %35(ptr noundef %36, ptr noundef %37, i32 noundef %39, ptr noundef %arraydecay)
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %40 = load i32, ptr %num_rows, align 4
  %41 = load ptr, ptr %out_row_ctr.addr, align 8
  %42 = load i32, ptr %41, align 4
  %add20 = add i32 %42, %40
  store i32 %add20, ptr %41, align 4
  %43 = load i32, ptr %num_rows, align 4
  %44 = load ptr, ptr %upsample, align 8
  %rows_to_go21 = getelementptr inbounds %struct.my_upsampler, ptr %44, i32 0, i32 9
  %45 = load i32, ptr %rows_to_go21, align 8
  %sub22 = sub i32 %45, %43
  store i32 %sub22, ptr %rows_to_go21, align 8
  %46 = load ptr, ptr %upsample, align 8
  %spare_full23 = getelementptr inbounds %struct.my_upsampler, ptr %46, i32 0, i32 7
  %47 = load i32, ptr %spare_full23, align 8
  %tobool24 = icmp ne i32 %47, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end19
  %48 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %49 = load i32, ptr %48, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %48, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end19
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v2_merged_upsample(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %in_row_group_ctr, ptr noundef %output_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  %y = alloca i32, align 4
  %cred = alloca i32, align 4
  %cgreen = alloca i32, align 4
  %cblue = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr0 = alloca ptr, align 8
  %outptr1 = alloca ptr, align 8
  %inptr00 = alloca ptr, align 8
  %inptr01 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %inptr2 = alloca ptr, align 8
  %col = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 61
  %3 = load ptr, ptr %sample_range_limit, align 8
  store ptr %3, ptr %range_limit, align 8
  %4 = load ptr, ptr %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %5, ptr %Crrtab, align 8
  %6 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %7, ptr %Cbbtab, align 8
  %8 = load ptr, ptr %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %9, ptr %Crgtab, align 8
  %10 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %11, ptr %Cbgtab, align 8
  %12 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = load i32, ptr %in_row_group_ctr.addr, align 4
  %mul = mul i32 %14, 2
  %idxprom = zext i32 %mul to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx2, align 8
  store ptr %15, ptr %inptr00, align 8
  %16 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %16, i64 0
  %17 = load ptr, ptr %arrayidx3, align 8
  %18 = load i32, ptr %in_row_group_ctr.addr, align 4
  %mul4 = mul i32 %18, 2
  %add = add i32 %mul4, 1
  %idxprom5 = zext i32 %add to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %17, i64 %idxprom5
  %19 = load ptr, ptr %arrayidx6, align 8
  store ptr %19, ptr %inptr01, align 8
  %20 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx7, align 8
  %22 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom8 = zext i32 %22 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %21, i64 %idxprom8
  %23 = load ptr, ptr %arrayidx9, align 8
  store ptr %23, ptr %inptr1, align 8
  %24 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %24, i64 2
  %25 = load ptr, ptr %arrayidx10, align 8
  %26 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom11 = zext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %25, i64 %idxprom11
  %27 = load ptr, ptr %arrayidx12, align 8
  store ptr %27, ptr %inptr2, align 8
  %28 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %28, i64 0
  %29 = load ptr, ptr %arrayidx13, align 8
  store ptr %29, ptr %outptr0, align 8
  %30 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %30, i64 1
  %31 = load ptr, ptr %arrayidx14, align 8
  store ptr %31, ptr %outptr1, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 26
  %33 = load i32, ptr %output_width, align 8
  %shr = lshr i32 %33, 1
  store i32 %shr, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %34, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %inptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %inptr1, align 8
  %36 = load i8, ptr %35, align 1
  %conv = zext i8 %36 to i32
  store i32 %conv, ptr %cb, align 4
  %37 = load ptr, ptr %inptr2, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr15, ptr %inptr2, align 8
  %38 = load i8, ptr %37, align 1
  %conv16 = zext i8 %38 to i32
  store i32 %conv16, ptr %cr, align 4
  %39 = load ptr, ptr %Crrtab, align 8
  %40 = load i32, ptr %cr, align 4
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %39, i64 %idxprom17
  %41 = load i32, ptr %arrayidx18, align 4
  store i32 %41, ptr %cred, align 4
  %42 = load ptr, ptr %Cbgtab, align 8
  %43 = load i32, ptr %cb, align 4
  %idxprom19 = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds i64, ptr %42, i64 %idxprom19
  %44 = load i64, ptr %arrayidx20, align 8
  %45 = load ptr, ptr %Crgtab, align 8
  %46 = load i32, ptr %cr, align 4
  %idxprom21 = sext i32 %46 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %45, i64 %idxprom21
  %47 = load i64, ptr %arrayidx22, align 8
  %add23 = add nsw i64 %44, %47
  %shr24 = ashr i64 %add23, 16
  %conv25 = trunc i64 %shr24 to i32
  store i32 %conv25, ptr %cgreen, align 4
  %48 = load ptr, ptr %Cbbtab, align 8
  %49 = load i32, ptr %cb, align 4
  %idxprom26 = sext i32 %49 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %48, i64 %idxprom26
  %50 = load i32, ptr %arrayidx27, align 4
  store i32 %50, ptr %cblue, align 4
  %51 = load ptr, ptr %inptr00, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr28, ptr %inptr00, align 8
  %52 = load i8, ptr %51, align 1
  %conv29 = zext i8 %52 to i32
  store i32 %conv29, ptr %y, align 4
  %53 = load ptr, ptr %range_limit, align 8
  %54 = load i32, ptr %y, align 4
  %55 = load i32, ptr %cred, align 4
  %add30 = add nsw i32 %54, %55
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %53, i64 %idxprom31
  %56 = load i8, ptr %arrayidx32, align 1
  %57 = load ptr, ptr %outptr0, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %57, i64 0
  store i8 %56, ptr %arrayidx33, align 1
  %58 = load ptr, ptr %range_limit, align 8
  %59 = load i32, ptr %y, align 4
  %60 = load i32, ptr %cgreen, align 4
  %add34 = add nsw i32 %59, %60
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %58, i64 %idxprom35
  %61 = load i8, ptr %arrayidx36, align 1
  %62 = load ptr, ptr %outptr0, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %61, ptr %arrayidx37, align 1
  %63 = load ptr, ptr %range_limit, align 8
  %64 = load i32, ptr %y, align 4
  %65 = load i32, ptr %cblue, align 4
  %add38 = add nsw i32 %64, %65
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %63, i64 %idxprom39
  %66 = load i8, ptr %arrayidx40, align 1
  %67 = load ptr, ptr %outptr0, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %67, i64 2
  store i8 %66, ptr %arrayidx41, align 1
  %68 = load ptr, ptr %outptr0, align 8
  %add.ptr = getelementptr inbounds i8, ptr %68, i64 3
  store ptr %add.ptr, ptr %outptr0, align 8
  %69 = load ptr, ptr %inptr00, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr42, ptr %inptr00, align 8
  %70 = load i8, ptr %69, align 1
  %conv43 = zext i8 %70 to i32
  store i32 %conv43, ptr %y, align 4
  %71 = load ptr, ptr %range_limit, align 8
  %72 = load i32, ptr %y, align 4
  %73 = load i32, ptr %cred, align 4
  %add44 = add nsw i32 %72, %73
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %71, i64 %idxprom45
  %74 = load i8, ptr %arrayidx46, align 1
  %75 = load ptr, ptr %outptr0, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %75, i64 0
  store i8 %74, ptr %arrayidx47, align 1
  %76 = load ptr, ptr %range_limit, align 8
  %77 = load i32, ptr %y, align 4
  %78 = load i32, ptr %cgreen, align 4
  %add48 = add nsw i32 %77, %78
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %76, i64 %idxprom49
  %79 = load i8, ptr %arrayidx50, align 1
  %80 = load ptr, ptr %outptr0, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %79, ptr %arrayidx51, align 1
  %81 = load ptr, ptr %range_limit, align 8
  %82 = load i32, ptr %y, align 4
  %83 = load i32, ptr %cblue, align 4
  %add52 = add nsw i32 %82, %83
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %81, i64 %idxprom53
  %84 = load i8, ptr %arrayidx54, align 1
  %85 = load ptr, ptr %outptr0, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %85, i64 2
  store i8 %84, ptr %arrayidx55, align 1
  %86 = load ptr, ptr %outptr0, align 8
  %add.ptr56 = getelementptr inbounds i8, ptr %86, i64 3
  store ptr %add.ptr56, ptr %outptr0, align 8
  %87 = load ptr, ptr %inptr01, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr57, ptr %inptr01, align 8
  %88 = load i8, ptr %87, align 1
  %conv58 = zext i8 %88 to i32
  store i32 %conv58, ptr %y, align 4
  %89 = load ptr, ptr %range_limit, align 8
  %90 = load i32, ptr %y, align 4
  %91 = load i32, ptr %cred, align 4
  %add59 = add nsw i32 %90, %91
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %89, i64 %idxprom60
  %92 = load i8, ptr %arrayidx61, align 1
  %93 = load ptr, ptr %outptr1, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %93, i64 0
  store i8 %92, ptr %arrayidx62, align 1
  %94 = load ptr, ptr %range_limit, align 8
  %95 = load i32, ptr %y, align 4
  %96 = load i32, ptr %cgreen, align 4
  %add63 = add nsw i32 %95, %96
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %94, i64 %idxprom64
  %97 = load i8, ptr %arrayidx65, align 1
  %98 = load ptr, ptr %outptr1, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %98, i64 1
  store i8 %97, ptr %arrayidx66, align 1
  %99 = load ptr, ptr %range_limit, align 8
  %100 = load i32, ptr %y, align 4
  %101 = load i32, ptr %cblue, align 4
  %add67 = add nsw i32 %100, %101
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %99, i64 %idxprom68
  %102 = load i8, ptr %arrayidx69, align 1
  %103 = load ptr, ptr %outptr1, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %103, i64 2
  store i8 %102, ptr %arrayidx70, align 1
  %104 = load ptr, ptr %outptr1, align 8
  %add.ptr71 = getelementptr inbounds i8, ptr %104, i64 3
  store ptr %add.ptr71, ptr %outptr1, align 8
  %105 = load ptr, ptr %inptr01, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr72, ptr %inptr01, align 8
  %106 = load i8, ptr %105, align 1
  %conv73 = zext i8 %106 to i32
  store i32 %conv73, ptr %y, align 4
  %107 = load ptr, ptr %range_limit, align 8
  %108 = load i32, ptr %y, align 4
  %109 = load i32, ptr %cred, align 4
  %add74 = add nsw i32 %108, %109
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %107, i64 %idxprom75
  %110 = load i8, ptr %arrayidx76, align 1
  %111 = load ptr, ptr %outptr1, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %111, i64 0
  store i8 %110, ptr %arrayidx77, align 1
  %112 = load ptr, ptr %range_limit, align 8
  %113 = load i32, ptr %y, align 4
  %114 = load i32, ptr %cgreen, align 4
  %add78 = add nsw i32 %113, %114
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %112, i64 %idxprom79
  %115 = load i8, ptr %arrayidx80, align 1
  %116 = load ptr, ptr %outptr1, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %116, i64 1
  store i8 %115, ptr %arrayidx81, align 1
  %117 = load ptr, ptr %range_limit, align 8
  %118 = load i32, ptr %y, align 4
  %119 = load i32, ptr %cblue, align 4
  %add82 = add nsw i32 %118, %119
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %117, i64 %idxprom83
  %120 = load i8, ptr %arrayidx84, align 1
  %121 = load ptr, ptr %outptr1, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %121, i64 2
  store i8 %120, ptr %arrayidx85, align 1
  %122 = load ptr, ptr %outptr1, align 8
  %add.ptr86 = getelementptr inbounds i8, ptr %122, i64 3
  store ptr %add.ptr86, ptr %outptr1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %123 = load i32, ptr %col, align 4
  %dec = add i32 %123, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %124 = load ptr, ptr %cinfo.addr, align 8
  %output_width87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 26
  %125 = load i32, ptr %output_width87, align 8
  %and = and i32 %125, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %126 = load ptr, ptr %inptr1, align 8
  %127 = load i8, ptr %126, align 1
  %conv88 = zext i8 %127 to i32
  store i32 %conv88, ptr %cb, align 4
  %128 = load ptr, ptr %inptr2, align 8
  %129 = load i8, ptr %128, align 1
  %conv89 = zext i8 %129 to i32
  store i32 %conv89, ptr %cr, align 4
  %130 = load ptr, ptr %Crrtab, align 8
  %131 = load i32, ptr %cr, align 4
  %idxprom90 = sext i32 %131 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %130, i64 %idxprom90
  %132 = load i32, ptr %arrayidx91, align 4
  store i32 %132, ptr %cred, align 4
  %133 = load ptr, ptr %Cbgtab, align 8
  %134 = load i32, ptr %cb, align 4
  %idxprom92 = sext i32 %134 to i64
  %arrayidx93 = getelementptr inbounds i64, ptr %133, i64 %idxprom92
  %135 = load i64, ptr %arrayidx93, align 8
  %136 = load ptr, ptr %Crgtab, align 8
  %137 = load i32, ptr %cr, align 4
  %idxprom94 = sext i32 %137 to i64
  %arrayidx95 = getelementptr inbounds i64, ptr %136, i64 %idxprom94
  %138 = load i64, ptr %arrayidx95, align 8
  %add96 = add nsw i64 %135, %138
  %shr97 = ashr i64 %add96, 16
  %conv98 = trunc i64 %shr97 to i32
  store i32 %conv98, ptr %cgreen, align 4
  %139 = load ptr, ptr %Cbbtab, align 8
  %140 = load i32, ptr %cb, align 4
  %idxprom99 = sext i32 %140 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %139, i64 %idxprom99
  %141 = load i32, ptr %arrayidx100, align 4
  store i32 %141, ptr %cblue, align 4
  %142 = load ptr, ptr %inptr00, align 8
  %143 = load i8, ptr %142, align 1
  %conv101 = zext i8 %143 to i32
  store i32 %conv101, ptr %y, align 4
  %144 = load ptr, ptr %range_limit, align 8
  %145 = load i32, ptr %y, align 4
  %146 = load i32, ptr %cred, align 4
  %add102 = add nsw i32 %145, %146
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %144, i64 %idxprom103
  %147 = load i8, ptr %arrayidx104, align 1
  %148 = load ptr, ptr %outptr0, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %148, i64 0
  store i8 %147, ptr %arrayidx105, align 1
  %149 = load ptr, ptr %range_limit, align 8
  %150 = load i32, ptr %y, align 4
  %151 = load i32, ptr %cgreen, align 4
  %add106 = add nsw i32 %150, %151
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %149, i64 %idxprom107
  %152 = load i8, ptr %arrayidx108, align 1
  %153 = load ptr, ptr %outptr0, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %153, i64 1
  store i8 %152, ptr %arrayidx109, align 1
  %154 = load ptr, ptr %range_limit, align 8
  %155 = load i32, ptr %y, align 4
  %156 = load i32, ptr %cblue, align 4
  %add110 = add nsw i32 %155, %156
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %154, i64 %idxprom111
  %157 = load i8, ptr %arrayidx112, align 1
  %158 = load ptr, ptr %outptr0, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %158, i64 2
  store i8 %157, ptr %arrayidx113, align 1
  %159 = load ptr, ptr %inptr01, align 8
  %160 = load i8, ptr %159, align 1
  %conv114 = zext i8 %160 to i32
  store i32 %conv114, ptr %y, align 4
  %161 = load ptr, ptr %range_limit, align 8
  %162 = load i32, ptr %y, align 4
  %163 = load i32, ptr %cred, align 4
  %add115 = add nsw i32 %162, %163
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %161, i64 %idxprom116
  %164 = load i8, ptr %arrayidx117, align 1
  %165 = load ptr, ptr %outptr1, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %165, i64 0
  store i8 %164, ptr %arrayidx118, align 1
  %166 = load ptr, ptr %range_limit, align 8
  %167 = load i32, ptr %y, align 4
  %168 = load i32, ptr %cgreen, align 4
  %add119 = add nsw i32 %167, %168
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %166, i64 %idxprom120
  %169 = load i8, ptr %arrayidx121, align 1
  %170 = load ptr, ptr %outptr1, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %170, i64 1
  store i8 %169, ptr %arrayidx122, align 1
  %171 = load ptr, ptr %range_limit, align 8
  %172 = load i32, ptr %y, align 4
  %173 = load i32, ptr %cblue, align 4
  %add123 = add nsw i32 %172, %173
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %171, i64 %idxprom124
  %174 = load i8, ptr %arrayidx125, align 1
  %175 = load ptr, ptr %outptr1, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %175, i64 2
  store i8 %174, ptr %arrayidx126, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @merged_1v_upsample(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %upmethod, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %input_buf.addr, align 8
  %6 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %output_buf.addr, align 8
  %9 = load ptr, ptr %out_row_ctr.addr, align 8
  %10 = load i32, ptr %9, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %8, i64 %idx.ext
  call void %3(ptr noundef %4, ptr noundef %5, i32 noundef %7, ptr noundef %add.ptr)
  %11 = load ptr, ptr %out_row_ctr.addr, align 8
  %12 = load i32, ptr %11, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %11, align 4
  %13 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %14 = load i32, ptr %13, align 4
  %inc2 = add i32 %14, 1
  store i32 %inc2, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @h2v1_merged_upsample(ptr noundef %cinfo, ptr noundef %input_buf, i32 noundef %in_row_group_ctr, ptr noundef %output_buf) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  %y = alloca i32, align 4
  %cred = alloca i32, align 4
  %cgreen = alloca i32, align 4
  %cblue = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca ptr, align 8
  %inptr0 = alloca ptr, align 8
  %inptr1 = alloca ptr, align 8
  %inptr2 = alloca ptr, align 8
  %col = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  %Crrtab = alloca ptr, align 8
  %Cbbtab = alloca ptr, align 8
  %Crgtab = alloca ptr, align 8
  %Cbgtab = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store i32 %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 4
  store ptr %output_buf, ptr %output_buf.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 61
  %3 = load ptr, ptr %sample_range_limit, align 8
  store ptr %3, ptr %range_limit, align 8
  %4 = load ptr, ptr %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %5, ptr %Crrtab, align 8
  %6 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %7, ptr %Cbbtab, align 8
  %8 = load ptr, ptr %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %9, ptr %Crgtab, align 8
  %10 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %11, ptr %Cbgtab, align 8
  %12 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx2, align 8
  store ptr %15, ptr %inptr0, align 8
  %16 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx3, align 8
  %18 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom4 = zext i32 %18 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %17, i64 %idxprom4
  %19 = load ptr, ptr %arrayidx5, align 8
  store ptr %19, ptr %inptr1, align 8
  %20 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx6, align 8
  %22 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom7 = zext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %21, i64 %idxprom7
  %23 = load ptr, ptr %arrayidx8, align 8
  store ptr %23, ptr %inptr2, align 8
  %24 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %24, i64 0
  %25 = load ptr, ptr %arrayidx9, align 8
  store ptr %25, ptr %outptr, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 26
  %27 = load i32, ptr %output_width, align 8
  %shr = lshr i32 %27, 1
  store i32 %shr, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, ptr %col, align 4
  %cmp = icmp ugt i32 %28, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %inptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %inptr1, align 8
  %30 = load i8, ptr %29, align 1
  %conv = zext i8 %30 to i32
  store i32 %conv, ptr %cb, align 4
  %31 = load ptr, ptr %inptr2, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr10, ptr %inptr2, align 8
  %32 = load i8, ptr %31, align 1
  %conv11 = zext i8 %32 to i32
  store i32 %conv11, ptr %cr, align 4
  %33 = load ptr, ptr %Crrtab, align 8
  %34 = load i32, ptr %cr, align 4
  %idxprom12 = sext i32 %34 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %33, i64 %idxprom12
  %35 = load i32, ptr %arrayidx13, align 4
  store i32 %35, ptr %cred, align 4
  %36 = load ptr, ptr %Cbgtab, align 8
  %37 = load i32, ptr %cb, align 4
  %idxprom14 = sext i32 %37 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %36, i64 %idxprom14
  %38 = load i64, ptr %arrayidx15, align 8
  %39 = load ptr, ptr %Crgtab, align 8
  %40 = load i32, ptr %cr, align 4
  %idxprom16 = sext i32 %40 to i64
  %arrayidx17 = getelementptr inbounds i64, ptr %39, i64 %idxprom16
  %41 = load i64, ptr %arrayidx17, align 8
  %add = add nsw i64 %38, %41
  %shr18 = ashr i64 %add, 16
  %conv19 = trunc i64 %shr18 to i32
  store i32 %conv19, ptr %cgreen, align 4
  %42 = load ptr, ptr %Cbbtab, align 8
  %43 = load i32, ptr %cb, align 4
  %idxprom20 = sext i32 %43 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %42, i64 %idxprom20
  %44 = load i32, ptr %arrayidx21, align 4
  store i32 %44, ptr %cblue, align 4
  %45 = load ptr, ptr %inptr0, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr22, ptr %inptr0, align 8
  %46 = load i8, ptr %45, align 1
  %conv23 = zext i8 %46 to i32
  store i32 %conv23, ptr %y, align 4
  %47 = load ptr, ptr %range_limit, align 8
  %48 = load i32, ptr %y, align 4
  %49 = load i32, ptr %cred, align 4
  %add24 = add nsw i32 %48, %49
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %47, i64 %idxprom25
  %50 = load i8, ptr %arrayidx26, align 1
  %51 = load ptr, ptr %outptr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %51, i64 0
  store i8 %50, ptr %arrayidx27, align 1
  %52 = load ptr, ptr %range_limit, align 8
  %53 = load i32, ptr %y, align 4
  %54 = load i32, ptr %cgreen, align 4
  %add28 = add nsw i32 %53, %54
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %52, i64 %idxprom29
  %55 = load i8, ptr %arrayidx30, align 1
  %56 = load ptr, ptr %outptr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %55, ptr %arrayidx31, align 1
  %57 = load ptr, ptr %range_limit, align 8
  %58 = load i32, ptr %y, align 4
  %59 = load i32, ptr %cblue, align 4
  %add32 = add nsw i32 %58, %59
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %57, i64 %idxprom33
  %60 = load i8, ptr %arrayidx34, align 1
  %61 = load ptr, ptr %outptr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %61, i64 2
  store i8 %60, ptr %arrayidx35, align 1
  %62 = load ptr, ptr %outptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %62, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  %63 = load ptr, ptr %inptr0, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr36, ptr %inptr0, align 8
  %64 = load i8, ptr %63, align 1
  %conv37 = zext i8 %64 to i32
  store i32 %conv37, ptr %y, align 4
  %65 = load ptr, ptr %range_limit, align 8
  %66 = load i32, ptr %y, align 4
  %67 = load i32, ptr %cred, align 4
  %add38 = add nsw i32 %66, %67
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %65, i64 %idxprom39
  %68 = load i8, ptr %arrayidx40, align 1
  %69 = load ptr, ptr %outptr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %69, i64 0
  store i8 %68, ptr %arrayidx41, align 1
  %70 = load ptr, ptr %range_limit, align 8
  %71 = load i32, ptr %y, align 4
  %72 = load i32, ptr %cgreen, align 4
  %add42 = add nsw i32 %71, %72
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %70, i64 %idxprom43
  %73 = load i8, ptr %arrayidx44, align 1
  %74 = load ptr, ptr %outptr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %73, ptr %arrayidx45, align 1
  %75 = load ptr, ptr %range_limit, align 8
  %76 = load i32, ptr %y, align 4
  %77 = load i32, ptr %cblue, align 4
  %add46 = add nsw i32 %76, %77
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %75, i64 %idxprom47
  %78 = load i8, ptr %arrayidx48, align 1
  %79 = load ptr, ptr %outptr, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %79, i64 2
  store i8 %78, ptr %arrayidx49, align 1
  %80 = load ptr, ptr %outptr, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %80, i64 3
  store ptr %add.ptr50, ptr %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, ptr %col, align 4
  %dec = add i32 %81, -1
  store i32 %dec, ptr %col, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %82 = load ptr, ptr %cinfo.addr, align 8
  %output_width51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 26
  %83 = load i32, ptr %output_width51, align 8
  %and = and i32 %83, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %84 = load ptr, ptr %inptr1, align 8
  %85 = load i8, ptr %84, align 1
  %conv52 = zext i8 %85 to i32
  store i32 %conv52, ptr %cb, align 4
  %86 = load ptr, ptr %inptr2, align 8
  %87 = load i8, ptr %86, align 1
  %conv53 = zext i8 %87 to i32
  store i32 %conv53, ptr %cr, align 4
  %88 = load ptr, ptr %Crrtab, align 8
  %89 = load i32, ptr %cr, align 4
  %idxprom54 = sext i32 %89 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %88, i64 %idxprom54
  %90 = load i32, ptr %arrayidx55, align 4
  store i32 %90, ptr %cred, align 4
  %91 = load ptr, ptr %Cbgtab, align 8
  %92 = load i32, ptr %cb, align 4
  %idxprom56 = sext i32 %92 to i64
  %arrayidx57 = getelementptr inbounds i64, ptr %91, i64 %idxprom56
  %93 = load i64, ptr %arrayidx57, align 8
  %94 = load ptr, ptr %Crgtab, align 8
  %95 = load i32, ptr %cr, align 4
  %idxprom58 = sext i32 %95 to i64
  %arrayidx59 = getelementptr inbounds i64, ptr %94, i64 %idxprom58
  %96 = load i64, ptr %arrayidx59, align 8
  %add60 = add nsw i64 %93, %96
  %shr61 = ashr i64 %add60, 16
  %conv62 = trunc i64 %shr61 to i32
  store i32 %conv62, ptr %cgreen, align 4
  %97 = load ptr, ptr %Cbbtab, align 8
  %98 = load i32, ptr %cb, align 4
  %idxprom63 = sext i32 %98 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %97, i64 %idxprom63
  %99 = load i32, ptr %arrayidx64, align 4
  store i32 %99, ptr %cblue, align 4
  %100 = load ptr, ptr %inptr0, align 8
  %101 = load i8, ptr %100, align 1
  %conv65 = zext i8 %101 to i32
  store i32 %conv65, ptr %y, align 4
  %102 = load ptr, ptr %range_limit, align 8
  %103 = load i32, ptr %y, align 4
  %104 = load i32, ptr %cred, align 4
  %add66 = add nsw i32 %103, %104
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %102, i64 %idxprom67
  %105 = load i8, ptr %arrayidx68, align 1
  %106 = load ptr, ptr %outptr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %106, i64 0
  store i8 %105, ptr %arrayidx69, align 1
  %107 = load ptr, ptr %range_limit, align 8
  %108 = load i32, ptr %y, align 4
  %109 = load i32, ptr %cgreen, align 4
  %add70 = add nsw i32 %108, %109
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %107, i64 %idxprom71
  %110 = load i8, ptr %arrayidx72, align 1
  %111 = load ptr, ptr %outptr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 %110, ptr %arrayidx73, align 1
  %112 = load ptr, ptr %range_limit, align 8
  %113 = load i32, ptr %y, align 4
  %114 = load i32, ptr %cblue, align 4
  %add74 = add nsw i32 %113, %114
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %112, i64 %idxprom75
  %115 = load i8, ptr %arrayidx76, align 1
  %116 = load ptr, ptr %outptr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %116, i64 2
  store i8 %115, ptr %arrayidx77, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @build_ycc_rgb_table(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 1024)
  %6 = load ptr, ptr %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %6, i32 0, i32 2
  store ptr %call, ptr %Cr_r_tab, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %alloc_small3, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 1024)
  %11 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %11, i32 0, i32 3
  store ptr %call4, ptr %Cb_b_tab, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mem5, align 8
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %alloc_small6, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 2048)
  %16 = load ptr, ptr %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %16, i32 0, i32 4
  store ptr %call7, ptr %Cr_g_tab, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mem8, align 8
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %alloc_small9, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call10 = call ptr %19(ptr noundef %20, i32 noundef 1, i64 noundef 2048)
  %21 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %21, i32 0, i32 5
  store ptr %call10, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  store i64 -128, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %22, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i64, ptr %x, align 8
  %mul = mul nsw i64 91881, %23
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %24 = load ptr, ptr %upsample, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_upsampler, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %Cr_r_tab11, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 %idxprom
  store i32 %conv, ptr %arrayidx, align 4
  %27 = load i64, ptr %x, align 8
  %mul12 = mul nsw i64 116130, %27
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %28 = load ptr, ptr %upsample, align 8
  %Cb_b_tab16 = getelementptr inbounds %struct.my_upsampler, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %Cb_b_tab16, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %29, i64 %idxprom17
  store i32 %conv15, ptr %arrayidx18, align 4
  %31 = load i64, ptr %x, align 8
  %mul19 = mul nsw i64 -46802, %31
  %32 = load ptr, ptr %upsample, align 8
  %Cr_g_tab20 = getelementptr inbounds %struct.my_upsampler, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %Cr_g_tab20, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %33, i64 %idxprom21
  store i64 %mul19, ptr %arrayidx22, align 8
  %35 = load i64, ptr %x, align 8
  %mul23 = mul nsw i64 -22554, %35
  %add24 = add nsw i64 %mul23, 32768
  %36 = load ptr, ptr %upsample, align 8
  %Cb_g_tab25 = getelementptr inbounds %struct.my_upsampler, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %Cb_g_tab25, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %37, i64 %idxprom26
  store i64 %add24, ptr %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  %40 = load i64, ptr %x, align 8
  %inc28 = add nsw i64 %40, 1
  store i64 %inc28, ptr %x, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmerge_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %upsample1, align 8
  store ptr %1, ptr %upsample, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 1024)
  %6 = load ptr, ptr %upsample, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %6, i32 0, i32 2
  store ptr %call, ptr %Cr_r_tab, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %alloc_small3, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 1024)
  %11 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %11, i32 0, i32 3
  store ptr %call4, ptr %Cb_b_tab, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mem5, align 8
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %alloc_small6, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 2048)
  %16 = load ptr, ptr %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %16, i32 0, i32 4
  store ptr %call7, ptr %Cr_g_tab, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %mem8, align 8
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %alloc_small9, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call10 = call ptr %19(ptr noundef %20, i32 noundef 1, i64 noundef 2048)
  %21 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %21, i32 0, i32 5
  store ptr %call10, ptr %Cb_g_tab, align 8
  store i32 0, ptr %i, align 4
  store i64 -128, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %22, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i64, ptr %x, align 8
  %mul = mul nsw i64 91881, %23
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %24 = load ptr, ptr %upsample, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_upsampler, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %Cr_r_tab11, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 %idxprom
  store i32 %conv, ptr %arrayidx, align 4
  %27 = load i64, ptr %x, align 8
  %mul12 = mul nsw i64 116130, %27
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %28 = load ptr, ptr %upsample, align 8
  %Cb_b_tab16 = getelementptr inbounds %struct.my_upsampler, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %Cb_b_tab16, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %29, i64 %idxprom17
  store i32 %conv15, ptr %arrayidx18, align 4
  %31 = load i64, ptr %x, align 8
  %mul19 = mul nsw i64 -46802, %31
  %32 = load ptr, ptr %upsample, align 8
  %Cr_g_tab20 = getelementptr inbounds %struct.my_upsampler, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %Cr_g_tab20, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %33, i64 %idxprom21
  store i64 %mul19, ptr %arrayidx22, align 8
  %35 = load i64, ptr %x, align 8
  %mul23 = mul nsw i64 -22554, %35
  %add24 = add nsw i64 %mul23, 32768
  %36 = load ptr, ptr %upsample, align 8
  %Cb_g_tab25 = getelementptr inbounds %struct.my_upsampler, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %Cb_g_tab25, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i64, ptr %37, i64 %idxprom26
  store i64 %add24, ptr %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  %40 = load i64, ptr %x, align 8
  %inc28 = add nsw i64 %40, 1
  store i64 %inc28, ptr %x, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
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
