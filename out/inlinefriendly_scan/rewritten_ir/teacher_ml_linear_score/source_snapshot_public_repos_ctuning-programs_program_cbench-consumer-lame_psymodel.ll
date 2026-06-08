; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_psymodel.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/psymodel.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@L3psycho_anal.minval = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.qthr_l = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.qthr_s = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.nb_1 = internal global [4 x [63 x double]] zeroinitializer, align 8
@L3psycho_anal.nb_2 = internal global [4 x [63 x double]] zeroinitializer, align 8
@L3psycho_anal.s3_s = internal global [64 x [64 x double]] zeroinitializer, align 8
@L3psycho_anal.s3_l = internal global [64 x [64 x double]] zeroinitializer, align 8
@L3psycho_anal.thm = internal global [4 x %struct.III_psy_xmin] zeroinitializer, align 8
@L3psycho_anal.en = internal global [4 x %struct.III_psy_xmin] zeroinitializer, align 8
@L3psycho_anal.cw_upper_index = internal global i32 0, align 4
@L3psycho_anal.cw_lower_index = internal global i32 0, align 4
@L3psycho_anal.ax_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 4
@L3psycho_anal.bx_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 4
@L3psycho_anal.rx_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 4
@L3psycho_anal.cw = internal global [513 x float] zeroinitializer, align 4
@L3psycho_anal.wsamp_L = internal global [2 x [1024 x float]] zeroinitializer, align 4
@L3psycho_anal.energy = internal global [513 x float] zeroinitializer, align 4
@L3psycho_anal.wsamp_S = internal global [2 x [3 x [256 x float]]] zeroinitializer, align 4
@L3psycho_anal.energy_s = internal global [3 x [129 x float]] zeroinitializer, align 4
@L3psycho_anal.eb = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.cb = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.thr = internal global [63 x double] zeroinitializer, align 8
@L3psycho_anal.w1_l = internal global [21 x double] zeroinitializer, align 8
@L3psycho_anal.w2_l = internal global [21 x double] zeroinitializer, align 8
@L3psycho_anal.w1_s = internal global [12 x double] zeroinitializer, align 8
@L3psycho_anal.w2_s = internal global [12 x double] zeroinitializer, align 8
@L3psycho_anal.mld_l = internal global [21 x double] zeroinitializer, align 8
@L3psycho_anal.mld_s = internal global [12 x double] zeroinitializer, align 8
@L3psycho_anal.bu_l = internal global [21 x i32] zeroinitializer, align 4
@L3psycho_anal.bo_l = internal global [21 x i32] zeroinitializer, align 4
@L3psycho_anal.bu_s = internal global [12 x i32] zeroinitializer, align 4
@L3psycho_anal.bo_s = internal global [12 x i32] zeroinitializer, align 4
@L3psycho_anal.npart_l = internal global i32 0, align 4
@L3psycho_anal.npart_s = internal global i32 0, align 4
@L3psycho_anal.npart_l_orig = internal global i32 0, align 4
@L3psycho_anal.npart_s_orig = internal global i32 0, align 4
@L3psycho_anal.s3ind = internal global [63 x [2 x i32]] zeroinitializer, align 4
@L3psycho_anal.s3ind_s = internal global [63 x [2 x i32]] zeroinitializer, align 4
@L3psycho_anal.numlines_s = internal global [63 x i32] zeroinitializer, align 4
@L3psycho_anal.numlines_l = internal global [63 x i32] zeroinitializer, align 4
@L3psycho_anal.partition_l = internal global [513 x i32] zeroinitializer, align 4
@L3psycho_anal.pe = internal global [4 x double] zeroinitializer, align 8
@L3psycho_anal.ms_ratio_s_old = internal global double 0.000000e+00, align 8
@L3psycho_anal.ms_ratio_l_old = internal global double 0.000000e+00, align 8
@L3psycho_anal.ms_ener_ratio_old = internal global double 2.500000e-01, align 8
@L3psycho_anal.blocktype_old = internal global [2 x i32] zeroinitializer, align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"error, invalid sampling frequency: %d Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error in block selecting\0A\00", align 1
@psy_data = external global [0 x double], align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"1. please check \22psy_data\22\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3. please check \22psy_data\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"30:please check \22psy_data\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"31l: please check \22psy_data.\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"w1,w2: %f %f \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"31s: please check \22psy_data.\22\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @L3psycho_anal(ptr noundef %gfp, ptr noundef %buffer, i32 noundef %gr_out, ptr noundef %ms_ratio, ptr noundef %ms_ratio_next, ptr noundef %ms_ener_ratio, ptr noundef %masking_ratio, ptr noundef %masking_MS_ratio, ptr noundef %percep_entropy, ptr noundef %percep_MS_entropy, ptr noundef %blocktype_d) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %gr_out.addr = alloca i32, align 4
  %ms_ratio.addr = alloca ptr, align 8
  %ms_ratio_next.addr = alloca ptr, align 8
  %ms_ener_ratio.addr = alloca ptr, align 8
  %masking_ratio.addr = alloca ptr, align 8
  %masking_MS_ratio.addr = alloca ptr, align 8
  %percep_entropy.addr = alloca ptr, align 8
  %percep_MS_entropy.addr = alloca ptr, align 8
  %blocktype_d.addr = alloca ptr, align 8
  %wsamp_l = alloca ptr, align 8
  %wsamp_s = alloca ptr, align 8
  %tot_ener = alloca [4 x float], align 4
  %ms_ratio_l = alloca double, align 8
  %ms_ratio_s = alloca double, align 8
  %blocktype = alloca [2 x i32], align 4
  %uselongblock = alloca [2 x i32], align 4
  %numchn = alloca i32, align 4
  %chn = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sb = alloca i32, align 4
  %sblock = alloca i32, align 4
  %SNR_s = alloca [63 x double], align 8
  %norm = alloca double, align 8
  %norm251 = alloca double, align 8
  %l = alloca float, align 4
  %r = alloca float, align 4
  %l379 = alloca float, align 4
  %r384 = alloca float, align 4
  %re = alloca float, align 4
  %re459 = alloca float, align 4
  %an = alloca float, align 4
  %a1 = alloca float, align 4
  %a2 = alloca float, align 4
  %bn = alloca float, align 4
  %b1 = alloca float, align 4
  %b2 = alloca float, align 4
  %rn = alloca float, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  %numre = alloca float, align 4
  %numim = alloca float, align 4
  %den = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp1 = alloca float, align 4
  %r1625 = alloca float, align 4
  %r2626 = alloca float, align 4
  %numre627 = alloca float, align 4
  %numim628 = alloca float, align 4
  %den629 = alloca float, align 4
  %a1637 = alloca float, align 4
  %a2660 = alloca float, align 4
  %b2664 = alloca float, align 4
  %tmp2669 = alloca float, align 4
  %tmp1674 = alloca float, align 4
  %an703 = alloca float, align 4
  %bn707 = alloca float, align 4
  %ebb = alloca double, align 8
  %cbb = alloca double, align 8
  %i743 = alloca i32, align 4
  %i786 = alloca i32, align 4
  %ebb787 = alloca double, align 8
  %tbb = alloca double, align 8
  %ecb = alloca double, align 8
  %ctb = alloca double, align 8
  %temp_1 = alloca double, align 8
  %mn = alloca float, align 4
  %mx = alloca float, align 4
  %ma = alloca float, align 4
  %mb = alloca float, align 4
  %mc = alloca float, align 4
  %enn = alloca double, align 8
  %thmm = alloca double, align 8
  %i1131 = alloca i32, align 4
  %ecb1132 = alloca float, align 4
  %ecb1163 = alloca double, align 8
  %enn1203 = alloca double, align 8
  %thmm1218 = alloca double, align 8
  %rside = alloca double, align 8
  %rmid = alloca double, align 8
  %mld1276 = alloca double, align 8
  %chmid = alloca i32, align 4
  %chside = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %sidetot = alloca double, align 8
  %tot = alloca double, align 8
  %tmp1839 = alloca float, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %gr_out, ptr %gr_out.addr, align 4
  store ptr %ms_ratio, ptr %ms_ratio.addr, align 8
  store ptr %ms_ratio_next, ptr %ms_ratio_next.addr, align 8
  store ptr %ms_ener_ratio, ptr %ms_ener_ratio.addr, align 8
  store ptr %masking_ratio, ptr %masking_ratio.addr, align 8
  store ptr %masking_MS_ratio, ptr %masking_MS_ratio.addr, align 8
  store ptr %percep_entropy, ptr %percep_entropy.addr, align 8
  store ptr %percep_MS_entropy, ptr %percep_MS_entropy.addr, align 8
  store ptr %blocktype_d, ptr %blocktype_d.addr, align 8
  store double 0.000000e+00, ptr %ms_ratio_l, align 8
  store double 0.000000e+00, ptr %ms_ratio_s, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %1 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %1, 0
  %2 = load i32, ptr %gr_out.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %if.end294

if.then:                                          ; preds = %entry
  store i32 3, ptr @L3psycho_anal.blocktype_old, align 4
  store i32 3, ptr getelementptr inbounds ([2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 1), align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %out_samplerate, align 8
  store i32 %4, ptr %i, align 4
  switch i32 %4, label %sw.default [
    i32 32000, label %sw.epilog
    i32 44100, label %sw.epilog
    i32 48000, label %sw.epilog
    i32 16000, label %sw.epilog
    i32 22050, label %sw.epilog
    i32 24000, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.then
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %6) #8
  call void @exit(i32 noundef -1) #9
  unreachable

sw.epilog:                                        ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16416) @L3psycho_anal.rx_sav, i8 0, i64 16416, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16416) @L3psycho_anal.ax_sav, i8 0, i64 16416, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16416) @L3psycho_anal.bx_sav, i8 0, i64 16416, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1952) @L3psycho_anal.en, i8 0, i64 1952, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1952) @L3psycho_anal.thm, i8 0, i64 1952, i1 false)
  store i32 6, ptr @L3psycho_anal.cw_lower_index, align 4
  %7 = load ptr, ptr %gfp.addr, align 8
  %cwlimit7 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 35
  %8 = load float, ptr %cwlimit7, align 8
  %cmp8 = fcmp ogt float %8, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %sw.epilog
  %9 = load ptr, ptr %gfp.addr, align 8
  %cwlimit10 = getelementptr inbounds %struct.lame_global_flags, ptr %9, i64 0, i32 35
  %10 = load float, ptr %cwlimit10, align 8
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then9
  %storemerge36 = phi float [ %10, %if.then9 ], [ 0x4021BE4F80000000, %sw.epilog ]
  %conv = fpext float %storemerge36 to double
  %mul = fmul double %conv, 1.000000e+03
  %mul11 = fmul double %mul, 1.024000e+03
  %11 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate12 = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %out_samplerate12, align 8
  %conv13 = sitofp i32 %12 to double
  %div = fdiv double %mul11, %conv13
  %conv14 = fptosi double %div to i32
  store i32 %conv14, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp15 = icmp sgt i32 %conv14, 509
  %13 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cond = select i1 %cmp15, i32 509, i32 %13
  store i32 %cond, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp17 = icmp slt i32 %cond, 6
  %14 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cond22 = select i1 %cmp17, i32 6, i32 %14
  store i32 %cond22, ptr @L3psycho_anal.cw_upper_index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge37 = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge37, ptr %j, align 4
  %cmp23 = icmp slt i32 %storemerge37, 513
  br i1 %cmp23, label %for.body, label %for.cond25

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %j, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom
  store float 0x3FD99999A0000000, ptr %arrayidx, align 4
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !6

for.cond25:                                       ; preds = %for.cond, %for.body28
  %storemerge38 = phi i32 [ %inc36, %for.body28 ], [ 0, %for.cond ]
  store i32 %storemerge38, ptr %sb, align 4
  %cmp26 = icmp slt i32 %storemerge38, 12
  br i1 %cmp26, label %for.body28, label %for.cond38

for.body28:                                       ; preds = %for.cond25
  %17 = load i32, ptr %sb, align 4
  %conv29 = sitofp i32 %17 to double
  %mul30 = fmul double %conv29, 0x400921FB54442D18
  %div31 = fdiv double %mul30, 1.200000e+01
  %18 = call double @llvm.cos.f64(double %div31)
  %sub = fsub double 1.000000e+00, %18
  %19 = call double @llvm.fmuladd.f64(double %sub, double 1.250000e+00, double -2.500000e+00)
  %__exp1056 = call double @__exp10(double %19) #8
  %20 = load i32, ptr %sb, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %idxprom33
  store double %__exp1056, ptr %arrayidx34, align 8
  %21 = load i32, ptr %sb, align 4
  %inc36 = add nsw i32 %21, 1
  br label %for.cond25, !llvm.loop !8

for.cond38:                                       ; preds = %for.cond25, %for.body41
  %storemerge39 = phi i32 [ %inc51, %for.body41 ], [ 0, %for.cond25 ]
  store i32 %storemerge39, ptr %sb, align 4
  %cmp39 = icmp slt i32 %storemerge39, 21
  br i1 %cmp39, label %for.body41, label %for.cond53

for.body41:                                       ; preds = %for.cond38
  %22 = load i32, ptr %sb, align 4
  %conv43 = sitofp i32 %22 to double
  %mul44 = fmul double %conv43, 0x400921FB54442D18
  %div45 = fdiv double %mul44, 2.100000e+01
  %23 = call double @llvm.cos.f64(double %div45)
  %sub46 = fsub double 1.000000e+00, %23
  %24 = call double @llvm.fmuladd.f64(double %sub46, double 1.250000e+00, double -2.500000e+00)
  %__exp10 = call double @__exp10(double %24) #8
  %25 = load i32, ptr %sb, align 4
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %idxprom48
  store double %__exp10, ptr %arrayidx49, align 8
  %26 = load i32, ptr %sb, align 4
  %inc51 = add nsw i32 %26, 1
  br label %for.cond38, !llvm.loop !9

for.cond53:                                       ; preds = %for.cond38, %for.body56
  %storemerge40 = phi i32 [ %inc60, %for.body56 ], [ 0, %for.cond38 ]
  store i32 %storemerge40, ptr %i, align 4
  %cmp54 = icmp slt i32 %storemerge40, 513
  br i1 %cmp54, label %for.body56, label %for.end61

for.body56:                                       ; preds = %for.cond53
  %27 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %27 to i64
  %arrayidx58 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %idxprom57
  store i32 -1, ptr %arrayidx58, align 4
  %28 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %28, 1
  br label %for.cond53, !llvm.loop !10

for.end61:                                        ; preds = %for.cond53
  %29 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate62 = getelementptr inbounds %struct.lame_global_flags, ptr %29, i64 0, i32 3
  %30 = load i32, ptr %out_samplerate62, align 8
  %conv63 = sitofp i32 %30 to double
  call void @L3para_read(double noundef %conv63, ptr noundef nonnull @L3psycho_anal.numlines_l, ptr noundef nonnull @L3psycho_anal.numlines_s, ptr noundef nonnull @L3psycho_anal.partition_l, ptr noundef nonnull @L3psycho_anal.minval, ptr noundef nonnull @L3psycho_anal.qthr_l, ptr noundef nonnull @L3psycho_anal.s3_l, ptr noundef nonnull @L3psycho_anal.s3_s, ptr noundef nonnull @L3psycho_anal.qthr_s, ptr noundef nonnull %SNR_s, ptr noundef nonnull @L3psycho_anal.bu_l, ptr noundef nonnull @L3psycho_anal.bo_l, ptr noundef nonnull @L3psycho_anal.w1_l, ptr noundef nonnull @L3psycho_anal.w2_l, ptr noundef nonnull @L3psycho_anal.bu_s, ptr noundef nonnull @L3psycho_anal.bo_s, ptr noundef nonnull @L3psycho_anal.w1_s, ptr noundef nonnull @L3psycho_anal.w2_s)
  store i32 0, ptr @L3psycho_anal.npart_l_orig, align 4
  store i32 0, ptr @L3psycho_anal.npart_s_orig, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc76, %for.end61
  %storemerge41 = phi i32 [ 0, %for.end61 ], [ %inc77, %for.inc76 ]
  store i32 %storemerge41, ptr %i, align 4
  %cmp65 = icmp slt i32 %storemerge41, 513
  br i1 %cmp65, label %for.body67, label %for.end78

for.body67:                                       ; preds = %for.cond64
  %31 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %31 to i64
  %arrayidx69 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %idxprom68
  %32 = load i32, ptr %arrayidx69, align 4
  %33 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp70 = icmp sgt i32 %32, %33
  br i1 %cmp70, label %if.then72, label %for.inc76

if.then72:                                        ; preds = %for.body67
  %34 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %34 to i64
  %arrayidx74 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %idxprom73
  %35 = load i32, ptr %arrayidx74, align 4
  store i32 %35, ptr @L3psycho_anal.npart_l_orig, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body67, %if.then72
  %36 = load i32, ptr %i, align 4
  %inc77 = add nsw i32 %36, 1
  br label %for.cond64, !llvm.loop !11

for.end78:                                        ; preds = %for.cond64
  %37 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %inc79 = add nsw i32 %37, 1
  store i32 %inc79, ptr @L3psycho_anal.npart_l_orig, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc86, %for.end78
  %storemerge42 = phi i32 [ 0, %for.end78 ], [ %inc87, %for.inc86 ]
  store i32 %storemerge42, ptr %i, align 4
  %idxprom81 = sext i32 %storemerge42 to i64
  %arrayidx82 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %idxprom81
  %38 = load i32, ptr %arrayidx82, align 4
  %cmp83 = icmp sgt i32 %38, -1
  br i1 %cmp83, label %for.inc86, label %for.end88

for.inc86:                                        ; preds = %for.cond80
  %39 = load i32, ptr %i, align 4
  %inc87 = add nsw i32 %39, 1
  br label %for.cond80, !llvm.loop !12

