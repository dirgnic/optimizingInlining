; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcparam.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcparam.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
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
  %which_tbl.addr = alloca i32, align 4
  %basic_table.addr = alloca ptr, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %qtblptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %which_tbl, ptr %which_tbl.addr, align 4
  store ptr %basic_table, ptr %basic_table.addr, align 8
  store i32 %scale_factor, ptr %scale_factor.addr, align 4
  store i32 %force_baseline, ptr %force_baseline.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 15
  %1 = load i32, ptr %which_tbl.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %qtblptr, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %3, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state1, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx3, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %qtblptr, align 8
  %15 = load ptr, ptr %14, align 8
  %cmp5 = icmp eq ptr %15, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %16 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_quant_table(ptr noundef %16)
  %17 = load ptr, ptr %qtblptr, align 8
  store ptr %call, ptr %17, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %18 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %18, 64
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %basic_table.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %19, i64 %idxprom9
  %21 = load i32, ptr %arrayidx10, align 4
  %conv = zext i32 %21 to i64
  %22 = load i32, ptr %scale_factor.addr, align 4
  %conv11 = sext i32 %22 to i64
  %mul = mul nsw i64 %conv, %conv11
  %add = add nsw i64 %mul, 50
  %div = sdiv i64 %add, 100
  store i64 %div, ptr %temp, align 8
  %23 = load i64, ptr %temp, align 8
  %cmp12 = icmp sle i64 %23, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  store i64 1, ptr %temp, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.body
  %24 = load i64, ptr %temp, align 8
  %cmp16 = icmp sgt i64 %24, 32767
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i64 32767, ptr %temp, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %25 = load i32, ptr %force_baseline.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end19
  %26 = load i64, ptr %temp, align 8
  %cmp20 = icmp sgt i64 %26, 255
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  store i64 255, ptr %temp, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %if.end19
  %27 = load i64, ptr %temp, align 8
  %conv24 = trunc i64 %27 to i16
  %28 = load ptr, ptr %qtblptr, align 8
  %29 = load ptr, ptr %28, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom25
  store i16 %conv24, ptr %arrayidx26, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %qtblptr, align 8
  %33 = load ptr, ptr %32, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %33, i32 0, i32 1
  store i32 0, ptr %sent_table, align 4
  ret void
}

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_linear_quality(ptr noundef %cinfo, i32 noundef %scale_factor, i32 noundef %force_baseline) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %scale_factor, ptr %scale_factor.addr, align 4
  store i32 %force_baseline, ptr %force_baseline.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %scale_factor.addr, align 4
  %2 = load i32, ptr %force_baseline.addr, align 4
  call void @jpeg_add_quant_table(ptr noundef %0, i32 noundef 0, ptr noundef @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef %1, i32 noundef %2)
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %scale_factor.addr, align 4
  %5 = load i32, ptr %force_baseline.addr, align 4
  call void @jpeg_add_quant_table(ptr noundef %3, i32 noundef 1, ptr noundef @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_quality_scaling(i32 noundef %quality) #0 {
entry:
  %quality.addr = alloca i32, align 4
  store i32 %quality, ptr %quality.addr, align 4
  %0 = load i32, ptr %quality.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %quality.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %quality.addr, align 4
  %cmp1 = icmp sgt i32 %1, 100
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 100, ptr %quality.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr %quality.addr, align 4
  %cmp4 = icmp slt i32 %2, 50
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %3 = load i32, ptr %quality.addr, align 4
  %div = sdiv i32 5000, %3
  store i32 %div, ptr %quality.addr, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end3
  %4 = load i32, ptr %quality.addr, align 4
  %mul = mul nsw i32 %4, 2
  %sub = sub nsw i32 200, %mul
  store i32 %sub, ptr %quality.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %5 = load i32, ptr %quality.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_quality(ptr noundef %cinfo, i32 noundef %quality, i32 noundef %force_baseline) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %quality.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %quality, ptr %quality.addr, align 4
  store i32 %force_baseline, ptr %force_baseline.addr, align 4
  %0 = load i32, ptr %quality.addr, align 4
  %call = call i32 @jpeg_quality_scaling(i32 noundef %0)
  store i32 %call, ptr %quality.addr, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load i32, ptr %quality.addr, align 4
  %3 = load i32, ptr %force_baseline.addr, align 4
  call void @jpeg_set_linear_quality(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_defaults(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %comp_info, align 8
  %cmp4 = icmp eq ptr %13, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %alloc_small, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %16(ptr noundef %17, i32 noundef 0, i64 noundef 960)
  %18 = load ptr, ptr %cinfo.addr, align 8
  %comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 14
  store ptr %call, ptr %comp_info6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 11
  store i32 8, ptr %data_precision, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcparam_0(ptr noundef %20, i32 noundef 75, i32 noundef 1)
  %21 = load ptr, ptr %cinfo.addr, align 8
  call void @std_huff_tables(ptr noundef %21)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %22 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %22, 16
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_L = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 18
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx9 = getelementptr inbounds [16 x i8], ptr %arith_dc_L, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx9, align 1
  %25 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_U = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 19
  %26 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %26 to i64
  %arrayidx11 = getelementptr inbounds [16 x i8], ptr %arith_dc_U, i64 0, i64 %idxprom10
  store i8 1, ptr %arrayidx11, align 1
  %27 = load ptr, ptr %cinfo.addr, align 8
  %arith_ac_K = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 20
  %28 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %28 to i64
  %arrayidx13 = getelementptr inbounds [16 x i8], ptr %arith_ac_K, i64 0, i64 %idxprom12
  store i8 5, ptr %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 22
  store ptr null, ptr %scan_info, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 21
  store i32 0, ptr %num_scans, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 23
  store i32 0, ptr %raw_data_in, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 24
  store i32 0, ptr %arith_code, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 25
  store i32 0, ptr %optimize_coding, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %data_precision14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 11
  %36 = load i32, ptr %data_precision14, align 8
  %cmp15 = icmp sgt i32 %36, 8
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end
  %37 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 25
  store i32 1, ptr %optimize_coding17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end
  %38 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 26
  store i32 0, ptr %CCIR601_sampling, align 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 27
  store i32 0, ptr %smoothing_factor, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 28
  store i32 0, ptr %dct_method, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 29
  store i32 0, ptr %restart_interval, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 32
  store i8 0, ptr %density_unit, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 33
  store i16 1, ptr %X_density, align 2
  %45 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 34
  store i16 1, ptr %Y_density, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_default_colorspace(ptr noundef %46)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @std_huff_tables(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 16
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 0
  call void @add_huff_table(ptr noundef %0, ptr noundef %arrayidx, ptr noundef @std_huff_tables.bits_dc_luminance, ptr noundef @std_huff_tables.val_dc_luminance)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 17
  %arrayidx1 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 0
  call void @add_huff_table(ptr noundef %2, ptr noundef %arrayidx1, ptr noundef @std_huff_tables.bits_ac_luminance, ptr noundef @std_huff_tables.val_ac_luminance)
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs2, i64 0, i64 1
  call void @add_huff_table(ptr noundef %4, ptr noundef %arrayidx3, ptr noundef @std_huff_tables.bits_dc_chrominance, ptr noundef @std_huff_tables.val_dc_chrominance)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 17
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs4, i64 0, i64 1
  call void @add_huff_table(ptr noundef %6, ptr noundef %arrayidx5, ptr noundef @std_huff_tables.bits_ac_chrominance, ptr noundef @std_huff_tables.val_ac_chrominance)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_default_colorspace(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %in_color_space, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %2, i32 noundef 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %3, i32 noundef 3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %4, i32 noundef 3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %5, i32 noundef 4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %6, i32 noundef 5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %7, i32 noundef 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 7, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %colorspace.addr, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 13
  store i32 %12, ptr %jpeg_color_space, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 31
  store i32 0, ptr %write_JFIF_header, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 35
  store i32 0, ptr %write_Adobe_marker, align 4
  %16 = load i32, ptr %colorspace.addr, align 4
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb33
    i32 4, label %sw.bb60
    i32 5, label %sw.bb95
    i32 0, label %sw.bb130
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load ptr, ptr %cinfo.addr, align 8
  %write_JFIF_header4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 31
  store i32 1, ptr %write_JFIF_header4, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 12
  store i32 1, ptr %num_components, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 14
  %20 = load ptr, ptr %comp_info, align 8
  %arrayidx5 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 0
  store ptr %arrayidx5, ptr %compptr, align 8
  %21 = load ptr, ptr %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i32 0, i32 0
  store i32 1, ptr %component_id, align 8
  %22 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 2
  store i32 1, ptr %h_samp_factor, align 8
  %23 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i32 0, i32 3
  store i32 1, ptr %v_samp_factor, align 4
  %24 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no, align 8
  %25 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no, align 4
  %26 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %27 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 35
  store i32 1, ptr %write_Adobe_marker7, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %num_components8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 12
  store i32 3, ptr %num_components8, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %comp_info9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 14
  %30 = load ptr, ptr %comp_info9, align 8
  %arrayidx10 = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0
  store ptr %arrayidx10, ptr %compptr, align 8
  %31 = load ptr, ptr %compptr, align 8
  %component_id11 = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i32 0, i32 0
  store i32 82, ptr %component_id11, align 8
  %32 = load ptr, ptr %compptr, align 8
  %h_samp_factor12 = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i32 0, i32 2
  store i32 1, ptr %h_samp_factor12, align 8
  %33 = load ptr, ptr %compptr, align 8
  %v_samp_factor13 = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i32 0, i32 3
  store i32 1, ptr %v_samp_factor13, align 4
  %34 = load ptr, ptr %compptr, align 8
  %quant_tbl_no14 = getelementptr inbounds %struct.jpeg_component_info, ptr %34, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no14, align 8
  %35 = load ptr, ptr %compptr, align 8
  %dc_tbl_no15 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no15, align 4
  %36 = load ptr, ptr %compptr, align 8
  %ac_tbl_no16 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no16, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %comp_info17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 14
  %38 = load ptr, ptr %comp_info17, align 8
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 1
  store ptr %arrayidx18, ptr %compptr, align 8
  %39 = load ptr, ptr %compptr, align 8
  %component_id19 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i32 0, i32 0
  store i32 71, ptr %component_id19, align 8
  %40 = load ptr, ptr %compptr, align 8
  %h_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 0, i32 2
  store i32 1, ptr %h_samp_factor20, align 8
  %41 = load ptr, ptr %compptr, align 8
  %v_samp_factor21 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 3
  store i32 1, ptr %v_samp_factor21, align 4
  %42 = load ptr, ptr %compptr, align 8
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no22, align 8
  %43 = load ptr, ptr %compptr, align 8
  %dc_tbl_no23 = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no23, align 4
  %44 = load ptr, ptr %compptr, align 8
  %ac_tbl_no24 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no24, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %comp_info25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 14
  %46 = load ptr, ptr %comp_info25, align 8
  %arrayidx26 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 2
  store ptr %arrayidx26, ptr %compptr, align 8
  %47 = load ptr, ptr %compptr, align 8
  %component_id27 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 0
  store i32 66, ptr %component_id27, align 8
  %48 = load ptr, ptr %compptr, align 8
  %h_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i32 0, i32 2
  store i32 1, ptr %h_samp_factor28, align 8
  %49 = load ptr, ptr %compptr, align 8
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i32 0, i32 3
  store i32 1, ptr %v_samp_factor29, align 4
  %50 = load ptr, ptr %compptr, align 8
  %quant_tbl_no30 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no30, align 8
  %51 = load ptr, ptr %compptr, align 8
  %dc_tbl_no31 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no31, align 4
  %52 = load ptr, ptr %compptr, align 8
  %ac_tbl_no32 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no32, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %53 = load ptr, ptr %cinfo.addr, align 8
  %write_JFIF_header34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 31
  store i32 1, ptr %write_JFIF_header34, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  %num_components35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %54, i32 0, i32 12
  store i32 3, ptr %num_components35, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %comp_info36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 14
  %56 = load ptr, ptr %comp_info36, align 8
  %arrayidx37 = getelementptr inbounds %struct.jpeg_component_info, ptr %56, i64 0
  store ptr %arrayidx37, ptr %compptr, align 8
  %57 = load ptr, ptr %compptr, align 8
  %component_id38 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i32 0, i32 0
  store i32 1, ptr %component_id38, align 8
  %58 = load ptr, ptr %compptr, align 8
  %h_samp_factor39 = getelementptr inbounds %struct.jpeg_component_info, ptr %58, i32 0, i32 2
  store i32 2, ptr %h_samp_factor39, align 8
  %59 = load ptr, ptr %compptr, align 8
  %v_samp_factor40 = getelementptr inbounds %struct.jpeg_component_info, ptr %59, i32 0, i32 3
  store i32 2, ptr %v_samp_factor40, align 4
  %60 = load ptr, ptr %compptr, align 8
  %quant_tbl_no41 = getelementptr inbounds %struct.jpeg_component_info, ptr %60, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no41, align 8
  %61 = load ptr, ptr %compptr, align 8
  %dc_tbl_no42 = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no42, align 4
  %62 = load ptr, ptr %compptr, align 8
  %ac_tbl_no43 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no43, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  %comp_info44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 14
  %64 = load ptr, ptr %comp_info44, align 8
  %arrayidx45 = getelementptr inbounds %struct.jpeg_component_info, ptr %64, i64 1
  store ptr %arrayidx45, ptr %compptr, align 8
  %65 = load ptr, ptr %compptr, align 8
  %component_id46 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i32 0, i32 0
  store i32 2, ptr %component_id46, align 8
  %66 = load ptr, ptr %compptr, align 8
  %h_samp_factor47 = getelementptr inbounds %struct.jpeg_component_info, ptr %66, i32 0, i32 2
  store i32 1, ptr %h_samp_factor47, align 8
  %67 = load ptr, ptr %compptr, align 8
  %v_samp_factor48 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i32 0, i32 3
  store i32 1, ptr %v_samp_factor48, align 4
  %68 = load ptr, ptr %compptr, align 8
  %quant_tbl_no49 = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i32 0, i32 4
  store i32 1, ptr %quant_tbl_no49, align 8
  %69 = load ptr, ptr %compptr, align 8
  %dc_tbl_no50 = getelementptr inbounds %struct.jpeg_component_info, ptr %69, i32 0, i32 5
  store i32 1, ptr %dc_tbl_no50, align 4
  %70 = load ptr, ptr %compptr, align 8
  %ac_tbl_no51 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i32 0, i32 6
  store i32 1, ptr %ac_tbl_no51, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %comp_info52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i32 0, i32 14
  %72 = load ptr, ptr %comp_info52, align 8
  %arrayidx53 = getelementptr inbounds %struct.jpeg_component_info, ptr %72, i64 2
  store ptr %arrayidx53, ptr %compptr, align 8
  %73 = load ptr, ptr %compptr, align 8
  %component_id54 = getelementptr inbounds %struct.jpeg_component_info, ptr %73, i32 0, i32 0
  store i32 3, ptr %component_id54, align 8
  %74 = load ptr, ptr %compptr, align 8
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i32 0, i32 2
  store i32 1, ptr %h_samp_factor55, align 8
  %75 = load ptr, ptr %compptr, align 8
  %v_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i32 0, i32 3
  store i32 1, ptr %v_samp_factor56, align 4
  %76 = load ptr, ptr %compptr, align 8
  %quant_tbl_no57 = getelementptr inbounds %struct.jpeg_component_info, ptr %76, i32 0, i32 4
  store i32 1, ptr %quant_tbl_no57, align 8
  %77 = load ptr, ptr %compptr, align 8
  %dc_tbl_no58 = getelementptr inbounds %struct.jpeg_component_info, ptr %77, i32 0, i32 5
  store i32 1, ptr %dc_tbl_no58, align 4
  %78 = load ptr, ptr %compptr, align 8
  %ac_tbl_no59 = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i32 0, i32 6
  store i32 1, ptr %ac_tbl_no59, align 8
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end
  %79 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %79, i32 0, i32 35
  store i32 1, ptr %write_Adobe_marker61, align 4
  %80 = load ptr, ptr %cinfo.addr, align 8
  %num_components62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i32 0, i32 12
  store i32 4, ptr %num_components62, align 4
  %81 = load ptr, ptr %cinfo.addr, align 8
  %comp_info63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %81, i32 0, i32 14
  %82 = load ptr, ptr %comp_info63, align 8
  %arrayidx64 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i64 0
  store ptr %arrayidx64, ptr %compptr, align 8
  %83 = load ptr, ptr %compptr, align 8
  %component_id65 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i32 0, i32 0
  store i32 67, ptr %component_id65, align 8
  %84 = load ptr, ptr %compptr, align 8
  %h_samp_factor66 = getelementptr inbounds %struct.jpeg_component_info, ptr %84, i32 0, i32 2
  store i32 1, ptr %h_samp_factor66, align 8
  %85 = load ptr, ptr %compptr, align 8
  %v_samp_factor67 = getelementptr inbounds %struct.jpeg_component_info, ptr %85, i32 0, i32 3
  store i32 1, ptr %v_samp_factor67, align 4
  %86 = load ptr, ptr %compptr, align 8
  %quant_tbl_no68 = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no68, align 8
  %87 = load ptr, ptr %compptr, align 8
  %dc_tbl_no69 = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no69, align 4
  %88 = load ptr, ptr %compptr, align 8
  %ac_tbl_no70 = getelementptr inbounds %struct.jpeg_component_info, ptr %88, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no70, align 8
  %89 = load ptr, ptr %cinfo.addr, align 8
  %comp_info71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %89, i32 0, i32 14
  %90 = load ptr, ptr %comp_info71, align 8
  %arrayidx72 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 1
  store ptr %arrayidx72, ptr %compptr, align 8
  %91 = load ptr, ptr %compptr, align 8
  %component_id73 = getelementptr inbounds %struct.jpeg_component_info, ptr %91, i32 0, i32 0
  store i32 77, ptr %component_id73, align 8
  %92 = load ptr, ptr %compptr, align 8
  %h_samp_factor74 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i32 0, i32 2
  store i32 1, ptr %h_samp_factor74, align 8
  %93 = load ptr, ptr %compptr, align 8
  %v_samp_factor75 = getelementptr inbounds %struct.jpeg_component_info, ptr %93, i32 0, i32 3
  store i32 1, ptr %v_samp_factor75, align 4
  %94 = load ptr, ptr %compptr, align 8
  %quant_tbl_no76 = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no76, align 8
  %95 = load ptr, ptr %compptr, align 8
  %dc_tbl_no77 = getelementptr inbounds %struct.jpeg_component_info, ptr %95, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no77, align 4
  %96 = load ptr, ptr %compptr, align 8
  %ac_tbl_no78 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no78, align 8
  %97 = load ptr, ptr %cinfo.addr, align 8
  %comp_info79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %97, i32 0, i32 14
  %98 = load ptr, ptr %comp_info79, align 8
  %arrayidx80 = getelementptr inbounds %struct.jpeg_component_info, ptr %98, i64 2
  store ptr %arrayidx80, ptr %compptr, align 8
  %99 = load ptr, ptr %compptr, align 8
  %component_id81 = getelementptr inbounds %struct.jpeg_component_info, ptr %99, i32 0, i32 0
  store i32 89, ptr %component_id81, align 8
  %100 = load ptr, ptr %compptr, align 8
  %h_samp_factor82 = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i32 0, i32 2
  store i32 1, ptr %h_samp_factor82, align 8
  %101 = load ptr, ptr %compptr, align 8
  %v_samp_factor83 = getelementptr inbounds %struct.jpeg_component_info, ptr %101, i32 0, i32 3
  store i32 1, ptr %v_samp_factor83, align 4
  %102 = load ptr, ptr %compptr, align 8
  %quant_tbl_no84 = getelementptr inbounds %struct.jpeg_component_info, ptr %102, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no84, align 8
  %103 = load ptr, ptr %compptr, align 8
  %dc_tbl_no85 = getelementptr inbounds %struct.jpeg_component_info, ptr %103, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no85, align 4
  %104 = load ptr, ptr %compptr, align 8
  %ac_tbl_no86 = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no86, align 8
  %105 = load ptr, ptr %cinfo.addr, align 8
  %comp_info87 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 14
  %106 = load ptr, ptr %comp_info87, align 8
  %arrayidx88 = getelementptr inbounds %struct.jpeg_component_info, ptr %106, i64 3
  store ptr %arrayidx88, ptr %compptr, align 8
  %107 = load ptr, ptr %compptr, align 8
  %component_id89 = getelementptr inbounds %struct.jpeg_component_info, ptr %107, i32 0, i32 0
  store i32 75, ptr %component_id89, align 8
  %108 = load ptr, ptr %compptr, align 8
  %h_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, ptr %108, i32 0, i32 2
  store i32 1, ptr %h_samp_factor90, align 8
  %109 = load ptr, ptr %compptr, align 8
  %v_samp_factor91 = getelementptr inbounds %struct.jpeg_component_info, ptr %109, i32 0, i32 3
  store i32 1, ptr %v_samp_factor91, align 4
  %110 = load ptr, ptr %compptr, align 8
  %quant_tbl_no92 = getelementptr inbounds %struct.jpeg_component_info, ptr %110, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no92, align 8
  %111 = load ptr, ptr %compptr, align 8
  %dc_tbl_no93 = getelementptr inbounds %struct.jpeg_component_info, ptr %111, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no93, align 4
  %112 = load ptr, ptr %compptr, align 8
  %ac_tbl_no94 = getelementptr inbounds %struct.jpeg_component_info, ptr %112, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no94, align 8
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end
  %113 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %113, i32 0, i32 35
  store i32 1, ptr %write_Adobe_marker96, align 4
  %114 = load ptr, ptr %cinfo.addr, align 8
  %num_components97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i32 0, i32 12
  store i32 4, ptr %num_components97, align 4
  %115 = load ptr, ptr %cinfo.addr, align 8
  %comp_info98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %115, i32 0, i32 14
  %116 = load ptr, ptr %comp_info98, align 8
  %arrayidx99 = getelementptr inbounds %struct.jpeg_component_info, ptr %116, i64 0
  store ptr %arrayidx99, ptr %compptr, align 8
  %117 = load ptr, ptr %compptr, align 8
  %component_id100 = getelementptr inbounds %struct.jpeg_component_info, ptr %117, i32 0, i32 0
  store i32 1, ptr %component_id100, align 8
  %118 = load ptr, ptr %compptr, align 8
  %h_samp_factor101 = getelementptr inbounds %struct.jpeg_component_info, ptr %118, i32 0, i32 2
  store i32 2, ptr %h_samp_factor101, align 8
  %119 = load ptr, ptr %compptr, align 8
  %v_samp_factor102 = getelementptr inbounds %struct.jpeg_component_info, ptr %119, i32 0, i32 3
  store i32 2, ptr %v_samp_factor102, align 4
  %120 = load ptr, ptr %compptr, align 8
  %quant_tbl_no103 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no103, align 8
  %121 = load ptr, ptr %compptr, align 8
  %dc_tbl_no104 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no104, align 4
  %122 = load ptr, ptr %compptr, align 8
  %ac_tbl_no105 = getelementptr inbounds %struct.jpeg_component_info, ptr %122, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no105, align 8
  %123 = load ptr, ptr %cinfo.addr, align 8
  %comp_info106 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %123, i32 0, i32 14
  %124 = load ptr, ptr %comp_info106, align 8
  %arrayidx107 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i64 1
  store ptr %arrayidx107, ptr %compptr, align 8
  %125 = load ptr, ptr %compptr, align 8
  %component_id108 = getelementptr inbounds %struct.jpeg_component_info, ptr %125, i32 0, i32 0
  store i32 2, ptr %component_id108, align 8
  %126 = load ptr, ptr %compptr, align 8
  %h_samp_factor109 = getelementptr inbounds %struct.jpeg_component_info, ptr %126, i32 0, i32 2
  store i32 1, ptr %h_samp_factor109, align 8
  %127 = load ptr, ptr %compptr, align 8
  %v_samp_factor110 = getelementptr inbounds %struct.jpeg_component_info, ptr %127, i32 0, i32 3
  store i32 1, ptr %v_samp_factor110, align 4
  %128 = load ptr, ptr %compptr, align 8
  %quant_tbl_no111 = getelementptr inbounds %struct.jpeg_component_info, ptr %128, i32 0, i32 4
  store i32 1, ptr %quant_tbl_no111, align 8
  %129 = load ptr, ptr %compptr, align 8
  %dc_tbl_no112 = getelementptr inbounds %struct.jpeg_component_info, ptr %129, i32 0, i32 5
  store i32 1, ptr %dc_tbl_no112, align 4
  %130 = load ptr, ptr %compptr, align 8
  %ac_tbl_no113 = getelementptr inbounds %struct.jpeg_component_info, ptr %130, i32 0, i32 6
  store i32 1, ptr %ac_tbl_no113, align 8
  %131 = load ptr, ptr %cinfo.addr, align 8
  %comp_info114 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %131, i32 0, i32 14
  %132 = load ptr, ptr %comp_info114, align 8
  %arrayidx115 = getelementptr inbounds %struct.jpeg_component_info, ptr %132, i64 2
  store ptr %arrayidx115, ptr %compptr, align 8
  %133 = load ptr, ptr %compptr, align 8
  %component_id116 = getelementptr inbounds %struct.jpeg_component_info, ptr %133, i32 0, i32 0
  store i32 3, ptr %component_id116, align 8
  %134 = load ptr, ptr %compptr, align 8
  %h_samp_factor117 = getelementptr inbounds %struct.jpeg_component_info, ptr %134, i32 0, i32 2
  store i32 1, ptr %h_samp_factor117, align 8
  %135 = load ptr, ptr %compptr, align 8
  %v_samp_factor118 = getelementptr inbounds %struct.jpeg_component_info, ptr %135, i32 0, i32 3
  store i32 1, ptr %v_samp_factor118, align 4
  %136 = load ptr, ptr %compptr, align 8
  %quant_tbl_no119 = getelementptr inbounds %struct.jpeg_component_info, ptr %136, i32 0, i32 4
  store i32 1, ptr %quant_tbl_no119, align 8
  %137 = load ptr, ptr %compptr, align 8
  %dc_tbl_no120 = getelementptr inbounds %struct.jpeg_component_info, ptr %137, i32 0, i32 5
  store i32 1, ptr %dc_tbl_no120, align 4
  %138 = load ptr, ptr %compptr, align 8
  %ac_tbl_no121 = getelementptr inbounds %struct.jpeg_component_info, ptr %138, i32 0, i32 6
  store i32 1, ptr %ac_tbl_no121, align 8
  %139 = load ptr, ptr %cinfo.addr, align 8
  %comp_info122 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %139, i32 0, i32 14
  %140 = load ptr, ptr %comp_info122, align 8
  %arrayidx123 = getelementptr inbounds %struct.jpeg_component_info, ptr %140, i64 3
  store ptr %arrayidx123, ptr %compptr, align 8
  %141 = load ptr, ptr %compptr, align 8
  %component_id124 = getelementptr inbounds %struct.jpeg_component_info, ptr %141, i32 0, i32 0
  store i32 4, ptr %component_id124, align 8
  %142 = load ptr, ptr %compptr, align 8
  %h_samp_factor125 = getelementptr inbounds %struct.jpeg_component_info, ptr %142, i32 0, i32 2
  store i32 2, ptr %h_samp_factor125, align 8
  %143 = load ptr, ptr %compptr, align 8
  %v_samp_factor126 = getelementptr inbounds %struct.jpeg_component_info, ptr %143, i32 0, i32 3
  store i32 2, ptr %v_samp_factor126, align 4
  %144 = load ptr, ptr %compptr, align 8
  %quant_tbl_no127 = getelementptr inbounds %struct.jpeg_component_info, ptr %144, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no127, align 8
  %145 = load ptr, ptr %compptr, align 8
  %dc_tbl_no128 = getelementptr inbounds %struct.jpeg_component_info, ptr %145, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no128, align 4
  %146 = load ptr, ptr %compptr, align 8
  %ac_tbl_no129 = getelementptr inbounds %struct.jpeg_component_info, ptr %146, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no129, align 8
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end
  %147 = load ptr, ptr %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %147, i32 0, i32 8
  %148 = load i32, ptr %input_components, align 8
  %149 = load ptr, ptr %cinfo.addr, align 8
  %num_components131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %149, i32 0, i32 12
  store i32 %148, ptr %num_components131, align 4
  %150 = load ptr, ptr %cinfo.addr, align 8
  %num_components132 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %150, i32 0, i32 12
  %151 = load i32, ptr %num_components132, align 4
  %cmp133 = icmp slt i32 %151, 1
  br i1 %cmp133, label %if.then136, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb130
  %152 = load ptr, ptr %cinfo.addr, align 8
  %num_components134 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %152, i32 0, i32 12
  %153 = load i32, ptr %num_components134, align 4
  %cmp135 = icmp sgt i32 %153, 10
  br i1 %cmp135, label %if.then136, label %if.end148

if.then136:                                       ; preds = %lor.lhs.false, %sw.bb130
  %154 = load ptr, ptr %cinfo.addr, align 8
  %err137 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err137, align 8
  %msg_code138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %155, i32 0, i32 5
  store i32 24, ptr %msg_code138, align 8
  %156 = load ptr, ptr %cinfo.addr, align 8
  %num_components139 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %156, i32 0, i32 12
  %157 = load i32, ptr %num_components139, align 4
  %158 = load ptr, ptr %cinfo.addr, align 8
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %err140, align 8
  %msg_parm141 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %159, i32 0, i32 6
  %arrayidx142 = getelementptr inbounds [8 x i32], ptr %msg_parm141, i64 0, i64 0
  store i32 %157, ptr %arrayidx142, align 4
  %160 = load ptr, ptr %cinfo.addr, align 8
  %err143 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %160, i32 0, i32 0
  %161 = load ptr, ptr %err143, align 8
  %msg_parm144 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %161, i32 0, i32 6
  %arrayidx145 = getelementptr inbounds [8 x i32], ptr %msg_parm144, i64 0, i64 1
  store i32 10, ptr %arrayidx145, align 4
  %162 = load ptr, ptr %cinfo.addr, align 8
  %err146 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %162, i32 0, i32 0
  %163 = load ptr, ptr %err146, align 8
  %error_exit147 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %163, i32 0, i32 0
  %164 = load ptr, ptr %error_exit147, align 8
  %165 = load ptr, ptr %cinfo.addr, align 8
  call void %164(ptr noundef %165)
  br label %if.end148

if.end148:                                        ; preds = %if.then136, %lor.lhs.false
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end148
  %166 = load i32, ptr %ci, align 4
  %167 = load ptr, ptr %cinfo.addr, align 8
  %num_components149 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %167, i32 0, i32 12
  %168 = load i32, ptr %num_components149, align 4
  %cmp150 = icmp slt i32 %166, %168
  br i1 %cmp150, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %169 = load ptr, ptr %cinfo.addr, align 8
  %comp_info151 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %169, i32 0, i32 14
  %170 = load ptr, ptr %comp_info151, align 8
  %171 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %171 to i64
  %arrayidx152 = getelementptr inbounds %struct.jpeg_component_info, ptr %170, i64 %idxprom
  store ptr %arrayidx152, ptr %compptr, align 8
  %172 = load i32, ptr %ci, align 4
  %173 = load ptr, ptr %compptr, align 8
  %component_id153 = getelementptr inbounds %struct.jpeg_component_info, ptr %173, i32 0, i32 0
  store i32 %172, ptr %component_id153, align 8
  %174 = load ptr, ptr %compptr, align 8
  %h_samp_factor154 = getelementptr inbounds %struct.jpeg_component_info, ptr %174, i32 0, i32 2
  store i32 1, ptr %h_samp_factor154, align 8
  %175 = load ptr, ptr %compptr, align 8
  %v_samp_factor155 = getelementptr inbounds %struct.jpeg_component_info, ptr %175, i32 0, i32 3
  store i32 1, ptr %v_samp_factor155, align 4
  %176 = load ptr, ptr %compptr, align 8
  %quant_tbl_no156 = getelementptr inbounds %struct.jpeg_component_info, ptr %176, i32 0, i32 4
  store i32 0, ptr %quant_tbl_no156, align 8
  %177 = load ptr, ptr %compptr, align 8
  %dc_tbl_no157 = getelementptr inbounds %struct.jpeg_component_info, ptr %177, i32 0, i32 5
  store i32 0, ptr %dc_tbl_no157, align 4
  %178 = load ptr, ptr %compptr, align 8
  %ac_tbl_no158 = getelementptr inbounds %struct.jpeg_component_info, ptr %178, i32 0, i32 6
  store i32 0, ptr %ac_tbl_no158, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %179 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %179, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %180 = load ptr, ptr %cinfo.addr, align 8
  %err159 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %180, i32 0, i32 0
  %181 = load ptr, ptr %err159, align 8
  %msg_code160 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %181, i32 0, i32 5
  store i32 8, ptr %msg_code160, align 8
  %182 = load ptr, ptr %cinfo.addr, align 8
  %err161 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %182, i32 0, i32 0
  %183 = load ptr, ptr %err161, align 8
  %error_exit162 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %error_exit162, align 8
  %185 = load ptr, ptr %cinfo.addr, align 8
  call void %184(ptr noundef %185)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %sw.bb95, %sw.bb60, %sw.bb33, %sw.bb6, %sw.bb
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %num_components, align 4
  store i32 %1, ptr %ncomps, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %3, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state1, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, ptr %ncomps, align 4
  %cmp4 = icmp eq i32 %14, 3
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 13
  %16 = load i32, ptr %jpeg_color_space, align 8
  %cmp5 = icmp eq i32 %16, 3
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  store i32 10, ptr %nscans, align 4
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = load i32, ptr %ncomps, align 4
  %cmp7 = icmp sgt i32 %17, 4
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %18 = load i32, ptr %ncomps, align 4
  %mul = mul nsw i32 6, %18
  store i32 %mul, ptr %nscans, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.else
  %19 = load i32, ptr %ncomps, align 4
  %mul10 = mul nsw i32 4, %19
  %add = add nsw i32 2, %mul10
  store i32 %add, ptr %nscans, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then6
  %20 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %alloc_small, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load i32, ptr %nscans, align 4
  %conv = sext i32 %24 to i64
  %mul13 = mul i64 %conv, 36
  %call = call ptr %22(ptr noundef %23, i32 noundef 0, i64 noundef %mul13)
  store ptr %call, ptr %scanptr, align 8
  %25 = load ptr, ptr %scanptr, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 22
  store ptr %25, ptr %scan_info, align 8
  %27 = load i32, ptr %nscans, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 21
  store i32 %27, ptr %num_scans, align 8
  %29 = load i32, ptr %ncomps, align 4
  %cmp14 = icmp eq i32 %29, 3
  br i1 %cmp14, label %land.lhs.true16, label %if.else31

land.lhs.true16:                                  ; preds = %if.end12
  %30 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 13
  %31 = load i32, ptr %jpeg_color_space17, align 8
  %cmp18 = icmp eq i32 %31, 3
  br i1 %cmp18, label %if.then20, label %if.else31

if.then20:                                        ; preds = %land.lhs.true16
  %32 = load ptr, ptr %scanptr, align 8
  %33 = load i32, ptr %ncomps, align 4
  %call21 = call ptr @fill_dc_scans(ptr noundef %32, i32 noundef %33, i32 noundef 0, i32 noundef 1)
  store ptr %call21, ptr %scanptr, align 8
  %34 = load ptr, ptr %scanptr, align 8
  %call22 = call ptr @fill_a_scan(ptr noundef %34, i32 noundef 0, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  store ptr %call22, ptr %scanptr, align 8
  %35 = load ptr, ptr %scanptr, align 8
  %call23 = call ptr @fill_a_scan(ptr noundef %35, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  store ptr %call23, ptr %scanptr, align 8
  %36 = load ptr, ptr %scanptr, align 8
  %call24 = call ptr @fill_a_scan(ptr noundef %36, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  store ptr %call24, ptr %scanptr, align 8
  %37 = load ptr, ptr %scanptr, align 8
  %call25 = call ptr @fill_a_scan(ptr noundef %37, i32 noundef 0, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  store ptr %call25, ptr %scanptr, align 8
  %38 = load ptr, ptr %scanptr, align 8
  %call26 = call ptr @fill_a_scan(ptr noundef %38, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  store ptr %call26, ptr %scanptr, align 8
  %39 = load ptr, ptr %scanptr, align 8
  %40 = load i32, ptr %ncomps, align 4
  %call27 = call ptr @fill_dc_scans(ptr noundef %39, i32 noundef %40, i32 noundef 1, i32 noundef 0)
  store ptr %call27, ptr %scanptr, align 8
  %41 = load ptr, ptr %scanptr, align 8
  %call28 = call ptr @fill_a_scan(ptr noundef %41, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store ptr %call28, ptr %scanptr, align 8
  %42 = load ptr, ptr %scanptr, align 8
  %call29 = call ptr @fill_a_scan(ptr noundef %42, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store ptr %call29, ptr %scanptr, align 8
  %43 = load ptr, ptr %scanptr, align 8
  %call30 = call ptr @fill_a_scan(ptr noundef %43, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store ptr %call30, ptr %scanptr, align 8
  br label %if.end38

if.else31:                                        ; preds = %land.lhs.true16, %if.end12
  %44 = load ptr, ptr %scanptr, align 8
  %45 = load i32, ptr %ncomps, align 4
  %call32 = call ptr @fill_dc_scans(ptr noundef %44, i32 noundef %45, i32 noundef 0, i32 noundef 1)
  store ptr %call32, ptr %scanptr, align 8
  %46 = load ptr, ptr %scanptr, align 8
  %47 = load i32, ptr %ncomps, align 4
  %call33 = call ptr @fill_scans(ptr noundef %46, i32 noundef %47, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  store ptr %call33, ptr %scanptr, align 8
  %48 = load ptr, ptr %scanptr, align 8
  %49 = load i32, ptr %ncomps, align 4
  %call34 = call ptr @fill_scans(ptr noundef %48, i32 noundef %49, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  store ptr %call34, ptr %scanptr, align 8
  %50 = load ptr, ptr %scanptr, align 8
  %51 = load i32, ptr %ncomps, align 4
  %call35 = call ptr @fill_scans(ptr noundef %50, i32 noundef %51, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  store ptr %call35, ptr %scanptr, align 8
  %52 = load ptr, ptr %scanptr, align 8
  %53 = load i32, ptr %ncomps, align 4
  %call36 = call ptr @fill_dc_scans(ptr noundef %52, i32 noundef %53, i32 noundef 1, i32 noundef 0)
  store ptr %call36, ptr %scanptr, align 8
  %54 = load ptr, ptr %scanptr, align 8
  %55 = load i32, ptr %ncomps, align 4
  %call37 = call ptr @fill_scans(ptr noundef %54, i32 noundef %55, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store ptr %call37, ptr %scanptr, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %if.then20
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
  %0 = load i32, ptr %ncomps.addr, align 4
  %cmp = icmp sle i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ncomps.addr, align 4
  %2 = load ptr, ptr %scanptr.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i32 0, i32 0
  store i32 %1, ptr %comps_in_scan, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %ci, align 4
  %4 = load i32, ptr %ncomps.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %ci, align 4
  %6 = load ptr, ptr %scanptr.addr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %component_index, i64 0, i64 %idxprom
  store i32 %5, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %scanptr.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %9, i32 0, i32 3
  store i32 0, ptr %Se, align 4
  %10 = load ptr, ptr %scanptr.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %10, i32 0, i32 2
  store i32 0, ptr %Ss, align 4
  %11 = load i32, ptr %Ah.addr, align 4
  %12 = load ptr, ptr %scanptr.addr, align 8
  %Ah2 = getelementptr inbounds %struct.jpeg_scan_info, ptr %12, i32 0, i32 4
  store i32 %11, ptr %Ah2, align 4
  %13 = load i32, ptr %Al.addr, align 4
  %14 = load ptr, ptr %scanptr.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %14, i32 0, i32 5
  store i32 %13, ptr %Al3, align 4
  %15 = load ptr, ptr %scanptr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %scanptr.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %scanptr.addr, align 8
  %17 = load i32, ptr %ncomps.addr, align 4
  %18 = load i32, ptr %Ah.addr, align 4
  %19 = load i32, ptr %Al.addr, align 4
  %call = call ptr @fill_scans(ptr noundef %16, i32 noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef %18, i32 noundef %19)
  store ptr %call, ptr %scanptr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %20 = load ptr, ptr %scanptr.addr, align 8
  ret ptr %20
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @fill_a_scan(ptr noundef %scanptr, i32 noundef %ci, i32 noundef %Ss, i32 noundef %Se, i32 noundef %Ah, i32 noundef %Al) #0 {
entry:
  %scanptr.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %Ss.addr = alloca i32, align 4
  %Se.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  store ptr %scanptr, ptr %scanptr.addr, align 8
  store i32 %ci, ptr %ci.addr, align 4
  store i32 %Ss, ptr %Ss.addr, align 4
  store i32 %Se, ptr %Se.addr, align 4
  store i32 %Ah, ptr %Ah.addr, align 4
  store i32 %Al, ptr %Al.addr, align 4
  %0 = load ptr, ptr %scanptr.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i32 0, i32 0
  store i32 1, ptr %comps_in_scan, align 4
  %1 = load i32, ptr %ci.addr, align 4
  %2 = load ptr, ptr %scanptr.addr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], ptr %component_index, i64 0, i64 0
  store i32 %1, ptr %arrayidx, align 4
  %3 = load i32, ptr %Ss.addr, align 4
  %4 = load ptr, ptr %scanptr.addr, align 8
  %Ss1 = getelementptr inbounds %struct.jpeg_scan_info, ptr %4, i32 0, i32 2
  store i32 %3, ptr %Ss1, align 4
  %5 = load i32, ptr %Se.addr, align 4
  %6 = load ptr, ptr %scanptr.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_scan_info, ptr %6, i32 0, i32 3
  store i32 %5, ptr %Se2, align 4
  %7 = load i32, ptr %Ah.addr, align 4
  %8 = load ptr, ptr %scanptr.addr, align 8
  %Ah3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i32 0, i32 4
  store i32 %7, ptr %Ah3, align 4
  %9 = load i32, ptr %Al.addr, align 4
  %10 = load ptr, ptr %scanptr.addr, align 8
  %Al4 = getelementptr inbounds %struct.jpeg_scan_info, ptr %10, i32 0, i32 5
  store i32 %9, ptr %Al4, align 4
  %11 = load ptr, ptr %scanptr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %scanptr.addr, align 8
  %12 = load ptr, ptr %scanptr.addr, align 8
  ret ptr %12
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
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ci, align 4
  %1 = load i32, ptr %ncomps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %scanptr.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, ptr %2, i32 0, i32 0
  store i32 1, ptr %comps_in_scan, align 4
  %3 = load i32, ptr %ci, align 4
  %4 = load ptr, ptr %scanptr.addr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], ptr %component_index, i64 0, i64 0
  store i32 %3, ptr %arrayidx, align 4
  %5 = load i32, ptr %Ss.addr, align 4
  %6 = load ptr, ptr %scanptr.addr, align 8
  %Ss1 = getelementptr inbounds %struct.jpeg_scan_info, ptr %6, i32 0, i32 2
  store i32 %5, ptr %Ss1, align 4
  %7 = load i32, ptr %Se.addr, align 4
  %8 = load ptr, ptr %scanptr.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i32 0, i32 3
  store i32 %7, ptr %Se2, align 4
  %9 = load i32, ptr %Ah.addr, align 4
  %10 = load ptr, ptr %scanptr.addr, align 8
  %Ah3 = getelementptr inbounds %struct.jpeg_scan_info, ptr %10, i32 0, i32 4
  store i32 %9, ptr %Ah3, align 4
  %11 = load i32, ptr %Al.addr, align 4
  %12 = load ptr, ptr %scanptr.addr, align 8
  %Al4 = getelementptr inbounds %struct.jpeg_scan_info, ptr %12, i32 0, i32 5
  store i32 %11, ptr %Al4, align 4
  %13 = load ptr, ptr %scanptr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %scanptr.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %scanptr.addr, align 8
  ret ptr %15
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
  %0 = load ptr, ptr %htblptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_huff_table(ptr noundef %2)
  %3 = load ptr, ptr %htblptr.addr, align 8
  store ptr %call, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %htblptr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %bits1 = getelementptr inbounds %struct.JHUFF_TBL, ptr %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [17 x i8], ptr %bits1, i64 0, i64 0
  %6 = load ptr, ptr %bits.addr, align 8
  %7 = load ptr, ptr %htblptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %bits2 = getelementptr inbounds %struct.JHUFF_TBL, ptr %8, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [17 x i8], ptr %bits2, i64 0, i64 0
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay3, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %6, i64 noundef 17, i64 noundef %9) #4
  %10 = load ptr, ptr %htblptr.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %11, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 0
  %12 = load ptr, ptr %val.addr, align 8
  %13 = load ptr, ptr %htblptr.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %huffval6 = getelementptr inbounds %struct.JHUFF_TBL, ptr %14, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %huffval6, i64 0, i64 0
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay7, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memcpy_chk(ptr noundef %arraydecay5, ptr noundef %12, i64 noundef 256, i64 noundef %15) #4
  %16 = load ptr, ptr %htblptr.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %17, i32 0, i32 2
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


define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcparam_0(ptr noundef %cinfo, i32 noundef %quality, i32 noundef %force_baseline)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %quality.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %quality, ptr %quality.addr, align 4
  store i32 %force_baseline, ptr %force_baseline.addr, align 4
  %0 = load i32, ptr %quality.addr, align 4
  %call = call i32 @jpeg_quality_scaling(i32 noundef %0)
  store i32 %call, ptr %quality.addr, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load i32, ptr %quality.addr, align 4
  %3 = load i32, ptr %force_baseline.addr, align 4
  call void @jpeg_set_linear_quality(ptr noundef %1, i32 noundef %2, i32 noundef %3)
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
