; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_jcparam.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcparam.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 4
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 4
@std_huff_tables.bits_dc_luminance = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 1
@std_huff_tables.val_dc_luminance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_dc_chrominance = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 1
@std_huff_tables.val_dc_chrominance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 1
@std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 1
@std_huff_tables.bits_ac_chrominance = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 1
@std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_add_quant_table(ptr noundef %cinfo, i32 noundef %which_tbl, ptr noundef %basic_table, i32 noundef %scale_factor, i32 noundef %force_baseline) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %basic_table.addr = alloca ptr, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %qtblptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %basic_table, ptr %basic_table.addr, align 8
  store i32 %scale_factor, ptr %scale_factor.addr, align 4
  store i32 %force_baseline, ptr %force_baseline.addr, align 4
  %idxprom = sext i32 %which_tbl to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 15, i64 %idxprom
  store ptr %arrayidx, ptr %qtblptr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %1, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %global_state1, align 4
  %5 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %qtblptr, align 8
  %10 = load ptr, ptr %9, align 8
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_quant_table(ptr noundef %11) #4
  %12 = load ptr, ptr %qtblptr, align 8
  store ptr %call, ptr %12, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp8 = icmp slt i32 %storemerge, 64
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %basic_table.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %13, i64 %idxprom9
  %15 = load i32, ptr %arrayidx10, align 4
  %conv = zext i32 %15 to i64
  %16 = load i32, ptr %scale_factor.addr, align 4
  %conv11 = sext i32 %16 to i64
  %mul = mul nsw i64 %conv, %conv11
  %add = add nsw i64 %mul, 50
  %div = sdiv i64 %add, 100
  %cmp12 = icmp slt i64 %mul, 50
  %spec.select = select i1 %cmp12, i64 1, i64 %div
  %cmp16 = icmp sgt i64 %spec.select, 32767
  %storemerge2 = select i1 %cmp16, i64 32767, i64 %spec.select
  store i64 %storemerge2, ptr %temp, align 8
  %17 = load i32, ptr %force_baseline.addr, align 4
  %tobool.not = icmp ne i32 %17, 0
  %18 = load i64, ptr %temp, align 8
  %cmp20 = icmp sgt i64 %18, 255
  %or.cond = select i1 %tobool.not, i1 %cmp20, i1 false
  %spec.store.select = select i1 %or.cond, i64 255, i64 %18
  store i64 %spec.store.select, ptr %temp, align 8
  %19 = load i64, ptr %temp, align 8
  %conv24 = trunc i64 %19 to i16
  %20 = load ptr, ptr %qtblptr, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [64 x i16], ptr %21, i64 0, i64 %idxprom25
  store i16 %conv24, ptr %arrayidx26, align 2
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %qtblptr, align 8
  %25 = load ptr, ptr %24, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %25, i64 0, i32 1
  store i32 0, ptr %sent_table, align 4
  ret void
}

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_linear_quality(ptr noundef %cinfo, i32 noundef %scale_factor, i32 noundef %force_baseline) #0 {
entry:
  call void @jpeg_add_quant_table(ptr noundef %cinfo, i32 noundef 0, ptr noundef nonnull @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef %scale_factor, i32 noundef %force_baseline)
  call void @jpeg_add_quant_table(ptr noundef %cinfo, i32 noundef 1, ptr noundef nonnull @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef %scale_factor, i32 noundef %force_baseline)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_quality_scaling(i32 noundef %quality) #0 {