for.end88:                                        ; preds = %for.cond80
  %40 = load i32, ptr %i, align 4
  store i32 %40, ptr @L3psycho_anal.npart_s_orig, align 4
  %41 = load i32, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 4
  %add = add nsw i32 %41, 1
  store i32 %add, ptr @L3psycho_anal.npart_l, align 4
  %42 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4
  %add89 = add nsw i32 %42, 1
  store i32 %add89, ptr @L3psycho_anal.npart_s, align 4
  %43 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp90.not = icmp slt i32 %41, %43
  br i1 %cmp90.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %for.end88
  %44 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  store i32 %44, ptr @L3psycho_anal.npart_l, align 4
  %sub93 = add nsw i32 %44, -1
  store i32 %sub93, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 4
  store double 1.000000e+00, ptr getelementptr inbounds ([21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 20), align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %for.end88
  %45 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %46 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %cmp95 = icmp sgt i32 %45, %46
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end94
  %47 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  store i32 %47, ptr @L3psycho_anal.npart_s, align 4
  %sub98 = add nsw i32 %47, -1
  store i32 %sub98, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4
  store double 1.000000e+00, ptr getelementptr inbounds ([12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 11), align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end94
  br label %for.cond100

for.cond100:                                      ; preds = %for.end136, %if.end99
  %storemerge43 = phi i32 [ 0, %if.end99 ], [ %inc141, %for.end136 ]
  store i32 %storemerge43, ptr %i, align 4
  %48 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %cmp101 = icmp slt i32 %storemerge43, %48
  br i1 %cmp101, label %for.cond104, label %for.cond143

for.cond104:                                      ; preds = %for.cond100, %for.inc116
  %storemerge54 = phi i32 [ %inc117, %for.inc116 ], [ 0, %for.cond100 ]
  store i32 %storemerge54, ptr %j, align 4
  %49 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp105 = icmp slt i32 %storemerge54, %49
  br i1 %cmp105, label %for.body107, label %for.end118

for.body107:                                      ; preds = %for.cond104
  %50 = load i32, ptr %i, align 4
  %idxprom108 = sext i32 %50 to i64
  %51 = load i32, ptr %j, align 4
  %idxprom110 = sext i32 %51 to i64
  %arrayidx111 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom108, i64 %idxprom110
  %52 = load double, ptr %arrayidx111, align 8
  %cmp112 = fcmp une double %52, 0.000000e+00
  br i1 %cmp112, label %for.end118, label %for.inc116

for.inc116:                                       ; preds = %for.body107
  %53 = load i32, ptr %j, align 4
  %inc117 = add nsw i32 %53, 1
  br label %for.cond104, !llvm.loop !13

for.end118:                                       ; preds = %for.body107, %for.cond104
  %54 = load i32, ptr %j, align 4
  %55 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %55 to i64
  %arrayidx120 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom119
  store i32 %54, ptr %arrayidx120, align 4
  %56 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc135, %for.end118
  %storemerge55.in = phi i32 [ %56, %for.end118 ], [ %60, %for.inc135 ]
  %storemerge55 = add nsw i32 %storemerge55.in, -1
  store i32 %storemerge55, ptr %j, align 4
  %cmp124 = icmp sgt i32 %storemerge55.in, 1
  br i1 %cmp124, label %for.body126, label %for.end136

for.body126:                                      ; preds = %for.cond123
  %57 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %57 to i64
  %58 = load i32, ptr %j, align 4
  %idxprom129 = sext i32 %58 to i64
  %arrayidx130 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom127, i64 %idxprom129
  %59 = load double, ptr %arrayidx130, align 8
  %cmp131 = fcmp une double %59, 0.000000e+00
  br i1 %cmp131, label %for.end136, label %for.inc135

for.inc135:                                       ; preds = %for.body126
  %60 = load i32, ptr %j, align 4
  br label %for.cond123, !llvm.loop !14

for.end136:                                       ; preds = %for.body126, %for.cond123
  %61 = load i32, ptr %j, align 4
  %62 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %62 to i64
  %arrayidx139 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom137, i64 1
  store i32 %61, ptr %arrayidx139, align 4
  %63 = load i32, ptr %i, align 4
  %inc141 = add nsw i32 %63, 1
  br label %for.cond100, !llvm.loop !15

for.cond143:                                      ; preds = %for.cond100, %for.end180
  %storemerge44 = phi i32 [ %inc185, %for.end180 ], [ 0, %for.cond100 ]
  store i32 %storemerge44, ptr %i, align 4
  %64 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp144 = icmp slt i32 %storemerge44, %64
  br i1 %cmp144, label %for.cond147, label %for.cond187

for.cond147:                                      ; preds = %for.cond143, %for.inc159
  %storemerge52 = phi i32 [ %inc160, %for.inc159 ], [ 0, %for.cond143 ]
  store i32 %storemerge52, ptr %j, align 4
  %65 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %cmp148 = icmp slt i32 %storemerge52, %65
  br i1 %cmp148, label %for.body150, label %for.end161

for.body150:                                      ; preds = %for.cond147
  %66 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %66 to i64
  %67 = load i32, ptr %j, align 4
  %idxprom153 = sext i32 %67 to i64
  %arrayidx154 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom151, i64 %idxprom153
  %68 = load double, ptr %arrayidx154, align 8
  %cmp155 = fcmp une double %68, 0.000000e+00
  br i1 %cmp155, label %for.end161, label %for.inc159

for.inc159:                                       ; preds = %for.body150
  %69 = load i32, ptr %j, align 4
  %inc160 = add nsw i32 %69, 1
  br label %for.cond147, !llvm.loop !16

for.end161:                                       ; preds = %for.body150, %for.cond147
  %70 = load i32, ptr %j, align 4
  %71 = load i32, ptr %i, align 4
  %idxprom162 = sext i32 %71 to i64
  %arrayidx163 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom162
  store i32 %70, ptr %arrayidx163, align 4
  %72 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc178, %for.end161
  %storemerge53.in = phi i32 [ %72, %for.end161 ], [ %76, %for.inc178 ]
  %storemerge53 = add nsw i32 %storemerge53.in, -1
  store i32 %storemerge53, ptr %j, align 4
  %cmp167 = icmp sgt i32 %storemerge53.in, 1
  br i1 %cmp167, label %for.body169, label %for.end180

for.body169:                                      ; preds = %for.cond166
  %73 = load i32, ptr %i, align 4
  %idxprom170 = sext i32 %73 to i64
  %74 = load i32, ptr %j, align 4
  %idxprom172 = sext i32 %74 to i64
  %arrayidx173 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom170, i64 %idxprom172
  %75 = load double, ptr %arrayidx173, align 8
  %cmp174 = fcmp une double %75, 0.000000e+00
  br i1 %cmp174, label %for.end180, label %for.inc178

for.inc178:                                       ; preds = %for.body169
  %76 = load i32, ptr %j, align 4
  br label %for.cond166, !llvm.loop !17

for.end180:                                       ; preds = %for.body169, %for.cond166
  %77 = load i32, ptr %j, align 4
  %78 = load i32, ptr %i, align 4
  %idxprom181 = sext i32 %78 to i64
  %arrayidx183 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom181, i64 1
  store i32 %77, ptr %arrayidx183, align 4
  %79 = load i32, ptr %i, align 4
  %inc185 = add nsw i32 %79, 1
  br label %for.cond143, !llvm.loop !18

for.cond187:                                      ; preds = %for.cond143, %for.inc228
  %storemerge45 = phi i32 [ %inc229, %for.inc228 ], [ 0, %for.cond143 ]
  store i32 %storemerge45, ptr %b, align 4
  %80 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %cmp188 = icmp slt i32 %storemerge45, %80
  br i1 %cmp188, label %for.body190, label %for.end230

for.body190:                                      ; preds = %for.cond187
  store double 0.000000e+00, ptr %norm, align 8
  %81 = load i32, ptr %b, align 4
  %idxprom191 = sext i32 %81 to i64
  %arrayidx192 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom191
  %82 = load i32, ptr %arrayidx192, align 4
  br label %for.cond194

for.cond194:                                      ; preds = %for.body200, %for.body190
  %storemerge50 = phi i32 [ %82, %for.body190 ], [ %inc207, %for.body200 ]
  store i32 %storemerge50, ptr %k, align 4
  %83 = load i32, ptr %b, align 4
  %idxprom195 = sext i32 %83 to i64
  %arrayidx197 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom195, i64 1
  %84 = load i32, ptr %arrayidx197, align 4
  %cmp198.not = icmp sgt i32 %storemerge50, %84
  br i1 %cmp198.not, label %for.end208, label %for.body200

for.body200:                                      ; preds = %for.cond194
  %85 = load i32, ptr %b, align 4
  %idxprom201 = sext i32 %85 to i64
  %86 = load i32, ptr %k, align 4
  %idxprom203 = sext i32 %86 to i64
  %arrayidx204 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom201, i64 %idxprom203
  %87 = load double, ptr %arrayidx204, align 8
  %88 = load double, ptr %norm, align 8
  %add205 = fadd double %88, %87
  store double %add205, ptr %norm, align 8
  %89 = load i32, ptr %k, align 4
  %inc207 = add nsw i32 %89, 1
  br label %for.cond194, !llvm.loop !19

for.end208:                                       ; preds = %for.cond194
  %90 = load i32, ptr %b, align 4
  %idxprom209 = sext i32 %90 to i64
  %arrayidx210 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom209
  %91 = load i32, ptr %arrayidx210, align 4
  br label %for.cond212

for.cond212:                                      ; preds = %for.body218, %for.end208
  %storemerge51 = phi i32 [ %91, %for.end208 ], [ %inc226, %for.body218 ]
  store i32 %storemerge51, ptr %k, align 4
  %92 = load i32, ptr %b, align 4
  %idxprom213 = sext i32 %92 to i64
  %arrayidx215 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom213, i64 1
  %93 = load i32, ptr %arrayidx215, align 4
  %cmp216.not = icmp sgt i32 %storemerge51, %93
  br i1 %cmp216.not, label %for.inc228, label %for.body218

for.body218:                                      ; preds = %for.cond212
  %94 = load double, ptr %norm, align 8
  %div219 = fdiv double 0x3FD0137987DD704C, %94
  %95 = load i32, ptr %b, align 4
  %idxprom220 = sext i32 %95 to i64
  %96 = load i32, ptr %k, align 4
  %idxprom222 = sext i32 %96 to i64
  %arrayidx223 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom220, i64 %idxprom222
  %97 = load double, ptr %arrayidx223, align 8
  %mul224 = fmul double %97, %div219
  store double %mul224, ptr %arrayidx223, align 8
  %98 = load i32, ptr %k, align 4
  %inc226 = add nsw i32 %98, 1
  br label %for.cond212, !llvm.loop !20

for.inc228:                                       ; preds = %for.cond212
  %99 = load i32, ptr %b, align 4
  %inc229 = add nsw i32 %99, 1
  br label %for.cond187, !llvm.loop !21

for.end230:                                       ; preds = %for.cond187
  %100 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %100, i64 0, i32 43
  %101 = load i32, ptr %version, align 8
  %cmp231 = icmp eq i32 %101, 1
  br i1 %cmp231, label %for.cond234, label %if.end246

for.cond234:                                      ; preds = %for.end230, %for.body237
  %storemerge49 = phi i32 [ %inc244, %for.body237 ], [ 0, %for.end230 ]
  store i32 %storemerge49, ptr %b, align 4
  %102 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp235 = icmp slt i32 %storemerge49, %102
  br i1 %cmp235, label %for.body237, label %if.end246

for.body237:                                      ; preds = %for.cond234
  %103 = load i32, ptr %b, align 4
  %idxprom238 = sext i32 %103 to i64
  %arrayidx239 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %idxprom238
  %104 = load double, ptr %arrayidx239, align 8
  %mul240 = fmul double %104, 0x3FCD791C5F888823
  %105 = call double @llvm.exp.f64(double %mul240)
  %idxprom241 = sext i32 %103 to i64
  %arrayidx242 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %idxprom241
  store double %105, ptr %arrayidx242, align 8
  %106 = load i32, ptr %b, align 4
  %inc244 = add nsw i32 %106, 1
  br label %for.cond234, !llvm.loop !22

if.end246:                                        ; preds = %for.cond234, %for.end230
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc291, %if.end246
  %storemerge46 = phi i32 [ 0, %if.end246 ], [ %inc292, %for.inc291 ]
  store i32 %storemerge46, ptr %b, align 4
  %107 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp248 = icmp slt i32 %storemerge46, %107
  br i1 %cmp248, label %for.body250, label %for.end293

for.body250:                                      ; preds = %for.cond247
  store double 0.000000e+00, ptr %norm251, align 8
  %108 = load i32, ptr %b, align 4
  %idxprom252 = sext i32 %108 to i64
  %arrayidx253 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom252
  %109 = load i32, ptr %arrayidx253, align 4
  br label %for.cond255

for.cond255:                                      ; preds = %for.body261, %for.body250
  %storemerge47 = phi i32 [ %109, %for.body250 ], [ %inc268, %for.body261 ]
  store i32 %storemerge47, ptr %k, align 4
  %110 = load i32, ptr %b, align 4
  %idxprom256 = sext i32 %110 to i64
  %arrayidx258 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom256, i64 1
  %111 = load i32, ptr %arrayidx258, align 4
  %cmp259.not = icmp sgt i32 %storemerge47, %111
  br i1 %cmp259.not, label %for.end269, label %for.body261

for.body261:                                      ; preds = %for.cond255
  %112 = load i32, ptr %b, align 4
  %idxprom262 = sext i32 %112 to i64
  %113 = load i32, ptr %k, align 4
  %idxprom264 = sext i32 %113 to i64
  %arrayidx265 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom262, i64 %idxprom264
  %114 = load double, ptr %arrayidx265, align 8
  %115 = load double, ptr %norm251, align 8
  %add266 = fadd double %115, %114
  store double %add266, ptr %norm251, align 8
  %116 = load i32, ptr %k, align 4
  %inc268 = add nsw i32 %116, 1
  br label %for.cond255, !llvm.loop !23

for.end269:                                       ; preds = %for.cond255
  %117 = load i32, ptr %b, align 4
  %idxprom270 = sext i32 %117 to i64
  %arrayidx271 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom270
  %118 = load i32, ptr %arrayidx271, align 4
  br label %for.cond273

for.cond273:                                      ; preds = %for.body279, %for.end269
  %storemerge48 = phi i32 [ %118, %for.end269 ], [ %inc289, %for.body279 ]
  store i32 %storemerge48, ptr %k, align 4
  %119 = load i32, ptr %b, align 4
  %idxprom274 = sext i32 %119 to i64
  %arrayidx276 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom274, i64 1
  %120 = load i32, ptr %arrayidx276, align 4
  %cmp277.not = icmp sgt i32 %storemerge48, %120
  br i1 %cmp277.not, label %for.inc291, label %for.body279

for.body279:                                      ; preds = %for.cond273
  %121 = load i32, ptr %b, align 4
  %idxprom280 = sext i32 %121 to i64
  %arrayidx281 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %idxprom280
  %122 = load double, ptr %arrayidx281, align 8
  %123 = load double, ptr %norm251, align 8
  %div282 = fdiv double %122, %123
  %idxprom283 = sext i32 %121 to i64
  %124 = load i32, ptr %k, align 4
  %idxprom285 = sext i32 %124 to i64
  %arrayidx286 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom283, i64 %idxprom285
  %125 = load double, ptr %arrayidx286, align 8
  %mul287 = fmul double %125, %div282
  store double %mul287, ptr %arrayidx286, align 8
  %126 = load i32, ptr %k, align 4
  %inc289 = add nsw i32 %126, 1
  br label %for.cond273, !llvm.loop !24

for.inc291:                                       ; preds = %for.cond273
  %127 = load i32, ptr %b, align 4
  %inc292 = add nsw i32 %127, 1
  br label %for.cond247, !llvm.loop !25

for.end293:                                       ; preds = %for.cond247
  call void @init_fft() #8
  br label %if.end294

if.end294:                                        ; preds = %for.end293, %entry
  %128 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %128, i64 0, i32 46
  %129 = load i32, ptr %stereo, align 4
  store i32 %129, ptr %numchn, align 4
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %128, i64 0, i32 8
  %130 = load i32, ptr %mode, align 4
  %cmp295 = icmp eq i32 %130, 1
  %spec.store.select = select i1 %cmp295, i32 4, i32 %129
  store i32 %spec.store.select, ptr %numchn, align 4
  br label %for.cond299

for.cond299:                                      ; preds = %for.inc1270, %if.end294
  %storemerge = phi i32 [ 0, %if.end294 ], [ %inc1271, %for.inc1270 ]
  store i32 %storemerge, ptr %chn, align 4
  %131 = load i32, ptr %numchn, align 4
  %cmp300 = icmp slt i32 %storemerge, %131
  br i1 %cmp300, label %for.body302, label %for.end1272

for.body302:                                      ; preds = %for.cond299
  %132 = load i32, ptr %chn, align 4
  %and = and i32 %132, 1
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %idx.ext
  store ptr %add.ptr, ptr %wsamp_s, align 8
  %and303 = and i32 %132, 1
  %idx.ext304 = zext i32 %and303 to i64
  %add.ptr305 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %idx.ext304
  store ptr %add.ptr305, ptr %wsamp_l, align 8
  %133 = load i32, ptr %chn, align 4
  %cmp306 = icmp slt i32 %133, 2
  br i1 %cmp306, label %if.then308, label %if.else327

if.then308:                                       ; preds = %for.body302
  %134 = load ptr, ptr %wsamp_l, align 8
  %135 = load i32, ptr %chn, align 4
  %136 = load ptr, ptr %buffer.addr, align 8
  call void @fft_long(ptr noundef %134, i32 noundef %135, ptr noundef %136) #8
  %137 = load ptr, ptr %wsamp_s, align 8
  call void @fft_short(ptr noundef %137, i32 noundef %135, ptr noundef %136) #8
  %idxprom311 = sext i32 %135 to i64
  %arrayidx312 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom311
  %138 = load double, ptr %arrayidx312, align 8
  %139 = load ptr, ptr %percep_entropy.addr, align 8
  %140 = load i32, ptr %chn, align 4
  %idxprom313 = sext i32 %140 to i64
  %arrayidx314 = getelementptr inbounds double, ptr %139, i64 %idxprom313
  store double %138, ptr %arrayidx314, align 8
  %141 = load ptr, ptr %masking_ratio.addr, align 8
  %142 = load i32, ptr %gr_out.addr, align 4
  %idxprom315 = sext i32 %142 to i64
  %143 = load i32, ptr %chn, align 4
  %idxprom317 = sext i32 %143 to i64
  %arrayidx318 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %141, i64 %idxprom315, i64 %idxprom317
  %idxprom319 = sext i32 %143 to i64
  %arrayidx320 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %arrayidx318, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx320, i64 488, i1 false)
  %144 = load ptr, ptr %masking_ratio.addr, align 8
  %145 = load i32, ptr %gr_out.addr, align 4
  %idxprom321 = sext i32 %145 to i64
  %146 = load i32, ptr %chn, align 4
  %idxprom323 = sext i32 %146 to i64
  %en = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %144, i64 %idxprom321, i64 %idxprom323, i32 1
  %idxprom325 = sext i32 %146 to i64
  %arrayidx326 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %en, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx326, i64 488, i1 false)
  br label %if.end408

if.else327:                                       ; preds = %for.body302
  %147 = load i32, ptr %chn, align 4
  %idxprom328 = sext i32 %147 to i64
  %arrayidx329 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom328
  %148 = load double, ptr %arrayidx329, align 8
  %149 = load ptr, ptr %percep_MS_entropy.addr, align 8
  %sub330 = add nsw i32 %147, -2
  %idxprom331 = sext i32 %sub330 to i64
  %arrayidx332 = getelementptr inbounds double, ptr %149, i64 %idxprom331
  store double %148, ptr %arrayidx332, align 8
  %150 = load ptr, ptr %masking_MS_ratio.addr, align 8
  %151 = load i32, ptr %gr_out.addr, align 4
  %idxprom333 = sext i32 %151 to i64
  %152 = load i32, ptr %chn, align 4
  %sub335 = add nsw i32 %152, -2
  %idxprom336 = sext i32 %sub335 to i64
  %en338 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %150, i64 %idxprom333, i64 %idxprom336, i32 1
  %idxprom339 = sext i32 %152 to i64
  %arrayidx340 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %en338, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx340, i64 488, i1 false)
  %153 = load ptr, ptr %masking_MS_ratio.addr, align 8
  %154 = load i32, ptr %gr_out.addr, align 4
  %idxprom341 = sext i32 %154 to i64
  %155 = load i32, ptr %chn, align 4
  %sub343 = add nsw i32 %155, -2
  %idxprom344 = sext i32 %sub343 to i64
  %arrayidx345 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %153, i64 %idxprom341, i64 %idxprom344
  %idxprom347 = sext i32 %155 to i64
  %arrayidx348 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %arrayidx345, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx348, i64 488, i1 false)
  %156 = load i32, ptr %chn, align 4
  %cmp349 = icmp eq i32 %156, 2
  br i1 %cmp349, label %for.cond352, label %if.end408

for.cond352:                                      ; preds = %if.else327, %for.body355
  %storemerge33 = phi i32 [ %dec369, %for.body355 ], [ 1023, %if.else327 ]
  store i32 %storemerge33, ptr %j, align 4
  %cmp353 = icmp sgt i32 %storemerge33, -1
  br i1 %cmp353, label %for.body355, label %for.cond371

for.body355:                                      ; preds = %for.cond352
  %157 = load i32, ptr %j, align 4
  %idxprom356 = sext i32 %157 to i64
  %arrayidx357 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 0, i64 %idxprom356
  %158 = load float, ptr %arrayidx357, align 4
  store float %158, ptr %l, align 4
  %idxprom358 = sext i32 %157 to i64
  %arrayidx359 = getelementptr inbounds [2 x [1024 x float]], ptr @L3psycho_anal.wsamp_L, i64 0, i64 1, i64 %idxprom358
  %159 = load float, ptr %arrayidx359, align 4
  store float %159, ptr %r, align 4
  %add360 = fadd float %158, %159
  %mul361 = fmul float %add360, 0x3FE6A09E60000000
  %160 = load i32, ptr %j, align 4
  %idxprom362 = sext i32 %160 to i64
  %arrayidx363 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 0, i64 %idxprom362
  store float %mul361, ptr %arrayidx363, align 4
  %161 = load float, ptr %l, align 4
  %162 = load float, ptr %r, align 4
  %sub364 = fsub float %161, %162
  %mul365 = fmul float %sub364, 0x3FE6A09E60000000
  %163 = load i32, ptr %j, align 4
  %idxprom366 = sext i32 %163 to i64
  %arrayidx367 = getelementptr inbounds [2 x [1024 x float]], ptr @L3psycho_anal.wsamp_L, i64 0, i64 1, i64 %idxprom366
  store float %mul365, ptr %arrayidx367, align 4
  %164 = load i32, ptr %j, align 4
  %dec369 = add nsw i32 %164, -1
  br label %for.cond352, !llvm.loop !26

for.cond371:                                      ; preds = %for.cond352, %for.inc404
  %storemerge34 = phi i32 [ %dec405, %for.inc404 ], [ 2, %for.cond352 ]
  store i32 %storemerge34, ptr %b, align 4
  %cmp372 = icmp sgt i32 %storemerge34, -1
  br i1 %cmp372, label %for.cond375, label %if.end408

for.cond375:                                      ; preds = %for.cond371, %for.body378
  %storemerge35 = phi i32 [ %dec402, %for.body378 ], [ 255, %for.cond371 ]
  store i32 %storemerge35, ptr %j, align 4
  %cmp376 = icmp sgt i32 %storemerge35, -1
  br i1 %cmp376, label %for.body378, label %for.inc404

