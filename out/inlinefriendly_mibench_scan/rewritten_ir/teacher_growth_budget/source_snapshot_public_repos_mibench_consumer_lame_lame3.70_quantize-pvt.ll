; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_quantize-pvt.prepared.ll'
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
  %cod_info = alloca ptr, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 2
  store i32 0, ptr %resvDrain, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %0 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %for.cond, label %if.end

for.cond:                                         ; preds = %entry, %for.body
  %storemerge4 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  store i32 %storemerge4, ptr %i, align 4
  %cmp1 = icmp slt i32 %storemerge4, 23
  br i1 %cmp1, label %for.body, label %for.cond6

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 51
  %2 = load i32, ptr %samplerate_index, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 43
  %3 = load i32, ptr %version, align 8
  %mul = mul nsw i32 %3, 3
  %add = add nsw i32 %2, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom
  %4 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [23 x i32], ptr %arrayidx, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom4
  store i32 %5, ptr %arrayidx5, align 4
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.cond6:                                        ; preds = %for.cond, %for.body8
  %storemerge5 = phi i32 [ %inc20, %for.body8 ], [ 0, %for.cond ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp7 = icmp slt i32 %storemerge5, 14
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %7 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index9 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 51
  %8 = load i32, ptr %samplerate_index9, align 8
  %version10 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 43
  %9 = load i32, ptr %version10, align 8
  %mul11 = mul nsw i32 %9, 3
  %add12 = add nsw i32 %8, %mul11
  %idxprom13 = sext i32 %add12 to i64
  %10 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom13, i32 1, i64 %idxprom15
  %11 = load i32, ptr %arrayidx16, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom17
  store i32 %11, ptr %arrayidx18, align 4
  %12 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %12, 1
  br label %for.cond6, !llvm.loop !8

for.end21:                                        ; preds = %for.cond6
  %13 = load ptr, ptr %l3_side.addr, align 8
  store i32 0, ptr %13, align 8
  %14 = load ptr, ptr %gfp.addr, align 8
  call void @compute_ath(ptr noundef %14, ptr noundef nonnull @ATH_l, ptr noundef nonnull @ATH_s)
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.end21
  %storemerge6 = phi i32 [ 0, %for.end21 ], [ %inc28, %for.body24 ]
  store i32 %storemerge6, ptr %i, align 4
  %cmp23 = icmp slt i32 %storemerge6, 8208
  br i1 %cmp23, label %for.body24, label %for.cond30

for.body24:                                       ; preds = %for.cond22
  %15 = load i32, ptr %i, align 4
  %conv = sitofp i32 %15 to double
  %16 = call double @llvm.pow.f64(double %conv, double 0x3FF5555555555555)
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom25
  store double %16, ptr %arrayidx26, align 8
  %17 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %17, 1
  br label %for.cond22, !llvm.loop !9

for.cond30:                                       ; preds = %for.cond22, %for.body33
  %storemerge7 = phi i32 [ %inc46, %for.body33 ], [ 0, %for.cond22 ]
  store i32 %storemerge7, ptr %i, align 4
  %cmp31 = icmp slt i32 %storemerge7, 8207
  br i1 %cmp31, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond30
  %18 = load i32, ptr %i, align 4
  %add34 = add nsw i32 %18, 1
  %conv35 = sitofp i32 %add34 to double
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom36
  %19 = load double, ptr %arrayidx37, align 8
  %add38 = add nsw i32 %18, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom39
  %20 = load double, ptr %arrayidx40, align 8
  %add41 = fadd double %19, %20
  %mul42 = fmul double %add41, 5.000000e-01
  %21 = call double @llvm.pow.f64(double %mul42, double 7.500000e-01)
  %sub = fsub double %conv35, %21
  %22 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom43
  store double %sub, ptr %arrayidx44, align 8
  %23 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %23, 1
  br label %for.cond30, !llvm.loop !10

for.end47:                                        ; preds = %for.cond30
  %24 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %24 to i64
  %arrayidx49 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom48
  store double 5.000000e-01, ptr %arrayidx49, align 8
  store double 0.000000e+00, ptr @adj43asm, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.body53, %for.end47
  %storemerge8 = phi i32 [ 1, %for.end47 ], [ %inc67, %for.body53 ]
  store i32 %storemerge8, ptr %i, align 4
  %cmp51 = icmp slt i32 %storemerge8, 8208
  br i1 %cmp51, label %for.body53, label %for.cond69

for.body53:                                       ; preds = %for.cond50
  %25 = load i32, ptr %i, align 4
  %conv54 = sitofp i32 %25 to double
  %sub55 = fadd double %conv54, -5.000000e-01
  %sub56 = add nsw i32 %25, -1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom57
  %26 = load double, ptr %arrayidx58, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %27 to i64
  %arrayidx60 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom59
  %28 = load double, ptr %arrayidx60, align 8
  %add61 = fadd double %26, %28
  %mul62 = fmul double %add61, 5.000000e-01
  %29 = call double @llvm.pow.f64(double %mul62, double 7.500000e-01)
  %sub63 = fsub double %sub55, %29
  %30 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %30 to i64
  %arrayidx65 = getelementptr inbounds [8208 x double], ptr @adj43asm, i64 0, i64 %idxprom64
  store double %sub63, ptr %arrayidx65, align 8
  %31 = load i32, ptr %i, align 4
  %inc67 = add nsw i32 %31, 1
  br label %for.cond50, !llvm.loop !11

for.cond69:                                       ; preds = %for.cond50, %for.body72
  %storemerge9 = phi i32 [ %inc84, %for.body72 ], [ 0, %for.cond50 ]
  store i32 %storemerge9, ptr %i, align 4
  %cmp70 = icmp slt i32 %storemerge9, 256
  br i1 %cmp70, label %for.body72, label %if.end

for.body72:                                       ; preds = %for.cond69
  %32 = load i32, ptr %i, align 4
  %sub73 = add nsw i32 %32, -210
  %conv74 = sitofp i32 %sub73 to double
  %mul75 = fmul double %conv74, -1.875000e-01
  %exp2 = call double @llvm.exp2.f64(double %mul75)
  %idxprom76 = sext i32 %32 to i64
  %arrayidx77 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom76
  store double %exp2, ptr %arrayidx77, align 8
  %33 = load i32, ptr %i, align 4
  %sub78 = add nsw i32 %33, -210
  %conv79 = sitofp i32 %sub78 to double
  %mul80 = fmul double %conv79, 2.500000e-01
  %exp213 = call double @llvm.exp2.f64(double %mul80)
  %idxprom81 = sext i32 %33 to i64
  %arrayidx82 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom81
  store double %exp213, ptr %arrayidx82, align 8
  %34 = load i32, ptr %i, align 4
  %inc84 = add nsw i32 %34, 1
  br label %for.cond69, !llvm.loop !12

if.end:                                           ; preds = %for.cond69, %entry
  store i32 0, ptr @convert_mdct, align 4
  store i32 0, ptr @reduce_sidechannel, align 4
  %35 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %35, i64 0, i32 52
  %36 = load i32, ptr %mode_ext, align 4
  %cmp86 = icmp eq i32 %36, 2
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end
  store i32 1, ptr @convert_mdct, align 4
  store i32 1, ptr @reduce_sidechannel, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc113, %if.end89
  %storemerge = phi i32 [ 0, %if.end89 ], [ %inc114, %for.inc113 ]
  store i32 %storemerge, ptr %gr, align 4
  %37 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %37, i64 0, i32 45
  %38 = load i32, ptr %mode_gr, align 8
  %cmp91 = icmp slt i32 %storemerge, %38
  br i1 %cmp91, label %for.cond94, label %for.cond116

for.cond94:                                       ; preds = %for.cond90, %for.inc110
  %storemerge3 = phi i32 [ %inc111, %for.inc110 ], [ 0, %for.cond90 ]
  store i32 %storemerge3, ptr %ch, align 4
  %39 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %39, i64 0, i32 46
  %40 = load i32, ptr %stereo, align 4
  %cmp95 = icmp slt i32 %storemerge3, %40
  br i1 %cmp95, label %for.body97, label %for.inc113

for.body97:                                       ; preds = %for.cond94
  %41 = load ptr, ptr %l3_side.addr, align 8
  %42 = load i32, ptr %gr, align 4
  %idxprom99 = sext i32 %42 to i64
  %arrayidx100 = getelementptr inbounds %struct.III_side_info_t, ptr %41, i64 0, i32 4, i64 %idxprom99
  %43 = load i32, ptr %ch, align 4
  %idxprom102 = sext i32 %43 to i64
  %arrayidx103 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx100, i64 0, i64 %idxprom102
  store ptr %arrayidx103, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx103, i64 0, i32 6
  %44 = load i32, ptr %block_type, align 8
  %cmp104 = icmp eq i32 %44, 2
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %for.body97
  %45 = load ptr, ptr %cod_info, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 16
  store i32 0, ptr %sfb_lmax, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 17
  store i32 0, ptr %sfb_smax, align 4
  br label %for.inc110

if.else:                                          ; preds = %for.body97
  %46 = load ptr, ptr %cod_info, align 8
  %sfb_lmax107 = getelementptr inbounds %struct.gr_info, ptr %46, i64 0, i32 16
  store i32 21, ptr %sfb_lmax107, align 8
  %sfb_smax108 = getelementptr inbounds %struct.gr_info, ptr %46, i64 0, i32 17
  store i32 12, ptr %sfb_smax108, align 4
  br label %for.inc110

for.inc110:                                       ; preds = %if.then106, %if.else
  %47 = load i32, ptr %ch, align 4
  %inc111 = add nsw i32 %47, 1
  br label %for.cond94, !llvm.loop !13

for.inc113:                                       ; preds = %for.cond94
  %48 = load i32, ptr %gr, align 4
  %inc114 = add nsw i32 %48, 1
  br label %for.cond90, !llvm.loop !14

for.cond116:                                      ; preds = %for.cond90, %for.inc132
  %storemerge1 = phi i32 [ %inc133, %for.inc132 ], [ 0, %for.cond90 ]
  store i32 %storemerge1, ptr %ch, align 4
  %49 = load ptr, ptr %gfp.addr, align 8
  %stereo117 = getelementptr inbounds %struct.lame_global_flags, ptr %49, i64 0, i32 46
  %50 = load i32, ptr %stereo117, align 4
  %cmp118 = icmp slt i32 %storemerge1, %50
  br i1 %cmp118, label %for.cond121, label %for.end134

for.cond121:                                      ; preds = %for.cond116, %for.body124
  %storemerge2 = phi i32 [ %inc130, %for.body124 ], [ 0, %for.cond116 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp122 = icmp slt i32 %storemerge2, 4
  br i1 %cmp122, label %for.body124, label %for.inc132

for.body124:                                      ; preds = %for.cond121
  %51 = load ptr, ptr %l3_side.addr, align 8
  %52 = load i32, ptr %ch, align 4
  %idxprom125 = sext i32 %52 to i64
  %53 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %53 to i64
  %arrayidx128 = getelementptr inbounds %struct.III_side_info_t, ptr %51, i64 0, i32 3, i64 %idxprom125, i64 %idxprom127
  store i32 0, ptr %arrayidx128, align 4
  %54 = load i32, ptr %i, align 4
  %inc130 = add nsw i32 %54, 1
  br label %for.cond121, !llvm.loop !15

for.inc132:                                       ; preds = %for.cond121
  %55 = load i32, ptr %ch, align 4
  %inc133 = add nsw i32 %55, 1
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
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %0 = load i32, ptr %out_samplerate, align 8
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, ptr %samp_freq, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ]
  store i32 %storemerge, ptr %sfb, align 4
  %cmp = icmp slt i32 %storemerge, 21
  br i1 %cmp, label %for.body, label %for.cond23

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %start, align 4
  %add = add nsw i32 %1, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom2
  %3 = load i32, ptr %arrayidx3, align 4
  store i32 %3, ptr %end, align 4
  %4 = load ptr, ptr %ATH_l.addr, align 8
  %5 = load i32, ptr %sfb, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds double, ptr %4, i64 %idxprom4
  store double 0x547D42AEA2879F2E, ptr %arrayidx5, align 8
  %6 = load i32, ptr %start, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %cond.end, %for.body
  %storemerge3 = phi i32 [ %6, %for.body ], [ %inc, %cond.end ]
  store i32 %storemerge3, ptr %i, align 4
  %7 = load i32, ptr %end, align 4
  %cmp7 = icmp slt i32 %storemerge3, %7
  br i1 %cmp7, label %for.body9, label %for.inc20

for.body9:                                        ; preds = %for.cond6
  %8 = load ptr, ptr %gfp.addr, align 8
  %9 = load double, ptr %samp_freq, align 8
  %10 = load i32, ptr %i, align 4
  %conv10 = sitofp i32 %10 to double
  %mul = fmul double %9, %conv10
  %div11 = fdiv double %mul, 1.152000e+03
  %call = call double @ATHformula(ptr noundef %8, double noundef %div11)
  store double %call, ptr %ATH_f, align 8
  %11 = load ptr, ptr %ATH_l.addr, align 8
  %12 = load i32, ptr %sfb, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %11, i64 %idxprom12
  %13 = load double, ptr %arrayidx13, align 8
  %cmp14 = fcmp olt double %13, %call
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body9
  %14 = load ptr, ptr %ATH_l.addr, align 8
  %15 = load i32, ptr %sfb, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %14, i64 %idxprom16
  %16 = load double, ptr %arrayidx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body9
  %17 = load double, ptr %ATH_f, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ %17, %cond.false ]
  %18 = load ptr, ptr %ATH_l.addr, align 8
  %19 = load i32, ptr %sfb, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %18, i64 %idxprom18
  store double %cond, ptr %arrayidx19, align 8
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  br label %for.cond6, !llvm.loop !17