entry:
  %quality.addr = alloca i32, align 4
  %cmp = icmp slt i32 %quality, 1
  %spec.select = select i1 %cmp, i32 1, i32 %quality
  %cmp1 = icmp sgt i32 %spec.select, 100
  %storemerge2 = select i1 %cmp1, i32 100, i32 %spec.select
  store i32 %storemerge2, ptr %quality.addr, align 4
  %cmp4 = icmp slt i32 %storemerge2, 50
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %entry
  %0 = load i32, ptr %quality.addr, align 4
  %div = sdiv i32 5000, %0
  br label %if.end6

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %quality.addr, align 4
  %mul.neg = mul i32 %1, -2
  %sub = add i32 %mul.neg, 200
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %storemerge = phi i32 [ %sub, %if.else ], [ %div, %if.then5 ]
  store i32 %storemerge, ptr %quality.addr, align 4
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_quality(ptr noundef %cinfo, i32 noundef %quality, i32 noundef %force_baseline) #0 {
entry:
  %call = call i32 @jpeg_quality_scaling(i32 noundef %quality)
  call void @jpeg_set_linear_quality(ptr noundef %cinfo, i32 noundef %call, i32 noundef %force_baseline)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_defaults(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 14
  %9 = load ptr, ptr %comp_info, align 8
  %cmp4 = icmp eq ptr %9, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %mem, align 8
  %12 = load ptr, ptr %11, align 8
  %call = call ptr %12(ptr noundef %10, i32 noundef 0, i64 noundef 960) #4
  %comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 14
  store ptr %call, ptr %comp_info6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %13 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 11
  store i32 8, ptr %data_precision, align 8
  call void @jpeg_set_quality(ptr noundef %13, i32 noundef 75, i32 noundef 1)
  call void @std_huff_tables(ptr noundef %13)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp8 = icmp slt i32 %storemerge, 16
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 18, i64 %idxprom
  store i8 0, ptr %arrayidx9, align 1
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 19, i64 %idxprom10
  store i8 1, ptr %arrayidx11, align 1
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 20, i64 %idxprom12
  store i8 5, ptr %arrayidx13, align 1
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 22
  store ptr null, ptr %scan_info, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 21
  store i32 0, ptr %num_scans, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 23
  store i32 0, ptr %raw_data_in, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 24
  store i32 0, ptr %arith_code, align 4
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 25
  store i32 0, ptr %optimize_coding, align 8
  %data_precision14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 11
  %21 = load i32, ptr %data_precision14, align 8
  %cmp15 = icmp sgt i32 %21, 8
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end
  %22 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i64 0, i32 25
  store i32 1, ptr %optimize_coding17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 26
  store i32 0, ptr %CCIR601_sampling, align 4
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 27
  store i32 0, ptr %smoothing_factor, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 28
  store i32 0, ptr %dct_method, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 29
  store i32 0, ptr %restart_interval, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 32
  store i8 0, ptr %density_unit, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 33
  store i16 1, ptr %X_density, align 2
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 34
  store i16 1, ptr %Y_density, align 8
  call void @jpeg_default_colorspace(ptr noundef %25)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @std_huff_tables(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 16
  call void @add_huff_table(ptr noundef %cinfo, ptr noundef nonnull %dc_huff_tbl_ptrs, ptr noundef nonnull @std_huff_tables.bits_dc_luminance, ptr noundef nonnull @std_huff_tables.val_dc_luminance)
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 17
  call void @add_huff_table(ptr noundef %cinfo, ptr noundef nonnull %ac_huff_tbl_ptrs, ptr noundef nonnull @std_huff_tables.bits_ac_luminance, ptr noundef nonnull @std_huff_tables.val_ac_luminance)
  %arrayidx3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 16, i64 1
  call void @add_huff_table(ptr noundef %cinfo, ptr noundef nonnull %arrayidx3, ptr noundef nonnull @std_huff_tables.bits_dc_chrominance, ptr noundef nonnull @std_huff_tables.val_dc_chrominance)
  %0 = load ptr, ptr %cinfo.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 1
  call void @add_huff_table(ptr noundef %0, ptr noundef nonnull %arrayidx5, ptr noundef nonnull @std_huff_tables.bits_ac_chrominance, ptr noundef nonnull @std_huff_tables.val_ac_chrominance)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_default_colorspace(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 9
  %0 = load i32, ptr %in_color_space, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %1, i32 noundef 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %2, i32 noundef 3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %3, i32 noundef 3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %4, i32 noundef 4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %5, i32 noundef 5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %6, i32 noundef 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 7, ptr %msg_code, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %7) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_colorspace(ptr noundef %cinfo, i32 noundef %colorspace) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %colorspace.addr = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %colorspace, ptr %colorspace.addr, align 4
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %colorspace.addr, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 13
  store i32 %8, ptr %jpeg_color_space, align 8
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 31
  store i32 0, ptr %write_JFIF_header, align 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 35
  store i32 0, ptr %write_Adobe_marker, align 4
  %10 = load i32, ptr %colorspace.addr, align 4
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb33
    i32 4, label %sw.bb60
    i32 5, label %sw.bb95
    i32 0, label %sw.bb130
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load ptr, ptr %cinfo.addr, align 8
  %write_JFIF_header4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 31
  store i32 1, ptr %write_JFIF_header4, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 12
  store i32 1, ptr %num_components, align 4
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 14
  %12 = load ptr, ptr %comp_info, align 8
  store ptr %12, ptr %compptr, align 8
  store i32 1, ptr %12, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 2
  store i32 1, ptr %h_samp_factor, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 3
  store i32 1, ptr %v_samp_factor, align 4
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 4
  store i32 0, ptr %quant_tbl_no, align 8
  %13 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no, align 4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 35
  store i32 1, ptr %write_Adobe_marker7, align 4
  %num_components8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 12
  store i32 3, ptr %num_components8, align 4
  %comp_info9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 14
  %15 = load ptr, ptr %comp_info9, align 8
  store ptr %15, ptr %compptr, align 8
  store i32 82, ptr %15, align 8
  %h_samp_factor12 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 2
  store i32 1, ptr %h_samp_factor12, align 8
  %v_samp_factor13 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  store i32 1, ptr %v_samp_factor13, align 4
  %quant_tbl_no14 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 4
  store i32 0, ptr %quant_tbl_no14, align 8
  %16 = load ptr, ptr %compptr, align 8
  %dc_tbl_no15 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no15, align 4
  %ac_tbl_no16 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no16, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 14
  %18 = load ptr, ptr %comp_info17, align 8
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 1
  store ptr %arrayidx18, ptr %compptr, align 8
  store i32 71, ptr %arrayidx18, align 8
  %h_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 1, i32 2
  store i32 1, ptr %h_samp_factor20, align 8
  %v_samp_factor21 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 1, i32 3
  store i32 1, ptr %v_samp_factor21, align 4
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 1, i32 4
  store i32 0, ptr %quant_tbl_no22, align 8
  %19 = load ptr, ptr %compptr, align 8
  %dc_tbl_no23 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no23, align 4
  %ac_tbl_no24 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no24, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %comp_info25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 14
  %21 = load ptr, ptr %comp_info25, align 8
  %arrayidx26 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 2
  store ptr %arrayidx26, ptr %compptr, align 8
  store i32 66, ptr %arrayidx26, align 8
  %h_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 2, i32 2
  store i32 1, ptr %h_samp_factor28, align 8
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 2, i32 3
  store i32 1, ptr %v_samp_factor29, align 4
  %quant_tbl_no30 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 2, i32 4
  store i32 0, ptr %quant_tbl_no30, align 8
  %22 = load ptr, ptr %compptr, align 8
  %dc_tbl_no31 = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no31, align 4
  %ac_tbl_no32 = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no32, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %23 = load ptr, ptr %cinfo.addr, align 8
  %write_JFIF_header34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 31
  store i32 1, ptr %write_JFIF_header34, align 8
  %num_components35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 12
  store i32 3, ptr %num_components35, align 4
  %comp_info36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 14
  %24 = load ptr, ptr %comp_info36, align 8
  store ptr %24, ptr %compptr, align 8
  store i32 1, ptr %24, align 8
  %h_samp_factor39 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 2
  store i32 2, ptr %h_samp_factor39, align 8
  %v_samp_factor40 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 3
  store i32 2, ptr %v_samp_factor40, align 4
  %quant_tbl_no41 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 4
  store i32 0, ptr %quant_tbl_no41, align 8
  %25 = load ptr, ptr %compptr, align 8
  %dc_tbl_no42 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no42, align 4
  %ac_tbl_no43 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no43, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %comp_info44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 14
  %27 = load ptr, ptr %comp_info44, align 8
  %arrayidx45 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 1
  store ptr %arrayidx45, ptr %compptr, align 8
  store i32 2, ptr %arrayidx45, align 8
  %h_samp_factor47 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 1, i32 2
  store i32 1, ptr %h_samp_factor47, align 8
  %v_samp_factor48 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 1, i32 3
  store i32 1, ptr %v_samp_factor48, align 4
  %quant_tbl_no49 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 1, i32 4
  store i32 1, ptr %quant_tbl_no49, align 8
  %28 = load ptr, ptr %compptr, align 8
  %dc_tbl_no50 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 5
  store i32 1, ptr %dc_tbl_no50, align 4
  %ac_tbl_no51 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 6
  store i32 1, ptr %ac_tbl_no51, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %comp_info52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i64 0, i32 14
  %30 = load ptr, ptr %comp_info52, align 8
  %arrayidx53 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 2
  store ptr %arrayidx53, ptr %compptr, align 8
  store i32 3, ptr %arrayidx53, align 8
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 2, i32 2
  store i32 1, ptr %h_samp_factor55, align 8
  %v_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 2, i32 3
  store i32 1, ptr %v_samp_factor56, align 4
  %quant_tbl_no57 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 2, i32 4
  store i32 1, ptr %quant_tbl_no57, align 8
  %31 = load ptr, ptr %compptr, align 8
  %dc_tbl_no58 = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 5
  store i32 1, ptr %dc_tbl_no58, align 4
  %ac_tbl_no59 = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 0, i32 6
  store i32 1, ptr %ac_tbl_no59, align 8
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end
  %32 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i64 0, i32 35
  store i32 1, ptr %write_Adobe_marker61, align 4
  %num_components62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i64 0, i32 12
  store i32 4, ptr %num_components62, align 4
  %comp_info63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i64 0, i32 14
  %33 = load ptr, ptr %comp_info63, align 8
  store ptr %33, ptr %compptr, align 8
  store i32 67, ptr %33, align 8
  %h_samp_factor66 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 2
  store i32 1, ptr %h_samp_factor66, align 8
  %v_samp_factor67 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 3
  store i32 1, ptr %v_samp_factor67, align 4
  %quant_tbl_no68 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i64 0, i32 4
  store i32 0, ptr %quant_tbl_no68, align 8
  %34 = load ptr, ptr %compptr, align 8
  %dc_tbl_no69 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no69, align 4
  %ac_tbl_no70 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no70, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %comp_info71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 14
  %36 = load ptr, ptr %comp_info71, align 8
  %arrayidx72 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 1
  store ptr %arrayidx72, ptr %compptr, align 8
  store i32 77, ptr %arrayidx72, align 8
  %h_samp_factor74 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 1, i32 2
  store i32 1, ptr %h_samp_factor74, align 8
  %v_samp_factor75 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 1, i32 3
  store i32 1, ptr %v_samp_factor75, align 4
  %quant_tbl_no76 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 1, i32 4
  store i32 0, ptr %quant_tbl_no76, align 8
  %37 = load ptr, ptr %compptr, align 8
  %dc_tbl_no77 = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no77, align 4
  %ac_tbl_no78 = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no78, align 8
  %38 = load ptr, ptr %cinfo.addr, align 8
  %comp_info79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i64 0, i32 14
  %39 = load ptr, ptr %comp_info79, align 8
  %arrayidx80 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 2
  store ptr %arrayidx80, ptr %compptr, align 8
  store i32 89, ptr %arrayidx80, align 8
  %h_samp_factor82 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 2, i32 2
  store i32 1, ptr %h_samp_factor82, align 8
  %v_samp_factor83 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 2, i32 3
  store i32 1, ptr %v_samp_factor83, align 4
  %quant_tbl_no84 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 2, i32 4
  store i32 0, ptr %quant_tbl_no84, align 8
  %40 = load ptr, ptr %compptr, align 8
  %dc_tbl_no85 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no85, align 4
  %ac_tbl_no86 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no86, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %comp_info87 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i64 0, i32 14
  %42 = load ptr, ptr %comp_info87, align 8
  %arrayidx88 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 3
  store ptr %arrayidx88, ptr %compptr, align 8
  store i32 75, ptr %arrayidx88, align 8
  %h_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 3, i32 2
  store i32 1, ptr %h_samp_factor90, align 8
  %v_samp_factor91 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 3, i32 3
  store i32 1, ptr %v_samp_factor91, align 4
  %quant_tbl_no92 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i64 3, i32 4
  store i32 0, ptr %quant_tbl_no92, align 8
  %43 = load ptr, ptr %compptr, align 8
  %dc_tbl_no93 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no93, align 4
  %ac_tbl_no94 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no94, align 8
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end
  %44 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 35
  store i32 1, ptr %write_Adobe_marker96, align 4
  %num_components97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 12
  store i32 4, ptr %num_components97, align 4
  %comp_info98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 14
  %45 = load ptr, ptr %comp_info98, align 8
  store ptr %45, ptr %compptr, align 8
  store i32 1, ptr %45, align 8
  %h_samp_factor101 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 0, i32 2
  store i32 2, ptr %h_samp_factor101, align 8
  %v_samp_factor102 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 0, i32 3
  store i32 2, ptr %v_samp_factor102, align 4
  %quant_tbl_no103 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i64 0, i32 4
  store i32 0, ptr %quant_tbl_no103, align 8
  %46 = load ptr, ptr %compptr, align 8
  %dc_tbl_no104 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no104, align 4
  %ac_tbl_no105 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no105, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %comp_info106 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 14
  %48 = load ptr, ptr %comp_info106, align 8
  %arrayidx107 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 1
  store ptr %arrayidx107, ptr %compptr, align 8
  store i32 2, ptr %arrayidx107, align 8
  %h_samp_factor109 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 1, i32 2
  store i32 1, ptr %h_samp_factor109, align 8
  %v_samp_factor110 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 1, i32 3
  store i32 1, ptr %v_samp_factor110, align 4
  %quant_tbl_no111 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i64 1, i32 4
  store i32 1, ptr %quant_tbl_no111, align 8
  %49 = load ptr, ptr %compptr, align 8
  %dc_tbl_no112 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 5
  store i32 1, ptr %dc_tbl_no112, align 4
  %ac_tbl_no113 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 6
  store i32 1, ptr %ac_tbl_no113, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  %comp_info114 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i64 0, i32 14
  %51 = load ptr, ptr %comp_info114, align 8
  %arrayidx115 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i64 2
  store ptr %arrayidx115, ptr %compptr, align 8
  store i32 3, ptr %arrayidx115, align 8
  %h_samp_factor117 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i64 2, i32 2
  store i32 1, ptr %h_samp_factor117, align 8
  %v_samp_factor118 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i64 2, i32 3
  store i32 1, ptr %v_samp_factor118, align 4
  %quant_tbl_no119 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i64 2, i32 4
  store i32 1, ptr %quant_tbl_no119, align 8
  %52 = load ptr, ptr %compptr, align 8
  %dc_tbl_no120 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 5
  store i32 1, ptr %dc_tbl_no120, align 4
  %ac_tbl_no121 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 6
  store i32 1, ptr %ac_tbl_no121, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  %comp_info122 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i64 0, i32 14
  %54 = load ptr, ptr %comp_info122, align 8
  %arrayidx123 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 3
  store ptr %arrayidx123, ptr %compptr, align 8
  store i32 4, ptr %arrayidx123, align 8
  %h_samp_factor125 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 3, i32 2
  store i32 2, ptr %h_samp_factor125, align 8
  %v_samp_factor126 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 3, i32 3
  store i32 2, ptr %v_samp_factor126, align 4
  %quant_tbl_no127 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 3, i32 4
  store i32 0, ptr %quant_tbl_no127, align 8
  %55 = load ptr, ptr %compptr, align 8
  %dc_tbl_no128 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no128, align 4
  %ac_tbl_no129 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no129, align 8
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end
  %56 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i64 0, i32 8
  %57 = load i32, ptr %input_components, align 8
  %num_components131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i64 0, i32 12
  store i32 %57, ptr %num_components131, align 4
  %cmp133 = icmp slt i32 %57, 1
  br i1 %cmp133, label %if.then136, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb130
  %58 = load ptr, ptr %cinfo.addr, align 8
  %num_components134 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i64 0, i32 12
  %59 = load i32, ptr %num_components134, align 4
  %cmp135 = icmp sgt i32 %59, 10
  br i1 %cmp135, label %if.then136, label %if.end148

if.then136:                                       ; preds = %lor.lhs.false, %sw.bb130
  %60 = load ptr, ptr %cinfo.addr, align 8
  %61 = load ptr, ptr %60, align 8
  %msg_code138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 5
  store i32 24, ptr %msg_code138, align 8
  %num_components139 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 12
  %62 = load i32, ptr %num_components139, align 4
  %63 = load ptr, ptr %60, align 8
  %msg_parm141 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 6
  store i32 %62, ptr %msg_parm141, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %65 = load ptr, ptr %64, align 8
  %arrayidx145 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %arrayidx145, align 4
  %66 = load ptr, ptr %64, align 8
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull %64) #4
  br label %if.end148

if.end148:                                        ; preds = %if.then136, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end148
  %storemerge = phi i32 [ 0, %if.end148 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %68 = load ptr, ptr %cinfo.addr, align 8
  %num_components149 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %68, i64 0, i32 12
  %69 = load i32, ptr %num_components149, align 4
  %cmp150 = icmp slt i32 %storemerge, %69
  br i1 %cmp150, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond
  %70 = load ptr, ptr %cinfo.addr, align 8
  %comp_info151 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %70, i64 0, i32 14
  %71 = load ptr, ptr %comp_info151, align 8
  %72 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %72 to i64
  %arrayidx152 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 %idxprom
  store ptr %arrayidx152, ptr %compptr, align 8
  store i32 %72, ptr %arrayidx152, align 8
  %h_samp_factor154 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 %idxprom, i32 2
  store i32 1, ptr %h_samp_factor154, align 8
  %v_samp_factor155 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 %idxprom, i32 3
  store i32 1, ptr %v_samp_factor155, align 4
  %quant_tbl_no156 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 %idxprom, i32 4
  store i32 0, ptr %quant_tbl_no156, align 8
  %73 = load ptr, ptr %compptr, align 8
  %dc_tbl_no157 = getelementptr inbounds %struct.jpeg_component_info, ptr %73, i64 0, i32 5
  store i32 0, ptr %dc_tbl_no157, align 4
  %ac_tbl_no158 = getelementptr inbounds %struct.jpeg_component_info, ptr %73, i64 0, i32 6
  store i32 0, ptr %ac_tbl_no158, align 8
  %74 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %74, 1
  br label %for.cond, !llvm.loop !9

sw.default:                                       ; preds = %if.end
  %75 = load ptr, ptr %cinfo.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %msg_code160 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 5
  store i32 8, ptr %msg_code160, align 8
  %77 = load ptr, ptr %75, align 8
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr noundef nonnull %75) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond, %sw.default, %sw.bb95, %sw.bb60, %sw.bb33, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_simple_progression(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ncomps = alloca i32, align 4
  %nscans = alloca i32, align 4
  %scanptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %0 = load i32, ptr %num_components, align 4
  store i32 %0, ptr %ncomps, align 4
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %1, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %global_state1, align 4
  %5 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %msg_parm, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %ncomps, align 4
  %cmp4 = icmp eq i32 %9, 3
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 13
  %11 = load i32, ptr %jpeg_color_space, align 8
  %cmp5 = icmp eq i32 %11, 3
  br i1 %cmp5, label %if.end12, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i32, ptr %ncomps, align 4
  %cmp7 = icmp sgt i32 %12, 4
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %13 = load i32, ptr %ncomps, align 4
  %mul = mul nsw i32 %13, 6
  br label %if.end12

if.else9:                                         ; preds = %if.else
  %14 = load i32, ptr %ncomps, align 4
  %mul10 = shl nsw i32 %14, 2
  %add = or i32 %mul10, 2
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else9, %land.lhs.true
  %storemerge1 = phi i32 [ 10, %land.lhs.true ], [ %add, %if.else9 ], [ %mul, %if.then8 ]
  store i32 %storemerge1, ptr %nscans, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i64 0, i32 1
  %16 = load ptr, ptr %mem, align 8
  %17 = load ptr, ptr %16, align 8
  %conv = sext i32 %storemerge1 to i64
  %mul13 = mul nsw i64 %conv, 36
  %call = call ptr %17(ptr noundef %15, i32 noundef 0, i64 noundef %mul13) #4
  store ptr %call, ptr %scanptr, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 22
  store ptr %call, ptr %scan_info, align 8
  %19 = load i32, ptr %nscans, align 4
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 21
  store i32 %19, ptr %num_scans, align 8
  %20 = load i32, ptr %ncomps, align 4
  %cmp14 = icmp eq i32 %20, 3
  br i1 %cmp14, label %land.lhs.true16, label %if.else31

land.lhs.true16:                                  ; preds = %if.end12
  %21 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i64 0, i32 13
  %22 = load i32, ptr %jpeg_color_space17, align 8
  %cmp18 = icmp eq i32 %22, 3
  br i1 %cmp18, label %if.then20, label %if.else31

if.then20:                                        ; preds = %land.lhs.true16
  %23 = load ptr, ptr %scanptr, align 8
  %24 = load i32, ptr %ncomps, align 4
  %call21 = call ptr @fill_dc_scans(ptr noundef %23, i32 noundef %24, i32 noundef 0, i32 noundef 1)
  store ptr %call21, ptr %scanptr, align 8
  %call22 = call ptr @fill_a_scan(ptr noundef %call21, i32 noundef 0, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  store ptr %call22, ptr %scanptr, align 8
  %call23 = call ptr @fill_a_scan(ptr noundef %call22, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  store ptr %call23, ptr %scanptr, align 8
  %call24 = call ptr @fill_a_scan(ptr noundef %call23, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  store ptr %call24, ptr %scanptr, align 8
  %call25 = call ptr @fill_a_scan(ptr noundef %call24, i32 noundef 0, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  store ptr %call25, ptr %scanptr, align 8
  %call26 = call ptr @fill_a_scan(ptr noundef %call25, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  store ptr %call26, ptr %scanptr, align 8
  %25 = load i32, ptr %ncomps, align 4
  %call27 = call ptr @fill_dc_scans(ptr noundef %call26, i32 noundef %25, i32 noundef 1, i32 noundef 0)
  store ptr %call27, ptr %scanptr, align 8
  %call28 = call ptr @fill_a_scan(ptr noundef %call27, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store ptr %call28, ptr %scanptr, align 8
  %call29 = call ptr @fill_a_scan(ptr noundef %call28, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store ptr %call29, ptr %scanptr, align 8
  %call30 = call ptr @fill_a_scan(ptr noundef %call29, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  br label %if.end38

if.else31:                                        ; preds = %land.lhs.true16, %if.end12
  %26 = load ptr, ptr %scanptr, align 8
  %27 = load i32, ptr %ncomps, align 4
  %call32 = call ptr @fill_dc_scans(ptr noundef %26, i32 noundef %27, i32 noundef 0, i32 noundef 1)
  store ptr %call32, ptr %scanptr, align 8
  %call33 = call ptr @fill_scans(ptr noundef %call32, i32 noundef %27, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  store ptr %call33, ptr %scanptr, align 8
  %call34 = call ptr @fill_scans(ptr noundef %call33, i32 noundef %27, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  store ptr %call34, ptr %scanptr, align 8
  %28 = load i32, ptr %ncomps, align 4
  %call35 = call ptr @fill_scans(ptr noundef %call34, i32 noundef %28, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  store ptr %call35, ptr %scanptr, align 8
  %call36 = call ptr @fill_dc_scans(ptr noundef %call35, i32 noundef %28, i32 noundef 1, i32 noundef 0)
  store ptr %call36, ptr %scanptr, align 8
  %call37 = call ptr @fill_scans(ptr noundef %call36, i32 noundef %28, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %if.then20
  %storemerge2 = phi ptr [ %call37, %if.else31 ], [ %call30, %if.then20 ]
  store ptr %storemerge2, ptr %scanptr, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @fill_dc_scans(ptr noundef %scanptr, i32 noundef %ncomps, i32 noundef %Ah, i32 noundef %Al) #0 {
entry:
  %scanptr.addr = alloca ptr, align 8
  %ncomps.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %scanptr, ptr %scanptr.addr, align 8
  store i32 %ncomps, ptr %ncomps.addr, align 4
  store i32 %Ah, ptr %Ah.addr, align 4
  store i32 %Al, ptr %Al.addr, align 4
  %cmp = icmp slt i32 %ncomps, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %ncomps.addr, align 4
  %1 = load ptr, ptr %scanptr.addr, align 8
  store i32 %0, ptr %1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %ci, align 4
  %2 = load i32, ptr %ncomps.addr, align 4
  %cmp1 = icmp slt i32 %storemerge1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %ci, align 4
  %4 = load ptr, ptr %scanptr.addr, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_scan_info, ptr %4, i64 0, i32 1, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4
  %5 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %scanptr.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %6, i64 0, i32 3
  store i32 0, ptr %Se, align 4
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %6, i64 0, i32 2
  store i32 0, ptr %Ss, align 4
  %7 = load i32, ptr %Ah.addr, align 4
  %Ah2 = getelementptr inbounds %struct.jpeg_scan_info, ptr %6, i64 0, i32 4
  store i32 %7, ptr %Ah2, align 4
  %8 = load i32, ptr %Al.addr, align 4
  %9 = load ptr, ptr %scanptr.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %9, i64 0, i32 5
  store i32 %8, ptr %Al3, align 4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %9, i64 1
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %scanptr.addr, align 8
  %11 = load i32, ptr %ncomps.addr, align 4
  %12 = load i32, ptr %Ah.addr, align 4
  %13 = load i32, ptr %Al.addr, align 4
  %call = call ptr @fill_scans(ptr noundef %10, i32 noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef %12, i32 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %storemerge = phi ptr [ %call, %if.else ], [ %incdec.ptr, %for.end ]
  store ptr %storemerge, ptr %scanptr.addr, align 8
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @fill_a_scan(ptr noundef %scanptr, i32 noundef %ci, i32 noundef %Ss, i32 noundef %Se, i32 noundef %Ah, i32 noundef %Al) #0 {
entry:
  %scanptr.addr = alloca ptr, align 8
  %Ss.addr = alloca i32, align 4
  %Se.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  store ptr %scanptr, ptr %scanptr.addr, align 8
  store i32 %Ss, ptr %Ss.addr, align 4
  store i32 %Se, ptr %Se.addr, align 4
  store i32 %Ah, ptr %Ah.addr, align 4
  store i32 %Al, ptr %Al.addr, align 4
  store i32 1, ptr %scanptr, align 4
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %scanptr, i64 0, i32 1
  store i32 %ci, ptr %component_index, align 4
  %0 = load i32, ptr %Ss.addr, align 4
  %1 = load ptr, ptr %scanptr.addr, align 8
  %Ss1 = getelementptr inbounds %struct.jpeg_scan_info, ptr %1, i64 0, i32 2
  store i32 %0, ptr %Ss1, align 4
  %2 = load i32, ptr %Se.addr, align 4
  %Se2 = getelementptr inbounds %struct.jpeg_scan_info, ptr %1, i64 0, i32 3
  store i32 %2, ptr %Se2, align 4
  %3 = load i32, ptr %Ah.addr, align 4
  %4 = load ptr, ptr %scanptr.addr, align 8
  %Ah3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %4, i64 0, i32 4
  store i32 %3, ptr %Ah3, align 4
  %5 = load i32, ptr %Al.addr, align 4
  %Al4 = getelementptr inbounds %struct.jpeg_scan_info, ptr %4, i64 0, i32 5
  store i32 %5, ptr %Al4, align 4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %scanptr.addr, align 8
  ret ptr %incdec.ptr
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @fill_scans(ptr noundef %scanptr, i32 noundef %ncomps, i32 noundef %Ss, i32 noundef %Se, i32 noundef %Ah, i32 noundef %Al) #0 {
entry:
  %scanptr.addr = alloca ptr, align 8
  %ncomps.addr = alloca i32, align 4
  %Ss.addr = alloca i32, align 4
  %Se.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %scanptr, ptr %scanptr.addr, align 8
  store i32 %ncomps, ptr %ncomps.addr, align 4
  store i32 %Ss, ptr %Ss.addr, align 4
  store i32 %Se, ptr %Se.addr, align 4
  store i32 %Ah, ptr %Ah.addr, align 4
  store i32 %Al, ptr %Al.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %0 = load i32, ptr %ncomps.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %scanptr.addr, align 8
  store i32 1, ptr %1, align 4
  %2 = load i32, ptr %ci, align 4
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %1, i64 0, i32 1
  store i32 %2, ptr %component_index, align 4
  %3 = load i32, ptr %Ss.addr, align 4
  %Ss1 = getelementptr inbounds %struct.jpeg_scan_info, ptr %1, i64 0, i32 2
  store i32 %3, ptr %Ss1, align 4
  %4 = load i32, ptr %Se.addr, align 4
  %5 = load ptr, ptr %scanptr.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_scan_info, ptr %5, i64 0, i32 3
  store i32 %4, ptr %Se2, align 4
  %6 = load i32, ptr %Ah.addr, align 4
  %Ah3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %5, i64 0, i32 4
  store i32 %6, ptr %Ah3, align 4
  %7 = load i32, ptr %Al.addr, align 4
  %8 = load ptr, ptr %scanptr.addr, align 8
  %Al4 = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i64 0, i32 5
  store i32 %7, ptr %Al4, align 4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i64 1
  store ptr %incdec.ptr, ptr %scanptr.addr, align 8
  %9 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %9, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %scanptr.addr, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define internal void @add_huff_table(ptr noundef %cinfo, ptr noundef %htblptr, ptr noundef %bits, ptr noundef %val) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %htblptr.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %htblptr, ptr %htblptr.addr, align 8
  store ptr %bits, ptr %bits.addr, align 8
  store ptr %val, ptr %val.addr, align 8
  %0 = load ptr, ptr %htblptr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_huff_table(ptr noundef %1) #4
  %2 = load ptr, ptr %htblptr.addr, align 8
  store ptr %call, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %htblptr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %bits.addr, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef 17, i64 noundef %6) #4
  %7 = load ptr, ptr %3, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %val.addr, align 8
  %9 = load ptr, ptr %htblptr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %huffval6 = getelementptr inbounds %struct.JHUFF_TBL, ptr %10, i64 0, i32 1
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %huffval6, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memcpy_chk(ptr noundef nonnull %huffval, ptr noundef %8, i64 noundef 256, i64 noundef %11) #4
  %12 = load ptr, ptr %9, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %12, i64 0, i32 2
  store i32 0, ptr %sent_table, align 4
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
