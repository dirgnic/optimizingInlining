; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/quantize-pvt.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/quantize-pvt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@masking_lower = global float 1.000000e+00, align 4
@nr_of_sfb_block = global [6 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 5, i32 5], [4 x i32] [i32 9, i32 9, i32 9, i32 9], [4 x i32] [i32 6, i32 9, i32 9, i32 9]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 7, i32 3], [4 x i32] [i32 9, i32 9, i32 12, i32 6], [4 x i32] [i32 6, i32 9, i32 12, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 11, i32 10, i32 0, i32 0], [4 x i32] [i32 18, i32 18, i32 0, i32 0], [4 x i32] [i32 15, i32 18, i32 0, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 12, i32 12, i32 12, i32 0], [4 x i32] [i32 6, i32 15, i32 12, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 6, i32 6, i32 3], [4 x i32] [i32 12, i32 9, i32 9, i32 6], [4 x i32] [i32 6, i32 12, i32 9, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 8, i32 8, i32 5, i32 0], [4 x i32] [i32 15, i32 12, i32 9, i32 0], [4 x i32] [i32 6, i32 18, i32 9, i32 0]]], align 4
@pretab = global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 2], align 4
@sfBandIndex = global [6 x %struct.scalefac_struct] [%struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 24, i32 32, i32 42, i32 56, i32 74, i32 100, i32 132, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 114, i32 136, i32 162, i32 194, i32 232, i32 278, i32 332, i32 394, i32 464, i32 540, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 136, i32 180, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 134, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 52, i32 62, i32 74, i32 90, i32 110, i32 134, i32 162, i32 196, i32 238, i32 288, i32 342, i32 418, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 40, i32 52, i32 66, i32 84, i32 106, i32 136, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 42, i32 50, i32 60, i32 72, i32 88, i32 106, i32 128, i32 156, i32 190, i32 230, i32 276, i32 330, i32 384, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 28, i32 38, i32 50, i32 64, i32 80, i32 100, i32 126, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 82, i32 102, i32 126, i32 156, i32 194, i32 240, i32 296, i32 364, i32 448, i32 550, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 42, i32 58, i32 78, i32 104, i32 138, i32 180, i32 192] }], align 4
@scalefac_band = global %struct.scalefac_struct zeroinitializer, align 4
@ATH_l = internal global [21 x double] zeroinitializer, align 8
@ATH_s = internal global [21 x double] zeroinitializer, align 8
@pow43 = global [8208 x double] zeroinitializer, align 8
@adj43 = internal global [8208 x double] zeroinitializer, align 8
@adj43asm = internal global [8208 x double] zeroinitializer, align 8
@ipow20 = global [256 x double] zeroinitializer, align 8
@pow20 = global [256 x double] zeroinitializer, align 8
@convert_mdct = global i32 0, align 4
@reduce_sidechannel = global i32 0, align 4
@__func__.inner_loop = private unnamed_addr constant [11 x i8] c"inner_loop\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"quantize-pvt.c\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"max_bits >= 0\00", align 1
@scale_bitcount.slen1 = internal global [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 4
@scale_bitcount.slen2 = internal global [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 4
@scale_bitcount.slen1_tab = internal global [16 x i32] [i32 0, i32 18, i32 36, i32 54, i32 54, i32 36, i32 54, i32 72, i32 54, i32 72, i32 90, i32 72, i32 90, i32 108, i32 108, i32 126], align 4
@scale_bitcount.slen2_tab = internal global [16 x i32] [i32 0, i32 10, i32 20, i32 30, i32 33, i32 21, i32 31, i32 41, i32 32, i32 42, i32 52, i32 43, i32 53, i32 63, i32 64, i32 74], align 4
@max_range_sfac_tab = internal global [6 x [4 x i32]] [[4 x i32] [i32 15, i32 15, i32 7, i32 7], [4 x i32] [i32 15, i32 15, i32 7, i32 0], [4 x i32] [i32 7, i32 3, i32 0, i32 0], [4 x i32] [i32 15, i32 31, i32 31, i32 0], [4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0]], align 4
@scale_bitcount_lsf.log2tab = internal global [16 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 4
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"intensity stereo not implemented yet\0A\00", align 1
@__func__.scale_bitcount_lsf = private unnamed_addr constant [19 x i8] c"scale_bitcount_lsf\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cod_info->sfb_partition_table\00", align 1
@bin_search_StepSize2.CurrentStep = internal global i32 4, align 4
@ATH_mdct_long = global [576 x double] zeroinitializer, align 8
@ATH_mdct_short = global [192 x double] zeroinitializer, align 8

; Function Attrs: nounwind ssp uwtable
define void @iteration_init(ptr noundef %gfp, ptr noundef %l3_side, ptr noundef %l3_enc) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %cod_info = alloca ptr, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  %0 = load ptr, ptr %l3_side.addr, align 8
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %0, i32 0, i32 2
  store i32 0, ptr %resvDrain, align 8
  %1 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %1, i32 0, i32 39
  %2 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %3, 23
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 51
  %5 = load i32, ptr %samplerate_index, align 8
  %6 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %6, i32 0, i32 43
  %7 = load i32, ptr %version, align 8
  %mul = mul nsw i32 %7, 3
  %add = add nsw i32 %5, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom
  %l = getelementptr inbounds %struct.scalefac_struct, ptr %arrayidx, i32 0, i32 0
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [23 x i32], ptr %l, i64 0, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom4
  store i32 %9, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.end
  %12 = load i32, ptr %i, align 4
  %cmp7 = icmp slt i32 %12, 14
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %13 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index9 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 51
  %14 = load i32, ptr %samplerate_index9, align 8
  %15 = load ptr, ptr %gfp.addr, align 8
  %version10 = getelementptr inbounds %struct.lame_global_flags, ptr %15, i32 0, i32 43
  %16 = load i32, ptr %version10, align 8
  %mul11 = mul nsw i32 %16, 3
  %add12 = add nsw i32 %14, %mul11
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom13
  %s = getelementptr inbounds %struct.scalefac_struct, ptr %arrayidx14, i32 0, i32 1
  %17 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [14 x i32], ptr %s, i64 0, i64 %idxprom15
  %18 = load i32, ptr %arrayidx16, align 4
  %19 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom17
  store i32 %18, ptr %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8
  %20 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end21:                                        ; preds = %for.cond6
  %21 = load ptr, ptr %l3_side.addr, align 8
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, ptr %21, i32 0, i32 0
  store i32 0, ptr %main_data_begin, align 8
  %22 = load ptr, ptr %gfp.addr, align 8
  call void @compute_ath(ptr noundef %22, ptr noundef @ATH_l, ptr noundef @ATH_s)
  store i32 0, ptr %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc27, %for.end21
  %23 = load i32, ptr %i, align 4
  %cmp23 = icmp slt i32 %23, 8208
  br i1 %cmp23, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond22
  %24 = load i32, ptr %i, align 4
  %conv = sitofp i32 %24 to double
  %25 = call double @llvm.pow.f64(double %conv, double 0x3FF5555555555555)
  %26 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %arrayidx26 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom25
  store double %25, ptr %arrayidx26, align 8
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %27 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond22, !llvm.loop !9

for.end29:                                        ; preds = %for.cond22
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc45, %for.end29
  %28 = load i32, ptr %i, align 4
  %cmp31 = icmp slt i32 %28, 8207
  br i1 %cmp31, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond30
  %29 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %29, 1
  %conv35 = sitofp i32 %add34 to double
  %30 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom36
  %31 = load double, ptr %arrayidx37, align 8
  %32 = load i32, ptr %i, align 4
  %add38 = add nsw i32 %32, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom39
  %33 = load double, ptr %arrayidx40, align 8
  %add41 = fadd double %31, %33
  %mul42 = fmul double 5.000000e-01, %add41
  %34 = call double @llvm.pow.f64(double %mul42, double 7.500000e-01)
  %sub = fsub double %conv35, %34
  %35 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom43
  store double %sub, ptr %arrayidx44, align 8
  br label %for.inc45

for.inc45:                                        ; preds = %for.body33
  %36 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond30, !llvm.loop !10

for.end47:                                        ; preds = %for.cond30
  %37 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom48
  store double 5.000000e-01, ptr %arrayidx49, align 8
  store double 0.000000e+00, ptr @adj43asm, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc66, %for.end47
  %38 = load i32, ptr %i, align 4
  %cmp51 = icmp slt i32 %38, 8208
  br i1 %cmp51, label %for.body53, label %for.end68

for.body53:                                       ; preds = %for.cond50
  %39 = load i32, ptr %i, align 4
  %conv54 = sitofp i32 %39 to double
  %sub55 = fsub double %conv54, 5.000000e-01
  %40 = load i32, ptr %i, align 4
  %sub56 = sub nsw i32 %40, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom57
  %41 = load double, ptr %arrayidx58, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom59
  %43 = load double, ptr %arrayidx60, align 8
  %add61 = fadd double %41, %43
  %mul62 = fmul double 5.000000e-01, %add61
  %44 = call double @llvm.pow.f64(double %mul62, double 7.500000e-01)
  %sub63 = fsub double %sub55, %44
  %45 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %45 to i64
  %arrayidx65 = getelementptr inbounds [8208 x double], ptr @adj43asm, i64 0, i64 %idxprom64
  store double %sub63, ptr %arrayidx65, align 8
  br label %for.inc66

for.inc66:                                        ; preds = %for.body53
  %46 = load i32, ptr %i, align 4
  %inc67 = add nsw i32 %46, 1
  store i32 %inc67, ptr %i, align 4
  br label %for.cond50, !llvm.loop !11

for.end68:                                        ; preds = %for.cond50
  store i32 0, ptr %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc83, %for.end68
  %47 = load i32, ptr %i, align 4
  %cmp70 = icmp slt i32 %47, 256
  br i1 %cmp70, label %for.body72, label %for.end85

for.body72:                                       ; preds = %for.cond69
  %48 = load i32, ptr %i, align 4
  %sub73 = sub nsw i32 %48, 210
  %conv74 = sitofp i32 %sub73 to double
  %mul75 = fmul double %conv74, -1.875000e-01
  %49 = call double @llvm.pow.f64(double 2.000000e+00, double %mul75)
  %50 = load i32, ptr %i, align 4
  %idxprom76 = sext i32 %50 to i64
  %arrayidx77 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom76
  store double %49, ptr %arrayidx77, align 8
  %51 = load i32, ptr %i, align 4
  %sub78 = sub nsw i32 %51, 210
  %conv79 = sitofp i32 %sub78 to double
  %mul80 = fmul double %conv79, 2.500000e-01
  %52 = call double @llvm.pow.f64(double 2.000000e+00, double %mul80)
  %53 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %53 to i64
  %arrayidx82 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom81
  store double %52, ptr %arrayidx82, align 8
  br label %for.inc83

for.inc83:                                        ; preds = %for.body72
  %54 = load i32, ptr %i, align 4
  %inc84 = add nsw i32 %54, 1
  store i32 %inc84, ptr %i, align 4
  br label %for.cond69, !llvm.loop !12

for.end85:                                        ; preds = %for.cond69
  br label %if.end

if.end:                                           ; preds = %for.end85, %entry
  store i32 0, ptr @convert_mdct, align 4
  store i32 0, ptr @reduce_sidechannel, align 4
  %55 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %55, i32 0, i32 52
  %56 = load i32, ptr %mode_ext, align 4
  %cmp86 = icmp eq i32 %56, 2
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end
  store i32 1, ptr @convert_mdct, align 4
  store i32 1, ptr @reduce_sidechannel, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end
  store i32 0, ptr %gr, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc113, %if.end89
  %57 = load i32, ptr %gr, align 4
  %58 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %58, i32 0, i32 45
  %59 = load i32, ptr %mode_gr, align 8
  %cmp91 = icmp slt i32 %57, %59
  br i1 %cmp91, label %for.body93, label %for.end115

for.body93:                                       ; preds = %for.cond90
  store i32 0, ptr %ch, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc110, %for.body93
  %60 = load i32, ptr %ch, align 4
  %61 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %61, i32 0, i32 46
  %62 = load i32, ptr %stereo, align 4
  %cmp95 = icmp slt i32 %60, %62
  br i1 %cmp95, label %for.body97, label %for.end112

for.body97:                                       ; preds = %for.cond94
  %63 = load ptr, ptr %l3_side.addr, align 8
  %gr98 = getelementptr inbounds %struct.III_side_info_t, ptr %63, i32 0, i32 4
  %64 = load i32, ptr %gr, align 4
  %idxprom99 = sext i32 %64 to i64
  %arrayidx100 = getelementptr inbounds [2 x %struct.anon], ptr %gr98, i64 0, i64 %idxprom99
  %ch101 = getelementptr inbounds %struct.anon, ptr %arrayidx100, i32 0, i32 0
  %65 = load i32, ptr %ch, align 4
  %idxprom102 = sext i32 %65 to i64
  %arrayidx103 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch101, i64 0, i64 %idxprom102
  store ptr %arrayidx103, ptr %cod_info, align 8
  %66 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %block_type, align 8
  %cmp104 = icmp eq i32 %67, 2
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %for.body97
  %68 = load ptr, ptr %cod_info, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %68, i32 0, i32 16
  store i32 0, ptr %sfb_lmax, align 8
  %69 = load ptr, ptr %cod_info, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %69, i32 0, i32 17
  store i32 0, ptr %sfb_smax, align 4
  br label %if.end109

if.else:                                          ; preds = %for.body97
  %70 = load ptr, ptr %cod_info, align 8
  %sfb_lmax107 = getelementptr inbounds %struct.gr_info, ptr %70, i32 0, i32 16
  store i32 21, ptr %sfb_lmax107, align 8
  %71 = load ptr, ptr %cod_info, align 8
  %sfb_smax108 = getelementptr inbounds %struct.gr_info, ptr %71, i32 0, i32 17
  store i32 12, ptr %sfb_smax108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then106
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %72 = load i32, ptr %ch, align 4
  %inc111 = add nsw i32 %72, 1
  store i32 %inc111, ptr %ch, align 4
  br label %for.cond94, !llvm.loop !13

for.end112:                                       ; preds = %for.cond94
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %73 = load i32, ptr %gr, align 4
  %inc114 = add nsw i32 %73, 1
  store i32 %inc114, ptr %gr, align 4
  br label %for.cond90, !llvm.loop !14

for.end115:                                       ; preds = %for.cond90
  store i32 0, ptr %ch, align 4
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc132, %for.end115
  %74 = load i32, ptr %ch, align 4
  %75 = load ptr, ptr %gfp.addr, align 8
  %stereo117 = getelementptr inbounds %struct.lame_global_flags, ptr %75, i32 0, i32 46
  %76 = load i32, ptr %stereo117, align 4
  %cmp118 = icmp slt i32 %74, %76
  br i1 %cmp118, label %for.body120, label %for.end134

for.body120:                                      ; preds = %for.cond116
  store i32 0, ptr %i, align 4
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc129, %for.body120
  %77 = load i32, ptr %i, align 4
  %cmp122 = icmp slt i32 %77, 4
  br i1 %cmp122, label %for.body124, label %for.end131

for.body124:                                      ; preds = %for.cond121
  %78 = load ptr, ptr %l3_side.addr, align 8
  %scfsi = getelementptr inbounds %struct.III_side_info_t, ptr %78, i32 0, i32 3
  %79 = load i32, ptr %ch, align 4
  %idxprom125 = sext i32 %79 to i64
  %arrayidx126 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi, i64 0, i64 %idxprom125
  %80 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %80 to i64
  %arrayidx128 = getelementptr inbounds [4 x i32], ptr %arrayidx126, i64 0, i64 %idxprom127
  store i32 0, ptr %arrayidx128, align 4
  br label %for.inc129

for.inc129:                                       ; preds = %for.body124
  %81 = load i32, ptr %i, align 4
  %inc130 = add nsw i32 %81, 1
  store i32 %inc130, ptr %i, align 4
  br label %for.cond121, !llvm.loop !15

for.end131:                                       ; preds = %for.cond121
  br label %for.inc132

for.inc132:                                       ; preds = %for.end131
  %82 = load i32, ptr %ch, align 4
  %inc133 = add nsw i32 %82, 1
  store i32 %inc133, ptr %ch, align 4
  br label %for.cond116, !llvm.loop !16

for.end134:                                       ; preds = %for.cond116
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @compute_ath(ptr noundef %gfp, ptr noundef %ATH_l, ptr noundef %ATH_s) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %ATH_l.addr = alloca ptr, align 8
  %ATH_s.addr = alloca ptr, align 8
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %ATH_f = alloca double, align 8
  %samp_freq = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %ATH_l, ptr %ATH_l.addr, align 8
  store ptr %ATH_s, ptr %ATH_s.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %out_samplerate, align 8
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, ptr %samp_freq, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %2 = load i32, ptr %sfb, align 4
  %cmp = icmp slt i32 %2, 21
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %start, align 4
  %5 = load i32, ptr %sfb, align 4
  %add = add nsw i32 %5, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom2
  %6 = load i32, ptr %arrayidx3, align 4
  store i32 %6, ptr %end, align 4
  %7 = load ptr, ptr %ATH_l.addr, align 8
  %8 = load i32, ptr %sfb, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds double, ptr %7, i64 %idxprom4
  store double 0x547D42AEA2879F2E, ptr %arrayidx5, align 8
  %9 = load i32, ptr %start, align 4
  store i32 %9, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %end, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond6
  %12 = load ptr, ptr %gfp.addr, align 8
  %13 = load double, ptr %samp_freq, align 8
  %14 = load i32, ptr %i, align 4
  %conv10 = sitofp i32 %14 to double
  %mul = fmul double %13, %conv10
  %div11 = fdiv double %mul, 1.152000e+03
  %call = call double @ATHformula(ptr noundef %12, double noundef %div11)
  store double %call, ptr %ATH_f, align 8
  %15 = load ptr, ptr %ATH_l.addr, align 8
  %16 = load i32, ptr %sfb, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %15, i64 %idxprom12
  %17 = load double, ptr %arrayidx13, align 8
  %18 = load double, ptr %ATH_f, align 8
  %cmp14 = fcmp olt double %17, %18
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body9
  %19 = load ptr, ptr %ATH_l.addr, align 8
  %20 = load i32, ptr %sfb, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %19, i64 %idxprom16
  %21 = load double, ptr %arrayidx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body9
  %22 = load double, ptr %ATH_f, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %21, %cond.true ], [ %22, %cond.false ]
  %23 = load ptr, ptr %ATH_l.addr, align 8
  %24 = load i32, ptr %sfb, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %23, i64 %idxprom18
  store double %cond, ptr %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond6, !llvm.loop !17

for.end:                                          ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %26 = load i32, ptr %sfb, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !18

for.end22:                                        ; preds = %for.cond
  store i32 0, ptr %sfb, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc57, %for.end22
  %27 = load i32, ptr %sfb, align 4
  %cmp24 = icmp slt i32 %27, 12
  br i1 %cmp24, label %for.body26, label %for.end59

for.body26:                                       ; preds = %for.cond23
  %28 = load i32, ptr %sfb, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom27
  %29 = load i32, ptr %arrayidx28, align 4
  store i32 %29, ptr %start, align 4
  %30 = load i32, ptr %sfb, align 4
  %add29 = add nsw i32 %30, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom30
  %31 = load i32, ptr %arrayidx31, align 4
  store i32 %31, ptr %end, align 4
  %32 = load ptr, ptr %ATH_s.addr, align 8
  %33 = load i32, ptr %sfb, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds double, ptr %32, i64 %idxprom32
  store double 0x547D42AEA2879F2E, ptr %arrayidx33, align 8
  %34 = load i32, ptr %start, align 4
  store i32 %34, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc54, %for.body26
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %end, align 4
  %cmp35 = icmp slt i32 %35, %36
  br i1 %cmp35, label %for.body37, label %for.end56

for.body37:                                       ; preds = %for.cond34
  %37 = load ptr, ptr %gfp.addr, align 8
  %38 = load double, ptr %samp_freq, align 8
  %39 = load i32, ptr %i, align 4
  %conv38 = sitofp i32 %39 to double
  %mul39 = fmul double %38, %conv38
  %div40 = fdiv double %mul39, 3.840000e+02
  %call41 = call double @ATHformula(ptr noundef %37, double noundef %div40)
  store double %call41, ptr %ATH_f, align 8
  %40 = load ptr, ptr %ATH_s.addr, align 8
  %41 = load i32, ptr %sfb, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds double, ptr %40, i64 %idxprom42
  %42 = load double, ptr %arrayidx43, align 8
  %43 = load double, ptr %ATH_f, align 8
  %cmp44 = fcmp olt double %42, %43
  br i1 %cmp44, label %cond.true46, label %cond.false49

cond.true46:                                      ; preds = %for.body37
  %44 = load ptr, ptr %ATH_s.addr, align 8
  %45 = load i32, ptr %sfb, align 4
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %44, i64 %idxprom47
  %46 = load double, ptr %arrayidx48, align 8
  br label %cond.end50

cond.false49:                                     ; preds = %for.body37
  %47 = load double, ptr %ATH_f, align 8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true46
  %cond51 = phi double [ %46, %cond.true46 ], [ %47, %cond.false49 ]
  %48 = load ptr, ptr %ATH_s.addr, align 8
  %49 = load i32, ptr %sfb, align 4
  %idxprom52 = sext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %48, i64 %idxprom52
  store double %cond51, ptr %arrayidx53, align 8
  br label %for.inc54

for.inc54:                                        ; preds = %cond.end50
  %50 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %50, 1
  store i32 %inc55, ptr %i, align 4
  br label %for.cond34, !llvm.loop !19

for.end56:                                        ; preds = %for.cond34
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %51 = load i32, ptr %sfb, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, ptr %sfb, align 4
  br label %for.cond23, !llvm.loop !20

for.end59:                                        ; preds = %for.cond23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: nounwind ssp uwtable
define double @ATHformula(ptr noundef %gfp, double noundef %f) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %f.addr = alloca double, align 8
  %ath = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store double %f, ptr %f.addr, align 8
  %0 = load double, ptr %f.addr, align 8
  %cmp = fcmp ogt double 2.000000e-02, %0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load double, ptr %f.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 2.000000e-02, %cond.true ], [ %1, %cond.false ]
  store double %cond, ptr %f.addr, align 8
  %2 = load double, ptr %f.addr, align 8
  %3 = call double @llvm.pow.f64(double %2, double -8.000000e-01)
  %4 = load double, ptr %f.addr, align 8
  %sub = fsub double %4, 3.300000e+00
  %5 = call double @llvm.pow.f64(double %sub, double 2.000000e+00)
  %mul1 = fmul double -6.000000e-01, %5
  %6 = call double @llvm.exp.f64(double %mul1)
  %mul2 = fmul double 6.500000e+00, %6
  %neg = fneg double %mul2
  %7 = call double @llvm.fmuladd.f64(double 3.640000e+00, double %3, double %neg)
  %8 = load double, ptr %f.addr, align 8
  %9 = call double @llvm.pow.f64(double %8, double 4.000000e+00)
  %10 = call double @llvm.fmuladd.f64(double 1.000000e-03, double %9, double %7)
  store double %10, ptr %ath, align 8
  %11 = load ptr, ptr %gfp.addr, align 8
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 34
  %12 = load i32, ptr %noATH, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load double, ptr %ath, align 8
  %sub3 = fsub double %13, 2.000000e+02
  store double %sub3, ptr %ath, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %14 = load double, ptr %ath, align 8
  %sub4 = fsub double %14, 1.140000e+02
  store double %sub4, ptr %ath, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load double, ptr %ath, align 8
  %div = fdiv double %15, 1.000000e+01
  %16 = call double @llvm.pow.f64(double 1.000000e+01, double %div)
  store double %16, ptr %ath, align 8
  %17 = load double, ptr %ath, align 8
  ret double %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind ssp uwtable
define void @ms_convert(ptr noundef %xr, ptr noundef %xr_org) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %xr_org.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca double, align 8
  %r = alloca double, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %xr_org, ptr %xr_org.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %xr_org.addr, align 8
  %arrayidx = getelementptr inbounds [576 x double], ptr %1, i64 0
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [576 x double], ptr %arrayidx, i64 0, i64 %idxprom
  %3 = load double, ptr %arrayidx1, align 8
  store double %3, ptr %l, align 8
  %4 = load ptr, ptr %xr_org.addr, align 8
  %arrayidx2 = getelementptr inbounds [576 x double], ptr %4, i64 1
  %5 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [576 x double], ptr %arrayidx2, i64 0, i64 %idxprom3
  %6 = load double, ptr %arrayidx4, align 8
  store double %6, ptr %r, align 8
  %7 = load double, ptr %l, align 8
  %8 = load double, ptr %r, align 8
  %add = fadd double %7, %8
  %mul = fmul double %add, 0x3FE6A09E667F3BCD
  %9 = load ptr, ptr %xr.addr, align 8
  %arrayidx5 = getelementptr inbounds [576 x double], ptr %9, i64 0
  %10 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [576 x double], ptr %arrayidx5, i64 0, i64 %idxprom6
  store double %mul, ptr %arrayidx7, align 8
  %11 = load double, ptr %l, align 8
  %12 = load double, ptr %r, align 8
  %sub = fsub double %11, %12
  %mul8 = fmul double %sub, 0x3FE6A09E667F3BCD
  %13 = load ptr, ptr %xr.addr, align 8
  %arrayidx9 = getelementptr inbounds [576 x double], ptr %13, i64 1
  %14 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [576 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  store double %mul8, ptr %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @on_pe(ptr noundef %gfp, ptr noundef %pe, ptr noundef %l3_side, ptr noundef %targ_bits, i32 noundef %mean_bits, i32 noundef %gr) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %pe.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %targ_bits.addr = alloca ptr, align 8
  %mean_bits.addr = alloca i32, align 4
  %gr.addr = alloca i32, align 4
  %cod_info = alloca ptr, align 8
  %extra_bits = alloca i32, align 4
  %tbits = alloca i32, align 4
  %bits = alloca i32, align 4
  %add_bits = alloca [2 x i32], align 4
  %ch = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %pe, ptr %pe.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %targ_bits, ptr %targ_bits.addr, align 8
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  store i32 %gr, ptr %gr.addr, align 4
  %0 = load i32, ptr %mean_bits.addr, align 4
  %1 = load i32, ptr %gr.addr, align 4
  call void @ResvMaxBits(i32 noundef %0, ptr noundef %tbits, ptr noundef %extra_bits, i32 noundef %1)
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ch, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 46
  %4 = load i32, ptr %stereo, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %l3_side.addr, align 8
  %gr1 = getelementptr inbounds %struct.III_side_info_t, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %gr.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.anon], ptr %gr1, i64 0, i64 %idxprom
  %ch2 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %7 = load i32, ptr %ch, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch2, i64 0, i64 %idxprom3
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx4, i32 0, i32 0
  store ptr %tt, ptr %cod_info, align 8
  %8 = load i32, ptr %tbits, align 4
  %9 = load ptr, ptr %gfp.addr, align 8
  %stereo5 = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 46
  %10 = load i32, ptr %stereo5, align 4
  %div = sdiv i32 %8, %10
  %11 = load ptr, ptr %targ_bits.addr, align 8
  %12 = load i32, ptr %ch, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %11, i64 %idxprom6
  store i32 %div, ptr %arrayidx7, align 4
  store i32 0, ptr %bits, align 4
  %13 = load ptr, ptr %pe.addr, align 8
  %14 = load i32, ptr %gr.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [2 x double], ptr %13, i64 %idxprom8
  %15 = load i32, ptr %ch, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  %16 = load double, ptr %arrayidx11, align 8
  %sub = fsub double %16, 7.500000e+02
  %div12 = fdiv double %sub, 1.550000e+00
  %conv = fptosi double %div12 to i32
  %17 = load i32, ptr %ch, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom13
  store i32 %conv, ptr %arrayidx14, align 4
  %18 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %block_type, align 8
  %cmp15 = icmp eq i32 %19, 2
  br i1 %cmp15, label %if.then, label %if.end24

if.then:                                          ; preds = %for.body
  %20 = load i32, ptr %ch, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom17
  %21 = load i32, ptr %arrayidx18, align 4
  %cmp19 = icmp slt i32 %21, 500
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %22 = load i32, ptr %ch, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom22
  store i32 500, ptr %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then
  br label %if.end24

if.end24:                                         ; preds = %if.end, %for.body
  %23 = load i32, ptr %ch, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom25
  %24 = load i32, ptr %arrayidx26, align 4
  %cmp27 = icmp slt i32 %24, 0
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  %25 = load i32, ptr %ch, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom30
  store i32 0, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end24
  %26 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom33
  %27 = load i32, ptr %arrayidx34, align 4
  %28 = load i32, ptr %bits, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, ptr %bits, align 4
  %29 = load i32, ptr %bits, align 4
  %30 = load i32, ptr %extra_bits, align 4
  %cmp35 = icmp sgt i32 %29, %30
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.end32
  %31 = load i32, ptr %extra_bits, align 4
  %32 = load i32, ptr %ch, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom38
  %33 = load i32, ptr %arrayidx39, align 4
  %mul = mul nsw i32 %31, %33
  %34 = load i32, ptr %bits, align 4
  %div40 = sdiv i32 %mul, %34
  %35 = load i32, ptr %ch, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom41
  store i32 %div40, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end32
  %36 = load ptr, ptr %targ_bits.addr, align 8
  %37 = load i32, ptr %ch, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %36, i64 %idxprom44
  %38 = load i32, ptr %arrayidx45, align 4
  %39 = load i32, ptr %ch, align 4
  %idxprom46 = sext i32 %39 to i64
  %arrayidx47 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom46
  %40 = load i32, ptr %arrayidx47, align 4
  %add48 = add nsw i32 %38, %40
  %cmp49 = icmp sgt i32 %add48, 4095
  br i1 %cmp49, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.end43
  %41 = load ptr, ptr %targ_bits.addr, align 8
  %42 = load i32, ptr %ch, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %41, i64 %idxprom52
  %43 = load i32, ptr %arrayidx53, align 4
  %sub54 = sub nsw i32 4095, %43
  %44 = load i32, ptr %ch, align 4
  %idxprom55 = sext i32 %44 to i64
  %arrayidx56 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom55
  store i32 %sub54, ptr %arrayidx56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end43
  %45 = load ptr, ptr %targ_bits.addr, align 8
  %46 = load i32, ptr %ch, align 4
  %idxprom58 = sext i32 %46 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %45, i64 %idxprom58
  %47 = load i32, ptr %arrayidx59, align 4
  %48 = load i32, ptr %ch, align 4
  %idxprom60 = sext i32 %48 to i64
  %arrayidx61 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom60
  %49 = load i32, ptr %arrayidx61, align 4
  %add62 = add nsw i32 %47, %49
  %50 = load ptr, ptr %targ_bits.addr, align 8
  %51 = load i32, ptr %ch, align 4
  %idxprom63 = sext i32 %51 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %50, i64 %idxprom63
  store i32 %add62, ptr %arrayidx64, align 4
  %52 = load i32, ptr %ch, align 4
  %idxprom65 = sext i32 %52 to i64
  %arrayidx66 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom65
  %53 = load i32, ptr %arrayidx66, align 4
  %54 = load i32, ptr %extra_bits, align 4
  %sub67 = sub nsw i32 %54, %53
  store i32 %sub67, ptr %extra_bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %55 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @ResvMaxBits(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @reduce_side(ptr noundef %targ_bits, double noundef %ms_ener_ratio, i32 noundef %mean_bits) #0 {
entry:
  %targ_bits.addr = alloca ptr, align 8
  %ms_ener_ratio.addr = alloca double, align 8
  %mean_bits.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %numchn = alloca i32, align 4
  %fac = alloca float, align 4
  %max_bits = alloca i32, align 4
  store ptr %targ_bits, ptr %targ_bits.addr, align 8
  store double %ms_ener_ratio, ptr %ms_ener_ratio.addr, align 8
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  store i32 2, ptr %numchn, align 4
  %0 = load double, ptr %ms_ener_ratio.addr, align 8
  %sub = fsub double 5.000000e-01, %0
  %mul = fmul double 3.300000e-01, %sub
  %div = fdiv double %mul, 5.000000e-01
  %conv = fptrunc double %div to float
  store float %conv, ptr %fac, align 4
  %1 = load float, ptr %fac, align 4
  %cmp = fcmp olt float %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, ptr %fac, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp sge i32 %3, 125
  br i1 %cmp2, label %if.then4, label %if.end31

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx5, align 4
  %conv6 = sitofp i32 %5 to float
  %6 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx7, align 4
  %conv8 = sitofp i32 %7 to float
  %8 = load float, ptr %fac, align 4
  %neg = fneg float %conv8
  %9 = call float @llvm.fmuladd.f32(float %neg, float %8, float %conv6)
  %cmp10 = fcmp ogt float %9, 1.250000e+02
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then4
  %10 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx13, align 4
  %conv14 = sitofp i32 %11 to float
  %12 = load float, ptr %fac, align 4
  %13 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %13, i64 0
  %14 = load i32, ptr %arrayidx16, align 4
  %conv17 = sitofp i32 %14 to float
  %15 = call float @llvm.fmuladd.f32(float %conv14, float %12, float %conv17)
  %conv18 = fptosi float %15 to i32
  store i32 %conv18, ptr %arrayidx16, align 4
  %16 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx19, align 4
  %conv20 = sitofp i32 %17 to float
  %18 = load float, ptr %fac, align 4
  %19 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %19, i64 1
  %20 = load i32, ptr %arrayidx22, align 4
  %conv23 = sitofp i32 %20 to float
  %neg24 = fneg float %conv20
  %21 = call float @llvm.fmuladd.f32(float %neg24, float %18, float %conv23)
  %conv25 = fptosi float %21 to i32
  store i32 %conv25, ptr %arrayidx22, align 4
  br label %if.end30

if.else:                                          ; preds = %if.then4
  %22 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %22, i64 1
  %23 = load i32, ptr %arrayidx26, align 4
  %sub27 = sub nsw i32 %23, 125
  %24 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %24, i64 0
  %25 = load i32, ptr %arrayidx28, align 4
  %add = add nsw i32 %25, %sub27
  store i32 %add, ptr %arrayidx28, align 4
  %26 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %26, i64 1
  store i32 125, ptr %arrayidx29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then12
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %27 = load i32, ptr %ch, align 4
  %28 = load i32, ptr %numchn, align 4
  %cmp32 = icmp slt i32 %27, %28
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %mean_bits.addr, align 4
  %div34 = sdiv i32 %29, 2
  %add35 = add nsw i32 %div34, 1200
  %cmp36 = icmp slt i32 4095, %add35
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %30 = load i32, ptr %mean_bits.addr, align 4
  %div38 = sdiv i32 %30, 2
  %add39 = add nsw i32 %div38, 1200
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4095, %cond.true ], [ %add39, %cond.false ]
  store i32 %cond, ptr %max_bits, align 4
  %31 = load ptr, ptr %targ_bits.addr, align 8
  %32 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %31, i64 %idxprom
  %33 = load i32, ptr %arrayidx40, align 4
  %34 = load i32, ptr %max_bits, align 4
  %cmp41 = icmp sgt i32 %33, %34
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %cond.end
  %35 = load i32, ptr %max_bits, align 4
  %36 = load ptr, ptr %targ_bits.addr, align 8
  %37 = load i32, ptr %ch, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %36, i64 %idxprom44
  store i32 %35, ptr %arrayidx45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %38 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inner_loop(ptr noundef %gfp, ptr noundef %xrpow, ptr noundef %l3_enc, i32 noundef %max_bits, ptr noundef %cod_info) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %xrpow.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %max_bits.addr = alloca i32, align 4
  %cod_info.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %xrpow, ptr %xrpow.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store i32 %max_bits, ptr %max_bits.addr, align 4
  store ptr %cod_info, ptr %cod_info.addr, align 8
  %0 = load i32, ptr %max_bits.addr, align 4
  %cmp = icmp sge i32 %0, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.inner_loop, ptr noundef @.str, i32 noundef 431, ptr noundef @.str.1) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %global_gain, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %global_gain, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %4 = load ptr, ptr %cod_info.addr, align 8
  %global_gain1 = getelementptr inbounds %struct.gr_info, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %global_gain1, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %global_gain1, align 4
  %6 = load ptr, ptr %gfp.addr, align 8
  %7 = load ptr, ptr %l3_enc.addr, align 8
  %8 = load ptr, ptr %xrpow.addr, align 8
  %9 = load ptr, ptr %cod_info.addr, align 8
  %call = call i32 @count_bits(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call, ptr %bits, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, ptr %bits, align 4
  %11 = load i32, ptr %max_bits.addr, align 4
  %cmp2 = icmp sgt i32 %10, %11
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !24

do.end:                                           ; preds = %do.cond
  %12 = load i32, ptr %bits, align 4
  ret i32 %12
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @count_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @scale_bitcount(ptr noundef %scalefac, ptr noundef %cod_info) #0 {
entry:
  %scalefac.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sfb = alloca i32, align 4
  %max_slen1 = alloca i32, align 4
  %max_slen2 = alloca i32, align 4
  %ep = alloca i32, align 4
  %tab = alloca ptr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store i32 0, ptr %max_slen1, align 4
  store i32 0, ptr %max_slen2, align 4
  store i32 2, ptr %ep, align 4
  %0 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %block_type, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @scale_bitcount.slen1_tab, ptr %tab, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %if.then
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %2, 3
  br i1 %cmp1, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sfb, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %sfb, align 4
  %cmp3 = icmp slt i32 %3, 6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load ptr, ptr %scalefac.addr, align 8
  %s = getelementptr inbounds %struct.III_scalefac_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [13 x [3 x i32]], ptr %s, i64 0, i64 %idxprom
  %6 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [3 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4
  %8 = load i32, ptr %max_slen1, align 4
  %cmp7 = icmp sgt i32 %7, %8
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body4
  %9 = load ptr, ptr %scalefac.addr, align 8
  %s9 = getelementptr inbounds %struct.III_scalefac_t, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %sfb, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [13 x [3 x i32]], ptr %s9, i64 0, i64 %idxprom10
  %11 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4
  store i32 %12, ptr %max_slen1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %sfb, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %sfb, align 4
  br label %for.cond2, !llvm.loop !25

for.end:                                          ; preds = %for.cond2
  store i32 6, ptr %sfb, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc30, %for.end
  %14 = load i32, ptr %sfb, align 4
  %cmp15 = icmp slt i32 %14, 12
  br i1 %cmp15, label %for.body16, label %for.end32

for.body16:                                       ; preds = %for.cond14
  %15 = load ptr, ptr %scalefac.addr, align 8
  %s17 = getelementptr inbounds %struct.III_scalefac_t, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %sfb, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [13 x [3 x i32]], ptr %s17, i64 0, i64 %idxprom18
  %17 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [3 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4
  %19 = load i32, ptr %max_slen2, align 4
  %cmp22 = icmp sgt i32 %18, %19
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %for.body16
  %20 = load ptr, ptr %scalefac.addr, align 8
  %s24 = getelementptr inbounds %struct.III_scalefac_t, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %sfb, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [13 x [3 x i32]], ptr %s24, i64 0, i64 %idxprom25
  %22 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [3 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %23 = load i32, ptr %arrayidx28, align 4
  store i32 %23, ptr %max_slen2, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %for.body16
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %24 = load i32, ptr %sfb, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, ptr %sfb, align 4
  br label %for.cond14, !llvm.loop !26

for.end32:                                        ; preds = %for.cond14
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %25 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end35:                                        ; preds = %for.cond
  br label %if.end96

if.else:                                          ; preds = %entry
  store ptr @scale_bitcount.slen2_tab, ptr %tab, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %if.else
  %26 = load i32, ptr %sfb, align 4
  %cmp37 = icmp slt i32 %26, 11
  br i1 %cmp37, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond36
  %27 = load ptr, ptr %scalefac.addr, align 8
  %l = getelementptr inbounds %struct.III_scalefac_t, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %sfb, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [22 x i32], ptr %l, i64 0, i64 %idxprom39
  %29 = load i32, ptr %arrayidx40, align 4
  %30 = load i32, ptr %max_slen1, align 4
  %cmp41 = icmp sgt i32 %29, %30
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %for.body38
  %31 = load ptr, ptr %scalefac.addr, align 8
  %l43 = getelementptr inbounds %struct.III_scalefac_t, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %sfb, align 4
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [22 x i32], ptr %l43, i64 0, i64 %idxprom44
  %33 = load i32, ptr %arrayidx45, align 4
  store i32 %33, ptr %max_slen1, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %for.body38
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %34 = load i32, ptr %sfb, align 4
  %inc48 = add nsw i32 %34, 1
  store i32 %inc48, ptr %sfb, align 4
  br label %for.cond36, !llvm.loop !28

for.end49:                                        ; preds = %for.cond36
  %35 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %35, i32 0, i32 12
  %36 = load i32, ptr %preflag, align 8
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.end80, label %if.then50

if.then50:                                        ; preds = %for.end49
  store i32 11, ptr %sfb, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc62, %if.then50
  %37 = load i32, ptr %sfb, align 4
  %cmp52 = icmp slt i32 %37, 21
  br i1 %cmp52, label %for.body53, label %for.end64

for.body53:                                       ; preds = %for.cond51
  %38 = load ptr, ptr %scalefac.addr, align 8
  %l54 = getelementptr inbounds %struct.III_scalefac_t, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %sfb, align 4
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [22 x i32], ptr %l54, i64 0, i64 %idxprom55
  %40 = load i32, ptr %arrayidx56, align 4
  %41 = load i32, ptr %sfb, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom57
  %42 = load i32, ptr %arrayidx58, align 4
  %cmp59 = icmp slt i32 %40, %42
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.body53
  br label %for.end64

if.end61:                                         ; preds = %for.body53
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %43 = load i32, ptr %sfb, align 4
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, ptr %sfb, align 4
  br label %for.cond51, !llvm.loop !29

for.end64:                                        ; preds = %if.then60, %for.cond51
  %44 = load i32, ptr %sfb, align 4
  %cmp65 = icmp eq i32 %44, 21
  br i1 %cmp65, label %if.then66, label %if.end79

if.then66:                                        ; preds = %for.end64
  %45 = load ptr, ptr %cod_info.addr, align 8
  %preflag67 = getelementptr inbounds %struct.gr_info, ptr %45, i32 0, i32 12
  store i32 1, ptr %preflag67, align 8
  store i32 11, ptr %sfb, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc76, %if.then66
  %46 = load i32, ptr %sfb, align 4
  %cmp69 = icmp slt i32 %46, 21
  br i1 %cmp69, label %for.body70, label %for.end78

for.body70:                                       ; preds = %for.cond68
  %47 = load i32, ptr %sfb, align 4
  %idxprom71 = sext i32 %47 to i64
  %arrayidx72 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom71
  %48 = load i32, ptr %arrayidx72, align 4
  %49 = load ptr, ptr %scalefac.addr, align 8
  %l73 = getelementptr inbounds %struct.III_scalefac_t, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %sfb, align 4
  %idxprom74 = sext i32 %50 to i64
  %arrayidx75 = getelementptr inbounds [22 x i32], ptr %l73, i64 0, i64 %idxprom74
  %51 = load i32, ptr %arrayidx75, align 4
  %sub = sub nsw i32 %51, %48
  store i32 %sub, ptr %arrayidx75, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %52 = load i32, ptr %sfb, align 4
  %inc77 = add nsw i32 %52, 1
  store i32 %inc77, ptr %sfb, align 4
  br label %for.cond68, !llvm.loop !30

for.end78:                                        ; preds = %for.cond68
  br label %if.end79

if.end79:                                         ; preds = %for.end78, %for.end64
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %for.end49
  store i32 11, ptr %sfb, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc93, %if.end80
  %53 = load i32, ptr %sfb, align 4
  %cmp82 = icmp slt i32 %53, 21
  br i1 %cmp82, label %for.body83, label %for.end95

for.body83:                                       ; preds = %for.cond81
  %54 = load ptr, ptr %scalefac.addr, align 8
  %l84 = getelementptr inbounds %struct.III_scalefac_t, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %sfb, align 4
  %idxprom85 = sext i32 %55 to i64
  %arrayidx86 = getelementptr inbounds [22 x i32], ptr %l84, i64 0, i64 %idxprom85
  %56 = load i32, ptr %arrayidx86, align 4
  %57 = load i32, ptr %max_slen2, align 4
  %cmp87 = icmp sgt i32 %56, %57
  br i1 %cmp87, label %if.then88, label %if.end92

if.then88:                                        ; preds = %for.body83
  %58 = load ptr, ptr %scalefac.addr, align 8
  %l89 = getelementptr inbounds %struct.III_scalefac_t, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %sfb, align 4
  %idxprom90 = sext i32 %59 to i64
  %arrayidx91 = getelementptr inbounds [22 x i32], ptr %l89, i64 0, i64 %idxprom90
  %60 = load i32, ptr %arrayidx91, align 4
  store i32 %60, ptr %max_slen2, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %for.body83
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %61 = load i32, ptr %sfb, align 4
  %inc94 = add nsw i32 %61, 1
  store i32 %inc94, ptr %sfb, align 4
  br label %for.cond81, !llvm.loop !31

for.end95:                                        ; preds = %for.cond81
  br label %if.end96

if.end96:                                         ; preds = %for.end95, %for.end35
  %62 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %62, i32 0, i32 15
  store i32 100000, ptr %part2_length, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc116, %if.end96
  %63 = load i32, ptr %k, align 4
  %cmp98 = icmp slt i32 %63, 16
  br i1 %cmp98, label %for.body99, label %for.end118

for.body99:                                       ; preds = %for.cond97
  %64 = load i32, ptr %max_slen1, align 4
  %65 = load i32, ptr %k, align 4
  %idxprom100 = sext i32 %65 to i64
  %arrayidx101 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen1, i64 0, i64 %idxprom100
  %66 = load i32, ptr %arrayidx101, align 4
  %cmp102 = icmp slt i32 %64, %66
  br i1 %cmp102, label %land.lhs.true, label %if.end115

land.lhs.true:                                    ; preds = %for.body99
  %67 = load i32, ptr %max_slen2, align 4
  %68 = load i32, ptr %k, align 4
  %idxprom103 = sext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen2, i64 0, i64 %idxprom103
  %69 = load i32, ptr %arrayidx104, align 4
  %cmp105 = icmp slt i32 %67, %69
  br i1 %cmp105, label %land.lhs.true106, label %if.end115

land.lhs.true106:                                 ; preds = %land.lhs.true
  %70 = load ptr, ptr %cod_info.addr, align 8
  %part2_length107 = getelementptr inbounds %struct.gr_info, ptr %70, i32 0, i32 15
  %71 = load i32, ptr %part2_length107, align 4
  %72 = load ptr, ptr %tab, align 8
  %73 = load i32, ptr %k, align 4
  %idxprom108 = sext i32 %73 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %72, i64 %idxprom108
  %74 = load i32, ptr %arrayidx109, align 4
  %cmp110 = icmp sgt i32 %71, %74
  br i1 %cmp110, label %if.then111, label %if.end115

if.then111:                                       ; preds = %land.lhs.true106
  %75 = load ptr, ptr %tab, align 8
  %76 = load i32, ptr %k, align 4
  %idxprom112 = sext i32 %76 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %75, i64 %idxprom112
  %77 = load i32, ptr %arrayidx113, align 4
  %78 = load ptr, ptr %cod_info.addr, align 8
  %part2_length114 = getelementptr inbounds %struct.gr_info, ptr %78, i32 0, i32 15
  store i32 %77, ptr %part2_length114, align 4
  %79 = load i32, ptr %k, align 4
  %80 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %80, i32 0, i32 4
  store i32 %79, ptr %scalefac_compress, align 8
  store i32 0, ptr %ep, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %land.lhs.true106, %land.lhs.true, %for.body99
  br label %for.inc116

for.inc116:                                       ; preds = %if.end115
  %81 = load i32, ptr %k, align 4
  %inc117 = add nsw i32 %81, 1
  store i32 %inc117, ptr %k, align 4
  br label %for.cond97, !llvm.loop !32

for.end118:                                       ; preds = %for.cond97
  %82 = load i32, ptr %ep, align 4
  ret i32 %82
}

; Function Attrs: nounwind ssp uwtable
define i32 @scale_bitcount_lsf(ptr noundef %scalefac, ptr noundef %cod_info) #0 {
entry:
  %scalefac.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %table_number = alloca i32, align 4
  %row_in_table = alloca i32, align 4
  %partition = alloca i32, align 4
  %nr_sfb = alloca i32, align 4
  %window = alloca i32, align 4
  %over = alloca i32, align 4
  %i = alloca i32, align 4
  %sfb = alloca i32, align 4
  %max_sfac = alloca [4 x i32], align 4
  %partition_table = alloca ptr, align 8
  %slen1 = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %slen3 = alloca i32, align 4
  %slen4 = alloca i32, align 4
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  %0 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %preflag, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr %table_number, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %table_number, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %block_type, align 8
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %if.then2, label %if.else45

if.then2:                                         ; preds = %for.end
  store i32 1, ptr %row_in_table, align 4
  %7 = load i32, ptr %table_number, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %idxprom3
  %8 = load i32, ptr %row_in_table, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [3 x [4 x i32]], ptr %arrayidx4, i64 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %arrayidx6, i64 0, i64 0
  store ptr %arrayidx7, ptr %partition_table, align 8
  store i32 0, ptr %sfb, align 4
  store i32 0, ptr %partition, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc42, %if.then2
  %9 = load i32, ptr %partition, align 4
  %cmp9 = icmp slt i32 %9, 4
  br i1 %cmp9, label %for.body10, label %for.end44

for.body10:                                       ; preds = %for.cond8
  %10 = load ptr, ptr %partition_table, align 8
  %11 = load i32, ptr %partition, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 %idxprom11
  %12 = load i32, ptr %arrayidx12, align 4
  %div = udiv i32 %12, 3
  store i32 %div, ptr %nr_sfb, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc38, %for.body10
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %nr_sfb, align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body15, label %for.end41

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %window, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc35, %for.body15
  %15 = load i32, ptr %window, align 4
  %cmp17 = icmp slt i32 %15, 3
  br i1 %cmp17, label %for.body18, label %for.end37

for.body18:                                       ; preds = %for.cond16
  %16 = load ptr, ptr %scalefac.addr, align 8
  %s = getelementptr inbounds %struct.III_scalefac_t, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %sfb, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [13 x [3 x i32]], ptr %s, i64 0, i64 %idxprom19
  %18 = load i32, ptr %window, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [3 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %19 = load i32, ptr %arrayidx22, align 4
  %20 = load i32, ptr %partition, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom23
  %21 = load i32, ptr %arrayidx24, align 4
  %cmp25 = icmp sgt i32 %19, %21
  br i1 %cmp25, label %if.then26, label %if.end34

if.then26:                                        ; preds = %for.body18
  %22 = load ptr, ptr %scalefac.addr, align 8
  %s27 = getelementptr inbounds %struct.III_scalefac_t, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %sfb, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [13 x [3 x i32]], ptr %s27, i64 0, i64 %idxprom28
  %24 = load i32, ptr %window, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [3 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %25 = load i32, ptr %arrayidx31, align 4
  %26 = load i32, ptr %partition, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom32
  store i32 %25, ptr %arrayidx33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %for.body18
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %27 = load i32, ptr %window, align 4
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, ptr %window, align 4
  br label %for.cond16, !llvm.loop !34

for.end37:                                        ; preds = %for.cond16
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %28 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, ptr %i, align 4
  %29 = load i32, ptr %sfb, align 4
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, ptr %sfb, align 4
  br label %for.cond13, !llvm.loop !35

for.end41:                                        ; preds = %for.cond13
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %30 = load i32, ptr %partition, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, ptr %partition, align 4
  br label %for.cond8, !llvm.loop !36

for.end44:                                        ; preds = %for.cond8
  br label %if.end78

if.else45:                                        ; preds = %for.end
  store i32 0, ptr %row_in_table, align 4
  %31 = load i32, ptr %table_number, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %idxprom46
  %32 = load i32, ptr %row_in_table, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [3 x [4 x i32]], ptr %arrayidx47, i64 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr %arrayidx49, i64 0, i64 0
  store ptr %arrayidx50, ptr %partition_table, align 8
  store i32 0, ptr %sfb, align 4
  store i32 0, ptr %partition, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc75, %if.else45
  %33 = load i32, ptr %partition, align 4
  %cmp52 = icmp slt i32 %33, 4
  br i1 %cmp52, label %for.body53, label %for.end77

for.body53:                                       ; preds = %for.cond51
  %34 = load ptr, ptr %partition_table, align 8
  %35 = load i32, ptr %partition, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %34, i64 %idxprom54
  %36 = load i32, ptr %arrayidx55, align 4
  store i32 %36, ptr %nr_sfb, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc71, %for.body53
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %nr_sfb, align 4
  %cmp57 = icmp slt i32 %37, %38
  br i1 %cmp57, label %for.body58, label %for.end74

for.body58:                                       ; preds = %for.cond56
  %39 = load ptr, ptr %scalefac.addr, align 8
  %l = getelementptr inbounds %struct.III_scalefac_t, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %sfb, align 4
  %idxprom59 = sext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds [22 x i32], ptr %l, i64 0, i64 %idxprom59
  %41 = load i32, ptr %arrayidx60, align 4
  %42 = load i32, ptr %partition, align 4
  %idxprom61 = sext i32 %42 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom61
  %43 = load i32, ptr %arrayidx62, align 4
  %cmp63 = icmp sgt i32 %41, %43
  br i1 %cmp63, label %if.then64, label %if.end70

if.then64:                                        ; preds = %for.body58
  %44 = load ptr, ptr %scalefac.addr, align 8
  %l65 = getelementptr inbounds %struct.III_scalefac_t, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %sfb, align 4
  %idxprom66 = sext i32 %45 to i64
  %arrayidx67 = getelementptr inbounds [22 x i32], ptr %l65, i64 0, i64 %idxprom66
  %46 = load i32, ptr %arrayidx67, align 4
  %47 = load i32, ptr %partition, align 4
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom68
  store i32 %46, ptr %arrayidx69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %for.body58
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %48 = load i32, ptr %i, align 4
  %inc72 = add nsw i32 %48, 1
  store i32 %inc72, ptr %i, align 4
  %49 = load i32, ptr %sfb, align 4
  %inc73 = add nsw i32 %49, 1
  store i32 %inc73, ptr %sfb, align 4
  br label %for.cond56, !llvm.loop !37

for.end74:                                        ; preds = %for.cond56
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %50 = load i32, ptr %partition, align 4
  %inc76 = add nsw i32 %50, 1
  store i32 %inc76, ptr %partition, align 4
  br label %for.cond51, !llvm.loop !38

for.end77:                                        ; preds = %for.cond51
  br label %if.end78

if.end78:                                         ; preds = %for.end77, %for.end44
  store i32 0, ptr %over, align 4
  store i32 0, ptr %partition, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc92, %if.end78
  %51 = load i32, ptr %partition, align 4
  %cmp80 = icmp slt i32 %51, 4
  br i1 %cmp80, label %for.body81, label %for.end94

for.body81:                                       ; preds = %for.cond79
  %52 = load i32, ptr %partition, align 4
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom82
  %53 = load i32, ptr %arrayidx83, align 4
  %54 = load i32, ptr %table_number, align 4
  %idxprom84 = sext i32 %54 to i64
  %arrayidx85 = getelementptr inbounds [6 x [4 x i32]], ptr @max_range_sfac_tab, i64 0, i64 %idxprom84
  %55 = load i32, ptr %partition, align 4
  %idxprom86 = sext i32 %55 to i64
  %arrayidx87 = getelementptr inbounds [4 x i32], ptr %arrayidx85, i64 0, i64 %idxprom86
  %56 = load i32, ptr %arrayidx87, align 4
  %cmp88 = icmp sgt i32 %53, %56
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %for.body81
  %57 = load i32, ptr %over, align 4
  %inc90 = add nsw i32 %57, 1
  store i32 %inc90, ptr %over, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.body81
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %58 = load i32, ptr %partition, align 4
  %inc93 = add nsw i32 %58, 1
  store i32 %inc93, ptr %partition, align 4
  br label %for.cond79, !llvm.loop !39

for.end94:                                        ; preds = %for.cond79
  %59 = load i32, ptr %over, align 4
  %tobool95 = icmp ne i32 %59, 0
  br i1 %tobool95, label %if.end137, label %if.then96

if.then96:                                        ; preds = %for.end94
  %60 = load i32, ptr %table_number, align 4
  %idxprom97 = sext i32 %60 to i64
  %arrayidx98 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %idxprom97
  %61 = load i32, ptr %row_in_table, align 4
  %idxprom99 = sext i32 %61 to i64
  %arrayidx100 = getelementptr inbounds [3 x [4 x i32]], ptr %arrayidx98, i64 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [4 x i32], ptr %arrayidx100, i64 0, i64 0
  %62 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %62, i32 0, i32 19
  store ptr %arrayidx101, ptr %sfb_partition_table, align 8
  store i32 0, ptr %partition, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc111, %if.then96
  %63 = load i32, ptr %partition, align 4
  %cmp103 = icmp slt i32 %63, 4
  br i1 %cmp103, label %for.body104, label %for.end113

for.body104:                                      ; preds = %for.cond102
  %64 = load i32, ptr %partition, align 4
  %idxprom105 = sext i32 %64 to i64
  %arrayidx106 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom105
  %65 = load i32, ptr %arrayidx106, align 4
  %idxprom107 = sext i32 %65 to i64
  %arrayidx108 = getelementptr inbounds [16 x i32], ptr @scale_bitcount_lsf.log2tab, i64 0, i64 %idxprom107
  %66 = load i32, ptr %arrayidx108, align 4
  %67 = load ptr, ptr %cod_info.addr, align 8
  %slen = getelementptr inbounds %struct.gr_info, ptr %67, i32 0, i32 20
  %68 = load i32, ptr %partition, align 4
  %idxprom109 = sext i32 %68 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32], ptr %slen, i64 0, i64 %idxprom109
  store i32 %66, ptr %arrayidx110, align 4
  br label %for.inc111

for.inc111:                                       ; preds = %for.body104
  %69 = load i32, ptr %partition, align 4
  %inc112 = add nsw i32 %69, 1
  store i32 %inc112, ptr %partition, align 4
  br label %for.cond102, !llvm.loop !40

for.end113:                                       ; preds = %for.cond102
  %70 = load ptr, ptr %cod_info.addr, align 8
  %slen114 = getelementptr inbounds %struct.gr_info, ptr %70, i32 0, i32 20
  %arrayidx115 = getelementptr inbounds [4 x i32], ptr %slen114, i64 0, i64 0
  %71 = load i32, ptr %arrayidx115, align 8
  store i32 %71, ptr %slen1, align 4
  %72 = load ptr, ptr %cod_info.addr, align 8
  %slen116 = getelementptr inbounds %struct.gr_info, ptr %72, i32 0, i32 20
  %arrayidx117 = getelementptr inbounds [4 x i32], ptr %slen116, i64 0, i64 1
  %73 = load i32, ptr %arrayidx117, align 4
  store i32 %73, ptr %slen2, align 4
  %74 = load ptr, ptr %cod_info.addr, align 8
  %slen118 = getelementptr inbounds %struct.gr_info, ptr %74, i32 0, i32 20
  %arrayidx119 = getelementptr inbounds [4 x i32], ptr %slen118, i64 0, i64 2
  %75 = load i32, ptr %arrayidx119, align 8
  store i32 %75, ptr %slen3, align 4
  %76 = load ptr, ptr %cod_info.addr, align 8
  %slen120 = getelementptr inbounds %struct.gr_info, ptr %76, i32 0, i32 20
  %arrayidx121 = getelementptr inbounds [4 x i32], ptr %slen120, i64 0, i64 3
  %77 = load i32, ptr %arrayidx121, align 4
  store i32 %77, ptr %slen4, align 4
  %78 = load i32, ptr %table_number, align 4
  switch i32 %78, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb125
    i32 2, label %sw.bb132
  ]

sw.bb:                                            ; preds = %for.end113
  %79 = load i32, ptr %slen1, align 4
  %mul = mul i32 %79, 5
  %80 = load i32, ptr %slen2, align 4
  %add = add i32 %mul, %80
  %shl = shl i32 %add, 4
  %81 = load i32, ptr %slen3, align 4
  %shl122 = shl i32 %81, 2
  %add123 = add i32 %shl, %shl122
  %82 = load i32, ptr %slen4, align 4
  %add124 = add i32 %add123, %82
  %83 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %83, i32 0, i32 4
  store i32 %add124, ptr %scalefac_compress, align 8
  br label %sw.epilog

sw.bb125:                                         ; preds = %for.end113
  %84 = load i32, ptr %slen1, align 4
  %mul126 = mul i32 %84, 5
  %85 = load i32, ptr %slen2, align 4
  %add127 = add i32 %mul126, %85
  %shl128 = shl i32 %add127, 2
  %add129 = add i32 400, %shl128
  %86 = load i32, ptr %slen3, align 4
  %add130 = add i32 %add129, %86
  %87 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress131 = getelementptr inbounds %struct.gr_info, ptr %87, i32 0, i32 4
  store i32 %add130, ptr %scalefac_compress131, align 8
  br label %sw.epilog

sw.bb132:                                         ; preds = %for.end113
  %88 = load i32, ptr %slen1, align 4
  %mul133 = mul i32 %88, 3
  %add134 = add i32 500, %mul133
  %89 = load i32, ptr %slen2, align 4
  %add135 = add i32 %add134, %89
  %90 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress136 = getelementptr inbounds %struct.gr_info, ptr %90, i32 0, i32 4
  store i32 %add135, ptr %scalefac_compress136, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end113
  %91 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb132, %sw.bb125, %sw.bb
  br label %if.end137

if.end137:                                        ; preds = %sw.epilog, %for.end94
  %92 = load i32, ptr %over, align 4
  %tobool138 = icmp ne i32 %92, 0
  br i1 %tobool138, label %if.end159, label %if.then139

if.then139:                                       ; preds = %if.end137
  %93 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table140 = getelementptr inbounds %struct.gr_info, ptr %93, i32 0, i32 19
  %94 = load ptr, ptr %sfb_partition_table140, align 8
  %tobool141 = icmp ne ptr %94, null
  %lnot = xor i1 %tobool141, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool142 = icmp ne i64 %conv, 0
  br i1 %tobool142, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then139
  call void @__assert_rtn(ptr noundef @__func__.scale_bitcount_lsf, ptr noundef @.str, i32 noundef 665, ptr noundef @.str.3) #6
  unreachable

95:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then139
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %95
  %96 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %96, i32 0, i32 15
  store i32 0, ptr %part2_length, align 4
  store i32 0, ptr %partition, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc156, %cond.end
  %97 = load i32, ptr %partition, align 4
  %cmp144 = icmp slt i32 %97, 4
  br i1 %cmp144, label %for.body146, label %for.end158

for.body146:                                      ; preds = %for.cond143
  %98 = load ptr, ptr %cod_info.addr, align 8
  %slen147 = getelementptr inbounds %struct.gr_info, ptr %98, i32 0, i32 20
  %99 = load i32, ptr %partition, align 4
  %idxprom148 = sext i32 %99 to i64
  %arrayidx149 = getelementptr inbounds [4 x i32], ptr %slen147, i64 0, i64 %idxprom148
  %100 = load i32, ptr %arrayidx149, align 4
  %101 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table150 = getelementptr inbounds %struct.gr_info, ptr %101, i32 0, i32 19
  %102 = load ptr, ptr %sfb_partition_table150, align 8
  %103 = load i32, ptr %partition, align 4
  %idxprom151 = sext i32 %103 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %102, i64 %idxprom151
  %104 = load i32, ptr %arrayidx152, align 4
  %mul153 = mul i32 %100, %104
  %105 = load ptr, ptr %cod_info.addr, align 8
  %part2_length154 = getelementptr inbounds %struct.gr_info, ptr %105, i32 0, i32 15
  %106 = load i32, ptr %part2_length154, align 4
  %add155 = add i32 %106, %mul153
  store i32 %add155, ptr %part2_length154, align 4
  br label %for.inc156

for.inc156:                                       ; preds = %for.body146
  %107 = load i32, ptr %partition, align 4
  %inc157 = add nsw i32 %107, 1
  store i32 %inc157, ptr %partition, align 4
  br label %for.cond143, !llvm.loop !41

for.end158:                                       ; preds = %for.cond143
  br label %if.end159

if.end159:                                        ; preds = %for.end158, %if.end137
  %108 = load i32, ptr %over, align 4
  ret i32 %108
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @calc_xmin(ptr noundef %gfp, ptr noundef %xr, ptr noundef %ratio, ptr noundef %cod_info, ptr noundef %l3_xmin) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %ratio.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %l3_xmin.addr = alloca ptr, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %bw = alloca i32, align 4
  %l = alloca i32, align 4
  %b = alloca i32, align 4
  %ath_over = alloca i32, align 4
  %sfb = alloca i32, align 4
  %en0 = alloca double, align 8
  %xmin = alloca double, align 8
  %ener = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ratio, ptr %ratio.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %l3_xmin, ptr %l3_xmin.addr, align 8
  store i32 0, ptr %ath_over, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 33
  %1 = load i32, ptr %ATHonly, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %2, i32 0, i32 17
  %3 = load i32, ptr %sfb_smax, align 4
  store i32 %3, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %if.then
  %4 = load i32, ptr %sfb, align 4
  %cmp = icmp ult i32 %4, 12
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %b, align 4
  %cmp2 = icmp slt i32 %5, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom
  %7 = load double, ptr %arrayidx, align 8
  %8 = load ptr, ptr %l3_xmin.addr, align 8
  %s = getelementptr inbounds %struct.III_psy_xmin, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %sfb, align 4
  %idxprom4 = zext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [13 x [3 x double]], ptr %s, i64 0, i64 %idxprom4
  %10 = load i32, ptr %b, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 %idxprom6
  store double %7, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %b, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %b, align 4
  br label %for.cond1, !llvm.loop !42

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %12 = load i32, ptr %sfb, align 4
  %inc9 = add i32 %12, 1
  store i32 %inc9, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !43

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %sfb, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %13 = load i32, ptr %sfb, align 4
  %14 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %sfb_lmax, align 8
  %cmp12 = icmp ult i32 %13, %15
  br i1 %cmp12, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond11
  %16 = load i32, ptr %sfb, align 4
  %idxprom14 = zext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom14
  %17 = load double, ptr %arrayidx15, align 8
  %18 = load ptr, ptr %l3_xmin.addr, align 8
  %l16 = getelementptr inbounds %struct.III_psy_xmin, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %sfb, align 4
  %idxprom17 = zext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [22 x double], ptr %l16, i64 0, i64 %idxprom17
  store double %17, ptr %arrayidx18, align 8
  br label %for.inc19

for.inc19:                                        ; preds = %for.body13
  %20 = load i32, ptr %sfb, align 4
  %inc20 = add i32 %20, 1
  store i32 %inc20, ptr %sfb, align 4
  br label %for.cond11, !llvm.loop !44

for.end21:                                        ; preds = %for.cond11
  br label %if.end150

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax22 = getelementptr inbounds %struct.gr_info, ptr %21, i32 0, i32 17
  %22 = load i32, ptr %sfb_smax22, align 4
  store i32 %22, ptr %sfb, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc82, %if.else
  %23 = load i32, ptr %sfb, align 4
  %cmp24 = icmp ult i32 %23, 12
  br i1 %cmp24, label %for.body25, label %for.end84

for.body25:                                       ; preds = %for.cond23
  %24 = load i32, ptr %sfb, align 4
  %idxprom26 = zext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom26
  %25 = load i32, ptr %arrayidx27, align 4
  store i32 %25, ptr %start, align 4
  %26 = load i32, ptr %sfb, align 4
  %add = add i32 %26, 1
  %idxprom28 = zext i32 %add to i64
  %arrayidx29 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom28
  %27 = load i32, ptr %arrayidx29, align 4
  store i32 %27, ptr %end, align 4
  %28 = load i32, ptr %end, align 4
  %29 = load i32, ptr %start, align 4
  %sub = sub nsw i32 %28, %29
  store i32 %sub, ptr %bw, align 4
  store i32 0, ptr %b, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc79, %for.body25
  %30 = load i32, ptr %b, align 4
  %cmp31 = icmp slt i32 %30, 3
  br i1 %cmp31, label %for.body32, label %for.end81

for.body32:                                       ; preds = %for.cond30
  store double 0.000000e+00, ptr %en0, align 8
  %31 = load i32, ptr %start, align 4
  store i32 %31, ptr %l, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.body32
  %32 = load i32, ptr %l, align 4
  %33 = load i32, ptr %end, align 4
  %cmp34 = icmp slt i32 %32, %33
  br i1 %cmp34, label %for.body35, label %for.end43

for.body35:                                       ; preds = %for.cond33
  %34 = load ptr, ptr %xr.addr, align 8
  %35 = load i32, ptr %l, align 4
  %mul = mul nsw i32 %35, 3
  %36 = load i32, ptr %b, align 4
  %add36 = add nsw i32 %mul, %36
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %34, i64 %idxprom37
  %37 = load double, ptr %arrayidx38, align 8
  store double %37, ptr %ener, align 8
  %38 = load double, ptr %ener, align 8
  %39 = load double, ptr %ener, align 8
  %mul39 = fmul double %38, %39
  store double %mul39, ptr %ener, align 8
  %40 = load double, ptr %ener, align 8
  %41 = load double, ptr %en0, align 8
  %add40 = fadd double %41, %40
  store double %add40, ptr %en0, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body35
  %42 = load i32, ptr %l, align 4
  %inc42 = add nsw i32 %42, 1
  store i32 %inc42, ptr %l, align 4
  br label %for.cond33, !llvm.loop !45

for.end43:                                        ; preds = %for.cond33
  %43 = load i32, ptr %bw, align 4
  %conv = sitofp i32 %43 to double
  %44 = load double, ptr %en0, align 8
  %div = fdiv double %44, %conv
  store double %div, ptr %en0, align 8
  %45 = load ptr, ptr %ratio.addr, align 8
  %en = getelementptr inbounds %struct.III_psy_ratio, ptr %45, i32 0, i32 1
  %s44 = getelementptr inbounds %struct.III_psy_xmin, ptr %en, i32 0, i32 1
  %46 = load i32, ptr %sfb, align 4
  %idxprom45 = zext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds [13 x [3 x double]], ptr %s44, i64 0, i64 %idxprom45
  %47 = load i32, ptr %b, align 4
  %idxprom47 = sext i32 %47 to i64
  %arrayidx48 = getelementptr inbounds [3 x double], ptr %arrayidx46, i64 0, i64 %idxprom47
  %48 = load double, ptr %arrayidx48, align 8
  store double %48, ptr %xmin, align 8
  %49 = load double, ptr %xmin, align 8
  %cmp49 = fcmp ogt double %49, 0.000000e+00
  br i1 %cmp49, label %if.then51, label %if.end

if.then51:                                        ; preds = %for.end43
  %50 = load double, ptr %en0, align 8
  %51 = load ptr, ptr %ratio.addr, align 8
  %thm = getelementptr inbounds %struct.III_psy_ratio, ptr %51, i32 0, i32 0
  %s52 = getelementptr inbounds %struct.III_psy_xmin, ptr %thm, i32 0, i32 1
  %52 = load i32, ptr %sfb, align 4
  %idxprom53 = zext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [13 x [3 x double]], ptr %s52, i64 0, i64 %idxprom53
  %53 = load i32, ptr %b, align 4
  %idxprom55 = sext i32 %53 to i64
  %arrayidx56 = getelementptr inbounds [3 x double], ptr %arrayidx54, i64 0, i64 %idxprom55
  %54 = load double, ptr %arrayidx56, align 8
  %mul57 = fmul double %50, %54
  %55 = load float, ptr @masking_lower, align 4
  %conv58 = fpext float %55 to double
  %mul59 = fmul double %mul57, %conv58
  %56 = load double, ptr %xmin, align 8
  %div60 = fdiv double %mul59, %56
  store double %div60, ptr %xmin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then51, %for.end43
  %57 = load i32, ptr %sfb, align 4
  %idxprom61 = zext i32 %57 to i64
  %arrayidx62 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom61
  %58 = load double, ptr %arrayidx62, align 8
  %59 = load double, ptr %xmin, align 8
  %cmp63 = fcmp ogt double %58, %59
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %60 = load i32, ptr %sfb, align 4
  %idxprom65 = zext i32 %60 to i64
  %arrayidx66 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom65
  %61 = load double, ptr %arrayidx66, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %62 = load double, ptr %xmin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %61, %cond.true ], [ %62, %cond.false ]
  %63 = load ptr, ptr %l3_xmin.addr, align 8
  %s67 = getelementptr inbounds %struct.III_psy_xmin, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %sfb, align 4
  %idxprom68 = zext i32 %64 to i64
  %arrayidx69 = getelementptr inbounds [13 x [3 x double]], ptr %s67, i64 0, i64 %idxprom68
  %65 = load i32, ptr %b, align 4
  %idxprom70 = sext i32 %65 to i64
  %arrayidx71 = getelementptr inbounds [3 x double], ptr %arrayidx69, i64 0, i64 %idxprom70
  store double %cond, ptr %arrayidx71, align 8
  %66 = load double, ptr %en0, align 8
  %67 = load i32, ptr %sfb, align 4
  %idxprom72 = zext i32 %67 to i64
  %arrayidx73 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom72
  %68 = load double, ptr %arrayidx73, align 8
  %cmp74 = fcmp ogt double %66, %68
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %cond.end
  %69 = load i32, ptr %ath_over, align 4
  %inc77 = add nsw i32 %69, 1
  store i32 %inc77, ptr %ath_over, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %cond.end
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %70 = load i32, ptr %b, align 4
  %inc80 = add nsw i32 %70, 1
  store i32 %inc80, ptr %b, align 4
  br label %for.cond30, !llvm.loop !46

for.end81:                                        ; preds = %for.cond30
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %71 = load i32, ptr %sfb, align 4
  %inc83 = add i32 %71, 1
  store i32 %inc83, ptr %sfb, align 4
  br label %for.cond23, !llvm.loop !47

for.end84:                                        ; preds = %for.cond23
  store i32 0, ptr %sfb, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc147, %for.end84
  %72 = load i32, ptr %sfb, align 4
  %73 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax86 = getelementptr inbounds %struct.gr_info, ptr %73, i32 0, i32 16
  %74 = load i32, ptr %sfb_lmax86, align 8
  %cmp87 = icmp ult i32 %72, %74
  br i1 %cmp87, label %for.body89, label %for.end149

for.body89:                                       ; preds = %for.cond85
  %75 = load i32, ptr %sfb, align 4
  %idxprom90 = zext i32 %75 to i64
  %arrayidx91 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom90
  %76 = load i32, ptr %arrayidx91, align 4
  store i32 %76, ptr %start, align 4
  %77 = load i32, ptr %sfb, align 4
  %add92 = add i32 %77, 1
  %idxprom93 = zext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom93
  %78 = load i32, ptr %arrayidx94, align 4
  store i32 %78, ptr %end, align 4
  %79 = load i32, ptr %end, align 4
  %80 = load i32, ptr %start, align 4
  %sub95 = sub nsw i32 %79, %80
  store i32 %sub95, ptr %bw, align 4
  store double 0.000000e+00, ptr %en0, align 8
  %81 = load i32, ptr %start, align 4
  store i32 %81, ptr %l, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc106, %for.body89
  %82 = load i32, ptr %l, align 4
  %83 = load i32, ptr %end, align 4
  %cmp97 = icmp slt i32 %82, %83
  br i1 %cmp97, label %for.body99, label %for.end108

for.body99:                                       ; preds = %for.cond96
  %84 = load ptr, ptr %xr.addr, align 8
  %85 = load i32, ptr %l, align 4
  %idxprom100 = sext i32 %85 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %84, i64 %idxprom100
  %86 = load double, ptr %arrayidx101, align 8
  %87 = load ptr, ptr %xr.addr, align 8
  %88 = load i32, ptr %l, align 4
  %idxprom102 = sext i32 %88 to i64
  %arrayidx103 = getelementptr inbounds double, ptr %87, i64 %idxprom102
  %89 = load double, ptr %arrayidx103, align 8
  %mul104 = fmul double %86, %89
  store double %mul104, ptr %ener, align 8
  %90 = load double, ptr %ener, align 8
  %91 = load double, ptr %en0, align 8
  %add105 = fadd double %91, %90
  store double %add105, ptr %en0, align 8
  br label %for.inc106

for.inc106:                                       ; preds = %for.body99
  %92 = load i32, ptr %l, align 4
  %inc107 = add nsw i32 %92, 1
  store i32 %inc107, ptr %l, align 4
  br label %for.cond96, !llvm.loop !48

for.end108:                                       ; preds = %for.cond96
  %93 = load i32, ptr %bw, align 4
  %conv109 = sitofp i32 %93 to double
  %94 = load double, ptr %en0, align 8
  %div110 = fdiv double %94, %conv109
  store double %div110, ptr %en0, align 8
  %95 = load ptr, ptr %ratio.addr, align 8
  %en111 = getelementptr inbounds %struct.III_psy_ratio, ptr %95, i32 0, i32 1
  %l112 = getelementptr inbounds %struct.III_psy_xmin, ptr %en111, i32 0, i32 0
  %96 = load i32, ptr %sfb, align 4
  %idxprom113 = zext i32 %96 to i64
  %arrayidx114 = getelementptr inbounds [22 x double], ptr %l112, i64 0, i64 %idxprom113
  %97 = load double, ptr %arrayidx114, align 8
  store double %97, ptr %xmin, align 8
  %98 = load double, ptr %xmin, align 8
  %cmp115 = fcmp ogt double %98, 0.000000e+00
  br i1 %cmp115, label %if.then117, label %if.end126

if.then117:                                       ; preds = %for.end108
  %99 = load double, ptr %en0, align 8
  %100 = load ptr, ptr %ratio.addr, align 8
  %thm118 = getelementptr inbounds %struct.III_psy_ratio, ptr %100, i32 0, i32 0
  %l119 = getelementptr inbounds %struct.III_psy_xmin, ptr %thm118, i32 0, i32 0
  %101 = load i32, ptr %sfb, align 4
  %idxprom120 = zext i32 %101 to i64
  %arrayidx121 = getelementptr inbounds [22 x double], ptr %l119, i64 0, i64 %idxprom120
  %102 = load double, ptr %arrayidx121, align 8
  %mul122 = fmul double %99, %102
  %103 = load float, ptr @masking_lower, align 4
  %conv123 = fpext float %103 to double
  %mul124 = fmul double %mul122, %conv123
  %104 = load double, ptr %xmin, align 8
  %div125 = fdiv double %mul124, %104
  store double %div125, ptr %xmin, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then117, %for.end108
  %105 = load i32, ptr %sfb, align 4
  %idxprom127 = zext i32 %105 to i64
  %arrayidx128 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom127
  %106 = load double, ptr %arrayidx128, align 8
  %107 = load double, ptr %xmin, align 8
  %cmp129 = fcmp ogt double %106, %107
  br i1 %cmp129, label %cond.true131, label %cond.false134

cond.true131:                                     ; preds = %if.end126
  %108 = load i32, ptr %sfb, align 4
  %idxprom132 = zext i32 %108 to i64
  %arrayidx133 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom132
  %109 = load double, ptr %arrayidx133, align 8
  br label %cond.end135

cond.false134:                                    ; preds = %if.end126
  %110 = load double, ptr %xmin, align 8
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true131
  %cond136 = phi double [ %109, %cond.true131 ], [ %110, %cond.false134 ]
  %111 = load ptr, ptr %l3_xmin.addr, align 8
  %l137 = getelementptr inbounds %struct.III_psy_xmin, ptr %111, i32 0, i32 0
  %112 = load i32, ptr %sfb, align 4
  %idxprom138 = zext i32 %112 to i64
  %arrayidx139 = getelementptr inbounds [22 x double], ptr %l137, i64 0, i64 %idxprom138
  store double %cond136, ptr %arrayidx139, align 8
  %113 = load double, ptr %en0, align 8
  %114 = load i32, ptr %sfb, align 4
  %idxprom140 = zext i32 %114 to i64
  %arrayidx141 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom140
  %115 = load double, ptr %arrayidx141, align 8
  %cmp142 = fcmp ogt double %113, %115
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %cond.end135
  %116 = load i32, ptr %ath_over, align 4
  %inc145 = add nsw i32 %116, 1
  store i32 %inc145, ptr %ath_over, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %cond.end135
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %117 = load i32, ptr %sfb, align 4
  %inc148 = add i32 %117, 1
  store i32 %inc148, ptr %sfb, align 4
  br label %for.cond85, !llvm.loop !49

for.end149:                                       ; preds = %for.cond85
  br label %if.end150

if.end150:                                        ; preds = %for.end149, %for.end21
  %118 = load i32, ptr %ath_over, align 4
  ret i32 %118
}

; Function Attrs: nounwind ssp uwtable
define i32 @loop_break(ptr noundef %scalefac, ptr noundef %cod_info) #0 {
entry:
  %retval = alloca i32, align 4
  %scalefac.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sfb = alloca i32, align 4
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %sfb, align 4
  %1 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %sfb_lmax, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %scalefac.addr, align 8
  %l = getelementptr inbounds %struct.III_scalefac_t, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [22 x i32], ptr %l, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %sfb, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %7, i32 0, i32 17
  %8 = load i32, ptr %sfb_smax, align 4
  store i32 %8, ptr %sfb, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.end
  %9 = load i32, ptr %sfb, align 4
  %cmp3 = icmp ult i32 %9, 12
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.body4
  %10 = load i32, ptr %i, align 4
  %cmp6 = icmp slt i32 %10, 3
  br i1 %cmp6, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond5
  %11 = load ptr, ptr %scalefac.addr, align 8
  %s = getelementptr inbounds %struct.III_scalefac_t, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %sfb, align 4
  %idxprom8 = zext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [13 x [3 x i32]], ptr %s, i64 0, i64 %idxprom8
  %13 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %14 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body7
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.body7
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %15 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond5, !llvm.loop !51

for.end17:                                        ; preds = %for.cond5
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %16 = load i32, ptr %sfb, align 4
  %inc19 = add i32 %16, 1
  store i32 %inc19, ptr %sfb, align 4
  br label %for.cond2, !llvm.loop !52

for.end20:                                        ; preds = %for.cond2
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end20, %if.then13, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @bin_search_StepSize2(ptr noundef %gfp, i32 noundef %desired_rate, i32 noundef %start, ptr noundef %ix, ptr noundef %xrspow, ptr noundef %cod_info) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %desired_rate.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %ix.addr = alloca ptr, align 8
  %xrspow.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %nBits = alloca i32, align 4
  %flag_GoneOver = alloca i32, align 4
  %StepSize = alloca i32, align 4
  %Direction = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store i32 %desired_rate, ptr %desired_rate.addr, align 4
  store i32 %start, ptr %start.addr, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %xrspow, ptr %xrspow.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store i32 0, ptr %flag_GoneOver, align 4
  %0 = load i32, ptr %start.addr, align 4
  store i32 %0, ptr %StepSize, align 4
  store i32 0, ptr %Direction, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %StepSize, align 4
  %2 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %2, i32 0, i32 3
  store i32 %1, ptr %global_gain, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %4 = load ptr, ptr %ix.addr, align 8
  %5 = load ptr, ptr %xrspow.addr, align 8
  %6 = load ptr, ptr %cod_info.addr, align 8
  %call = call i32 @count_bits(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %nBits, align 4
  %7 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %8 = load i32, ptr %flag_GoneOver, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %9 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %div = sdiv i32 %9, 2
  store i32 %div, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %10 = load i32, ptr %nBits, align 4
  %11 = load i32, ptr %desired_rate.addr, align 4
  %cmp3 = icmp sgt i32 %10, %11
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %12 = load i32, ptr %Direction, align 4
  %cmp5 = icmp eq i32 %12, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.then4
  %13 = load i32, ptr %flag_GoneOver, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  store i32 1, ptr %flag_GoneOver, align 4
  %14 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %div8 = sdiv i32 %14, 2
  store i32 %div8, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.then4
  store i32 1, ptr %Direction, align 4
  %15 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %16 = load i32, ptr %StepSize, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %StepSize, align 4
  %17 = load i32, ptr %StepSize, align 4
  %cmp10 = icmp sgt i32 %17, 255
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  br label %do.end

if.end12:                                         ; preds = %if.end9
  br label %if.end26

if.else:                                          ; preds = %if.end2
  %18 = load i32, ptr %nBits, align 4
  %19 = load i32, ptr %desired_rate.addr, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %if.then14, label %if.else24

if.then14:                                        ; preds = %if.else
  %20 = load i32, ptr %Direction, align 4
  %cmp15 = icmp eq i32 %20, 1
  br i1 %cmp15, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %if.then14
  %21 = load i32, ptr %flag_GoneOver, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  store i32 1, ptr %flag_GoneOver, align 4
  %22 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %div19 = sdiv i32 %22, 2
  store i32 %div19, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true16, %if.then14
  store i32 2, ptr %Direction, align 4
  %23 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %24 = load i32, ptr %StepSize, align 4
  %sub = sub nsw i32 %24, %23
  store i32 %sub, ptr %StepSize, align 4
  %25 = load i32, ptr %StepSize, align 4
  %cmp21 = icmp slt i32 %25, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  br label %do.end

if.end23:                                         ; preds = %if.end20
  br label %if.end25

if.else24:                                        ; preds = %if.else
  br label %do.end

if.end25:                                         ; preds = %if.end23
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end12
  br label %do.cond

do.cond:                                          ; preds = %if.end26
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else24, %if.then22, %if.then11, %if.then
  %26 = load i32, ptr %start.addr, align 4
  %27 = load i32, ptr %StepSize, align 4
  %sub27 = sub nsw i32 %26, %27
  %call28 = call i32 @abs(i32 noundef %sub27) #8
  store i32 %call28, ptr @bin_search_StepSize2.CurrentStep, align 4
  %28 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %cmp29 = icmp sge i32 %28, 4
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %do.end
  store i32 4, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end32

if.else31:                                        ; preds = %do.end
  store i32 2, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %29 = load i32, ptr %nBits, align 4
  ret i32 %29
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define void @quantize_xrpow(ptr noundef %xr, ptr noundef %ix, ptr noundef %cod_info) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %istep = alloca double, align 8
  %j = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %x5 = alloca double, align 8
  %x6 = alloca double, align 8
  %x7 = alloca double, align 8
  %x8 = alloca double, align 8
  %rx1 = alloca i32, align 4
  %rx2 = alloca i32, align 4
  %rx3 = alloca i32, align 4
  %rx4 = alloca i32, align 4
  %rx5 = alloca i32, align 4
  %rx6 = alloca i32, align 4
  %rx7 = alloca i32, align 4
  %rx8 = alloca i32, align 4
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  %0 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %global_gain, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8
  store double %2, ptr %istep, align 8
  store i32 72, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %j, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %xr.addr, align 8
  %5 = load double, ptr %4, align 8
  %6 = load double, ptr %istep, align 8
  %mul = fmul double %5, %6
  store double %mul, ptr %x1, align 8
  %7 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %7, i32 1
  store ptr %incdec.ptr1, ptr %xr.addr, align 8
  %8 = load double, ptr %7, align 8
  %9 = load double, ptr %istep, align 8
  %mul2 = fmul double %8, %9
  store double %mul2, ptr %x2, align 8
  %10 = load double, ptr %x1, align 8
  %conv = fptosi double %10 to i32
  store i32 %conv, ptr %rx1, align 4
  %11 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %xr.addr, align 8
  %12 = load double, ptr %11, align 8
  %13 = load double, ptr %istep, align 8
  %mul4 = fmul double %12, %13
  store double %mul4, ptr %x3, align 8
  %14 = load double, ptr %x2, align 8
  %conv5 = fptosi double %14 to i32
  store i32 %conv5, ptr %rx2, align 4
  %15 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %15, i32 1
  store ptr %incdec.ptr6, ptr %xr.addr, align 8
  %16 = load double, ptr %15, align 8
  %17 = load double, ptr %istep, align 8
  %mul7 = fmul double %16, %17
  store double %mul7, ptr %x4, align 8
  %18 = load double, ptr %x3, align 8
  %conv8 = fptosi double %18 to i32
  store i32 %conv8, ptr %rx3, align 4
  %19 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr9 = getelementptr inbounds double, ptr %19, i32 1
  store ptr %incdec.ptr9, ptr %xr.addr, align 8
  %20 = load double, ptr %19, align 8
  %21 = load double, ptr %istep, align 8
  %mul10 = fmul double %20, %21
  store double %mul10, ptr %x5, align 8
  %22 = load double, ptr %x4, align 8
  %conv11 = fptosi double %22 to i32
  store i32 %conv11, ptr %rx4, align 4
  %23 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds double, ptr %23, i32 1
  store ptr %incdec.ptr12, ptr %xr.addr, align 8
  %24 = load double, ptr %23, align 8
  %25 = load double, ptr %istep, align 8
  %mul13 = fmul double %24, %25
  store double %mul13, ptr %x6, align 8
  %26 = load double, ptr %x5, align 8
  %conv14 = fptosi double %26 to i32
  store i32 %conv14, ptr %rx5, align 4
  %27 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr15 = getelementptr inbounds double, ptr %27, i32 1
  store ptr %incdec.ptr15, ptr %xr.addr, align 8
  %28 = load double, ptr %27, align 8
  %29 = load double, ptr %istep, align 8
  %mul16 = fmul double %28, %29
  store double %mul16, ptr %x7, align 8
  %30 = load double, ptr %x6, align 8
  %conv17 = fptosi double %30 to i32
  store i32 %conv17, ptr %rx6, align 4
  %31 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr18 = getelementptr inbounds double, ptr %31, i32 1
  store ptr %incdec.ptr18, ptr %xr.addr, align 8
  %32 = load double, ptr %31, align 8
  %33 = load double, ptr %istep, align 8
  %mul19 = fmul double %32, %33
  store double %mul19, ptr %x8, align 8
  %34 = load double, ptr %x7, align 8
  %conv20 = fptosi double %34 to i32
  store i32 %conv20, ptr %rx7, align 4
  %35 = load i32, ptr %rx1, align 4
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom21
  %36 = load double, ptr %arrayidx22, align 8
  %37 = load double, ptr %x1, align 8
  %add = fadd double %37, %36
  store double %add, ptr %x1, align 8
  %38 = load double, ptr %x8, align 8
  %conv23 = fptosi double %38 to i32
  store i32 %conv23, ptr %rx8, align 4
  %39 = load i32, ptr %rx2, align 4
  %idxprom24 = sext i32 %39 to i64
  %arrayidx25 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom24
  %40 = load double, ptr %arrayidx25, align 8
  %41 = load double, ptr %x2, align 8
  %add26 = fadd double %41, %40
  store double %add26, ptr %x2, align 8
  %42 = load double, ptr %x1, align 8
  %conv27 = fptosi double %42 to i32
  %43 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i32, ptr %43, i32 1
  store ptr %incdec.ptr28, ptr %ix.addr, align 8
  store i32 %conv27, ptr %43, align 4
  %44 = load i32, ptr %rx3, align 4
  %idxprom29 = sext i32 %44 to i64
  %arrayidx30 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom29
  %45 = load double, ptr %arrayidx30, align 8
  %46 = load double, ptr %x3, align 8
  %add31 = fadd double %46, %45
  store double %add31, ptr %x3, align 8
  %47 = load double, ptr %x2, align 8
  %conv32 = fptosi double %47 to i32
  %48 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i32, ptr %48, i32 1
  store ptr %incdec.ptr33, ptr %ix.addr, align 8
  store i32 %conv32, ptr %48, align 4
  %49 = load i32, ptr %rx4, align 4
  %idxprom34 = sext i32 %49 to i64
  %arrayidx35 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom34
  %50 = load double, ptr %arrayidx35, align 8
  %51 = load double, ptr %x4, align 8
  %add36 = fadd double %51, %50
  store double %add36, ptr %x4, align 8
  %52 = load double, ptr %x3, align 8
  %conv37 = fptosi double %52 to i32
  %53 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i32, ptr %53, i32 1
  store ptr %incdec.ptr38, ptr %ix.addr, align 8
  store i32 %conv37, ptr %53, align 4
  %54 = load i32, ptr %rx5, align 4
  %idxprom39 = sext i32 %54 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom39
  %55 = load double, ptr %arrayidx40, align 8
  %56 = load double, ptr %x5, align 8
  %add41 = fadd double %56, %55
  store double %add41, ptr %x5, align 8
  %57 = load double, ptr %x4, align 8
  %conv42 = fptosi double %57 to i32
  %58 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i32, ptr %58, i32 1
  store ptr %incdec.ptr43, ptr %ix.addr, align 8
  store i32 %conv42, ptr %58, align 4
  %59 = load i32, ptr %rx6, align 4
  %idxprom44 = sext i32 %59 to i64
  %arrayidx45 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom44
  %60 = load double, ptr %arrayidx45, align 8
  %61 = load double, ptr %x6, align 8
  %add46 = fadd double %61, %60
  store double %add46, ptr %x6, align 8
  %62 = load double, ptr %x5, align 8
  %conv47 = fptosi double %62 to i32
  %63 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i32, ptr %63, i32 1
  store ptr %incdec.ptr48, ptr %ix.addr, align 8
  store i32 %conv47, ptr %63, align 4
  %64 = load i32, ptr %rx7, align 4
  %idxprom49 = sext i32 %64 to i64
  %arrayidx50 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom49
  %65 = load double, ptr %arrayidx50, align 8
  %66 = load double, ptr %x7, align 8
  %add51 = fadd double %66, %65
  store double %add51, ptr %x7, align 8
  %67 = load double, ptr %x6, align 8
  %conv52 = fptosi double %67 to i32
  %68 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i32, ptr %68, i32 1
  store ptr %incdec.ptr53, ptr %ix.addr, align 8
  store i32 %conv52, ptr %68, align 4
  %69 = load i32, ptr %rx8, align 4
  %idxprom54 = sext i32 %69 to i64
  %arrayidx55 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom54
  %70 = load double, ptr %arrayidx55, align 8
  %71 = load double, ptr %x8, align 8
  %add56 = fadd double %71, %70
  store double %add56, ptr %x8, align 8
  %72 = load double, ptr %x7, align 8
  %conv57 = fptosi double %72 to i32
  %73 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i32, ptr %73, i32 1
  store ptr %incdec.ptr58, ptr %ix.addr, align 8
  store i32 %conv57, ptr %73, align 4
  %74 = load double, ptr %x8, align 8
  %conv59 = fptosi double %74 to i32
  %75 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i32, ptr %75, i32 1
  store ptr %incdec.ptr60, ptr %ix.addr, align 8
  store i32 %conv59, ptr %75, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, ptr %j, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @quantize_xrpow_ISO(ptr noundef %xr, ptr noundef %ix, ptr noundef %cod_info) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %istep = alloca double, align 8
  %j = alloca i32, align 4
  %compareval0 = alloca double, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  %0 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %global_gain, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8
  store double %2, ptr %istep, align 8
  %3 = load double, ptr %istep, align 8
  %div = fdiv double 5.946000e-01, %3
  store double %div, ptr %compareval0, align 8
  store i32 576, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %j, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double, ptr %compareval0, align 8
  %6 = load ptr, ptr %xr.addr, align 8
  %7 = load double, ptr %6, align 8
  %cmp1 = fcmp ogt double %5, %7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %9, i32 1
  store ptr %incdec.ptr2, ptr %xr.addr, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load double, ptr %istep, align 8
  %11 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %xr.addr, align 8
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %10, double %12, double 4.054000e-01)
  %conv = fptosi double %13 to i32
  %14 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr4, ptr %ix.addr, align 8
  store i32 %conv, ptr %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn }
attributes #7 = { noreturn }
attributes #8 = { nounwind readnone willreturn }

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
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