for.inc20:                                        ; preds = %for.cond6
  %21 = load i32, ptr %sfb, align 4
  %inc21 = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !18

for.cond23:                                       ; preds = %for.cond, %for.inc57
  %storemerge1 = phi i32 [ %inc58, %for.inc57 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %sfb, align 4
  %cmp24 = icmp slt i32 %storemerge1, 12
  br i1 %cmp24, label %for.body26, label %for.end59

for.body26:                                       ; preds = %for.cond23
  %22 = load i32, ptr %sfb, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom27
  %23 = load i32, ptr %arrayidx28, align 4
  store i32 %23, ptr %start, align 4
  %add29 = add nsw i32 %22, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom30
  %24 = load i32, ptr %arrayidx31, align 4
  store i32 %24, ptr %end, align 4
  %25 = load ptr, ptr %ATH_s.addr, align 8
  %26 = load i32, ptr %sfb, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds double, ptr %25, i64 %idxprom32
  store double 0x547D42AEA2879F2E, ptr %arrayidx33, align 8
  %27 = load i32, ptr %start, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %cond.end50, %for.body26
  %storemerge2 = phi i32 [ %27, %for.body26 ], [ %inc55, %cond.end50 ]
  store i32 %storemerge2, ptr %i, align 4
  %28 = load i32, ptr %end, align 4
  %cmp35 = icmp slt i32 %storemerge2, %28
  br i1 %cmp35, label %for.body37, label %for.inc57

for.body37:                                       ; preds = %for.cond34
  %29 = load ptr, ptr %gfp.addr, align 8
  %30 = load double, ptr %samp_freq, align 8
  %31 = load i32, ptr %i, align 4
  %conv38 = sitofp i32 %31 to double
  %mul39 = fmul double %30, %conv38
  %div40 = fdiv double %mul39, 3.840000e+02
  %call41 = call double @ATHformula(ptr noundef %29, double noundef %div40)
  store double %call41, ptr %ATH_f, align 8
  %32 = load ptr, ptr %ATH_s.addr, align 8
  %33 = load i32, ptr %sfb, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds double, ptr %32, i64 %idxprom42
  %34 = load double, ptr %arrayidx43, align 8
  %cmp44 = fcmp olt double %34, %call41
  br i1 %cmp44, label %cond.true46, label %cond.false49

cond.true46:                                      ; preds = %for.body37
  %35 = load ptr, ptr %ATH_s.addr, align 8
  %36 = load i32, ptr %sfb, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %35, i64 %idxprom47
  %37 = load double, ptr %arrayidx48, align 8
  br label %cond.end50

cond.false49:                                     ; preds = %for.body37
  %38 = load double, ptr %ATH_f, align 8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true46
  %cond51 = phi double [ %37, %cond.true46 ], [ %38, %cond.false49 ]
  %39 = load ptr, ptr %ATH_s.addr, align 8
  %40 = load i32, ptr %sfb, align 4
  %idxprom52 = sext i32 %40 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %39, i64 %idxprom52
  store double %cond51, ptr %arrayidx53, align 8
  %41 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %41, 1
  br label %for.cond34, !llvm.loop !19

for.inc57:                                        ; preds = %for.cond34
  %42 = load i32, ptr %sfb, align 4
  %inc58 = add nsw i32 %42, 1
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
  %cmp = fcmp olt double %f, 2.000000e-02
  %0 = load double, ptr %f.addr, align 8
  %cond = select i1 %cmp, double 2.000000e-02, double %0
  store double %cond, ptr %f.addr, align 8
  %1 = call double @llvm.pow.f64(double %cond, double -8.000000e-01)
  %sub = fadd double %cond, -3.300000e+00
  %square = fmul double %sub, %sub
  %mul1 = fmul double %square, -6.000000e-01
  %2 = call double @llvm.exp.f64(double %mul1)
  %neg = fmul double %2, -6.500000e+00
  %3 = call double @llvm.fmuladd.f64(double %1, double 3.640000e+00, double %neg)
  %4 = load double, ptr %f.addr, align 8
  %5 = call double @llvm.pow.f64(double %4, double 4.000000e+00)
  %6 = call double @llvm.fmuladd.f64(double %5, double 1.000000e-03, double %3)
  store double %6, ptr %ath, align 8
  %7 = load ptr, ptr %gfp.addr, align 8
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 34
  %8 = load i32, ptr %noATH, align 4
  %tobool.not = icmp eq i32 %8, 0
  %9 = load double, ptr %ath, align 8
  %sub4 = fadd double %9, -1.140000e+02
  %10 = load double, ptr %ath, align 8
  %sub3 = fadd double %10, -2.000000e+02
  %storemerge = select i1 %tobool.not, double %sub4, double %sub3
  store double %storemerge, ptr %ath, align 8
  %div = fdiv double %storemerge, 1.000000e+01
  %__exp10 = call double @__exp10(double %div) #7
  store double %__exp10, ptr %ath, align 8
  ret double %__exp10
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %xr_org.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [576 x double], ptr %0, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx1, align 8
  store double %2, ptr %l, align 8
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [576 x double], ptr %0, i64 1, i64 %idxprom3
  %3 = load double, ptr %arrayidx4, align 8
  store double %3, ptr %r, align 8
  %add = fadd double %2, %3
  %mul = fmul double %add, 0x3FE6A09E667F3BCD
  %4 = load ptr, ptr %xr.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [576 x double], ptr %4, i64 0, i64 %idxprom6
  store double %mul, ptr %arrayidx7, align 8
  %6 = load double, ptr %l, align 8
  %7 = load double, ptr %r, align 8
  %sub = fsub double %6, %7
  %mul8 = fmul double %sub, 0x3FE6A09E667F3BCD
  %8 = load ptr, ptr %xr.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [576 x double], ptr %8, i64 1, i64 %idxprom10
  store double %mul8, ptr %arrayidx11, align 8
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
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
  store i32 %gr, ptr %gr.addr, align 4
  call void @ResvMaxBits(i32 noundef %mean_bits, ptr noundef nonnull %tbits, ptr noundef nonnull %extra_bits, i32 noundef %gr) #7
  br label %for.cond

for.cond:                                         ; preds = %if.end57, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end57 ]
  store i32 %storemerge, ptr %ch, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %1 = load i32, ptr %stereo, align 4
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %l3_side.addr, align 8
  %3 = load i32, ptr %gr.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.III_side_info_t, ptr %2, i64 0, i32 4, i64 %idxprom
  %4 = load i32, ptr %ch, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx, i64 0, i64 %idxprom3
  store ptr %arrayidx4, ptr %cod_info, align 8
  %5 = load i32, ptr %tbits, align 4
  %6 = load ptr, ptr %gfp.addr, align 8
  %stereo5 = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 46
  %7 = load i32, ptr %stereo5, align 4
  %div = sdiv i32 %5, %7
  %8 = load ptr, ptr %targ_bits.addr, align 8
  %9 = load i32, ptr %ch, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 %idxprom6
  store i32 %div, ptr %arrayidx7, align 4
  store i32 0, ptr %bits, align 4
  %10 = load ptr, ptr %pe.addr, align 8
  %11 = load i32, ptr %gr.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, ptr %ch, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %10, i64 %idxprom8, i64 %idxprom10
  %13 = load double, ptr %arrayidx11, align 8
  %sub = fadd double %13, -7.500000e+02
  %div12 = fdiv double %sub, 1.550000e+00
  %conv = fptosi double %div12 to i32
  %14 = load i32, ptr %ch, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom13
  store i32 %conv, ptr %arrayidx14, align 4
  %15 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %15, i64 0, i32 6
  %16 = load i32, ptr %block_type, align 8
  %cmp15 = icmp eq i32 %16, 2
  br i1 %cmp15, label %if.then, label %if.end24