for.body378:                                      ; preds = %for.cond375
  %165 = load i32, ptr %b, align 4
  %idxprom380 = sext i32 %165 to i64
  %166 = load i32, ptr %j, align 4
  %idxprom382 = sext i32 %166 to i64
  %arrayidx383 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 %idxprom380, i64 %idxprom382
  %167 = load float, ptr %arrayidx383, align 4
  store float %167, ptr %l379, align 4
  %168 = load i32, ptr %b, align 4
  %idxprom385 = sext i32 %168 to i64
  %169 = load i32, ptr %j, align 4
  %idxprom387 = sext i32 %169 to i64
  %arrayidx388 = getelementptr inbounds [2 x [3 x [256 x float]]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 1, i64 %idxprom385, i64 %idxprom387
  %170 = load float, ptr %arrayidx388, align 4
  store float %170, ptr %r384, align 4
  %171 = load float, ptr %l379, align 4
  %add389 = fadd float %171, %170
  %mul390 = fmul float %add389, 0x3FE6A09E60000000
  %172 = load i32, ptr %b, align 4
  %idxprom391 = sext i32 %172 to i64
  %173 = load i32, ptr %j, align 4
  %idxprom393 = sext i32 %173 to i64
  %arrayidx394 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 %idxprom391, i64 %idxprom393
  store float %mul390, ptr %arrayidx394, align 4
  %174 = load float, ptr %l379, align 4
  %175 = load float, ptr %r384, align 4
  %sub395 = fsub float %174, %175
  %mul396 = fmul float %sub395, 0x3FE6A09E60000000
  %176 = load i32, ptr %b, align 4
  %idxprom397 = sext i32 %176 to i64
  %177 = load i32, ptr %j, align 4
  %idxprom399 = sext i32 %177 to i64
  %arrayidx400 = getelementptr inbounds [2 x [3 x [256 x float]]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 1, i64 %idxprom397, i64 %idxprom399
  store float %mul396, ptr %arrayidx400, align 4
  %178 = load i32, ptr %j, align 4
  %dec402 = add nsw i32 %178, -1
  br label %for.cond375, !llvm.loop !27

for.inc404:                                       ; preds = %for.cond375
  %179 = load i32, ptr %b, align 4
  %dec405 = add nsw i32 %179, -1
  br label %for.cond371, !llvm.loop !28

if.end408:                                        ; preds = %if.else327, %for.cond371, %if.then308
  %180 = load ptr, ptr %wsamp_l, align 8
  %181 = load float, ptr %180, align 4
  %mul410 = fmul float %181, %181
  store float %mul410, ptr @L3psycho_anal.energy, align 4
  %182 = load i32, ptr %chn, align 4
  %idxprom411 = sext i32 %182 to i64
  %arrayidx412 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 %idxprom411
  store float %mul410, ptr %arrayidx412, align 4
  br label %for.cond413

for.cond413:                                      ; preds = %for.body416, %if.end408
  %storemerge11 = phi i32 [ 511, %if.end408 ], [ %dec436, %for.body416 ]
  store i32 %storemerge11, ptr %j, align 4
  %cmp414 = icmp sgt i32 %storemerge11, -1
  br i1 %cmp414, label %for.body416, label %for.cond438

for.body416:                                      ; preds = %for.cond413
  %183 = load ptr, ptr %wsamp_l, align 8
  %184 = load i32, ptr %j, align 4
  %sub417 = sub nsw i32 512, %184
  %idxprom418 = sext i32 %sub417 to i64
  %arrayidx419 = getelementptr inbounds [1024 x float], ptr %183, i64 0, i64 %idxprom418
  %185 = load float, ptr %arrayidx419, align 4
  store float %185, ptr %re, align 4
  %186 = load ptr, ptr %wsamp_l, align 8
  %187 = load i32, ptr %j, align 4
  %add420 = add nsw i32 %187, 512
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds [1024 x float], ptr %186, i64 0, i64 %idxprom421
  %188 = load float, ptr %arrayidx422, align 4
  %189 = load float, ptr %re, align 4
  %mul424 = fmul float %188, %188
  %190 = call float @llvm.fmuladd.f32(float %189, float %189, float %mul424)
  %mul425 = fmul float %190, 5.000000e-01
  %191 = load i32, ptr %j, align 4
  %sub426 = sub nsw i32 512, %191
  %idxprom427 = sext i32 %sub426 to i64
  %arrayidx428 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom427
  store float %mul425, ptr %arrayidx428, align 4
  %sub429 = sub nsw i32 512, %191
  %idxprom430 = sext i32 %sub429 to i64
  %arrayidx431 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom430
  %192 = load float, ptr %arrayidx431, align 4
  %193 = load i32, ptr %chn, align 4
  %idxprom432 = sext i32 %193 to i64
  %arrayidx433 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 %idxprom432
  %194 = load float, ptr %arrayidx433, align 4
  %add434 = fadd float %194, %192
  store float %add434, ptr %arrayidx433, align 4
  %195 = load i32, ptr %j, align 4
  %dec436 = add nsw i32 %195, -1
  br label %for.cond413, !llvm.loop !29

for.cond438:                                      ; preds = %for.cond413, %for.inc482
  %storemerge12 = phi i32 [ %dec483, %for.inc482 ], [ 2, %for.cond413 ]
  store i32 %storemerge12, ptr %b, align 4
  %cmp439 = icmp sgt i32 %storemerge12, -1
  br i1 %cmp439, label %for.body441, label %for.cond485

for.body441:                                      ; preds = %for.cond438
  %196 = load ptr, ptr %wsamp_s, align 8
  %197 = load i32, ptr %b, align 4
  %idxprom442 = sext i32 %197 to i64
  %arrayidx443 = getelementptr inbounds [3 x [256 x float]], ptr %196, i64 0, i64 %idxprom442
  %198 = load float, ptr %arrayidx443, align 4
  %idxprom445 = sext i32 %197 to i64
  %arrayidx446 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom445
  store float %198, ptr %arrayidx446, align 4
  %199 = load i32, ptr %b, align 4
  %idxprom448 = sext i32 %199 to i64
  %arrayidx449 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom448
  %200 = load float, ptr %arrayidx449, align 4
  %idxprom451 = sext i32 %199 to i64
  %arrayidx452 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom451
  %201 = load float, ptr %arrayidx452, align 4
  %mul454 = fmul float %201, %200
  store float %mul454, ptr %arrayidx452, align 4
  br label %for.cond455

for.cond455:                                      ; preds = %for.body458, %for.body441
  %storemerge32 = phi i32 [ 127, %for.body441 ], [ %dec480, %for.body458 ]
  store i32 %storemerge32, ptr %j, align 4
  %cmp456 = icmp sgt i32 %storemerge32, -1
  br i1 %cmp456, label %for.body458, label %for.inc482

for.body458:                                      ; preds = %for.cond455
  %202 = load ptr, ptr %wsamp_s, align 8
  %203 = load i32, ptr %b, align 4
  %idxprom460 = sext i32 %203 to i64
  %204 = load i32, ptr %j, align 4
  %sub462 = sub nsw i32 128, %204
  %idxprom463 = sext i32 %sub462 to i64
  %arrayidx464 = getelementptr inbounds [3 x [256 x float]], ptr %202, i64 0, i64 %idxprom460, i64 %idxprom463
  %205 = load float, ptr %arrayidx464, align 4
  store float %205, ptr %re459, align 4
  %206 = load ptr, ptr %wsamp_s, align 8
  %207 = load i32, ptr %b, align 4
  %idxprom466 = sext i32 %207 to i64
  %208 = load i32, ptr %j, align 4
  %add468 = add nsw i32 %208, 128
  %idxprom469 = sext i32 %add468 to i64
  %arrayidx470 = getelementptr inbounds [3 x [256 x float]], ptr %206, i64 0, i64 %idxprom466, i64 %idxprom469
  %209 = load float, ptr %arrayidx470, align 4
  %210 = load float, ptr %re459, align 4
  %mul472 = fmul float %209, %209
  %211 = call float @llvm.fmuladd.f32(float %210, float %210, float %mul472)
  %mul473 = fmul float %211, 5.000000e-01
  %212 = load i32, ptr %b, align 4
  %idxprom474 = sext i32 %212 to i64
  %213 = load i32, ptr %j, align 4
  %sub476 = sub nsw i32 128, %213
  %idxprom477 = sext i32 %sub476 to i64
  %arrayidx478 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom474, i64 %idxprom477
  store float %mul473, ptr %arrayidx478, align 4
  %214 = load i32, ptr %j, align 4
  %dec480 = add nsw i32 %214, -1
  br label %for.cond455, !llvm.loop !30

for.inc482:                                       ; preds = %for.cond455
  %215 = load i32, ptr %b, align 4
  %dec483 = add nsw i32 %215, -1
  br label %for.cond438, !llvm.loop !31

for.cond485:                                      ; preds = %for.cond438, %if.end614
  %storemerge13 = phi i32 [ %inc618, %if.end614 ], [ 0, %for.cond438 ]
  store i32 %storemerge13, ptr %j, align 4
  %216 = load i32, ptr @L3psycho_anal.cw_lower_index, align 4
  %cmp486 = icmp slt i32 %storemerge13, %216
  br i1 %cmp486, label %for.body488, label %for.end619

for.body488:                                      ; preds = %for.cond485
  %217 = load i32, ptr %chn, align 4
  %idxprom489 = sext i32 %217 to i64
  %218 = load i32, ptr %j, align 4
  %idxprom492 = sext i32 %218 to i64
  %arrayidx493 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom489, i64 1, i64 %idxprom492
  %219 = load float, ptr %arrayidx493, align 4
  store float %219, ptr %a2, align 4
  %220 = load i32, ptr %chn, align 4
  %idxprom494 = sext i32 %220 to i64
  %221 = load i32, ptr %j, align 4
  %idxprom497 = sext i32 %221 to i64
  %arrayidx498 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom494, i64 1, i64 %idxprom497
  %222 = load float, ptr %arrayidx498, align 4
  store float %222, ptr %b2, align 4
  %223 = load i32, ptr %chn, align 4
  %idxprom499 = sext i32 %223 to i64
  %224 = load i32, ptr %j, align 4
  %idxprom502 = sext i32 %224 to i64
  %arrayidx503 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom499, i64 1, i64 %idxprom502
  %225 = load float, ptr %arrayidx503, align 4
  store float %225, ptr %r2, align 4
  %226 = load i32, ptr %chn, align 4
  %idxprom504 = sext i32 %226 to i64
  %arrayidx505 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom504
  %227 = load i32, ptr %j, align 4
  %idxprom507 = sext i32 %227 to i64
  %arrayidx508 = getelementptr inbounds [513 x float], ptr %arrayidx505, i64 0, i64 %idxprom507
  %228 = load float, ptr %arrayidx508, align 4
  %229 = load i32, ptr %chn, align 4
  %idxprom509 = sext i32 %229 to i64
  %idxprom512 = sext i32 %227 to i64
  %arrayidx513 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom509, i64 1, i64 %idxprom512
  store float %228, ptr %arrayidx513, align 4
  store float %228, ptr %a1, align 4
  %idxprom514 = sext i32 %229 to i64
  %arrayidx515 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom514
  %230 = load i32, ptr %j, align 4
  %idxprom517 = sext i32 %230 to i64
  %arrayidx518 = getelementptr inbounds [513 x float], ptr %arrayidx515, i64 0, i64 %idxprom517
  %231 = load float, ptr %arrayidx518, align 4
  %232 = load i32, ptr %chn, align 4
  %idxprom519 = sext i32 %232 to i64
  %idxprom522 = sext i32 %230 to i64
  %arrayidx523 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom519, i64 1, i64 %idxprom522
  store float %231, ptr %arrayidx523, align 4
  store float %231, ptr %b1, align 4
  %idxprom524 = sext i32 %232 to i64
  %arrayidx525 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom524
  %233 = load i32, ptr %j, align 4
  %idxprom527 = sext i32 %233 to i64
  %arrayidx528 = getelementptr inbounds [513 x float], ptr %arrayidx525, i64 0, i64 %idxprom527
  %234 = load float, ptr %arrayidx528, align 4
  %235 = load i32, ptr %chn, align 4
  %idxprom529 = sext i32 %235 to i64
  %idxprom532 = sext i32 %233 to i64
  %arrayidx533 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom529, i64 1, i64 %idxprom532
  store float %234, ptr %arrayidx533, align 4
  store float %234, ptr %r1, align 4
  %236 = load ptr, ptr %wsamp_l, align 8
  %idxprom534 = sext i32 %233 to i64
  %arrayidx535 = getelementptr inbounds [1024 x float], ptr %236, i64 0, i64 %idxprom534
  %237 = load float, ptr %arrayidx535, align 4
  %238 = load i32, ptr %chn, align 4
  %idxprom536 = sext i32 %238 to i64
  %arrayidx537 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom536
  %239 = load i32, ptr %j, align 4
  %idxprom539 = sext i32 %239 to i64
  %arrayidx540 = getelementptr inbounds [513 x float], ptr %arrayidx537, i64 0, i64 %idxprom539
  store float %237, ptr %arrayidx540, align 4
  store float %237, ptr %an, align 4
  %cmp541 = icmp eq i32 %239, 0
  %240 = load ptr, ptr %wsamp_l, align 8
  %241 = load ptr, ptr %wsamp_l, align 8
  %242 = load i32, ptr %j, align 4
  %sub546 = sub nsw i32 1024, %242
  %idxprom547 = sext i32 %sub546 to i64
  %arrayidx548 = getelementptr inbounds [1024 x float], ptr %241, i64 0, i64 %idxprom547
  %cond550.in = select i1 %cmp541, ptr %240, ptr %arrayidx548
  %cond550 = load float, ptr %cond550.in, align 4
  %243 = load i32, ptr %chn, align 4
  %idxprom551 = sext i32 %243 to i64
  %arrayidx552 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom551
  %244 = load i32, ptr %j, align 4
  %idxprom554 = sext i32 %244 to i64
  %arrayidx555 = getelementptr inbounds [513 x float], ptr %arrayidx552, i64 0, i64 %idxprom554
  store float %cond550, ptr %arrayidx555, align 4
  store float %cond550, ptr %bn, align 4
  %idxprom556 = sext i32 %244 to i64
  %arrayidx557 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom556
  %245 = load float, ptr %arrayidx557, align 4
  %246 = call float @llvm.sqrt.f32(float %245)
  %247 = load i32, ptr %chn, align 4
  %idxprom560 = sext i32 %247 to i64
  %arrayidx561 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom560
  %248 = load i32, ptr %j, align 4
  %idxprom563 = sext i32 %248 to i64
  %arrayidx564 = getelementptr inbounds [513 x float], ptr %arrayidx561, i64 0, i64 %idxprom563
  store float %246, ptr %arrayidx564, align 4
  store float %246, ptr %rn, align 4
  %249 = load float, ptr %r1, align 4
  %cmp565 = fcmp une float %249, 0.000000e+00
  br i1 %cmp565, label %if.then567, label %if.else573

if.then567:                                       ; preds = %for.body488
  %250 = load float, ptr %a1, align 4
  %251 = load float, ptr %b1, align 4
  %mul568 = fmul float %250, %251
  store float %mul568, ptr %numre, align 4
  %252 = fneg float %251
  %neg = fmul float %251, %252
  %253 = call float @llvm.fmuladd.f32(float %250, float %250, float %neg)
  %mul571 = fmul float %253, 5.000000e-01
  store float %mul571, ptr %numim, align 4
  %254 = load float, ptr %r1, align 4
  %mul572 = fmul float %254, %254
  br label %if.end574

if.else573:                                       ; preds = %for.body488
  store float 1.000000e+00, ptr %numre, align 4
  store float 0.000000e+00, ptr %numim, align 4
  br label %if.end574

if.end574:                                        ; preds = %if.else573, %if.then567
  %storemerge31 = phi float [ 1.000000e+00, %if.else573 ], [ %mul572, %if.then567 ]
  store float %storemerge31, ptr %den, align 4
  %255 = load float, ptr %r2, align 4
  %cmp575 = fcmp une float %255, 0.000000e+00
  br i1 %cmp575, label %if.then577, label %if.end587

if.then577:                                       ; preds = %if.end574
  %256 = load float, ptr %numim, align 4
  %257 = load float, ptr %numre, align 4
  %add578 = fadd float %256, %257
  %258 = load float, ptr %a2, align 4
  %259 = load float, ptr %b2, align 4
  %add579 = fadd float %258, %259
  %mul580 = fmul float %add578, %add579
  %mul581 = fmul float %mul580, 5.000000e-01
  store float %mul581, ptr %tmp2, align 4
  %fneg = fneg float %258
  %260 = load float, ptr %numre, align 4
  %261 = call float @llvm.fmuladd.f32(float %fneg, float %260, float %mul581)
  store float %261, ptr %tmp1, align 4
  %262 = load float, ptr %b2, align 4
  %fneg583 = fneg float %262
  %263 = load float, ptr %numim, align 4
  %264 = load float, ptr %tmp2, align 4
  %265 = call float @llvm.fmuladd.f32(float %fneg583, float %263, float %264)
  store float %265, ptr %numre, align 4
  %266 = load float, ptr %tmp1, align 4
  store float %266, ptr %numim, align 4
  %267 = load float, ptr %r2, align 4
  %268 = load float, ptr %den, align 4
  %mul585 = fmul float %268, %267
  store float %mul585, ptr %den, align 4
  br label %if.end587

if.end587:                                        ; preds = %if.end574, %if.then577
  %269 = load float, ptr %r1, align 4
  %270 = load float, ptr %r2, align 4
  %neg589 = fneg float %270
  %271 = call float @llvm.fmuladd.f32(float %269, float 2.000000e+00, float %neg589)
  %272 = load float, ptr %den, align 4
  %div590 = fdiv float %271, %272
  %273 = load float, ptr %numre, align 4
  %mul591 = fmul float %273, %div590
  store float %mul591, ptr %numre, align 4
  %274 = load float, ptr %numim, align 4
  %mul592 = fmul float %274, %div590
  store float %mul592, ptr %numim, align 4
  %275 = load float, ptr %rn, align 4
  %276 = load float, ptr %r1, align 4
  %277 = load float, ptr %r2, align 4
  %neg595 = fneg float %277
  %278 = call float @llvm.fmuladd.f32(float %276, float 2.000000e+00, float %neg595)
  %279 = call float @llvm.fabs.f32(float %278)
  %conv598 = fadd float %275, %279
  store float %conv598, ptr %den, align 4
  %cmp599 = fcmp une float %conv598, 0.000000e+00
  br i1 %cmp599, label %if.then601, label %if.end614

if.then601:                                       ; preds = %if.end587
  %280 = load float, ptr %an, align 4
  %281 = load float, ptr %bn, align 4
  %add602 = fadd float %280, %281
  %282 = load float, ptr %numre, align 4
  %neg604 = fneg float %282
  %283 = call float @llvm.fmuladd.f32(float %add602, float 5.000000e-01, float %neg604)
  store float %283, ptr %numre, align 4
  %284 = load float, ptr %an, align 4
  %285 = load float, ptr %bn, align 4
  %sub605 = fsub float %284, %285
  %286 = load float, ptr %numim, align 4
  %neg607 = fneg float %286
  %287 = call float @llvm.fmuladd.f32(float %sub605, float 5.000000e-01, float %neg607)
  store float %287, ptr %numim, align 4
  %288 = load float, ptr %numre, align 4
  %mul609 = fmul float %287, %287
  %289 = call float @llvm.fmuladd.f32(float %288, float %288, float %mul609)
  %conv610 = fpext float %289 to double
  %290 = call double @llvm.sqrt.f64(double %conv610)
  %291 = load float, ptr %den, align 4
  %conv611 = fpext float %291 to double
  %div612 = fdiv double %290, %conv611
  %conv613 = fptrunc double %div612 to float
  store float %conv613, ptr %den, align 4
  br label %if.end614

if.end614:                                        ; preds = %if.then601, %if.end587
  %292 = load float, ptr %den, align 4
  %293 = load i32, ptr %j, align 4
  %idxprom615 = sext i32 %293 to i64
  %arrayidx616 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom615
  store float %292, ptr %arrayidx616, align 4
  %294 = load i32, ptr %j, align 4
  %inc618 = add nsw i32 %294, 1
  br label %for.cond485, !llvm.loop !32

for.end619:                                       ; preds = %for.cond485
  %295 = load i32, ptr @L3psycho_anal.cw_lower_index, align 4
  br label %for.cond620

for.cond620:                                      ; preds = %if.end724, %for.end619
  %storemerge14 = phi i32 [ %295, %for.end619 ], [ %add737, %if.end724 ]
  store i32 %storemerge14, ptr %j, align 4
  %296 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp621 = icmp slt i32 %storemerge14, %296
  br i1 %cmp621, label %for.body623, label %for.end738

for.body623:                                      ; preds = %for.cond620
  %297 = load i32, ptr %j, align 4
  %add630 = add nsw i32 %297, 2
  %div631 = sdiv i32 %add630, 4
  store i32 %div631, ptr %k, align 4
  %idxprom632 = sext i32 %div631 to i64
  %arrayidx633 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom632
  %298 = load float, ptr %arrayidx633, align 4
  store float %298, ptr %r1625, align 4
  %cmp634 = fcmp une float %298, 0.000000e+00
  br i1 %cmp634, label %if.then636, label %if.else653

if.then636:                                       ; preds = %for.body623
  %299 = load ptr, ptr %wsamp_s, align 8
  %300 = load i32, ptr %k, align 4
  %idxprom639 = sext i32 %300 to i64
  %arrayidx640 = getelementptr inbounds [256 x float], ptr %299, i64 0, i64 %idxprom639
  %301 = load float, ptr %arrayidx640, align 4
  store float %301, ptr %a1637, align 4
  %sub643 = sub nsw i32 256, %300
  %idxprom644 = sext i32 %sub643 to i64
  %arrayidx645 = getelementptr inbounds [256 x float], ptr %299, i64 0, i64 %idxprom644
  %302 = load float, ptr %arrayidx645, align 4
  %mul646 = fmul float %301, %302
  store float %mul646, ptr %numre627, align 4
  %303 = load float, ptr %a1637, align 4
  %304 = fneg float %302
  %neg649 = fmul float %302, %304
  %305 = call float @llvm.fmuladd.f32(float %303, float %303, float %neg649)
  %mul650 = fmul float %305, 5.000000e-01
  store float %mul650, ptr %numim628, align 4
  %306 = load float, ptr %r1625, align 4
  store float %306, ptr %den629, align 4
  %307 = call float @llvm.sqrt.f32(float %306)
  store float %307, ptr %r1625, align 4
  br label %if.end654

if.else653:                                       ; preds = %for.body623
  store float 1.000000e+00, ptr %numre627, align 4
  store float 0.000000e+00, ptr %numim628, align 4
  store float 1.000000e+00, ptr %den629, align 4
  br label %if.end654

if.end654:                                        ; preds = %if.else653, %if.then636
  %308 = load i32, ptr %k, align 4
  %idxprom655 = sext i32 %308 to i64
  %arrayidx656 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2, i64 %idxprom655
  %309 = load float, ptr %arrayidx656, align 4
  store float %309, ptr %r2626, align 4
  %cmp657 = fcmp une float %309, 0.000000e+00
  br i1 %cmp657, label %if.then659, label %if.end683

if.then659:                                       ; preds = %if.end654
  %310 = load ptr, ptr %wsamp_s, align 8
  %311 = load i32, ptr %k, align 4
  %idxprom662 = sext i32 %311 to i64
  %arrayidx663 = getelementptr inbounds [3 x [256 x float]], ptr %310, i64 0, i64 2, i64 %idxprom662
  %312 = load float, ptr %arrayidx663, align 4
  store float %312, ptr %a2660, align 4
  %sub666 = sub nsw i32 256, %311
  %idxprom667 = sext i32 %sub666 to i64
  %arrayidx668 = getelementptr inbounds [3 x [256 x float]], ptr %310, i64 0, i64 2, i64 %idxprom667
  %313 = load float, ptr %arrayidx668, align 4
  store float %313, ptr %b2664, align 4
  %314 = load float, ptr %numim628, align 4
  %315 = load float, ptr %numre627, align 4
  %add670 = fadd float %314, %315
  %316 = load float, ptr %a2660, align 4
  %add671 = fadd float %316, %313
  %mul672 = fmul float %add670, %add671
  %mul673 = fmul float %mul672, 5.000000e-01
  store float %mul673, ptr %tmp2669, align 4
  %fneg675 = fneg float %316
  %317 = load float, ptr %numre627, align 4
  %318 = call float @llvm.fmuladd.f32(float %fneg675, float %317, float %mul673)
  store float %318, ptr %tmp1674, align 4
  %319 = load float, ptr %b2664, align 4
  %fneg677 = fneg float %319
  %320 = load float, ptr %numim628, align 4
  %321 = load float, ptr %tmp2669, align 4
  %322 = call float @llvm.fmuladd.f32(float %fneg677, float %320, float %321)
  store float %322, ptr %numre627, align 4
  %323 = load float, ptr %tmp1674, align 4
  store float %323, ptr %numim628, align 4
  %324 = load float, ptr %r2626, align 4
  %325 = call float @llvm.sqrt.f32(float %324)
  store float %325, ptr %r2626, align 4
  %326 = load float, ptr %den629, align 4
  %mul681 = fmul float %326, %325
  store float %mul681, ptr %den629, align 4
  br label %if.end683

if.end683:                                        ; preds = %if.end654, %if.then659
  %327 = load float, ptr %r1625, align 4
  %328 = load float, ptr %r2626, align 4
  %neg686 = fneg float %328
  %329 = call float @llvm.fmuladd.f32(float %327, float 2.000000e+00, float %neg686)
  %330 = load float, ptr %den629, align 4
  %div687 = fdiv float %329, %330
  %331 = load float, ptr %numre627, align 4
  %mul688 = fmul float %331, %div687
  store float %mul688, ptr %numre627, align 4
  %332 = load float, ptr %numim628, align 4
  %mul689 = fmul float %332, %div687
  store float %mul689, ptr %numim628, align 4
  %333 = load i32, ptr %k, align 4
  %idxprom690 = sext i32 %333 to i64
  %arrayidx691 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1, i64 %idxprom690
  %334 = load float, ptr %arrayidx691, align 4
  %335 = call float @llvm.sqrt.f32(float %334)
  %336 = load float, ptr %r1625, align 4
  %337 = load float, ptr %r2626, align 4
  %neg696 = fneg float %337
  %338 = call float @llvm.fmuladd.f32(float %336, float 2.000000e+00, float %neg696)
  %339 = call float @llvm.fabs.f32(float %338)
  %conv699 = fadd float %335, %339
  store float %conv699, ptr %den629, align 4
  %cmp700 = fcmp une float %conv699, 0.000000e+00
  br i1 %cmp700, label %if.then702, label %if.end724

if.then702:                                       ; preds = %if.end683
  %340 = load ptr, ptr %wsamp_s, align 8
  %341 = load i32, ptr %k, align 4
  %idxprom705 = sext i32 %341 to i64
  %arrayidx706 = getelementptr inbounds [3 x [256 x float]], ptr %340, i64 0, i64 1, i64 %idxprom705
  %342 = load float, ptr %arrayidx706, align 4
  store float %342, ptr %an703, align 4
  %sub709 = sub nsw i32 256, %341
  %idxprom710 = sext i32 %sub709 to i64
  %arrayidx711 = getelementptr inbounds [3 x [256 x float]], ptr %340, i64 0, i64 1, i64 %idxprom710
  %343 = load float, ptr %arrayidx711, align 4
  store float %343, ptr %bn707, align 4
  %add712 = fadd float %342, %343
  %344 = load float, ptr %numre627, align 4
  %neg714 = fneg float %344
  %345 = call float @llvm.fmuladd.f32(float %add712, float 5.000000e-01, float %neg714)
  store float %345, ptr %numre627, align 4
  %346 = load float, ptr %an703, align 4
  %347 = load float, ptr %bn707, align 4
  %sub715 = fsub float %346, %347
  %348 = load float, ptr %numim628, align 4
  %neg717 = fneg float %348
  %349 = call float @llvm.fmuladd.f32(float %sub715, float 5.000000e-01, float %neg717)
  store float %349, ptr %numim628, align 4
  %350 = load float, ptr %numre627, align 4
  %mul719 = fmul float %349, %349
  %351 = call float @llvm.fmuladd.f32(float %350, float %350, float %mul719)
  %conv720 = fpext float %351 to double
  %352 = call double @llvm.sqrt.f64(double %conv720)
  %353 = load float, ptr %den629, align 4
  %conv721 = fpext float %353 to double
  %div722 = fdiv double %352, %conv721
  %conv723 = fptrunc double %div722 to float
  store float %conv723, ptr %den629, align 4
  br label %if.end724

if.end724:                                        ; preds = %if.then702, %if.end683
  %354 = load float, ptr %den629, align 4
  %355 = load i32, ptr %j, align 4
  %idxprom725 = sext i32 %355 to i64
  %arrayidx726 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom725
  store float %354, ptr %arrayidx726, align 4
  %add727 = add nsw i32 %355, 3
  %idxprom728 = sext i32 %add727 to i64
  %arrayidx729 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom728
  store float %354, ptr %arrayidx729, align 4
  %356 = load i32, ptr %j, align 4
  %add730 = add nsw i32 %356, 2
  %idxprom731 = sext i32 %add730 to i64
  %arrayidx732 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom731
  store float %354, ptr %arrayidx732, align 4
  %add733 = add nsw i32 %356, 1
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom734
  store float %354, ptr %arrayidx735, align 4
  %357 = load i32, ptr %j, align 4
  %add737 = add nsw i32 %357, 4
  br label %for.cond620, !llvm.loop !33

for.end738:                                       ; preds = %for.cond620
  store i32 0, ptr %b, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond739

for.cond739:                                      ; preds = %for.end775, %for.end738
  %358 = load i32, ptr %j, align 4
  %359 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp740 = icmp slt i32 %358, %359
  br i1 %cmp740, label %for.body742, label %for.cond782

for.body742:                                      ; preds = %for.cond739
  %360 = load i32, ptr %j, align 4
  %idxprom744 = sext i32 %360 to i64
  %arrayidx745 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom744
  %361 = load float, ptr %arrayidx745, align 4
  %conv746 = fpext float %361 to double
  store double %conv746, ptr %ebb, align 8
  %idxprom747 = sext i32 %360 to i64
  %arrayidx748 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom747
  %362 = load float, ptr %arrayidx748, align 4
  %363 = load i32, ptr %j, align 4
  %idxprom749 = sext i32 %363 to i64
  %arrayidx750 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom749
  %364 = load float, ptr %arrayidx750, align 4
  %mul751 = fmul float %362, %364
  %conv752 = fpext float %mul751 to double
  store double %conv752, ptr %cbb, align 8
  %365 = load i32, ptr %j, align 4
  %inc753 = add nsw i32 %365, 1
  store i32 %inc753, ptr %j, align 4
  %366 = load i32, ptr %b, align 4
  %idxprom754 = sext i32 %366 to i64
  %arrayidx755 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %idxprom754
  %367 = load i32, ptr %arrayidx755, align 4
  br label %for.cond757

for.cond757:                                      ; preds = %for.body760, %for.body742
  %storemerge30.in = phi i32 [ %367, %for.body742 ], [ %376, %for.body760 ]
  %storemerge30 = add nsw i32 %storemerge30.in, -1
  store i32 %storemerge30, ptr %i743, align 4
  %cmp758 = icmp sgt i32 %storemerge30.in, 1
  br i1 %cmp758, label %for.body760, label %for.end775

for.body760:                                      ; preds = %for.cond757
  %368 = load i32, ptr %j, align 4
  %idxprom761 = sext i32 %368 to i64
  %arrayidx762 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom761
  %369 = load float, ptr %arrayidx762, align 4
  %conv763 = fpext float %369 to double
  %370 = load double, ptr %ebb, align 8
  %add764 = fadd double %370, %conv763
  store double %add764, ptr %ebb, align 8
  %371 = load i32, ptr %j, align 4
  %idxprom765 = sext i32 %371 to i64
  %arrayidx766 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom765
  %372 = load float, ptr %arrayidx766, align 4
  %idxprom767 = sext i32 %371 to i64
  %arrayidx768 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom767
  %373 = load float, ptr %arrayidx768, align 4
  %mul769 = fmul float %372, %373
  %conv770 = fpext float %mul769 to double
  %374 = load double, ptr %cbb, align 8
  %add771 = fadd double %374, %conv770
  store double %add771, ptr %cbb, align 8
  %375 = load i32, ptr %j, align 4
  %inc772 = add nsw i32 %375, 1
  store i32 %inc772, ptr %j, align 4
  %376 = load i32, ptr %i743, align 4
  br label %for.cond757, !llvm.loop !34

for.end775:                                       ; preds = %for.cond757
  %377 = load double, ptr %ebb, align 8
  %378 = load i32, ptr %b, align 4
  %idxprom776 = sext i32 %378 to i64
  %arrayidx777 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom776
  store double %377, ptr %arrayidx777, align 8
  %379 = load double, ptr %cbb, align 8
  %idxprom778 = sext i32 %378 to i64
  %arrayidx779 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %idxprom778
  store double %379, ptr %arrayidx779, align 8
  %380 = load i32, ptr %b, align 4
  %inc780 = add nsw i32 %380, 1
  store i32 %inc780, ptr %b, align 4
  br label %for.cond739, !llvm.loop !35

for.cond782:                                      ; preds = %for.cond739, %for.end806
  %381 = load i32, ptr %b, align 4
  %382 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp783 = icmp slt i32 %381, %382
  br i1 %cmp783, label %for.body785, label %for.end814

for.body785:                                      ; preds = %for.cond782
  %383 = load i32, ptr %j, align 4
  %inc788 = add nsw i32 %383, 1
  store i32 %inc788, ptr %j, align 4
  %idxprom789 = sext i32 %383 to i64
  %arrayidx790 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom789
  %384 = load float, ptr %arrayidx790, align 4
  %conv791 = fpext float %384 to double
  store double %conv791, ptr %ebb787, align 8
  %385 = load i32, ptr %b, align 4
  %idxprom792 = sext i32 %385 to i64
  %arrayidx793 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %idxprom792
  %386 = load i32, ptr %arrayidx793, align 4
  br label %for.cond795

for.cond795:                                      ; preds = %for.body798, %for.body785
  %storemerge29.in = phi i32 [ %386, %for.body785 ], [ %390, %for.body798 ]
  %storemerge29 = add nsw i32 %storemerge29.in, -1
  store i32 %storemerge29, ptr %i786, align 4
  %cmp796 = icmp sgt i32 %storemerge29.in, 1
  br i1 %cmp796, label %for.body798, label %for.end806

for.body798:                                      ; preds = %for.cond795
  %387 = load i32, ptr %j, align 4
  %inc799 = add nsw i32 %387, 1
  store i32 %inc799, ptr %j, align 4
  %idxprom800 = sext i32 %387 to i64
  %arrayidx801 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom800
  %388 = load float, ptr %arrayidx801, align 4
  %conv802 = fpext float %388 to double
  %389 = load double, ptr %ebb787, align 8
  %add803 = fadd double %389, %conv802
  store double %add803, ptr %ebb787, align 8
  %390 = load i32, ptr %i786, align 4
  br label %for.cond795, !llvm.loop !36

for.end806:                                       ; preds = %for.cond795
  %391 = load double, ptr %ebb787, align 8
  %392 = load i32, ptr %b, align 4
  %idxprom807 = sext i32 %392 to i64
  %arrayidx808 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom807
  store double %391, ptr %arrayidx808, align 8
  %mul809 = fmul double %391, 4.000000e-01
  %idxprom810 = sext i32 %392 to i64
  %arrayidx811 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %idxprom810
  store double %mul809, ptr %arrayidx811, align 8
  %393 = load i32, ptr %b, align 4
  %inc813 = add nsw i32 %393, 1
  store i32 %inc813, ptr %b, align 4
  br label %for.cond782, !llvm.loop !37

for.end814:                                       ; preds = %for.cond782
  %394 = load i32, ptr %chn, align 4
  %idxprom815 = sext i32 %394 to i64
  %arrayidx816 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom815
  store double 0.000000e+00, ptr %arrayidx816, align 8
  br label %for.cond817

for.cond817:                                      ; preds = %for.inc977, %for.end814
  %storemerge15 = phi i32 [ 0, %for.end814 ], [ %inc978, %for.inc977 ]
  store i32 %storemerge15, ptr %b, align 4
  %395 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %cmp818 = icmp slt i32 %storemerge15, %395
  br i1 %cmp818, label %for.body820, label %for.end979

for.body820:                                      ; preds = %for.cond817
  store double 0.000000e+00, ptr %ecb, align 8
  store double 0.000000e+00, ptr %ctb, align 8
  %396 = load i32, ptr %b, align 4
  %idxprom821 = sext i32 %396 to i64
  %arrayidx822 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom821
  %397 = load i32, ptr %arrayidx822, align 4
  br label %for.cond824

for.cond824:                                      ; preds = %for.body830, %for.body820
  %storemerge26 = phi i32 [ %397, %for.body820 ], [ %inc846, %for.body830 ]
  store i32 %storemerge26, ptr %k, align 4
  %398 = load i32, ptr %b, align 4
  %idxprom825 = sext i32 %398 to i64
  %arrayidx827 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom825, i64 1
  %399 = load i32, ptr %arrayidx827, align 4
  %cmp828.not = icmp sgt i32 %storemerge26, %399
  br i1 %cmp828.not, label %for.end847, label %for.body830

for.body830:                                      ; preds = %for.cond824
  %400 = load i32, ptr %b, align 4
  %idxprom831 = sext i32 %400 to i64
  %401 = load i32, ptr %k, align 4
  %idxprom833 = sext i32 %401 to i64
  %arrayidx834 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom831, i64 %idxprom833
  %402 = load double, ptr %arrayidx834, align 8
  %idxprom835 = sext i32 %401 to i64
  %arrayidx836 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom835
  %403 = load double, ptr %arrayidx836, align 8
  %404 = load double, ptr %ecb, align 8
  %405 = call double @llvm.fmuladd.f64(double %402, double %403, double %404)
  store double %405, ptr %ecb, align 8
  %406 = load i32, ptr %b, align 4
  %idxprom838 = sext i32 %406 to i64
  %407 = load i32, ptr %k, align 4
  %idxprom840 = sext i32 %407 to i64
  %arrayidx841 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom838, i64 %idxprom840
  %408 = load double, ptr %arrayidx841, align 8
  %idxprom842 = sext i32 %407 to i64
  %arrayidx843 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %idxprom842
  %409 = load double, ptr %arrayidx843, align 8
  %410 = load double, ptr %ctb, align 8
  %411 = call double @llvm.fmuladd.f64(double %408, double %409, double %410)
  store double %411, ptr %ctb, align 8
  %412 = load i32, ptr %k, align 4
  %inc846 = add nsw i32 %412, 1
  br label %for.cond824, !llvm.loop !38

for.end847:                                       ; preds = %for.cond824
  %413 = load double, ptr %ecb, align 8
  store double %413, ptr %tbb, align 8
  %cmp848 = fcmp une double %413, 0.000000e+00
  br i1 %cmp848, label %if.then850, label %if.end863

if.then850:                                       ; preds = %for.end847
  %414 = load double, ptr %ctb, align 8
  %415 = load double, ptr %tbb, align 8
  %div851 = fdiv double %414, %415
  store double %div851, ptr %tbb, align 8
  %cmp852 = fcmp ugt double %div851, 0x3FA8F6869E6F084D
  br i1 %cmp852, label %if.else855, label %if.end862

if.else855:                                       ; preds = %if.then850
  %416 = load double, ptr %tbb, align 8
  %cmp856 = fcmp ogt double %416, 0x3FDFEDFBDEEA22F7
  br i1 %cmp856, label %if.end862, label %if.else859

if.else859:                                       ; preds = %if.else855
  %417 = load double, ptr %tbb, align 8
  %418 = call double @llvm.log.f64(double %417)
  %419 = call double @llvm.fmuladd.f64(double %418, double 0x3FF30298B36105E3, double 0x3FEA6FF6E4078667)
  %420 = call double @llvm.exp.f64(double %419)
  br label %if.end862

if.end862:                                        ; preds = %if.else859, %if.else855, %if.then850
  %storemerge28 = phi double [ 0x3FB0270AC3F8A9F9, %if.then850 ], [ %420, %if.else859 ], [ 1.000000e+00, %if.else855 ]
  store double %storemerge28, ptr %tbb, align 8
  br label %if.end863

if.end863:                                        ; preds = %if.end862, %for.end847
  %421 = load i32, ptr %b, align 4
  %idxprom864 = sext i32 %421 to i64
  %arrayidx865 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.minval, i64 0, i64 %idxprom864
  %422 = load double, ptr %arrayidx865, align 8
  %423 = load double, ptr %tbb, align 8
  %cmp866 = fcmp olt double %422, %423
  br i1 %cmp866, label %cond.true868, label %cond.false871

cond.true868:                                     ; preds = %if.end863
  %424 = load i32, ptr %b, align 4
  %idxprom869 = sext i32 %424 to i64
  %arrayidx870 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.minval, i64 0, i64 %idxprom869
  %425 = load double, ptr %arrayidx870, align 8
  br label %cond.end872

cond.false871:                                    ; preds = %if.end863
  %426 = load double, ptr %tbb, align 8
  br label %cond.end872

cond.end872:                                      ; preds = %cond.false871, %cond.true868
  %cond873 = phi double [ %425, %cond.true868 ], [ %426, %cond.false871 ]
  store double %cond873, ptr %tbb, align 8
  %427 = load double, ptr %ecb, align 8
  %mul874 = fmul double %427, %cond873
  store double %mul874, ptr %ecb, align 8
  %428 = load i32, ptr %chn, align 4
  %idxprom875 = sext i32 %428 to i64
  %429 = load i32, ptr %b, align 4
  %idxprom877 = sext i32 %429 to i64
  %arrayidx878 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom875, i64 %idxprom877
  %430 = load double, ptr %arrayidx878, align 8
  %mul879 = fmul double %430, 2.000000e+00
  %431 = load i32, ptr %chn, align 4
  %idxprom880 = sext i32 %431 to i64
  %432 = load i32, ptr %b, align 4
  %idxprom882 = sext i32 %432 to i64
  %arrayidx883 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom880, i64 %idxprom882
  %433 = load double, ptr %arrayidx883, align 8
  %mul884 = fmul double %433, 1.600000e+01
  %cmp885 = fcmp olt double %mul879, %mul884
  br i1 %cmp885, label %cond.true887, label %cond.false893

cond.true887:                                     ; preds = %cond.end872
  %434 = load i32, ptr %chn, align 4
  %idxprom888 = sext i32 %434 to i64
  %435 = load i32, ptr %b, align 4
  %idxprom890 = sext i32 %435 to i64
  %arrayidx891 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom888, i64 %idxprom890
  %436 = load double, ptr %arrayidx891, align 8
  %mul892 = fmul double %436, 2.000000e+00
  br label %cond.end899

cond.false893:                                    ; preds = %cond.end872
  %437 = load i32, ptr %chn, align 4
  %idxprom894 = sext i32 %437 to i64
  %438 = load i32, ptr %b, align 4
  %idxprom896 = sext i32 %438 to i64
  %arrayidx897 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom894, i64 %idxprom896
  %439 = load double, ptr %arrayidx897, align 8
  %mul898 = fmul double %439, 1.600000e+01
  br label %cond.end899

cond.end899:                                      ; preds = %cond.false893, %cond.true887
  %cond900 = phi double [ %mul892, %cond.true887 ], [ %mul898, %cond.false893 ]
  %cmp901 = fcmp olt double %mul874, %cond900
  br i1 %cmp901, label %cond.true903, label %cond.false904

cond.true903:                                     ; preds = %cond.end899
  %440 = load double, ptr %ecb, align 8
  br label %cond.end931

cond.false904:                                    ; preds = %cond.end899
  %441 = load i32, ptr %chn, align 4
  %idxprom905 = sext i32 %441 to i64
  %442 = load i32, ptr %b, align 4
  %idxprom907 = sext i32 %442 to i64
  %arrayidx908 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom905, i64 %idxprom907
  %443 = load double, ptr %arrayidx908, align 8
  %mul909 = fmul double %443, 2.000000e+00
  %444 = load i32, ptr %chn, align 4
  %idxprom910 = sext i32 %444 to i64
  %445 = load i32, ptr %b, align 4
  %idxprom912 = sext i32 %445 to i64
  %arrayidx913 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom910, i64 %idxprom912
  %446 = load double, ptr %arrayidx913, align 8
  %mul914 = fmul double %446, 1.600000e+01
  %cmp915 = fcmp olt double %mul909, %mul914
  br i1 %cmp915, label %cond.true917, label %cond.false923

cond.true917:                                     ; preds = %cond.false904
  %447 = load i32, ptr %chn, align 4
  %idxprom918 = sext i32 %447 to i64
  %448 = load i32, ptr %b, align 4
  %idxprom920 = sext i32 %448 to i64
  %arrayidx921 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom918, i64 %idxprom920
  %449 = load double, ptr %arrayidx921, align 8
  %mul922 = fmul double %449, 2.000000e+00
  br label %cond.end931

cond.false923:                                    ; preds = %cond.false904
  %450 = load i32, ptr %chn, align 4
  %idxprom924 = sext i32 %450 to i64
  %451 = load i32, ptr %b, align 4
  %idxprom926 = sext i32 %451 to i64
  %arrayidx927 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom924, i64 %idxprom926
  %452 = load double, ptr %arrayidx927, align 8
  %mul928 = fmul double %452, 1.600000e+01
  br label %cond.end931

cond.end931:                                      ; preds = %cond.true917, %cond.false923, %cond.true903
  %cond932 = phi double [ %440, %cond.true903 ], [ %mul922, %cond.true917 ], [ %mul928, %cond.false923 ]
  store double %cond932, ptr %temp_1, align 8
  %453 = load i32, ptr %b, align 4
  %idxprom933 = sext i32 %453 to i64
  %arrayidx934 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_l, i64 0, i64 %idxprom933
  %454 = load double, ptr %arrayidx934, align 8
  %cmp935 = fcmp ogt double %454, %cond932
  br i1 %cmp935, label %cond.true937, label %cond.false940

cond.true937:                                     ; preds = %cond.end931
  %455 = load i32, ptr %b, align 4
  %idxprom938 = sext i32 %455 to i64
  %arrayidx939 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_l, i64 0, i64 %idxprom938
  %456 = load double, ptr %arrayidx939, align 8
  br label %cond.end941

cond.false940:                                    ; preds = %cond.end931
  %457 = load double, ptr %temp_1, align 8
  br label %cond.end941

cond.end941:                                      ; preds = %cond.false940, %cond.true937
  %cond942 = phi double [ %456, %cond.true937 ], [ %457, %cond.false940 ]
  %458 = load i32, ptr %b, align 4
  %idxprom943 = sext i32 %458 to i64
  %arrayidx944 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom943
  store double %cond942, ptr %arrayidx944, align 8
  %459 = load i32, ptr %chn, align 4
  %idxprom945 = sext i32 %459 to i64
  %idxprom947 = sext i32 %458 to i64
  %arrayidx948 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom945, i64 %idxprom947
  %460 = load double, ptr %arrayidx948, align 8
  %idxprom949 = sext i32 %459 to i64
  %idxprom951 = sext i32 %458 to i64
  %arrayidx952 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom949, i64 %idxprom951
  store double %460, ptr %arrayidx952, align 8
  %461 = load double, ptr %ecb, align 8
  %462 = load i32, ptr %chn, align 4
  %idxprom953 = sext i32 %462 to i64
  %463 = load i32, ptr %b, align 4
  %idxprom955 = sext i32 %463 to i64
  %arrayidx956 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom953, i64 %idxprom955
  store double %461, ptr %arrayidx956, align 8
  %idxprom957 = sext i32 %463 to i64
  %arrayidx958 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom957
  %464 = load double, ptr %arrayidx958, align 8
  %465 = load i32, ptr %b, align 4
  %idxprom959 = sext i32 %465 to i64
  %arrayidx960 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom959
  %466 = load double, ptr %arrayidx960, align 8
  %cmp961 = fcmp olt double %464, %466
  br i1 %cmp961, label %if.then963, label %for.inc977

if.then963:                                       ; preds = %cond.end941
  %467 = load i32, ptr %b, align 4
  %idxprom964 = sext i32 %467 to i64
  %arrayidx965 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %idxprom964
  %468 = load i32, ptr %arrayidx965, align 4
  %conv966 = sitofp i32 %468 to double
  %idxprom967 = sext i32 %467 to i64
  %arrayidx968 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom967
  %469 = load double, ptr %arrayidx968, align 8
  %470 = load i32, ptr %b, align 4
  %idxprom969 = sext i32 %470 to i64
  %arrayidx970 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom969
  %471 = load double, ptr %arrayidx970, align 8
  %div971 = fdiv double %469, %471
  %472 = call double @llvm.log.f64(double %div971)
  %473 = load i32, ptr %chn, align 4
  %idxprom973 = sext i32 %473 to i64
  %arrayidx974 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom973
  %474 = load double, ptr %arrayidx974, align 8
  %neg975 = fneg double %conv966
  %475 = call double @llvm.fmuladd.f64(double %neg975, double %472, double %474)
  store double %475, ptr %arrayidx974, align 8
  br label %for.inc977

for.inc977:                                       ; preds = %cond.end941, %if.then963
  %476 = load i32, ptr %b, align 4
  %inc978 = add nsw i32 %476, 1
  br label %for.cond817, !llvm.loop !39

for.end979:                                       ; preds = %for.cond817
  %477 = load i32, ptr %chn, align 4
  %cmp980 = icmp slt i32 %477, 2
  br i1 %cmp980, label %if.then982, label %if.end1059

if.then982:                                       ; preds = %for.end979
  %478 = load ptr, ptr %gfp.addr, align 8
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, ptr %478, i64 0, i32 37
  %479 = load i32, ptr %no_short_blocks, align 8
  %tobool.not = icmp eq i32 %479, 0
  br i1 %tobool.not, label %if.else986, label %if.then983

if.then983:                                       ; preds = %if.then982
  %480 = load i32, ptr %chn, align 4
  %idxprom984 = sext i32 %480 to i64
  %arrayidx985 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom984
  store i32 1, ptr %arrayidx985, align 4
  br label %if.end1059

if.else986:                                       ; preds = %if.then982
  %481 = load i32, ptr %chn, align 4
  %idxprom987 = sext i32 %481 to i64
  %arrayidx988 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom987
  %482 = load double, ptr %arrayidx988, align 8
  %cmp989 = fcmp ogt double %482, 3.000000e+03
  br i1 %cmp989, label %if.then991, label %if.else994

if.then991:                                       ; preds = %if.else986
  %483 = load i32, ptr %chn, align 4
  %idxprom992 = sext i32 %483 to i64
  %arrayidx993 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom992
  store i32 0, ptr %arrayidx993, align 4
  br label %if.end1059

if.else994:                                       ; preds = %if.else986
  store float 0.000000e+00, ptr %ma, align 4
  store float 0.000000e+00, ptr %mb, align 4
  store float 0.000000e+00, ptr %mc, align 4
  br label %for.cond995

for.cond995:                                      ; preds = %for.body998, %if.else994
  %storemerge25 = phi i32 [ 64, %if.else994 ], [ %inc1009, %for.body998 ]
  store i32 %storemerge25, ptr %j, align 4
  %cmp996 = icmp slt i32 %storemerge25, 129
  br i1 %cmp996, label %for.body998, label %for.end1010

for.body998:                                      ; preds = %for.cond995
  %484 = load i32, ptr %j, align 4
  %idxprom999 = sext i32 %484 to i64
  %arrayidx1000 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom999
  %485 = load float, ptr %arrayidx1000, align 4
  %486 = load float, ptr %ma, align 4
  %add1001 = fadd float %486, %485
  store float %add1001, ptr %ma, align 4
  %487 = load i32, ptr %j, align 4
  %idxprom1002 = sext i32 %487 to i64
  %arrayidx1003 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1, i64 %idxprom1002
  %488 = load float, ptr %arrayidx1003, align 4
  %489 = load float, ptr %mb, align 4
  %add1004 = fadd float %489, %488
  store float %add1004, ptr %mb, align 4
  %490 = load i32, ptr %j, align 4
  %idxprom1005 = sext i32 %490 to i64
  %arrayidx1006 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2, i64 %idxprom1005
  %491 = load float, ptr %arrayidx1006, align 4
  %492 = load float, ptr %mc, align 4
  %add1007 = fadd float %492, %491
  store float %add1007, ptr %mc, align 4
  %493 = load i32, ptr %j, align 4
  %inc1009 = add nsw i32 %493, 1
  br label %for.cond995, !llvm.loop !40

for.end1010:                                      ; preds = %for.cond995
  %494 = load float, ptr %ma, align 4
  %495 = load float, ptr %mb, align 4
  %cmp1011 = fcmp olt float %494, %495
  %496 = load float, ptr %ma, align 4
  %497 = load float, ptr %mb, align 4
  %cond1016 = select i1 %cmp1011, float %496, float %497
  store float %cond1016, ptr %mn, align 4
  %498 = load float, ptr %mc, align 4
  %cmp1017 = fcmp olt float %cond1016, %498
  %499 = load float, ptr %mn, align 4
  %500 = load float, ptr %mc, align 4
  %cond1022 = select i1 %cmp1017, float %499, float %500
  store float %cond1022, ptr %mn, align 4
  %501 = load float, ptr %ma, align 4
  %502 = load float, ptr %mb, align 4
  %cmp1023 = fcmp ogt float %501, %502
  %503 = load float, ptr %ma, align 4
  %504 = load float, ptr %mb, align 4
  %cond1028 = select i1 %cmp1023, float %503, float %504
  store float %cond1028, ptr %mx, align 4
  %505 = load float, ptr %mc, align 4
  %cmp1029 = fcmp ogt float %cond1028, %505
  %506 = load float, ptr %mx, align 4
  %507 = load float, ptr %mc, align 4
  %cond1034 = select i1 %cmp1029, float %506, float %507
  store float %cond1034, ptr %mx, align 4
  %508 = load i32, ptr %chn, align 4
  %idxprom1035 = sext i32 %508 to i64
  %arrayidx1036 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1035
  store i32 1, ptr %arrayidx1036, align 4
  %509 = load float, ptr %mn, align 4
  %mul1037 = fmul float %509, 3.000000e+01
  %cmp1038 = fcmp ogt float %cond1034, %mul1037
  br i1 %cmp1038, label %if.then1040, label %if.else1043

if.then1040:                                      ; preds = %for.end1010
  %510 = load i32, ptr %chn, align 4
  %idxprom1041 = sext i32 %510 to i64
  %arrayidx1042 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1041
  store i32 0, ptr %arrayidx1042, align 4
  br label %if.end1059

if.else1043:                                      ; preds = %for.end1010
  %511 = load float, ptr %mx, align 4
  %512 = load float, ptr %mn, align 4
  %mul1044 = fmul float %512, 1.000000e+01
  %cmp1045 = fcmp ogt float %511, %mul1044
  br i1 %cmp1045, label %land.lhs.true1047, label %if.end1059

land.lhs.true1047:                                ; preds = %if.else1043
  %513 = load i32, ptr %chn, align 4
  %idxprom1048 = sext i32 %513 to i64
  %arrayidx1049 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom1048
  %514 = load double, ptr %arrayidx1049, align 8
  %cmp1050 = fcmp ogt double %514, 1.000000e+03
  br i1 %cmp1050, label %if.then1052, label %if.end1059

if.then1052:                                      ; preds = %land.lhs.true1047
  %515 = load i32, ptr %chn, align 4
  %idxprom1053 = sext i32 %515 to i64
  %arrayidx1054 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1053
  store i32 0, ptr %arrayidx1054, align 4
  br label %if.end1059

if.end1059:                                       ; preds = %if.then983, %if.then1040, %if.then1052, %land.lhs.true1047, %if.else1043, %if.then991, %for.end979
  br label %for.cond1060

for.cond1060:                                     ; preds = %for.end1109, %if.end1059
  %storemerge16 = phi i32 [ 0, %if.end1059 ], [ %inc1121, %for.end1109 ]
  store i32 %storemerge16, ptr %sb, align 4
  %cmp1061 = icmp slt i32 %storemerge16, 21
  br i1 %cmp1061, label %for.body1063, label %for.cond1123

for.body1063:                                     ; preds = %for.cond1060
  %516 = load i32, ptr %sb, align 4
  %idxprom1064 = sext i32 %516 to i64
  %arrayidx1065 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w1_l, i64 0, i64 %idxprom1064
  %517 = load double, ptr %arrayidx1065, align 8
  %idxprom1066 = sext i32 %516 to i64
  %arrayidx1067 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %idxprom1066
  %518 = load i32, ptr %arrayidx1067, align 4
  %idxprom1068 = sext i32 %518 to i64
  %arrayidx1069 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1068
  %519 = load double, ptr %arrayidx1069, align 8
  %520 = load i32, ptr %sb, align 4
  %idxprom1071 = sext i32 %520 to i64
  %arrayidx1072 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 %idxprom1071
  %521 = load double, ptr %arrayidx1072, align 8
  %idxprom1073 = sext i32 %520 to i64
  %arrayidx1074 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %idxprom1073
  %522 = load i32, ptr %arrayidx1074, align 4
  %idxprom1075 = sext i32 %522 to i64
  %arrayidx1076 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1075
  %523 = load double, ptr %arrayidx1076, align 8
  %mul1077 = fmul double %521, %523
  %524 = call double @llvm.fmuladd.f64(double %517, double %519, double %mul1077)
  store double %524, ptr %enn, align 8
  %525 = load i32, ptr %sb, align 4
  %idxprom1078 = sext i32 %525 to i64
  %arrayidx1079 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w1_l, i64 0, i64 %idxprom1078
  %526 = load double, ptr %arrayidx1079, align 8
  %idxprom1080 = sext i32 %525 to i64
  %arrayidx1081 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %idxprom1080
  %527 = load i32, ptr %arrayidx1081, align 4
  %idxprom1082 = sext i32 %527 to i64
  %arrayidx1083 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1082
  %528 = load double, ptr %arrayidx1083, align 8
  %529 = load i32, ptr %sb, align 4
  %idxprom1085 = sext i32 %529 to i64
  %arrayidx1086 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 %idxprom1085
  %530 = load double, ptr %arrayidx1086, align 8
  %idxprom1087 = sext i32 %529 to i64
  %arrayidx1088 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %idxprom1087
  %531 = load i32, ptr %arrayidx1088, align 4
  %idxprom1089 = sext i32 %531 to i64
  %arrayidx1090 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1089
  %532 = load double, ptr %arrayidx1090, align 8
  %mul1091 = fmul double %530, %532
  %533 = call double @llvm.fmuladd.f64(double %526, double %528, double %mul1091)
  store double %533, ptr %thmm, align 8
  %534 = load i32, ptr %sb, align 4
  %idxprom1092 = sext i32 %534 to i64
  %arrayidx1093 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %idxprom1092
  %535 = load i32, ptr %arrayidx1093, align 4
  br label %for.cond1095

for.cond1095:                                     ; preds = %for.body1100, %for.body1063
  %storemerge24.in = phi i32 [ %535, %for.body1063 ], [ %544, %for.body1100 ]
  %storemerge24 = add nsw i32 %storemerge24.in, 1
  store i32 %storemerge24, ptr %b, align 4
  %536 = load i32, ptr %sb, align 4
  %idxprom1096 = sext i32 %536 to i64
  %arrayidx1097 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %idxprom1096
  %537 = load i32, ptr %arrayidx1097, align 4
  %cmp1098 = icmp slt i32 %storemerge24, %537
  br i1 %cmp1098, label %for.body1100, label %for.end1109

for.body1100:                                     ; preds = %for.cond1095
  %538 = load i32, ptr %b, align 4
  %idxprom1101 = sext i32 %538 to i64
  %arrayidx1102 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1101
  %539 = load double, ptr %arrayidx1102, align 8
  %540 = load double, ptr %enn, align 8
  %add1103 = fadd double %540, %539
  store double %add1103, ptr %enn, align 8
  %541 = load i32, ptr %b, align 4
  %idxprom1104 = sext i32 %541 to i64
  %arrayidx1105 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1104
  %542 = load double, ptr %arrayidx1105, align 8
  %543 = load double, ptr %thmm, align 8
  %add1106 = fadd double %543, %542
  store double %add1106, ptr %thmm, align 8
  %544 = load i32, ptr %b, align 4
  br label %for.cond1095, !llvm.loop !41

for.end1109:                                      ; preds = %for.cond1095
  %545 = load double, ptr %enn, align 8
  %546 = load i32, ptr %chn, align 4
  %idxprom1110 = sext i32 %546 to i64
  %arrayidx1111 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1110
  %547 = load i32, ptr %sb, align 4
  %idxprom1113 = sext i32 %547 to i64
  %arrayidx1114 = getelementptr inbounds [22 x double], ptr %arrayidx1111, i64 0, i64 %idxprom1113
  store double %545, ptr %arrayidx1114, align 8
  %548 = load double, ptr %thmm, align 8
  %549 = load i32, ptr %chn, align 4
  %idxprom1115 = sext i32 %549 to i64
  %arrayidx1116 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1115
  %550 = load i32, ptr %sb, align 4
  %idxprom1118 = sext i32 %550 to i64
  %arrayidx1119 = getelementptr inbounds [22 x double], ptr %arrayidx1116, i64 0, i64 %idxprom1118
  store double %548, ptr %arrayidx1119, align 8
  %551 = load i32, ptr %sb, align 4
  %inc1121 = add nsw i32 %551, 1
  br label %for.cond1060, !llvm.loop !42

for.cond1123:                                     ; preds = %for.cond1060, %for.inc1267
  %storemerge17 = phi i32 [ %inc1268, %for.inc1267 ], [ 0, %for.cond1060 ]
  store i32 %storemerge17, ptr %sblock, align 4
  %cmp1124 = icmp slt i32 %storemerge17, 3
  br i1 %cmp1124, label %for.body1126, label %for.inc1270

for.body1126:                                     ; preds = %for.cond1123
  store i32 0, ptr %j, align 4
  br label %for.cond1127

for.cond1127:                                     ; preds = %for.end1152, %for.body1126
  %storemerge18 = phi i32 [ 0, %for.body1126 ], [ %inc1157, %for.end1152 ]
  store i32 %storemerge18, ptr %b, align 4
  %552 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %cmp1128 = icmp slt i32 %storemerge18, %552
  br i1 %cmp1128, label %for.body1130, label %for.cond1159

for.body1130:                                     ; preds = %for.cond1127
  %553 = load i32, ptr %sblock, align 4
  %idxprom1133 = sext i32 %553 to i64
  %554 = load i32, ptr %j, align 4
  %inc1135 = add nsw i32 %554, 1
  store i32 %inc1135, ptr %j, align 4
  %idxprom1136 = sext i32 %554 to i64
  %arrayidx1137 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom1133, i64 %idxprom1136
  %555 = load float, ptr %arrayidx1137, align 4
  store float %555, ptr %ecb1132, align 4
  %556 = load i32, ptr %b, align 4
  %idxprom1138 = sext i32 %556 to i64
  %arrayidx1139 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %idxprom1138
  %557 = load i32, ptr %arrayidx1139, align 4
  br label %for.cond1140

for.cond1140:                                     ; preds = %for.body1143, %for.body1130
  %storemerge23 = phi i32 [ %557, %for.body1130 ], [ %dec1151, %for.body1143 ]
  store i32 %storemerge23, ptr %i1131, align 4
  %cmp1141 = icmp sgt i32 %storemerge23, 0
  br i1 %cmp1141, label %for.body1143, label %for.end1152

for.body1143:                                     ; preds = %for.cond1140
  %558 = load i32, ptr %sblock, align 4
  %idxprom1144 = sext i32 %558 to i64
  %559 = load i32, ptr %j, align 4
  %inc1146 = add nsw i32 %559, 1
  store i32 %inc1146, ptr %j, align 4
  %idxprom1147 = sext i32 %559 to i64
  %arrayidx1148 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom1144, i64 %idxprom1147
  %560 = load float, ptr %arrayidx1148, align 4
  %561 = load float, ptr %ecb1132, align 4
  %add1149 = fadd float %561, %560
  store float %add1149, ptr %ecb1132, align 4
  %562 = load i32, ptr %i1131, align 4
  %dec1151 = add nsw i32 %562, -1
  br label %for.cond1140, !llvm.loop !43

for.end1152:                                      ; preds = %for.cond1140
  %563 = load float, ptr %ecb1132, align 4
  %conv1153 = fpext float %563 to double
  %564 = load i32, ptr %b, align 4
  %idxprom1154 = sext i32 %564 to i64
  %arrayidx1155 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1154
  store double %conv1153, ptr %arrayidx1155, align 8
  %565 = load i32, ptr %b, align 4
  %inc1157 = add nsw i32 %565, 1
  br label %for.cond1127, !llvm.loop !44

for.cond1159:                                     ; preds = %for.cond1127, %cond.end1192
  %storemerge19 = phi i32 [ %inc1197, %cond.end1192 ], [ 0, %for.cond1127 ]
  store i32 %storemerge19, ptr %b, align 4
  %566 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp1160 = icmp slt i32 %storemerge19, %566
  br i1 %cmp1160, label %for.body1162, label %for.cond1199

for.body1162:                                     ; preds = %for.cond1159
  store double 0.000000e+00, ptr %ecb1163, align 8
  %567 = load i32, ptr %b, align 4
  %idxprom1164 = sext i32 %567 to i64
  %arrayidx1165 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom1164
  %568 = load i32, ptr %arrayidx1165, align 4
  br label %for.cond1167

for.cond1167:                                     ; preds = %for.body1173, %for.body1162
  %storemerge22 = phi i32 [ %568, %for.body1162 ], [ %inc1182, %for.body1173 ]
  store i32 %storemerge22, ptr %k, align 4
  %569 = load i32, ptr %b, align 4
  %idxprom1168 = sext i32 %569 to i64
  %arrayidx1170 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom1168, i64 1
  %570 = load i32, ptr %arrayidx1170, align 4
  %cmp1171.not = icmp sgt i32 %storemerge22, %570
  br i1 %cmp1171.not, label %for.end1183, label %for.body1173

for.body1173:                                     ; preds = %for.cond1167
  %571 = load i32, ptr %b, align 4
  %idxprom1174 = sext i32 %571 to i64
  %572 = load i32, ptr %k, align 4
  %idxprom1176 = sext i32 %572 to i64
  %arrayidx1177 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom1174, i64 %idxprom1176
  %573 = load double, ptr %arrayidx1177, align 8
  %idxprom1178 = sext i32 %572 to i64
  %arrayidx1179 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1178
  %574 = load double, ptr %arrayidx1179, align 8
  %575 = load double, ptr %ecb1163, align 8
  %576 = call double @llvm.fmuladd.f64(double %573, double %574, double %575)
  store double %576, ptr %ecb1163, align 8
  %577 = load i32, ptr %k, align 4
  %inc1182 = add nsw i32 %577, 1
  br label %for.cond1167, !llvm.loop !45

for.end1183:                                      ; preds = %for.cond1167
  %578 = load i32, ptr %b, align 4
  %idxprom1184 = sext i32 %578 to i64
  %arrayidx1185 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_s, i64 0, i64 %idxprom1184
  %579 = load double, ptr %arrayidx1185, align 8
  %580 = load double, ptr %ecb1163, align 8
  %cmp1186 = fcmp ogt double %579, %580
  br i1 %cmp1186, label %cond.true1188, label %cond.false1191

cond.true1188:                                    ; preds = %for.end1183
  %581 = load i32, ptr %b, align 4
  %idxprom1189 = sext i32 %581 to i64
  %arrayidx1190 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_s, i64 0, i64 %idxprom1189
  %582 = load double, ptr %arrayidx1190, align 8
  br label %cond.end1192

cond.false1191:                                   ; preds = %for.end1183
  %583 = load double, ptr %ecb1163, align 8
  br label %cond.end1192

cond.end1192:                                     ; preds = %cond.false1191, %cond.true1188
  %cond1193 = phi double [ %582, %cond.true1188 ], [ %583, %cond.false1191 ]
  %584 = load i32, ptr %b, align 4
  %idxprom1194 = sext i32 %584 to i64
  %arrayidx1195 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1194
  store double %cond1193, ptr %arrayidx1195, align 8
  %585 = load i32, ptr %b, align 4
  %inc1197 = add nsw i32 %585, 1
  br label %for.cond1159, !llvm.loop !46

for.cond1199:                                     ; preds = %for.cond1159, %for.end1250
  %storemerge20 = phi i32 [ %inc1265, %for.end1250 ], [ 0, %for.cond1159 ]
  store i32 %storemerge20, ptr %sb, align 4
  %cmp1200 = icmp slt i32 %storemerge20, 12
  br i1 %cmp1200, label %for.body1202, label %for.inc1267

for.body1202:                                     ; preds = %for.cond1199
  %586 = load i32, ptr %sb, align 4
  %idxprom1204 = sext i32 %586 to i64
  %arrayidx1205 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w1_s, i64 0, i64 %idxprom1204
  %587 = load double, ptr %arrayidx1205, align 8
  %idxprom1206 = sext i32 %586 to i64
  %arrayidx1207 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %idxprom1206
  %588 = load i32, ptr %arrayidx1207, align 4
  %idxprom1208 = sext i32 %588 to i64
  %arrayidx1209 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1208
  %589 = load double, ptr %arrayidx1209, align 8
  %590 = load i32, ptr %sb, align 4
  %idxprom1211 = sext i32 %590 to i64
  %arrayidx1212 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 %idxprom1211
  %591 = load double, ptr %arrayidx1212, align 8
  %idxprom1213 = sext i32 %590 to i64
  %arrayidx1214 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %idxprom1213
  %592 = load i32, ptr %arrayidx1214, align 4
  %idxprom1215 = sext i32 %592 to i64
  %arrayidx1216 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1215
  %593 = load double, ptr %arrayidx1216, align 8
  %mul1217 = fmul double %591, %593
  %594 = call double @llvm.fmuladd.f64(double %587, double %589, double %mul1217)
  store double %594, ptr %enn1203, align 8
  %595 = load i32, ptr %sb, align 4
  %idxprom1219 = sext i32 %595 to i64
  %arrayidx1220 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w1_s, i64 0, i64 %idxprom1219
  %596 = load double, ptr %arrayidx1220, align 8
  %idxprom1221 = sext i32 %595 to i64
  %arrayidx1222 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %idxprom1221
  %597 = load i32, ptr %arrayidx1222, align 4
  %idxprom1223 = sext i32 %597 to i64
  %arrayidx1224 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1223
  %598 = load double, ptr %arrayidx1224, align 8
  %599 = load i32, ptr %sb, align 4
  %idxprom1226 = sext i32 %599 to i64
  %arrayidx1227 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 %idxprom1226
  %600 = load double, ptr %arrayidx1227, align 8
  %idxprom1228 = sext i32 %599 to i64
  %arrayidx1229 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %idxprom1228
  %601 = load i32, ptr %arrayidx1229, align 4
  %idxprom1230 = sext i32 %601 to i64
  %arrayidx1231 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1230
  %602 = load double, ptr %arrayidx1231, align 8
  %mul1232 = fmul double %600, %602
  %603 = call double @llvm.fmuladd.f64(double %596, double %598, double %mul1232)
  store double %603, ptr %thmm1218, align 8
  %604 = load i32, ptr %sb, align 4
  %idxprom1233 = sext i32 %604 to i64
  %arrayidx1234 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %idxprom1233
  %605 = load i32, ptr %arrayidx1234, align 4
  br label %for.cond1236

for.cond1236:                                     ; preds = %for.body1241, %for.body1202
  %storemerge21.in = phi i32 [ %605, %for.body1202 ], [ %614, %for.body1241 ]
  %storemerge21 = add nsw i32 %storemerge21.in, 1
  store i32 %storemerge21, ptr %b, align 4
  %606 = load i32, ptr %sb, align 4
  %idxprom1237 = sext i32 %606 to i64
  %arrayidx1238 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %idxprom1237
  %607 = load i32, ptr %arrayidx1238, align 4
  %cmp1239 = icmp slt i32 %storemerge21, %607
  br i1 %cmp1239, label %for.body1241, label %for.end1250

for.body1241:                                     ; preds = %for.cond1236
  %608 = load i32, ptr %b, align 4
  %idxprom1242 = sext i32 %608 to i64
  %arrayidx1243 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1242
  %609 = load double, ptr %arrayidx1243, align 8
  %610 = load double, ptr %enn1203, align 8
  %add1244 = fadd double %610, %609
  store double %add1244, ptr %enn1203, align 8
  %611 = load i32, ptr %b, align 4
  %idxprom1245 = sext i32 %611 to i64
  %arrayidx1246 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1245
  %612 = load double, ptr %arrayidx1246, align 8
  %613 = load double, ptr %thmm1218, align 8
  %add1247 = fadd double %613, %612
  store double %add1247, ptr %thmm1218, align 8
  %614 = load i32, ptr %b, align 4
  br label %for.cond1236, !llvm.loop !47

for.end1250:                                      ; preds = %for.cond1236
  %615 = load double, ptr %enn1203, align 8
  %616 = load i32, ptr %chn, align 4
  %idxprom1251 = sext i32 %616 to i64
  %617 = load i32, ptr %sb, align 4
  %idxprom1253 = sext i32 %617 to i64
  %618 = load i32, ptr %sblock, align 4
  %idxprom1255 = sext i32 %618 to i64
  %arrayidx1256 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1251, i32 1, i64 %idxprom1253, i64 %idxprom1255
  store double %615, ptr %arrayidx1256, align 8
  %619 = load double, ptr %thmm1218, align 8
  %620 = load i32, ptr %chn, align 4
  %idxprom1257 = sext i32 %620 to i64
  %621 = load i32, ptr %sb, align 4
  %idxprom1260 = sext i32 %621 to i64
  %622 = load i32, ptr %sblock, align 4
  %idxprom1262 = sext i32 %622 to i64
  %arrayidx1263 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1257, i32 1, i64 %idxprom1260, i64 %idxprom1262
  store double %619, ptr %arrayidx1263, align 8
  %623 = load i32, ptr %sb, align 4
  %inc1265 = add nsw i32 %623, 1
  br label %for.cond1199, !llvm.loop !48

for.inc1267:                                      ; preds = %for.cond1199
  %624 = load i32, ptr %sblock, align 4
  %inc1268 = add nsw i32 %624, 1
  br label %for.cond1123, !llvm.loop !49

for.inc1270:                                      ; preds = %for.cond1123
  %625 = load i32, ptr %chn, align 4
  %inc1271 = add nsw i32 %625, 1
  br label %for.cond299, !llvm.loop !50

for.end1272:                                      ; preds = %for.cond299
  %626 = load i32, ptr %numchn, align 4
  %cmp1273 = icmp eq i32 %626, 4
  br i1 %cmp1273, label %if.then1275, label %if.end1616

if.then1275:                                      ; preds = %for.end1272
  store i32 2, ptr %chmid, align 4
  store i32 3, ptr %chside, align 4
  br label %for.cond1277

for.cond1277:                                     ; preds = %for.inc1420, %if.then1275
  %storemerge8 = phi i32 [ 0, %if.then1275 ], [ %inc1421, %for.inc1420 ]
  store i32 %storemerge8, ptr %sb, align 4
  %cmp1278 = icmp slt i32 %storemerge8, 21
  br i1 %cmp1278, label %for.body1280, label %for.cond1423

for.body1280:                                     ; preds = %for.cond1277
  %627 = load i32, ptr %sb, align 4
  %idxprom1281 = sext i32 %627 to i64
  %arrayidx1282 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1281
  %628 = load double, ptr %arrayidx1282, align 8
  %idxprom1283 = sext i32 %627 to i64
  %arrayidx1284 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1283
  %629 = load double, ptr %arrayidx1284, align 8
  %mul1285 = fmul double %629, 1.580000e+00
  %cmp1286 = fcmp ugt double %628, %mul1285
  br i1 %cmp1286, label %for.inc1420, label %land.lhs.true1288

land.lhs.true1288:                                ; preds = %for.body1280
  %630 = load i32, ptr %sb, align 4
  %idxprom1289 = sext i32 %630 to i64
  %arrayidx1290 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1289
  %631 = load double, ptr %arrayidx1290, align 8
  %idxprom1291 = sext i32 %630 to i64
  %arrayidx1292 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1291
  %632 = load double, ptr %arrayidx1292, align 8
  %mul1293 = fmul double %632, 1.580000e+00
  %cmp1294 = fcmp ugt double %631, %mul1293
  br i1 %cmp1294, label %for.inc1420, label %if.then1296

if.then1296:                                      ; preds = %land.lhs.true1288
  %633 = load i32, ptr %sb, align 4
  %idxprom1297 = sext i32 %633 to i64
  %arrayidx1298 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %idxprom1297
  %634 = load double, ptr %arrayidx1298, align 8
  %635 = load i32, ptr %chside, align 4
  %idxprom1299 = sext i32 %635 to i64
  %arrayidx1300 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1299
  %636 = load i32, ptr %sb, align 4
  %idxprom1302 = sext i32 %636 to i64
  %arrayidx1303 = getelementptr inbounds [22 x double], ptr %arrayidx1300, i64 0, i64 %idxprom1302
  %637 = load double, ptr %arrayidx1303, align 8
  %mul1304 = fmul double %634, %637
  store double %mul1304, ptr %mld1276, align 8
  %638 = load i32, ptr %chmid, align 4
  %idxprom1305 = sext i32 %638 to i64
  %arrayidx1306 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1305
  %639 = load i32, ptr %sb, align 4
  %idxprom1308 = sext i32 %639 to i64
  %arrayidx1309 = getelementptr inbounds [22 x double], ptr %arrayidx1306, i64 0, i64 %idxprom1308
  %640 = load double, ptr %arrayidx1309, align 8
  %641 = load i32, ptr %chside, align 4
  %idxprom1310 = sext i32 %641 to i64
  %arrayidx1311 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1310
  %642 = load i32, ptr %sb, align 4
  %idxprom1313 = sext i32 %642 to i64
  %arrayidx1314 = getelementptr inbounds [22 x double], ptr %arrayidx1311, i64 0, i64 %idxprom1313
  %643 = load double, ptr %arrayidx1314, align 8
  %644 = load double, ptr %mld1276, align 8
  %cmp1315 = fcmp olt double %643, %644
  br i1 %cmp1315, label %cond.true1317, label %cond.false1323

cond.true1317:                                    ; preds = %if.then1296
  %645 = load i32, ptr %chside, align 4
  %idxprom1318 = sext i32 %645 to i64
  %arrayidx1319 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1318
  %646 = load i32, ptr %sb, align 4
  %idxprom1321 = sext i32 %646 to i64
  %arrayidx1322 = getelementptr inbounds [22 x double], ptr %arrayidx1319, i64 0, i64 %idxprom1321
  %647 = load double, ptr %arrayidx1322, align 8
  br label %cond.end1324

cond.false1323:                                   ; preds = %if.then1296
  %648 = load double, ptr %mld1276, align 8
  br label %cond.end1324

cond.end1324:                                     ; preds = %cond.false1323, %cond.true1317
  %cond1325 = phi double [ %647, %cond.true1317 ], [ %648, %cond.false1323 ]
  %cmp1326 = fcmp ogt double %640, %cond1325
  br i1 %cmp1326, label %cond.true1328, label %cond.false1334

cond.true1328:                                    ; preds = %cond.end1324
  %649 = load i32, ptr %chmid, align 4
  %idxprom1329 = sext i32 %649 to i64
  %arrayidx1330 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1329
  %650 = load i32, ptr %sb, align 4
  %idxprom1332 = sext i32 %650 to i64
  %arrayidx1333 = getelementptr inbounds [22 x double], ptr %arrayidx1330, i64 0, i64 %idxprom1332
  %651 = load double, ptr %arrayidx1333, align 8
  br label %cond.end1351

cond.false1334:                                   ; preds = %cond.end1324
  %652 = load i32, ptr %chside, align 4
  %idxprom1335 = sext i32 %652 to i64
  %arrayidx1336 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1335
  %653 = load i32, ptr %sb, align 4
  %idxprom1338 = sext i32 %653 to i64
  %arrayidx1339 = getelementptr inbounds [22 x double], ptr %arrayidx1336, i64 0, i64 %idxprom1338
  %654 = load double, ptr %arrayidx1339, align 8
  %655 = load double, ptr %mld1276, align 8
  %cmp1340 = fcmp olt double %654, %655
  br i1 %cmp1340, label %cond.true1342, label %cond.false1348

cond.true1342:                                    ; preds = %cond.false1334
  %656 = load i32, ptr %chside, align 4
  %idxprom1343 = sext i32 %656 to i64
  %arrayidx1344 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1343
  %657 = load i32, ptr %sb, align 4
  %idxprom1346 = sext i32 %657 to i64
  %arrayidx1347 = getelementptr inbounds [22 x double], ptr %arrayidx1344, i64 0, i64 %idxprom1346
  %658 = load double, ptr %arrayidx1347, align 8
  br label %cond.end1351

cond.false1348:                                   ; preds = %cond.false1334
  %659 = load double, ptr %mld1276, align 8
  br label %cond.end1351

cond.end1351:                                     ; preds = %cond.true1342, %cond.false1348, %cond.true1328
  %cond1352 = phi double [ %651, %cond.true1328 ], [ %658, %cond.true1342 ], [ %659, %cond.false1348 ]
  store double %cond1352, ptr %rmid, align 8
  %660 = load i32, ptr %sb, align 4
  %idxprom1353 = sext i32 %660 to i64
  %arrayidx1354 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %idxprom1353
  %661 = load double, ptr %arrayidx1354, align 8
  %662 = load i32, ptr %chmid, align 4
  %idxprom1355 = sext i32 %662 to i64
  %arrayidx1356 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1355
  %663 = load i32, ptr %sb, align 4
  %idxprom1358 = sext i32 %663 to i64
  %arrayidx1359 = getelementptr inbounds [22 x double], ptr %arrayidx1356, i64 0, i64 %idxprom1358
  %664 = load double, ptr %arrayidx1359, align 8
  %mul1360 = fmul double %661, %664
  store double %mul1360, ptr %mld1276, align 8
  %665 = load i32, ptr %chside, align 4
  %idxprom1361 = sext i32 %665 to i64
  %arrayidx1362 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1361
  %666 = load i32, ptr %sb, align 4
  %idxprom1364 = sext i32 %666 to i64
  %arrayidx1365 = getelementptr inbounds [22 x double], ptr %arrayidx1362, i64 0, i64 %idxprom1364
  %667 = load double, ptr %arrayidx1365, align 8
  %668 = load i32, ptr %chmid, align 4
  %idxprom1366 = sext i32 %668 to i64
  %arrayidx1367 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1366
  %669 = load i32, ptr %sb, align 4
  %idxprom1369 = sext i32 %669 to i64
  %arrayidx1370 = getelementptr inbounds [22 x double], ptr %arrayidx1367, i64 0, i64 %idxprom1369
  %670 = load double, ptr %arrayidx1370, align 8
  %671 = load double, ptr %mld1276, align 8
  %cmp1371 = fcmp olt double %670, %671
  br i1 %cmp1371, label %cond.true1373, label %cond.false1379

cond.true1373:                                    ; preds = %cond.end1351
  %672 = load i32, ptr %chmid, align 4
  %idxprom1374 = sext i32 %672 to i64
  %arrayidx1375 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1374
  %673 = load i32, ptr %sb, align 4
  %idxprom1377 = sext i32 %673 to i64
  %arrayidx1378 = getelementptr inbounds [22 x double], ptr %arrayidx1375, i64 0, i64 %idxprom1377
  %674 = load double, ptr %arrayidx1378, align 8
  br label %cond.end1380

cond.false1379:                                   ; preds = %cond.end1351
  %675 = load double, ptr %mld1276, align 8
  br label %cond.end1380

cond.end1380:                                     ; preds = %cond.false1379, %cond.true1373
  %cond1381 = phi double [ %674, %cond.true1373 ], [ %675, %cond.false1379 ]
  %cmp1382 = fcmp ogt double %667, %cond1381
  br i1 %cmp1382, label %cond.true1384, label %cond.false1390

cond.true1384:                                    ; preds = %cond.end1380
  %676 = load i32, ptr %chside, align 4
  %idxprom1385 = sext i32 %676 to i64
  %arrayidx1386 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1385
  %677 = load i32, ptr %sb, align 4
  %idxprom1388 = sext i32 %677 to i64
  %arrayidx1389 = getelementptr inbounds [22 x double], ptr %arrayidx1386, i64 0, i64 %idxprom1388
  %678 = load double, ptr %arrayidx1389, align 8
  br label %cond.end1407

cond.false1390:                                   ; preds = %cond.end1380
  %679 = load i32, ptr %chmid, align 4
  %idxprom1391 = sext i32 %679 to i64
  %arrayidx1392 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1391
  %680 = load i32, ptr %sb, align 4
  %idxprom1394 = sext i32 %680 to i64
  %arrayidx1395 = getelementptr inbounds [22 x double], ptr %arrayidx1392, i64 0, i64 %idxprom1394
  %681 = load double, ptr %arrayidx1395, align 8
  %682 = load double, ptr %mld1276, align 8
  %cmp1396 = fcmp olt double %681, %682
  br i1 %cmp1396, label %cond.true1398, label %cond.false1404

cond.true1398:                                    ; preds = %cond.false1390
  %683 = load i32, ptr %chmid, align 4
  %idxprom1399 = sext i32 %683 to i64
  %arrayidx1400 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1399
  %684 = load i32, ptr %sb, align 4
  %idxprom1402 = sext i32 %684 to i64
  %arrayidx1403 = getelementptr inbounds [22 x double], ptr %arrayidx1400, i64 0, i64 %idxprom1402
  %685 = load double, ptr %arrayidx1403, align 8
  br label %cond.end1407

cond.false1404:                                   ; preds = %cond.false1390
  %686 = load double, ptr %mld1276, align 8
  br label %cond.end1407

cond.end1407:                                     ; preds = %cond.true1398, %cond.false1404, %cond.true1384
  %cond1408 = phi double [ %678, %cond.true1384 ], [ %685, %cond.true1398 ], [ %686, %cond.false1404 ]
  store double %cond1408, ptr %rside, align 8
  %687 = load double, ptr %rmid, align 8
  %688 = load i32, ptr %chmid, align 4
  %idxprom1409 = sext i32 %688 to i64
  %arrayidx1410 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1409
  %689 = load i32, ptr %sb, align 4
  %idxprom1412 = sext i32 %689 to i64
  %arrayidx1413 = getelementptr inbounds [22 x double], ptr %arrayidx1410, i64 0, i64 %idxprom1412
  store double %687, ptr %arrayidx1413, align 8
  %690 = load double, ptr %rside, align 8
  %691 = load i32, ptr %chside, align 4
  %idxprom1414 = sext i32 %691 to i64
  %arrayidx1415 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1414
  %692 = load i32, ptr %sb, align 4
  %idxprom1417 = sext i32 %692 to i64
  %arrayidx1418 = getelementptr inbounds [22 x double], ptr %arrayidx1415, i64 0, i64 %idxprom1417
  store double %690, ptr %arrayidx1418, align 8
  br label %for.inc1420

for.inc1420:                                      ; preds = %for.body1280, %land.lhs.true1288, %cond.end1407
  %693 = load i32, ptr %sb, align 4
  %inc1421 = add nsw i32 %693, 1
  br label %for.cond1277, !llvm.loop !51

for.cond1423:                                     ; preds = %for.cond1277, %for.inc1613
  %storemerge9 = phi i32 [ %inc1614, %for.inc1613 ], [ 0, %for.cond1277 ]
  store i32 %storemerge9, ptr %sb, align 4
  %cmp1424 = icmp slt i32 %storemerge9, 12
  br i1 %cmp1424, label %for.cond1427, label %if.end1616

for.cond1427:                                     ; preds = %for.cond1423, %for.inc1610
  %storemerge10 = phi i32 [ %inc1611, %for.inc1610 ], [ 0, %for.cond1423 ]
  store i32 %storemerge10, ptr %sblock, align 4
  %cmp1428 = icmp slt i32 %storemerge10, 3
  br i1 %cmp1428, label %for.body1430, label %for.inc1613

for.body1430:                                     ; preds = %for.cond1427
  %694 = load i32, ptr %sb, align 4
  %idxprom1431 = sext i32 %694 to i64
  %695 = load i32, ptr %sblock, align 4
  %idxprom1433 = sext i32 %695 to i64
  %arrayidx1434 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %idxprom1431, i64 %idxprom1433
  %696 = load double, ptr %arrayidx1434, align 8
  %idxprom1435 = sext i32 %694 to i64
  %idxprom1437 = sext i32 %695 to i64
  %arrayidx1438 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %idxprom1435, i64 %idxprom1437
  %697 = load double, ptr %arrayidx1438, align 8
  %mul1439 = fmul double %697, 1.580000e+00
  %cmp1440 = fcmp ugt double %696, %mul1439
  br i1 %cmp1440, label %for.inc1610, label %land.lhs.true1442

land.lhs.true1442:                                ; preds = %for.body1430
  %698 = load i32, ptr %sb, align 4
  %idxprom1443 = sext i32 %698 to i64
  %699 = load i32, ptr %sblock, align 4
  %idxprom1445 = sext i32 %699 to i64
  %arrayidx1446 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %idxprom1443, i64 %idxprom1445
  %700 = load double, ptr %arrayidx1446, align 8
  %idxprom1447 = sext i32 %698 to i64
  %idxprom1449 = sext i32 %699 to i64
  %arrayidx1450 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %idxprom1447, i64 %idxprom1449
  %701 = load double, ptr %arrayidx1450, align 8
  %mul1451 = fmul double %701, 1.580000e+00
  %cmp1452 = fcmp ugt double %700, %mul1451
  br i1 %cmp1452, label %for.inc1610, label %if.then1454

if.then1454:                                      ; preds = %land.lhs.true1442
  %702 = load i32, ptr %sb, align 4
  %idxprom1455 = sext i32 %702 to i64
  %arrayidx1456 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %idxprom1455
  %703 = load double, ptr %arrayidx1456, align 8
  %704 = load i32, ptr %chside, align 4
  %idxprom1457 = sext i32 %704 to i64
  %idxprom1460 = sext i32 %702 to i64
  %705 = load i32, ptr %sblock, align 4
  %idxprom1462 = sext i32 %705 to i64
  %arrayidx1463 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1457, i32 1, i64 %idxprom1460, i64 %idxprom1462
  %706 = load double, ptr %arrayidx1463, align 8
  %mul1464 = fmul double %703, %706
  store double %mul1464, ptr %mld1276, align 8
  %707 = load i32, ptr %chmid, align 4
  %idxprom1465 = sext i32 %707 to i64
  %708 = load i32, ptr %sb, align 4
  %idxprom1468 = sext i32 %708 to i64
  %709 = load i32, ptr %sblock, align 4
  %idxprom1470 = sext i32 %709 to i64
  %arrayidx1471 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1465, i32 1, i64 %idxprom1468, i64 %idxprom1470
  %710 = load double, ptr %arrayidx1471, align 8
  %711 = load i32, ptr %chside, align 4
  %idxprom1472 = sext i32 %711 to i64
  %712 = load i32, ptr %sb, align 4
  %idxprom1475 = sext i32 %712 to i64
  %713 = load i32, ptr %sblock, align 4
  %idxprom1477 = sext i32 %713 to i64
  %arrayidx1478 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1472, i32 1, i64 %idxprom1475, i64 %idxprom1477
  %714 = load double, ptr %arrayidx1478, align 8
  %715 = load double, ptr %mld1276, align 8
  %cmp1479 = fcmp olt double %714, %715
  br i1 %cmp1479, label %cond.true1481, label %cond.false1489

cond.true1481:                                    ; preds = %if.then1454
  %716 = load i32, ptr %chside, align 4
  %idxprom1482 = sext i32 %716 to i64
  %717 = load i32, ptr %sb, align 4
  %idxprom1485 = sext i32 %717 to i64
  %718 = load i32, ptr %sblock, align 4
  %idxprom1487 = sext i32 %718 to i64
  %arrayidx1488 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1482, i32 1, i64 %idxprom1485, i64 %idxprom1487
  %719 = load double, ptr %arrayidx1488, align 8
  br label %cond.end1490

cond.false1489:                                   ; preds = %if.then1454
  %720 = load double, ptr %mld1276, align 8
  br label %cond.end1490

cond.end1490:                                     ; preds = %cond.false1489, %cond.true1481
  %cond1491 = phi double [ %719, %cond.true1481 ], [ %720, %cond.false1489 ]
  %cmp1492 = fcmp ogt double %710, %cond1491
  br i1 %cmp1492, label %cond.true1494, label %cond.false1502

cond.true1494:                                    ; preds = %cond.end1490
  %721 = load i32, ptr %chmid, align 4
  %idxprom1495 = sext i32 %721 to i64
  %722 = load i32, ptr %sb, align 4
  %idxprom1498 = sext i32 %722 to i64
  %723 = load i32, ptr %sblock, align 4
  %idxprom1500 = sext i32 %723 to i64
  %arrayidx1501 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1495, i32 1, i64 %idxprom1498, i64 %idxprom1500
  %724 = load double, ptr %arrayidx1501, align 8
  br label %cond.end1523

cond.false1502:                                   ; preds = %cond.end1490
  %725 = load i32, ptr %chside, align 4
  %idxprom1503 = sext i32 %725 to i64
  %726 = load i32, ptr %sb, align 4
  %idxprom1506 = sext i32 %726 to i64
  %727 = load i32, ptr %sblock, align 4
  %idxprom1508 = sext i32 %727 to i64
  %arrayidx1509 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1503, i32 1, i64 %idxprom1506, i64 %idxprom1508
  %728 = load double, ptr %arrayidx1509, align 8
  %729 = load double, ptr %mld1276, align 8
  %cmp1510 = fcmp olt double %728, %729
  br i1 %cmp1510, label %cond.true1512, label %cond.false1520

cond.true1512:                                    ; preds = %cond.false1502
  %730 = load i32, ptr %chside, align 4
  %idxprom1513 = sext i32 %730 to i64
  %731 = load i32, ptr %sb, align 4
  %idxprom1516 = sext i32 %731 to i64
  %732 = load i32, ptr %sblock, align 4
  %idxprom1518 = sext i32 %732 to i64
  %arrayidx1519 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1513, i32 1, i64 %idxprom1516, i64 %idxprom1518
  %733 = load double, ptr %arrayidx1519, align 8
  br label %cond.end1523

cond.false1520:                                   ; preds = %cond.false1502
  %734 = load double, ptr %mld1276, align 8
  br label %cond.end1523

cond.end1523:                                     ; preds = %cond.true1512, %cond.false1520, %cond.true1494
  %cond1524 = phi double [ %724, %cond.true1494 ], [ %733, %cond.true1512 ], [ %734, %cond.false1520 ]
  store double %cond1524, ptr %rmid, align 8
  %735 = load i32, ptr %sb, align 4
  %idxprom1525 = sext i32 %735 to i64
  %arrayidx1526 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %idxprom1525
  %736 = load double, ptr %arrayidx1526, align 8
  %737 = load i32, ptr %chmid, align 4
  %idxprom1527 = sext i32 %737 to i64
  %idxprom1530 = sext i32 %735 to i64
  %738 = load i32, ptr %sblock, align 4
  %idxprom1532 = sext i32 %738 to i64
  %arrayidx1533 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1527, i32 1, i64 %idxprom1530, i64 %idxprom1532
  %739 = load double, ptr %arrayidx1533, align 8
  %mul1534 = fmul double %736, %739
  store double %mul1534, ptr %mld1276, align 8
  %740 = load i32, ptr %chside, align 4
  %idxprom1535 = sext i32 %740 to i64
  %741 = load i32, ptr %sb, align 4
  %idxprom1538 = sext i32 %741 to i64
  %742 = load i32, ptr %sblock, align 4
  %idxprom1540 = sext i32 %742 to i64
  %arrayidx1541 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1535, i32 1, i64 %idxprom1538, i64 %idxprom1540
  %743 = load double, ptr %arrayidx1541, align 8
  %744 = load i32, ptr %chmid, align 4
  %idxprom1542 = sext i32 %744 to i64
  %745 = load i32, ptr %sb, align 4
  %idxprom1545 = sext i32 %745 to i64
  %746 = load i32, ptr %sblock, align 4
  %idxprom1547 = sext i32 %746 to i64
  %arrayidx1548 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1542, i32 1, i64 %idxprom1545, i64 %idxprom1547
  %747 = load double, ptr %arrayidx1548, align 8
  %748 = load double, ptr %mld1276, align 8
  %cmp1549 = fcmp olt double %747, %748
  br i1 %cmp1549, label %cond.true1551, label %cond.false1559

cond.true1551:                                    ; preds = %cond.end1523
  %749 = load i32, ptr %chmid, align 4
  %idxprom1552 = sext i32 %749 to i64
  %750 = load i32, ptr %sb, align 4
  %idxprom1555 = sext i32 %750 to i64
  %751 = load i32, ptr %sblock, align 4
  %idxprom1557 = sext i32 %751 to i64
  %arrayidx1558 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1552, i32 1, i64 %idxprom1555, i64 %idxprom1557
  %752 = load double, ptr %arrayidx1558, align 8
  br label %cond.end1560

cond.false1559:                                   ; preds = %cond.end1523
  %753 = load double, ptr %mld1276, align 8
  br label %cond.end1560

cond.end1560:                                     ; preds = %cond.false1559, %cond.true1551
  %cond1561 = phi double [ %752, %cond.true1551 ], [ %753, %cond.false1559 ]
  %cmp1562 = fcmp ogt double %743, %cond1561
  br i1 %cmp1562, label %cond.true1564, label %cond.false1572

cond.true1564:                                    ; preds = %cond.end1560
  %754 = load i32, ptr %chside, align 4
  %idxprom1565 = sext i32 %754 to i64
  %755 = load i32, ptr %sb, align 4
  %idxprom1568 = sext i32 %755 to i64
  %756 = load i32, ptr %sblock, align 4
  %idxprom1570 = sext i32 %756 to i64
  %arrayidx1571 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1565, i32 1, i64 %idxprom1568, i64 %idxprom1570
  %757 = load double, ptr %arrayidx1571, align 8
  br label %cond.end1593

cond.false1572:                                   ; preds = %cond.end1560
  %758 = load i32, ptr %chmid, align 4
  %idxprom1573 = sext i32 %758 to i64
  %759 = load i32, ptr %sb, align 4
  %idxprom1576 = sext i32 %759 to i64
  %760 = load i32, ptr %sblock, align 4
  %idxprom1578 = sext i32 %760 to i64
  %arrayidx1579 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1573, i32 1, i64 %idxprom1576, i64 %idxprom1578
  %761 = load double, ptr %arrayidx1579, align 8
  %762 = load double, ptr %mld1276, align 8
  %cmp1580 = fcmp olt double %761, %762
  br i1 %cmp1580, label %cond.true1582, label %cond.false1590

cond.true1582:                                    ; preds = %cond.false1572
  %763 = load i32, ptr %chmid, align 4
  %idxprom1583 = sext i32 %763 to i64
  %764 = load i32, ptr %sb, align 4
  %idxprom1586 = sext i32 %764 to i64
  %765 = load i32, ptr %sblock, align 4
  %idxprom1588 = sext i32 %765 to i64
  %arrayidx1589 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1583, i32 1, i64 %idxprom1586, i64 %idxprom1588
  %766 = load double, ptr %arrayidx1589, align 8
  br label %cond.end1593

cond.false1590:                                   ; preds = %cond.false1572
  %767 = load double, ptr %mld1276, align 8
  br label %cond.end1593

cond.end1593:                                     ; preds = %cond.true1582, %cond.false1590, %cond.true1564
  %cond1594 = phi double [ %757, %cond.true1564 ], [ %766, %cond.true1582 ], [ %767, %cond.false1590 ]
  store double %cond1594, ptr %rside, align 8
  %768 = load double, ptr %rmid, align 8
  %769 = load i32, ptr %chmid, align 4
  %idxprom1595 = sext i32 %769 to i64
  %770 = load i32, ptr %sb, align 4
  %idxprom1598 = sext i32 %770 to i64
  %771 = load i32, ptr %sblock, align 4
  %idxprom1600 = sext i32 %771 to i64
  %arrayidx1601 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1595, i32 1, i64 %idxprom1598, i64 %idxprom1600
  store double %768, ptr %arrayidx1601, align 8
  %772 = load double, ptr %rside, align 8
  %773 = load i32, ptr %chside, align 4
  %idxprom1602 = sext i32 %773 to i64
  %774 = load i32, ptr %sb, align 4
  %idxprom1605 = sext i32 %774 to i64
  %775 = load i32, ptr %sblock, align 4
  %idxprom1607 = sext i32 %775 to i64
  %arrayidx1608 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1602, i32 1, i64 %idxprom1605, i64 %idxprom1607
  store double %772, ptr %arrayidx1608, align 8
  br label %for.inc1610

for.inc1610:                                      ; preds = %for.body1430, %land.lhs.true1442, %cond.end1593
  %776 = load i32, ptr %sblock, align 4
  %inc1611 = add nsw i32 %776, 1
  br label %for.cond1427, !llvm.loop !52

for.inc1613:                                      ; preds = %for.cond1427
  %777 = load i32, ptr %sb, align 4
  %inc1614 = add nsw i32 %777, 1
  br label %for.cond1423, !llvm.loop !53

if.end1616:                                       ; preds = %for.cond1423, %for.end1272
  %778 = load ptr, ptr %gfp.addr, align 8
  %mode1617 = getelementptr inbounds %struct.lame_global_flags, ptr %778, i64 0, i32 8
  %779 = load i32, ptr %mode1617, align 4
  %cmp1618 = icmp eq i32 %779, 1
  br i1 %cmp1618, label %if.then1620, label %if.end1748

if.then1620:                                      ; preds = %if.end1616
  store double 0.000000e+00, ptr %sidetot, align 8
  store double 0.000000e+00, ptr %tot, align 8
  br label %for.cond1621

for.cond1621:                                     ; preds = %if.end1659, %if.then1620
  %storemerge3 = phi i32 [ 5, %if.then1620 ], [ %inc1663, %if.end1659 ]
  store i32 %storemerge3, ptr %sb, align 4
  %cmp1622 = icmp slt i32 %storemerge3, 21
  br i1 %cmp1622, label %for.body1624, label %for.end1664

for.body1624:                                     ; preds = %for.cond1621
  %780 = load i32, ptr %sb, align 4
  %idxprom1625 = sext i32 %780 to i64
  %arrayidx1626 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1625
  %781 = load double, ptr %arrayidx1626, align 8
  %idxprom1627 = sext i32 %780 to i64
  %arrayidx1628 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1627
  %782 = load double, ptr %arrayidx1628, align 8
  %cmp1629 = fcmp olt double %781, %782
  %783 = load i32, ptr %sb, align 4
  %idxprom1632 = sext i32 %783 to i64
  %arrayidx1633 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1632
  %784 = load i32, ptr %sb, align 4
  %idxprom1635 = sext i32 %784 to i64
  %arrayidx1636 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1635
  %cond1638.in = select i1 %cmp1629, ptr %arrayidx1633, ptr %arrayidx1636
  %cond1638 = load double, ptr %cond1638.in, align 8
  store double %cond1638, ptr %x1, align 8
  %785 = load i32, ptr %sb, align 4
  %idxprom1639 = sext i32 %785 to i64
  %arrayidx1640 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1639
  %786 = load double, ptr %arrayidx1640, align 8
  %idxprom1641 = sext i32 %785 to i64
  %arrayidx1642 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1641
  %787 = load double, ptr %arrayidx1642, align 8
  %cmp1643 = fcmp ogt double %786, %787
  %788 = load i32, ptr %sb, align 4
  %idxprom1646 = sext i32 %788 to i64
  %arrayidx1647 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1646
  %789 = load i32, ptr %sb, align 4
  %idxprom1649 = sext i32 %789 to i64
  %arrayidx1650 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1649
  %cond1652.in = select i1 %cmp1643, ptr %arrayidx1647, ptr %arrayidx1650
  %cond1652 = load double, ptr %cond1652.in, align 8
  store double %cond1652, ptr %x2, align 8
  %790 = load double, ptr %x1, align 8
  %mul1653 = fmul double %790, 1.000000e+03
  %cmp1654 = fcmp ult double %cond1652, %mul1653
  br i1 %cmp1654, label %if.else1657, label %if.end1659

if.else1657:                                      ; preds = %for.body1624
  %791 = load double, ptr %x2, align 8
  %792 = load double, ptr %x1, align 8
  %div1658 = fdiv double %791, %792
  %793 = call double @llvm.log10.f64(double %div1658)
  br label %if.end1659

if.end1659:                                       ; preds = %for.body1624, %if.else1657
  %storemerge7 = phi double [ %793, %if.else1657 ], [ 3.000000e+00, %for.body1624 ]
  %794 = load double, ptr %sidetot, align 8
  %add1660 = fadd double %794, %storemerge7
  store double %add1660, ptr %sidetot, align 8
  %795 = load double, ptr %tot, align 8
  %inc1661 = fadd double %795, 1.000000e+00
  store double %inc1661, ptr %tot, align 8
  %796 = load i32, ptr %sb, align 4
  %inc1663 = add nsw i32 %796, 1
  br label %for.cond1621, !llvm.loop !54

for.end1664:                                      ; preds = %for.cond1621
  %797 = load double, ptr %sidetot, align 8
  %798 = load double, ptr %tot, align 8
  %div1665 = fdiv double %797, %798
  %mul1666 = fmul double %div1665, 0x3FE6666666666666
  store double %mul1666, ptr %ms_ratio_l, align 8
  %cmp1667 = fcmp olt double %mul1666, 5.000000e-01
  %799 = load double, ptr %ms_ratio_l, align 8
  %cond1672 = select i1 %cmp1667, double %799, double 5.000000e-01
  store double %cond1672, ptr %ms_ratio_l, align 8
  store double 0.000000e+00, ptr %sidetot, align 8
  store double 0.000000e+00, ptr %tot, align 8
  br label %for.cond1673

for.cond1673:                                     ; preds = %for.inc1737, %for.end1664
  %storemerge4 = phi i32 [ 0, %for.end1664 ], [ %inc1738, %for.inc1737 ]
  store i32 %storemerge4, ptr %sblock, align 4
  %cmp1674 = icmp slt i32 %storemerge4, 3
  br i1 %cmp1674, label %for.cond1677, label %for.end1739

for.cond1677:                                     ; preds = %for.cond1673, %if.end1731
  %storemerge5 = phi i32 [ %inc1735, %if.end1731 ], [ 3, %for.cond1673 ]
  store i32 %storemerge5, ptr %sb, align 4
  %cmp1678 = icmp slt i32 %storemerge5, 12
  br i1 %cmp1678, label %for.body1680, label %for.inc1737

for.body1680:                                     ; preds = %for.cond1677
  %800 = load i32, ptr %sb, align 4
  %idxprom1681 = sext i32 %800 to i64
  %801 = load i32, ptr %sblock, align 4
  %idxprom1683 = sext i32 %801 to i64
  %arrayidx1684 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %idxprom1681, i64 %idxprom1683
  %802 = load double, ptr %arrayidx1684, align 8
  %idxprom1685 = sext i32 %800 to i64
  %idxprom1687 = sext i32 %801 to i64
  %arrayidx1688 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %idxprom1685, i64 %idxprom1687
  %803 = load double, ptr %arrayidx1688, align 8
  %cmp1689 = fcmp olt double %802, %803
  br i1 %cmp1689, label %cond.true1691, label %cond.false1696

cond.true1691:                                    ; preds = %for.body1680
  %804 = load i32, ptr %sb, align 4
  %idxprom1692 = sext i32 %804 to i64
  %805 = load i32, ptr %sblock, align 4
  %idxprom1694 = sext i32 %805 to i64
  %arrayidx1695 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %idxprom1692, i64 %idxprom1694
  br label %cond.end1701

cond.false1696:                                   ; preds = %for.body1680
  %806 = load i32, ptr %sb, align 4
  %idxprom1697 = sext i32 %806 to i64
  %807 = load i32, ptr %sblock, align 4
  %idxprom1699 = sext i32 %807 to i64
  %arrayidx1700 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %idxprom1697, i64 %idxprom1699
  br label %cond.end1701

cond.end1701:                                     ; preds = %cond.false1696, %cond.true1691
  %cond1702.in = phi ptr [ %arrayidx1695, %cond.true1691 ], [ %arrayidx1700, %cond.false1696 ]
  %cond1702 = load double, ptr %cond1702.in, align 8
  store double %cond1702, ptr %x1, align 8
  %808 = load i32, ptr %sb, align 4
  %idxprom1703 = sext i32 %808 to i64
  %809 = load i32, ptr %sblock, align 4
  %idxprom1705 = sext i32 %809 to i64
  %arrayidx1706 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %idxprom1703, i64 %idxprom1705
  %810 = load double, ptr %arrayidx1706, align 8
  %idxprom1707 = sext i32 %808 to i64
  %idxprom1709 = sext i32 %809 to i64
  %arrayidx1710 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %idxprom1707, i64 %idxprom1709
  %811 = load double, ptr %arrayidx1710, align 8
  %cmp1711 = fcmp ogt double %810, %811
  br i1 %cmp1711, label %cond.true1713, label %cond.false1718

cond.true1713:                                    ; preds = %cond.end1701
  %812 = load i32, ptr %sb, align 4
  %idxprom1714 = sext i32 %812 to i64
  %813 = load i32, ptr %sblock, align 4
  %idxprom1716 = sext i32 %813 to i64
  %arrayidx1717 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %idxprom1714, i64 %idxprom1716
  br label %cond.end1723

cond.false1718:                                   ; preds = %cond.end1701
  %814 = load i32, ptr %sb, align 4
  %idxprom1719 = sext i32 %814 to i64
  %815 = load i32, ptr %sblock, align 4
  %idxprom1721 = sext i32 %815 to i64
  %arrayidx1722 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %idxprom1719, i64 %idxprom1721
  br label %cond.end1723

cond.end1723:                                     ; preds = %cond.false1718, %cond.true1713
  %cond1724.in = phi ptr [ %arrayidx1717, %cond.true1713 ], [ %arrayidx1722, %cond.false1718 ]
  %cond1724 = load double, ptr %cond1724.in, align 8
  store double %cond1724, ptr %x2, align 8
  %816 = load double, ptr %x1, align 8
  %mul1725 = fmul double %816, 1.000000e+03
  %cmp1726 = fcmp ult double %cond1724, %mul1725
  br i1 %cmp1726, label %if.else1729, label %if.end1731

if.else1729:                                      ; preds = %cond.end1723
  %817 = load double, ptr %x2, align 8
  %818 = load double, ptr %x1, align 8
  %div1730 = fdiv double %817, %818
  %819 = call double @llvm.log10.f64(double %div1730)
  br label %if.end1731

if.end1731:                                       ; preds = %cond.end1723, %if.else1729
  %storemerge6 = phi double [ %819, %if.else1729 ], [ 3.000000e+00, %cond.end1723 ]
  %820 = load double, ptr %sidetot, align 8
  %add1732 = fadd double %820, %storemerge6
  store double %add1732, ptr %sidetot, align 8
  %821 = load double, ptr %tot, align 8
  %inc1733 = fadd double %821, 1.000000e+00
  store double %inc1733, ptr %tot, align 8
  %822 = load i32, ptr %sb, align 4
  %inc1735 = add nsw i32 %822, 1
  br label %for.cond1677, !llvm.loop !55

for.inc1737:                                      ; preds = %for.cond1677
  %823 = load i32, ptr %sblock, align 4
  %inc1738 = add nsw i32 %823, 1
  br label %for.cond1673, !llvm.loop !56

for.end1739:                                      ; preds = %for.cond1673
  %824 = load double, ptr %sidetot, align 8
  %825 = load double, ptr %tot, align 8
  %div1740 = fdiv double %824, %825
  %mul1741 = fmul double %div1740, 0x3FE6666666666666
  store double %mul1741, ptr %ms_ratio_s, align 8
  %cmp1742 = fcmp olt double %mul1741, 5.000000e-01
  %826 = load double, ptr %ms_ratio_s, align 8
  %cond1747 = select i1 %cmp1742, double %826, double 5.000000e-01
  store double %cond1747, ptr %ms_ratio_s, align 8
  br label %if.end1748

if.end1748:                                       ; preds = %for.end1739, %if.end1616
  br label %for.cond1749

for.cond1749:                                     ; preds = %for.body1753, %if.end1748
  %storemerge1 = phi i32 [ 0, %if.end1748 ], [ %inc1757, %for.body1753 ]
  store i32 %storemerge1, ptr %chn, align 4
  %827 = load ptr, ptr %gfp.addr, align 8
  %stereo1750 = getelementptr inbounds %struct.lame_global_flags, ptr %827, i64 0, i32 46
  %828 = load i32, ptr %stereo1750, align 4
  %cmp1751 = icmp slt i32 %storemerge1, %828
  br i1 %cmp1751, label %for.body1753, label %for.end1758

for.body1753:                                     ; preds = %for.cond1749
  %829 = load i32, ptr %chn, align 4
  %idxprom1754 = sext i32 %829 to i64
  %arrayidx1755 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1754
  store i32 0, ptr %arrayidx1755, align 4
  %830 = load i32, ptr %chn, align 4
  %inc1757 = add nsw i32 %830, 1
  br label %for.cond1749, !llvm.loop !57

for.end1758:                                      ; preds = %for.cond1749
  %831 = load ptr, ptr %gfp.addr, align 8
  %stereo1759 = getelementptr inbounds %struct.lame_global_flags, ptr %831, i64 0, i32 46
  %832 = load i32, ptr %stereo1759, align 4
  %cmp1760 = icmp eq i32 %832, 2
  br i1 %cmp1760, label %if.then1762, label %if.end1778

if.then1762:                                      ; preds = %for.end1758
  %833 = load ptr, ptr %gfp.addr, align 8
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %833, i64 0, i32 36
  %834 = load i32, ptr %allow_diff_short, align 4
  %tobool1763.not = icmp eq i32 %834, 0
  br i1 %tobool1763.not, label %if.then1767, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1762
  %835 = load ptr, ptr %gfp.addr, align 8
  %mode1764 = getelementptr inbounds %struct.lame_global_flags, ptr %835, i64 0, i32 8
  %836 = load i32, ptr %mode1764, align 4
  %cmp1765 = icmp eq i32 %836, 1
  br i1 %cmp1765, label %if.then1767, label %if.end1778

if.then1767:                                      ; preds = %lor.lhs.false, %if.then1762
  %837 = load i32, ptr %uselongblock, align 4
  %tobool1769.not = icmp eq i32 %837, 0
  %arrayidx1770 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 1
  %838 = load i32, ptr %arrayidx1770, align 4
  %tobool1771 = icmp eq i32 %838, 0
  %839 = select i1 %tobool1769.not, i1 true, i1 %tobool1771
  br i1 %839, label %if.then1773, label %if.end1778

if.then1773:                                      ; preds = %if.then1767
  store i32 0, ptr %uselongblock, align 4
  %arrayidx1775 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 1
  store i32 0, ptr %arrayidx1775, align 4
  br label %if.end1778

if.end1778:                                       ; preds = %lor.lhs.false, %if.then1773, %if.then1767, %for.end1758
  br label %for.cond1779

for.cond1779:                                     ; preds = %if.end1818, %if.end1778
  %storemerge2 = phi i32 [ 0, %if.end1778 ], [ %inc1828, %if.end1818 ]
  store i32 %storemerge2, ptr %chn, align 4
  %840 = load ptr, ptr %gfp.addr, align 8
  %stereo1780 = getelementptr inbounds %struct.lame_global_flags, ptr %840, i64 0, i32 46
  %841 = load i32, ptr %stereo1780, align 4
  %cmp1781 = icmp slt i32 %storemerge2, %841
  br i1 %cmp1781, label %for.body1783, label %for.end1829

for.body1783:                                     ; preds = %for.cond1779
  %842 = load i32, ptr %chn, align 4
  %idxprom1784 = sext i32 %842 to i64
  %arrayidx1785 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1784
  %843 = load i32, ptr %arrayidx1785, align 4
  %tobool1786.not = icmp eq i32 %843, 0
  br i1 %tobool1786.not, label %if.else1799, label %if.then1787

if.then1787:                                      ; preds = %for.body1783
  %844 = load i32, ptr %chn, align 4
  %idxprom1788 = sext i32 %844 to i64
  %arrayidx1789 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1788
  %845 = load i32, ptr %arrayidx1789, align 4
  switch i32 %845, label %if.end1818 [
    i32 0, label %sw.bb1790
    i32 3, label %sw.bb1790
    i32 2, label %sw.bb1793
    i32 1, label %sw.bb1796
  ]

sw.bb1790:                                        ; preds = %if.then1787, %if.then1787
  %846 = load i32, ptr %chn, align 4
  %idxprom1791 = sext i32 %846 to i64
  %arrayidx1792 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1791
  store i32 0, ptr %arrayidx1792, align 4
  br label %if.end1818

sw.bb1793:                                        ; preds = %if.then1787
  %847 = load i32, ptr %chn, align 4
  %idxprom1794 = sext i32 %847 to i64
  %arrayidx1795 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1794
  store i32 3, ptr %arrayidx1795, align 4
  br label %if.end1818

sw.bb1796:                                        ; preds = %if.then1787
  %848 = load ptr, ptr @__stderrp, align 8
  %849 = call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %848)
  call void @abort() #10
  unreachable

if.else1799:                                      ; preds = %for.body1783
  %850 = load i32, ptr %chn, align 4
  %idxprom1800 = sext i32 %850 to i64
  %arrayidx1801 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1800
  store i32 2, ptr %arrayidx1801, align 4
  %idxprom1802 = sext i32 %850 to i64
  %arrayidx1803 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1802
  %851 = load i32, ptr %arrayidx1803, align 4
  %cmp1804 = icmp eq i32 %851, 0
  br i1 %cmp1804, label %if.then1806, label %if.end1809

if.then1806:                                      ; preds = %if.else1799
  %852 = load i32, ptr %chn, align 4
  %idxprom1807 = sext i32 %852 to i64
  %arrayidx1808 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1807
  store i32 1, ptr %arrayidx1808, align 4
  br label %if.end1809

if.end1809:                                       ; preds = %if.then1806, %if.else1799
  %853 = load i32, ptr %chn, align 4
  %idxprom1810 = sext i32 %853 to i64
  %arrayidx1811 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1810
  %854 = load i32, ptr %arrayidx1811, align 4
  %cmp1812 = icmp eq i32 %854, 3
  br i1 %cmp1812, label %if.then1814, label %if.end1818

if.then1814:                                      ; preds = %if.end1809
  %855 = load i32, ptr %chn, align 4
  %idxprom1815 = sext i32 %855 to i64
  %arrayidx1816 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1815
  store i32 2, ptr %arrayidx1816, align 4
  br label %if.end1818

if.end1818:                                       ; preds = %if.end1809, %if.then1814, %if.then1787, %sw.bb1790, %sw.bb1793
  %856 = load i32, ptr %chn, align 4
  %idxprom1819 = sext i32 %856 to i64
  %arrayidx1820 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1819
  %857 = load i32, ptr %arrayidx1820, align 4
  %858 = load ptr, ptr %blocktype_d.addr, align 8
  %idxprom1821 = sext i32 %856 to i64
  %arrayidx1822 = getelementptr inbounds i32, ptr %858, i64 %idxprom1821
  store i32 %857, ptr %arrayidx1822, align 4
  %859 = load i32, ptr %chn, align 4
  %idxprom1823 = sext i32 %859 to i64
  %arrayidx1824 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1823
  %860 = load i32, ptr %arrayidx1824, align 4
  %idxprom1825 = sext i32 %859 to i64
  %arrayidx1826 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1825
  store i32 %860, ptr %arrayidx1826, align 4
  %861 = load i32, ptr %chn, align 4
  %inc1828 = add nsw i32 %861, 1
  br label %for.cond1779, !llvm.loop !58

for.end1829:                                      ; preds = %for.cond1779
  %862 = load ptr, ptr %blocktype_d.addr, align 8
  %863 = load i32, ptr %862, align 4
  %cmp1831 = icmp eq i32 %863, 2
  br i1 %cmp1831, label %if.then1833, label %if.else1834

if.then1833:                                      ; preds = %for.end1829
  %864 = load double, ptr @L3psycho_anal.ms_ratio_s_old, align 8
  %865 = load ptr, ptr %ms_ratio.addr, align 8
  store double %864, ptr %865, align 8
  br label %if.end1835

if.else1834:                                      ; preds = %for.end1829
  %866 = load double, ptr @L3psycho_anal.ms_ratio_l_old, align 8
  %867 = load ptr, ptr %ms_ratio.addr, align 8
  store double %866, ptr %867, align 8
  br label %if.end1835

if.end1835:                                       ; preds = %if.else1834, %if.then1833
  %868 = load double, ptr %ms_ratio_s, align 8
  store double %868, ptr @L3psycho_anal.ms_ratio_s_old, align 8
  %869 = load double, ptr %ms_ratio_l, align 8
  store double %869, ptr @L3psycho_anal.ms_ratio_l_old, align 8
  %870 = load ptr, ptr %ms_ratio_next.addr, align 8
  store double %869, ptr %870, align 8
  %871 = load i32, ptr %numchn, align 4
  %cmp1836 = icmp eq i32 %871, 4
  br i1 %cmp1836, label %if.then1838, label %if.else1850

if.then1838:                                      ; preds = %if.end1835
  %arrayidx1840 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 3
  %872 = load float, ptr %arrayidx1840, align 4
  %arrayidx1841 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 2
  %873 = load float, ptr %arrayidx1841, align 4
  %add1842 = fadd float %872, %873
  store float %add1842, ptr %tmp1839, align 4
  %874 = load double, ptr @L3psycho_anal.ms_ener_ratio_old, align 8
  %875 = load ptr, ptr %ms_ener_ratio.addr, align 8
  store double %874, ptr %875, align 8
  store double 0.000000e+00, ptr @L3psycho_anal.ms_ener_ratio_old, align 8
  %cmp1843 = fcmp ogt float %add1842, 0.000000e+00
  br i1 %cmp1843, label %if.then1845, label %if.end1851

if.then1845:                                      ; preds = %if.then1838
  %arrayidx1846 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 3
  %876 = load float, ptr %arrayidx1846, align 4
  %877 = load float, ptr %tmp1839, align 4
  %div1847 = fdiv float %876, %877
  %conv1848 = fpext float %div1847 to double
  store double %conv1848, ptr @L3psycho_anal.ms_ener_ratio_old, align 8
  br label %if.end1851

if.else1850:                                      ; preds = %if.end1835
  %878 = load ptr, ptr %ms_ener_ratio.addr, align 8
  store double 0.000000e+00, ptr %878, align 8
  br label %if.end1851

if.end1851:                                       ; preds = %if.then1838, %if.then1845, %if.else1850
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: nounwind ssp uwtable
define void @L3para_read(double noundef %sfreq, ptr noundef %numlines_l, ptr noundef %numlines_s, ptr noundef %partition_l, ptr noundef %minval, ptr noundef %qthr_l, ptr noundef %s3_l, ptr noundef %s3_s, ptr noundef %qthr_s, ptr noundef %SNR, ptr noundef %bu_l, ptr noundef %bo_l, ptr noundef %w1_l, ptr noundef %w2_l, ptr noundef %bu_s, ptr noundef %bo_s, ptr noundef %w1_s, ptr noundef %w2_s) #0 {
entry:
  %sfreq.addr = alloca double, align 8
  %numlines_l.addr = alloca ptr, align 8
  %numlines_s.addr = alloca ptr, align 8
  %partition_l.addr = alloca ptr, align 8
  %minval.addr = alloca ptr, align 8
  %qthr_l.addr = alloca ptr, align 8
  %s3_l.addr = alloca ptr, align 8
  %s3_s.addr = alloca ptr, align 8
  %qthr_s.addr = alloca ptr, align 8
  %SNR.addr = alloca ptr, align 8
  %bu_l.addr = alloca ptr, align 8
  %bo_l.addr = alloca ptr, align 8
  %w1_l.addr = alloca ptr, align 8
  %w2_l.addr = alloca ptr, align 8
  %bu_s.addr = alloca ptr, align 8
  %bo_s.addr = alloca ptr, align 8
  %w1_s.addr = alloca ptr, align 8
  %w2_s.addr = alloca ptr, align 8
  %freq_tp = alloca double, align 8
  %bval_l = alloca [63 x double], align 8
  %bval_s = alloca [63 x double], align 8
  %cbmax = alloca i32, align 4
  %cbmax_tp = alloca i32, align 4
  %p = alloca ptr, align 8
  %sbmax = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %k2 = alloca i32, align 4
  %loop = alloca i32, align 4
  %part_max = alloca i32, align 4
  %freq_scale = alloca i32, align 4
  %tempx = alloca double, align 8
  %x = alloca double, align 8
  %tempy = alloca double, align 8
  %tempx178 = alloca double, align 8
  %x179 = alloca double, align 8
  %tempy180 = alloca double, align 8
  store double %sfreq, ptr %sfreq.addr, align 8
  store ptr %numlines_l, ptr %numlines_l.addr, align 8
  store ptr %numlines_s, ptr %numlines_s.addr, align 8
  store ptr %partition_l, ptr %partition_l.addr, align 8
  store ptr %minval, ptr %minval.addr, align 8
  store ptr %qthr_l, ptr %qthr_l.addr, align 8
  store ptr %s3_l, ptr %s3_l.addr, align 8
  store ptr %s3_s, ptr %s3_s.addr, align 8
  store ptr %qthr_s, ptr %qthr_s.addr, align 8
  store ptr %SNR, ptr %SNR.addr, align 8
  store ptr %bu_l, ptr %bu_l.addr, align 8
  store ptr %bo_l, ptr %bo_l.addr, align 8
  store ptr %w1_l, ptr %w1_l.addr, align 8
  store ptr %w2_l, ptr %w2_l.addr, align 8
  store ptr %bu_s, ptr %bu_s.addr, align 8
  store ptr %bo_s, ptr %bo_s.addr, align 8
  store ptr %w1_s, ptr %w1_s.addr, align 8
  store ptr %w2_s, ptr %w2_s.addr, align 8
  store i32 0, ptr %cbmax, align 4
  store ptr @psy_data, ptr %p, align 8
  store i32 1, ptr %freq_scale, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc42, %for.inc41 ]
  store i32 %storemerge, ptr %loop, align 4
  %cmp = icmp slt i32 %storemerge, 6
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %1 = load double, ptr %0, align 8
  store double %1, ptr %freq_tp, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %0, i64 2
  store ptr %incdec.ptr1, ptr %p, align 8
  %2 = load double, ptr %incdec.ptr, align 8
  %conv = fptosi double %2 to i32
  %inc = add nsw i32 %conv, 1
  store i32 %inc, ptr %cbmax_tp, align 4
  %3 = load double, ptr %sfreq.addr, align 8
  %4 = load double, ptr %freq_tp, align 8
  %5 = load i32, ptr %freq_scale, align 4
  %conv2 = sitofp i32 %5 to double
  %div = fdiv double %4, %conv2
  %cmp3 = fcmp oeq double %3, %div
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %cbmax_tp, align 4
  store i32 %6, ptr %cbmax, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %k2, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc36, %if.then
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %cbmax_tp, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body8, label %for.inc41

