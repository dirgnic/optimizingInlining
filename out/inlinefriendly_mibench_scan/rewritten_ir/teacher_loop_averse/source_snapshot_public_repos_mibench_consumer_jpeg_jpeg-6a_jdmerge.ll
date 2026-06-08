; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdmerge.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmerge.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.my_upsampler = type { %struct.jpeg_upsampler, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

; Function Attrs: nounwind ssp uwtable
define void @jinit_merged_upsampler(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %upsample = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 88) #2
  store ptr %call, ptr %upsample, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  store ptr %call, ptr %upsample1, align 8
  store ptr @start_pass_merged_upsample, ptr %call, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, ptr %call, i64 0, i32 2
  store i32 0, ptr %need_context_rows, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %output_width, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 28
  %4 = load i32, ptr %out_color_components, align 8
  %mul = mul i32 %3, %4
  %5 = load ptr, ptr %upsample, align 8
  %out_row_width = getelementptr inbounds %struct.my_upsampler, ptr %5, i64 0, i32 8
  store i32 %mul, ptr %out_row_width, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 58
  %7 = load i32, ptr %max_v_samp_factor, align 8
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %upsample, align 8
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, ptr %8, i64 0, i32 1
  store ptr @merged_2v_upsample, ptr %upsample4, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, ptr %8, i64 0, i32 1
  store ptr @h2v2_merged_upsample, ptr %upmethod, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %mem5, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %alloc_large, align 8
  %12 = load ptr, ptr %upsample, align 8
  %out_row_width6 = getelementptr inbounds %struct.my_upsampler, ptr %12, i64 0, i32 8
  %13 = load i32, ptr %out_row_width6, align 4
  %conv = zext i32 %13 to i64
  %call8 = call ptr %11(ptr noundef %9, i32 noundef 1, i64 noundef %conv) #2
  %spare_row = getelementptr inbounds %struct.my_upsampler, ptr %12, i64 0, i32 6
  store ptr %call8, ptr %spare_row, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %upsample, align 8
  %upsample10 = getelementptr inbounds %struct.jpeg_upsampler, ptr %14, i64 0, i32 1
  store ptr @merged_1v_upsample, ptr %upsample10, align 8
  %upmethod11 = getelementptr inbounds %struct.my_upsampler, ptr %14, i64 0, i32 1
  store ptr @h2v1_merged_upsample, ptr %upmethod11, align 8
  %spare_row12 = getelementptr inbounds %struct.my_upsampler, ptr %14, i64 0, i32 6
  store ptr null, ptr %spare_row12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void @build_ycc_rgb_table(ptr noundef %15)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_merged_upsample(ptr noundef %cinfo) #0 {
entry:
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8
  %spare_full = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 7
  store i32 0, ptr %spare_full, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 27
  %1 = load i32, ptr %output_height, align 4
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 9
  store i32 %1, ptr %rows_to_go, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @merged_2v_upsample(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca ptr, align 8
  %work_ptrs = alloca [2 x ptr], align 8
  %num_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8
  store ptr %0, ptr %upsample, align 8
  %spare_full = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 7
  %1 = load i32, ptr %spare_full, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %upsample, align 8
  %spare_row = getelementptr inbounds %struct.my_upsampler, ptr %2, i64 0, i32 6
  %3 = load ptr, ptr %output_buf.addr, align 8
  %4 = load ptr, ptr %out_row_ctr.addr, align 8
  %5 = load i32, ptr %4, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext
  %6 = load ptr, ptr %upsample, align 8
  %out_row_width = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 8
  %7 = load i32, ptr %out_row_width, align 4
  call void @jcopy_sample_rows(ptr noundef nonnull %spare_row, i32 noundef 0, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1, i32 noundef %7) #2
  store i32 1, ptr %num_rows, align 4
  %spare_full2 = getelementptr inbounds %struct.my_upsampler, ptr %6, i64 0, i32 7
  store i32 0, ptr %spare_full2, align 8
  br label %if.end19

if.else:                                          ; preds = %entry
  store i32 2, ptr %num_rows, align 4
  %8 = load ptr, ptr %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, ptr %8, i64 0, i32 9
  %9 = load i32, ptr %rows_to_go, align 8
  %cmp = icmp ult i32 %9, 2
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %10 = load ptr, ptr %upsample, align 8
  %rows_to_go4 = getelementptr inbounds %struct.my_upsampler, ptr %10, i64 0, i32 9
  %11 = load i32, ptr %rows_to_go4, align 8
  store i32 %11, ptr %num_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %12 = load ptr, ptr %out_row_ctr.addr, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %out_rows_avail.addr, align 4
  %sub = sub i32 %14, %13
  store i32 %sub, ptr %out_rows_avail.addr, align 4
  %15 = load i32, ptr %num_rows, align 4
  %cmp5 = icmp ugt i32 %15, %sub
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %16 = load i32, ptr %out_rows_avail.addr, align 4
  store i32 %16, ptr %num_rows, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %17 = load ptr, ptr %output_buf.addr, align 8
  %18 = load ptr, ptr %out_row_ctr.addr, align 8
  %19 = load i32, ptr %18, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  store ptr %20, ptr %work_ptrs, align 8
  %21 = load i32, ptr %num_rows, align 4
  %cmp9 = icmp ugt i32 %21, 1
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.end7
  %22 = load ptr, ptr %output_buf.addr, align 8
  %23 = load ptr, ptr %out_row_ctr.addr, align 8
  %24 = load i32, ptr %23, align 4
  %add = add i32 %24, 1
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %22, i64 %idxprom11
  %25 = load ptr, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %work_ptrs, i64 0, i64 1
  store ptr %25, ptr %arrayidx13, align 8
  br label %if.end18

if.else14:                                        ; preds = %if.end7
  %26 = load ptr, ptr %upsample, align 8
  %spare_row15 = getelementptr inbounds %struct.my_upsampler, ptr %26, i64 0, i32 6
  %27 = load ptr, ptr %spare_row15, align 8
  %arrayidx16 = getelementptr inbounds [2 x ptr], ptr %work_ptrs, i64 0, i64 1
  store ptr %27, ptr %arrayidx16, align 8
  %spare_full17 = getelementptr inbounds %struct.my_upsampler, ptr %26, i64 0, i32 7
  store i32 1, ptr %spare_full17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then10
  %28 = load ptr, ptr %upsample, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %upmethod, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load ptr, ptr %input_buf.addr, align 8
  %32 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %33 = load i32, ptr %32, align 4
  call void %29(ptr noundef %30, ptr noundef %31, i32 noundef %33, ptr noundef nonnull %work_ptrs) #2
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %34 = load i32, ptr %num_rows, align 4
  %35 = load ptr, ptr %out_row_ctr.addr, align 8
  %36 = load i32, ptr %35, align 4
  %add20 = add i32 %36, %34
  store i32 %add20, ptr %35, align 4
  %37 = load ptr, ptr %upsample, align 8
  %rows_to_go21 = getelementptr inbounds %struct.my_upsampler, ptr %37, i64 0, i32 9
  %38 = load i32, ptr %rows_to_go21, align 8
  %sub22 = sub i32 %38, %34
  store i32 %sub22, ptr %rows_to_go21, align 8
  %spare_full23 = getelementptr inbounds %struct.my_upsampler, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %spare_full23, align 8
  %tobool24.not = icmp eq i32 %39, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  %40 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %41 = load i32, ptr %40, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %40, align 4
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
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8
  store ptr %0, ptr %upsample, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 61
  %2 = load ptr, ptr %sample_range_limit, align 8
  store ptr %2, ptr %range_limit, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %6, ptr %Crgtab, align 8
  %7 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %8, ptr %Cbgtab, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %in_row_group_ctr.addr, align 4
  %mul = shl i32 %11, 1
  %idxprom = zext i32 %mul to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx2, align 8
  store ptr %12, ptr %inptr00, align 8
  %13 = load ptr, ptr %input_buf.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %in_row_group_ctr.addr, align 4
  %mul4 = shl i32 %15, 1
  %add = or i32 %mul4, 1
  %idxprom5 = zext i32 %add to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %14, i64 %idxprom5
  %16 = load ptr, ptr %arrayidx6, align 8
  store ptr %16, ptr %inptr01, align 8
  %17 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %17, i64 1
  %18 = load ptr, ptr %arrayidx7, align 8
  %19 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom8 = zext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %18, i64 %idxprom8
  %20 = load ptr, ptr %arrayidx9, align 8
  store ptr %20, ptr %inptr1, align 8
  %21 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %21, i64 2
  %22 = load ptr, ptr %arrayidx10, align 8
  %23 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom11 = zext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %22, i64 %idxprom11
  %24 = load ptr, ptr %arrayidx12, align 8
  store ptr %24, ptr %inptr2, align 8
  %25 = load ptr, ptr %output_buf.addr, align 8
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %outptr0, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %arrayidx14, align 8
  store ptr %27, ptr %outptr1, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i64 0, i32 26
  %29 = load i32, ptr %output_width, align 8
  %shr = lshr i32 %29, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %shr, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %inptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr, ptr %inptr1, align 8
  %31 = load i8, ptr %30, align 1
  %conv = zext i8 %31 to i32
  store i32 %conv, ptr %cb, align 4
  %32 = load ptr, ptr %inptr2, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr15, ptr %inptr2, align 8
  %33 = load i8, ptr %32, align 1
  %conv16 = zext i8 %33 to i32
  store i32 %conv16, ptr %cr, align 4
  %34 = load ptr, ptr %Crrtab, align 8
  %idxprom17 = zext i8 %33 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %34, i64 %idxprom17
  %35 = load i32, ptr %arrayidx18, align 4
  store i32 %35, ptr %cred, align 4
  %36 = load ptr, ptr %Cbgtab, align 8
  %37 = load i32, ptr %cb, align 4
  %idxprom19 = sext i32 %37 to i64
  %arrayidx20 = getelementptr inbounds i64, ptr %36, i64 %idxprom19
  %38 = load i64, ptr %arrayidx20, align 8
  %39 = load ptr, ptr %Crgtab, align 8
  %40 = load i32, ptr %cr, align 4
  %idxprom21 = sext i32 %40 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %39, i64 %idxprom21
  %41 = load i64, ptr %arrayidx22, align 8
  %add23 = add nsw i64 %38, %41
  %42 = lshr i64 %add23, 16
  %conv25 = trunc i64 %42 to i32
  store i32 %conv25, ptr %cgreen, align 4
  %43 = load ptr, ptr %Cbbtab, align 8
  %44 = load i32, ptr %cb, align 4
  %idxprom26 = sext i32 %44 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %43, i64 %idxprom26
  %45 = load i32, ptr %arrayidx27, align 4
  store i32 %45, ptr %cblue, align 4
  %46 = load ptr, ptr %inptr00, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr28, ptr %inptr00, align 8
  %47 = load i8, ptr %46, align 1
  %conv29 = zext i8 %47 to i32
  store i32 %conv29, ptr %y, align 4
  %48 = load ptr, ptr %range_limit, align 8
  %49 = load i32, ptr %cred, align 4
  %add30 = add nsw i32 %49, %conv29
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %48, i64 %idxprom31
  %50 = load i8, ptr %arrayidx32, align 1
  %51 = load ptr, ptr %outptr0, align 8
  store i8 %50, ptr %51, align 1
  %52 = load ptr, ptr %range_limit, align 8
  %53 = load i32, ptr %y, align 4
  %54 = load i32, ptr %cgreen, align 4
  %add34 = add nsw i32 %53, %54
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %52, i64 %idxprom35
  %55 = load i8, ptr %arrayidx36, align 1
  %56 = load ptr, ptr %outptr0, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %55, ptr %arrayidx37, align 1
  %57 = load ptr, ptr %range_limit, align 8
  %58 = load i32, ptr %y, align 4
  %59 = load i32, ptr %cblue, align 4
  %add38 = add nsw i32 %58, %59
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %57, i64 %idxprom39
  %60 = load i8, ptr %arrayidx40, align 1
  %61 = load ptr, ptr %outptr0, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %61, i64 2
  store i8 %60, ptr %arrayidx41, align 1
  %add.ptr = getelementptr inbounds i8, ptr %61, i64 3
  store ptr %add.ptr, ptr %outptr0, align 8
  %62 = load ptr, ptr %inptr00, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr42, ptr %inptr00, align 8
  %63 = load i8, ptr %62, align 1
  %conv43 = zext i8 %63 to i32
  store i32 %conv43, ptr %y, align 4
  %64 = load ptr, ptr %range_limit, align 8
  %65 = load i32, ptr %cred, align 4
  %add44 = add nsw i32 %65, %conv43
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %64, i64 %idxprom45
  %66 = load i8, ptr %arrayidx46, align 1
  %67 = load ptr, ptr %outptr0, align 8
  store i8 %66, ptr %67, align 1
  %68 = load ptr, ptr %range_limit, align 8
  %69 = load i32, ptr %y, align 4
  %70 = load i32, ptr %cgreen, align 4
  %add48 = add nsw i32 %69, %70
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %68, i64 %idxprom49
  %71 = load i8, ptr %arrayidx50, align 1
  %72 = load ptr, ptr %outptr0, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %71, ptr %arrayidx51, align 1
  %73 = load ptr, ptr %range_limit, align 8
  %74 = load i32, ptr %y, align 4
  %75 = load i32, ptr %cblue, align 4
  %add52 = add nsw i32 %74, %75
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %73, i64 %idxprom53
  %76 = load i8, ptr %arrayidx54, align 1
  %77 = load ptr, ptr %outptr0, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %77, i64 2
  store i8 %76, ptr %arrayidx55, align 1
  %add.ptr56 = getelementptr inbounds i8, ptr %77, i64 3
  store ptr %add.ptr56, ptr %outptr0, align 8
  %78 = load ptr, ptr %inptr01, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %incdec.ptr57, ptr %inptr01, align 8
  %79 = load i8, ptr %78, align 1
  %conv58 = zext i8 %79 to i32
  store i32 %conv58, ptr %y, align 4
  %80 = load ptr, ptr %range_limit, align 8
  %81 = load i32, ptr %cred, align 4
  %add59 = add nsw i32 %81, %conv58
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %80, i64 %idxprom60
  %82 = load i8, ptr %arrayidx61, align 1
  %83 = load ptr, ptr %outptr1, align 8
  store i8 %82, ptr %83, align 1
  %84 = load ptr, ptr %range_limit, align 8
  %85 = load i32, ptr %y, align 4
  %86 = load i32, ptr %cgreen, align 4
  %add63 = add nsw i32 %85, %86
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %84, i64 %idxprom64
  %87 = load i8, ptr %arrayidx65, align 1
  %88 = load ptr, ptr %outptr1, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %88, i64 1
  store i8 %87, ptr %arrayidx66, align 1
  %89 = load ptr, ptr %range_limit, align 8
  %90 = load i32, ptr %y, align 4
  %91 = load i32, ptr %cblue, align 4
  %add67 = add nsw i32 %90, %91
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %89, i64 %idxprom68
  %92 = load i8, ptr %arrayidx69, align 1
  %93 = load ptr, ptr %outptr1, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %93, i64 2
  store i8 %92, ptr %arrayidx70, align 1
  %add.ptr71 = getelementptr inbounds i8, ptr %93, i64 3
  store ptr %add.ptr71, ptr %outptr1, align 8
  %94 = load ptr, ptr %inptr01, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %incdec.ptr72, ptr %inptr01, align 8
  %95 = load i8, ptr %94, align 1
  %conv73 = zext i8 %95 to i32
  store i32 %conv73, ptr %y, align 4
  %96 = load ptr, ptr %range_limit, align 8
  %97 = load i32, ptr %cred, align 4
  %add74 = add nsw i32 %97, %conv73
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %96, i64 %idxprom75
  %98 = load i8, ptr %arrayidx76, align 1
  %99 = load ptr, ptr %outptr1, align 8
  store i8 %98, ptr %99, align 1
  %100 = load ptr, ptr %range_limit, align 8
  %101 = load i32, ptr %y, align 4
  %102 = load i32, ptr %cgreen, align 4
  %add78 = add nsw i32 %101, %102
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %100, i64 %idxprom79
  %103 = load i8, ptr %arrayidx80, align 1
  %104 = load ptr, ptr %outptr1, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %103, ptr %arrayidx81, align 1
  %105 = load ptr, ptr %range_limit, align 8
  %106 = load i32, ptr %y, align 4
  %107 = load i32, ptr %cblue, align 4
  %add82 = add nsw i32 %106, %107
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %105, i64 %idxprom83
  %108 = load i8, ptr %arrayidx84, align 1
  %109 = load ptr, ptr %outptr1, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %109, i64 2
  store i8 %108, ptr %arrayidx85, align 1
  %add.ptr86 = getelementptr inbounds i8, ptr %109, i64 3
  store ptr %add.ptr86, ptr %outptr1, align 8
  %110 = load i32, ptr %col, align 4
  %dec = add i32 %110, -1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %111 = load ptr, ptr %cinfo.addr, align 8
  %output_width87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %111, i64 0, i32 26
  %112 = load i32, ptr %output_width87, align 8
  %and = and i32 %112, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %113 = load ptr, ptr %inptr1, align 8
  %114 = load i8, ptr %113, align 1
  %conv88 = zext i8 %114 to i32
  store i32 %conv88, ptr %cb, align 4
  %115 = load ptr, ptr %inptr2, align 8
  %116 = load i8, ptr %115, align 1
  %conv89 = zext i8 %116 to i32
  store i32 %conv89, ptr %cr, align 4
  %117 = load ptr, ptr %Crrtab, align 8
  %idxprom90 = zext i8 %116 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %117, i64 %idxprom90
  %118 = load i32, ptr %arrayidx91, align 4
  store i32 %118, ptr %cred, align 4
  %119 = load ptr, ptr %Cbgtab, align 8
  %120 = load i32, ptr %cb, align 4
  %idxprom92 = sext i32 %120 to i64
  %arrayidx93 = getelementptr inbounds i64, ptr %119, i64 %idxprom92
  %121 = load i64, ptr %arrayidx93, align 8
  %122 = load ptr, ptr %Crgtab, align 8
  %123 = load i32, ptr %cr, align 4
  %idxprom94 = sext i32 %123 to i64
  %arrayidx95 = getelementptr inbounds i64, ptr %122, i64 %idxprom94
  %124 = load i64, ptr %arrayidx95, align 8
  %add96 = add nsw i64 %121, %124
  %125 = lshr i64 %add96, 16
  %conv98 = trunc i64 %125 to i32
  store i32 %conv98, ptr %cgreen, align 4
  %126 = load ptr, ptr %Cbbtab, align 8
  %127 = load i32, ptr %cb, align 4
  %idxprom99 = sext i32 %127 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %126, i64 %idxprom99
  %128 = load i32, ptr %arrayidx100, align 4
  store i32 %128, ptr %cblue, align 4
  %129 = load ptr, ptr %inptr00, align 8
  %130 = load i8, ptr %129, align 1
  %conv101 = zext i8 %130 to i32
  store i32 %conv101, ptr %y, align 4
  %131 = load ptr, ptr %range_limit, align 8
  %132 = load i32, ptr %cred, align 4
  %add102 = add nsw i32 %132, %conv101
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %131, i64 %idxprom103
  %133 = load i8, ptr %arrayidx104, align 1
  %134 = load ptr, ptr %outptr0, align 8
  store i8 %133, ptr %134, align 1
  %135 = load ptr, ptr %range_limit, align 8
  %136 = load i32, ptr %y, align 4
  %137 = load i32, ptr %cgreen, align 4
  %add106 = add nsw i32 %136, %137
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %135, i64 %idxprom107
  %138 = load i8, ptr %arrayidx108, align 1
  %139 = load ptr, ptr %outptr0, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %139, i64 1
  store i8 %138, ptr %arrayidx109, align 1
  %140 = load ptr, ptr %range_limit, align 8
  %141 = load i32, ptr %y, align 4
  %142 = load i32, ptr %cblue, align 4
  %add110 = add nsw i32 %141, %142
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %140, i64 %idxprom111
  %143 = load i8, ptr %arrayidx112, align 1
  %144 = load ptr, ptr %outptr0, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %144, i64 2
  store i8 %143, ptr %arrayidx113, align 1
  %145 = load ptr, ptr %inptr01, align 8
  %146 = load i8, ptr %145, align 1
  %conv114 = zext i8 %146 to i32
  store i32 %conv114, ptr %y, align 4
  %147 = load ptr, ptr %range_limit, align 8
  %148 = load i32, ptr %cred, align 4
  %add115 = add nsw i32 %148, %conv114
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %147, i64 %idxprom116
  %149 = load i8, ptr %arrayidx117, align 1
  %150 = load ptr, ptr %outptr1, align 8
  store i8 %149, ptr %150, align 1
  %151 = load ptr, ptr %range_limit, align 8
  %152 = load i32, ptr %y, align 4
  %153 = load i32, ptr %cgreen, align 4
  %add119 = add nsw i32 %152, %153
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %151, i64 %idxprom120
  %154 = load i8, ptr %arrayidx121, align 1
  %155 = load ptr, ptr %outptr1, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %155, i64 1
  store i8 %154, ptr %arrayidx122, align 1
  %156 = load ptr, ptr %range_limit, align 8
  %157 = load i32, ptr %y, align 4
  %158 = load i32, ptr %cblue, align 4
  %add123 = add nsw i32 %157, %158
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %156, i64 %idxprom124
  %159 = load i8, ptr %arrayidx125, align 1
  %160 = load ptr, ptr %outptr1, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %160, i64 2
  store i8 %159, ptr %arrayidx126, align 1
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
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %input_buf, ptr %input_buf.addr, align 8
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8
  %upmethod = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %upmethod, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %input_buf.addr, align 8
  %4 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %output_buf.addr, align 8
  %7 = load ptr, ptr %out_row_ctr.addr, align 8
  %8 = load i32, ptr %7, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  call void %1(ptr noundef %2, ptr noundef %3, i32 noundef %5, ptr noundef %add.ptr) #2
  %9 = load i32, ptr %7, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %7, align 4
  %10 = load ptr, ptr %in_row_group_ctr.addr, align 8
  %11 = load i32, ptr %10, align 4
  %inc2 = add i32 %11, 1
  store i32 %inc2, ptr %10, align 4
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
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8
  store ptr %0, ptr %upsample, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 61
  %2 = load ptr, ptr %sample_range_limit, align 8
  store ptr %2, ptr %range_limit, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %Cr_r_tab, align 8
  store ptr %3, ptr %Crrtab, align 8
  %4 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %Cb_b_tab, align 8
  store ptr %5, ptr %Cbbtab, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %Cr_g_tab, align 8
  store ptr %6, ptr %Crgtab, align 8
  %7 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %Cb_g_tab, align 8
  store ptr %8, ptr %Cbgtab, align 8
  %9 = load ptr, ptr %input_buf.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx2, align 8
  store ptr %12, ptr %inptr0, align 8
  %13 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx3, align 8
  %15 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom4 = zext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %14, i64 %idxprom4
  %16 = load ptr, ptr %arrayidx5, align 8
  store ptr %16, ptr %inptr1, align 8
  %17 = load ptr, ptr %input_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx6, align 8
  %19 = load i32, ptr %in_row_group_ctr.addr, align 4
  %idxprom7 = zext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %18, i64 %idxprom7
  %20 = load ptr, ptr %arrayidx8, align 8
  store ptr %20, ptr %inptr2, align 8
  %21 = load ptr, ptr %output_buf.addr, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %outptr, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 26
  %24 = load i32, ptr %output_width, align 8
  %shr = lshr i32 %24, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ %shr, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %col, align 4
  %cmp.not = icmp eq i32 %storemerge, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %inptr1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr, ptr %inptr1, align 8
  %26 = load i8, ptr %25, align 1
  %conv = zext i8 %26 to i32
  store i32 %conv, ptr %cb, align 4
  %27 = load ptr, ptr %inptr2, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr10, ptr %inptr2, align 8
  %28 = load i8, ptr %27, align 1
  %conv11 = zext i8 %28 to i32
  store i32 %conv11, ptr %cr, align 4
  %29 = load ptr, ptr %Crrtab, align 8
  %idxprom12 = zext i8 %28 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %29, i64 %idxprom12
  %30 = load i32, ptr %arrayidx13, align 4
  store i32 %30, ptr %cred, align 4
  %31 = load ptr, ptr %Cbgtab, align 8
  %32 = load i32, ptr %cb, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %31, i64 %idxprom14
  %33 = load i64, ptr %arrayidx15, align 8
  %34 = load ptr, ptr %Crgtab, align 8
  %35 = load i32, ptr %cr, align 4
  %idxprom16 = sext i32 %35 to i64
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 %idxprom16
  %36 = load i64, ptr %arrayidx17, align 8
  %add = add nsw i64 %33, %36
  %37 = lshr i64 %add, 16
  %conv19 = trunc i64 %37 to i32
  store i32 %conv19, ptr %cgreen, align 4
  %38 = load ptr, ptr %Cbbtab, align 8
  %39 = load i32, ptr %cb, align 4
  %idxprom20 = sext i32 %39 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %38, i64 %idxprom20
  %40 = load i32, ptr %arrayidx21, align 4
  store i32 %40, ptr %cblue, align 4
  %41 = load ptr, ptr %inptr0, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr22, ptr %inptr0, align 8
  %42 = load i8, ptr %41, align 1
  %conv23 = zext i8 %42 to i32
  store i32 %conv23, ptr %y, align 4
  %43 = load ptr, ptr %range_limit, align 8
  %44 = load i32, ptr %cred, align 4
  %add24 = add nsw i32 %44, %conv23
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %43, i64 %idxprom25
  %45 = load i8, ptr %arrayidx26, align 1
  %46 = load ptr, ptr %outptr, align 8
  store i8 %45, ptr %46, align 1
  %47 = load ptr, ptr %range_limit, align 8
  %48 = load i32, ptr %y, align 4
  %49 = load i32, ptr %cgreen, align 4
  %add28 = add nsw i32 %48, %49
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %47, i64 %idxprom29
  %50 = load i8, ptr %arrayidx30, align 1
  %51 = load ptr, ptr %outptr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %50, ptr %arrayidx31, align 1
  %52 = load ptr, ptr %range_limit, align 8
  %53 = load i32, ptr %y, align 4
  %54 = load i32, ptr %cblue, align 4
  %add32 = add nsw i32 %53, %54
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %52, i64 %idxprom33
  %55 = load i8, ptr %arrayidx34, align 1
  %56 = load ptr, ptr %outptr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %56, i64 2
  store i8 %55, ptr %arrayidx35, align 1
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 3
  store ptr %add.ptr, ptr %outptr, align 8
  %57 = load ptr, ptr %inptr0, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr36, ptr %inptr0, align 8
  %58 = load i8, ptr %57, align 1
  %conv37 = zext i8 %58 to i32
  store i32 %conv37, ptr %y, align 4
  %59 = load ptr, ptr %range_limit, align 8
  %60 = load i32, ptr %cred, align 4
  %add38 = add nsw i32 %60, %conv37
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %59, i64 %idxprom39
  %61 = load i8, ptr %arrayidx40, align 1
  %62 = load ptr, ptr %outptr, align 8
  store i8 %61, ptr %62, align 1
  %63 = load ptr, ptr %range_limit, align 8
  %64 = load i32, ptr %y, align 4
  %65 = load i32, ptr %cgreen, align 4
  %add42 = add nsw i32 %64, %65
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %63, i64 %idxprom43
  %66 = load i8, ptr %arrayidx44, align 1
  %67 = load ptr, ptr %outptr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %66, ptr %arrayidx45, align 1
  %68 = load ptr, ptr %range_limit, align 8
  %69 = load i32, ptr %y, align 4
  %70 = load i32, ptr %cblue, align 4
  %add46 = add nsw i32 %69, %70
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %68, i64 %idxprom47
  %71 = load i8, ptr %arrayidx48, align 1
  %72 = load ptr, ptr %outptr, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %72, i64 2
  store i8 %71, ptr %arrayidx49, align 1
  %add.ptr50 = getelementptr inbounds i8, ptr %72, i64 3
  store ptr %add.ptr50, ptr %outptr, align 8
  %73 = load i32, ptr %col, align 4
  %dec = add i32 %73, -1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %74 = load ptr, ptr %cinfo.addr, align 8
  %output_width51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i64 0, i32 26
  %75 = load i32, ptr %output_width51, align 8
  %and = and i32 %75, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %76 = load ptr, ptr %inptr1, align 8
  %77 = load i8, ptr %76, align 1
  %conv52 = zext i8 %77 to i32
  store i32 %conv52, ptr %cb, align 4
  %78 = load ptr, ptr %inptr2, align 8
  %79 = load i8, ptr %78, align 1
  %conv53 = zext i8 %79 to i32
  store i32 %conv53, ptr %cr, align 4
  %80 = load ptr, ptr %Crrtab, align 8
  %idxprom54 = zext i8 %79 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %80, i64 %idxprom54
  %81 = load i32, ptr %arrayidx55, align 4
  store i32 %81, ptr %cred, align 4
  %82 = load ptr, ptr %Cbgtab, align 8
  %83 = load i32, ptr %cb, align 4
  %idxprom56 = sext i32 %83 to i64
  %arrayidx57 = getelementptr inbounds i64, ptr %82, i64 %idxprom56
  %84 = load i64, ptr %arrayidx57, align 8
  %85 = load ptr, ptr %Crgtab, align 8
  %86 = load i32, ptr %cr, align 4
  %idxprom58 = sext i32 %86 to i64
  %arrayidx59 = getelementptr inbounds i64, ptr %85, i64 %idxprom58
  %87 = load i64, ptr %arrayidx59, align 8
  %add60 = add nsw i64 %84, %87
  %88 = lshr i64 %add60, 16
  %conv62 = trunc i64 %88 to i32
  store i32 %conv62, ptr %cgreen, align 4
  %89 = load ptr, ptr %Cbbtab, align 8
  %90 = load i32, ptr %cb, align 4
  %idxprom63 = sext i32 %90 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %89, i64 %idxprom63
  %91 = load i32, ptr %arrayidx64, align 4
  store i32 %91, ptr %cblue, align 4
  %92 = load ptr, ptr %inptr0, align 8
  %93 = load i8, ptr %92, align 1
  %conv65 = zext i8 %93 to i32
  store i32 %conv65, ptr %y, align 4
  %94 = load ptr, ptr %range_limit, align 8
  %95 = load i32, ptr %cred, align 4
  %add66 = add nsw i32 %95, %conv65
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %94, i64 %idxprom67
  %96 = load i8, ptr %arrayidx68, align 1
  %97 = load ptr, ptr %outptr, align 8
  store i8 %96, ptr %97, align 1
  %98 = load ptr, ptr %range_limit, align 8
  %99 = load i32, ptr %y, align 4
  %100 = load i32, ptr %cgreen, align 4
  %add70 = add nsw i32 %99, %100
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %98, i64 %idxprom71
  %101 = load i8, ptr %arrayidx72, align 1
  %102 = load ptr, ptr %outptr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %101, ptr %arrayidx73, align 1
  %103 = load ptr, ptr %range_limit, align 8
  %104 = load i32, ptr %y, align 4
  %105 = load i32, ptr %cblue, align 4
  %add74 = add nsw i32 %104, %105
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %103, i64 %idxprom75
  %106 = load i8, ptr %arrayidx76, align 1
  %107 = load ptr, ptr %outptr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %107, i64 2
  store i8 %106, ptr %arrayidx77, align 1
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
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 81
  %0 = load ptr, ptr %upsample1, align 8
  store ptr %0, ptr %upsample, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 1024) #2
  %Cr_r_tab = getelementptr inbounds %struct.my_upsampler, ptr %0, i64 0, i32 2
  store ptr %call, ptr %Cr_r_tab, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %mem2, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %5(ptr noundef %6, i32 noundef 1, i64 noundef 1024) #2
  %7 = load ptr, ptr %upsample, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_upsampler, ptr %7, i64 0, i32 3
  store ptr %call4, ptr %Cb_b_tab, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %mem5, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 2048) #2
  %11 = load ptr, ptr %upsample, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %11, i64 0, i32 4
  store ptr %call7, ptr %Cr_g_tab, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %mem8, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %call10 = call ptr %13(ptr noundef %14, i32 noundef 1, i64 noundef 2048) #2
  %15 = load ptr, ptr %upsample, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_upsampler, ptr %15, i64 0, i32 5
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
  %19 = load ptr, ptr %upsample, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_upsampler, ptr %19, i64 0, i32 2
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
  %24 = load ptr, ptr %upsample, align 8
  %Cb_b_tab16 = getelementptr inbounds %struct.my_upsampler, ptr %24, i64 0, i32 3
  %25 = load ptr, ptr %Cb_b_tab16, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %25, i64 %idxprom17
  store i32 %conv15, ptr %arrayidx18, align 4
  %27 = load i64, ptr %x, align 8
  %mul19 = mul nsw i64 %27, -46802
  %28 = load ptr, ptr %upsample, align 8
  %Cr_g_tab20 = getelementptr inbounds %struct.my_upsampler, ptr %28, i64 0, i32 4
  %29 = load ptr, ptr %Cr_g_tab20, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %29, i64 %idxprom21
  store i64 %mul19, ptr %arrayidx22, align 8
  %31 = load i64, ptr %x, align 8
  %mul23 = mul nsw i64 %31, -22554
  %add24 = add nsw i64 %mul23, 32768
  %32 = load ptr, ptr %upsample, align 8
  %Cb_g_tab25 = getelementptr inbounds %struct.my_upsampler, ptr %32, i64 0, i32 5
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
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
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