if.then:                                          ; preds = %for.body
  %17 = load i32, ptr %ch, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom17
  %18 = load i32, ptr %arrayidx18, align 4
  %cmp19 = icmp slt i32 %18, 500
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then
  %19 = load i32, ptr %ch, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom22
  store i32 500, ptr %arrayidx23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then, %if.then21, %for.body
  %20 = load i32, ptr %ch, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4
  %cmp27 = icmp slt i32 %21, 0
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  %22 = load i32, ptr %ch, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom30
  store i32 0, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end24
  %23 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom33
  %24 = load i32, ptr %arrayidx34, align 4
  %25 = load i32, ptr %bits, align 4
  %add = add nsw i32 %25, %24
  store i32 %add, ptr %bits, align 4
  %26 = load i32, ptr %extra_bits, align 4
  %cmp35 = icmp sgt i32 %add, %26
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.end32
  %27 = load i32, ptr %extra_bits, align 4
  %28 = load i32, ptr %ch, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom38
  %29 = load i32, ptr %arrayidx39, align 4
  %mul = mul nsw i32 %27, %29
  %30 = load i32, ptr %bits, align 4
  %div40 = sdiv i32 %mul, %30
  %31 = load i32, ptr %ch, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom41
  store i32 %div40, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end32
  %32 = load ptr, ptr %targ_bits.addr, align 8
  %33 = load i32, ptr %ch, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %32, i64 %idxprom44
  %34 = load i32, ptr %arrayidx45, align 4
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom46
  %35 = load i32, ptr %arrayidx47, align 4
  %add48 = add nsw i32 %34, %35
  %cmp49 = icmp sgt i32 %add48, 4095
  br i1 %cmp49, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.end43
  %36 = load ptr, ptr %targ_bits.addr, align 8
  %37 = load i32, ptr %ch, align 4
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %36, i64 %idxprom52
  %38 = load i32, ptr %arrayidx53, align 4
  %sub54 = sub nsw i32 4095, %38
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom55
  store i32 %sub54, ptr %arrayidx56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end43
  %39 = load ptr, ptr %targ_bits.addr, align 8
  %40 = load i32, ptr %ch, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %39, i64 %idxprom58
  %41 = load i32, ptr %arrayidx59, align 4
  %idxprom60 = sext i32 %40 to i64
  %arrayidx61 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom60
  %42 = load i32, ptr %arrayidx61, align 4
  %add62 = add nsw i32 %41, %42
  %43 = load ptr, ptr %targ_bits.addr, align 8
  %44 = load i32, ptr %ch, align 4
  %idxprom63 = sext i32 %44 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %43, i64 %idxprom63
  store i32 %add62, ptr %arrayidx64, align 4
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [2 x i32], ptr %add_bits, i64 0, i64 %idxprom65
  %45 = load i32, ptr %arrayidx66, align 4
  %46 = load i32, ptr %extra_bits, align 4
  %sub67 = sub nsw i32 %46, %45
  store i32 %sub67, ptr %extra_bits, align 4
  %47 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %47, 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @ResvMaxBits(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @reduce_side(ptr noundef %targ_bits, double noundef %ms_ener_ratio, i32 noundef %mean_bits) #0 {
entry:
  %targ_bits.addr = alloca ptr, align 8
  %mean_bits.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %numchn = alloca i32, align 4
  %fac = alloca float, align 4
  %max_bits = alloca i32, align 4
  store ptr %targ_bits, ptr %targ_bits.addr, align 8
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  store i32 2, ptr %numchn, align 4
  %sub = fsub double 5.000000e-01, %ms_ener_ratio
  %mul = fmul double %sub, 3.300000e-01
  %div = fmul double %mul, 2.000000e+00
  %conv = fptrunc double %div to float
  %cmp = fcmp olt float %conv, 0.000000e+00
  %storemerge1 = select i1 %cmp, float 0.000000e+00, float %conv
  store float %storemerge1, ptr %fac, align 4
  %0 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1
  %1 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp sgt i32 %1, 124
  br i1 %cmp2, label %if.then4, label %if.end31

if.then4:                                         ; preds = %entry
  %2 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx5, align 4
  %conv6 = sitofp i32 %3 to float
  %conv8 = sitofp i32 %3 to float
  %4 = load float, ptr %fac, align 4
  %neg = fneg float %conv8
  %5 = call float @llvm.fmuladd.f32(float %neg, float %4, float %conv6)
  %cmp10 = fcmp ogt float %5, 1.250000e+02
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then4
  %6 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx13, align 4
  %conv14 = sitofp i32 %7 to float
  %8 = load float, ptr %fac, align 4
  %9 = load i32, ptr %6, align 4
  %conv17 = sitofp i32 %9 to float
  %10 = call float @llvm.fmuladd.f32(float %conv14, float %8, float %conv17)
  %conv18 = fptosi float %10 to i32
  store i32 %conv18, ptr %6, align 4
  %11 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %11, i64 1
  %12 = load i32, ptr %arrayidx19, align 4
  %conv20 = sitofp i32 %12 to float
  %13 = load float, ptr %fac, align 4
  %arrayidx22 = getelementptr inbounds i32, ptr %11, i64 1
  %conv23 = sitofp i32 %12 to float
  %neg24 = fneg float %conv20
  %14 = call float @llvm.fmuladd.f32(float %neg24, float %13, float %conv23)
  %conv25 = fptosi float %14 to i32
  store i32 %conv25, ptr %arrayidx22, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then4
  %15 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %15, i64 1
  %16 = load i32, ptr %arrayidx26, align 4
  %sub27 = add nsw i32 %16, -125
  %17 = load i32, ptr %15, align 4
  %add = add nsw i32 %17, %sub27
  store i32 %add, ptr %15, align 4
  %18 = load ptr, ptr %targ_bits.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 125, ptr %arrayidx29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then12, %if.else, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %storemerge = phi i32 [ 0, %if.end31 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ch, align 4
  %19 = load i32, ptr %numchn, align 4
  %cmp32 = icmp slt i32 %storemerge, %19
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, ptr %mean_bits.addr, align 4
  %cmp36 = icmp sgt i32 %20, 5791
  br i1 %cmp36, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %21 = load i32, ptr %mean_bits.addr, align 4
  %div38 = sdiv i32 %21, 2
  %add39 = add nsw i32 %div38, 1200
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %add39, %cond.false ], [ 4095, %for.body ]
  store i32 %cond, ptr %max_bits, align 4
  %22 = load ptr, ptr %targ_bits.addr, align 8
  %23 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx40, align 4
  %cmp41 = icmp sgt i32 %24, %cond
  br i1 %cmp41, label %if.then43, label %for.inc

if.then43:                                        ; preds = %cond.end
  %25 = load i32, ptr %max_bits, align 4
  %26 = load ptr, ptr %targ_bits.addr, align 8
  %27 = load i32, ptr %ch, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %26, i64 %idxprom44
  store i32 %25, ptr %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then43
  %28 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %28, 1
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
  %tobool.not = icmp sgt i32 %max_bits, -1
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.inner_loop, ptr noundef nonnull @.str, i32 noundef 431, ptr noundef nonnull @.str.1) #8
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %global_gain, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %global_gain, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %cond.end
  %2 = load ptr, ptr %cod_info.addr, align 8
  %global_gain1 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %global_gain1, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %global_gain1, align 4
  %4 = load ptr, ptr %gfp.addr, align 8
  %5 = load ptr, ptr %l3_enc.addr, align 8
  %6 = load ptr, ptr %xrpow.addr, align 8
  %7 = load ptr, ptr %cod_info.addr, align 8
  %call = call i32 @count_bits(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #7
  store i32 %call, ptr %bits, align 4
  %8 = load i32, ptr %bits, align 4
  %9 = load i32, ptr %max_bits.addr, align 4
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !24

do.end:                                           ; preds = %do.body
  %10 = load i32, ptr %bits, align 4
  ret i32 %10
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
  %block_type = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 6
  %0 = load i32, ptr %block_type, align 8
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @scale_bitcount.slen1_tab, ptr %tab, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %if.then
  %storemerge5 = phi i32 [ 0, %if.then ], [ %inc34, %for.inc33 ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp1 = icmp slt i32 %storemerge5, 3
  br i1 %cmp1, label %for.cond2, label %if.end96

for.cond2:                                        ; preds = %for.cond, %for.inc
  %storemerge6 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  store i32 %storemerge6, ptr %sfb, align 4
  %cmp3 = icmp slt i32 %storemerge6, 6
  br i1 %cmp3, label %for.body4, label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %1 = load ptr, ptr %scalefac.addr, align 8
  %2 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds %struct.III_scalefac_t, ptr %1, i64 0, i32 1, i64 %idxprom, i64 %idxprom5
  %4 = load i32, ptr %arrayidx6, align 4
  %5 = load i32, ptr %max_slen1, align 4
  %cmp7 = icmp sgt i32 %4, %5
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body4
  %6 = load ptr, ptr %scalefac.addr, align 8
  %7 = load i32, ptr %sfb, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds %struct.III_scalefac_t, ptr %6, i64 0, i32 1, i64 %idxprom10, i64 %idxprom12
  %9 = load i32, ptr %arrayidx13, align 4
  store i32 %9, ptr %max_slen1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then8
  %10 = load i32, ptr %sfb, align 4
  %inc = add nsw i32 %10, 1
  br label %for.cond2, !llvm.loop !25

for.cond14:                                       ; preds = %for.cond2, %for.inc30
  %storemerge7 = phi i32 [ %inc31, %for.inc30 ], [ 6, %for.cond2 ]
  store i32 %storemerge7, ptr %sfb, align 4
  %cmp15 = icmp slt i32 %storemerge7, 12
  br i1 %cmp15, label %for.body16, label %for.inc33

for.body16:                                       ; preds = %for.cond14
  %11 = load ptr, ptr %scalefac.addr, align 8
  %12 = load i32, ptr %sfb, align 4
  %idxprom18 = sext i32 %12 to i64
  %13 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds %struct.III_scalefac_t, ptr %11, i64 0, i32 1, i64 %idxprom18, i64 %idxprom20
  %14 = load i32, ptr %arrayidx21, align 4
  %15 = load i32, ptr %max_slen2, align 4
  %cmp22 = icmp sgt i32 %14, %15
  br i1 %cmp22, label %if.then23, label %for.inc30

if.then23:                                        ; preds = %for.body16
  %16 = load ptr, ptr %scalefac.addr, align 8
  %17 = load i32, ptr %sfb, align 4
  %idxprom25 = sext i32 %17 to i64
  %18 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds %struct.III_scalefac_t, ptr %16, i64 0, i32 1, i64 %idxprom25, i64 %idxprom27
  %19 = load i32, ptr %arrayidx28, align 4
  store i32 %19, ptr %max_slen2, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body16, %if.then23
  %20 = load i32, ptr %sfb, align 4
  %inc31 = add nsw i32 %20, 1
  br label %for.cond14, !llvm.loop !26

for.inc33:                                        ; preds = %for.cond14
  %21 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !27

if.else:                                          ; preds = %entry
  store ptr @scale_bitcount.slen2_tab, ptr %tab, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %if.else
  %storemerge = phi i32 [ 0, %if.else ], [ %inc48, %for.inc47 ]
  store i32 %storemerge, ptr %sfb, align 4
  %cmp37 = icmp slt i32 %storemerge, 11
  br i1 %cmp37, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond36
  %22 = load ptr, ptr %scalefac.addr, align 8
  %23 = load i32, ptr %sfb, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [22 x i32], ptr %22, i64 0, i64 %idxprom39
  %24 = load i32, ptr %arrayidx40, align 4
  %25 = load i32, ptr %max_slen1, align 4
  %cmp41 = icmp sgt i32 %24, %25
  br i1 %cmp41, label %if.then42, label %for.inc47

if.then42:                                        ; preds = %for.body38
  %26 = load ptr, ptr %scalefac.addr, align 8
  %27 = load i32, ptr %sfb, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [22 x i32], ptr %26, i64 0, i64 %idxprom44
  %28 = load i32, ptr %arrayidx45, align 4
  store i32 %28, ptr %max_slen1, align 4
  br label %for.inc47

for.inc47:                                        ; preds = %for.body38, %if.then42
  %29 = load i32, ptr %sfb, align 4
  %inc48 = add nsw i32 %29, 1
  br label %for.cond36, !llvm.loop !28

for.end49:                                        ; preds = %for.cond36
  %30 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %30, i64 0, i32 12
  %31 = load i32, ptr %preflag, align 8
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %for.cond51, label %if.end80

for.cond51:                                       ; preds = %for.end49, %for.inc62
  %storemerge1 = phi i32 [ %inc63, %for.inc62 ], [ 11, %for.end49 ]
  store i32 %storemerge1, ptr %sfb, align 4
  %cmp52 = icmp slt i32 %storemerge1, 21
  br i1 %cmp52, label %for.body53, label %for.end64

for.body53:                                       ; preds = %for.cond51
  %32 = load ptr, ptr %scalefac.addr, align 8
  %33 = load i32, ptr %sfb, align 4
  %idxprom55 = sext i32 %33 to i64
  %arrayidx56 = getelementptr inbounds [22 x i32], ptr %32, i64 0, i64 %idxprom55
  %34 = load i32, ptr %arrayidx56, align 4
  %idxprom57 = sext i32 %33 to i64
  %arrayidx58 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom57
  %35 = load i32, ptr %arrayidx58, align 4
  %cmp59 = icmp slt i32 %34, %35
  br i1 %cmp59, label %for.end64, label %for.inc62

for.inc62:                                        ; preds = %for.body53
  %36 = load i32, ptr %sfb, align 4
  %inc63 = add nsw i32 %36, 1
  br label %for.cond51, !llvm.loop !29

for.end64:                                        ; preds = %for.body53, %for.cond51
  %37 = load i32, ptr %sfb, align 4
  %cmp65 = icmp eq i32 %37, 21
  br i1 %cmp65, label %if.then66, label %if.end80

if.then66:                                        ; preds = %for.end64
  %38 = load ptr, ptr %cod_info.addr, align 8
  %preflag67 = getelementptr inbounds %struct.gr_info, ptr %38, i64 0, i32 12
  store i32 1, ptr %preflag67, align 8
  br label %for.cond68

for.cond68:                                       ; preds = %for.body70, %if.then66
  %storemerge4 = phi i32 [ 11, %if.then66 ], [ %inc77, %for.body70 ]
  store i32 %storemerge4, ptr %sfb, align 4
  %cmp69 = icmp slt i32 %storemerge4, 21
  br i1 %cmp69, label %for.body70, label %if.end80

for.body70:                                       ; preds = %for.cond68
  %39 = load i32, ptr %sfb, align 4
  %idxprom71 = sext i32 %39 to i64
  %arrayidx72 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom71
  %40 = load i32, ptr %arrayidx72, align 4
  %41 = load ptr, ptr %scalefac.addr, align 8
  %idxprom74 = sext i32 %39 to i64
  %arrayidx75 = getelementptr inbounds [22 x i32], ptr %41, i64 0, i64 %idxprom74
  %42 = load i32, ptr %arrayidx75, align 4
  %sub = sub nsw i32 %42, %40
  store i32 %sub, ptr %arrayidx75, align 4
  %43 = load i32, ptr %sfb, align 4
  %inc77 = add nsw i32 %43, 1
  br label %for.cond68, !llvm.loop !30

if.end80:                                         ; preds = %for.end64, %for.cond68, %for.end49
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc93, %if.end80
  %storemerge2 = phi i32 [ 11, %if.end80 ], [ %inc94, %for.inc93 ]
  store i32 %storemerge2, ptr %sfb, align 4
  %cmp82 = icmp slt i32 %storemerge2, 21
  br i1 %cmp82, label %for.body83, label %if.end96

for.body83:                                       ; preds = %for.cond81
  %44 = load ptr, ptr %scalefac.addr, align 8
  %45 = load i32, ptr %sfb, align 4
  %idxprom85 = sext i32 %45 to i64
  %arrayidx86 = getelementptr inbounds [22 x i32], ptr %44, i64 0, i64 %idxprom85
  %46 = load i32, ptr %arrayidx86, align 4
  %47 = load i32, ptr %max_slen2, align 4
  %cmp87 = icmp sgt i32 %46, %47
  br i1 %cmp87, label %if.then88, label %for.inc93

if.then88:                                        ; preds = %for.body83
  %48 = load ptr, ptr %scalefac.addr, align 8
  %49 = load i32, ptr %sfb, align 4
  %idxprom90 = sext i32 %49 to i64
  %arrayidx91 = getelementptr inbounds [22 x i32], ptr %48, i64 0, i64 %idxprom90
  %50 = load i32, ptr %arrayidx91, align 4
  store i32 %50, ptr %max_slen2, align 4
  br label %for.inc93

for.inc93:                                        ; preds = %for.body83, %if.then88
  %51 = load i32, ptr %sfb, align 4
  %inc94 = add nsw i32 %51, 1
  br label %for.cond81, !llvm.loop !31

if.end96:                                         ; preds = %for.cond81, %for.cond
  %52 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %52, i64 0, i32 15
  store i32 100000, ptr %part2_length, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc116, %if.end96
  %storemerge3 = phi i32 [ 0, %if.end96 ], [ %inc117, %for.inc116 ]
  store i32 %storemerge3, ptr %k, align 4
  %cmp98 = icmp slt i32 %storemerge3, 16
  br i1 %cmp98, label %for.body99, label %for.end118

for.body99:                                       ; preds = %for.cond97
  %53 = load i32, ptr %max_slen1, align 4
  %54 = load i32, ptr %k, align 4
  %idxprom100 = sext i32 %54 to i64
  %arrayidx101 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen1, i64 0, i64 %idxprom100
  %55 = load i32, ptr %arrayidx101, align 4
  %cmp102 = icmp slt i32 %53, %55
  br i1 %cmp102, label %land.lhs.true, label %for.inc116

land.lhs.true:                                    ; preds = %for.body99
  %56 = load i32, ptr %max_slen2, align 4
  %57 = load i32, ptr %k, align 4
  %idxprom103 = sext i32 %57 to i64
  %arrayidx104 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen2, i64 0, i64 %idxprom103
  %58 = load i32, ptr %arrayidx104, align 4
  %cmp105 = icmp slt i32 %56, %58
  br i1 %cmp105, label %land.lhs.true106, label %for.inc116

land.lhs.true106:                                 ; preds = %land.lhs.true
  %59 = load ptr, ptr %cod_info.addr, align 8
  %part2_length107 = getelementptr inbounds %struct.gr_info, ptr %59, i64 0, i32 15
  %60 = load i32, ptr %part2_length107, align 4
  %61 = load ptr, ptr %tab, align 8
  %62 = load i32, ptr %k, align 4
  %idxprom108 = sext i32 %62 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %61, i64 %idxprom108
  %63 = load i32, ptr %arrayidx109, align 4
  %cmp110 = icmp sgt i32 %60, %63
  br i1 %cmp110, label %if.then111, label %for.inc116

if.then111:                                       ; preds = %land.lhs.true106
  %64 = load ptr, ptr %tab, align 8
  %65 = load i32, ptr %k, align 4
  %idxprom112 = sext i32 %65 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %64, i64 %idxprom112
  %66 = load i32, ptr %arrayidx113, align 4
  %67 = load ptr, ptr %cod_info.addr, align 8
  %part2_length114 = getelementptr inbounds %struct.gr_info, ptr %67, i64 0, i32 15
  store i32 %66, ptr %part2_length114, align 4
  %68 = load i32, ptr %k, align 4
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %67, i64 0, i32 4
  store i32 %68, ptr %scalefac_compress, align 8
  store i32 0, ptr %ep, align 4
  br label %for.inc116

for.inc116:                                       ; preds = %for.body99, %land.lhs.true, %land.lhs.true106, %if.then111
  %69 = load i32, ptr %k, align 4
  %inc117 = add nsw i32 %69, 1
  br label %for.cond97, !llvm.loop !32

for.end118:                                       ; preds = %for.cond97
  %70 = load i32, ptr %ep, align 4
  ret i32 %70
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
  %preflag = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 12
  %0 = load i32, ptr %preflag, align 8
  %tobool.not = icmp eq i32 %0, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  store i32 %., ptr %table_number, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge1 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %block_type, align 8
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %if.then2, label %if.else45

if.then2:                                         ; preds = %for.end
  store i32 1, ptr %row_in_table, align 4
  %5 = load i32, ptr %table_number, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %idxprom3, i64 1
  store ptr %arrayidx6, ptr %partition_table, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc42, %if.then2
  %storemerge6 = phi i32 [ 0, %if.then2 ], [ %inc43, %for.inc42 ]
  store i32 %storemerge6, ptr %partition, align 4
  %cmp9 = icmp slt i32 %storemerge6, 4
  br i1 %cmp9, label %for.body10, label %if.end78

for.body10:                                       ; preds = %for.cond8
  %6 = load ptr, ptr %partition_table, align 8
  %7 = load i32, ptr %partition, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %6, i64 %idxprom11
  %8 = load i32, ptr %arrayidx12, align 4
  %div = udiv i32 %8, 3
  store i32 %div, ptr %nr_sfb, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc38, %for.body10
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %nr_sfb, align 4
  %cmp14 = icmp slt i32 %9, %10
  br i1 %cmp14, label %for.cond16, label %for.inc42

for.cond16:                                       ; preds = %for.cond13, %for.inc35
  %storemerge7 = phi i32 [ %inc36, %for.inc35 ], [ 0, %for.cond13 ]
  store i32 %storemerge7, ptr %window, align 4
  %cmp17 = icmp slt i32 %storemerge7, 3
  br i1 %cmp17, label %for.body18, label %for.inc38

for.body18:                                       ; preds = %for.cond16
  %11 = load ptr, ptr %scalefac.addr, align 8
  %12 = load i32, ptr %sfb, align 4
  %idxprom19 = sext i32 %12 to i64
  %13 = load i32, ptr %window, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds %struct.III_scalefac_t, ptr %11, i64 0, i32 1, i64 %idxprom19, i64 %idxprom21
  %14 = load i32, ptr %arrayidx22, align 4
  %15 = load i32, ptr %partition, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom23
  %16 = load i32, ptr %arrayidx24, align 4
  %cmp25 = icmp sgt i32 %14, %16
  br i1 %cmp25, label %if.then26, label %for.inc35

if.then26:                                        ; preds = %for.body18
  %17 = load ptr, ptr %scalefac.addr, align 8
  %18 = load i32, ptr %sfb, align 4
  %idxprom28 = sext i32 %18 to i64
  %19 = load i32, ptr %window, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds %struct.III_scalefac_t, ptr %17, i64 0, i32 1, i64 %idxprom28, i64 %idxprom30
  %20 = load i32, ptr %arrayidx31, align 4
  %21 = load i32, ptr %partition, align 4
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom32
  store i32 %20, ptr %arrayidx33, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %for.body18, %if.then26
  %22 = load i32, ptr %window, align 4
  %inc36 = add nsw i32 %22, 1
  br label %for.cond16, !llvm.loop !34

for.inc38:                                        ; preds = %for.cond16
  %23 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %23, 1
  store i32 %inc39, ptr %i, align 4
  %24 = load i32, ptr %sfb, align 4
  %inc40 = add nsw i32 %24, 1
  store i32 %inc40, ptr %sfb, align 4
  br label %for.cond13, !llvm.loop !35

for.inc42:                                        ; preds = %for.cond13
  %25 = load i32, ptr %partition, align 4
  %inc43 = add nsw i32 %25, 1
  br label %for.cond8, !llvm.loop !36

if.else45:                                        ; preds = %for.end
  store i32 0, ptr %row_in_table, align 4
  %26 = load i32, ptr %table_number, align 4
  %idxprom46 = sext i32 %26 to i64
  %arrayidx47 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %idxprom46
  store ptr %arrayidx47, ptr %partition_table, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc75, %if.else45
  %storemerge2 = phi i32 [ 0, %if.else45 ], [ %inc76, %for.inc75 ]
  store i32 %storemerge2, ptr %partition, align 4
  %cmp52 = icmp slt i32 %storemerge2, 4
  br i1 %cmp52, label %for.body53, label %if.end78

for.body53:                                       ; preds = %for.cond51
  %27 = load ptr, ptr %partition_table, align 8
  %28 = load i32, ptr %partition, align 4
  %idxprom54 = sext i32 %28 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %27, i64 %idxprom54
  %29 = load i32, ptr %arrayidx55, align 4
  store i32 %29, ptr %nr_sfb, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc71, %for.body53
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %nr_sfb, align 4
  %cmp57 = icmp slt i32 %30, %31
  br i1 %cmp57, label %for.body58, label %for.inc75

for.body58:                                       ; preds = %for.cond56
  %32 = load ptr, ptr %scalefac.addr, align 8
  %33 = load i32, ptr %sfb, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [22 x i32], ptr %32, i64 0, i64 %idxprom59
  %34 = load i32, ptr %arrayidx60, align 4
  %35 = load i32, ptr %partition, align 4
  %idxprom61 = sext i32 %35 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom61
  %36 = load i32, ptr %arrayidx62, align 4
  %cmp63 = icmp sgt i32 %34, %36
  br i1 %cmp63, label %if.then64, label %for.inc71

if.then64:                                        ; preds = %for.body58
  %37 = load ptr, ptr %scalefac.addr, align 8
  %38 = load i32, ptr %sfb, align 4
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds [22 x i32], ptr %37, i64 0, i64 %idxprom66
  %39 = load i32, ptr %arrayidx67, align 4
  %40 = load i32, ptr %partition, align 4
  %idxprom68 = sext i32 %40 to i64
  %arrayidx69 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom68
  store i32 %39, ptr %arrayidx69, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %for.body58, %if.then64
  %41 = load i32, ptr %i, align 4
  %inc72 = add nsw i32 %41, 1
  store i32 %inc72, ptr %i, align 4
  %42 = load i32, ptr %sfb, align 4
  %inc73 = add nsw i32 %42, 1
  store i32 %inc73, ptr %sfb, align 4
  br label %for.cond56, !llvm.loop !37

for.inc75:                                        ; preds = %for.cond56
  %43 = load i32, ptr %partition, align 4
  %inc76 = add nsw i32 %43, 1
  br label %for.cond51, !llvm.loop !38

if.end78:                                         ; preds = %for.cond51, %for.cond8
  store i32 0, ptr %over, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc92, %if.end78
  %storemerge3 = phi i32 [ 0, %if.end78 ], [ %inc93, %for.inc92 ]
  store i32 %storemerge3, ptr %partition, align 4
  %cmp80 = icmp slt i32 %storemerge3, 4
  br i1 %cmp80, label %for.body81, label %for.end94

for.body81:                                       ; preds = %for.cond79
  %44 = load i32, ptr %partition, align 4
  %idxprom82 = sext i32 %44 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom82
  %45 = load i32, ptr %arrayidx83, align 4
  %46 = load i32, ptr %table_number, align 4
  %idxprom84 = sext i32 %46 to i64
  %idxprom86 = sext i32 %44 to i64
  %arrayidx87 = getelementptr inbounds [6 x [4 x i32]], ptr @max_range_sfac_tab, i64 0, i64 %idxprom84, i64 %idxprom86
  %47 = load i32, ptr %arrayidx87, align 4
  %cmp88 = icmp sgt i32 %45, %47
  br i1 %cmp88, label %if.then89, label %for.inc92

if.then89:                                        ; preds = %for.body81
  %48 = load i32, ptr %over, align 4
  %inc90 = add nsw i32 %48, 1
  store i32 %inc90, ptr %over, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %for.body81, %if.then89
  %49 = load i32, ptr %partition, align 4
  %inc93 = add nsw i32 %49, 1
  br label %for.cond79, !llvm.loop !39

for.end94:                                        ; preds = %for.cond79
  %50 = load i32, ptr %over, align 4
  %tobool95.not = icmp eq i32 %50, 0
  br i1 %tobool95.not, label %if.then96, label %if.end137

if.then96:                                        ; preds = %for.end94
  %51 = load i32, ptr %table_number, align 4
  %idxprom97 = sext i32 %51 to i64
  %52 = load i32, ptr %row_in_table, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %idxprom97, i64 %idxprom99
  %53 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %53, i64 0, i32 19
  store ptr %arrayidx100, ptr %sfb_partition_table, align 8
  br label %for.cond102

for.cond102:                                      ; preds = %for.body104, %if.then96
  %storemerge4 = phi i32 [ 0, %if.then96 ], [ %inc112, %for.body104 ]
  store i32 %storemerge4, ptr %partition, align 4
  %cmp103 = icmp slt i32 %storemerge4, 4
  br i1 %cmp103, label %for.body104, label %for.end113

for.body104:                                      ; preds = %for.cond102
  %54 = load i32, ptr %partition, align 4
  %idxprom105 = sext i32 %54 to i64
  %arrayidx106 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %idxprom105
  %55 = load i32, ptr %arrayidx106, align 4
  %idxprom107 = sext i32 %55 to i64
  %arrayidx108 = getelementptr inbounds [16 x i32], ptr @scale_bitcount_lsf.log2tab, i64 0, i64 %idxprom107
  %56 = load i32, ptr %arrayidx108, align 4
  %57 = load ptr, ptr %cod_info.addr, align 8
  %58 = load i32, ptr %partition, align 4
  %idxprom109 = sext i32 %58 to i64
  %arrayidx110 = getelementptr inbounds %struct.gr_info, ptr %57, i64 0, i32 20, i64 %idxprom109
  store i32 %56, ptr %arrayidx110, align 4
  %59 = load i32, ptr %partition, align 4
  %inc112 = add nsw i32 %59, 1
  br label %for.cond102, !llvm.loop !40

for.end113:                                       ; preds = %for.cond102
  %60 = load ptr, ptr %cod_info.addr, align 8
  %slen114 = getelementptr inbounds %struct.gr_info, ptr %60, i64 0, i32 20
  %61 = load i32, ptr %slen114, align 8
  store i32 %61, ptr %slen1, align 4
  %arrayidx117 = getelementptr inbounds %struct.gr_info, ptr %60, i64 0, i32 20, i64 1
  %62 = load i32, ptr %arrayidx117, align 4
  store i32 %62, ptr %slen2, align 4
  %63 = load ptr, ptr %cod_info.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.gr_info, ptr %63, i64 0, i32 20, i64 2
  %64 = load i32, ptr %arrayidx119, align 8
  store i32 %64, ptr %slen3, align 4
  %arrayidx121 = getelementptr inbounds %struct.gr_info, ptr %63, i64 0, i32 20, i64 3
  %65 = load i32, ptr %arrayidx121, align 4
  store i32 %65, ptr %slen4, align 4
  %66 = load i32, ptr %table_number, align 4
  switch i32 %66, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb125
    i32 2, label %sw.bb132
  ]

sw.bb:                                            ; preds = %for.end113
  %67 = load i32, ptr %slen1, align 4
  %mul = mul i32 %67, 5
  %68 = load i32, ptr %slen2, align 4
  %add = add i32 %mul, %68
  %shl = shl i32 %add, 4
  %69 = load i32, ptr %slen3, align 4
  %shl122 = shl i32 %69, 2
  %add123 = add i32 %shl, %shl122
  %70 = load i32, ptr %slen4, align 4
  %add124 = add i32 %add123, %70
  %71 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %71, i64 0, i32 4
  store i32 %add124, ptr %scalefac_compress, align 8
  br label %if.end137

sw.bb125:                                         ; preds = %for.end113
  %72 = load i32, ptr %slen1, align 4
  %mul126 = mul i32 %72, 5
  %73 = load i32, ptr %slen2, align 4
  %add127 = add i32 %mul126, %73
  %shl128 = shl i32 %add127, 2
  %add129 = add i32 %shl128, 400
  %74 = load i32, ptr %slen3, align 4
  %add130 = add i32 %add129, %74
  %75 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress131 = getelementptr inbounds %struct.gr_info, ptr %75, i64 0, i32 4
  store i32 %add130, ptr %scalefac_compress131, align 8
  br label %if.end137

sw.bb132:                                         ; preds = %for.end113
  %76 = load i32, ptr %slen1, align 4
  %mul133 = mul i32 %76, 3
  %add134 = add i32 %mul133, 500
  %77 = load i32, ptr %slen2, align 4
  %add135 = add i32 %add134, %77
  %78 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress136 = getelementptr inbounds %struct.gr_info, ptr %78, i64 0, i32 4
  store i32 %add135, ptr %scalefac_compress136, align 8
  br label %if.end137

sw.default:                                       ; preds = %for.end113
  %79 = load ptr, ptr @__stderrp, align 8
  %80 = call i64 @fwrite(ptr nonnull @.str.2, i64 37, i64 1, ptr %79)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end137:                                        ; preds = %sw.bb, %sw.bb125, %sw.bb132, %for.end94
  %81 = load i32, ptr %over, align 4
  %tobool138.not = icmp eq i32 %81, 0
  br i1 %tobool138.not, label %if.then139, label %if.end159

if.then139:                                       ; preds = %if.end137
  %82 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table140 = getelementptr inbounds %struct.gr_info, ptr %82, i64 0, i32 19
  %83 = load ptr, ptr %sfb_partition_table140, align 8
  %tobool141.not = icmp eq ptr %83, null
  br i1 %tobool141.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then139
  call void @__assert_rtn(ptr noundef nonnull @__func__.scale_bitcount_lsf, ptr noundef nonnull @.str, i32 noundef 665, ptr noundef nonnull @.str.3) #8
  unreachable

cond.end:                                         ; preds = %if.then139
  %84 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %84, i64 0, i32 15
  store i32 0, ptr %part2_length, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.body146, %cond.end
  %storemerge5 = phi i32 [ 0, %cond.end ], [ %inc157, %for.body146 ]
  store i32 %storemerge5, ptr %partition, align 4
  %cmp144 = icmp slt i32 %storemerge5, 4
  br i1 %cmp144, label %for.body146, label %if.end159

for.body146:                                      ; preds = %for.cond143
  %85 = load ptr, ptr %cod_info.addr, align 8
  %86 = load i32, ptr %partition, align 4
  %idxprom148 = sext i32 %86 to i64
  %arrayidx149 = getelementptr inbounds %struct.gr_info, ptr %85, i64 0, i32 20, i64 %idxprom148
  %87 = load i32, ptr %arrayidx149, align 4
  %sfb_partition_table150 = getelementptr inbounds %struct.gr_info, ptr %85, i64 0, i32 19
  %88 = load ptr, ptr %sfb_partition_table150, align 8
  %idxprom151 = sext i32 %86 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %88, i64 %idxprom151
  %89 = load i32, ptr %arrayidx152, align 4
  %mul153 = mul i32 %87, %89
  %90 = load ptr, ptr %cod_info.addr, align 8
  %part2_length154 = getelementptr inbounds %struct.gr_info, ptr %90, i64 0, i32 15
  %91 = load i32, ptr %part2_length154, align 4
  %add155 = add i32 %91, %mul153
  store i32 %add155, ptr %part2_length154, align 4
  %92 = load i32, ptr %partition, align 4
  %inc157 = add nsw i32 %92, 1
  br label %for.cond143, !llvm.loop !41

if.end159:                                        ; preds = %for.cond143, %if.end137
  %93 = load i32, ptr %over, align 4
  ret i32 %93
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @calc_xmin(ptr noundef %gfp, ptr noundef %xr, ptr noundef %ratio, ptr noundef %cod_info, ptr noundef %l3_xmin) #0 {
entry:
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
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ratio, ptr %ratio.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %l3_xmin, ptr %l3_xmin.addr, align 8
  store i32 0, ptr %ath_over, align 4
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 33
  %0 = load i32, ptr %ATHonly, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 17
  %2 = load i32, ptr %sfb_smax, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %if.then
  %storemerge5 = phi i32 [ %2, %if.then ], [ %inc9, %for.inc8 ]
  store i32 %storemerge5, ptr %sfb, align 4
  %cmp = icmp ult i32 %storemerge5, 12
  br i1 %cmp, label %for.cond1, label %for.cond11

for.cond1:                                        ; preds = %for.cond, %for.body3
  %storemerge7 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ]
  store i32 %storemerge7, ptr %b, align 4
  %cmp2 = icmp slt i32 %storemerge7, 3
  br i1 %cmp2, label %for.body3, label %for.inc8

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom
  %4 = load double, ptr %arrayidx, align 8
  %5 = load ptr, ptr %l3_xmin.addr, align 8
  %idxprom4 = zext i32 %3 to i64
  %6 = load i32, ptr %b, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds %struct.III_psy_xmin, ptr %5, i64 0, i32 1, i64 %idxprom4, i64 %idxprom6
  store double %4, ptr %arrayidx7, align 8
  %7 = load i32, ptr %b, align 4
  %inc = add nsw i32 %7, 1
  br label %for.cond1, !llvm.loop !42