for.body8:                                        ; preds = %for.cond5
  %9 = load ptr, ptr %p, align 8
  %incdec.ptr9 = getelementptr inbounds double, ptr %9, i64 1
  store ptr %incdec.ptr9, ptr %p, align 8
  %10 = load double, ptr %9, align 8
  %conv10 = fptosi double %10 to i32
  store i32 %conv10, ptr %j, align 4
  %incdec.ptr11 = getelementptr inbounds double, ptr %9, i64 2
  store ptr %incdec.ptr11, ptr %p, align 8
  %11 = load double, ptr %incdec.ptr9, align 8
  %conv12 = fptosi double %11 to i32
  %12 = load ptr, ptr %numlines_l.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  store i32 %conv12, ptr %arrayidx, align 4
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr13 = getelementptr inbounds double, ptr %14, i64 1
  store ptr %incdec.ptr13, ptr %p, align 8
  %15 = load double, ptr %14, align 8
  %sub = fadd double %15, -6.000000e+00
  %mul = fmul double %sub, 0xBFCD791C5F888823
  %16 = call double @llvm.exp.f64(double %mul)
  %17 = load ptr, ptr %minval.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds double, ptr %17, i64 %idxprom14
  store double %16, ptr %arrayidx15, align 8
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr16 = getelementptr inbounds double, ptr %19, i64 1
  store ptr %incdec.ptr16, ptr %p, align 8
  %20 = load double, ptr %19, align 8
  %21 = load ptr, ptr %qthr_l.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %21, i64 %idxprom17
  store double %20, ptr %arrayidx18, align 8
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr19 = getelementptr inbounds double, ptr %23, i64 1
  %incdec.ptr20 = getelementptr inbounds double, ptr %23, i64 2
  store ptr %incdec.ptr20, ptr %p, align 8
  %24 = load double, ptr %incdec.ptr19, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom21
  store double %24, ptr %arrayidx22, align 8
  %26 = load i32, ptr %j, align 4
  %cmp23.not = icmp eq i32 %26, %25
  br i1 %cmp23.not, label %for.cond26, label %if.then25