for.inc8:                                         ; preds = %for.cond1
  %8 = load i32, ptr %sfb, align 4
  %inc9 = add i32 %8, 1
  br label %for.cond, !llvm.loop !43

for.cond11:                                       ; preds = %for.cond, %for.body13
  %storemerge6 = phi i32 [ %inc20, %for.body13 ], [ 0, %for.cond ]
  store i32 %storemerge6, ptr %sfb, align 4
  %9 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %9, i64 0, i32 16
  %10 = load i32, ptr %sfb_lmax, align 8
  %cmp12 = icmp ult i32 %storemerge6, %10
  br i1 %cmp12, label %for.body13, label %if.end150

for.body13:                                       ; preds = %for.cond11
  %11 = load i32, ptr %sfb, align 4
  %idxprom14 = zext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom14
  %12 = load double, ptr %arrayidx15, align 8
  %13 = load ptr, ptr %l3_xmin.addr, align 8
  %idxprom17 = zext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [22 x double], ptr %13, i64 0, i64 %idxprom17
  store double %12, ptr %arrayidx18, align 8
  %14 = load i32, ptr %sfb, align 4
  %inc20 = add i32 %14, 1
  br label %for.cond11, !llvm.loop !44

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax22 = getelementptr inbounds %struct.gr_info, ptr %15, i64 0, i32 17
  %16 = load i32, ptr %sfb_smax22, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc82, %if.else
  %storemerge = phi i32 [ %16, %if.else ], [ %inc83, %for.inc82 ]
  store i32 %storemerge, ptr %sfb, align 4
  %cmp24 = icmp ult i32 %storemerge, 12
  br i1 %cmp24, label %for.body25, label %for.cond85

for.body25:                                       ; preds = %for.cond23
  %17 = load i32, ptr %sfb, align 4
  %idxprom26 = zext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom26
  %18 = load i32, ptr %arrayidx27, align 4
  store i32 %18, ptr %start, align 4
  %add = add i32 %17, 1
  %idxprom28 = zext i32 %add to i64
  %arrayidx29 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom28
  %19 = load i32, ptr %arrayidx29, align 4
  store i32 %19, ptr %end, align 4
  %sub = sub nsw i32 %19, %18
  store i32 %sub, ptr %bw, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc79, %for.body25
  %storemerge3 = phi i32 [ 0, %for.body25 ], [ %inc80, %for.inc79 ]
  store i32 %storemerge3, ptr %b, align 4
  %cmp31 = icmp slt i32 %storemerge3, 3
  br i1 %cmp31, label %for.body32, label %for.inc82

for.body32:                                       ; preds = %for.cond30
  store double 0.000000e+00, ptr %en0, align 8
  %20 = load i32, ptr %start, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.body32
  %storemerge4 = phi i32 [ %20, %for.body32 ], [ %inc42, %for.body35 ]
  store i32 %storemerge4, ptr %l, align 4
  %21 = load i32, ptr %end, align 4
  %cmp34 = icmp slt i32 %storemerge4, %21
  br i1 %cmp34, label %for.body35, label %for.end43