if.then25:                                        ; preds = %for.body8
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %27)
  call void @exit(i32 noundef -1) #9
  unreachable

for.cond26:                                       ; preds = %for.body8, %for.body31
  %storemerge16 = phi i32 [ %inc35, %for.body31 ], [ 0, %for.body8 ]
  store i32 %storemerge16, ptr %k, align 4
  %29 = load ptr, ptr %numlines_l.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %29, i64 %idxprom27
  %31 = load i32, ptr %arrayidx28, align 4
  %cmp29 = icmp slt i32 %storemerge16, %31
  br i1 %cmp29, label %for.body31, label %for.inc36

for.body31:                                       ; preds = %for.cond26
  %32 = load i32, ptr %i, align 4
  %33 = load ptr, ptr %partition_l.addr, align 8
  %34 = load i32, ptr %k2, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %k2, align 4
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %33, i64 %idxprom33
  store i32 %32, ptr %arrayidx34, align 4
  %35 = load i32, ptr %k, align 4
  %inc35 = add nsw i32 %35, 1
  br label %for.cond26, !llvm.loop !59

for.inc36:                                        ; preds = %for.cond26
  %36 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond5, !llvm.loop !60

if.else:                                          ; preds = %for.body
  %37 = load i32, ptr %cbmax_tp, align 4
  %mul39 = mul nsw i32 %37, 6
  %38 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %mul39 to i64
  %add.ptr = getelementptr inbounds double, ptr %38, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %if.else, %for.cond5
  %39 = load i32, ptr %loop, align 4
  %inc42 = add nsw i32 %39, 1
  br label %for.cond, !llvm.loop !61