for.body35:                                       ; preds = %for.cond33
  %22 = load ptr, ptr %xr.addr, align 8
  %23 = load i32, ptr %l, align 4
  %mul = mul nsw i32 %23, 3
  %24 = load i32, ptr %b, align 4
  %add36 = add nsw i32 %mul, %24
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %22, i64 %idxprom37
  %25 = load double, ptr %arrayidx38, align 8
  %mul39 = fmul double %25, %25
  %26 = load double, ptr %en0, align 8
  %add40 = fadd double %26, %mul39
  store double %add40, ptr %en0, align 8
  %27 = load i32, ptr %l, align 4
  %inc42 = add nsw i32 %27, 1
  br label %for.cond33, !llvm.loop !45

for.end43:                                        ; preds = %for.cond33
  %28 = load i32, ptr %bw, align 4
  %conv = sitofp i32 %28 to double
  %29 = load double, ptr %en0, align 8
  %div = fdiv double %29, %conv
  store double %div, ptr %en0, align 8
  %30 = load ptr, ptr %ratio.addr, align 8
  %31 = load i32, ptr %sfb, align 4
  %idxprom45 = zext i32 %31 to i64
  %32 = load i32, ptr %b, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds %struct.III_psy_ratio, ptr %30, i64 0, i32 1, i32 1, i64 %idxprom45, i64 %idxprom47
  %33 = load double, ptr %arrayidx48, align 8
  store double %33, ptr %xmin, align 8
  %cmp49 = fcmp ogt double %33, 0.000000e+00
  br i1 %cmp49, label %if.then51, label %if.end

if.then51:                                        ; preds = %for.end43
  %34 = load double, ptr %en0, align 8
  %35 = load ptr, ptr %ratio.addr, align 8
  %36 = load i32, ptr %sfb, align 4
  %idxprom53 = zext i32 %36 to i64
  %37 = load i32, ptr %b, align 4
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds %struct.III_psy_xmin, ptr %35, i64 0, i32 1, i64 %idxprom53, i64 %idxprom55
  %38 = load double, ptr %arrayidx56, align 8
  %mul57 = fmul double %34, %38
  %39 = load float, ptr @masking_lower, align 4
  %conv58 = fpext float %39 to double
  %mul59 = fmul double %mul57, %conv58
  %40 = load double, ptr %xmin, align 8
  %div60 = fdiv double %mul59, %40
  store double %div60, ptr %xmin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then51, %for.end43
  %41 = load i32, ptr %sfb, align 4
  %idxprom61 = zext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom61
  %42 = load double, ptr %arrayidx62, align 8
  %43 = load double, ptr %xmin, align 8
  %cmp63 = fcmp ogt double %42, %43
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %44 = load i32, ptr %sfb, align 4
  %idxprom65 = zext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom65
  %45 = load double, ptr %arrayidx66, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %46 = load double, ptr %xmin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %45, %cond.true ], [ %46, %cond.false ]
  %47 = load ptr, ptr %l3_xmin.addr, align 8
  %48 = load i32, ptr %sfb, align 4
  %idxprom68 = zext i32 %48 to i64
  %49 = load i32, ptr %b, align 4
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds %struct.III_psy_xmin, ptr %47, i64 0, i32 1, i64 %idxprom68, i64 %idxprom70
  store double %cond, ptr %arrayidx71, align 8
  %50 = load double, ptr %en0, align 8
  %51 = load i32, ptr %sfb, align 4
  %idxprom72 = zext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %idxprom72
  %52 = load double, ptr %arrayidx73, align 8
  %cmp74 = fcmp ogt double %50, %52
  br i1 %cmp74, label %if.then76, label %for.inc79