for.end43:                                        ; preds = %for.cond
  %40 = load i32, ptr %cbmax, align 4
  store i32 %40, ptr %part_max, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc118, %for.end43
  %storemerge1 = phi i32 [ 0, %for.end43 ], [ %inc119, %for.inc118 ]
  store i32 %storemerge1, ptr %i, align 4
  %41 = load i32, ptr %part_max, align 4
  %cmp45 = icmp slt i32 %storemerge1, %41
  br i1 %cmp45, label %for.cond48, label %for.cond121

for.cond48:                                       ; preds = %for.cond44, %for.inc115
  %storemerge12 = phi i32 [ %inc116, %for.inc115 ], [ 0, %for.cond44 ]
  store i32 %storemerge12, ptr %j, align 4
  %42 = load i32, ptr %part_max, align 4
  %cmp49 = icmp slt i32 %storemerge12, %42
  br i1 %cmp49, label %for.body51, label %for.inc118

for.body51:                                       ; preds = %for.cond48
  %43 = load i32, ptr %j, align 4
  %44 = load i32, ptr %i, align 4
  %cmp52.not = icmp slt i32 %43, %44
  br i1 %cmp52.not, label %if.else61, label %if.then54

if.then54:                                        ; preds = %for.body51
  %45 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom55
  %46 = load double, ptr %arrayidx56, align 8
  %47 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %47 to i64
  %arrayidx58 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom57
  %48 = load double, ptr %arrayidx58, align 8
  %sub59 = fsub double %46, %48
  %mul60 = fmul double %sub59, 3.000000e+00
  br label %if.end68