if.then76:                                        ; preds = %cond.end
  %53 = load i32, ptr %ath_over, align 4
  %inc77 = add nsw i32 %53, 1
  store i32 %inc77, ptr %ath_over, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %cond.end, %if.then76
  %54 = load i32, ptr %b, align 4
  %inc80 = add nsw i32 %54, 1
  br label %for.cond30, !llvm.loop !46

for.inc82:                                        ; preds = %for.cond30
  %55 = load i32, ptr %sfb, align 4
  %inc83 = add i32 %55, 1
  br label %for.cond23, !llvm.loop !47

for.cond85:                                       ; preds = %for.cond23, %for.inc147
  %storemerge1 = phi i32 [ %inc148, %for.inc147 ], [ 0, %for.cond23 ]
  store i32 %storemerge1, ptr %sfb, align 4
  %56 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax86 = getelementptr inbounds %struct.gr_info, ptr %56, i64 0, i32 16
  %57 = load i32, ptr %sfb_lmax86, align 8
  %cmp87 = icmp ult i32 %storemerge1, %57
  br i1 %cmp87, label %for.body89, label %if.end150

for.body89:                                       ; preds = %for.cond85
  %58 = load i32, ptr %sfb, align 4
  %idxprom90 = zext i32 %58 to i64
  %arrayidx91 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom90
  %59 = load i32, ptr %arrayidx91, align 4
  store i32 %59, ptr %start, align 4
  %add92 = add i32 %58, 1
  %idxprom93 = zext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom93
  %60 = load i32, ptr %arrayidx94, align 4
  store i32 %60, ptr %end, align 4
  %sub95 = sub nsw i32 %60, %59
  store i32 %sub95, ptr %bw, align 4
  store double 0.000000e+00, ptr %en0, align 8
  %61 = load i32, ptr %start, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.body99, %for.body89
  %storemerge2 = phi i32 [ %61, %for.body89 ], [ %inc107, %for.body99 ]
  store i32 %storemerge2, ptr %l, align 4
  %62 = load i32, ptr %end, align 4
  %cmp97 = icmp slt i32 %storemerge2, %62
  br i1 %cmp97, label %for.body99, label %for.end108

for.body99:                                       ; preds = %for.cond96
  %63 = load ptr, ptr %xr.addr, align 8
  %64 = load i32, ptr %l, align 4
  %idxprom100 = sext i32 %64 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %63, i64 %idxprom100
  %65 = load double, ptr %arrayidx101, align 8
  %idxprom102 = sext i32 %64 to i64
  %arrayidx103 = getelementptr inbounds double, ptr %63, i64 %idxprom102
  %66 = load double, ptr %arrayidx103, align 8
  %mul104 = fmul double %65, %66
  %67 = load double, ptr %en0, align 8
  %add105 = fadd double %67, %mul104
  store double %add105, ptr %en0, align 8
  %68 = load i32, ptr %l, align 4
  %inc107 = add nsw i32 %68, 1
  br label %for.cond96, !llvm.loop !48

for.end108:                                       ; preds = %for.cond96
  %69 = load i32, ptr %bw, align 4
  %conv109 = sitofp i32 %69 to double
  %70 = load double, ptr %en0, align 8
  %div110 = fdiv double %70, %conv109
  store double %div110, ptr %en0, align 8
  %71 = load ptr, ptr %ratio.addr, align 8
  %en111 = getelementptr inbounds %struct.III_psy_ratio, ptr %71, i64 0, i32 1
  %72 = load i32, ptr %sfb, align 4
  %idxprom113 = zext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [22 x double], ptr %en111, i64 0, i64 %idxprom113
  %73 = load double, ptr %arrayidx114, align 8
  store double %73, ptr %xmin, align 8
  %cmp115 = fcmp ogt double %73, 0.000000e+00
  br i1 %cmp115, label %if.then117, label %if.end126

if.then117:                                       ; preds = %for.end108
  %74 = load double, ptr %en0, align 8
  %75 = load ptr, ptr %ratio.addr, align 8
  %76 = load i32, ptr %sfb, align 4
  %idxprom120 = zext i32 %76 to i64
  %arrayidx121 = getelementptr inbounds [22 x double], ptr %75, i64 0, i64 %idxprom120
  %77 = load double, ptr %arrayidx121, align 8
  %mul122 = fmul double %74, %77
  %78 = load float, ptr @masking_lower, align 4
  %conv123 = fpext float %78 to double
  %mul124 = fmul double %mul122, %conv123
  %79 = load double, ptr %xmin, align 8
  %div125 = fdiv double %mul124, %79
  store double %div125, ptr %xmin, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then117, %for.end108
  %80 = load i32, ptr %sfb, align 4
  %idxprom127 = zext i32 %80 to i64
  %arrayidx128 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom127
  %81 = load double, ptr %arrayidx128, align 8
  %82 = load double, ptr %xmin, align 8
  %cmp129 = fcmp ogt double %81, %82
  br i1 %cmp129, label %cond.true131, label %cond.false134

cond.true131:                                     ; preds = %if.end126
  %83 = load i32, ptr %sfb, align 4
  %idxprom132 = zext i32 %83 to i64
  %arrayidx133 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom132
  %84 = load double, ptr %arrayidx133, align 8
  br label %cond.end135

cond.false134:                                    ; preds = %if.end126
  %85 = load double, ptr %xmin, align 8
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true131
  %cond136 = phi double [ %84, %cond.true131 ], [ %85, %cond.false134 ]
  %86 = load ptr, ptr %l3_xmin.addr, align 8
  %87 = load i32, ptr %sfb, align 4
  %idxprom138 = zext i32 %87 to i64
  %arrayidx139 = getelementptr inbounds [22 x double], ptr %86, i64 0, i64 %idxprom138
  store double %cond136, ptr %arrayidx139, align 8
  %88 = load double, ptr %en0, align 8
  %idxprom140 = zext i32 %87 to i64
  %arrayidx141 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %idxprom140
  %89 = load double, ptr %arrayidx141, align 8
  %cmp142 = fcmp ogt double %88, %89
  br i1 %cmp142, label %if.then144, label %for.inc147

if.then144:                                       ; preds = %cond.end135
  %90 = load i32, ptr %ath_over, align 4
  %inc145 = add nsw i32 %90, 1
  store i32 %inc145, ptr %ath_over, align 4
  br label %for.inc147

for.inc147:                                       ; preds = %cond.end135, %if.then144
  %91 = load i32, ptr %sfb, align 4
  %inc148 = add i32 %91, 1
  br label %for.cond85, !llvm.loop !49

if.end150:                                        ; preds = %for.cond85, %for.cond11
  %92 = load i32, ptr %ath_over, align 4
  ret i32 %92
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %sfb, align 4
  %0 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %0, i64 0, i32 16
  %1 = load i32, ptr %sfb_lmax, align 8
  %cmp = icmp ult i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %scalefac.addr, align 8
  %3 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [22 x i32], ptr %2, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %sfb, align 4
  %inc = add i32 %5, 1
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %6, i64 0, i32 17
  %7 = load i32, ptr %sfb_smax, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.end
  %storemerge1 = phi i32 [ %7, %for.end ], [ %inc19, %for.inc18 ]
  store i32 %storemerge1, ptr %sfb, align 4
  %cmp3 = icmp ult i32 %storemerge1, 12
  br i1 %cmp3, label %for.cond5, label %for.end20