if.else61:                                        ; preds = %for.body51
  %49 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %arrayidx63 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom62
  %50 = load double, ptr %arrayidx63, align 8
  %51 = load i32, ptr %j, align 4
  %idxprom64 = sext i32 %51 to i64
  %arrayidx65 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom64
  %52 = load double, ptr %arrayidx65, align 8
  %sub66 = fsub double %50, %52
  %mul67 = fmul double %sub66, 1.500000e+00
  br label %if.end68

if.end68:                                         ; preds = %if.else61, %if.then54
  %storemerge13 = phi double [ %mul67, %if.else61 ], [ %mul60, %if.then54 ]
  store double %storemerge13, ptr %tempx, align 8
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %j, align 4
  %cmp69.not = icmp slt i32 %53, %54
  br i1 %cmp69.not, label %if.else78, label %if.then71

if.then71:                                        ; preds = %if.end68
  %55 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom72
  %56 = load double, ptr %arrayidx73, align 8
  %57 = load i32, ptr %j, align 4
  %idxprom74 = sext i32 %57 to i64
  %arrayidx75 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom74
  %58 = load double, ptr %arrayidx75, align 8
  %sub76 = fsub double %56, %58
  %mul77 = fmul double %sub76, 3.000000e+00
  br label %if.end85

if.else78:                                        ; preds = %if.end68
  %59 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %59 to i64
  %arrayidx80 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom79
  %60 = load double, ptr %arrayidx80, align 8
  %61 = load i32, ptr %j, align 4
  %idxprom81 = sext i32 %61 to i64
  %arrayidx82 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom81
  %62 = load double, ptr %arrayidx82, align 8
  %sub83 = fsub double %60, %62
  %mul84 = fmul double %sub83, 1.500000e+00
  br label %if.end85

if.end85:                                         ; preds = %if.else78, %if.then71
  %storemerge14 = phi double [ %mul84, %if.else78 ], [ %mul77, %if.then71 ]
  store double %storemerge14, ptr %tempx, align 8
  %cmp86 = fcmp ult double %storemerge14, 5.000000e-01
  %63 = load double, ptr %tempx, align 8
  %cmp88 = fcmp ugt double %63, 2.500000e+00
  %or.cond = select i1 %cmp86, i1 true, i1 %cmp88
  br i1 %or.cond, label %if.end96, label %if.then90

if.then90:                                        ; preds = %if.end85
  %64 = load double, ptr %tempx, align 8
  %sub91 = fadd double %64, -5.000000e-01
  %neg = fmul double %sub91, -2.000000e+00
  %65 = call double @llvm.fmuladd.f64(double %sub91, double %sub91, double %neg)
  %mul94 = fmul double %65, 8.000000e+00
  br label %if.end96

if.end96:                                         ; preds = %if.end85, %if.then90
  %storemerge15 = phi double [ %mul94, %if.then90 ], [ 0.000000e+00, %if.end85 ]
  store double %storemerge15, ptr %x, align 8
  %66 = load double, ptr %tempx, align 8
  %add = fadd double %66, 4.740000e-01
  store double %add, ptr %tempx, align 8
  %67 = call double @llvm.fmuladd.f64(double %add, double 7.500000e+00, double 0x402F9F6E6106AB15)
  %68 = call double @llvm.fmuladd.f64(double %add, double %add, double 1.000000e+00)
  %69 = call double @llvm.sqrt.f64(double %68)
  %70 = call double @llvm.fmuladd.f64(double %69, double -1.750000e+01, double %67)
  store double %70, ptr %tempy, align 8
  %cmp100 = fcmp ugt double %70, -6.000000e+01
  br i1 %cmp100, label %if.else107, label %if.then102

if.then102:                                       ; preds = %if.end96
  %71 = load ptr, ptr %s3_l.addr, align 8
  %72 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %72 to i64
  %73 = load i32, ptr %j, align 4
  %idxprom105 = sext i32 %73 to i64
  %arrayidx106 = getelementptr inbounds [64 x double], ptr %71, i64 %idxprom103, i64 %idxprom105
  store double 0.000000e+00, ptr %arrayidx106, align 8
  br label %for.inc115

if.else107:                                       ; preds = %if.end96
  %74 = load double, ptr %x, align 8
  %75 = load double, ptr %tempy, align 8
  %add108 = fadd double %74, %75
  %mul109 = fmul double %add108, 0x3FCD791C5F888823
  %76 = call double @llvm.exp.f64(double %mul109)
  %77 = load ptr, ptr %s3_l.addr, align 8
  %78 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %78 to i64
  %79 = load i32, ptr %j, align 4
  %idxprom112 = sext i32 %79 to i64
  %arrayidx113 = getelementptr inbounds [64 x double], ptr %77, i64 %idxprom110, i64 %idxprom112
  store double %76, ptr %arrayidx113, align 8
  br label %for.inc115

for.inc115:                                       ; preds = %if.then102, %if.else107
  %80 = load i32, ptr %j, align 4
  %inc116 = add nsw i32 %80, 1
  br label %for.cond48, !llvm.loop !62

for.inc118:                                       ; preds = %for.cond48
  %81 = load i32, ptr %i, align 4
  %inc119 = add nsw i32 %81, 1
  br label %for.cond44, !llvm.loop !63

for.cond121:                                      ; preds = %for.cond44, %for.inc171
  %storemerge2 = phi i32 [ %inc172, %for.inc171 ], [ 0, %for.cond44 ]
  store i32 %storemerge2, ptr %loop, align 4
  %cmp122 = icmp slt i32 %storemerge2, 6
  br i1 %cmp122, label %for.body124, label %for.end173

for.body124:                                      ; preds = %for.cond121
  %82 = load ptr, ptr %p, align 8
  %incdec.ptr125 = getelementptr inbounds double, ptr %82, i64 1
  store ptr %incdec.ptr125, ptr %p, align 8
  %83 = load double, ptr %82, align 8
  store double %83, ptr %freq_tp, align 8
  %incdec.ptr126 = getelementptr inbounds double, ptr %82, i64 2
  store ptr %incdec.ptr126, ptr %p, align 8
  %84 = load double, ptr %incdec.ptr125, align 8
  %conv127 = fptosi double %84 to i32
  %inc128 = add nsw i32 %conv127, 1
  store i32 %inc128, ptr %cbmax_tp, align 4
  %85 = load double, ptr %sfreq.addr, align 8
  %86 = load double, ptr %freq_tp, align 8
  %87 = load i32, ptr %freq_scale, align 4
  %conv129 = sitofp i32 %87 to double
  %div130 = fdiv double %86, %conv129
  %cmp131 = fcmp oeq double %85, %div130
  br i1 %cmp131, label %if.then133, label %if.else166

if.then133:                                       ; preds = %for.body124
  %88 = load i32, ptr %cbmax_tp, align 4
  store i32 %88, ptr %cbmax, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %k2, align 4
  br label %for.cond134

for.cond134:                                      ; preds = %if.end158, %if.then133
  %89 = load i32, ptr %i, align 4
  %90 = load i32, ptr %cbmax_tp, align 4
  %cmp135 = icmp slt i32 %89, %90
  br i1 %cmp135, label %for.body137, label %for.end163

for.body137:                                      ; preds = %for.cond134
  %91 = load ptr, ptr %p, align 8
  %incdec.ptr138 = getelementptr inbounds double, ptr %91, i64 1
  store ptr %incdec.ptr138, ptr %p, align 8
  %92 = load double, ptr %91, align 8
  %conv139 = fptosi double %92 to i32
  store i32 %conv139, ptr %j, align 4
  %incdec.ptr140 = getelementptr inbounds double, ptr %91, i64 2
  store ptr %incdec.ptr140, ptr %p, align 8
  %93 = load double, ptr %incdec.ptr138, align 8
  %conv141 = fptosi double %93 to i32
  %94 = load ptr, ptr %numlines_s.addr, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %95 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %94, i64 %idxprom142
  store i32 %conv141, ptr %arrayidx143, align 4
  %96 = load ptr, ptr %p, align 8
  %incdec.ptr144 = getelementptr inbounds double, ptr %96, i64 1
  store ptr %incdec.ptr144, ptr %p, align 8
  %97 = load double, ptr %96, align 8
  %98 = load ptr, ptr %qthr_s.addr, align 8
  %99 = load i32, ptr %i, align 4
  %idxprom145 = sext i32 %99 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %98, i64 %idxprom145
  store double %97, ptr %arrayidx146, align 8
  %100 = load ptr, ptr %p, align 8
  %incdec.ptr147 = getelementptr inbounds double, ptr %100, i64 1
  %incdec.ptr148 = getelementptr inbounds double, ptr %100, i64 2
  store ptr %incdec.ptr148, ptr %p, align 8
  %101 = load double, ptr %incdec.ptr147, align 8
  %102 = load ptr, ptr %SNR.addr, align 8
  %103 = load i32, ptr %i, align 4
  %idxprom149 = sext i32 %103 to i64
  %arrayidx150 = getelementptr inbounds double, ptr %102, i64 %idxprom149
  store double %101, ptr %arrayidx150, align 8
  %104 = load ptr, ptr %p, align 8
  %incdec.ptr151 = getelementptr inbounds double, ptr %104, i64 1
  store ptr %incdec.ptr151, ptr %p, align 8
  %105 = load double, ptr %104, align 8
  %106 = load i32, ptr %i, align 4
  %idxprom152 = sext i32 %106 to i64
  %arrayidx153 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom152
  store double %105, ptr %arrayidx153, align 8
  %107 = load i32, ptr %j, align 4
  %cmp154.not = icmp eq i32 %107, %106
  br i1 %cmp154.not, label %if.end158, label %if.then156

if.then156:                                       ; preds = %for.body137
  %108 = load ptr, ptr @__stderrp, align 8
  %109 = call i64 @fwrite(ptr nonnull @.str.3, i64 26, i64 1, ptr %108)
  call void @exit(i32 noundef -1) #9
  unreachable

if.end158:                                        ; preds = %for.body137
  %110 = load ptr, ptr %numlines_s.addr, align 8
  %111 = load i32, ptr %i, align 4
  %idxprom159 = sext i32 %111 to i64
  %arrayidx160 = getelementptr inbounds i32, ptr %110, i64 %idxprom159
  %112 = load i32, ptr %arrayidx160, align 4
  %dec = add nsw i32 %112, -1
  store i32 %dec, ptr %arrayidx160, align 4
  %113 = load i32, ptr %i, align 4
  %inc162 = add nsw i32 %113, 1
  store i32 %inc162, ptr %i, align 4
  br label %for.cond134, !llvm.loop !64

for.end163:                                       ; preds = %for.cond134
  %114 = load ptr, ptr %numlines_s.addr, align 8
  %115 = load i32, ptr %i, align 4
  %idxprom164 = sext i32 %115 to i64
  %arrayidx165 = getelementptr inbounds i32, ptr %114, i64 %idxprom164
  store i32 -1, ptr %arrayidx165, align 4
  br label %for.inc171

if.else166:                                       ; preds = %for.body124
  %116 = load i32, ptr %cbmax_tp, align 4
  %mul167 = mul nsw i32 %116, 6
  %117 = load ptr, ptr %p, align 8
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds double, ptr %117, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8
  br label %for.inc171

for.inc171:                                       ; preds = %for.end163, %if.else166
  %118 = load i32, ptr %loop, align 4
  %inc172 = add nsw i32 %118, 1
  br label %for.cond121, !llvm.loop !65

for.end173:                                       ; preds = %for.cond121
  %119 = load i32, ptr %cbmax, align 4
  store i32 %119, ptr %part_max, align 4
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc255, %for.end173
  %storemerge3 = phi i32 [ 0, %for.end173 ], [ %inc256, %for.inc255 ]
  store i32 %storemerge3, ptr %i, align 4
  %120 = load i32, ptr %part_max, align 4
  %cmp175 = icmp slt i32 %storemerge3, %120
  br i1 %cmp175, label %for.cond182, label %for.cond258

for.cond182:                                      ; preds = %for.cond174, %for.inc252
  %storemerge8 = phi i32 [ %inc253, %for.inc252 ], [ 0, %for.cond174 ]
  store i32 %storemerge8, ptr %j, align 4
  %121 = load i32, ptr %part_max, align 4
  %cmp183 = icmp slt i32 %storemerge8, %121
  br i1 %cmp183, label %for.body185, label %for.inc255

for.body185:                                      ; preds = %for.cond182
  %122 = load i32, ptr %j, align 4
  %123 = load i32, ptr %i, align 4
  %cmp186.not = icmp slt i32 %122, %123
  br i1 %cmp186.not, label %if.else195, label %if.then188

if.then188:                                       ; preds = %for.body185
  %124 = load i32, ptr %i, align 4
  %idxprom189 = sext i32 %124 to i64
  %arrayidx190 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom189
  %125 = load double, ptr %arrayidx190, align 8
  %126 = load i32, ptr %j, align 4
  %idxprom191 = sext i32 %126 to i64
  %arrayidx192 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom191
  %127 = load double, ptr %arrayidx192, align 8
  %sub193 = fsub double %125, %127
  %mul194 = fmul double %sub193, 3.000000e+00
  br label %if.end202

if.else195:                                       ; preds = %for.body185
  %128 = load i32, ptr %i, align 4
  %idxprom196 = sext i32 %128 to i64
  %arrayidx197 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom196
  %129 = load double, ptr %arrayidx197, align 8
  %130 = load i32, ptr %j, align 4
  %idxprom198 = sext i32 %130 to i64
  %arrayidx199 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom198
  %131 = load double, ptr %arrayidx199, align 8
  %sub200 = fsub double %129, %131
  %mul201 = fmul double %sub200, 1.500000e+00
  br label %if.end202

if.end202:                                        ; preds = %if.else195, %if.then188
  %storemerge9 = phi double [ %mul201, %if.else195 ], [ %mul194, %if.then188 ]
  store double %storemerge9, ptr %tempx178, align 8
  %132 = load i32, ptr %i, align 4
  %133 = load i32, ptr %j, align 4
  %cmp203.not = icmp slt i32 %132, %133
  br i1 %cmp203.not, label %if.else212, label %if.then205

if.then205:                                       ; preds = %if.end202
  %134 = load i32, ptr %i, align 4
  %idxprom206 = sext i32 %134 to i64
  %arrayidx207 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom206
  %135 = load double, ptr %arrayidx207, align 8
  %136 = load i32, ptr %j, align 4
  %idxprom208 = sext i32 %136 to i64
  %arrayidx209 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom208
  %137 = load double, ptr %arrayidx209, align 8
  %sub210 = fsub double %135, %137
  %mul211 = fmul double %sub210, 3.000000e+00
  br label %if.end219

if.else212:                                       ; preds = %if.end202
  %138 = load i32, ptr %i, align 4
  %idxprom213 = sext i32 %138 to i64
  %arrayidx214 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom213
  %139 = load double, ptr %arrayidx214, align 8
  %140 = load i32, ptr %j, align 4
  %idxprom215 = sext i32 %140 to i64
  %arrayidx216 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom215
  %141 = load double, ptr %arrayidx216, align 8
  %sub217 = fsub double %139, %141
  %mul218 = fmul double %sub217, 1.500000e+00
  br label %if.end219

if.end219:                                        ; preds = %if.else212, %if.then205
  %storemerge10 = phi double [ %mul218, %if.else212 ], [ %mul211, %if.then205 ]
  store double %storemerge10, ptr %tempx178, align 8
  %cmp220 = fcmp ult double %storemerge10, 5.000000e-01
  %142 = load double, ptr %tempx178, align 8
  %cmp223 = fcmp ugt double %142, 2.500000e+00
  %or.cond17 = select i1 %cmp220, i1 true, i1 %cmp223
  br i1 %or.cond17, label %if.end232, label %if.then225

if.then225:                                       ; preds = %if.end219
  %143 = load double, ptr %tempx178, align 8
  %sub226 = fadd double %143, -5.000000e-01
  %neg229 = fmul double %sub226, -2.000000e+00
  %144 = call double @llvm.fmuladd.f64(double %sub226, double %sub226, double %neg229)
  %mul230 = fmul double %144, 8.000000e+00
  br label %if.end232

if.end232:                                        ; preds = %if.end219, %if.then225
  %storemerge11 = phi double [ %mul230, %if.then225 ], [ 0.000000e+00, %if.end219 ]
  store double %storemerge11, ptr %x179, align 8
  %145 = load double, ptr %tempx178, align 8
  %add233 = fadd double %145, 4.740000e-01
  store double %add233, ptr %tempx178, align 8
  %146 = call double @llvm.fmuladd.f64(double %add233, double 7.500000e+00, double 0x402F9F6E6106AB15)
  %147 = call double @llvm.fmuladd.f64(double %add233, double %add233, double 1.000000e+00)
  %148 = call double @llvm.sqrt.f64(double %147)
  %149 = call double @llvm.fmuladd.f64(double %148, double -1.750000e+01, double %146)
  store double %149, ptr %tempy180, align 8
  %cmp237 = fcmp ugt double %149, -6.000000e+01
  br i1 %cmp237, label %if.else244, label %if.then239

if.then239:                                       ; preds = %if.end232
  %150 = load ptr, ptr %s3_s.addr, align 8
  %151 = load i32, ptr %i, align 4
  %idxprom240 = sext i32 %151 to i64
  %152 = load i32, ptr %j, align 4
  %idxprom242 = sext i32 %152 to i64
  %arrayidx243 = getelementptr inbounds [64 x double], ptr %150, i64 %idxprom240, i64 %idxprom242
  store double 0.000000e+00, ptr %arrayidx243, align 8
  br label %for.inc252

if.else244:                                       ; preds = %if.end232
  %153 = load double, ptr %x179, align 8
  %154 = load double, ptr %tempy180, align 8
  %add245 = fadd double %153, %154
  %mul246 = fmul double %add245, 0x3FCD791C5F888823
  %155 = call double @llvm.exp.f64(double %mul246)
  %156 = load ptr, ptr %s3_s.addr, align 8
  %157 = load i32, ptr %i, align 4
  %idxprom247 = sext i32 %157 to i64
  %158 = load i32, ptr %j, align 4
  %idxprom249 = sext i32 %158 to i64
  %arrayidx250 = getelementptr inbounds [64 x double], ptr %156, i64 %idxprom247, i64 %idxprom249
  store double %155, ptr %arrayidx250, align 8
  br label %for.inc252

for.inc252:                                       ; preds = %if.then239, %if.else244
  %159 = load i32, ptr %j, align 4
  %inc253 = add nsw i32 %159, 1
  br label %for.cond182, !llvm.loop !66

for.inc255:                                       ; preds = %for.cond182
  %160 = load i32, ptr %i, align 4
  %inc256 = add nsw i32 %160, 1
  br label %for.cond174, !llvm.loop !67

for.cond258:                                      ; preds = %for.cond174, %for.inc327
  %storemerge4 = phi i32 [ %inc328, %for.inc327 ], [ 0, %for.cond174 ]
  store i32 %storemerge4, ptr %loop, align 4
  %cmp259 = icmp slt i32 %storemerge4, 6
  br i1 %cmp259, label %for.body261, label %for.cond330

for.body261:                                      ; preds = %for.cond258
  %161 = load ptr, ptr %p, align 8
  %incdec.ptr262 = getelementptr inbounds double, ptr %161, i64 1
  store ptr %incdec.ptr262, ptr %p, align 8
  %162 = load double, ptr %161, align 8
  store double %162, ptr %freq_tp, align 8
  %incdec.ptr263 = getelementptr inbounds double, ptr %161, i64 2
  store ptr %incdec.ptr263, ptr %p, align 8
  %163 = load double, ptr %incdec.ptr262, align 8
  %conv264 = fptosi double %163 to i32
  %inc265 = add nsw i32 %conv264, 1
  store i32 %inc265, ptr %sbmax, align 4
  %164 = load double, ptr %sfreq.addr, align 8
  %165 = load double, ptr %freq_tp, align 8
  %166 = load i32, ptr %freq_scale, align 4
  %conv266 = sitofp i32 %166 to double
  %div267 = fdiv double %165, %conv266
  %cmp268 = fcmp oeq double %164, %div267
  br i1 %cmp268, label %for.cond271, label %if.else322

for.cond271:                                      ; preds = %for.body261, %for.inc319
  %storemerge7 = phi i32 [ %inc320, %for.inc319 ], [ 0, %for.body261 ]
  store i32 %storemerge7, ptr %i, align 4
  %167 = load i32, ptr %sbmax, align 4
  %cmp272 = icmp slt i32 %storemerge7, %167
  br i1 %cmp272, label %for.body274, label %for.inc327

for.body274:                                      ; preds = %for.cond271
  %168 = load ptr, ptr %p, align 8
  %incdec.ptr275 = getelementptr inbounds double, ptr %168, i64 1
  store ptr %incdec.ptr275, ptr %p, align 8
  %169 = load double, ptr %168, align 8
  %conv276 = fptosi double %169 to i32
  store i32 %conv276, ptr %j, align 4
  %incdec.ptr277 = getelementptr inbounds double, ptr %168, i64 2
  %incdec.ptr278 = getelementptr inbounds double, ptr %168, i64 3
  store ptr %incdec.ptr278, ptr %p, align 8
  %170 = load double, ptr %incdec.ptr277, align 8
  %conv279 = fptosi double %170 to i32
  %171 = load ptr, ptr %bu_l.addr, align 8
  %172 = load i32, ptr %i, align 4
  %idxprom280 = sext i32 %172 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %171, i64 %idxprom280
  store i32 %conv279, ptr %arrayidx281, align 4
  %173 = load ptr, ptr %p, align 8
  %incdec.ptr282 = getelementptr inbounds double, ptr %173, i64 1
  store ptr %incdec.ptr282, ptr %p, align 8
  %174 = load double, ptr %173, align 8
  %conv283 = fptosi double %174 to i32
  %175 = load ptr, ptr %bo_l.addr, align 8
  %176 = load i32, ptr %i, align 4
  %idxprom284 = sext i32 %176 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %175, i64 %idxprom284
  store i32 %conv283, ptr %arrayidx285, align 4
  %177 = load ptr, ptr %p, align 8
  %incdec.ptr286 = getelementptr inbounds double, ptr %177, i64 1
  store ptr %incdec.ptr286, ptr %p, align 8
  %178 = load double, ptr %177, align 8
  %179 = load ptr, ptr %w1_l.addr, align 8
  %180 = load i32, ptr %i, align 4
  %idxprom287 = sext i32 %180 to i64
  %arrayidx288 = getelementptr inbounds double, ptr %179, i64 %idxprom287
  store double %178, ptr %arrayidx288, align 8
  %181 = load ptr, ptr %p, align 8
  %incdec.ptr289 = getelementptr inbounds double, ptr %181, i64 1
  store ptr %incdec.ptr289, ptr %p, align 8
  %182 = load double, ptr %181, align 8
  %183 = load ptr, ptr %w2_l.addr, align 8
  %184 = load i32, ptr %i, align 4
  %idxprom290 = sext i32 %184 to i64
  %arrayidx291 = getelementptr inbounds double, ptr %183, i64 %idxprom290
  store double %182, ptr %arrayidx291, align 8
  %185 = load i32, ptr %j, align 4
  %cmp292.not = icmp eq i32 %185, %184
  br i1 %cmp292.not, label %if.end296, label %if.then294

if.then294:                                       ; preds = %for.body274
  %186 = load ptr, ptr @__stderrp, align 8
  %187 = call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %186)
  call void @exit(i32 noundef -1) #9
  unreachable

if.end296:                                        ; preds = %for.body274
  %188 = load i32, ptr %i, align 4
  %cmp297.not = icmp eq i32 %188, 0
  br i1 %cmp297.not, label %for.inc319, label %if.then299

if.then299:                                       ; preds = %if.end296
  %189 = load ptr, ptr %w1_l.addr, align 8
  %190 = load i32, ptr %i, align 4
  %idxprom300 = sext i32 %190 to i64
  %arrayidx301 = getelementptr inbounds double, ptr %189, i64 %idxprom300
  %191 = load double, ptr %arrayidx301, align 8
  %sub302 = fsub double 1.000000e+00, %191
  %192 = load ptr, ptr %w2_l.addr, align 8
  %sub303 = add nsw i32 %190, -1
  %idxprom304 = sext i32 %sub303 to i64
  %arrayidx305 = getelementptr inbounds double, ptr %192, i64 %idxprom304
  %193 = load double, ptr %arrayidx305, align 8
  %sub306 = fsub double %sub302, %193
  %194 = call double @llvm.fabs.f64(double %sub306)
  %cmp307 = fcmp ogt double %194, 1.000000e-02
  br i1 %cmp307, label %if.then309, label %for.inc319

if.then309:                                       ; preds = %if.then299
  %195 = load ptr, ptr @__stderrp, align 8
  %196 = call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr %195)
  %197 = load ptr, ptr @__stderrp, align 8
  %198 = load ptr, ptr %w1_l.addr, align 8
  %199 = load i32, ptr %i, align 4
  %idxprom311 = sext i32 %199 to i64
  %arrayidx312 = getelementptr inbounds double, ptr %198, i64 %idxprom311
  %200 = load double, ptr %arrayidx312, align 8
  %201 = load ptr, ptr %w2_l.addr, align 8
  %sub313 = add nsw i32 %199, -1
  %idxprom314 = sext i32 %sub313 to i64
  %arrayidx315 = getelementptr inbounds double, ptr %201, i64 %idxprom314
  %202 = load double, ptr %arrayidx315, align 8
  %call316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.6, double noundef %200, double noundef %202) #8
  call void @exit(i32 noundef -1) #9
  unreachable

for.inc319:                                       ; preds = %if.end296, %if.then299
  %203 = load i32, ptr %i, align 4
  %inc320 = add nsw i32 %203, 1
  br label %for.cond271, !llvm.loop !68

if.else322:                                       ; preds = %for.body261
  %204 = load i32, ptr %sbmax, align 4
  %mul323 = mul nsw i32 %204, 6
  %205 = load ptr, ptr %p, align 8
  %idx.ext324 = sext i32 %mul323 to i64
  %add.ptr325 = getelementptr inbounds double, ptr %205, i64 %idx.ext324
  store ptr %add.ptr325, ptr %p, align 8
  br label %for.inc327

for.inc327:                                       ; preds = %if.else322, %for.cond271
  %206 = load i32, ptr %loop, align 4
  %inc328 = add nsw i32 %206, 1
  br label %for.cond258, !llvm.loop !69

for.cond330:                                      ; preds = %for.cond258, %for.inc399
  %storemerge5 = phi i32 [ %inc400, %for.inc399 ], [ 0, %for.cond258 ]
  store i32 %storemerge5, ptr %loop, align 4
  %cmp331 = icmp slt i32 %storemerge5, 6
  br i1 %cmp331, label %for.body333, label %for.end401

for.body333:                                      ; preds = %for.cond330
  %207 = load ptr, ptr %p, align 8
  %incdec.ptr334 = getelementptr inbounds double, ptr %207, i64 1
  store ptr %incdec.ptr334, ptr %p, align 8
  %208 = load double, ptr %207, align 8
  store double %208, ptr %freq_tp, align 8
  %incdec.ptr335 = getelementptr inbounds double, ptr %207, i64 2
  store ptr %incdec.ptr335, ptr %p, align 8
  %209 = load double, ptr %incdec.ptr334, align 8
  %conv336 = fptosi double %209 to i32
  %inc337 = add nsw i32 %conv336, 1
  store i32 %inc337, ptr %sbmax, align 4
  %210 = load double, ptr %sfreq.addr, align 8
  %211 = load double, ptr %freq_tp, align 8
  %212 = load i32, ptr %freq_scale, align 4
  %conv338 = sitofp i32 %212 to double
  %div339 = fdiv double %211, %conv338
  %cmp340 = fcmp oeq double %210, %div339
  br i1 %cmp340, label %for.cond343, label %if.else394

for.cond343:                                      ; preds = %for.body333, %for.inc391
  %storemerge6 = phi i32 [ %inc392, %for.inc391 ], [ 0, %for.body333 ]
  store i32 %storemerge6, ptr %i, align 4
  %213 = load i32, ptr %sbmax, align 4
  %cmp344 = icmp slt i32 %storemerge6, %213
  br i1 %cmp344, label %for.body346, label %for.inc399

for.body346:                                      ; preds = %for.cond343
  %214 = load ptr, ptr %p, align 8
  %incdec.ptr347 = getelementptr inbounds double, ptr %214, i64 1
  store ptr %incdec.ptr347, ptr %p, align 8
  %215 = load double, ptr %214, align 8
  %conv348 = fptosi double %215 to i32
  store i32 %conv348, ptr %j, align 4
  %incdec.ptr349 = getelementptr inbounds double, ptr %214, i64 2
  %incdec.ptr350 = getelementptr inbounds double, ptr %214, i64 3
  store ptr %incdec.ptr350, ptr %p, align 8
  %216 = load double, ptr %incdec.ptr349, align 8
  %conv351 = fptosi double %216 to i32
  %217 = load ptr, ptr %bu_s.addr, align 8
  %218 = load i32, ptr %i, align 4
  %idxprom352 = sext i32 %218 to i64
  %arrayidx353 = getelementptr inbounds i32, ptr %217, i64 %idxprom352
  store i32 %conv351, ptr %arrayidx353, align 4
  %219 = load ptr, ptr %p, align 8
  %incdec.ptr354 = getelementptr inbounds double, ptr %219, i64 1
  store ptr %incdec.ptr354, ptr %p, align 8
  %220 = load double, ptr %219, align 8
  %conv355 = fptosi double %220 to i32
  %221 = load ptr, ptr %bo_s.addr, align 8
  %222 = load i32, ptr %i, align 4
  %idxprom356 = sext i32 %222 to i64
  %arrayidx357 = getelementptr inbounds i32, ptr %221, i64 %idxprom356
  store i32 %conv355, ptr %arrayidx357, align 4
  %223 = load ptr, ptr %p, align 8
  %incdec.ptr358 = getelementptr inbounds double, ptr %223, i64 1
  store ptr %incdec.ptr358, ptr %p, align 8
  %224 = load double, ptr %223, align 8
  %225 = load ptr, ptr %w1_s.addr, align 8
  %226 = load i32, ptr %i, align 4
  %idxprom359 = sext i32 %226 to i64
  %arrayidx360 = getelementptr inbounds double, ptr %225, i64 %idxprom359
  store double %224, ptr %arrayidx360, align 8
  %227 = load ptr, ptr %p, align 8
  %incdec.ptr361 = getelementptr inbounds double, ptr %227, i64 1
  store ptr %incdec.ptr361, ptr %p, align 8
  %228 = load double, ptr %227, align 8
  %229 = load ptr, ptr %w2_s.addr, align 8
  %230 = load i32, ptr %i, align 4
  %idxprom362 = sext i32 %230 to i64
  %arrayidx363 = getelementptr inbounds double, ptr %229, i64 %idxprom362
  store double %228, ptr %arrayidx363, align 8
  %231 = load i32, ptr %j, align 4
  %cmp364.not = icmp eq i32 %231, %230
  br i1 %cmp364.not, label %if.end368, label %if.then366

if.then366:                                       ; preds = %for.body346
  %232 = load ptr, ptr @__stderrp, align 8
  %233 = call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %232)
  call void @exit(i32 noundef -1) #9
  unreachable

if.end368:                                        ; preds = %for.body346
  %234 = load i32, ptr %i, align 4
  %cmp369.not = icmp eq i32 %234, 0
  br i1 %cmp369.not, label %for.inc391, label %if.then371

if.then371:                                       ; preds = %if.end368
  %235 = load ptr, ptr %w1_s.addr, align 8
  %236 = load i32, ptr %i, align 4
  %idxprom372 = sext i32 %236 to i64
  %arrayidx373 = getelementptr inbounds double, ptr %235, i64 %idxprom372
  %237 = load double, ptr %arrayidx373, align 8
  %sub374 = fsub double 1.000000e+00, %237
  %238 = load ptr, ptr %w2_s.addr, align 8
  %sub375 = add nsw i32 %236, -1
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds double, ptr %238, i64 %idxprom376
  %239 = load double, ptr %arrayidx377, align 8
  %sub378 = fsub double %sub374, %239
  %240 = call double @llvm.fabs.f64(double %sub378)
  %cmp379 = fcmp ogt double %240, 1.000000e-02
  br i1 %cmp379, label %if.then381, label %for.inc391

if.then381:                                       ; preds = %if.then371
  %241 = load ptr, ptr @__stderrp, align 8
  %242 = call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %241)
  %243 = load ptr, ptr @__stderrp, align 8
  %244 = load ptr, ptr %w1_s.addr, align 8
  %245 = load i32, ptr %i, align 4
  %idxprom383 = sext i32 %245 to i64
  %arrayidx384 = getelementptr inbounds double, ptr %244, i64 %idxprom383
  %246 = load double, ptr %arrayidx384, align 8
  %247 = load ptr, ptr %w2_s.addr, align 8
  %sub385 = add nsw i32 %245, -1
  %idxprom386 = sext i32 %sub385 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %247, i64 %idxprom386
  %248 = load double, ptr %arrayidx387, align 8
  %call388 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef nonnull @.str.6, double noundef %246, double noundef %248) #8
  call void @exit(i32 noundef -1) #9
  unreachable

for.inc391:                                       ; preds = %if.end368, %if.then371
  %249 = load i32, ptr %i, align 4
  %inc392 = add nsw i32 %249, 1
  br label %for.cond343, !llvm.loop !70

if.else394:                                       ; preds = %for.body333
  %250 = load i32, ptr %sbmax, align 4
  %mul395 = mul nsw i32 %250, 6
  %251 = load ptr, ptr %p, align 8
  %idx.ext396 = sext i32 %mul395 to i64
  %add.ptr397 = getelementptr inbounds double, ptr %251, i64 %idx.ext396
  store ptr %add.ptr397, ptr %p, align 8
  br label %for.inc399

for.inc399:                                       ; preds = %if.else394, %for.cond343
  %252 = load i32, ptr %loop, align 4
  %inc400 = add nsw i32 %252, 1
  br label %for.cond330, !llvm.loop !71

for.end401:                                       ; preds = %for.cond330
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #4

declare void @init_fft() #1

declare void @fft_long(ptr noundef, i32 noundef, ptr noundef) #1

declare void @fft_short(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log10.f64(double) #4

; Function Attrs: cold noreturn
declare void @abort() #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #4

declare double @__exp10(double)

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold noreturn nounwind }

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
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