for.cond5:                                        ; preds = %for.cond2, %for.inc15
  %storemerge2 = phi i32 [ %inc16, %for.inc15 ], [ 0, %for.cond2 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp6 = icmp slt i32 %storemerge2, 3
  br i1 %cmp6, label %for.body7, label %for.inc18

for.body7:                                        ; preds = %for.cond5
  %8 = load ptr, ptr %scalefac.addr, align 8
  %9 = load i32, ptr %sfb, align 4
  %idxprom8 = zext i32 %9 to i64
  %10 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds %struct.III_scalefac_t, ptr %8, i64 0, i32 1, i64 %idxprom8, i64 %idxprom10
  %11 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then13, label %for.inc15

if.then13:                                        ; preds = %for.body7
  store i32 0, ptr %retval, align 4
  br label %return

for.inc15:                                        ; preds = %for.body7
  %12 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %12, 1
  br label %for.cond5, !llvm.loop !51

for.inc18:                                        ; preds = %for.cond5
  %13 = load i32, ptr %sfb, align 4
  %inc19 = add i32 %13, 1
  br label %for.cond2, !llvm.loop !52

for.end20:                                        ; preds = %for.cond2
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end20, %if.then13, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
  store i32 %start, ptr %StepSize, align 4
  store i32 0, ptr %Direction, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %StepSize, align 4
  %1 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 3
  store i32 %0, ptr %global_gain, align 4
  %2 = load ptr, ptr %gfp.addr, align 8
  %3 = load ptr, ptr %ix.addr, align 8
  %4 = load ptr, ptr %xrspow.addr, align 8
  %call = call i32 @count_bits(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %1) #7
  store i32 %call, ptr %nBits, align 4
  %5 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %6 = load i32, ptr %flag_GoneOver, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %7 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %div = sdiv i32 %7, 2
  store i32 %div, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %8 = load i32, ptr %nBits, align 4
  %9 = load i32, ptr %desired_rate.addr, align 4
  %cmp3 = icmp sgt i32 %8, %9
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %10 = load i32, ptr %Direction, align 4
  %cmp5 = icmp eq i32 %10, 2
  %11 = load i32, ptr %flag_GoneOver, align 4
  %tobool6.not = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp5, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  store i32 1, ptr %flag_GoneOver, align 4
  %12 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %div8 = sdiv i32 %12, 2
  store i32 %div8, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  store i32 1, ptr %Direction, align 4
  %13 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %14 = load i32, ptr %StepSize, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %StepSize, align 4
  %cmp10 = icmp sgt i32 %add, 255
  br i1 %cmp10, label %do.end, label %do.cond

if.else:                                          ; preds = %if.end2
  %15 = load i32, ptr %nBits, align 4
  %16 = load i32, ptr %desired_rate.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %if.then14, label %do.end

if.then14:                                        ; preds = %if.else
  %17 = load i32, ptr %Direction, align 4
  %cmp15 = icmp eq i32 %17, 1
  %18 = load i32, ptr %flag_GoneOver, align 4
  %tobool17.not = icmp eq i32 %18, 0
  %or.cond1 = select i1 %cmp15, i1 %tobool17.not, i1 false
  br i1 %or.cond1, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then14
  store i32 1, ptr %flag_GoneOver, align 4
  %19 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %div19 = sdiv i32 %19, 2
  store i32 %div19, ptr @bin_search_StepSize2.CurrentStep, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14
  store i32 2, ptr %Direction, align 4
  %20 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4
  %21 = load i32, ptr %StepSize, align 4
  %sub = sub nsw i32 %21, %20
  store i32 %sub, ptr %StepSize, align 4
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %do.end, label %do.cond

do.cond:                                          ; preds = %if.end9, %if.end20
  br label %do.body

do.end:                                           ; preds = %if.else, %if.end20, %if.end9, %do.body
  %22 = load i32, ptr %start.addr, align 4
  %23 = load i32, ptr %StepSize, align 4
  %sub27 = sub nsw i32 %22, %23
  %24 = call i32 @llvm.abs.i32(i32 %sub27, i1 true)
  store i32 %24, ptr @bin_search_StepSize2.CurrentStep, align 4
  %cmp29 = icmp ugt i32 %24, 3
  %. = select i1 %cmp29, i32 4, i32 2
  store i32 %., ptr @bin_search_StepSize2.CurrentStep, align 4
  %25 = load i32, ptr %nBits, align 4
  ret i32 %25
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define void @quantize_xrpow(ptr noundef %xr, ptr noundef %ix, ptr noundef %cod_info) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
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
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %0 = load i32, ptr %global_gain, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  store double %1, ptr %istep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 72, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %j, align 4
  %cmp = icmp sgt i32 %storemerge, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %xr.addr, align 8
  %3 = load double, ptr %2, align 8
  %4 = load double, ptr %istep, align 8
  %mul = fmul double %3, %4
  store double %mul, ptr %x1, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %2, i64 2
  store ptr %incdec.ptr1, ptr %xr.addr, align 8
  %5 = load double, ptr %incdec.ptr, align 8
  %mul2 = fmul double %5, %4
  store double %mul2, ptr %x2, align 8
  %conv = fptosi double %mul to i32
  store i32 %conv, ptr %rx1, align 4
  %incdec.ptr3 = getelementptr inbounds double, ptr %2, i64 3
  store ptr %incdec.ptr3, ptr %xr.addr, align 8
  %6 = load double, ptr %incdec.ptr1, align 8
  %7 = load double, ptr %istep, align 8
  %mul4 = fmul double %6, %7
  store double %mul4, ptr %x3, align 8
  %8 = load double, ptr %x2, align 8
  %conv5 = fptosi double %8 to i32
  store i32 %conv5, ptr %rx2, align 4
  %9 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %9, i64 1
  store ptr %incdec.ptr6, ptr %xr.addr, align 8
  %10 = load double, ptr %9, align 8
  %11 = load double, ptr %istep, align 8
  %mul7 = fmul double %10, %11
  store double %mul7, ptr %x4, align 8
  %12 = load double, ptr %x3, align 8
  %conv8 = fptosi double %12 to i32
  store i32 %conv8, ptr %rx3, align 4
  %13 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr9 = getelementptr inbounds double, ptr %13, i64 1
  store ptr %incdec.ptr9, ptr %xr.addr, align 8
  %14 = load double, ptr %13, align 8
  %15 = load double, ptr %istep, align 8
  %mul10 = fmul double %14, %15
  store double %mul10, ptr %x5, align 8
  %16 = load double, ptr %x4, align 8
  %conv11 = fptosi double %16 to i32
  store i32 %conv11, ptr %rx4, align 4
  %17 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds double, ptr %17, i64 1
  store ptr %incdec.ptr12, ptr %xr.addr, align 8
  %18 = load double, ptr %17, align 8
  %19 = load double, ptr %istep, align 8
  %mul13 = fmul double %18, %19
  store double %mul13, ptr %x6, align 8
  %20 = load double, ptr %x5, align 8
  %conv14 = fptosi double %20 to i32
  store i32 %conv14, ptr %rx5, align 4
  %21 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr15 = getelementptr inbounds double, ptr %21, i64 1
  store ptr %incdec.ptr15, ptr %xr.addr, align 8
  %22 = load double, ptr %21, align 8
  %23 = load double, ptr %istep, align 8
  %mul16 = fmul double %22, %23
  store double %mul16, ptr %x7, align 8
  %24 = load double, ptr %x6, align 8
  %conv17 = fptosi double %24 to i32
  store i32 %conv17, ptr %rx6, align 4
  %25 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr18 = getelementptr inbounds double, ptr %25, i64 1
  store ptr %incdec.ptr18, ptr %xr.addr, align 8
  %26 = load double, ptr %25, align 8
  %27 = load double, ptr %istep, align 8
  %mul19 = fmul double %26, %27
  store double %mul19, ptr %x8, align 8
  %28 = load double, ptr %x7, align 8
  %conv20 = fptosi double %28 to i32
  store i32 %conv20, ptr %rx7, align 4
  %29 = load i32, ptr %rx1, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom21
  %30 = load double, ptr %arrayidx22, align 8
  %31 = load double, ptr %x1, align 8
  %add = fadd double %31, %30
  store double %add, ptr %x1, align 8
  %32 = load double, ptr %x8, align 8
  %conv23 = fptosi double %32 to i32
  store i32 %conv23, ptr %rx8, align 4
  %33 = load i32, ptr %rx2, align 4
  %idxprom24 = sext i32 %33 to i64
  %arrayidx25 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom24
  %34 = load double, ptr %arrayidx25, align 8
  %35 = load double, ptr %x2, align 8
  %add26 = fadd double %35, %34
  store double %add26, ptr %x2, align 8
  %36 = load double, ptr %x1, align 8
  %conv27 = fptosi double %36 to i32
  %37 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i32, ptr %37, i64 1
  store ptr %incdec.ptr28, ptr %ix.addr, align 8
  store i32 %conv27, ptr %37, align 4
  %38 = load i32, ptr %rx3, align 4
  %idxprom29 = sext i32 %38 to i64
  %arrayidx30 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom29
  %39 = load double, ptr %arrayidx30, align 8
  %40 = load double, ptr %x3, align 8
  %add31 = fadd double %40, %39
  store double %add31, ptr %x3, align 8
  %41 = load double, ptr %x2, align 8
  %conv32 = fptosi double %41 to i32
  %42 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i32, ptr %42, i64 1
  store ptr %incdec.ptr33, ptr %ix.addr, align 8
  store i32 %conv32, ptr %42, align 4
  %43 = load i32, ptr %rx4, align 4
  %idxprom34 = sext i32 %43 to i64
  %arrayidx35 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom34
  %44 = load double, ptr %arrayidx35, align 8
  %45 = load double, ptr %x4, align 8
  %add36 = fadd double %45, %44
  store double %add36, ptr %x4, align 8
  %46 = load double, ptr %x3, align 8
  %conv37 = fptosi double %46 to i32
  %47 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i32, ptr %47, i64 1
  store ptr %incdec.ptr38, ptr %ix.addr, align 8
  store i32 %conv37, ptr %47, align 4
  %48 = load i32, ptr %rx5, align 4
  %idxprom39 = sext i32 %48 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom39
  %49 = load double, ptr %arrayidx40, align 8
  %50 = load double, ptr %x5, align 8
  %add41 = fadd double %50, %49
  store double %add41, ptr %x5, align 8
  %51 = load double, ptr %x4, align 8
  %conv42 = fptosi double %51 to i32
  %52 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i32, ptr %52, i64 1
  store ptr %incdec.ptr43, ptr %ix.addr, align 8
  store i32 %conv42, ptr %52, align 4
  %53 = load i32, ptr %rx6, align 4
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom44
  %54 = load double, ptr %arrayidx45, align 8
  %55 = load double, ptr %x6, align 8
  %add46 = fadd double %55, %54
  store double %add46, ptr %x6, align 8
  %56 = load double, ptr %x5, align 8
  %conv47 = fptosi double %56 to i32
  %57 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i32, ptr %57, i64 1
  store ptr %incdec.ptr48, ptr %ix.addr, align 8
  store i32 %conv47, ptr %57, align 4
  %58 = load i32, ptr %rx7, align 4
  %idxprom49 = sext i32 %58 to i64
  %arrayidx50 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom49
  %59 = load double, ptr %arrayidx50, align 8
  %60 = load double, ptr %x7, align 8
  %add51 = fadd double %60, %59
  store double %add51, ptr %x7, align 8
  %61 = load double, ptr %x6, align 8
  %conv52 = fptosi double %61 to i32
  %62 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i32, ptr %62, i64 1
  store ptr %incdec.ptr53, ptr %ix.addr, align 8
  store i32 %conv52, ptr %62, align 4
  %63 = load i32, ptr %rx8, align 4
  %idxprom54 = sext i32 %63 to i64
  %arrayidx55 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom54
  %64 = load double, ptr %arrayidx55, align 8
  %65 = load double, ptr %x8, align 8
  %add56 = fadd double %65, %64
  store double %add56, ptr %x8, align 8
  %66 = load double, ptr %x7, align 8
  %conv57 = fptosi double %66 to i32
  %67 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i32, ptr %67, i64 1
  store ptr %incdec.ptr58, ptr %ix.addr, align 8
  store i32 %conv57, ptr %67, align 4
  %68 = load double, ptr %x8, align 8
  %conv59 = fptosi double %68 to i32
  %incdec.ptr60 = getelementptr inbounds i32, ptr %67, i64 2
  store ptr %incdec.ptr60, ptr %ix.addr, align 8
  store i32 %conv59, ptr %incdec.ptr58, align 4
  %69 = load i32, ptr %j, align 4
  %dec = add nsw i32 %69, -1
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @quantize_xrpow_ISO(ptr noundef %xr, ptr noundef %ix, ptr noundef %cod_info) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %istep = alloca double, align 8
  %j = alloca i32, align 4
  %compareval0 = alloca double, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %0 = load i32, ptr %global_gain, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  store double %1, ptr %istep, align 8
  %div = fdiv double 5.946000e-01, %1
  store double %div, ptr %compareval0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 576, %entry ], [ %dec, %for.inc ]
  store i32 %storemerge, ptr %j, align 4
  %cmp = icmp sgt i32 %storemerge, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, ptr %compareval0, align 8
  %3 = load ptr, ptr %xr.addr, align 8
  %4 = load double, ptr %3, align 8
  %cmp1 = fcmp ogt double %2, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %6, i64 1
  store ptr %incdec.ptr2, ptr %xr.addr, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %7 = load double, ptr %istep, align 8
  %8 = load ptr, ptr %xr.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, ptr %8, i64 1
  store ptr %incdec.ptr3, ptr %xr.addr, align 8
  %9 = load double, ptr %8, align 8
  %10 = call double @llvm.fmuladd.f64(double %7, double %9, double 4.054000e-01)
  %conv = fptosi double %10 to i32
  %11 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %11, i64 1
  store ptr %incdec.ptr4, ptr %ix.addr, align 8
  store i32 %conv, ptr %11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %12 = load i32, ptr %j, align 4
  %dec = add nsw i32 %12, -1
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #1

declare double @__exp10(double)

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { noreturn nounwind }

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
