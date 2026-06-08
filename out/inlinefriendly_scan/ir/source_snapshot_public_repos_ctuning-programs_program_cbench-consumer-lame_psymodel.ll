; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/psymodel.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %cwlimit = alloca float, align 4
  %SNR_s = alloca [63 x double], align 8
  %mld = alloca double, align 8
  %mld42 = alloca double, align 8
  %norm = alloca double, align 8
  %norm251 = alloca double, align 8
  %l = alloca float, align 4
  %r = alloca float, align 4
  %l379 = alloca float, align 4
  %r384 = alloca float, align 4
  %re = alloca float, align 4
  %im = alloca float, align 4
  %re459 = alloca float, align 4
  %im465 = alloca float, align 4
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
  %tmp = alloca float, align 4
  %rn624 = alloca float, align 4
  %r1625 = alloca float, align 4
  %r2626 = alloca float, align 4
  %numre627 = alloca float, align 4
  %numim628 = alloca float, align 4
  %den629 = alloca float, align 4
  %a1637 = alloca float, align 4
  %b1641 = alloca float, align 4
  %a2660 = alloca float, align 4
  %b2664 = alloca float, align 4
  %tmp2669 = alloca float, align 4
  %tmp1674 = alloca float, align 4
  %tmp684 = alloca float, align 4
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
  %db = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %sidetot = alloca double, align 8
  %tot = alloca double, align 8
  %bothlong = alloca i32, align 4
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
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 39
  %1 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end294

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %gr_out.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end294

if.then:                                          ; preds = %land.lhs.true
  store i32 3, ptr @L3psycho_anal.blocktype_old, align 4
  store i32 3, ptr getelementptr inbounds ([2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 1), align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %out_samplerate, align 8
  store i32 %4, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  switch i32 %5, label %sw.default [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb2
    i32 48000, label %sw.bb3
    i32 16000, label %sw.bb4
    i32 22050, label %sw.bb5
    i32 24000, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, i32 noundef %7)
  call void @exit(i32 noundef -1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  call void @llvm.memset.p0.i64(ptr align 4 @L3psycho_anal.rx_sav, i8 0, i64 16416, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 @L3psycho_anal.ax_sav, i8 0, i64 16416, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 @L3psycho_anal.bx_sav, i8 0, i64 16416, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 @L3psycho_anal.en, i8 0, i64 1952, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 @L3psycho_anal.thm, i8 0, i64 1952, i1 false)
  store i32 6, ptr @L3psycho_anal.cw_lower_index, align 4
  %8 = load ptr, ptr %gfp.addr, align 8
  %cwlimit7 = getelementptr inbounds %struct.lame_global_flags, ptr %8, i32 0, i32 35
  %9 = load float, ptr %cwlimit7, align 8
  %cmp8 = fcmp ogt float %9, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.epilog
  %10 = load ptr, ptr %gfp.addr, align 8
  %cwlimit10 = getelementptr inbounds %struct.lame_global_flags, ptr %10, i32 0, i32 35
  %11 = load float, ptr %cwlimit10, align 8
  store float %11, ptr %cwlimit, align 4
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  store float 0x4021BE4F80000000, ptr %cwlimit, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %12 = load float, ptr %cwlimit, align 4
  %conv = fpext float %12 to double
  %mul = fmul double %conv, 1.000000e+03
  %mul11 = fmul double %mul, 1.024000e+03
  %13 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate12 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %out_samplerate12, align 8
  %conv13 = sitofp i32 %14 to double
  %div = fdiv double %mul11, %conv13
  %conv14 = fptosi double %div to i32
  store i32 %conv14, ptr @L3psycho_anal.cw_upper_index, align 4
  %15 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp15 = icmp slt i32 509, %15
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 509, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr @L3psycho_anal.cw_upper_index, align 4
  %17 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp17 = icmp sgt i32 6, %17
  br i1 %cmp17, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.end
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end
  %18 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ 6, %cond.true19 ], [ %18, %cond.false20 ]
  store i32 %cond22, ptr @L3psycho_anal.cw_upper_index, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end21
  %19 = load i32, ptr %j, align 4
  %cmp23 = icmp slt i32 %19, 513
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, ptr %j, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom
  store float 0x3FD99999A0000000, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %sb, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc35, %for.end
  %22 = load i32, ptr %sb, align 4
  %cmp26 = icmp slt i32 %22, 12
  br i1 %cmp26, label %for.body28, label %for.end37

for.body28:                                       ; preds = %for.cond25
  %23 = load i32, ptr %sb, align 4
  %conv29 = sitofp i32 %23 to double
  %mul30 = fmul double 0x400921FB54442D18, %conv29
  %div31 = fdiv double %mul30, 1.200000e+01
  %24 = call double @llvm.cos.f64(double %div31)
  %sub = fsub double 1.000000e+00, %24
  %25 = call double @llvm.fmuladd.f64(double 1.250000e+00, double %sub, double -2.500000e+00)
  store double %25, ptr %mld, align 8
  %26 = load double, ptr %mld, align 8
  %27 = call double @llvm.pow.f64(double 1.000000e+01, double %26)
  %28 = load i32, ptr %sb, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %idxprom33
  store double %27, ptr %arrayidx34, align 8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body28
  %29 = load i32, ptr %sb, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, ptr %sb, align 4
  br label %for.cond25, !llvm.loop !8

for.end37:                                        ; preds = %for.cond25
  store i32 0, ptr %sb, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc50, %for.end37
  %30 = load i32, ptr %sb, align 4
  %cmp39 = icmp slt i32 %30, 21
  br i1 %cmp39, label %for.body41, label %for.end52

for.body41:                                       ; preds = %for.cond38
  %31 = load i32, ptr %sb, align 4
  %conv43 = sitofp i32 %31 to double
  %mul44 = fmul double 0x400921FB54442D18, %conv43
  %div45 = fdiv double %mul44, 2.100000e+01
  %32 = call double @llvm.cos.f64(double %div45)
  %sub46 = fsub double 1.000000e+00, %32
  %33 = call double @llvm.fmuladd.f64(double 1.250000e+00, double %sub46, double -2.500000e+00)
  store double %33, ptr %mld42, align 8
  %34 = load double, ptr %mld42, align 8
  %35 = call double @llvm.pow.f64(double 1.000000e+01, double %34)
  %36 = load i32, ptr %sb, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %idxprom48
  store double %35, ptr %arrayidx49, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.body41
  %37 = load i32, ptr %sb, align 4
  %inc51 = add nsw i32 %37, 1
  store i32 %inc51, ptr %sb, align 4
  br label %for.cond38, !llvm.loop !9

for.end52:                                        ; preds = %for.cond38
  store i32 0, ptr %i, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc59, %for.end52
  %38 = load i32, ptr %i, align 4
  %cmp54 = icmp slt i32 %38, 513
  br i1 %cmp54, label %for.body56, label %for.end61

for.body56:                                       ; preds = %for.cond53
  %39 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %idxprom57
  store i32 -1, ptr %arrayidx58, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %for.body56
  %40 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %40, 1
  store i32 %inc60, ptr %i, align 4
  br label %for.cond53, !llvm.loop !10

for.end61:                                        ; preds = %for.cond53
  %41 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate62 = getelementptr inbounds %struct.lame_global_flags, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %out_samplerate62, align 8
  %conv63 = sitofp i32 %42 to double
  %arraydecay = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 0
  call void @L3para_read(double noundef %conv63, ptr noundef @L3psycho_anal.numlines_l, ptr noundef @L3psycho_anal.numlines_s, ptr noundef @L3psycho_anal.partition_l, ptr noundef @L3psycho_anal.minval, ptr noundef @L3psycho_anal.qthr_l, ptr noundef @L3psycho_anal.s3_l, ptr noundef @L3psycho_anal.s3_s, ptr noundef @L3psycho_anal.qthr_s, ptr noundef %arraydecay, ptr noundef @L3psycho_anal.bu_l, ptr noundef @L3psycho_anal.bo_l, ptr noundef @L3psycho_anal.w1_l, ptr noundef @L3psycho_anal.w2_l, ptr noundef @L3psycho_anal.bu_s, ptr noundef @L3psycho_anal.bo_s, ptr noundef @L3psycho_anal.w1_s, ptr noundef @L3psycho_anal.w2_s)
  store i32 0, ptr @L3psycho_anal.npart_l_orig, align 4
  store i32 0, ptr @L3psycho_anal.npart_s_orig, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc76, %for.end61
  %43 = load i32, ptr %i, align 4
  %cmp65 = icmp slt i32 %43, 513
  br i1 %cmp65, label %for.body67, label %for.end78

for.body67:                                       ; preds = %for.cond64
  %44 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %44 to i64
  %arrayidx69 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %idxprom68
  %45 = load i32, ptr %arrayidx69, align 4
  %46 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp70 = icmp sgt i32 %45, %46
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %for.body67
  %47 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %47 to i64
  %arrayidx74 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %idxprom73
  %48 = load i32, ptr %arrayidx74, align 4
  store i32 %48, ptr @L3psycho_anal.npart_l_orig, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %for.body67
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %49 = load i32, ptr %i, align 4
  %inc77 = add nsw i32 %49, 1
  store i32 %inc77, ptr %i, align 4
  br label %for.cond64, !llvm.loop !11

for.end78:                                        ; preds = %for.cond64
  %50 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %inc79 = add nsw i32 %50, 1
  store i32 %inc79, ptr @L3psycho_anal.npart_l_orig, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc86, %for.end78
  %51 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %idxprom81
  %52 = load i32, ptr %arrayidx82, align 4
  %cmp83 = icmp sge i32 %52, 0
  br i1 %cmp83, label %for.body85, label %for.end88

for.body85:                                       ; preds = %for.cond80
  br label %for.inc86

for.inc86:                                        ; preds = %for.body85
  %53 = load i32, ptr %i, align 4
  %inc87 = add nsw i32 %53, 1
  store i32 %inc87, ptr %i, align 4
  br label %for.cond80, !llvm.loop !12

for.end88:                                        ; preds = %for.cond80
  %54 = load i32, ptr %i, align 4
  store i32 %54, ptr @L3psycho_anal.npart_s_orig, align 4
  %55 = load i32, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 4
  %add = add nsw i32 %55, 1
  store i32 %add, ptr @L3psycho_anal.npart_l, align 4
  %56 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4
  %add89 = add nsw i32 %56, 1
  store i32 %add89, ptr @L3psycho_anal.npart_s, align 4
  %57 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %58 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp90 = icmp sgt i32 %57, %58
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %for.end88
  %59 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  store i32 %59, ptr @L3psycho_anal.npart_l, align 4
  %60 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %sub93 = sub nsw i32 %60, 1
  store i32 %sub93, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 4
  store double 1.000000e+00, ptr getelementptr inbounds ([21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 20), align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %for.end88
  %61 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %62 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %cmp95 = icmp sgt i32 %61, %62
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end94
  %63 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  store i32 %63, ptr @L3psycho_anal.npart_s, align 4
  %64 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %sub98 = sub nsw i32 %64, 1
  store i32 %sub98, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4
  store double 1.000000e+00, ptr getelementptr inbounds ([12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 11), align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end94
  store i32 0, ptr %i, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc140, %if.end99
  %65 = load i32, ptr %i, align 4
  %66 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %cmp101 = icmp slt i32 %65, %66
  br i1 %cmp101, label %for.body103, label %for.end142

for.body103:                                      ; preds = %for.cond100
  store i32 0, ptr %j, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc116, %for.body103
  %67 = load i32, ptr %j, align 4
  %68 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp105 = icmp slt i32 %67, %68
  br i1 %cmp105, label %for.body107, label %for.end118

for.body107:                                      ; preds = %for.cond104
  %69 = load i32, ptr %i, align 4
  %idxprom108 = sext i32 %69 to i64
  %arrayidx109 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom108
  %70 = load i32, ptr %j, align 4
  %idxprom110 = sext i32 %70 to i64
  %arrayidx111 = getelementptr inbounds [64 x double], ptr %arrayidx109, i64 0, i64 %idxprom110
  %71 = load double, ptr %arrayidx111, align 8
  %cmp112 = fcmp une double %71, 0.000000e+00
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %for.body107
  br label %for.end118

if.end115:                                        ; preds = %for.body107
  br label %for.inc116

for.inc116:                                       ; preds = %if.end115
  %72 = load i32, ptr %j, align 4
  %inc117 = add nsw i32 %72, 1
  store i32 %inc117, ptr %j, align 4
  br label %for.cond104, !llvm.loop !13

for.end118:                                       ; preds = %if.then114, %for.cond104
  %73 = load i32, ptr %j, align 4
  %74 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %74 to i64
  %arrayidx120 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [2 x i32], ptr %arrayidx120, i64 0, i64 0
  store i32 %73, ptr %arrayidx121, align 4
  %75 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %sub122 = sub nsw i32 %75, 1
  store i32 %sub122, ptr %j, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc135, %for.end118
  %76 = load i32, ptr %j, align 4
  %cmp124 = icmp sgt i32 %76, 0
  br i1 %cmp124, label %for.body126, label %for.end136

for.body126:                                      ; preds = %for.cond123
  %77 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %77 to i64
  %arrayidx128 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom127
  %78 = load i32, ptr %j, align 4
  %idxprom129 = sext i32 %78 to i64
  %arrayidx130 = getelementptr inbounds [64 x double], ptr %arrayidx128, i64 0, i64 %idxprom129
  %79 = load double, ptr %arrayidx130, align 8
  %cmp131 = fcmp une double %79, 0.000000e+00
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %for.body126
  br label %for.end136

if.end134:                                        ; preds = %for.body126
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %80 = load i32, ptr %j, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond123, !llvm.loop !14

for.end136:                                       ; preds = %if.then133, %for.cond123
  %81 = load i32, ptr %j, align 4
  %82 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %82 to i64
  %arrayidx138 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [2 x i32], ptr %arrayidx138, i64 0, i64 1
  store i32 %81, ptr %arrayidx139, align 4
  br label %for.inc140

for.inc140:                                       ; preds = %for.end136
  %83 = load i32, ptr %i, align 4
  %inc141 = add nsw i32 %83, 1
  store i32 %inc141, ptr %i, align 4
  br label %for.cond100, !llvm.loop !15

for.end142:                                       ; preds = %for.cond100
  store i32 0, ptr %i, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc184, %for.end142
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp144 = icmp slt i32 %84, %85
  br i1 %cmp144, label %for.body146, label %for.end186

for.body146:                                      ; preds = %for.cond143
  store i32 0, ptr %j, align 4
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc159, %for.body146
  %86 = load i32, ptr %j, align 4
  %87 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %cmp148 = icmp slt i32 %86, %87
  br i1 %cmp148, label %for.body150, label %for.end161

for.body150:                                      ; preds = %for.cond147
  %88 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %88 to i64
  %arrayidx152 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom151
  %89 = load i32, ptr %j, align 4
  %idxprom153 = sext i32 %89 to i64
  %arrayidx154 = getelementptr inbounds [64 x double], ptr %arrayidx152, i64 0, i64 %idxprom153
  %90 = load double, ptr %arrayidx154, align 8
  %cmp155 = fcmp une double %90, 0.000000e+00
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %for.body150
  br label %for.end161

if.end158:                                        ; preds = %for.body150
  br label %for.inc159

for.inc159:                                       ; preds = %if.end158
  %91 = load i32, ptr %j, align 4
  %inc160 = add nsw i32 %91, 1
  store i32 %inc160, ptr %j, align 4
  br label %for.cond147, !llvm.loop !16

for.end161:                                       ; preds = %if.then157, %for.cond147
  %92 = load i32, ptr %j, align 4
  %93 = load i32, ptr %i, align 4
  %idxprom162 = sext i32 %93 to i64
  %arrayidx163 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [2 x i32], ptr %arrayidx163, i64 0, i64 0
  store i32 %92, ptr %arrayidx164, align 4
  %94 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %sub165 = sub nsw i32 %94, 1
  store i32 %sub165, ptr %j, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc178, %for.end161
  %95 = load i32, ptr %j, align 4
  %cmp167 = icmp sgt i32 %95, 0
  br i1 %cmp167, label %for.body169, label %for.end180

for.body169:                                      ; preds = %for.cond166
  %96 = load i32, ptr %i, align 4
  %idxprom170 = sext i32 %96 to i64
  %arrayidx171 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom170
  %97 = load i32, ptr %j, align 4
  %idxprom172 = sext i32 %97 to i64
  %arrayidx173 = getelementptr inbounds [64 x double], ptr %arrayidx171, i64 0, i64 %idxprom172
  %98 = load double, ptr %arrayidx173, align 8
  %cmp174 = fcmp une double %98, 0.000000e+00
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %for.body169
  br label %for.end180

if.end177:                                        ; preds = %for.body169
  br label %for.inc178

for.inc178:                                       ; preds = %if.end177
  %99 = load i32, ptr %j, align 4
  %dec179 = add nsw i32 %99, -1
  store i32 %dec179, ptr %j, align 4
  br label %for.cond166, !llvm.loop !17

for.end180:                                       ; preds = %if.then176, %for.cond166
  %100 = load i32, ptr %j, align 4
  %101 = load i32, ptr %i, align 4
  %idxprom181 = sext i32 %101 to i64
  %arrayidx182 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [2 x i32], ptr %arrayidx182, i64 0, i64 1
  store i32 %100, ptr %arrayidx183, align 4
  br label %for.inc184

for.inc184:                                       ; preds = %for.end180
  %102 = load i32, ptr %i, align 4
  %inc185 = add nsw i32 %102, 1
  store i32 %inc185, ptr %i, align 4
  br label %for.cond143, !llvm.loop !18

for.end186:                                       ; preds = %for.cond143
  store i32 0, ptr %b, align 4
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc228, %for.end186
  %103 = load i32, ptr %b, align 4
  %104 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %cmp188 = icmp slt i32 %103, %104
  br i1 %cmp188, label %for.body190, label %for.end230

for.body190:                                      ; preds = %for.cond187
  store double 0.000000e+00, ptr %norm, align 8
  %105 = load i32, ptr %b, align 4
  %idxprom191 = sext i32 %105 to i64
  %arrayidx192 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom191
  %arrayidx193 = getelementptr inbounds [2 x i32], ptr %arrayidx192, i64 0, i64 0
  %106 = load i32, ptr %arrayidx193, align 4
  store i32 %106, ptr %k, align 4
  br label %for.cond194

for.cond194:                                      ; preds = %for.inc206, %for.body190
  %107 = load i32, ptr %k, align 4
  %108 = load i32, ptr %b, align 4
  %idxprom195 = sext i32 %108 to i64
  %arrayidx196 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [2 x i32], ptr %arrayidx196, i64 0, i64 1
  %109 = load i32, ptr %arrayidx197, align 4
  %cmp198 = icmp sle i32 %107, %109
  br i1 %cmp198, label %for.body200, label %for.end208

for.body200:                                      ; preds = %for.cond194
  %110 = load i32, ptr %b, align 4
  %idxprom201 = sext i32 %110 to i64
  %arrayidx202 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom201
  %111 = load i32, ptr %k, align 4
  %idxprom203 = sext i32 %111 to i64
  %arrayidx204 = getelementptr inbounds [64 x double], ptr %arrayidx202, i64 0, i64 %idxprom203
  %112 = load double, ptr %arrayidx204, align 8
  %113 = load double, ptr %norm, align 8
  %add205 = fadd double %113, %112
  store double %add205, ptr %norm, align 8
  br label %for.inc206

for.inc206:                                       ; preds = %for.body200
  %114 = load i32, ptr %k, align 4
  %inc207 = add nsw i32 %114, 1
  store i32 %inc207, ptr %k, align 4
  br label %for.cond194, !llvm.loop !19

for.end208:                                       ; preds = %for.cond194
  %115 = load i32, ptr %b, align 4
  %idxprom209 = sext i32 %115 to i64
  %arrayidx210 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom209
  %arrayidx211 = getelementptr inbounds [2 x i32], ptr %arrayidx210, i64 0, i64 0
  %116 = load i32, ptr %arrayidx211, align 4
  store i32 %116, ptr %k, align 4
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc225, %for.end208
  %117 = load i32, ptr %k, align 4
  %118 = load i32, ptr %b, align 4
  %idxprom213 = sext i32 %118 to i64
  %arrayidx214 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom213
  %arrayidx215 = getelementptr inbounds [2 x i32], ptr %arrayidx214, i64 0, i64 1
  %119 = load i32, ptr %arrayidx215, align 4
  %cmp216 = icmp sle i32 %117, %119
  br i1 %cmp216, label %for.body218, label %for.end227

for.body218:                                      ; preds = %for.cond212
  %120 = call double @llvm.exp.f64(double 0xBFF61AD547A6661A)
  %121 = load double, ptr %norm, align 8
  %div219 = fdiv double %120, %121
  %122 = load i32, ptr %b, align 4
  %idxprom220 = sext i32 %122 to i64
  %arrayidx221 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom220
  %123 = load i32, ptr %k, align 4
  %idxprom222 = sext i32 %123 to i64
  %arrayidx223 = getelementptr inbounds [64 x double], ptr %arrayidx221, i64 0, i64 %idxprom222
  %124 = load double, ptr %arrayidx223, align 8
  %mul224 = fmul double %124, %div219
  store double %mul224, ptr %arrayidx223, align 8
  br label %for.inc225

for.inc225:                                       ; preds = %for.body218
  %125 = load i32, ptr %k, align 4
  %inc226 = add nsw i32 %125, 1
  store i32 %inc226, ptr %k, align 4
  br label %for.cond212, !llvm.loop !20

for.end227:                                       ; preds = %for.cond212
  br label %for.inc228

for.inc228:                                       ; preds = %for.end227
  %126 = load i32, ptr %b, align 4
  %inc229 = add nsw i32 %126, 1
  store i32 %inc229, ptr %b, align 4
  br label %for.cond187, !llvm.loop !21

for.end230:                                       ; preds = %for.cond187
  %127 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %127, i32 0, i32 43
  %128 = load i32, ptr %version, align 8
  %cmp231 = icmp eq i32 %128, 1
  br i1 %cmp231, label %if.then233, label %if.end246

if.then233:                                       ; preds = %for.end230
  store i32 0, ptr %b, align 4
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc243, %if.then233
  %129 = load i32, ptr %b, align 4
  %130 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp235 = icmp slt i32 %129, %130
  br i1 %cmp235, label %for.body237, label %for.end245

for.body237:                                      ; preds = %for.cond234
  %131 = load i32, ptr %b, align 4
  %idxprom238 = sext i32 %131 to i64
  %arrayidx239 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %idxprom238
  %132 = load double, ptr %arrayidx239, align 8
  %mul240 = fmul double %132, 0x3FCD791C5F888823
  %133 = call double @llvm.exp.f64(double %mul240)
  %134 = load i32, ptr %b, align 4
  %idxprom241 = sext i32 %134 to i64
  %arrayidx242 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %idxprom241
  store double %133, ptr %arrayidx242, align 8
  br label %for.inc243

for.inc243:                                       ; preds = %for.body237
  %135 = load i32, ptr %b, align 4
  %inc244 = add nsw i32 %135, 1
  store i32 %inc244, ptr %b, align 4
  br label %for.cond234, !llvm.loop !22

for.end245:                                       ; preds = %for.cond234
  br label %if.end246

if.end246:                                        ; preds = %for.end245, %for.end230
  store i32 0, ptr %b, align 4
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc291, %if.end246
  %136 = load i32, ptr %b, align 4
  %137 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp248 = icmp slt i32 %136, %137
  br i1 %cmp248, label %for.body250, label %for.end293

for.body250:                                      ; preds = %for.cond247
  store double 0.000000e+00, ptr %norm251, align 8
  %138 = load i32, ptr %b, align 4
  %idxprom252 = sext i32 %138 to i64
  %arrayidx253 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom252
  %arrayidx254 = getelementptr inbounds [2 x i32], ptr %arrayidx253, i64 0, i64 0
  %139 = load i32, ptr %arrayidx254, align 4
  store i32 %139, ptr %k, align 4
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc267, %for.body250
  %140 = load i32, ptr %k, align 4
  %141 = load i32, ptr %b, align 4
  %idxprom256 = sext i32 %141 to i64
  %arrayidx257 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [2 x i32], ptr %arrayidx257, i64 0, i64 1
  %142 = load i32, ptr %arrayidx258, align 4
  %cmp259 = icmp sle i32 %140, %142
  br i1 %cmp259, label %for.body261, label %for.end269

for.body261:                                      ; preds = %for.cond255
  %143 = load i32, ptr %b, align 4
  %idxprom262 = sext i32 %143 to i64
  %arrayidx263 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom262
  %144 = load i32, ptr %k, align 4
  %idxprom264 = sext i32 %144 to i64
  %arrayidx265 = getelementptr inbounds [64 x double], ptr %arrayidx263, i64 0, i64 %idxprom264
  %145 = load double, ptr %arrayidx265, align 8
  %146 = load double, ptr %norm251, align 8
  %add266 = fadd double %146, %145
  store double %add266, ptr %norm251, align 8
  br label %for.inc267

for.inc267:                                       ; preds = %for.body261
  %147 = load i32, ptr %k, align 4
  %inc268 = add nsw i32 %147, 1
  store i32 %inc268, ptr %k, align 4
  br label %for.cond255, !llvm.loop !23

for.end269:                                       ; preds = %for.cond255
  %148 = load i32, ptr %b, align 4
  %idxprom270 = sext i32 %148 to i64
  %arrayidx271 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom270
  %arrayidx272 = getelementptr inbounds [2 x i32], ptr %arrayidx271, i64 0, i64 0
  %149 = load i32, ptr %arrayidx272, align 4
  store i32 %149, ptr %k, align 4
  br label %for.cond273

for.cond273:                                      ; preds = %for.inc288, %for.end269
  %150 = load i32, ptr %k, align 4
  %151 = load i32, ptr %b, align 4
  %idxprom274 = sext i32 %151 to i64
  %arrayidx275 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom274
  %arrayidx276 = getelementptr inbounds [2 x i32], ptr %arrayidx275, i64 0, i64 1
  %152 = load i32, ptr %arrayidx276, align 4
  %cmp277 = icmp sle i32 %150, %152
  br i1 %cmp277, label %for.body279, label %for.end290

for.body279:                                      ; preds = %for.cond273
  %153 = load i32, ptr %b, align 4
  %idxprom280 = sext i32 %153 to i64
  %arrayidx281 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %idxprom280
  %154 = load double, ptr %arrayidx281, align 8
  %155 = load double, ptr %norm251, align 8
  %div282 = fdiv double %154, %155
  %156 = load i32, ptr %b, align 4
  %idxprom283 = sext i32 %156 to i64
  %arrayidx284 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom283
  %157 = load i32, ptr %k, align 4
  %idxprom285 = sext i32 %157 to i64
  %arrayidx286 = getelementptr inbounds [64 x double], ptr %arrayidx284, i64 0, i64 %idxprom285
  %158 = load double, ptr %arrayidx286, align 8
  %mul287 = fmul double %158, %div282
  store double %mul287, ptr %arrayidx286, align 8
  br label %for.inc288

for.inc288:                                       ; preds = %for.body279
  %159 = load i32, ptr %k, align 4
  %inc289 = add nsw i32 %159, 1
  store i32 %inc289, ptr %k, align 4
  br label %for.cond273, !llvm.loop !24

for.end290:                                       ; preds = %for.cond273
  br label %for.inc291

for.inc291:                                       ; preds = %for.end290
  %160 = load i32, ptr %b, align 4
  %inc292 = add nsw i32 %160, 1
  store i32 %inc292, ptr %b, align 4
  br label %for.cond247, !llvm.loop !25

for.end293:                                       ; preds = %for.cond247
  call void @init_fft()
  br label %if.end294

if.end294:                                        ; preds = %for.end293, %land.lhs.true, %entry
  %161 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %161, i32 0, i32 46
  %162 = load i32, ptr %stereo, align 4
  store i32 %162, ptr %numchn, align 4
  %163 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %163, i32 0, i32 8
  %164 = load i32, ptr %mode, align 4
  %cmp295 = icmp eq i32 %164, 1
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.end294
  store i32 4, ptr %numchn, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %if.end294
  store i32 0, ptr %chn, align 4
  br label %for.cond299

for.cond299:                                      ; preds = %for.inc1270, %if.end298
  %165 = load i32, ptr %chn, align 4
  %166 = load i32, ptr %numchn, align 4
  %cmp300 = icmp slt i32 %165, %166
  br i1 %cmp300, label %for.body302, label %for.end1272

for.body302:                                      ; preds = %for.cond299
  %167 = load i32, ptr %chn, align 4
  %and = and i32 %167, 1
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %idx.ext
  store ptr %add.ptr, ptr %wsamp_s, align 8
  %168 = load i32, ptr %chn, align 4
  %and303 = and i32 %168, 1
  %idx.ext304 = sext i32 %and303 to i64
  %add.ptr305 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %idx.ext304
  store ptr %add.ptr305, ptr %wsamp_l, align 8
  %169 = load i32, ptr %chn, align 4
  %cmp306 = icmp slt i32 %169, 2
  br i1 %cmp306, label %if.then308, label %if.else327

if.then308:                                       ; preds = %for.body302
  %170 = load ptr, ptr %wsamp_l, align 8
  %arraydecay309 = getelementptr inbounds [1024 x float], ptr %170, i64 0, i64 0
  %171 = load i32, ptr %chn, align 4
  %172 = load ptr, ptr %buffer.addr, align 8
  call void @fft_long(ptr noundef %arraydecay309, i32 noundef %171, ptr noundef %172)
  %173 = load ptr, ptr %wsamp_s, align 8
  %arraydecay310 = getelementptr inbounds [3 x [256 x float]], ptr %173, i64 0, i64 0
  %174 = load i32, ptr %chn, align 4
  %175 = load ptr, ptr %buffer.addr, align 8
  call void @fft_short(ptr noundef %arraydecay310, i32 noundef %174, ptr noundef %175)
  %176 = load i32, ptr %chn, align 4
  %idxprom311 = sext i32 %176 to i64
  %arrayidx312 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom311
  %177 = load double, ptr %arrayidx312, align 8
  %178 = load ptr, ptr %percep_entropy.addr, align 8
  %179 = load i32, ptr %chn, align 4
  %idxprom313 = sext i32 %179 to i64
  %arrayidx314 = getelementptr inbounds double, ptr %178, i64 %idxprom313
  store double %177, ptr %arrayidx314, align 8
  %180 = load ptr, ptr %masking_ratio.addr, align 8
  %181 = load i32, ptr %gr_out.addr, align 4
  %idxprom315 = sext i32 %181 to i64
  %arrayidx316 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %180, i64 %idxprom315
  %182 = load i32, ptr %chn, align 4
  %idxprom317 = sext i32 %182 to i64
  %arrayidx318 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx316, i64 0, i64 %idxprom317
  %thm = getelementptr inbounds %struct.III_psy_ratio, ptr %arrayidx318, i32 0, i32 0
  %183 = load i32, ptr %chn, align 4
  %idxprom319 = sext i32 %183 to i64
  %arrayidx320 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom319
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %thm, ptr align 8 %arrayidx320, i64 488, i1 false)
  %184 = load ptr, ptr %masking_ratio.addr, align 8
  %185 = load i32, ptr %gr_out.addr, align 4
  %idxprom321 = sext i32 %185 to i64
  %arrayidx322 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %184, i64 %idxprom321
  %186 = load i32, ptr %chn, align 4
  %idxprom323 = sext i32 %186 to i64
  %arrayidx324 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx322, i64 0, i64 %idxprom323
  %en = getelementptr inbounds %struct.III_psy_ratio, ptr %arrayidx324, i32 0, i32 1
  %187 = load i32, ptr %chn, align 4
  %idxprom325 = sext i32 %187 to i64
  %arrayidx326 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom325
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %en, ptr align 8 %arrayidx326, i64 488, i1 false)
  br label %if.end408

if.else327:                                       ; preds = %for.body302
  %188 = load i32, ptr %chn, align 4
  %idxprom328 = sext i32 %188 to i64
  %arrayidx329 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom328
  %189 = load double, ptr %arrayidx329, align 8
  %190 = load ptr, ptr %percep_MS_entropy.addr, align 8
  %191 = load i32, ptr %chn, align 4
  %sub330 = sub nsw i32 %191, 2
  %idxprom331 = sext i32 %sub330 to i64
  %arrayidx332 = getelementptr inbounds double, ptr %190, i64 %idxprom331
  store double %189, ptr %arrayidx332, align 8
  %192 = load ptr, ptr %masking_MS_ratio.addr, align 8
  %193 = load i32, ptr %gr_out.addr, align 4
  %idxprom333 = sext i32 %193 to i64
  %arrayidx334 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %192, i64 %idxprom333
  %194 = load i32, ptr %chn, align 4
  %sub335 = sub nsw i32 %194, 2
  %idxprom336 = sext i32 %sub335 to i64
  %arrayidx337 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx334, i64 0, i64 %idxprom336
  %en338 = getelementptr inbounds %struct.III_psy_ratio, ptr %arrayidx337, i32 0, i32 1
  %195 = load i32, ptr %chn, align 4
  %idxprom339 = sext i32 %195 to i64
  %arrayidx340 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom339
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %en338, ptr align 8 %arrayidx340, i64 488, i1 false)
  %196 = load ptr, ptr %masking_MS_ratio.addr, align 8
  %197 = load i32, ptr %gr_out.addr, align 4
  %idxprom341 = sext i32 %197 to i64
  %arrayidx342 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %196, i64 %idxprom341
  %198 = load i32, ptr %chn, align 4
  %sub343 = sub nsw i32 %198, 2
  %idxprom344 = sext i32 %sub343 to i64
  %arrayidx345 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx342, i64 0, i64 %idxprom344
  %thm346 = getelementptr inbounds %struct.III_psy_ratio, ptr %arrayidx345, i32 0, i32 0
  %199 = load i32, ptr %chn, align 4
  %idxprom347 = sext i32 %199 to i64
  %arrayidx348 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom347
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %thm346, ptr align 8 %arrayidx348, i64 488, i1 false)
  %200 = load i32, ptr %chn, align 4
  %cmp349 = icmp eq i32 %200, 2
  br i1 %cmp349, label %if.then351, label %if.end407

if.then351:                                       ; preds = %if.else327
  store i32 1023, ptr %j, align 4
  br label %for.cond352

for.cond352:                                      ; preds = %for.inc368, %if.then351
  %201 = load i32, ptr %j, align 4
  %cmp353 = icmp sge i32 %201, 0
  br i1 %cmp353, label %for.body355, label %for.end370

for.body355:                                      ; preds = %for.cond352
  %202 = load i32, ptr %j, align 4
  %idxprom356 = sext i32 %202 to i64
  %arrayidx357 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 0, i64 %idxprom356
  %203 = load float, ptr %arrayidx357, align 4
  store float %203, ptr %l, align 4
  %204 = load i32, ptr %j, align 4
  %idxprom358 = sext i32 %204 to i64
  %arrayidx359 = getelementptr inbounds [1024 x float], ptr getelementptr inbounds ([2 x [1024 x float]], ptr @L3psycho_anal.wsamp_L, i64 0, i64 1), i64 0, i64 %idxprom358
  %205 = load float, ptr %arrayidx359, align 4
  store float %205, ptr %r, align 4
  %206 = load float, ptr %l, align 4
  %207 = load float, ptr %r, align 4
  %add360 = fadd float %206, %207
  %mul361 = fmul float %add360, 0x3FE6A09E60000000
  %208 = load i32, ptr %j, align 4
  %idxprom362 = sext i32 %208 to i64
  %arrayidx363 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 0, i64 %idxprom362
  store float %mul361, ptr %arrayidx363, align 4
  %209 = load float, ptr %l, align 4
  %210 = load float, ptr %r, align 4
  %sub364 = fsub float %209, %210
  %mul365 = fmul float %sub364, 0x3FE6A09E60000000
  %211 = load i32, ptr %j, align 4
  %idxprom366 = sext i32 %211 to i64
  %arrayidx367 = getelementptr inbounds [1024 x float], ptr getelementptr inbounds ([2 x [1024 x float]], ptr @L3psycho_anal.wsamp_L, i64 0, i64 1), i64 0, i64 %idxprom366
  store float %mul365, ptr %arrayidx367, align 4
  br label %for.inc368

for.inc368:                                       ; preds = %for.body355
  %212 = load i32, ptr %j, align 4
  %dec369 = add nsw i32 %212, -1
  store i32 %dec369, ptr %j, align 4
  br label %for.cond352, !llvm.loop !26

for.end370:                                       ; preds = %for.cond352
  store i32 2, ptr %b, align 4
  br label %for.cond371

for.cond371:                                      ; preds = %for.inc404, %for.end370
  %213 = load i32, ptr %b, align 4
  %cmp372 = icmp sge i32 %213, 0
  br i1 %cmp372, label %for.body374, label %for.end406

for.body374:                                      ; preds = %for.cond371
  store i32 255, ptr %j, align 4
  br label %for.cond375

for.cond375:                                      ; preds = %for.inc401, %for.body374
  %214 = load i32, ptr %j, align 4
  %cmp376 = icmp sge i32 %214, 0
  br i1 %cmp376, label %for.body378, label %for.end403

for.body378:                                      ; preds = %for.cond375
  %215 = load i32, ptr %b, align 4
  %idxprom380 = sext i32 %215 to i64
  %arrayidx381 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 %idxprom380
  %216 = load i32, ptr %j, align 4
  %idxprom382 = sext i32 %216 to i64
  %arrayidx383 = getelementptr inbounds [256 x float], ptr %arrayidx381, i64 0, i64 %idxprom382
  %217 = load float, ptr %arrayidx383, align 4
  store float %217, ptr %l379, align 4
  %218 = load i32, ptr %b, align 4
  %idxprom385 = sext i32 %218 to i64
  %arrayidx386 = getelementptr inbounds [3 x [256 x float]], ptr getelementptr inbounds ([2 x [3 x [256 x float]]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 1), i64 0, i64 %idxprom385
  %219 = load i32, ptr %j, align 4
  %idxprom387 = sext i32 %219 to i64
  %arrayidx388 = getelementptr inbounds [256 x float], ptr %arrayidx386, i64 0, i64 %idxprom387
  %220 = load float, ptr %arrayidx388, align 4
  store float %220, ptr %r384, align 4
  %221 = load float, ptr %l379, align 4
  %222 = load float, ptr %r384, align 4
  %add389 = fadd float %221, %222
  %mul390 = fmul float %add389, 0x3FE6A09E60000000
  %223 = load i32, ptr %b, align 4
  %idxprom391 = sext i32 %223 to i64
  %arrayidx392 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 %idxprom391
  %224 = load i32, ptr %j, align 4
  %idxprom393 = sext i32 %224 to i64
  %arrayidx394 = getelementptr inbounds [256 x float], ptr %arrayidx392, i64 0, i64 %idxprom393
  store float %mul390, ptr %arrayidx394, align 4
  %225 = load float, ptr %l379, align 4
  %226 = load float, ptr %r384, align 4
  %sub395 = fsub float %225, %226
  %mul396 = fmul float %sub395, 0x3FE6A09E60000000
  %227 = load i32, ptr %b, align 4
  %idxprom397 = sext i32 %227 to i64
  %arrayidx398 = getelementptr inbounds [3 x [256 x float]], ptr getelementptr inbounds ([2 x [3 x [256 x float]]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 1), i64 0, i64 %idxprom397
  %228 = load i32, ptr %j, align 4
  %idxprom399 = sext i32 %228 to i64
  %arrayidx400 = getelementptr inbounds [256 x float], ptr %arrayidx398, i64 0, i64 %idxprom399
  store float %mul396, ptr %arrayidx400, align 4
  br label %for.inc401

for.inc401:                                       ; preds = %for.body378
  %229 = load i32, ptr %j, align 4
  %dec402 = add nsw i32 %229, -1
  store i32 %dec402, ptr %j, align 4
  br label %for.cond375, !llvm.loop !27

for.end403:                                       ; preds = %for.cond375
  br label %for.inc404

for.inc404:                                       ; preds = %for.end403
  %230 = load i32, ptr %b, align 4
  %dec405 = add nsw i32 %230, -1
  store i32 %dec405, ptr %b, align 4
  br label %for.cond371, !llvm.loop !28

for.end406:                                       ; preds = %for.cond371
  br label %if.end407

if.end407:                                        ; preds = %for.end406, %if.else327
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.then308
  %231 = load ptr, ptr %wsamp_l, align 8
  %arrayidx409 = getelementptr inbounds [1024 x float], ptr %231, i64 0, i64 0
  %232 = load float, ptr %arrayidx409, align 4
  store float %232, ptr @L3psycho_anal.energy, align 4
  %233 = load float, ptr @L3psycho_anal.energy, align 4
  %234 = load float, ptr @L3psycho_anal.energy, align 4
  %mul410 = fmul float %234, %233
  store float %mul410, ptr @L3psycho_anal.energy, align 4
  %235 = load float, ptr @L3psycho_anal.energy, align 4
  %236 = load i32, ptr %chn, align 4
  %idxprom411 = sext i32 %236 to i64
  %arrayidx412 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 %idxprom411
  store float %235, ptr %arrayidx412, align 4
  store i32 511, ptr %j, align 4
  br label %for.cond413

for.cond413:                                      ; preds = %for.inc435, %if.end408
  %237 = load i32, ptr %j, align 4
  %cmp414 = icmp sge i32 %237, 0
  br i1 %cmp414, label %for.body416, label %for.end437

for.body416:                                      ; preds = %for.cond413
  %238 = load ptr, ptr %wsamp_l, align 8
  %239 = load i32, ptr %j, align 4
  %sub417 = sub nsw i32 512, %239
  %idxprom418 = sext i32 %sub417 to i64
  %arrayidx419 = getelementptr inbounds [1024 x float], ptr %238, i64 0, i64 %idxprom418
  %240 = load float, ptr %arrayidx419, align 4
  store float %240, ptr %re, align 4
  %241 = load ptr, ptr %wsamp_l, align 8
  %242 = load i32, ptr %j, align 4
  %add420 = add nsw i32 512, %242
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds [1024 x float], ptr %241, i64 0, i64 %idxprom421
  %243 = load float, ptr %arrayidx422, align 4
  store float %243, ptr %im, align 4
  %244 = load float, ptr %re, align 4
  %245 = load float, ptr %re, align 4
  %246 = load float, ptr %im, align 4
  %247 = load float, ptr %im, align 4
  %mul424 = fmul float %246, %247
  %248 = call float @llvm.fmuladd.f32(float %244, float %245, float %mul424)
  %mul425 = fmul float %248, 5.000000e-01
  %249 = load i32, ptr %j, align 4
  %sub426 = sub nsw i32 512, %249
  %idxprom427 = sext i32 %sub426 to i64
  %arrayidx428 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom427
  store float %mul425, ptr %arrayidx428, align 4
  %250 = load i32, ptr %j, align 4
  %sub429 = sub nsw i32 512, %250
  %idxprom430 = sext i32 %sub429 to i64
  %arrayidx431 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom430
  %251 = load float, ptr %arrayidx431, align 4
  %252 = load i32, ptr %chn, align 4
  %idxprom432 = sext i32 %252 to i64
  %arrayidx433 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 %idxprom432
  %253 = load float, ptr %arrayidx433, align 4
  %add434 = fadd float %253, %251
  store float %add434, ptr %arrayidx433, align 4
  br label %for.inc435

for.inc435:                                       ; preds = %for.body416
  %254 = load i32, ptr %j, align 4
  %dec436 = add nsw i32 %254, -1
  store i32 %dec436, ptr %j, align 4
  br label %for.cond413, !llvm.loop !29

for.end437:                                       ; preds = %for.cond413
  store i32 2, ptr %b, align 4
  br label %for.cond438

for.cond438:                                      ; preds = %for.inc482, %for.end437
  %255 = load i32, ptr %b, align 4
  %cmp439 = icmp sge i32 %255, 0
  br i1 %cmp439, label %for.body441, label %for.end484

for.body441:                                      ; preds = %for.cond438
  %256 = load ptr, ptr %wsamp_s, align 8
  %257 = load i32, ptr %b, align 4
  %idxprom442 = sext i32 %257 to i64
  %arrayidx443 = getelementptr inbounds [3 x [256 x float]], ptr %256, i64 0, i64 %idxprom442
  %arrayidx444 = getelementptr inbounds [256 x float], ptr %arrayidx443, i64 0, i64 0
  %258 = load float, ptr %arrayidx444, align 4
  %259 = load i32, ptr %b, align 4
  %idxprom445 = sext i32 %259 to i64
  %arrayidx446 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom445
  %arrayidx447 = getelementptr inbounds [129 x float], ptr %arrayidx446, i64 0, i64 0
  store float %258, ptr %arrayidx447, align 4
  %260 = load i32, ptr %b, align 4
  %idxprom448 = sext i32 %260 to i64
  %arrayidx449 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom448
  %arrayidx450 = getelementptr inbounds [129 x float], ptr %arrayidx449, i64 0, i64 0
  %261 = load float, ptr %arrayidx450, align 4
  %262 = load i32, ptr %b, align 4
  %idxprom451 = sext i32 %262 to i64
  %arrayidx452 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom451
  %arrayidx453 = getelementptr inbounds [129 x float], ptr %arrayidx452, i64 0, i64 0
  %263 = load float, ptr %arrayidx453, align 4
  %mul454 = fmul float %263, %261
  store float %mul454, ptr %arrayidx453, align 4
  store i32 127, ptr %j, align 4
  br label %for.cond455

for.cond455:                                      ; preds = %for.inc479, %for.body441
  %264 = load i32, ptr %j, align 4
  %cmp456 = icmp sge i32 %264, 0
  br i1 %cmp456, label %for.body458, label %for.end481

for.body458:                                      ; preds = %for.cond455
  %265 = load ptr, ptr %wsamp_s, align 8
  %266 = load i32, ptr %b, align 4
  %idxprom460 = sext i32 %266 to i64
  %arrayidx461 = getelementptr inbounds [3 x [256 x float]], ptr %265, i64 0, i64 %idxprom460
  %267 = load i32, ptr %j, align 4
  %sub462 = sub nsw i32 128, %267
  %idxprom463 = sext i32 %sub462 to i64
  %arrayidx464 = getelementptr inbounds [256 x float], ptr %arrayidx461, i64 0, i64 %idxprom463
  %268 = load float, ptr %arrayidx464, align 4
  store float %268, ptr %re459, align 4
  %269 = load ptr, ptr %wsamp_s, align 8
  %270 = load i32, ptr %b, align 4
  %idxprom466 = sext i32 %270 to i64
  %arrayidx467 = getelementptr inbounds [3 x [256 x float]], ptr %269, i64 0, i64 %idxprom466
  %271 = load i32, ptr %j, align 4
  %add468 = add nsw i32 128, %271
  %idxprom469 = sext i32 %add468 to i64
  %arrayidx470 = getelementptr inbounds [256 x float], ptr %arrayidx467, i64 0, i64 %idxprom469
  %272 = load float, ptr %arrayidx470, align 4
  store float %272, ptr %im465, align 4
  %273 = load float, ptr %re459, align 4
  %274 = load float, ptr %re459, align 4
  %275 = load float, ptr %im465, align 4
  %276 = load float, ptr %im465, align 4
  %mul472 = fmul float %275, %276
  %277 = call float @llvm.fmuladd.f32(float %273, float %274, float %mul472)
  %mul473 = fmul float %277, 5.000000e-01
  %278 = load i32, ptr %b, align 4
  %idxprom474 = sext i32 %278 to i64
  %arrayidx475 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom474
  %279 = load i32, ptr %j, align 4
  %sub476 = sub nsw i32 128, %279
  %idxprom477 = sext i32 %sub476 to i64
  %arrayidx478 = getelementptr inbounds [129 x float], ptr %arrayidx475, i64 0, i64 %idxprom477
  store float %mul473, ptr %arrayidx478, align 4
  br label %for.inc479

for.inc479:                                       ; preds = %for.body458
  %280 = load i32, ptr %j, align 4
  %dec480 = add nsw i32 %280, -1
  store i32 %dec480, ptr %j, align 4
  br label %for.cond455, !llvm.loop !30

for.end481:                                       ; preds = %for.cond455
  br label %for.inc482

for.inc482:                                       ; preds = %for.end481
  %281 = load i32, ptr %b, align 4
  %dec483 = add nsw i32 %281, -1
  store i32 %dec483, ptr %b, align 4
  br label %for.cond438, !llvm.loop !31

for.end484:                                       ; preds = %for.cond438
  store i32 0, ptr %j, align 4
  br label %for.cond485

for.cond485:                                      ; preds = %for.inc617, %for.end484
  %282 = load i32, ptr %j, align 4
  %283 = load i32, ptr @L3psycho_anal.cw_lower_index, align 4
  %cmp486 = icmp slt i32 %282, %283
  br i1 %cmp486, label %for.body488, label %for.end619

for.body488:                                      ; preds = %for.cond485
  %284 = load i32, ptr %chn, align 4
  %idxprom489 = sext i32 %284 to i64
  %arrayidx490 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom489
  %arrayidx491 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx490, i64 0, i64 1
  %285 = load i32, ptr %j, align 4
  %idxprom492 = sext i32 %285 to i64
  %arrayidx493 = getelementptr inbounds [513 x float], ptr %arrayidx491, i64 0, i64 %idxprom492
  %286 = load float, ptr %arrayidx493, align 4
  store float %286, ptr %a2, align 4
  %287 = load i32, ptr %chn, align 4
  %idxprom494 = sext i32 %287 to i64
  %arrayidx495 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom494
  %arrayidx496 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx495, i64 0, i64 1
  %288 = load i32, ptr %j, align 4
  %idxprom497 = sext i32 %288 to i64
  %arrayidx498 = getelementptr inbounds [513 x float], ptr %arrayidx496, i64 0, i64 %idxprom497
  %289 = load float, ptr %arrayidx498, align 4
  store float %289, ptr %b2, align 4
  %290 = load i32, ptr %chn, align 4
  %idxprom499 = sext i32 %290 to i64
  %arrayidx500 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom499
  %arrayidx501 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx500, i64 0, i64 1
  %291 = load i32, ptr %j, align 4
  %idxprom502 = sext i32 %291 to i64
  %arrayidx503 = getelementptr inbounds [513 x float], ptr %arrayidx501, i64 0, i64 %idxprom502
  %292 = load float, ptr %arrayidx503, align 4
  store float %292, ptr %r2, align 4
  %293 = load i32, ptr %chn, align 4
  %idxprom504 = sext i32 %293 to i64
  %arrayidx505 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom504
  %arrayidx506 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx505, i64 0, i64 0
  %294 = load i32, ptr %j, align 4
  %idxprom507 = sext i32 %294 to i64
  %arrayidx508 = getelementptr inbounds [513 x float], ptr %arrayidx506, i64 0, i64 %idxprom507
  %295 = load float, ptr %arrayidx508, align 4
  %296 = load i32, ptr %chn, align 4
  %idxprom509 = sext i32 %296 to i64
  %arrayidx510 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom509
  %arrayidx511 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx510, i64 0, i64 1
  %297 = load i32, ptr %j, align 4
  %idxprom512 = sext i32 %297 to i64
  %arrayidx513 = getelementptr inbounds [513 x float], ptr %arrayidx511, i64 0, i64 %idxprom512
  store float %295, ptr %arrayidx513, align 4
  store float %295, ptr %a1, align 4
  %298 = load i32, ptr %chn, align 4
  %idxprom514 = sext i32 %298 to i64
  %arrayidx515 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom514
  %arrayidx516 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx515, i64 0, i64 0
  %299 = load i32, ptr %j, align 4
  %idxprom517 = sext i32 %299 to i64
  %arrayidx518 = getelementptr inbounds [513 x float], ptr %arrayidx516, i64 0, i64 %idxprom517
  %300 = load float, ptr %arrayidx518, align 4
  %301 = load i32, ptr %chn, align 4
  %idxprom519 = sext i32 %301 to i64
  %arrayidx520 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom519
  %arrayidx521 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx520, i64 0, i64 1
  %302 = load i32, ptr %j, align 4
  %idxprom522 = sext i32 %302 to i64
  %arrayidx523 = getelementptr inbounds [513 x float], ptr %arrayidx521, i64 0, i64 %idxprom522
  store float %300, ptr %arrayidx523, align 4
  store float %300, ptr %b1, align 4
  %303 = load i32, ptr %chn, align 4
  %idxprom524 = sext i32 %303 to i64
  %arrayidx525 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom524
  %arrayidx526 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx525, i64 0, i64 0
  %304 = load i32, ptr %j, align 4
  %idxprom527 = sext i32 %304 to i64
  %arrayidx528 = getelementptr inbounds [513 x float], ptr %arrayidx526, i64 0, i64 %idxprom527
  %305 = load float, ptr %arrayidx528, align 4
  %306 = load i32, ptr %chn, align 4
  %idxprom529 = sext i32 %306 to i64
  %arrayidx530 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom529
  %arrayidx531 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx530, i64 0, i64 1
  %307 = load i32, ptr %j, align 4
  %idxprom532 = sext i32 %307 to i64
  %arrayidx533 = getelementptr inbounds [513 x float], ptr %arrayidx531, i64 0, i64 %idxprom532
  store float %305, ptr %arrayidx533, align 4
  store float %305, ptr %r1, align 4
  %308 = load ptr, ptr %wsamp_l, align 8
  %309 = load i32, ptr %j, align 4
  %idxprom534 = sext i32 %309 to i64
  %arrayidx535 = getelementptr inbounds [1024 x float], ptr %308, i64 0, i64 %idxprom534
  %310 = load float, ptr %arrayidx535, align 4
  %311 = load i32, ptr %chn, align 4
  %idxprom536 = sext i32 %311 to i64
  %arrayidx537 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %idxprom536
  %arrayidx538 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx537, i64 0, i64 0
  %312 = load i32, ptr %j, align 4
  %idxprom539 = sext i32 %312 to i64
  %arrayidx540 = getelementptr inbounds [513 x float], ptr %arrayidx538, i64 0, i64 %idxprom539
  store float %310, ptr %arrayidx540, align 4
  store float %310, ptr %an, align 4
  %313 = load i32, ptr %j, align 4
  %cmp541 = icmp eq i32 %313, 0
  br i1 %cmp541, label %cond.true543, label %cond.false545

cond.true543:                                     ; preds = %for.body488
  %314 = load ptr, ptr %wsamp_l, align 8
  %arrayidx544 = getelementptr inbounds [1024 x float], ptr %314, i64 0, i64 0
  %315 = load float, ptr %arrayidx544, align 4
  br label %cond.end549

cond.false545:                                    ; preds = %for.body488
  %316 = load ptr, ptr %wsamp_l, align 8
  %317 = load i32, ptr %j, align 4
  %sub546 = sub nsw i32 1024, %317
  %idxprom547 = sext i32 %sub546 to i64
  %arrayidx548 = getelementptr inbounds [1024 x float], ptr %316, i64 0, i64 %idxprom547
  %318 = load float, ptr %arrayidx548, align 4
  br label %cond.end549

cond.end549:                                      ; preds = %cond.false545, %cond.true543
  %cond550 = phi float [ %315, %cond.true543 ], [ %318, %cond.false545 ]
  %319 = load i32, ptr %chn, align 4
  %idxprom551 = sext i32 %319 to i64
  %arrayidx552 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %idxprom551
  %arrayidx553 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx552, i64 0, i64 0
  %320 = load i32, ptr %j, align 4
  %idxprom554 = sext i32 %320 to i64
  %arrayidx555 = getelementptr inbounds [513 x float], ptr %arrayidx553, i64 0, i64 %idxprom554
  store float %cond550, ptr %arrayidx555, align 4
  store float %cond550, ptr %bn, align 4
  %321 = load i32, ptr %j, align 4
  %idxprom556 = sext i32 %321 to i64
  %arrayidx557 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom556
  %322 = load float, ptr %arrayidx557, align 4
  %conv558 = fpext float %322 to double
  %323 = call double @llvm.sqrt.f64(double %conv558)
  %conv559 = fptrunc double %323 to float
  %324 = load i32, ptr %chn, align 4
  %idxprom560 = sext i32 %324 to i64
  %arrayidx561 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %idxprom560
  %arrayidx562 = getelementptr inbounds [2 x [513 x float]], ptr %arrayidx561, i64 0, i64 0
  %325 = load i32, ptr %j, align 4
  %idxprom563 = sext i32 %325 to i64
  %arrayidx564 = getelementptr inbounds [513 x float], ptr %arrayidx562, i64 0, i64 %idxprom563
  store float %conv559, ptr %arrayidx564, align 4
  store float %conv559, ptr %rn, align 4
  %326 = load float, ptr %r1, align 4
  %cmp565 = fcmp une float %326, 0.000000e+00
  br i1 %cmp565, label %if.then567, label %if.else573

if.then567:                                       ; preds = %cond.end549
  %327 = load float, ptr %a1, align 4
  %328 = load float, ptr %b1, align 4
  %mul568 = fmul float %327, %328
  store float %mul568, ptr %numre, align 4
  %329 = load float, ptr %a1, align 4
  %330 = load float, ptr %a1, align 4
  %331 = load float, ptr %b1, align 4
  %332 = load float, ptr %b1, align 4
  %mul570 = fmul float %331, %332
  %neg = fneg float %mul570
  %333 = call float @llvm.fmuladd.f32(float %329, float %330, float %neg)
  %mul571 = fmul float %333, 5.000000e-01
  store float %mul571, ptr %numim, align 4
  %334 = load float, ptr %r1, align 4
  %335 = load float, ptr %r1, align 4
  %mul572 = fmul float %334, %335
  store float %mul572, ptr %den, align 4
  br label %if.end574

if.else573:                                       ; preds = %cond.end549
  store float 1.000000e+00, ptr %numre, align 4
  store float 0.000000e+00, ptr %numim, align 4
  store float 1.000000e+00, ptr %den, align 4
  br label %if.end574

if.end574:                                        ; preds = %if.else573, %if.then567
  %336 = load float, ptr %r2, align 4
  %cmp575 = fcmp une float %336, 0.000000e+00
  br i1 %cmp575, label %if.then577, label %if.else586

if.then577:                                       ; preds = %if.end574
  %337 = load float, ptr %numim, align 4
  %338 = load float, ptr %numre, align 4
  %add578 = fadd float %337, %338
  %339 = load float, ptr %a2, align 4
  %340 = load float, ptr %b2, align 4
  %add579 = fadd float %339, %340
  %mul580 = fmul float %add578, %add579
  %mul581 = fmul float %mul580, 5.000000e-01
  store float %mul581, ptr %tmp2, align 4
  %341 = load float, ptr %a2, align 4
  %fneg = fneg float %341
  %342 = load float, ptr %numre, align 4
  %343 = load float, ptr %tmp2, align 4
  %344 = call float @llvm.fmuladd.f32(float %fneg, float %342, float %343)
  store float %344, ptr %tmp1, align 4
  %345 = load float, ptr %b2, align 4
  %fneg583 = fneg float %345
  %346 = load float, ptr %numim, align 4
  %347 = load float, ptr %tmp2, align 4
  %348 = call float @llvm.fmuladd.f32(float %fneg583, float %346, float %347)
  store float %348, ptr %numre, align 4
  %349 = load float, ptr %tmp1, align 4
  store float %349, ptr %numim, align 4
  %350 = load float, ptr %r2, align 4
  %351 = load float, ptr %den, align 4
  %mul585 = fmul float %351, %350
  store float %mul585, ptr %den, align 4
  br label %if.end587

if.else586:                                       ; preds = %if.end574
  br label %if.end587

if.end587:                                        ; preds = %if.else586, %if.then577
  %352 = load float, ptr %r1, align 4
  %353 = load float, ptr %r2, align 4
  %neg589 = fneg float %353
  %354 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %352, float %neg589)
  %355 = load float, ptr %den, align 4
  %div590 = fdiv float %354, %355
  store float %div590, ptr %tmp, align 4
  %356 = load float, ptr %tmp, align 4
  %357 = load float, ptr %numre, align 4
  %mul591 = fmul float %357, %356
  store float %mul591, ptr %numre, align 4
  %358 = load float, ptr %tmp, align 4
  %359 = load float, ptr %numim, align 4
  %mul592 = fmul float %359, %358
  store float %mul592, ptr %numim, align 4
  %360 = load float, ptr %rn, align 4
  %conv593 = fpext float %360 to double
  %361 = load float, ptr %r1, align 4
  %362 = load float, ptr %r2, align 4
  %neg595 = fneg float %362
  %363 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %361, float %neg595)
  %conv596 = fpext float %363 to double
  %364 = call double @llvm.fabs.f64(double %conv596)
  %add597 = fadd double %conv593, %364
  %conv598 = fptrunc double %add597 to float
  store float %conv598, ptr %den, align 4
  %365 = load float, ptr %den, align 4
  %cmp599 = fcmp une float %365, 0.000000e+00
  br i1 %cmp599, label %if.then601, label %if.end614

if.then601:                                       ; preds = %if.end587
  %366 = load float, ptr %an, align 4
  %367 = load float, ptr %bn, align 4
  %add602 = fadd float %366, %367
  %368 = load float, ptr %numre, align 4
  %neg604 = fneg float %368
  %369 = call float @llvm.fmuladd.f32(float %add602, float 5.000000e-01, float %neg604)
  store float %369, ptr %numre, align 4
  %370 = load float, ptr %an, align 4
  %371 = load float, ptr %bn, align 4
  %sub605 = fsub float %370, %371
  %372 = load float, ptr %numim, align 4
  %neg607 = fneg float %372
  %373 = call float @llvm.fmuladd.f32(float %sub605, float 5.000000e-01, float %neg607)
  store float %373, ptr %numim, align 4
  %374 = load float, ptr %numre, align 4
  %375 = load float, ptr %numre, align 4
  %376 = load float, ptr %numim, align 4
  %377 = load float, ptr %numim, align 4
  %mul609 = fmul float %376, %377
  %378 = call float @llvm.fmuladd.f32(float %374, float %375, float %mul609)
  %conv610 = fpext float %378 to double
  %379 = call double @llvm.sqrt.f64(double %conv610)
  %380 = load float, ptr %den, align 4
  %conv611 = fpext float %380 to double
  %div612 = fdiv double %379, %conv611
  %conv613 = fptrunc double %div612 to float
  store float %conv613, ptr %den, align 4
  br label %if.end614

if.end614:                                        ; preds = %if.then601, %if.end587
  %381 = load float, ptr %den, align 4
  %382 = load i32, ptr %j, align 4
  %idxprom615 = sext i32 %382 to i64
  %arrayidx616 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom615
  store float %381, ptr %arrayidx616, align 4
  br label %for.inc617

for.inc617:                                       ; preds = %if.end614
  %383 = load i32, ptr %j, align 4
  %inc618 = add nsw i32 %383, 1
  store i32 %inc618, ptr %j, align 4
  br label %for.cond485, !llvm.loop !32

for.end619:                                       ; preds = %for.cond485
  %384 = load i32, ptr @L3psycho_anal.cw_lower_index, align 4
  store i32 %384, ptr %j, align 4
  br label %for.cond620

for.cond620:                                      ; preds = %for.inc736, %for.end619
  %385 = load i32, ptr %j, align 4
  %386 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp621 = icmp slt i32 %385, %386
  br i1 %cmp621, label %for.body623, label %for.end738

for.body623:                                      ; preds = %for.cond620
  %387 = load i32, ptr %j, align 4
  %add630 = add nsw i32 %387, 2
  %div631 = sdiv i32 %add630, 4
  store i32 %div631, ptr %k, align 4
  %388 = load i32, ptr %k, align 4
  %idxprom632 = sext i32 %388 to i64
  %arrayidx633 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom632
  %389 = load float, ptr %arrayidx633, align 4
  store float %389, ptr %r1625, align 4
  %390 = load float, ptr %r1625, align 4
  %cmp634 = fcmp une float %390, 0.000000e+00
  br i1 %cmp634, label %if.then636, label %if.else653

if.then636:                                       ; preds = %for.body623
  %391 = load ptr, ptr %wsamp_s, align 8
  %arrayidx638 = getelementptr inbounds [3 x [256 x float]], ptr %391, i64 0, i64 0
  %392 = load i32, ptr %k, align 4
  %idxprom639 = sext i32 %392 to i64
  %arrayidx640 = getelementptr inbounds [256 x float], ptr %arrayidx638, i64 0, i64 %idxprom639
  %393 = load float, ptr %arrayidx640, align 4
  store float %393, ptr %a1637, align 4
  %394 = load ptr, ptr %wsamp_s, align 8
  %arrayidx642 = getelementptr inbounds [3 x [256 x float]], ptr %394, i64 0, i64 0
  %395 = load i32, ptr %k, align 4
  %sub643 = sub nsw i32 256, %395
  %idxprom644 = sext i32 %sub643 to i64
  %arrayidx645 = getelementptr inbounds [256 x float], ptr %arrayidx642, i64 0, i64 %idxprom644
  %396 = load float, ptr %arrayidx645, align 4
  store float %396, ptr %b1641, align 4
  %397 = load float, ptr %a1637, align 4
  %398 = load float, ptr %b1641, align 4
  %mul646 = fmul float %397, %398
  store float %mul646, ptr %numre627, align 4
  %399 = load float, ptr %a1637, align 4
  %400 = load float, ptr %a1637, align 4
  %401 = load float, ptr %b1641, align 4
  %402 = load float, ptr %b1641, align 4
  %mul648 = fmul float %401, %402
  %neg649 = fneg float %mul648
  %403 = call float @llvm.fmuladd.f32(float %399, float %400, float %neg649)
  %mul650 = fmul float %403, 5.000000e-01
  store float %mul650, ptr %numim628, align 4
  %404 = load float, ptr %r1625, align 4
  store float %404, ptr %den629, align 4
  %405 = load float, ptr %r1625, align 4
  %conv651 = fpext float %405 to double
  %406 = call double @llvm.sqrt.f64(double %conv651)
  %conv652 = fptrunc double %406 to float
  store float %conv652, ptr %r1625, align 4
  br label %if.end654

if.else653:                                       ; preds = %for.body623
  store float 1.000000e+00, ptr %numre627, align 4
  store float 0.000000e+00, ptr %numim628, align 4
  store float 1.000000e+00, ptr %den629, align 4
  br label %if.end654

if.end654:                                        ; preds = %if.else653, %if.then636
  %407 = load i32, ptr %k, align 4
  %idxprom655 = sext i32 %407 to i64
  %arrayidx656 = getelementptr inbounds [129 x float], ptr getelementptr inbounds ([3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2), i64 0, i64 %idxprom655
  %408 = load float, ptr %arrayidx656, align 4
  store float %408, ptr %r2626, align 4
  %409 = load float, ptr %r2626, align 4
  %cmp657 = fcmp une float %409, 0.000000e+00
  br i1 %cmp657, label %if.then659, label %if.else682

if.then659:                                       ; preds = %if.end654
  %410 = load ptr, ptr %wsamp_s, align 8
  %arrayidx661 = getelementptr inbounds [3 x [256 x float]], ptr %410, i64 0, i64 2
  %411 = load i32, ptr %k, align 4
  %idxprom662 = sext i32 %411 to i64
  %arrayidx663 = getelementptr inbounds [256 x float], ptr %arrayidx661, i64 0, i64 %idxprom662
  %412 = load float, ptr %arrayidx663, align 4
  store float %412, ptr %a2660, align 4
  %413 = load ptr, ptr %wsamp_s, align 8
  %arrayidx665 = getelementptr inbounds [3 x [256 x float]], ptr %413, i64 0, i64 2
  %414 = load i32, ptr %k, align 4
  %sub666 = sub nsw i32 256, %414
  %idxprom667 = sext i32 %sub666 to i64
  %arrayidx668 = getelementptr inbounds [256 x float], ptr %arrayidx665, i64 0, i64 %idxprom667
  %415 = load float, ptr %arrayidx668, align 4
  store float %415, ptr %b2664, align 4
  %416 = load float, ptr %numim628, align 4
  %417 = load float, ptr %numre627, align 4
  %add670 = fadd float %416, %417
  %418 = load float, ptr %a2660, align 4
  %419 = load float, ptr %b2664, align 4
  %add671 = fadd float %418, %419
  %mul672 = fmul float %add670, %add671
  %mul673 = fmul float %mul672, 5.000000e-01
  store float %mul673, ptr %tmp2669, align 4
  %420 = load float, ptr %a2660, align 4
  %fneg675 = fneg float %420
  %421 = load float, ptr %numre627, align 4
  %422 = load float, ptr %tmp2669, align 4
  %423 = call float @llvm.fmuladd.f32(float %fneg675, float %421, float %422)
  store float %423, ptr %tmp1674, align 4
  %424 = load float, ptr %b2664, align 4
  %fneg677 = fneg float %424
  %425 = load float, ptr %numim628, align 4
  %426 = load float, ptr %tmp2669, align 4
  %427 = call float @llvm.fmuladd.f32(float %fneg677, float %425, float %426)
  store float %427, ptr %numre627, align 4
  %428 = load float, ptr %tmp1674, align 4
  store float %428, ptr %numim628, align 4
  %429 = load float, ptr %r2626, align 4
  %conv679 = fpext float %429 to double
  %430 = call double @llvm.sqrt.f64(double %conv679)
  %conv680 = fptrunc double %430 to float
  store float %conv680, ptr %r2626, align 4
  %431 = load float, ptr %r2626, align 4
  %432 = load float, ptr %den629, align 4
  %mul681 = fmul float %432, %431
  store float %mul681, ptr %den629, align 4
  br label %if.end683

if.else682:                                       ; preds = %if.end654
  br label %if.end683

if.end683:                                        ; preds = %if.else682, %if.then659
  %433 = load float, ptr %r1625, align 4
  %434 = load float, ptr %r2626, align 4
  %neg686 = fneg float %434
  %435 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %433, float %neg686)
  %436 = load float, ptr %den629, align 4
  %div687 = fdiv float %435, %436
  store float %div687, ptr %tmp684, align 4
  %437 = load float, ptr %tmp684, align 4
  %438 = load float, ptr %numre627, align 4
  %mul688 = fmul float %438, %437
  store float %mul688, ptr %numre627, align 4
  %439 = load float, ptr %tmp684, align 4
  %440 = load float, ptr %numim628, align 4
  %mul689 = fmul float %440, %439
  store float %mul689, ptr %numim628, align 4
  %441 = load i32, ptr %k, align 4
  %idxprom690 = sext i32 %441 to i64
  %arrayidx691 = getelementptr inbounds [129 x float], ptr getelementptr inbounds ([3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1), i64 0, i64 %idxprom690
  %442 = load float, ptr %arrayidx691, align 4
  %conv692 = fpext float %442 to double
  %443 = call double @llvm.sqrt.f64(double %conv692)
  %conv693 = fptrunc double %443 to float
  store float %conv693, ptr %rn624, align 4
  %444 = load float, ptr %rn624, align 4
  %conv694 = fpext float %444 to double
  %445 = load float, ptr %r1625, align 4
  %446 = load float, ptr %r2626, align 4
  %neg696 = fneg float %446
  %447 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %445, float %neg696)
  %conv697 = fpext float %447 to double
  %448 = call double @llvm.fabs.f64(double %conv697)
  %add698 = fadd double %conv694, %448
  %conv699 = fptrunc double %add698 to float
  store float %conv699, ptr %den629, align 4
  %449 = load float, ptr %den629, align 4
  %cmp700 = fcmp une float %449, 0.000000e+00
  br i1 %cmp700, label %if.then702, label %if.end724

if.then702:                                       ; preds = %if.end683
  %450 = load ptr, ptr %wsamp_s, align 8
  %arrayidx704 = getelementptr inbounds [3 x [256 x float]], ptr %450, i64 0, i64 1
  %451 = load i32, ptr %k, align 4
  %idxprom705 = sext i32 %451 to i64
  %arrayidx706 = getelementptr inbounds [256 x float], ptr %arrayidx704, i64 0, i64 %idxprom705
  %452 = load float, ptr %arrayidx706, align 4
  store float %452, ptr %an703, align 4
  %453 = load ptr, ptr %wsamp_s, align 8
  %arrayidx708 = getelementptr inbounds [3 x [256 x float]], ptr %453, i64 0, i64 1
  %454 = load i32, ptr %k, align 4
  %sub709 = sub nsw i32 256, %454
  %idxprom710 = sext i32 %sub709 to i64
  %arrayidx711 = getelementptr inbounds [256 x float], ptr %arrayidx708, i64 0, i64 %idxprom710
  %455 = load float, ptr %arrayidx711, align 4
  store float %455, ptr %bn707, align 4
  %456 = load float, ptr %an703, align 4
  %457 = load float, ptr %bn707, align 4
  %add712 = fadd float %456, %457
  %458 = load float, ptr %numre627, align 4
  %neg714 = fneg float %458
  %459 = call float @llvm.fmuladd.f32(float %add712, float 5.000000e-01, float %neg714)
  store float %459, ptr %numre627, align 4
  %460 = load float, ptr %an703, align 4
  %461 = load float, ptr %bn707, align 4
  %sub715 = fsub float %460, %461
  %462 = load float, ptr %numim628, align 4
  %neg717 = fneg float %462
  %463 = call float @llvm.fmuladd.f32(float %sub715, float 5.000000e-01, float %neg717)
  store float %463, ptr %numim628, align 4
  %464 = load float, ptr %numre627, align 4
  %465 = load float, ptr %numre627, align 4
  %466 = load float, ptr %numim628, align 4
  %467 = load float, ptr %numim628, align 4
  %mul719 = fmul float %466, %467
  %468 = call float @llvm.fmuladd.f32(float %464, float %465, float %mul719)
  %conv720 = fpext float %468 to double
  %469 = call double @llvm.sqrt.f64(double %conv720)
  %470 = load float, ptr %den629, align 4
  %conv721 = fpext float %470 to double
  %div722 = fdiv double %469, %conv721
  %conv723 = fptrunc double %div722 to float
  store float %conv723, ptr %den629, align 4
  br label %if.end724

if.end724:                                        ; preds = %if.then702, %if.end683
  %471 = load float, ptr %den629, align 4
  %472 = load i32, ptr %j, align 4
  %idxprom725 = sext i32 %472 to i64
  %arrayidx726 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom725
  store float %471, ptr %arrayidx726, align 4
  %473 = load i32, ptr %j, align 4
  %add727 = add nsw i32 %473, 3
  %idxprom728 = sext i32 %add727 to i64
  %arrayidx729 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom728
  store float %471, ptr %arrayidx729, align 4
  %474 = load i32, ptr %j, align 4
  %add730 = add nsw i32 %474, 2
  %idxprom731 = sext i32 %add730 to i64
  %arrayidx732 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom731
  store float %471, ptr %arrayidx732, align 4
  %475 = load i32, ptr %j, align 4
  %add733 = add nsw i32 %475, 1
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom734
  store float %471, ptr %arrayidx735, align 4
  br label %for.inc736

for.inc736:                                       ; preds = %if.end724
  %476 = load i32, ptr %j, align 4
  %add737 = add nsw i32 %476, 4
  store i32 %add737, ptr %j, align 4
  br label %for.cond620, !llvm.loop !33

for.end738:                                       ; preds = %for.cond620
  store i32 0, ptr %b, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond739

for.cond739:                                      ; preds = %for.end775, %for.end738
  %477 = load i32, ptr %j, align 4
  %478 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4
  %cmp740 = icmp slt i32 %477, %478
  br i1 %cmp740, label %for.body742, label %for.end781

for.body742:                                      ; preds = %for.cond739
  %479 = load i32, ptr %j, align 4
  %idxprom744 = sext i32 %479 to i64
  %arrayidx745 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom744
  %480 = load float, ptr %arrayidx745, align 4
  %conv746 = fpext float %480 to double
  store double %conv746, ptr %ebb, align 8
  %481 = load i32, ptr %j, align 4
  %idxprom747 = sext i32 %481 to i64
  %arrayidx748 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom747
  %482 = load float, ptr %arrayidx748, align 4
  %483 = load i32, ptr %j, align 4
  %idxprom749 = sext i32 %483 to i64
  %arrayidx750 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom749
  %484 = load float, ptr %arrayidx750, align 4
  %mul751 = fmul float %482, %484
  %conv752 = fpext float %mul751 to double
  store double %conv752, ptr %cbb, align 8
  %485 = load i32, ptr %j, align 4
  %inc753 = add nsw i32 %485, 1
  store i32 %inc753, ptr %j, align 4
  %486 = load i32, ptr %b, align 4
  %idxprom754 = sext i32 %486 to i64
  %arrayidx755 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %idxprom754
  %487 = load i32, ptr %arrayidx755, align 4
  %sub756 = sub nsw i32 %487, 1
  store i32 %sub756, ptr %i743, align 4
  br label %for.cond757

for.cond757:                                      ; preds = %for.inc773, %for.body742
  %488 = load i32, ptr %i743, align 4
  %cmp758 = icmp sgt i32 %488, 0
  br i1 %cmp758, label %for.body760, label %for.end775

for.body760:                                      ; preds = %for.cond757
  %489 = load i32, ptr %j, align 4
  %idxprom761 = sext i32 %489 to i64
  %arrayidx762 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom761
  %490 = load float, ptr %arrayidx762, align 4
  %conv763 = fpext float %490 to double
  %491 = load double, ptr %ebb, align 8
  %add764 = fadd double %491, %conv763
  store double %add764, ptr %ebb, align 8
  %492 = load i32, ptr %j, align 4
  %idxprom765 = sext i32 %492 to i64
  %arrayidx766 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom765
  %493 = load float, ptr %arrayidx766, align 4
  %494 = load i32, ptr %j, align 4
  %idxprom767 = sext i32 %494 to i64
  %arrayidx768 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom767
  %495 = load float, ptr %arrayidx768, align 4
  %mul769 = fmul float %493, %495
  %conv770 = fpext float %mul769 to double
  %496 = load double, ptr %cbb, align 8
  %add771 = fadd double %496, %conv770
  store double %add771, ptr %cbb, align 8
  %497 = load i32, ptr %j, align 4
  %inc772 = add nsw i32 %497, 1
  store i32 %inc772, ptr %j, align 4
  br label %for.inc773

for.inc773:                                       ; preds = %for.body760
  %498 = load i32, ptr %i743, align 4
  %dec774 = add nsw i32 %498, -1
  store i32 %dec774, ptr %i743, align 4
  br label %for.cond757, !llvm.loop !34

for.end775:                                       ; preds = %for.cond757
  %499 = load double, ptr %ebb, align 8
  %500 = load i32, ptr %b, align 4
  %idxprom776 = sext i32 %500 to i64
  %arrayidx777 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom776
  store double %499, ptr %arrayidx777, align 8
  %501 = load double, ptr %cbb, align 8
  %502 = load i32, ptr %b, align 4
  %idxprom778 = sext i32 %502 to i64
  %arrayidx779 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %idxprom778
  store double %501, ptr %arrayidx779, align 8
  %503 = load i32, ptr %b, align 4
  %inc780 = add nsw i32 %503, 1
  store i32 %inc780, ptr %b, align 4
  br label %for.cond739, !llvm.loop !35

for.end781:                                       ; preds = %for.cond739
  br label %for.cond782

for.cond782:                                      ; preds = %for.inc812, %for.end781
  %504 = load i32, ptr %b, align 4
  %505 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4
  %cmp783 = icmp slt i32 %504, %505
  br i1 %cmp783, label %for.body785, label %for.end814

for.body785:                                      ; preds = %for.cond782
  %506 = load i32, ptr %j, align 4
  %inc788 = add nsw i32 %506, 1
  store i32 %inc788, ptr %j, align 4
  %idxprom789 = sext i32 %506 to i64
  %arrayidx790 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom789
  %507 = load float, ptr %arrayidx790, align 4
  %conv791 = fpext float %507 to double
  store double %conv791, ptr %ebb787, align 8
  %508 = load i32, ptr %b, align 4
  %idxprom792 = sext i32 %508 to i64
  %arrayidx793 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %idxprom792
  %509 = load i32, ptr %arrayidx793, align 4
  %sub794 = sub nsw i32 %509, 1
  store i32 %sub794, ptr %i786, align 4
  br label %for.cond795

for.cond795:                                      ; preds = %for.inc804, %for.body785
  %510 = load i32, ptr %i786, align 4
  %cmp796 = icmp sgt i32 %510, 0
  br i1 %cmp796, label %for.body798, label %for.end806

for.body798:                                      ; preds = %for.cond795
  %511 = load i32, ptr %j, align 4
  %inc799 = add nsw i32 %511, 1
  store i32 %inc799, ptr %j, align 4
  %idxprom800 = sext i32 %511 to i64
  %arrayidx801 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom800
  %512 = load float, ptr %arrayidx801, align 4
  %conv802 = fpext float %512 to double
  %513 = load double, ptr %ebb787, align 8
  %add803 = fadd double %513, %conv802
  store double %add803, ptr %ebb787, align 8
  br label %for.inc804

for.inc804:                                       ; preds = %for.body798
  %514 = load i32, ptr %i786, align 4
  %dec805 = add nsw i32 %514, -1
  store i32 %dec805, ptr %i786, align 4
  br label %for.cond795, !llvm.loop !36

for.end806:                                       ; preds = %for.cond795
  %515 = load double, ptr %ebb787, align 8
  %516 = load i32, ptr %b, align 4
  %idxprom807 = sext i32 %516 to i64
  %arrayidx808 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom807
  store double %515, ptr %arrayidx808, align 8
  %517 = load double, ptr %ebb787, align 8
  %mul809 = fmul double %517, 4.000000e-01
  %518 = load i32, ptr %b, align 4
  %idxprom810 = sext i32 %518 to i64
  %arrayidx811 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %idxprom810
  store double %mul809, ptr %arrayidx811, align 8
  br label %for.inc812

for.inc812:                                       ; preds = %for.end806
  %519 = load i32, ptr %b, align 4
  %inc813 = add nsw i32 %519, 1
  store i32 %inc813, ptr %b, align 4
  br label %for.cond782, !llvm.loop !37

for.end814:                                       ; preds = %for.cond782
  %520 = load i32, ptr %chn, align 4
  %idxprom815 = sext i32 %520 to i64
  %arrayidx816 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom815
  store double 0.000000e+00, ptr %arrayidx816, align 8
  store i32 0, ptr %b, align 4
  br label %for.cond817

for.cond817:                                      ; preds = %for.inc977, %for.end814
  %521 = load i32, ptr %b, align 4
  %522 = load i32, ptr @L3psycho_anal.npart_l, align 4
  %cmp818 = icmp slt i32 %521, %522
  br i1 %cmp818, label %for.body820, label %for.end979

for.body820:                                      ; preds = %for.cond817
  store double 0.000000e+00, ptr %ecb, align 8
  store double 0.000000e+00, ptr %ctb, align 8
  %523 = load i32, ptr %b, align 4
  %idxprom821 = sext i32 %523 to i64
  %arrayidx822 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom821
  %arrayidx823 = getelementptr inbounds [2 x i32], ptr %arrayidx822, i64 0, i64 0
  %524 = load i32, ptr %arrayidx823, align 4
  store i32 %524, ptr %k, align 4
  br label %for.cond824

for.cond824:                                      ; preds = %for.inc845, %for.body820
  %525 = load i32, ptr %k, align 4
  %526 = load i32, ptr %b, align 4
  %idxprom825 = sext i32 %526 to i64
  %arrayidx826 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %idxprom825
  %arrayidx827 = getelementptr inbounds [2 x i32], ptr %arrayidx826, i64 0, i64 1
  %527 = load i32, ptr %arrayidx827, align 4
  %cmp828 = icmp sle i32 %525, %527
  br i1 %cmp828, label %for.body830, label %for.end847

for.body830:                                      ; preds = %for.cond824
  %528 = load i32, ptr %b, align 4
  %idxprom831 = sext i32 %528 to i64
  %arrayidx832 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom831
  %529 = load i32, ptr %k, align 4
  %idxprom833 = sext i32 %529 to i64
  %arrayidx834 = getelementptr inbounds [64 x double], ptr %arrayidx832, i64 0, i64 %idxprom833
  %530 = load double, ptr %arrayidx834, align 8
  %531 = load i32, ptr %k, align 4
  %idxprom835 = sext i32 %531 to i64
  %arrayidx836 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom835
  %532 = load double, ptr %arrayidx836, align 8
  %533 = load double, ptr %ecb, align 8
  %534 = call double @llvm.fmuladd.f64(double %530, double %532, double %533)
  store double %534, ptr %ecb, align 8
  %535 = load i32, ptr %b, align 4
  %idxprom838 = sext i32 %535 to i64
  %arrayidx839 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %idxprom838
  %536 = load i32, ptr %k, align 4
  %idxprom840 = sext i32 %536 to i64
  %arrayidx841 = getelementptr inbounds [64 x double], ptr %arrayidx839, i64 0, i64 %idxprom840
  %537 = load double, ptr %arrayidx841, align 8
  %538 = load i32, ptr %k, align 4
  %idxprom842 = sext i32 %538 to i64
  %arrayidx843 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %idxprom842
  %539 = load double, ptr %arrayidx843, align 8
  %540 = load double, ptr %ctb, align 8
  %541 = call double @llvm.fmuladd.f64(double %537, double %539, double %540)
  store double %541, ptr %ctb, align 8
  br label %for.inc845

for.inc845:                                       ; preds = %for.body830
  %542 = load i32, ptr %k, align 4
  %inc846 = add nsw i32 %542, 1
  store i32 %inc846, ptr %k, align 4
  br label %for.cond824, !llvm.loop !38

for.end847:                                       ; preds = %for.cond824
  %543 = load double, ptr %ecb, align 8
  store double %543, ptr %tbb, align 8
  %544 = load double, ptr %tbb, align 8
  %cmp848 = fcmp une double %544, 0.000000e+00
  br i1 %cmp848, label %if.then850, label %if.end863

if.then850:                                       ; preds = %for.end847
  %545 = load double, ptr %ctb, align 8
  %546 = load double, ptr %tbb, align 8
  %div851 = fdiv double %545, %546
  store double %div851, ptr %tbb, align 8
  %547 = load double, ptr %tbb, align 8
  %cmp852 = fcmp ole double %547, 0x3FA8F6869E6F084D
  br i1 %cmp852, label %if.then854, label %if.else855

if.then854:                                       ; preds = %if.then850
  %548 = call double @llvm.exp.f64(double 0xC0061AD547A6661A)
  store double %548, ptr %tbb, align 8
  br label %if.end862

if.else855:                                       ; preds = %if.then850
  %549 = load double, ptr %tbb, align 8
  %cmp856 = fcmp ogt double %549, 0x3FDFEDFBDEEA22F7
  br i1 %cmp856, label %if.then858, label %if.else859

if.then858:                                       ; preds = %if.else855
  store double 1.000000e+00, ptr %tbb, align 8
  br label %if.end861

if.else859:                                       ; preds = %if.else855
  %550 = load double, ptr %tbb, align 8
  %551 = call double @llvm.log.f64(double %550)
  store double %551, ptr %tbb, align 8
  %552 = load double, ptr %tbb, align 8
  %553 = call double @llvm.fmuladd.f64(double 0x3FF30298B36105E3, double %552, double 0x3FEA6FF6E4078667)
  %554 = call double @llvm.exp.f64(double %553)
  store double %554, ptr %tbb, align 8
  br label %if.end861

if.end861:                                        ; preds = %if.else859, %if.then858
  br label %if.end862

if.end862:                                        ; preds = %if.end861, %if.then854
  br label %if.end863

if.end863:                                        ; preds = %if.end862, %for.end847
  %555 = load i32, ptr %b, align 4
  %idxprom864 = sext i32 %555 to i64
  %arrayidx865 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.minval, i64 0, i64 %idxprom864
  %556 = load double, ptr %arrayidx865, align 8
  %557 = load double, ptr %tbb, align 8
  %cmp866 = fcmp olt double %556, %557
  br i1 %cmp866, label %cond.true868, label %cond.false871

cond.true868:                                     ; preds = %if.end863
  %558 = load i32, ptr %b, align 4
  %idxprom869 = sext i32 %558 to i64
  %arrayidx870 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.minval, i64 0, i64 %idxprom869
  %559 = load double, ptr %arrayidx870, align 8
  br label %cond.end872

cond.false871:                                    ; preds = %if.end863
  %560 = load double, ptr %tbb, align 8
  br label %cond.end872

cond.end872:                                      ; preds = %cond.false871, %cond.true868
  %cond873 = phi double [ %559, %cond.true868 ], [ %560, %cond.false871 ]
  store double %cond873, ptr %tbb, align 8
  %561 = load double, ptr %tbb, align 8
  %562 = load double, ptr %ecb, align 8
  %mul874 = fmul double %562, %561
  store double %mul874, ptr %ecb, align 8
  %563 = load double, ptr %ecb, align 8
  %564 = load i32, ptr %chn, align 4
  %idxprom875 = sext i32 %564 to i64
  %arrayidx876 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom875
  %565 = load i32, ptr %b, align 4
  %idxprom877 = sext i32 %565 to i64
  %arrayidx878 = getelementptr inbounds [63 x double], ptr %arrayidx876, i64 0, i64 %idxprom877
  %566 = load double, ptr %arrayidx878, align 8
  %mul879 = fmul double 2.000000e+00, %566
  %567 = load i32, ptr %chn, align 4
  %idxprom880 = sext i32 %567 to i64
  %arrayidx881 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom880
  %568 = load i32, ptr %b, align 4
  %idxprom882 = sext i32 %568 to i64
  %arrayidx883 = getelementptr inbounds [63 x double], ptr %arrayidx881, i64 0, i64 %idxprom882
  %569 = load double, ptr %arrayidx883, align 8
  %mul884 = fmul double 1.600000e+01, %569
  %cmp885 = fcmp olt double %mul879, %mul884
  br i1 %cmp885, label %cond.true887, label %cond.false893

cond.true887:                                     ; preds = %cond.end872
  %570 = load i32, ptr %chn, align 4
  %idxprom888 = sext i32 %570 to i64
  %arrayidx889 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom888
  %571 = load i32, ptr %b, align 4
  %idxprom890 = sext i32 %571 to i64
  %arrayidx891 = getelementptr inbounds [63 x double], ptr %arrayidx889, i64 0, i64 %idxprom890
  %572 = load double, ptr %arrayidx891, align 8
  %mul892 = fmul double 2.000000e+00, %572
  br label %cond.end899

cond.false893:                                    ; preds = %cond.end872
  %573 = load i32, ptr %chn, align 4
  %idxprom894 = sext i32 %573 to i64
  %arrayidx895 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom894
  %574 = load i32, ptr %b, align 4
  %idxprom896 = sext i32 %574 to i64
  %arrayidx897 = getelementptr inbounds [63 x double], ptr %arrayidx895, i64 0, i64 %idxprom896
  %575 = load double, ptr %arrayidx897, align 8
  %mul898 = fmul double 1.600000e+01, %575
  br label %cond.end899

cond.end899:                                      ; preds = %cond.false893, %cond.true887
  %cond900 = phi double [ %mul892, %cond.true887 ], [ %mul898, %cond.false893 ]
  %cmp901 = fcmp olt double %563, %cond900
  br i1 %cmp901, label %cond.true903, label %cond.false904

cond.true903:                                     ; preds = %cond.end899
  %576 = load double, ptr %ecb, align 8
  br label %cond.end931

cond.false904:                                    ; preds = %cond.end899
  %577 = load i32, ptr %chn, align 4
  %idxprom905 = sext i32 %577 to i64
  %arrayidx906 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom905
  %578 = load i32, ptr %b, align 4
  %idxprom907 = sext i32 %578 to i64
  %arrayidx908 = getelementptr inbounds [63 x double], ptr %arrayidx906, i64 0, i64 %idxprom907
  %579 = load double, ptr %arrayidx908, align 8
  %mul909 = fmul double 2.000000e+00, %579
  %580 = load i32, ptr %chn, align 4
  %idxprom910 = sext i32 %580 to i64
  %arrayidx911 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom910
  %581 = load i32, ptr %b, align 4
  %idxprom912 = sext i32 %581 to i64
  %arrayidx913 = getelementptr inbounds [63 x double], ptr %arrayidx911, i64 0, i64 %idxprom912
  %582 = load double, ptr %arrayidx913, align 8
  %mul914 = fmul double 1.600000e+01, %582
  %cmp915 = fcmp olt double %mul909, %mul914
  br i1 %cmp915, label %cond.true917, label %cond.false923

cond.true917:                                     ; preds = %cond.false904
  %583 = load i32, ptr %chn, align 4
  %idxprom918 = sext i32 %583 to i64
  %arrayidx919 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom918
  %584 = load i32, ptr %b, align 4
  %idxprom920 = sext i32 %584 to i64
  %arrayidx921 = getelementptr inbounds [63 x double], ptr %arrayidx919, i64 0, i64 %idxprom920
  %585 = load double, ptr %arrayidx921, align 8
  %mul922 = fmul double 2.000000e+00, %585
  br label %cond.end929

cond.false923:                                    ; preds = %cond.false904
  %586 = load i32, ptr %chn, align 4
  %idxprom924 = sext i32 %586 to i64
  %arrayidx925 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom924
  %587 = load i32, ptr %b, align 4
  %idxprom926 = sext i32 %587 to i64
  %arrayidx927 = getelementptr inbounds [63 x double], ptr %arrayidx925, i64 0, i64 %idxprom926
  %588 = load double, ptr %arrayidx927, align 8
  %mul928 = fmul double 1.600000e+01, %588
  br label %cond.end929

cond.end929:                                      ; preds = %cond.false923, %cond.true917
  %cond930 = phi double [ %mul922, %cond.true917 ], [ %mul928, %cond.false923 ]
  br label %cond.end931

cond.end931:                                      ; preds = %cond.end929, %cond.true903
  %cond932 = phi double [ %576, %cond.true903 ], [ %cond930, %cond.end929 ]
  store double %cond932, ptr %temp_1, align 8
  %589 = load i32, ptr %b, align 4
  %idxprom933 = sext i32 %589 to i64
  %arrayidx934 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_l, i64 0, i64 %idxprom933
  %590 = load double, ptr %arrayidx934, align 8
  %591 = load double, ptr %temp_1, align 8
  %cmp935 = fcmp ogt double %590, %591
  br i1 %cmp935, label %cond.true937, label %cond.false940

cond.true937:                                     ; preds = %cond.end931
  %592 = load i32, ptr %b, align 4
  %idxprom938 = sext i32 %592 to i64
  %arrayidx939 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_l, i64 0, i64 %idxprom938
  %593 = load double, ptr %arrayidx939, align 8
  br label %cond.end941

cond.false940:                                    ; preds = %cond.end931
  %594 = load double, ptr %temp_1, align 8
  br label %cond.end941

cond.end941:                                      ; preds = %cond.false940, %cond.true937
  %cond942 = phi double [ %593, %cond.true937 ], [ %594, %cond.false940 ]
  %595 = load i32, ptr %b, align 4
  %idxprom943 = sext i32 %595 to i64
  %arrayidx944 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom943
  store double %cond942, ptr %arrayidx944, align 8
  %596 = load i32, ptr %chn, align 4
  %idxprom945 = sext i32 %596 to i64
  %arrayidx946 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom945
  %597 = load i32, ptr %b, align 4
  %idxprom947 = sext i32 %597 to i64
  %arrayidx948 = getelementptr inbounds [63 x double], ptr %arrayidx946, i64 0, i64 %idxprom947
  %598 = load double, ptr %arrayidx948, align 8
  %599 = load i32, ptr %chn, align 4
  %idxprom949 = sext i32 %599 to i64
  %arrayidx950 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %idxprom949
  %600 = load i32, ptr %b, align 4
  %idxprom951 = sext i32 %600 to i64
  %arrayidx952 = getelementptr inbounds [63 x double], ptr %arrayidx950, i64 0, i64 %idxprom951
  store double %598, ptr %arrayidx952, align 8
  %601 = load double, ptr %ecb, align 8
  %602 = load i32, ptr %chn, align 4
  %idxprom953 = sext i32 %602 to i64
  %arrayidx954 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %idxprom953
  %603 = load i32, ptr %b, align 4
  %idxprom955 = sext i32 %603 to i64
  %arrayidx956 = getelementptr inbounds [63 x double], ptr %arrayidx954, i64 0, i64 %idxprom955
  store double %601, ptr %arrayidx956, align 8
  %604 = load i32, ptr %b, align 4
  %idxprom957 = sext i32 %604 to i64
  %arrayidx958 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom957
  %605 = load double, ptr %arrayidx958, align 8
  %606 = load i32, ptr %b, align 4
  %idxprom959 = sext i32 %606 to i64
  %arrayidx960 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom959
  %607 = load double, ptr %arrayidx960, align 8
  %cmp961 = fcmp olt double %605, %607
  br i1 %cmp961, label %if.then963, label %if.end976

if.then963:                                       ; preds = %cond.end941
  %608 = load i32, ptr %b, align 4
  %idxprom964 = sext i32 %608 to i64
  %arrayidx965 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %idxprom964
  %609 = load i32, ptr %arrayidx965, align 4
  %conv966 = sitofp i32 %609 to double
  %610 = load i32, ptr %b, align 4
  %idxprom967 = sext i32 %610 to i64
  %arrayidx968 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom967
  %611 = load double, ptr %arrayidx968, align 8
  %612 = load i32, ptr %b, align 4
  %idxprom969 = sext i32 %612 to i64
  %arrayidx970 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom969
  %613 = load double, ptr %arrayidx970, align 8
  %div971 = fdiv double %611, %613
  %614 = call double @llvm.log.f64(double %div971)
  %615 = load i32, ptr %chn, align 4
  %idxprom973 = sext i32 %615 to i64
  %arrayidx974 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom973
  %616 = load double, ptr %arrayidx974, align 8
  %neg975 = fneg double %conv966
  %617 = call double @llvm.fmuladd.f64(double %neg975, double %614, double %616)
  store double %617, ptr %arrayidx974, align 8
  br label %if.end976

if.end976:                                        ; preds = %if.then963, %cond.end941
  br label %for.inc977

for.inc977:                                       ; preds = %if.end976
  %618 = load i32, ptr %b, align 4
  %inc978 = add nsw i32 %618, 1
  store i32 %inc978, ptr %b, align 4
  br label %for.cond817, !llvm.loop !39

for.end979:                                       ; preds = %for.cond817
  %619 = load i32, ptr %chn, align 4
  %cmp980 = icmp slt i32 %619, 2
  br i1 %cmp980, label %if.then982, label %if.end1059

if.then982:                                       ; preds = %for.end979
  %620 = load ptr, ptr %gfp.addr, align 8
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, ptr %620, i32 0, i32 37
  %621 = load i32, ptr %no_short_blocks, align 8
  %tobool = icmp ne i32 %621, 0
  br i1 %tobool, label %if.then983, label %if.else986

if.then983:                                       ; preds = %if.then982
  %622 = load i32, ptr %chn, align 4
  %idxprom984 = sext i32 %622 to i64
  %arrayidx985 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom984
  store i32 1, ptr %arrayidx985, align 4
  br label %if.end1058

if.else986:                                       ; preds = %if.then982
  %623 = load i32, ptr %chn, align 4
  %idxprom987 = sext i32 %623 to i64
  %arrayidx988 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom987
  %624 = load double, ptr %arrayidx988, align 8
  %cmp989 = fcmp ogt double %624, 3.000000e+03
  br i1 %cmp989, label %if.then991, label %if.else994

if.then991:                                       ; preds = %if.else986
  %625 = load i32, ptr %chn, align 4
  %idxprom992 = sext i32 %625 to i64
  %arrayidx993 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom992
  store i32 0, ptr %arrayidx993, align 4
  br label %if.end1057

if.else994:                                       ; preds = %if.else986
  store float 0.000000e+00, ptr %ma, align 4
  store float 0.000000e+00, ptr %mb, align 4
  store float 0.000000e+00, ptr %mc, align 4
  store i32 64, ptr %j, align 4
  br label %for.cond995

for.cond995:                                      ; preds = %for.inc1008, %if.else994
  %626 = load i32, ptr %j, align 4
  %cmp996 = icmp slt i32 %626, 129
  br i1 %cmp996, label %for.body998, label %for.end1010

for.body998:                                      ; preds = %for.cond995
  %627 = load i32, ptr %j, align 4
  %idxprom999 = sext i32 %627 to i64
  %arrayidx1000 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom999
  %628 = load float, ptr %arrayidx1000, align 4
  %629 = load float, ptr %ma, align 4
  %add1001 = fadd float %629, %628
  store float %add1001, ptr %ma, align 4
  %630 = load i32, ptr %j, align 4
  %idxprom1002 = sext i32 %630 to i64
  %arrayidx1003 = getelementptr inbounds [129 x float], ptr getelementptr inbounds ([3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1), i64 0, i64 %idxprom1002
  %631 = load float, ptr %arrayidx1003, align 4
  %632 = load float, ptr %mb, align 4
  %add1004 = fadd float %632, %631
  store float %add1004, ptr %mb, align 4
  %633 = load i32, ptr %j, align 4
  %idxprom1005 = sext i32 %633 to i64
  %arrayidx1006 = getelementptr inbounds [129 x float], ptr getelementptr inbounds ([3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2), i64 0, i64 %idxprom1005
  %634 = load float, ptr %arrayidx1006, align 4
  %635 = load float, ptr %mc, align 4
  %add1007 = fadd float %635, %634
  store float %add1007, ptr %mc, align 4
  br label %for.inc1008

for.inc1008:                                      ; preds = %for.body998
  %636 = load i32, ptr %j, align 4
  %inc1009 = add nsw i32 %636, 1
  store i32 %inc1009, ptr %j, align 4
  br label %for.cond995, !llvm.loop !40

for.end1010:                                      ; preds = %for.cond995
  %637 = load float, ptr %ma, align 4
  %638 = load float, ptr %mb, align 4
  %cmp1011 = fcmp olt float %637, %638
  br i1 %cmp1011, label %cond.true1013, label %cond.false1014

cond.true1013:                                    ; preds = %for.end1010
  %639 = load float, ptr %ma, align 4
  br label %cond.end1015

cond.false1014:                                   ; preds = %for.end1010
  %640 = load float, ptr %mb, align 4
  br label %cond.end1015

cond.end1015:                                     ; preds = %cond.false1014, %cond.true1013
  %cond1016 = phi float [ %639, %cond.true1013 ], [ %640, %cond.false1014 ]
  store float %cond1016, ptr %mn, align 4
  %641 = load float, ptr %mn, align 4
  %642 = load float, ptr %mc, align 4
  %cmp1017 = fcmp olt float %641, %642
  br i1 %cmp1017, label %cond.true1019, label %cond.false1020

cond.true1019:                                    ; preds = %cond.end1015
  %643 = load float, ptr %mn, align 4
  br label %cond.end1021

cond.false1020:                                   ; preds = %cond.end1015
  %644 = load float, ptr %mc, align 4
  br label %cond.end1021

cond.end1021:                                     ; preds = %cond.false1020, %cond.true1019
  %cond1022 = phi float [ %643, %cond.true1019 ], [ %644, %cond.false1020 ]
  store float %cond1022, ptr %mn, align 4
  %645 = load float, ptr %ma, align 4
  %646 = load float, ptr %mb, align 4
  %cmp1023 = fcmp ogt float %645, %646
  br i1 %cmp1023, label %cond.true1025, label %cond.false1026

cond.true1025:                                    ; preds = %cond.end1021
  %647 = load float, ptr %ma, align 4
  br label %cond.end1027

cond.false1026:                                   ; preds = %cond.end1021
  %648 = load float, ptr %mb, align 4
  br label %cond.end1027

cond.end1027:                                     ; preds = %cond.false1026, %cond.true1025
  %cond1028 = phi float [ %647, %cond.true1025 ], [ %648, %cond.false1026 ]
  store float %cond1028, ptr %mx, align 4
  %649 = load float, ptr %mx, align 4
  %650 = load float, ptr %mc, align 4
  %cmp1029 = fcmp ogt float %649, %650
  br i1 %cmp1029, label %cond.true1031, label %cond.false1032

cond.true1031:                                    ; preds = %cond.end1027
  %651 = load float, ptr %mx, align 4
  br label %cond.end1033

cond.false1032:                                   ; preds = %cond.end1027
  %652 = load float, ptr %mc, align 4
  br label %cond.end1033

cond.end1033:                                     ; preds = %cond.false1032, %cond.true1031
  %cond1034 = phi float [ %651, %cond.true1031 ], [ %652, %cond.false1032 ]
  store float %cond1034, ptr %mx, align 4
  %653 = load i32, ptr %chn, align 4
  %idxprom1035 = sext i32 %653 to i64
  %arrayidx1036 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1035
  store i32 1, ptr %arrayidx1036, align 4
  %654 = load float, ptr %mx, align 4
  %655 = load float, ptr %mn, align 4
  %mul1037 = fmul float 3.000000e+01, %655
  %cmp1038 = fcmp ogt float %654, %mul1037
  br i1 %cmp1038, label %if.then1040, label %if.else1043

if.then1040:                                      ; preds = %cond.end1033
  %656 = load i32, ptr %chn, align 4
  %idxprom1041 = sext i32 %656 to i64
  %arrayidx1042 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1041
  store i32 0, ptr %arrayidx1042, align 4
  br label %if.end1056

if.else1043:                                      ; preds = %cond.end1033
  %657 = load float, ptr %mx, align 4
  %658 = load float, ptr %mn, align 4
  %mul1044 = fmul float 1.000000e+01, %658
  %cmp1045 = fcmp ogt float %657, %mul1044
  br i1 %cmp1045, label %land.lhs.true1047, label %if.end1055

land.lhs.true1047:                                ; preds = %if.else1043
  %659 = load i32, ptr %chn, align 4
  %idxprom1048 = sext i32 %659 to i64
  %arrayidx1049 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %idxprom1048
  %660 = load double, ptr %arrayidx1049, align 8
  %cmp1050 = fcmp ogt double %660, 1.000000e+03
  br i1 %cmp1050, label %if.then1052, label %if.end1055

if.then1052:                                      ; preds = %land.lhs.true1047
  %661 = load i32, ptr %chn, align 4
  %idxprom1053 = sext i32 %661 to i64
  %arrayidx1054 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1053
  store i32 0, ptr %arrayidx1054, align 4
  br label %if.end1055

if.end1055:                                       ; preds = %if.then1052, %land.lhs.true1047, %if.else1043
  br label %if.end1056

if.end1056:                                       ; preds = %if.end1055, %if.then1040
  br label %if.end1057

if.end1057:                                       ; preds = %if.end1056, %if.then991
  br label %if.end1058

if.end1058:                                       ; preds = %if.end1057, %if.then983
  br label %if.end1059

if.end1059:                                       ; preds = %if.end1058, %for.end979
  store i32 0, ptr %sb, align 4
  br label %for.cond1060

for.cond1060:                                     ; preds = %for.inc1120, %if.end1059
  %662 = load i32, ptr %sb, align 4
  %cmp1061 = icmp slt i32 %662, 21
  br i1 %cmp1061, label %for.body1063, label %for.end1122

for.body1063:                                     ; preds = %for.cond1060
  %663 = load i32, ptr %sb, align 4
  %idxprom1064 = sext i32 %663 to i64
  %arrayidx1065 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w1_l, i64 0, i64 %idxprom1064
  %664 = load double, ptr %arrayidx1065, align 8
  %665 = load i32, ptr %sb, align 4
  %idxprom1066 = sext i32 %665 to i64
  %arrayidx1067 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %idxprom1066
  %666 = load i32, ptr %arrayidx1067, align 4
  %idxprom1068 = sext i32 %666 to i64
  %arrayidx1069 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1068
  %667 = load double, ptr %arrayidx1069, align 8
  %668 = load i32, ptr %sb, align 4
  %idxprom1071 = sext i32 %668 to i64
  %arrayidx1072 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 %idxprom1071
  %669 = load double, ptr %arrayidx1072, align 8
  %670 = load i32, ptr %sb, align 4
  %idxprom1073 = sext i32 %670 to i64
  %arrayidx1074 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %idxprom1073
  %671 = load i32, ptr %arrayidx1074, align 4
  %idxprom1075 = sext i32 %671 to i64
  %arrayidx1076 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1075
  %672 = load double, ptr %arrayidx1076, align 8
  %mul1077 = fmul double %669, %672
  %673 = call double @llvm.fmuladd.f64(double %664, double %667, double %mul1077)
  store double %673, ptr %enn, align 8
  %674 = load i32, ptr %sb, align 4
  %idxprom1078 = sext i32 %674 to i64
  %arrayidx1079 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w1_l, i64 0, i64 %idxprom1078
  %675 = load double, ptr %arrayidx1079, align 8
  %676 = load i32, ptr %sb, align 4
  %idxprom1080 = sext i32 %676 to i64
  %arrayidx1081 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %idxprom1080
  %677 = load i32, ptr %arrayidx1081, align 4
  %idxprom1082 = sext i32 %677 to i64
  %arrayidx1083 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1082
  %678 = load double, ptr %arrayidx1083, align 8
  %679 = load i32, ptr %sb, align 4
  %idxprom1085 = sext i32 %679 to i64
  %arrayidx1086 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 %idxprom1085
  %680 = load double, ptr %arrayidx1086, align 8
  %681 = load i32, ptr %sb, align 4
  %idxprom1087 = sext i32 %681 to i64
  %arrayidx1088 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %idxprom1087
  %682 = load i32, ptr %arrayidx1088, align 4
  %idxprom1089 = sext i32 %682 to i64
  %arrayidx1090 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1089
  %683 = load double, ptr %arrayidx1090, align 8
  %mul1091 = fmul double %680, %683
  %684 = call double @llvm.fmuladd.f64(double %675, double %678, double %mul1091)
  store double %684, ptr %thmm, align 8
  %685 = load i32, ptr %sb, align 4
  %idxprom1092 = sext i32 %685 to i64
  %arrayidx1093 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %idxprom1092
  %686 = load i32, ptr %arrayidx1093, align 4
  %add1094 = add nsw i32 %686, 1
  store i32 %add1094, ptr %b, align 4
  br label %for.cond1095

for.cond1095:                                     ; preds = %for.inc1107, %for.body1063
  %687 = load i32, ptr %b, align 4
  %688 = load i32, ptr %sb, align 4
  %idxprom1096 = sext i32 %688 to i64
  %arrayidx1097 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %idxprom1096
  %689 = load i32, ptr %arrayidx1097, align 4
  %cmp1098 = icmp slt i32 %687, %689
  br i1 %cmp1098, label %for.body1100, label %for.end1109

for.body1100:                                     ; preds = %for.cond1095
  %690 = load i32, ptr %b, align 4
  %idxprom1101 = sext i32 %690 to i64
  %arrayidx1102 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1101
  %691 = load double, ptr %arrayidx1102, align 8
  %692 = load double, ptr %enn, align 8
  %add1103 = fadd double %692, %691
  store double %add1103, ptr %enn, align 8
  %693 = load i32, ptr %b, align 4
  %idxprom1104 = sext i32 %693 to i64
  %arrayidx1105 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1104
  %694 = load double, ptr %arrayidx1105, align 8
  %695 = load double, ptr %thmm, align 8
  %add1106 = fadd double %695, %694
  store double %add1106, ptr %thmm, align 8
  br label %for.inc1107

for.inc1107:                                      ; preds = %for.body1100
  %696 = load i32, ptr %b, align 4
  %inc1108 = add nsw i32 %696, 1
  store i32 %inc1108, ptr %b, align 4
  br label %for.cond1095, !llvm.loop !41

for.end1109:                                      ; preds = %for.cond1095
  %697 = load double, ptr %enn, align 8
  %698 = load i32, ptr %chn, align 4
  %idxprom1110 = sext i32 %698 to i64
  %arrayidx1111 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1110
  %l1112 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1111, i32 0, i32 0
  %699 = load i32, ptr %sb, align 4
  %idxprom1113 = sext i32 %699 to i64
  %arrayidx1114 = getelementptr inbounds [22 x double], ptr %l1112, i64 0, i64 %idxprom1113
  store double %697, ptr %arrayidx1114, align 8
  %700 = load double, ptr %thmm, align 8
  %701 = load i32, ptr %chn, align 4
  %idxprom1115 = sext i32 %701 to i64
  %arrayidx1116 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1115
  %l1117 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1116, i32 0, i32 0
  %702 = load i32, ptr %sb, align 4
  %idxprom1118 = sext i32 %702 to i64
  %arrayidx1119 = getelementptr inbounds [22 x double], ptr %l1117, i64 0, i64 %idxprom1118
  store double %700, ptr %arrayidx1119, align 8
  br label %for.inc1120

for.inc1120:                                      ; preds = %for.end1109
  %703 = load i32, ptr %sb, align 4
  %inc1121 = add nsw i32 %703, 1
  store i32 %inc1121, ptr %sb, align 4
  br label %for.cond1060, !llvm.loop !42

for.end1122:                                      ; preds = %for.cond1060
  store i32 0, ptr %sblock, align 4
  br label %for.cond1123

for.cond1123:                                     ; preds = %for.inc1267, %for.end1122
  %704 = load i32, ptr %sblock, align 4
  %cmp1124 = icmp slt i32 %704, 3
  br i1 %cmp1124, label %for.body1126, label %for.end1269

for.body1126:                                     ; preds = %for.cond1123
  store i32 0, ptr %j, align 4
  store i32 0, ptr %b, align 4
  br label %for.cond1127

for.cond1127:                                     ; preds = %for.inc1156, %for.body1126
  %705 = load i32, ptr %b, align 4
  %706 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4
  %cmp1128 = icmp slt i32 %705, %706
  br i1 %cmp1128, label %for.body1130, label %for.end1158

for.body1130:                                     ; preds = %for.cond1127
  %707 = load i32, ptr %sblock, align 4
  %idxprom1133 = sext i32 %707 to i64
  %arrayidx1134 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom1133
  %708 = load i32, ptr %j, align 4
  %inc1135 = add nsw i32 %708, 1
  store i32 %inc1135, ptr %j, align 4
  %idxprom1136 = sext i32 %708 to i64
  %arrayidx1137 = getelementptr inbounds [129 x float], ptr %arrayidx1134, i64 0, i64 %idxprom1136
  %709 = load float, ptr %arrayidx1137, align 4
  store float %709, ptr %ecb1132, align 4
  %710 = load i32, ptr %b, align 4
  %idxprom1138 = sext i32 %710 to i64
  %arrayidx1139 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %idxprom1138
  %711 = load i32, ptr %arrayidx1139, align 4
  store i32 %711, ptr %i1131, align 4
  br label %for.cond1140

for.cond1140:                                     ; preds = %for.inc1150, %for.body1130
  %712 = load i32, ptr %i1131, align 4
  %cmp1141 = icmp sgt i32 %712, 0
  br i1 %cmp1141, label %for.body1143, label %for.end1152

for.body1143:                                     ; preds = %for.cond1140
  %713 = load i32, ptr %sblock, align 4
  %idxprom1144 = sext i32 %713 to i64
  %arrayidx1145 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %idxprom1144
  %714 = load i32, ptr %j, align 4
  %inc1146 = add nsw i32 %714, 1
  store i32 %inc1146, ptr %j, align 4
  %idxprom1147 = sext i32 %714 to i64
  %arrayidx1148 = getelementptr inbounds [129 x float], ptr %arrayidx1145, i64 0, i64 %idxprom1147
  %715 = load float, ptr %arrayidx1148, align 4
  %716 = load float, ptr %ecb1132, align 4
  %add1149 = fadd float %716, %715
  store float %add1149, ptr %ecb1132, align 4
  br label %for.inc1150

for.inc1150:                                      ; preds = %for.body1143
  %717 = load i32, ptr %i1131, align 4
  %dec1151 = add nsw i32 %717, -1
  store i32 %dec1151, ptr %i1131, align 4
  br label %for.cond1140, !llvm.loop !43

for.end1152:                                      ; preds = %for.cond1140
  %718 = load float, ptr %ecb1132, align 4
  %conv1153 = fpext float %718 to double
  %719 = load i32, ptr %b, align 4
  %idxprom1154 = sext i32 %719 to i64
  %arrayidx1155 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1154
  store double %conv1153, ptr %arrayidx1155, align 8
  br label %for.inc1156

for.inc1156:                                      ; preds = %for.end1152
  %720 = load i32, ptr %b, align 4
  %inc1157 = add nsw i32 %720, 1
  store i32 %inc1157, ptr %b, align 4
  br label %for.cond1127, !llvm.loop !44

for.end1158:                                      ; preds = %for.cond1127
  store i32 0, ptr %b, align 4
  br label %for.cond1159

for.cond1159:                                     ; preds = %for.inc1196, %for.end1158
  %721 = load i32, ptr %b, align 4
  %722 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %cmp1160 = icmp slt i32 %721, %722
  br i1 %cmp1160, label %for.body1162, label %for.end1198

for.body1162:                                     ; preds = %for.cond1159
  store double 0.000000e+00, ptr %ecb1163, align 8
  %723 = load i32, ptr %b, align 4
  %idxprom1164 = sext i32 %723 to i64
  %arrayidx1165 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom1164
  %arrayidx1166 = getelementptr inbounds [2 x i32], ptr %arrayidx1165, i64 0, i64 0
  %724 = load i32, ptr %arrayidx1166, align 4
  store i32 %724, ptr %k, align 4
  br label %for.cond1167

for.cond1167:                                     ; preds = %for.inc1181, %for.body1162
  %725 = load i32, ptr %k, align 4
  %726 = load i32, ptr %b, align 4
  %idxprom1168 = sext i32 %726 to i64
  %arrayidx1169 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %idxprom1168
  %arrayidx1170 = getelementptr inbounds [2 x i32], ptr %arrayidx1169, i64 0, i64 1
  %727 = load i32, ptr %arrayidx1170, align 4
  %cmp1171 = icmp sle i32 %725, %727
  br i1 %cmp1171, label %for.body1173, label %for.end1183

for.body1173:                                     ; preds = %for.cond1167
  %728 = load i32, ptr %b, align 4
  %idxprom1174 = sext i32 %728 to i64
  %arrayidx1175 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %idxprom1174
  %729 = load i32, ptr %k, align 4
  %idxprom1176 = sext i32 %729 to i64
  %arrayidx1177 = getelementptr inbounds [64 x double], ptr %arrayidx1175, i64 0, i64 %idxprom1176
  %730 = load double, ptr %arrayidx1177, align 8
  %731 = load i32, ptr %k, align 4
  %idxprom1178 = sext i32 %731 to i64
  %arrayidx1179 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1178
  %732 = load double, ptr %arrayidx1179, align 8
  %733 = load double, ptr %ecb1163, align 8
  %734 = call double @llvm.fmuladd.f64(double %730, double %732, double %733)
  store double %734, ptr %ecb1163, align 8
  br label %for.inc1181

for.inc1181:                                      ; preds = %for.body1173
  %735 = load i32, ptr %k, align 4
  %inc1182 = add nsw i32 %735, 1
  store i32 %inc1182, ptr %k, align 4
  br label %for.cond1167, !llvm.loop !45

for.end1183:                                      ; preds = %for.cond1167
  %736 = load i32, ptr %b, align 4
  %idxprom1184 = sext i32 %736 to i64
  %arrayidx1185 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_s, i64 0, i64 %idxprom1184
  %737 = load double, ptr %arrayidx1185, align 8
  %738 = load double, ptr %ecb1163, align 8
  %cmp1186 = fcmp ogt double %737, %738
  br i1 %cmp1186, label %cond.true1188, label %cond.false1191

cond.true1188:                                    ; preds = %for.end1183
  %739 = load i32, ptr %b, align 4
  %idxprom1189 = sext i32 %739 to i64
  %arrayidx1190 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_s, i64 0, i64 %idxprom1189
  %740 = load double, ptr %arrayidx1190, align 8
  br label %cond.end1192

cond.false1191:                                   ; preds = %for.end1183
  %741 = load double, ptr %ecb1163, align 8
  br label %cond.end1192

cond.end1192:                                     ; preds = %cond.false1191, %cond.true1188
  %cond1193 = phi double [ %740, %cond.true1188 ], [ %741, %cond.false1191 ]
  %742 = load i32, ptr %b, align 4
  %idxprom1194 = sext i32 %742 to i64
  %arrayidx1195 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1194
  store double %cond1193, ptr %arrayidx1195, align 8
  br label %for.inc1196

for.inc1196:                                      ; preds = %cond.end1192
  %743 = load i32, ptr %b, align 4
  %inc1197 = add nsw i32 %743, 1
  store i32 %inc1197, ptr %b, align 4
  br label %for.cond1159, !llvm.loop !46

for.end1198:                                      ; preds = %for.cond1159
  store i32 0, ptr %sb, align 4
  br label %for.cond1199

for.cond1199:                                     ; preds = %for.inc1264, %for.end1198
  %744 = load i32, ptr %sb, align 4
  %cmp1200 = icmp slt i32 %744, 12
  br i1 %cmp1200, label %for.body1202, label %for.end1266

for.body1202:                                     ; preds = %for.cond1199
  %745 = load i32, ptr %sb, align 4
  %idxprom1204 = sext i32 %745 to i64
  %arrayidx1205 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w1_s, i64 0, i64 %idxprom1204
  %746 = load double, ptr %arrayidx1205, align 8
  %747 = load i32, ptr %sb, align 4
  %idxprom1206 = sext i32 %747 to i64
  %arrayidx1207 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %idxprom1206
  %748 = load i32, ptr %arrayidx1207, align 4
  %idxprom1208 = sext i32 %748 to i64
  %arrayidx1209 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1208
  %749 = load double, ptr %arrayidx1209, align 8
  %750 = load i32, ptr %sb, align 4
  %idxprom1211 = sext i32 %750 to i64
  %arrayidx1212 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 %idxprom1211
  %751 = load double, ptr %arrayidx1212, align 8
  %752 = load i32, ptr %sb, align 4
  %idxprom1213 = sext i32 %752 to i64
  %arrayidx1214 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %idxprom1213
  %753 = load i32, ptr %arrayidx1214, align 4
  %idxprom1215 = sext i32 %753 to i64
  %arrayidx1216 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1215
  %754 = load double, ptr %arrayidx1216, align 8
  %mul1217 = fmul double %751, %754
  %755 = call double @llvm.fmuladd.f64(double %746, double %749, double %mul1217)
  store double %755, ptr %enn1203, align 8
  %756 = load i32, ptr %sb, align 4
  %idxprom1219 = sext i32 %756 to i64
  %arrayidx1220 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w1_s, i64 0, i64 %idxprom1219
  %757 = load double, ptr %arrayidx1220, align 8
  %758 = load i32, ptr %sb, align 4
  %idxprom1221 = sext i32 %758 to i64
  %arrayidx1222 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %idxprom1221
  %759 = load i32, ptr %arrayidx1222, align 4
  %idxprom1223 = sext i32 %759 to i64
  %arrayidx1224 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1223
  %760 = load double, ptr %arrayidx1224, align 8
  %761 = load i32, ptr %sb, align 4
  %idxprom1226 = sext i32 %761 to i64
  %arrayidx1227 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 %idxprom1226
  %762 = load double, ptr %arrayidx1227, align 8
  %763 = load i32, ptr %sb, align 4
  %idxprom1228 = sext i32 %763 to i64
  %arrayidx1229 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %idxprom1228
  %764 = load i32, ptr %arrayidx1229, align 4
  %idxprom1230 = sext i32 %764 to i64
  %arrayidx1231 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1230
  %765 = load double, ptr %arrayidx1231, align 8
  %mul1232 = fmul double %762, %765
  %766 = call double @llvm.fmuladd.f64(double %757, double %760, double %mul1232)
  store double %766, ptr %thmm1218, align 8
  %767 = load i32, ptr %sb, align 4
  %idxprom1233 = sext i32 %767 to i64
  %arrayidx1234 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %idxprom1233
  %768 = load i32, ptr %arrayidx1234, align 4
  %add1235 = add nsw i32 %768, 1
  store i32 %add1235, ptr %b, align 4
  br label %for.cond1236

for.cond1236:                                     ; preds = %for.inc1248, %for.body1202
  %769 = load i32, ptr %b, align 4
  %770 = load i32, ptr %sb, align 4
  %idxprom1237 = sext i32 %770 to i64
  %arrayidx1238 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %idxprom1237
  %771 = load i32, ptr %arrayidx1238, align 4
  %cmp1239 = icmp slt i32 %769, %771
  br i1 %cmp1239, label %for.body1241, label %for.end1250

for.body1241:                                     ; preds = %for.cond1236
  %772 = load i32, ptr %b, align 4
  %idxprom1242 = sext i32 %772 to i64
  %arrayidx1243 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1242
  %773 = load double, ptr %arrayidx1243, align 8
  %774 = load double, ptr %enn1203, align 8
  %add1244 = fadd double %774, %773
  store double %add1244, ptr %enn1203, align 8
  %775 = load i32, ptr %b, align 4
  %idxprom1245 = sext i32 %775 to i64
  %arrayidx1246 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1245
  %776 = load double, ptr %arrayidx1246, align 8
  %777 = load double, ptr %thmm1218, align 8
  %add1247 = fadd double %777, %776
  store double %add1247, ptr %thmm1218, align 8
  br label %for.inc1248

for.inc1248:                                      ; preds = %for.body1241
  %778 = load i32, ptr %b, align 4
  %inc1249 = add nsw i32 %778, 1
  store i32 %inc1249, ptr %b, align 4
  br label %for.cond1236, !llvm.loop !47

for.end1250:                                      ; preds = %for.cond1236
  %779 = load double, ptr %enn1203, align 8
  %780 = load i32, ptr %chn, align 4
  %idxprom1251 = sext i32 %780 to i64
  %arrayidx1252 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1251
  %s = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1252, i32 0, i32 1
  %781 = load i32, ptr %sb, align 4
  %idxprom1253 = sext i32 %781 to i64
  %arrayidx1254 = getelementptr inbounds [13 x [3 x double]], ptr %s, i64 0, i64 %idxprom1253
  %782 = load i32, ptr %sblock, align 4
  %idxprom1255 = sext i32 %782 to i64
  %arrayidx1256 = getelementptr inbounds [3 x double], ptr %arrayidx1254, i64 0, i64 %idxprom1255
  store double %779, ptr %arrayidx1256, align 8
  %783 = load double, ptr %thmm1218, align 8
  %784 = load i32, ptr %chn, align 4
  %idxprom1257 = sext i32 %784 to i64
  %arrayidx1258 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1257
  %s1259 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1258, i32 0, i32 1
  %785 = load i32, ptr %sb, align 4
  %idxprom1260 = sext i32 %785 to i64
  %arrayidx1261 = getelementptr inbounds [13 x [3 x double]], ptr %s1259, i64 0, i64 %idxprom1260
  %786 = load i32, ptr %sblock, align 4
  %idxprom1262 = sext i32 %786 to i64
  %arrayidx1263 = getelementptr inbounds [3 x double], ptr %arrayidx1261, i64 0, i64 %idxprom1262
  store double %783, ptr %arrayidx1263, align 8
  br label %for.inc1264

for.inc1264:                                      ; preds = %for.end1250
  %787 = load i32, ptr %sb, align 4
  %inc1265 = add nsw i32 %787, 1
  store i32 %inc1265, ptr %sb, align 4
  br label %for.cond1199, !llvm.loop !48

for.end1266:                                      ; preds = %for.cond1199
  br label %for.inc1267

for.inc1267:                                      ; preds = %for.end1266
  %788 = load i32, ptr %sblock, align 4
  %inc1268 = add nsw i32 %788, 1
  store i32 %inc1268, ptr %sblock, align 4
  br label %for.cond1123, !llvm.loop !49

for.end1269:                                      ; preds = %for.cond1123
  br label %for.inc1270

for.inc1270:                                      ; preds = %for.end1269
  %789 = load i32, ptr %chn, align 4
  %inc1271 = add nsw i32 %789, 1
  store i32 %inc1271, ptr %chn, align 4
  br label %for.cond299, !llvm.loop !50

for.end1272:                                      ; preds = %for.cond299
  %790 = load i32, ptr %numchn, align 4
  %cmp1273 = icmp eq i32 %790, 4
  br i1 %cmp1273, label %if.then1275, label %if.end1616

if.then1275:                                      ; preds = %for.end1272
  store i32 2, ptr %chmid, align 4
  store i32 3, ptr %chside, align 4
  store i32 0, ptr %sb, align 4
  br label %for.cond1277

for.cond1277:                                     ; preds = %for.inc1420, %if.then1275
  %791 = load i32, ptr %sb, align 4
  %cmp1278 = icmp slt i32 %791, 21
  br i1 %cmp1278, label %for.body1280, label %for.end1422

for.body1280:                                     ; preds = %for.cond1277
  %792 = load i32, ptr %sb, align 4
  %idxprom1281 = sext i32 %792 to i64
  %arrayidx1282 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1281
  %793 = load double, ptr %arrayidx1282, align 8
  %794 = load i32, ptr %sb, align 4
  %idxprom1283 = sext i32 %794 to i64
  %arrayidx1284 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1283
  %795 = load double, ptr %arrayidx1284, align 8
  %mul1285 = fmul double 1.580000e+00, %795
  %cmp1286 = fcmp ole double %793, %mul1285
  br i1 %cmp1286, label %land.lhs.true1288, label %if.end1419

land.lhs.true1288:                                ; preds = %for.body1280
  %796 = load i32, ptr %sb, align 4
  %idxprom1289 = sext i32 %796 to i64
  %arrayidx1290 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1289
  %797 = load double, ptr %arrayidx1290, align 8
  %798 = load i32, ptr %sb, align 4
  %idxprom1291 = sext i32 %798 to i64
  %arrayidx1292 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1291
  %799 = load double, ptr %arrayidx1292, align 8
  %mul1293 = fmul double 1.580000e+00, %799
  %cmp1294 = fcmp ole double %797, %mul1293
  br i1 %cmp1294, label %if.then1296, label %if.end1419

if.then1296:                                      ; preds = %land.lhs.true1288
  %800 = load i32, ptr %sb, align 4
  %idxprom1297 = sext i32 %800 to i64
  %arrayidx1298 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %idxprom1297
  %801 = load double, ptr %arrayidx1298, align 8
  %802 = load i32, ptr %chside, align 4
  %idxprom1299 = sext i32 %802 to i64
  %arrayidx1300 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1299
  %l1301 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1300, i32 0, i32 0
  %803 = load i32, ptr %sb, align 4
  %idxprom1302 = sext i32 %803 to i64
  %arrayidx1303 = getelementptr inbounds [22 x double], ptr %l1301, i64 0, i64 %idxprom1302
  %804 = load double, ptr %arrayidx1303, align 8
  %mul1304 = fmul double %801, %804
  store double %mul1304, ptr %mld1276, align 8
  %805 = load i32, ptr %chmid, align 4
  %idxprom1305 = sext i32 %805 to i64
  %arrayidx1306 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1305
  %l1307 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1306, i32 0, i32 0
  %806 = load i32, ptr %sb, align 4
  %idxprom1308 = sext i32 %806 to i64
  %arrayidx1309 = getelementptr inbounds [22 x double], ptr %l1307, i64 0, i64 %idxprom1308
  %807 = load double, ptr %arrayidx1309, align 8
  %808 = load i32, ptr %chside, align 4
  %idxprom1310 = sext i32 %808 to i64
  %arrayidx1311 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1310
  %l1312 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1311, i32 0, i32 0
  %809 = load i32, ptr %sb, align 4
  %idxprom1313 = sext i32 %809 to i64
  %arrayidx1314 = getelementptr inbounds [22 x double], ptr %l1312, i64 0, i64 %idxprom1313
  %810 = load double, ptr %arrayidx1314, align 8
  %811 = load double, ptr %mld1276, align 8
  %cmp1315 = fcmp olt double %810, %811
  br i1 %cmp1315, label %cond.true1317, label %cond.false1323

cond.true1317:                                    ; preds = %if.then1296
  %812 = load i32, ptr %chside, align 4
  %idxprom1318 = sext i32 %812 to i64
  %arrayidx1319 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1318
  %l1320 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1319, i32 0, i32 0
  %813 = load i32, ptr %sb, align 4
  %idxprom1321 = sext i32 %813 to i64
  %arrayidx1322 = getelementptr inbounds [22 x double], ptr %l1320, i64 0, i64 %idxprom1321
  %814 = load double, ptr %arrayidx1322, align 8
  br label %cond.end1324

cond.false1323:                                   ; preds = %if.then1296
  %815 = load double, ptr %mld1276, align 8
  br label %cond.end1324

cond.end1324:                                     ; preds = %cond.false1323, %cond.true1317
  %cond1325 = phi double [ %814, %cond.true1317 ], [ %815, %cond.false1323 ]
  %cmp1326 = fcmp ogt double %807, %cond1325
  br i1 %cmp1326, label %cond.true1328, label %cond.false1334

cond.true1328:                                    ; preds = %cond.end1324
  %816 = load i32, ptr %chmid, align 4
  %idxprom1329 = sext i32 %816 to i64
  %arrayidx1330 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1329
  %l1331 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1330, i32 0, i32 0
  %817 = load i32, ptr %sb, align 4
  %idxprom1332 = sext i32 %817 to i64
  %arrayidx1333 = getelementptr inbounds [22 x double], ptr %l1331, i64 0, i64 %idxprom1332
  %818 = load double, ptr %arrayidx1333, align 8
  br label %cond.end1351

cond.false1334:                                   ; preds = %cond.end1324
  %819 = load i32, ptr %chside, align 4
  %idxprom1335 = sext i32 %819 to i64
  %arrayidx1336 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1335
  %l1337 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1336, i32 0, i32 0
  %820 = load i32, ptr %sb, align 4
  %idxprom1338 = sext i32 %820 to i64
  %arrayidx1339 = getelementptr inbounds [22 x double], ptr %l1337, i64 0, i64 %idxprom1338
  %821 = load double, ptr %arrayidx1339, align 8
  %822 = load double, ptr %mld1276, align 8
  %cmp1340 = fcmp olt double %821, %822
  br i1 %cmp1340, label %cond.true1342, label %cond.false1348

cond.true1342:                                    ; preds = %cond.false1334
  %823 = load i32, ptr %chside, align 4
  %idxprom1343 = sext i32 %823 to i64
  %arrayidx1344 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1343
  %l1345 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1344, i32 0, i32 0
  %824 = load i32, ptr %sb, align 4
  %idxprom1346 = sext i32 %824 to i64
  %arrayidx1347 = getelementptr inbounds [22 x double], ptr %l1345, i64 0, i64 %idxprom1346
  %825 = load double, ptr %arrayidx1347, align 8
  br label %cond.end1349

cond.false1348:                                   ; preds = %cond.false1334
  %826 = load double, ptr %mld1276, align 8
  br label %cond.end1349

cond.end1349:                                     ; preds = %cond.false1348, %cond.true1342
  %cond1350 = phi double [ %825, %cond.true1342 ], [ %826, %cond.false1348 ]
  br label %cond.end1351

cond.end1351:                                     ; preds = %cond.end1349, %cond.true1328
  %cond1352 = phi double [ %818, %cond.true1328 ], [ %cond1350, %cond.end1349 ]
  store double %cond1352, ptr %rmid, align 8
  %827 = load i32, ptr %sb, align 4
  %idxprom1353 = sext i32 %827 to i64
  %arrayidx1354 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %idxprom1353
  %828 = load double, ptr %arrayidx1354, align 8
  %829 = load i32, ptr %chmid, align 4
  %idxprom1355 = sext i32 %829 to i64
  %arrayidx1356 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1355
  %l1357 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1356, i32 0, i32 0
  %830 = load i32, ptr %sb, align 4
  %idxprom1358 = sext i32 %830 to i64
  %arrayidx1359 = getelementptr inbounds [22 x double], ptr %l1357, i64 0, i64 %idxprom1358
  %831 = load double, ptr %arrayidx1359, align 8
  %mul1360 = fmul double %828, %831
  store double %mul1360, ptr %mld1276, align 8
  %832 = load i32, ptr %chside, align 4
  %idxprom1361 = sext i32 %832 to i64
  %arrayidx1362 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1361
  %l1363 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1362, i32 0, i32 0
  %833 = load i32, ptr %sb, align 4
  %idxprom1364 = sext i32 %833 to i64
  %arrayidx1365 = getelementptr inbounds [22 x double], ptr %l1363, i64 0, i64 %idxprom1364
  %834 = load double, ptr %arrayidx1365, align 8
  %835 = load i32, ptr %chmid, align 4
  %idxprom1366 = sext i32 %835 to i64
  %arrayidx1367 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1366
  %l1368 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1367, i32 0, i32 0
  %836 = load i32, ptr %sb, align 4
  %idxprom1369 = sext i32 %836 to i64
  %arrayidx1370 = getelementptr inbounds [22 x double], ptr %l1368, i64 0, i64 %idxprom1369
  %837 = load double, ptr %arrayidx1370, align 8
  %838 = load double, ptr %mld1276, align 8
  %cmp1371 = fcmp olt double %837, %838
  br i1 %cmp1371, label %cond.true1373, label %cond.false1379

cond.true1373:                                    ; preds = %cond.end1351
  %839 = load i32, ptr %chmid, align 4
  %idxprom1374 = sext i32 %839 to i64
  %arrayidx1375 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1374
  %l1376 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1375, i32 0, i32 0
  %840 = load i32, ptr %sb, align 4
  %idxprom1377 = sext i32 %840 to i64
  %arrayidx1378 = getelementptr inbounds [22 x double], ptr %l1376, i64 0, i64 %idxprom1377
  %841 = load double, ptr %arrayidx1378, align 8
  br label %cond.end1380

cond.false1379:                                   ; preds = %cond.end1351
  %842 = load double, ptr %mld1276, align 8
  br label %cond.end1380

cond.end1380:                                     ; preds = %cond.false1379, %cond.true1373
  %cond1381 = phi double [ %841, %cond.true1373 ], [ %842, %cond.false1379 ]
  %cmp1382 = fcmp ogt double %834, %cond1381
  br i1 %cmp1382, label %cond.true1384, label %cond.false1390

cond.true1384:                                    ; preds = %cond.end1380
  %843 = load i32, ptr %chside, align 4
  %idxprom1385 = sext i32 %843 to i64
  %arrayidx1386 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1385
  %l1387 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1386, i32 0, i32 0
  %844 = load i32, ptr %sb, align 4
  %idxprom1388 = sext i32 %844 to i64
  %arrayidx1389 = getelementptr inbounds [22 x double], ptr %l1387, i64 0, i64 %idxprom1388
  %845 = load double, ptr %arrayidx1389, align 8
  br label %cond.end1407

cond.false1390:                                   ; preds = %cond.end1380
  %846 = load i32, ptr %chmid, align 4
  %idxprom1391 = sext i32 %846 to i64
  %arrayidx1392 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1391
  %l1393 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1392, i32 0, i32 0
  %847 = load i32, ptr %sb, align 4
  %idxprom1394 = sext i32 %847 to i64
  %arrayidx1395 = getelementptr inbounds [22 x double], ptr %l1393, i64 0, i64 %idxprom1394
  %848 = load double, ptr %arrayidx1395, align 8
  %849 = load double, ptr %mld1276, align 8
  %cmp1396 = fcmp olt double %848, %849
  br i1 %cmp1396, label %cond.true1398, label %cond.false1404

cond.true1398:                                    ; preds = %cond.false1390
  %850 = load i32, ptr %chmid, align 4
  %idxprom1399 = sext i32 %850 to i64
  %arrayidx1400 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1399
  %l1401 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1400, i32 0, i32 0
  %851 = load i32, ptr %sb, align 4
  %idxprom1402 = sext i32 %851 to i64
  %arrayidx1403 = getelementptr inbounds [22 x double], ptr %l1401, i64 0, i64 %idxprom1402
  %852 = load double, ptr %arrayidx1403, align 8
  br label %cond.end1405

cond.false1404:                                   ; preds = %cond.false1390
  %853 = load double, ptr %mld1276, align 8
  br label %cond.end1405

cond.end1405:                                     ; preds = %cond.false1404, %cond.true1398
  %cond1406 = phi double [ %852, %cond.true1398 ], [ %853, %cond.false1404 ]
  br label %cond.end1407

cond.end1407:                                     ; preds = %cond.end1405, %cond.true1384
  %cond1408 = phi double [ %845, %cond.true1384 ], [ %cond1406, %cond.end1405 ]
  store double %cond1408, ptr %rside, align 8
  %854 = load double, ptr %rmid, align 8
  %855 = load i32, ptr %chmid, align 4
  %idxprom1409 = sext i32 %855 to i64
  %arrayidx1410 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1409
  %l1411 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1410, i32 0, i32 0
  %856 = load i32, ptr %sb, align 4
  %idxprom1412 = sext i32 %856 to i64
  %arrayidx1413 = getelementptr inbounds [22 x double], ptr %l1411, i64 0, i64 %idxprom1412
  store double %854, ptr %arrayidx1413, align 8
  %857 = load double, ptr %rside, align 8
  %858 = load i32, ptr %chside, align 4
  %idxprom1414 = sext i32 %858 to i64
  %arrayidx1415 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1414
  %l1416 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1415, i32 0, i32 0
  %859 = load i32, ptr %sb, align 4
  %idxprom1417 = sext i32 %859 to i64
  %arrayidx1418 = getelementptr inbounds [22 x double], ptr %l1416, i64 0, i64 %idxprom1417
  store double %857, ptr %arrayidx1418, align 8
  br label %if.end1419

if.end1419:                                       ; preds = %cond.end1407, %land.lhs.true1288, %for.body1280
  br label %for.inc1420

for.inc1420:                                      ; preds = %if.end1419
  %860 = load i32, ptr %sb, align 4
  %inc1421 = add nsw i32 %860, 1
  store i32 %inc1421, ptr %sb, align 4
  br label %for.cond1277, !llvm.loop !51

for.end1422:                                      ; preds = %for.cond1277
  store i32 0, ptr %sb, align 4
  br label %for.cond1423

for.cond1423:                                     ; preds = %for.inc1613, %for.end1422
  %861 = load i32, ptr %sb, align 4
  %cmp1424 = icmp slt i32 %861, 12
  br i1 %cmp1424, label %for.body1426, label %for.end1615

for.body1426:                                     ; preds = %for.cond1423
  store i32 0, ptr %sblock, align 4
  br label %for.cond1427

for.cond1427:                                     ; preds = %for.inc1610, %for.body1426
  %862 = load i32, ptr %sblock, align 4
  %cmp1428 = icmp slt i32 %862, 3
  br i1 %cmp1428, label %for.body1430, label %for.end1612

for.body1430:                                     ; preds = %for.cond1427
  %863 = load i32, ptr %sb, align 4
  %idxprom1431 = sext i32 %863 to i64
  %arrayidx1432 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds (%struct.III_psy_xmin, ptr @L3psycho_anal.thm, i32 0, i32 1), i64 0, i64 %idxprom1431
  %864 = load i32, ptr %sblock, align 4
  %idxprom1433 = sext i32 %864 to i64
  %arrayidx1434 = getelementptr inbounds [3 x double], ptr %arrayidx1432, i64 0, i64 %idxprom1433
  %865 = load double, ptr %arrayidx1434, align 8
  %866 = load i32, ptr %sb, align 4
  %idxprom1435 = sext i32 %866 to i64
  %arrayidx1436 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1), i64 0, i64 %idxprom1435
  %867 = load i32, ptr %sblock, align 4
  %idxprom1437 = sext i32 %867 to i64
  %arrayidx1438 = getelementptr inbounds [3 x double], ptr %arrayidx1436, i64 0, i64 %idxprom1437
  %868 = load double, ptr %arrayidx1438, align 8
  %mul1439 = fmul double 1.580000e+00, %868
  %cmp1440 = fcmp ole double %865, %mul1439
  br i1 %cmp1440, label %land.lhs.true1442, label %if.end1609

land.lhs.true1442:                                ; preds = %for.body1430
  %869 = load i32, ptr %sb, align 4
  %idxprom1443 = sext i32 %869 to i64
  %arrayidx1444 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1), i64 0, i64 %idxprom1443
  %870 = load i32, ptr %sblock, align 4
  %idxprom1445 = sext i32 %870 to i64
  %arrayidx1446 = getelementptr inbounds [3 x double], ptr %arrayidx1444, i64 0, i64 %idxprom1445
  %871 = load double, ptr %arrayidx1446, align 8
  %872 = load i32, ptr %sb, align 4
  %idxprom1447 = sext i32 %872 to i64
  %arrayidx1448 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds (%struct.III_psy_xmin, ptr @L3psycho_anal.thm, i32 0, i32 1), i64 0, i64 %idxprom1447
  %873 = load i32, ptr %sblock, align 4
  %idxprom1449 = sext i32 %873 to i64
  %arrayidx1450 = getelementptr inbounds [3 x double], ptr %arrayidx1448, i64 0, i64 %idxprom1449
  %874 = load double, ptr %arrayidx1450, align 8
  %mul1451 = fmul double 1.580000e+00, %874
  %cmp1452 = fcmp ole double %871, %mul1451
  br i1 %cmp1452, label %if.then1454, label %if.end1609

if.then1454:                                      ; preds = %land.lhs.true1442
  %875 = load i32, ptr %sb, align 4
  %idxprom1455 = sext i32 %875 to i64
  %arrayidx1456 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %idxprom1455
  %876 = load double, ptr %arrayidx1456, align 8
  %877 = load i32, ptr %chside, align 4
  %idxprom1457 = sext i32 %877 to i64
  %arrayidx1458 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1457
  %s1459 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1458, i32 0, i32 1
  %878 = load i32, ptr %sb, align 4
  %idxprom1460 = sext i32 %878 to i64
  %arrayidx1461 = getelementptr inbounds [13 x [3 x double]], ptr %s1459, i64 0, i64 %idxprom1460
  %879 = load i32, ptr %sblock, align 4
  %idxprom1462 = sext i32 %879 to i64
  %arrayidx1463 = getelementptr inbounds [3 x double], ptr %arrayidx1461, i64 0, i64 %idxprom1462
  %880 = load double, ptr %arrayidx1463, align 8
  %mul1464 = fmul double %876, %880
  store double %mul1464, ptr %mld1276, align 8
  %881 = load i32, ptr %chmid, align 4
  %idxprom1465 = sext i32 %881 to i64
  %arrayidx1466 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1465
  %s1467 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1466, i32 0, i32 1
  %882 = load i32, ptr %sb, align 4
  %idxprom1468 = sext i32 %882 to i64
  %arrayidx1469 = getelementptr inbounds [13 x [3 x double]], ptr %s1467, i64 0, i64 %idxprom1468
  %883 = load i32, ptr %sblock, align 4
  %idxprom1470 = sext i32 %883 to i64
  %arrayidx1471 = getelementptr inbounds [3 x double], ptr %arrayidx1469, i64 0, i64 %idxprom1470
  %884 = load double, ptr %arrayidx1471, align 8
  %885 = load i32, ptr %chside, align 4
  %idxprom1472 = sext i32 %885 to i64
  %arrayidx1473 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1472
  %s1474 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1473, i32 0, i32 1
  %886 = load i32, ptr %sb, align 4
  %idxprom1475 = sext i32 %886 to i64
  %arrayidx1476 = getelementptr inbounds [13 x [3 x double]], ptr %s1474, i64 0, i64 %idxprom1475
  %887 = load i32, ptr %sblock, align 4
  %idxprom1477 = sext i32 %887 to i64
  %arrayidx1478 = getelementptr inbounds [3 x double], ptr %arrayidx1476, i64 0, i64 %idxprom1477
  %888 = load double, ptr %arrayidx1478, align 8
  %889 = load double, ptr %mld1276, align 8
  %cmp1479 = fcmp olt double %888, %889
  br i1 %cmp1479, label %cond.true1481, label %cond.false1489

cond.true1481:                                    ; preds = %if.then1454
  %890 = load i32, ptr %chside, align 4
  %idxprom1482 = sext i32 %890 to i64
  %arrayidx1483 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1482
  %s1484 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1483, i32 0, i32 1
  %891 = load i32, ptr %sb, align 4
  %idxprom1485 = sext i32 %891 to i64
  %arrayidx1486 = getelementptr inbounds [13 x [3 x double]], ptr %s1484, i64 0, i64 %idxprom1485
  %892 = load i32, ptr %sblock, align 4
  %idxprom1487 = sext i32 %892 to i64
  %arrayidx1488 = getelementptr inbounds [3 x double], ptr %arrayidx1486, i64 0, i64 %idxprom1487
  %893 = load double, ptr %arrayidx1488, align 8
  br label %cond.end1490

cond.false1489:                                   ; preds = %if.then1454
  %894 = load double, ptr %mld1276, align 8
  br label %cond.end1490

cond.end1490:                                     ; preds = %cond.false1489, %cond.true1481
  %cond1491 = phi double [ %893, %cond.true1481 ], [ %894, %cond.false1489 ]
  %cmp1492 = fcmp ogt double %884, %cond1491
  br i1 %cmp1492, label %cond.true1494, label %cond.false1502

cond.true1494:                                    ; preds = %cond.end1490
  %895 = load i32, ptr %chmid, align 4
  %idxprom1495 = sext i32 %895 to i64
  %arrayidx1496 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1495
  %s1497 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1496, i32 0, i32 1
  %896 = load i32, ptr %sb, align 4
  %idxprom1498 = sext i32 %896 to i64
  %arrayidx1499 = getelementptr inbounds [13 x [3 x double]], ptr %s1497, i64 0, i64 %idxprom1498
  %897 = load i32, ptr %sblock, align 4
  %idxprom1500 = sext i32 %897 to i64
  %arrayidx1501 = getelementptr inbounds [3 x double], ptr %arrayidx1499, i64 0, i64 %idxprom1500
  %898 = load double, ptr %arrayidx1501, align 8
  br label %cond.end1523

cond.false1502:                                   ; preds = %cond.end1490
  %899 = load i32, ptr %chside, align 4
  %idxprom1503 = sext i32 %899 to i64
  %arrayidx1504 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1503
  %s1505 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1504, i32 0, i32 1
  %900 = load i32, ptr %sb, align 4
  %idxprom1506 = sext i32 %900 to i64
  %arrayidx1507 = getelementptr inbounds [13 x [3 x double]], ptr %s1505, i64 0, i64 %idxprom1506
  %901 = load i32, ptr %sblock, align 4
  %idxprom1508 = sext i32 %901 to i64
  %arrayidx1509 = getelementptr inbounds [3 x double], ptr %arrayidx1507, i64 0, i64 %idxprom1508
  %902 = load double, ptr %arrayidx1509, align 8
  %903 = load double, ptr %mld1276, align 8
  %cmp1510 = fcmp olt double %902, %903
  br i1 %cmp1510, label %cond.true1512, label %cond.false1520

cond.true1512:                                    ; preds = %cond.false1502
  %904 = load i32, ptr %chside, align 4
  %idxprom1513 = sext i32 %904 to i64
  %arrayidx1514 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1513
  %s1515 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1514, i32 0, i32 1
  %905 = load i32, ptr %sb, align 4
  %idxprom1516 = sext i32 %905 to i64
  %arrayidx1517 = getelementptr inbounds [13 x [3 x double]], ptr %s1515, i64 0, i64 %idxprom1516
  %906 = load i32, ptr %sblock, align 4
  %idxprom1518 = sext i32 %906 to i64
  %arrayidx1519 = getelementptr inbounds [3 x double], ptr %arrayidx1517, i64 0, i64 %idxprom1518
  %907 = load double, ptr %arrayidx1519, align 8
  br label %cond.end1521

cond.false1520:                                   ; preds = %cond.false1502
  %908 = load double, ptr %mld1276, align 8
  br label %cond.end1521

cond.end1521:                                     ; preds = %cond.false1520, %cond.true1512
  %cond1522 = phi double [ %907, %cond.true1512 ], [ %908, %cond.false1520 ]
  br label %cond.end1523

cond.end1523:                                     ; preds = %cond.end1521, %cond.true1494
  %cond1524 = phi double [ %898, %cond.true1494 ], [ %cond1522, %cond.end1521 ]
  store double %cond1524, ptr %rmid, align 8
  %909 = load i32, ptr %sb, align 4
  %idxprom1525 = sext i32 %909 to i64
  %arrayidx1526 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %idxprom1525
  %910 = load double, ptr %arrayidx1526, align 8
  %911 = load i32, ptr %chmid, align 4
  %idxprom1527 = sext i32 %911 to i64
  %arrayidx1528 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %idxprom1527
  %s1529 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1528, i32 0, i32 1
  %912 = load i32, ptr %sb, align 4
  %idxprom1530 = sext i32 %912 to i64
  %arrayidx1531 = getelementptr inbounds [13 x [3 x double]], ptr %s1529, i64 0, i64 %idxprom1530
  %913 = load i32, ptr %sblock, align 4
  %idxprom1532 = sext i32 %913 to i64
  %arrayidx1533 = getelementptr inbounds [3 x double], ptr %arrayidx1531, i64 0, i64 %idxprom1532
  %914 = load double, ptr %arrayidx1533, align 8
  %mul1534 = fmul double %910, %914
  store double %mul1534, ptr %mld1276, align 8
  %915 = load i32, ptr %chside, align 4
  %idxprom1535 = sext i32 %915 to i64
  %arrayidx1536 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1535
  %s1537 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1536, i32 0, i32 1
  %916 = load i32, ptr %sb, align 4
  %idxprom1538 = sext i32 %916 to i64
  %arrayidx1539 = getelementptr inbounds [13 x [3 x double]], ptr %s1537, i64 0, i64 %idxprom1538
  %917 = load i32, ptr %sblock, align 4
  %idxprom1540 = sext i32 %917 to i64
  %arrayidx1541 = getelementptr inbounds [3 x double], ptr %arrayidx1539, i64 0, i64 %idxprom1540
  %918 = load double, ptr %arrayidx1541, align 8
  %919 = load i32, ptr %chmid, align 4
  %idxprom1542 = sext i32 %919 to i64
  %arrayidx1543 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1542
  %s1544 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1543, i32 0, i32 1
  %920 = load i32, ptr %sb, align 4
  %idxprom1545 = sext i32 %920 to i64
  %arrayidx1546 = getelementptr inbounds [13 x [3 x double]], ptr %s1544, i64 0, i64 %idxprom1545
  %921 = load i32, ptr %sblock, align 4
  %idxprom1547 = sext i32 %921 to i64
  %arrayidx1548 = getelementptr inbounds [3 x double], ptr %arrayidx1546, i64 0, i64 %idxprom1547
  %922 = load double, ptr %arrayidx1548, align 8
  %923 = load double, ptr %mld1276, align 8
  %cmp1549 = fcmp olt double %922, %923
  br i1 %cmp1549, label %cond.true1551, label %cond.false1559

cond.true1551:                                    ; preds = %cond.end1523
  %924 = load i32, ptr %chmid, align 4
  %idxprom1552 = sext i32 %924 to i64
  %arrayidx1553 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1552
  %s1554 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1553, i32 0, i32 1
  %925 = load i32, ptr %sb, align 4
  %idxprom1555 = sext i32 %925 to i64
  %arrayidx1556 = getelementptr inbounds [13 x [3 x double]], ptr %s1554, i64 0, i64 %idxprom1555
  %926 = load i32, ptr %sblock, align 4
  %idxprom1557 = sext i32 %926 to i64
  %arrayidx1558 = getelementptr inbounds [3 x double], ptr %arrayidx1556, i64 0, i64 %idxprom1557
  %927 = load double, ptr %arrayidx1558, align 8
  br label %cond.end1560

cond.false1559:                                   ; preds = %cond.end1523
  %928 = load double, ptr %mld1276, align 8
  br label %cond.end1560

cond.end1560:                                     ; preds = %cond.false1559, %cond.true1551
  %cond1561 = phi double [ %927, %cond.true1551 ], [ %928, %cond.false1559 ]
  %cmp1562 = fcmp ogt double %918, %cond1561
  br i1 %cmp1562, label %cond.true1564, label %cond.false1572

cond.true1564:                                    ; preds = %cond.end1560
  %929 = load i32, ptr %chside, align 4
  %idxprom1565 = sext i32 %929 to i64
  %arrayidx1566 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1565
  %s1567 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1566, i32 0, i32 1
  %930 = load i32, ptr %sb, align 4
  %idxprom1568 = sext i32 %930 to i64
  %arrayidx1569 = getelementptr inbounds [13 x [3 x double]], ptr %s1567, i64 0, i64 %idxprom1568
  %931 = load i32, ptr %sblock, align 4
  %idxprom1570 = sext i32 %931 to i64
  %arrayidx1571 = getelementptr inbounds [3 x double], ptr %arrayidx1569, i64 0, i64 %idxprom1570
  %932 = load double, ptr %arrayidx1571, align 8
  br label %cond.end1593

cond.false1572:                                   ; preds = %cond.end1560
  %933 = load i32, ptr %chmid, align 4
  %idxprom1573 = sext i32 %933 to i64
  %arrayidx1574 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1573
  %s1575 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1574, i32 0, i32 1
  %934 = load i32, ptr %sb, align 4
  %idxprom1576 = sext i32 %934 to i64
  %arrayidx1577 = getelementptr inbounds [13 x [3 x double]], ptr %s1575, i64 0, i64 %idxprom1576
  %935 = load i32, ptr %sblock, align 4
  %idxprom1578 = sext i32 %935 to i64
  %arrayidx1579 = getelementptr inbounds [3 x double], ptr %arrayidx1577, i64 0, i64 %idxprom1578
  %936 = load double, ptr %arrayidx1579, align 8
  %937 = load double, ptr %mld1276, align 8
  %cmp1580 = fcmp olt double %936, %937
  br i1 %cmp1580, label %cond.true1582, label %cond.false1590

cond.true1582:                                    ; preds = %cond.false1572
  %938 = load i32, ptr %chmid, align 4
  %idxprom1583 = sext i32 %938 to i64
  %arrayidx1584 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1583
  %s1585 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1584, i32 0, i32 1
  %939 = load i32, ptr %sb, align 4
  %idxprom1586 = sext i32 %939 to i64
  %arrayidx1587 = getelementptr inbounds [13 x [3 x double]], ptr %s1585, i64 0, i64 %idxprom1586
  %940 = load i32, ptr %sblock, align 4
  %idxprom1588 = sext i32 %940 to i64
  %arrayidx1589 = getelementptr inbounds [3 x double], ptr %arrayidx1587, i64 0, i64 %idxprom1588
  %941 = load double, ptr %arrayidx1589, align 8
  br label %cond.end1591

cond.false1590:                                   ; preds = %cond.false1572
  %942 = load double, ptr %mld1276, align 8
  br label %cond.end1591

cond.end1591:                                     ; preds = %cond.false1590, %cond.true1582
  %cond1592 = phi double [ %941, %cond.true1582 ], [ %942, %cond.false1590 ]
  br label %cond.end1593

cond.end1593:                                     ; preds = %cond.end1591, %cond.true1564
  %cond1594 = phi double [ %932, %cond.true1564 ], [ %cond1592, %cond.end1591 ]
  store double %cond1594, ptr %rside, align 8
  %943 = load double, ptr %rmid, align 8
  %944 = load i32, ptr %chmid, align 4
  %idxprom1595 = sext i32 %944 to i64
  %arrayidx1596 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1595
  %s1597 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1596, i32 0, i32 1
  %945 = load i32, ptr %sb, align 4
  %idxprom1598 = sext i32 %945 to i64
  %arrayidx1599 = getelementptr inbounds [13 x [3 x double]], ptr %s1597, i64 0, i64 %idxprom1598
  %946 = load i32, ptr %sblock, align 4
  %idxprom1600 = sext i32 %946 to i64
  %arrayidx1601 = getelementptr inbounds [3 x double], ptr %arrayidx1599, i64 0, i64 %idxprom1600
  store double %943, ptr %arrayidx1601, align 8
  %947 = load double, ptr %rside, align 8
  %948 = load i32, ptr %chside, align 4
  %idxprom1602 = sext i32 %948 to i64
  %arrayidx1603 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1602
  %s1604 = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx1603, i32 0, i32 1
  %949 = load i32, ptr %sb, align 4
  %idxprom1605 = sext i32 %949 to i64
  %arrayidx1606 = getelementptr inbounds [13 x [3 x double]], ptr %s1604, i64 0, i64 %idxprom1605
  %950 = load i32, ptr %sblock, align 4
  %idxprom1607 = sext i32 %950 to i64
  %arrayidx1608 = getelementptr inbounds [3 x double], ptr %arrayidx1606, i64 0, i64 %idxprom1607
  store double %947, ptr %arrayidx1608, align 8
  br label %if.end1609

if.end1609:                                       ; preds = %cond.end1593, %land.lhs.true1442, %for.body1430
  br label %for.inc1610

for.inc1610:                                      ; preds = %if.end1609
  %951 = load i32, ptr %sblock, align 4
  %inc1611 = add nsw i32 %951, 1
  store i32 %inc1611, ptr %sblock, align 4
  br label %for.cond1427, !llvm.loop !52

for.end1612:                                      ; preds = %for.cond1427
  br label %for.inc1613

for.inc1613:                                      ; preds = %for.end1612
  %952 = load i32, ptr %sb, align 4
  %inc1614 = add nsw i32 %952, 1
  store i32 %inc1614, ptr %sb, align 4
  br label %for.cond1423, !llvm.loop !53

for.end1615:                                      ; preds = %for.cond1423
  br label %if.end1616

if.end1616:                                       ; preds = %for.end1615, %for.end1272
  %953 = load ptr, ptr %gfp.addr, align 8
  %mode1617 = getelementptr inbounds %struct.lame_global_flags, ptr %953, i32 0, i32 8
  %954 = load i32, ptr %mode1617, align 4
  %cmp1618 = icmp eq i32 %954, 1
  br i1 %cmp1618, label %if.then1620, label %if.end1748

if.then1620:                                      ; preds = %if.end1616
  store double 0.000000e+00, ptr %sidetot, align 8
  store double 0.000000e+00, ptr %tot, align 8
  store i32 5, ptr %sb, align 4
  br label %for.cond1621

for.cond1621:                                     ; preds = %for.inc1662, %if.then1620
  %955 = load i32, ptr %sb, align 4
  %cmp1622 = icmp slt i32 %955, 21
  br i1 %cmp1622, label %for.body1624, label %for.end1664

for.body1624:                                     ; preds = %for.cond1621
  %956 = load i32, ptr %sb, align 4
  %idxprom1625 = sext i32 %956 to i64
  %arrayidx1626 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1625
  %957 = load double, ptr %arrayidx1626, align 8
  %958 = load i32, ptr %sb, align 4
  %idxprom1627 = sext i32 %958 to i64
  %arrayidx1628 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1627
  %959 = load double, ptr %arrayidx1628, align 8
  %cmp1629 = fcmp olt double %957, %959
  br i1 %cmp1629, label %cond.true1631, label %cond.false1634

cond.true1631:                                    ; preds = %for.body1624
  %960 = load i32, ptr %sb, align 4
  %idxprom1632 = sext i32 %960 to i64
  %arrayidx1633 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1632
  %961 = load double, ptr %arrayidx1633, align 8
  br label %cond.end1637

cond.false1634:                                   ; preds = %for.body1624
  %962 = load i32, ptr %sb, align 4
  %idxprom1635 = sext i32 %962 to i64
  %arrayidx1636 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1635
  %963 = load double, ptr %arrayidx1636, align 8
  br label %cond.end1637

cond.end1637:                                     ; preds = %cond.false1634, %cond.true1631
  %cond1638 = phi double [ %961, %cond.true1631 ], [ %963, %cond.false1634 ]
  store double %cond1638, ptr %x1, align 8
  %964 = load i32, ptr %sb, align 4
  %idxprom1639 = sext i32 %964 to i64
  %arrayidx1640 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1639
  %965 = load double, ptr %arrayidx1640, align 8
  %966 = load i32, ptr %sb, align 4
  %idxprom1641 = sext i32 %966 to i64
  %arrayidx1642 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1641
  %967 = load double, ptr %arrayidx1642, align 8
  %cmp1643 = fcmp ogt double %965, %967
  br i1 %cmp1643, label %cond.true1645, label %cond.false1648

cond.true1645:                                    ; preds = %cond.end1637
  %968 = load i32, ptr %sb, align 4
  %idxprom1646 = sext i32 %968 to i64
  %arrayidx1647 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %idxprom1646
  %969 = load double, ptr %arrayidx1647, align 8
  br label %cond.end1651

cond.false1648:                                   ; preds = %cond.end1637
  %970 = load i32, ptr %sb, align 4
  %idxprom1649 = sext i32 %970 to i64
  %arrayidx1650 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %idxprom1649
  %971 = load double, ptr %arrayidx1650, align 8
  br label %cond.end1651

cond.end1651:                                     ; preds = %cond.false1648, %cond.true1645
  %cond1652 = phi double [ %969, %cond.true1645 ], [ %971, %cond.false1648 ]
  store double %cond1652, ptr %x2, align 8
  %972 = load double, ptr %x2, align 8
  %973 = load double, ptr %x1, align 8
  %mul1653 = fmul double 1.000000e+03, %973
  %cmp1654 = fcmp oge double %972, %mul1653
  br i1 %cmp1654, label %if.then1656, label %if.else1657

if.then1656:                                      ; preds = %cond.end1651
  store double 3.000000e+00, ptr %db, align 8
  br label %if.end1659

if.else1657:                                      ; preds = %cond.end1651
  %974 = load double, ptr %x2, align 8
  %975 = load double, ptr %x1, align 8
  %div1658 = fdiv double %974, %975
  %976 = call double @llvm.log10.f64(double %div1658)
  store double %976, ptr %db, align 8
  br label %if.end1659

if.end1659:                                       ; preds = %if.else1657, %if.then1656
  %977 = load double, ptr %db, align 8
  %978 = load double, ptr %sidetot, align 8
  %add1660 = fadd double %978, %977
  store double %add1660, ptr %sidetot, align 8
  %979 = load double, ptr %tot, align 8
  %inc1661 = fadd double %979, 1.000000e+00
  store double %inc1661, ptr %tot, align 8
  br label %for.inc1662

for.inc1662:                                      ; preds = %if.end1659
  %980 = load i32, ptr %sb, align 4
  %inc1663 = add nsw i32 %980, 1
  store i32 %inc1663, ptr %sb, align 4
  br label %for.cond1621, !llvm.loop !54

for.end1664:                                      ; preds = %for.cond1621
  %981 = load double, ptr %sidetot, align 8
  %982 = load double, ptr %tot, align 8
  %div1665 = fdiv double %981, %982
  %mul1666 = fmul double %div1665, 0x3FE6666666666666
  store double %mul1666, ptr %ms_ratio_l, align 8
  %983 = load double, ptr %ms_ratio_l, align 8
  %cmp1667 = fcmp olt double %983, 5.000000e-01
  br i1 %cmp1667, label %cond.true1669, label %cond.false1670

cond.true1669:                                    ; preds = %for.end1664
  %984 = load double, ptr %ms_ratio_l, align 8
  br label %cond.end1671

cond.false1670:                                   ; preds = %for.end1664
  br label %cond.end1671

cond.end1671:                                     ; preds = %cond.false1670, %cond.true1669
  %cond1672 = phi double [ %984, %cond.true1669 ], [ 5.000000e-01, %cond.false1670 ]
  store double %cond1672, ptr %ms_ratio_l, align 8
  store double 0.000000e+00, ptr %sidetot, align 8
  store double 0.000000e+00, ptr %tot, align 8
  store i32 0, ptr %sblock, align 4
  br label %for.cond1673

for.cond1673:                                     ; preds = %for.inc1737, %cond.end1671
  %985 = load i32, ptr %sblock, align 4
  %cmp1674 = icmp slt i32 %985, 3
  br i1 %cmp1674, label %for.body1676, label %for.end1739

for.body1676:                                     ; preds = %for.cond1673
  store i32 3, ptr %sb, align 4
  br label %for.cond1677

for.cond1677:                                     ; preds = %for.inc1734, %for.body1676
  %986 = load i32, ptr %sb, align 4
  %cmp1678 = icmp slt i32 %986, 12
  br i1 %cmp1678, label %for.body1680, label %for.end1736

for.body1680:                                     ; preds = %for.cond1677
  %987 = load i32, ptr %sb, align 4
  %idxprom1681 = sext i32 %987 to i64
  %arrayidx1682 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds (%struct.III_psy_xmin, ptr @L3psycho_anal.thm, i32 0, i32 1), i64 0, i64 %idxprom1681
  %988 = load i32, ptr %sblock, align 4
  %idxprom1683 = sext i32 %988 to i64
  %arrayidx1684 = getelementptr inbounds [3 x double], ptr %arrayidx1682, i64 0, i64 %idxprom1683
  %989 = load double, ptr %arrayidx1684, align 8
  %990 = load i32, ptr %sb, align 4
  %idxprom1685 = sext i32 %990 to i64
  %arrayidx1686 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1), i64 0, i64 %idxprom1685
  %991 = load i32, ptr %sblock, align 4
  %idxprom1687 = sext i32 %991 to i64
  %arrayidx1688 = getelementptr inbounds [3 x double], ptr %arrayidx1686, i64 0, i64 %idxprom1687
  %992 = load double, ptr %arrayidx1688, align 8
  %cmp1689 = fcmp olt double %989, %992
  br i1 %cmp1689, label %cond.true1691, label %cond.false1696

cond.true1691:                                    ; preds = %for.body1680
  %993 = load i32, ptr %sb, align 4
  %idxprom1692 = sext i32 %993 to i64
  %arrayidx1693 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds (%struct.III_psy_xmin, ptr @L3psycho_anal.thm, i32 0, i32 1), i64 0, i64 %idxprom1692
  %994 = load i32, ptr %sblock, align 4
  %idxprom1694 = sext i32 %994 to i64
  %arrayidx1695 = getelementptr inbounds [3 x double], ptr %arrayidx1693, i64 0, i64 %idxprom1694
  %995 = load double, ptr %arrayidx1695, align 8
  br label %cond.end1701

cond.false1696:                                   ; preds = %for.body1680
  %996 = load i32, ptr %sb, align 4
  %idxprom1697 = sext i32 %996 to i64
  %arrayidx1698 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1), i64 0, i64 %idxprom1697
  %997 = load i32, ptr %sblock, align 4
  %idxprom1699 = sext i32 %997 to i64
  %arrayidx1700 = getelementptr inbounds [3 x double], ptr %arrayidx1698, i64 0, i64 %idxprom1699
  %998 = load double, ptr %arrayidx1700, align 8
  br label %cond.end1701

cond.end1701:                                     ; preds = %cond.false1696, %cond.true1691
  %cond1702 = phi double [ %995, %cond.true1691 ], [ %998, %cond.false1696 ]
  store double %cond1702, ptr %x1, align 8
  %999 = load i32, ptr %sb, align 4
  %idxprom1703 = sext i32 %999 to i64
  %arrayidx1704 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds (%struct.III_psy_xmin, ptr @L3psycho_anal.thm, i32 0, i32 1), i64 0, i64 %idxprom1703
  %1000 = load i32, ptr %sblock, align 4
  %idxprom1705 = sext i32 %1000 to i64
  %arrayidx1706 = getelementptr inbounds [3 x double], ptr %arrayidx1704, i64 0, i64 %idxprom1705
  %1001 = load double, ptr %arrayidx1706, align 8
  %1002 = load i32, ptr %sb, align 4
  %idxprom1707 = sext i32 %1002 to i64
  %arrayidx1708 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1), i64 0, i64 %idxprom1707
  %1003 = load i32, ptr %sblock, align 4
  %idxprom1709 = sext i32 %1003 to i64
  %arrayidx1710 = getelementptr inbounds [3 x double], ptr %arrayidx1708, i64 0, i64 %idxprom1709
  %1004 = load double, ptr %arrayidx1710, align 8
  %cmp1711 = fcmp ogt double %1001, %1004
  br i1 %cmp1711, label %cond.true1713, label %cond.false1718

cond.true1713:                                    ; preds = %cond.end1701
  %1005 = load i32, ptr %sb, align 4
  %idxprom1714 = sext i32 %1005 to i64
  %arrayidx1715 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds (%struct.III_psy_xmin, ptr @L3psycho_anal.thm, i32 0, i32 1), i64 0, i64 %idxprom1714
  %1006 = load i32, ptr %sblock, align 4
  %idxprom1716 = sext i32 %1006 to i64
  %arrayidx1717 = getelementptr inbounds [3 x double], ptr %arrayidx1715, i64 0, i64 %idxprom1716
  %1007 = load double, ptr %arrayidx1717, align 8
  br label %cond.end1723

cond.false1718:                                   ; preds = %cond.end1701
  %1008 = load i32, ptr %sb, align 4
  %idxprom1719 = sext i32 %1008 to i64
  %arrayidx1720 = getelementptr inbounds [13 x [3 x double]], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1), i64 0, i64 %idxprom1719
  %1009 = load i32, ptr %sblock, align 4
  %idxprom1721 = sext i32 %1009 to i64
  %arrayidx1722 = getelementptr inbounds [3 x double], ptr %arrayidx1720, i64 0, i64 %idxprom1721
  %1010 = load double, ptr %arrayidx1722, align 8
  br label %cond.end1723

cond.end1723:                                     ; preds = %cond.false1718, %cond.true1713
  %cond1724 = phi double [ %1007, %cond.true1713 ], [ %1010, %cond.false1718 ]
  store double %cond1724, ptr %x2, align 8
  %1011 = load double, ptr %x2, align 8
  %1012 = load double, ptr %x1, align 8
  %mul1725 = fmul double 1.000000e+03, %1012
  %cmp1726 = fcmp oge double %1011, %mul1725
  br i1 %cmp1726, label %if.then1728, label %if.else1729

if.then1728:                                      ; preds = %cond.end1723
  store double 3.000000e+00, ptr %db, align 8
  br label %if.end1731

if.else1729:                                      ; preds = %cond.end1723
  %1013 = load double, ptr %x2, align 8
  %1014 = load double, ptr %x1, align 8
  %div1730 = fdiv double %1013, %1014
  %1015 = call double @llvm.log10.f64(double %div1730)
  store double %1015, ptr %db, align 8
  br label %if.end1731

if.end1731:                                       ; preds = %if.else1729, %if.then1728
  %1016 = load double, ptr %db, align 8
  %1017 = load double, ptr %sidetot, align 8
  %add1732 = fadd double %1017, %1016
  store double %add1732, ptr %sidetot, align 8
  %1018 = load double, ptr %tot, align 8
  %inc1733 = fadd double %1018, 1.000000e+00
  store double %inc1733, ptr %tot, align 8
  br label %for.inc1734

for.inc1734:                                      ; preds = %if.end1731
  %1019 = load i32, ptr %sb, align 4
  %inc1735 = add nsw i32 %1019, 1
  store i32 %inc1735, ptr %sb, align 4
  br label %for.cond1677, !llvm.loop !55

for.end1736:                                      ; preds = %for.cond1677
  br label %for.inc1737

for.inc1737:                                      ; preds = %for.end1736
  %1020 = load i32, ptr %sblock, align 4
  %inc1738 = add nsw i32 %1020, 1
  store i32 %inc1738, ptr %sblock, align 4
  br label %for.cond1673, !llvm.loop !56

for.end1739:                                      ; preds = %for.cond1673
  %1021 = load double, ptr %sidetot, align 8
  %1022 = load double, ptr %tot, align 8
  %div1740 = fdiv double %1021, %1022
  %mul1741 = fmul double %div1740, 0x3FE6666666666666
  store double %mul1741, ptr %ms_ratio_s, align 8
  %1023 = load double, ptr %ms_ratio_s, align 8
  %cmp1742 = fcmp olt double %1023, 5.000000e-01
  br i1 %cmp1742, label %cond.true1744, label %cond.false1745

cond.true1744:                                    ; preds = %for.end1739
  %1024 = load double, ptr %ms_ratio_s, align 8
  br label %cond.end1746

cond.false1745:                                   ; preds = %for.end1739
  br label %cond.end1746

cond.end1746:                                     ; preds = %cond.false1745, %cond.true1744
  %cond1747 = phi double [ %1024, %cond.true1744 ], [ 5.000000e-01, %cond.false1745 ]
  store double %cond1747, ptr %ms_ratio_s, align 8
  br label %if.end1748

if.end1748:                                       ; preds = %cond.end1746, %if.end1616
  store i32 0, ptr %chn, align 4
  br label %for.cond1749

for.cond1749:                                     ; preds = %for.inc1756, %if.end1748
  %1025 = load i32, ptr %chn, align 4
  %1026 = load ptr, ptr %gfp.addr, align 8
  %stereo1750 = getelementptr inbounds %struct.lame_global_flags, ptr %1026, i32 0, i32 46
  %1027 = load i32, ptr %stereo1750, align 4
  %cmp1751 = icmp slt i32 %1025, %1027
  br i1 %cmp1751, label %for.body1753, label %for.end1758

for.body1753:                                     ; preds = %for.cond1749
  %1028 = load i32, ptr %chn, align 4
  %idxprom1754 = sext i32 %1028 to i64
  %arrayidx1755 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1754
  store i32 0, ptr %arrayidx1755, align 4
  br label %for.inc1756

for.inc1756:                                      ; preds = %for.body1753
  %1029 = load i32, ptr %chn, align 4
  %inc1757 = add nsw i32 %1029, 1
  store i32 %inc1757, ptr %chn, align 4
  br label %for.cond1749, !llvm.loop !57

for.end1758:                                      ; preds = %for.cond1749
  %1030 = load ptr, ptr %gfp.addr, align 8
  %stereo1759 = getelementptr inbounds %struct.lame_global_flags, ptr %1030, i32 0, i32 46
  %1031 = load i32, ptr %stereo1759, align 4
  %cmp1760 = icmp eq i32 %1031, 2
  br i1 %cmp1760, label %if.then1762, label %if.end1778

if.then1762:                                      ; preds = %for.end1758
  %1032 = load ptr, ptr %gfp.addr, align 8
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %1032, i32 0, i32 36
  %1033 = load i32, ptr %allow_diff_short, align 4
  %tobool1763 = icmp ne i32 %1033, 0
  br i1 %tobool1763, label %lor.lhs.false, label %if.then1767

lor.lhs.false:                                    ; preds = %if.then1762
  %1034 = load ptr, ptr %gfp.addr, align 8
  %mode1764 = getelementptr inbounds %struct.lame_global_flags, ptr %1034, i32 0, i32 8
  %1035 = load i32, ptr %mode1764, align 4
  %cmp1765 = icmp eq i32 %1035, 1
  br i1 %cmp1765, label %if.then1767, label %if.end1777

if.then1767:                                      ; preds = %lor.lhs.false, %if.then1762
  %arrayidx1768 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 0
  %1036 = load i32, ptr %arrayidx1768, align 4
  %tobool1769 = icmp ne i32 %1036, 0
  br i1 %tobool1769, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then1767
  %arrayidx1770 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 1
  %1037 = load i32, ptr %arrayidx1770, align 4
  %tobool1771 = icmp ne i32 %1037, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then1767
  %1038 = phi i1 [ false, %if.then1767 ], [ %tobool1771, %land.rhs ]
  %land.ext = zext i1 %1038 to i32
  store i32 %land.ext, ptr %bothlong, align 4
  %1039 = load i32, ptr %bothlong, align 4
  %tobool1772 = icmp ne i32 %1039, 0
  br i1 %tobool1772, label %if.end1776, label %if.then1773

if.then1773:                                      ; preds = %land.end
  %arrayidx1774 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 0
  store i32 0, ptr %arrayidx1774, align 4
  %arrayidx1775 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 1
  store i32 0, ptr %arrayidx1775, align 4
  br label %if.end1776

if.end1776:                                       ; preds = %if.then1773, %land.end
  br label %if.end1777

if.end1777:                                       ; preds = %if.end1776, %lor.lhs.false
  br label %if.end1778

if.end1778:                                       ; preds = %if.end1777, %for.end1758
  store i32 0, ptr %chn, align 4
  br label %for.cond1779

for.cond1779:                                     ; preds = %for.inc1827, %if.end1778
  %1040 = load i32, ptr %chn, align 4
  %1041 = load ptr, ptr %gfp.addr, align 8
  %stereo1780 = getelementptr inbounds %struct.lame_global_flags, ptr %1041, i32 0, i32 46
  %1042 = load i32, ptr %stereo1780, align 4
  %cmp1781 = icmp slt i32 %1040, %1042
  br i1 %cmp1781, label %for.body1783, label %for.end1829

for.body1783:                                     ; preds = %for.cond1779
  %1043 = load i32, ptr %chn, align 4
  %idxprom1784 = sext i32 %1043 to i64
  %arrayidx1785 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %idxprom1784
  %1044 = load i32, ptr %arrayidx1785, align 4
  %tobool1786 = icmp ne i32 %1044, 0
  br i1 %tobool1786, label %if.then1787, label %if.else1799

if.then1787:                                      ; preds = %for.body1783
  %1045 = load i32, ptr %chn, align 4
  %idxprom1788 = sext i32 %1045 to i64
  %arrayidx1789 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1788
  %1046 = load i32, ptr %arrayidx1789, align 4
  switch i32 %1046, label %sw.epilog1798 [
    i32 0, label %sw.bb1790
    i32 3, label %sw.bb1790
    i32 2, label %sw.bb1793
    i32 1, label %sw.bb1796
  ]

sw.bb1790:                                        ; preds = %if.then1787, %if.then1787
  %1047 = load i32, ptr %chn, align 4
  %idxprom1791 = sext i32 %1047 to i64
  %arrayidx1792 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1791
  store i32 0, ptr %arrayidx1792, align 4
  br label %sw.epilog1798

sw.bb1793:                                        ; preds = %if.then1787
  %1048 = load i32, ptr %chn, align 4
  %idxprom1794 = sext i32 %1048 to i64
  %arrayidx1795 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1794
  store i32 3, ptr %arrayidx1795, align 4
  br label %sw.epilog1798

sw.bb1796:                                        ; preds = %if.then1787
  %1049 = load ptr, ptr @__stderrp, align 8
  %call1797 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1049, ptr noundef @.str.1)
  call void @abort() #8
  unreachable

sw.epilog1798:                                    ; preds = %if.then1787, %sw.bb1793, %sw.bb1790
  br label %if.end1818

if.else1799:                                      ; preds = %for.body1783
  %1050 = load i32, ptr %chn, align 4
  %idxprom1800 = sext i32 %1050 to i64
  %arrayidx1801 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1800
  store i32 2, ptr %arrayidx1801, align 4
  %1051 = load i32, ptr %chn, align 4
  %idxprom1802 = sext i32 %1051 to i64
  %arrayidx1803 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1802
  %1052 = load i32, ptr %arrayidx1803, align 4
  %cmp1804 = icmp eq i32 %1052, 0
  br i1 %cmp1804, label %if.then1806, label %if.end1809

if.then1806:                                      ; preds = %if.else1799
  %1053 = load i32, ptr %chn, align 4
  %idxprom1807 = sext i32 %1053 to i64
  %arrayidx1808 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1807
  store i32 1, ptr %arrayidx1808, align 4
  br label %if.end1809

if.end1809:                                       ; preds = %if.then1806, %if.else1799
  %1054 = load i32, ptr %chn, align 4
  %idxprom1810 = sext i32 %1054 to i64
  %arrayidx1811 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1810
  %1055 = load i32, ptr %arrayidx1811, align 4
  %cmp1812 = icmp eq i32 %1055, 3
  br i1 %cmp1812, label %if.then1814, label %if.end1817

if.then1814:                                      ; preds = %if.end1809
  %1056 = load i32, ptr %chn, align 4
  %idxprom1815 = sext i32 %1056 to i64
  %arrayidx1816 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1815
  store i32 2, ptr %arrayidx1816, align 4
  br label %if.end1817

if.end1817:                                       ; preds = %if.then1814, %if.end1809
  br label %if.end1818

if.end1818:                                       ; preds = %if.end1817, %sw.epilog1798
  %1057 = load i32, ptr %chn, align 4
  %idxprom1819 = sext i32 %1057 to i64
  %arrayidx1820 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1819
  %1058 = load i32, ptr %arrayidx1820, align 4
  %1059 = load ptr, ptr %blocktype_d.addr, align 8
  %1060 = load i32, ptr %chn, align 4
  %idxprom1821 = sext i32 %1060 to i64
  %arrayidx1822 = getelementptr inbounds i32, ptr %1059, i64 %idxprom1821
  store i32 %1058, ptr %arrayidx1822, align 4
  %1061 = load i32, ptr %chn, align 4
  %idxprom1823 = sext i32 %1061 to i64
  %arrayidx1824 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom1823
  %1062 = load i32, ptr %arrayidx1824, align 4
  %1063 = load i32, ptr %chn, align 4
  %idxprom1825 = sext i32 %1063 to i64
  %arrayidx1826 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %idxprom1825
  store i32 %1062, ptr %arrayidx1826, align 4
  br label %for.inc1827

for.inc1827:                                      ; preds = %if.end1818
  %1064 = load i32, ptr %chn, align 4
  %inc1828 = add nsw i32 %1064, 1
  store i32 %inc1828, ptr %chn, align 4
  br label %for.cond1779, !llvm.loop !58

for.end1829:                                      ; preds = %for.cond1779
  %1065 = load ptr, ptr %blocktype_d.addr, align 8
  %arrayidx1830 = getelementptr inbounds i32, ptr %1065, i64 0
  %1066 = load i32, ptr %arrayidx1830, align 4
  %cmp1831 = icmp eq i32 %1066, 2
  br i1 %cmp1831, label %if.then1833, label %if.else1834

if.then1833:                                      ; preds = %for.end1829
  %1067 = load double, ptr @L3psycho_anal.ms_ratio_s_old, align 8
  %1068 = load ptr, ptr %ms_ratio.addr, align 8
  store double %1067, ptr %1068, align 8
  br label %if.end1835

if.else1834:                                      ; preds = %for.end1829
  %1069 = load double, ptr @L3psycho_anal.ms_ratio_l_old, align 8
  %1070 = load ptr, ptr %ms_ratio.addr, align 8
  store double %1069, ptr %1070, align 8
  br label %if.end1835

if.end1835:                                       ; preds = %if.else1834, %if.then1833
  %1071 = load double, ptr %ms_ratio_s, align 8
  store double %1071, ptr @L3psycho_anal.ms_ratio_s_old, align 8
  %1072 = load double, ptr %ms_ratio_l, align 8
  store double %1072, ptr @L3psycho_anal.ms_ratio_l_old, align 8
  %1073 = load double, ptr %ms_ratio_l, align 8
  %1074 = load ptr, ptr %ms_ratio_next.addr, align 8
  store double %1073, ptr %1074, align 8
  %1075 = load i32, ptr %numchn, align 4
  %cmp1836 = icmp eq i32 %1075, 4
  br i1 %cmp1836, label %if.then1838, label %if.else1850

if.then1838:                                      ; preds = %if.end1835
  %arrayidx1840 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 3
  %1076 = load float, ptr %arrayidx1840, align 4
  %arrayidx1841 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 2
  %1077 = load float, ptr %arrayidx1841, align 4
  %add1842 = fadd float %1076, %1077
  store float %add1842, ptr %tmp1839, align 4
  %1078 = load double, ptr @L3psycho_anal.ms_ener_ratio_old, align 8
  %1079 = load ptr, ptr %ms_ener_ratio.addr, align 8
  store double %1078, ptr %1079, align 8
  store double 0.000000e+00, ptr @L3psycho_anal.ms_ener_ratio_old, align 8
  %1080 = load float, ptr %tmp1839, align 4
  %cmp1843 = fcmp ogt float %1080, 0.000000e+00
  br i1 %cmp1843, label %if.then1845, label %if.end1849

if.then1845:                                      ; preds = %if.then1838
  %arrayidx1846 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 3
  %1081 = load float, ptr %arrayidx1846, align 4
  %1082 = load float, ptr %tmp1839, align 4
  %div1847 = fdiv float %1081, %1082
  %conv1848 = fpext float %div1847 to double
  store double %conv1848, ptr @L3psycho_anal.ms_ener_ratio_old, align 8
  br label %if.end1849

if.end1849:                                       ; preds = %if.then1845, %if.then1838
  br label %if.end1851

if.else1850:                                      ; preds = %if.end1835
  %1083 = load ptr, ptr %ms_ener_ratio.addr, align 8
  store double 0.000000e+00, ptr %1083, align 8
  br label %if.end1851

if.end1851:                                       ; preds = %if.else1850, %if.end1849
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %temp = alloca double, align 8
  %tempx178 = alloca double, align 8
  %x179 = alloca double, align 8
  %tempy180 = alloca double, align 8
  %temp181 = alloca double, align 8
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
  store i32 0, ptr %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %0 = load i32, ptr %loop, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %2 = load double, ptr %1, align 8
  store double %2, ptr %freq_tp, align 8
  %3 = load ptr, ptr %p, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %p, align 8
  %4 = load double, ptr %3, align 8
  %conv = fptosi double %4 to i32
  store i32 %conv, ptr %cbmax_tp, align 4
  %5 = load i32, ptr %cbmax_tp, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %cbmax_tp, align 4
  %6 = load double, ptr %sfreq.addr, align 8
  %7 = load double, ptr %freq_tp, align 8
  %8 = load i32, ptr %freq_scale, align 4
  %conv2 = sitofp i32 %8 to double
  %div = fdiv double %7, %conv2
  %cmp3 = fcmp oeq double %6, %div
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %cbmax_tp, align 4
  store i32 %9, ptr %cbmax, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %k2, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc36, %if.then
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %cbmax_tp, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body8, label %for.end38

for.body8:                                        ; preds = %for.cond5
  %12 = load ptr, ptr %p, align 8
  %incdec.ptr9 = getelementptr inbounds double, ptr %12, i32 1
  store ptr %incdec.ptr9, ptr %p, align 8
  %13 = load double, ptr %12, align 8
  %conv10 = fptosi double %13 to i32
  store i32 %conv10, ptr %j, align 4
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr11 = getelementptr inbounds double, ptr %14, i32 1
  store ptr %incdec.ptr11, ptr %p, align 8
  %15 = load double, ptr %14, align 8
  %conv12 = fptosi double %15 to i32
  %16 = load ptr, ptr %numlines_l.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  store i32 %conv12, ptr %arrayidx, align 4
  %18 = load ptr, ptr %p, align 8
  %incdec.ptr13 = getelementptr inbounds double, ptr %18, i32 1
  store ptr %incdec.ptr13, ptr %p, align 8
  %19 = load double, ptr %18, align 8
  %sub = fsub double %19, 6.000000e+00
  %fneg = fneg double %sub
  %mul = fmul double %fneg, 0x3FCD791C5F888823
  %20 = call double @llvm.exp.f64(double %mul)
  %21 = load ptr, ptr %minval.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds double, ptr %21, i64 %idxprom14
  store double %20, ptr %arrayidx15, align 8
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr16 = getelementptr inbounds double, ptr %23, i32 1
  store ptr %incdec.ptr16, ptr %p, align 8
  %24 = load double, ptr %23, align 8
  %25 = load ptr, ptr %qthr_l.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %25, i64 %idxprom17
  store double %24, ptr %arrayidx18, align 8
  %27 = load ptr, ptr %p, align 8
  %incdec.ptr19 = getelementptr inbounds double, ptr %27, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8
  %28 = load ptr, ptr %p, align 8
  %incdec.ptr20 = getelementptr inbounds double, ptr %28, i32 1
  store ptr %incdec.ptr20, ptr %p, align 8
  %29 = load double, ptr %28, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom21
  store double %29, ptr %arrayidx22, align 8
  %31 = load i32, ptr %j, align 4
  %32 = load i32, ptr %i, align 4
  %cmp23 = icmp ne i32 %31, %32
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %for.body8
  %33 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.2)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end:                                           ; preds = %for.body8
  store i32 0, ptr %k, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.end
  %34 = load i32, ptr %k, align 4
  %35 = load ptr, ptr %numlines_l.addr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 %idxprom27
  %37 = load i32, ptr %arrayidx28, align 4
  %cmp29 = icmp slt i32 %34, %37
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond26
  %38 = load i32, ptr %i, align 4
  %39 = load ptr, ptr %partition_l.addr, align 8
  %40 = load i32, ptr %k2, align 4
  %inc32 = add nsw i32 %40, 1
  store i32 %inc32, ptr %k2, align 4
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %39, i64 %idxprom33
  store i32 %38, ptr %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body31
  %41 = load i32, ptr %k, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, ptr %k, align 4
  br label %for.cond26, !llvm.loop !59

for.end:                                          ; preds = %for.cond26
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %42 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %42, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond5, !llvm.loop !60

for.end38:                                        ; preds = %for.cond5
  br label %if.end40

if.else:                                          ; preds = %for.body
  %43 = load i32, ptr %cbmax_tp, align 4
  %mul39 = mul nsw i32 %43, 6
  %44 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %mul39 to i64
  %add.ptr = getelementptr inbounds double, ptr %44, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %for.end38
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %45 = load i32, ptr %loop, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, ptr %loop, align 4
  br label %for.cond, !llvm.loop !61

for.end43:                                        ; preds = %for.cond
  %46 = load i32, ptr %cbmax, align 4
  store i32 %46, ptr %part_max, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc118, %for.end43
  %47 = load i32, ptr %i, align 4
  %48 = load i32, ptr %part_max, align 4
  %cmp45 = icmp slt i32 %47, %48
  br i1 %cmp45, label %for.body47, label %for.end120

for.body47:                                       ; preds = %for.cond44
  store i32 0, ptr %j, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc115, %for.body47
  %49 = load i32, ptr %j, align 4
  %50 = load i32, ptr %part_max, align 4
  %cmp49 = icmp slt i32 %49, %50
  br i1 %cmp49, label %for.body51, label %for.end117

for.body51:                                       ; preds = %for.cond48
  %51 = load i32, ptr %j, align 4
  %52 = load i32, ptr %i, align 4
  %cmp52 = icmp sge i32 %51, %52
  br i1 %cmp52, label %if.then54, label %if.else61

if.then54:                                        ; preds = %for.body51
  %53 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %53 to i64
  %arrayidx56 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom55
  %54 = load double, ptr %arrayidx56, align 8
  %55 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %55 to i64
  %arrayidx58 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom57
  %56 = load double, ptr %arrayidx58, align 8
  %sub59 = fsub double %54, %56
  %mul60 = fmul double %sub59, 3.000000e+00
  store double %mul60, ptr %tempx, align 8
  br label %if.end68

if.else61:                                        ; preds = %for.body51
  %57 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %57 to i64
  %arrayidx63 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom62
  %58 = load double, ptr %arrayidx63, align 8
  %59 = load i32, ptr %j, align 4
  %idxprom64 = sext i32 %59 to i64
  %arrayidx65 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom64
  %60 = load double, ptr %arrayidx65, align 8
  %sub66 = fsub double %58, %60
  %mul67 = fmul double %sub66, 1.500000e+00
  store double %mul67, ptr %tempx, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else61, %if.then54
  %61 = load i32, ptr %i, align 4
  %62 = load i32, ptr %j, align 4
  %cmp69 = icmp sge i32 %61, %62
  br i1 %cmp69, label %if.then71, label %if.else78

if.then71:                                        ; preds = %if.end68
  %63 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %63 to i64
  %arrayidx73 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom72
  %64 = load double, ptr %arrayidx73, align 8
  %65 = load i32, ptr %j, align 4
  %idxprom74 = sext i32 %65 to i64
  %arrayidx75 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom74
  %66 = load double, ptr %arrayidx75, align 8
  %sub76 = fsub double %64, %66
  %mul77 = fmul double %sub76, 3.000000e+00
  store double %mul77, ptr %tempx, align 8
  br label %if.end85

if.else78:                                        ; preds = %if.end68
  %67 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom79
  %68 = load double, ptr %arrayidx80, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom81 = sext i32 %69 to i64
  %arrayidx82 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %idxprom81
  %70 = load double, ptr %arrayidx82, align 8
  %sub83 = fsub double %68, %70
  %mul84 = fmul double %sub83, 1.500000e+00
  store double %mul84, ptr %tempx, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else78, %if.then71
  %71 = load double, ptr %tempx, align 8
  %cmp86 = fcmp oge double %71, 5.000000e-01
  br i1 %cmp86, label %land.lhs.true, label %if.else95

land.lhs.true:                                    ; preds = %if.end85
  %72 = load double, ptr %tempx, align 8
  %cmp88 = fcmp ole double %72, 2.500000e+00
  br i1 %cmp88, label %if.then90, label %if.else95

if.then90:                                        ; preds = %land.lhs.true
  %73 = load double, ptr %tempx, align 8
  %sub91 = fsub double %73, 5.000000e-01
  store double %sub91, ptr %temp, align 8
  %74 = load double, ptr %temp, align 8
  %75 = load double, ptr %temp, align 8
  %76 = load double, ptr %temp, align 8
  %mul93 = fmul double 2.000000e+00, %76
  %neg = fneg double %mul93
  %77 = call double @llvm.fmuladd.f64(double %74, double %75, double %neg)
  %mul94 = fmul double 8.000000e+00, %77
  store double %mul94, ptr %x, align 8
  br label %if.end96

if.else95:                                        ; preds = %land.lhs.true, %if.end85
  store double 0.000000e+00, ptr %x, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then90
  %78 = load double, ptr %tempx, align 8
  %add = fadd double %78, 4.740000e-01
  store double %add, ptr %tempx, align 8
  %79 = load double, ptr %tempx, align 8
  %80 = call double @llvm.fmuladd.f64(double 7.500000e+00, double %79, double 0x402F9F6E6106AB15)
  %81 = load double, ptr %tempx, align 8
  %82 = load double, ptr %tempx, align 8
  %83 = call double @llvm.fmuladd.f64(double %81, double %82, double 1.000000e+00)
  %84 = call double @llvm.sqrt.f64(double %83)
  %85 = call double @llvm.fmuladd.f64(double -1.750000e+01, double %84, double %80)
  store double %85, ptr %tempy, align 8
  %86 = load double, ptr %tempy, align 8
  %cmp100 = fcmp ole double %86, -6.000000e+01
  br i1 %cmp100, label %if.then102, label %if.else107

if.then102:                                       ; preds = %if.end96
  %87 = load ptr, ptr %s3_l.addr, align 8
  %88 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %88 to i64
  %arrayidx104 = getelementptr inbounds [64 x double], ptr %87, i64 %idxprom103
  %89 = load i32, ptr %j, align 4
  %idxprom105 = sext i32 %89 to i64
  %arrayidx106 = getelementptr inbounds [64 x double], ptr %arrayidx104, i64 0, i64 %idxprom105
  store double 0.000000e+00, ptr %arrayidx106, align 8
  br label %if.end114

if.else107:                                       ; preds = %if.end96
  %90 = load double, ptr %x, align 8
  %91 = load double, ptr %tempy, align 8
  %add108 = fadd double %90, %91
  %mul109 = fmul double %add108, 0x3FCD791C5F888823
  %92 = call double @llvm.exp.f64(double %mul109)
  %93 = load ptr, ptr %s3_l.addr, align 8
  %94 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %94 to i64
  %arrayidx111 = getelementptr inbounds [64 x double], ptr %93, i64 %idxprom110
  %95 = load i32, ptr %j, align 4
  %idxprom112 = sext i32 %95 to i64
  %arrayidx113 = getelementptr inbounds [64 x double], ptr %arrayidx111, i64 0, i64 %idxprom112
  store double %92, ptr %arrayidx113, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then102
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %96 = load i32, ptr %j, align 4
  %inc116 = add nsw i32 %96, 1
  store i32 %inc116, ptr %j, align 4
  br label %for.cond48, !llvm.loop !62

for.end117:                                       ; preds = %for.cond48
  br label %for.inc118

for.inc118:                                       ; preds = %for.end117
  %97 = load i32, ptr %i, align 4
  %inc119 = add nsw i32 %97, 1
  store i32 %inc119, ptr %i, align 4
  br label %for.cond44, !llvm.loop !63

for.end120:                                       ; preds = %for.cond44
  store i32 0, ptr %loop, align 4
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc171, %for.end120
  %98 = load i32, ptr %loop, align 4
  %cmp122 = icmp slt i32 %98, 6
  br i1 %cmp122, label %for.body124, label %for.end173

for.body124:                                      ; preds = %for.cond121
  %99 = load ptr, ptr %p, align 8
  %incdec.ptr125 = getelementptr inbounds double, ptr %99, i32 1
  store ptr %incdec.ptr125, ptr %p, align 8
  %100 = load double, ptr %99, align 8
  store double %100, ptr %freq_tp, align 8
  %101 = load ptr, ptr %p, align 8
  %incdec.ptr126 = getelementptr inbounds double, ptr %101, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %102 = load double, ptr %101, align 8
  %conv127 = fptosi double %102 to i32
  store i32 %conv127, ptr %cbmax_tp, align 4
  %103 = load i32, ptr %cbmax_tp, align 4
  %inc128 = add nsw i32 %103, 1
  store i32 %inc128, ptr %cbmax_tp, align 4
  %104 = load double, ptr %sfreq.addr, align 8
  %105 = load double, ptr %freq_tp, align 8
  %106 = load i32, ptr %freq_scale, align 4
  %conv129 = sitofp i32 %106 to double
  %div130 = fdiv double %105, %conv129
  %cmp131 = fcmp oeq double %104, %div130
  br i1 %cmp131, label %if.then133, label %if.else166

if.then133:                                       ; preds = %for.body124
  %107 = load i32, ptr %cbmax_tp, align 4
  store i32 %107, ptr %cbmax, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %k2, align 4
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc161, %if.then133
  %108 = load i32, ptr %i, align 4
  %109 = load i32, ptr %cbmax_tp, align 4
  %cmp135 = icmp slt i32 %108, %109
  br i1 %cmp135, label %for.body137, label %for.end163

for.body137:                                      ; preds = %for.cond134
  %110 = load ptr, ptr %p, align 8
  %incdec.ptr138 = getelementptr inbounds double, ptr %110, i32 1
  store ptr %incdec.ptr138, ptr %p, align 8
  %111 = load double, ptr %110, align 8
  %conv139 = fptosi double %111 to i32
  store i32 %conv139, ptr %j, align 4
  %112 = load ptr, ptr %p, align 8
  %incdec.ptr140 = getelementptr inbounds double, ptr %112, i32 1
  store ptr %incdec.ptr140, ptr %p, align 8
  %113 = load double, ptr %112, align 8
  %conv141 = fptosi double %113 to i32
  %114 = load ptr, ptr %numlines_s.addr, align 8
  %115 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %115 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %114, i64 %idxprom142
  store i32 %conv141, ptr %arrayidx143, align 4
  %116 = load ptr, ptr %p, align 8
  %incdec.ptr144 = getelementptr inbounds double, ptr %116, i32 1
  store ptr %incdec.ptr144, ptr %p, align 8
  %117 = load double, ptr %116, align 8
  %118 = load ptr, ptr %qthr_s.addr, align 8
  %119 = load i32, ptr %i, align 4
  %idxprom145 = sext i32 %119 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %118, i64 %idxprom145
  store double %117, ptr %arrayidx146, align 8
  %120 = load ptr, ptr %p, align 8
  %incdec.ptr147 = getelementptr inbounds double, ptr %120, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8
  %121 = load ptr, ptr %p, align 8
  %incdec.ptr148 = getelementptr inbounds double, ptr %121, i32 1
  store ptr %incdec.ptr148, ptr %p, align 8
  %122 = load double, ptr %121, align 8
  %123 = load ptr, ptr %SNR.addr, align 8
  %124 = load i32, ptr %i, align 4
  %idxprom149 = sext i32 %124 to i64
  %arrayidx150 = getelementptr inbounds double, ptr %123, i64 %idxprom149
  store double %122, ptr %arrayidx150, align 8
  %125 = load ptr, ptr %p, align 8
  %incdec.ptr151 = getelementptr inbounds double, ptr %125, i32 1
  store ptr %incdec.ptr151, ptr %p, align 8
  %126 = load double, ptr %125, align 8
  %127 = load i32, ptr %i, align 4
  %idxprom152 = sext i32 %127 to i64
  %arrayidx153 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom152
  store double %126, ptr %arrayidx153, align 8
  %128 = load i32, ptr %j, align 4
  %129 = load i32, ptr %i, align 4
  %cmp154 = icmp ne i32 %128, %129
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %for.body137
  %130 = load ptr, ptr @__stderrp, align 8
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.3)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end158:                                        ; preds = %for.body137
  %131 = load ptr, ptr %numlines_s.addr, align 8
  %132 = load i32, ptr %i, align 4
  %idxprom159 = sext i32 %132 to i64
  %arrayidx160 = getelementptr inbounds i32, ptr %131, i64 %idxprom159
  %133 = load i32, ptr %arrayidx160, align 4
  %dec = add nsw i32 %133, -1
  store i32 %dec, ptr %arrayidx160, align 4
  br label %for.inc161

for.inc161:                                       ; preds = %if.end158
  %134 = load i32, ptr %i, align 4
  %inc162 = add nsw i32 %134, 1
  store i32 %inc162, ptr %i, align 4
  br label %for.cond134, !llvm.loop !64

for.end163:                                       ; preds = %for.cond134
  %135 = load ptr, ptr %numlines_s.addr, align 8
  %136 = load i32, ptr %i, align 4
  %idxprom164 = sext i32 %136 to i64
  %arrayidx165 = getelementptr inbounds i32, ptr %135, i64 %idxprom164
  store i32 -1, ptr %arrayidx165, align 4
  br label %if.end170

if.else166:                                       ; preds = %for.body124
  %137 = load i32, ptr %cbmax_tp, align 4
  %mul167 = mul nsw i32 %137, 6
  %138 = load ptr, ptr %p, align 8
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds double, ptr %138, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8
  br label %if.end170

if.end170:                                        ; preds = %if.else166, %for.end163
  br label %for.inc171

for.inc171:                                       ; preds = %if.end170
  %139 = load i32, ptr %loop, align 4
  %inc172 = add nsw i32 %139, 1
  store i32 %inc172, ptr %loop, align 4
  br label %for.cond121, !llvm.loop !65

for.end173:                                       ; preds = %for.cond121
  %140 = load i32, ptr %cbmax, align 4
  store i32 %140, ptr %part_max, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc255, %for.end173
  %141 = load i32, ptr %i, align 4
  %142 = load i32, ptr %part_max, align 4
  %cmp175 = icmp slt i32 %141, %142
  br i1 %cmp175, label %for.body177, label %for.end257

for.body177:                                      ; preds = %for.cond174
  store i32 0, ptr %j, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc252, %for.body177
  %143 = load i32, ptr %j, align 4
  %144 = load i32, ptr %part_max, align 4
  %cmp183 = icmp slt i32 %143, %144
  br i1 %cmp183, label %for.body185, label %for.end254

for.body185:                                      ; preds = %for.cond182
  %145 = load i32, ptr %j, align 4
  %146 = load i32, ptr %i, align 4
  %cmp186 = icmp sge i32 %145, %146
  br i1 %cmp186, label %if.then188, label %if.else195

if.then188:                                       ; preds = %for.body185
  %147 = load i32, ptr %i, align 4
  %idxprom189 = sext i32 %147 to i64
  %arrayidx190 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom189
  %148 = load double, ptr %arrayidx190, align 8
  %149 = load i32, ptr %j, align 4
  %idxprom191 = sext i32 %149 to i64
  %arrayidx192 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom191
  %150 = load double, ptr %arrayidx192, align 8
  %sub193 = fsub double %148, %150
  %mul194 = fmul double %sub193, 3.000000e+00
  store double %mul194, ptr %tempx178, align 8
  br label %if.end202

if.else195:                                       ; preds = %for.body185
  %151 = load i32, ptr %i, align 4
  %idxprom196 = sext i32 %151 to i64
  %arrayidx197 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom196
  %152 = load double, ptr %arrayidx197, align 8
  %153 = load i32, ptr %j, align 4
  %idxprom198 = sext i32 %153 to i64
  %arrayidx199 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom198
  %154 = load double, ptr %arrayidx199, align 8
  %sub200 = fsub double %152, %154
  %mul201 = fmul double %sub200, 1.500000e+00
  store double %mul201, ptr %tempx178, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else195, %if.then188
  %155 = load i32, ptr %i, align 4
  %156 = load i32, ptr %j, align 4
  %cmp203 = icmp sge i32 %155, %156
  br i1 %cmp203, label %if.then205, label %if.else212

if.then205:                                       ; preds = %if.end202
  %157 = load i32, ptr %i, align 4
  %idxprom206 = sext i32 %157 to i64
  %arrayidx207 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom206
  %158 = load double, ptr %arrayidx207, align 8
  %159 = load i32, ptr %j, align 4
  %idxprom208 = sext i32 %159 to i64
  %arrayidx209 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom208
  %160 = load double, ptr %arrayidx209, align 8
  %sub210 = fsub double %158, %160
  %mul211 = fmul double %sub210, 3.000000e+00
  store double %mul211, ptr %tempx178, align 8
  br label %if.end219

if.else212:                                       ; preds = %if.end202
  %161 = load i32, ptr %i, align 4
  %idxprom213 = sext i32 %161 to i64
  %arrayidx214 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom213
  %162 = load double, ptr %arrayidx214, align 8
  %163 = load i32, ptr %j, align 4
  %idxprom215 = sext i32 %163 to i64
  %arrayidx216 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %idxprom215
  %164 = load double, ptr %arrayidx216, align 8
  %sub217 = fsub double %162, %164
  %mul218 = fmul double %sub217, 1.500000e+00
  store double %mul218, ptr %tempx178, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.else212, %if.then205
  %165 = load double, ptr %tempx178, align 8
  %cmp220 = fcmp oge double %165, 5.000000e-01
  br i1 %cmp220, label %land.lhs.true222, label %if.else231

land.lhs.true222:                                 ; preds = %if.end219
  %166 = load double, ptr %tempx178, align 8
  %cmp223 = fcmp ole double %166, 2.500000e+00
  br i1 %cmp223, label %if.then225, label %if.else231

if.then225:                                       ; preds = %land.lhs.true222
  %167 = load double, ptr %tempx178, align 8
  %sub226 = fsub double %167, 5.000000e-01
  store double %sub226, ptr %temp181, align 8
  %168 = load double, ptr %temp181, align 8
  %169 = load double, ptr %temp181, align 8
  %170 = load double, ptr %temp181, align 8
  %mul228 = fmul double 2.000000e+00, %170
  %neg229 = fneg double %mul228
  %171 = call double @llvm.fmuladd.f64(double %168, double %169, double %neg229)
  %mul230 = fmul double 8.000000e+00, %171
  store double %mul230, ptr %x179, align 8
  br label %if.end232

if.else231:                                       ; preds = %land.lhs.true222, %if.end219
  store double 0.000000e+00, ptr %x179, align 8
  br label %if.end232

if.end232:                                        ; preds = %if.else231, %if.then225
  %172 = load double, ptr %tempx178, align 8
  %add233 = fadd double %172, 4.740000e-01
  store double %add233, ptr %tempx178, align 8
  %173 = load double, ptr %tempx178, align 8
  %174 = call double @llvm.fmuladd.f64(double 7.500000e+00, double %173, double 0x402F9F6E6106AB15)
  %175 = load double, ptr %tempx178, align 8
  %176 = load double, ptr %tempx178, align 8
  %177 = call double @llvm.fmuladd.f64(double %175, double %176, double 1.000000e+00)
  %178 = call double @llvm.sqrt.f64(double %177)
  %179 = call double @llvm.fmuladd.f64(double -1.750000e+01, double %178, double %174)
  store double %179, ptr %tempy180, align 8
  %180 = load double, ptr %tempy180, align 8
  %cmp237 = fcmp ole double %180, -6.000000e+01
  br i1 %cmp237, label %if.then239, label %if.else244

if.then239:                                       ; preds = %if.end232
  %181 = load ptr, ptr %s3_s.addr, align 8
  %182 = load i32, ptr %i, align 4
  %idxprom240 = sext i32 %182 to i64
  %arrayidx241 = getelementptr inbounds [64 x double], ptr %181, i64 %idxprom240
  %183 = load i32, ptr %j, align 4
  %idxprom242 = sext i32 %183 to i64
  %arrayidx243 = getelementptr inbounds [64 x double], ptr %arrayidx241, i64 0, i64 %idxprom242
  store double 0.000000e+00, ptr %arrayidx243, align 8
  br label %if.end251

if.else244:                                       ; preds = %if.end232
  %184 = load double, ptr %x179, align 8
  %185 = load double, ptr %tempy180, align 8
  %add245 = fadd double %184, %185
  %mul246 = fmul double %add245, 0x3FCD791C5F888823
  %186 = call double @llvm.exp.f64(double %mul246)
  %187 = load ptr, ptr %s3_s.addr, align 8
  %188 = load i32, ptr %i, align 4
  %idxprom247 = sext i32 %188 to i64
  %arrayidx248 = getelementptr inbounds [64 x double], ptr %187, i64 %idxprom247
  %189 = load i32, ptr %j, align 4
  %idxprom249 = sext i32 %189 to i64
  %arrayidx250 = getelementptr inbounds [64 x double], ptr %arrayidx248, i64 0, i64 %idxprom249
  store double %186, ptr %arrayidx250, align 8
  br label %if.end251

if.end251:                                        ; preds = %if.else244, %if.then239
  br label %for.inc252

for.inc252:                                       ; preds = %if.end251
  %190 = load i32, ptr %j, align 4
  %inc253 = add nsw i32 %190, 1
  store i32 %inc253, ptr %j, align 4
  br label %for.cond182, !llvm.loop !66

for.end254:                                       ; preds = %for.cond182
  br label %for.inc255

for.inc255:                                       ; preds = %for.end254
  %191 = load i32, ptr %i, align 4
  %inc256 = add nsw i32 %191, 1
  store i32 %inc256, ptr %i, align 4
  br label %for.cond174, !llvm.loop !67

for.end257:                                       ; preds = %for.cond174
  store i32 0, ptr %loop, align 4
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc327, %for.end257
  %192 = load i32, ptr %loop, align 4
  %cmp259 = icmp slt i32 %192, 6
  br i1 %cmp259, label %for.body261, label %for.end329

for.body261:                                      ; preds = %for.cond258
  %193 = load ptr, ptr %p, align 8
  %incdec.ptr262 = getelementptr inbounds double, ptr %193, i32 1
  store ptr %incdec.ptr262, ptr %p, align 8
  %194 = load double, ptr %193, align 8
  store double %194, ptr %freq_tp, align 8
  %195 = load ptr, ptr %p, align 8
  %incdec.ptr263 = getelementptr inbounds double, ptr %195, i32 1
  store ptr %incdec.ptr263, ptr %p, align 8
  %196 = load double, ptr %195, align 8
  %conv264 = fptosi double %196 to i32
  store i32 %conv264, ptr %sbmax, align 4
  %197 = load i32, ptr %sbmax, align 4
  %inc265 = add nsw i32 %197, 1
  store i32 %inc265, ptr %sbmax, align 4
  %198 = load double, ptr %sfreq.addr, align 8
  %199 = load double, ptr %freq_tp, align 8
  %200 = load i32, ptr %freq_scale, align 4
  %conv266 = sitofp i32 %200 to double
  %div267 = fdiv double %199, %conv266
  %cmp268 = fcmp oeq double %198, %div267
  br i1 %cmp268, label %if.then270, label %if.else322

if.then270:                                       ; preds = %for.body261
  store i32 0, ptr %i, align 4
  br label %for.cond271

for.cond271:                                      ; preds = %for.inc319, %if.then270
  %201 = load i32, ptr %i, align 4
  %202 = load i32, ptr %sbmax, align 4
  %cmp272 = icmp slt i32 %201, %202
  br i1 %cmp272, label %for.body274, label %for.end321

for.body274:                                      ; preds = %for.cond271
  %203 = load ptr, ptr %p, align 8
  %incdec.ptr275 = getelementptr inbounds double, ptr %203, i32 1
  store ptr %incdec.ptr275, ptr %p, align 8
  %204 = load double, ptr %203, align 8
  %conv276 = fptosi double %204 to i32
  store i32 %conv276, ptr %j, align 4
  %205 = load ptr, ptr %p, align 8
  %incdec.ptr277 = getelementptr inbounds double, ptr %205, i32 1
  store ptr %incdec.ptr277, ptr %p, align 8
  %206 = load ptr, ptr %p, align 8
  %incdec.ptr278 = getelementptr inbounds double, ptr %206, i32 1
  store ptr %incdec.ptr278, ptr %p, align 8
  %207 = load double, ptr %206, align 8
  %conv279 = fptosi double %207 to i32
  %208 = load ptr, ptr %bu_l.addr, align 8
  %209 = load i32, ptr %i, align 4
  %idxprom280 = sext i32 %209 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %208, i64 %idxprom280
  store i32 %conv279, ptr %arrayidx281, align 4
  %210 = load ptr, ptr %p, align 8
  %incdec.ptr282 = getelementptr inbounds double, ptr %210, i32 1
  store ptr %incdec.ptr282, ptr %p, align 8
  %211 = load double, ptr %210, align 8
  %conv283 = fptosi double %211 to i32
  %212 = load ptr, ptr %bo_l.addr, align 8
  %213 = load i32, ptr %i, align 4
  %idxprom284 = sext i32 %213 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %212, i64 %idxprom284
  store i32 %conv283, ptr %arrayidx285, align 4
  %214 = load ptr, ptr %p, align 8
  %incdec.ptr286 = getelementptr inbounds double, ptr %214, i32 1
  store ptr %incdec.ptr286, ptr %p, align 8
  %215 = load double, ptr %214, align 8
  %216 = load ptr, ptr %w1_l.addr, align 8
  %217 = load i32, ptr %i, align 4
  %idxprom287 = sext i32 %217 to i64
  %arrayidx288 = getelementptr inbounds double, ptr %216, i64 %idxprom287
  store double %215, ptr %arrayidx288, align 8
  %218 = load ptr, ptr %p, align 8
  %incdec.ptr289 = getelementptr inbounds double, ptr %218, i32 1
  store ptr %incdec.ptr289, ptr %p, align 8
  %219 = load double, ptr %218, align 8
  %220 = load ptr, ptr %w2_l.addr, align 8
  %221 = load i32, ptr %i, align 4
  %idxprom290 = sext i32 %221 to i64
  %arrayidx291 = getelementptr inbounds double, ptr %220, i64 %idxprom290
  store double %219, ptr %arrayidx291, align 8
  %222 = load i32, ptr %j, align 4
  %223 = load i32, ptr %i, align 4
  %cmp292 = icmp ne i32 %222, %223
  br i1 %cmp292, label %if.then294, label %if.end296

if.then294:                                       ; preds = %for.body274
  %224 = load ptr, ptr @__stderrp, align 8
  %call295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.4)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end296:                                        ; preds = %for.body274
  %225 = load i32, ptr %i, align 4
  %cmp297 = icmp ne i32 %225, 0
  br i1 %cmp297, label %if.then299, label %if.end318

if.then299:                                       ; preds = %if.end296
  %226 = load ptr, ptr %w1_l.addr, align 8
  %227 = load i32, ptr %i, align 4
  %idxprom300 = sext i32 %227 to i64
  %arrayidx301 = getelementptr inbounds double, ptr %226, i64 %idxprom300
  %228 = load double, ptr %arrayidx301, align 8
  %sub302 = fsub double 1.000000e+00, %228
  %229 = load ptr, ptr %w2_l.addr, align 8
  %230 = load i32, ptr %i, align 4
  %sub303 = sub nsw i32 %230, 1
  %idxprom304 = sext i32 %sub303 to i64
  %arrayidx305 = getelementptr inbounds double, ptr %229, i64 %idxprom304
  %231 = load double, ptr %arrayidx305, align 8
  %sub306 = fsub double %sub302, %231
  %232 = call double @llvm.fabs.f64(double %sub306)
  %cmp307 = fcmp ogt double %232, 1.000000e-02
  br i1 %cmp307, label %if.then309, label %if.end317

if.then309:                                       ; preds = %if.then299
  %233 = load ptr, ptr @__stderrp, align 8
  %call310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef @.str.5)
  %234 = load ptr, ptr @__stderrp, align 8
  %235 = load ptr, ptr %w1_l.addr, align 8
  %236 = load i32, ptr %i, align 4
  %idxprom311 = sext i32 %236 to i64
  %arrayidx312 = getelementptr inbounds double, ptr %235, i64 %idxprom311
  %237 = load double, ptr %arrayidx312, align 8
  %238 = load ptr, ptr %w2_l.addr, align 8
  %239 = load i32, ptr %i, align 4
  %sub313 = sub nsw i32 %239, 1
  %idxprom314 = sext i32 %sub313 to i64
  %arrayidx315 = getelementptr inbounds double, ptr %238, i64 %idxprom314
  %240 = load double, ptr %arrayidx315, align 8
  %call316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef @.str.6, double noundef %237, double noundef %240)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end317:                                        ; preds = %if.then299
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.end296
  br label %for.inc319

for.inc319:                                       ; preds = %if.end318
  %241 = load i32, ptr %i, align 4
  %inc320 = add nsw i32 %241, 1
  store i32 %inc320, ptr %i, align 4
  br label %for.cond271, !llvm.loop !68

for.end321:                                       ; preds = %for.cond271
  br label %if.end326

if.else322:                                       ; preds = %for.body261
  %242 = load i32, ptr %sbmax, align 4
  %mul323 = mul nsw i32 %242, 6
  %243 = load ptr, ptr %p, align 8
  %idx.ext324 = sext i32 %mul323 to i64
  %add.ptr325 = getelementptr inbounds double, ptr %243, i64 %idx.ext324
  store ptr %add.ptr325, ptr %p, align 8
  br label %if.end326

if.end326:                                        ; preds = %if.else322, %for.end321
  br label %for.inc327

for.inc327:                                       ; preds = %if.end326
  %244 = load i32, ptr %loop, align 4
  %inc328 = add nsw i32 %244, 1
  store i32 %inc328, ptr %loop, align 4
  br label %for.cond258, !llvm.loop !69

for.end329:                                       ; preds = %for.cond258
  store i32 0, ptr %loop, align 4
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc399, %for.end329
  %245 = load i32, ptr %loop, align 4
  %cmp331 = icmp slt i32 %245, 6
  br i1 %cmp331, label %for.body333, label %for.end401

for.body333:                                      ; preds = %for.cond330
  %246 = load ptr, ptr %p, align 8
  %incdec.ptr334 = getelementptr inbounds double, ptr %246, i32 1
  store ptr %incdec.ptr334, ptr %p, align 8
  %247 = load double, ptr %246, align 8
  store double %247, ptr %freq_tp, align 8
  %248 = load ptr, ptr %p, align 8
  %incdec.ptr335 = getelementptr inbounds double, ptr %248, i32 1
  store ptr %incdec.ptr335, ptr %p, align 8
  %249 = load double, ptr %248, align 8
  %conv336 = fptosi double %249 to i32
  store i32 %conv336, ptr %sbmax, align 4
  %250 = load i32, ptr %sbmax, align 4
  %inc337 = add nsw i32 %250, 1
  store i32 %inc337, ptr %sbmax, align 4
  %251 = load double, ptr %sfreq.addr, align 8
  %252 = load double, ptr %freq_tp, align 8
  %253 = load i32, ptr %freq_scale, align 4
  %conv338 = sitofp i32 %253 to double
  %div339 = fdiv double %252, %conv338
  %cmp340 = fcmp oeq double %251, %div339
  br i1 %cmp340, label %if.then342, label %if.else394

if.then342:                                       ; preds = %for.body333
  store i32 0, ptr %i, align 4
  br label %for.cond343

for.cond343:                                      ; preds = %for.inc391, %if.then342
  %254 = load i32, ptr %i, align 4
  %255 = load i32, ptr %sbmax, align 4
  %cmp344 = icmp slt i32 %254, %255
  br i1 %cmp344, label %for.body346, label %for.end393

for.body346:                                      ; preds = %for.cond343
  %256 = load ptr, ptr %p, align 8
  %incdec.ptr347 = getelementptr inbounds double, ptr %256, i32 1
  store ptr %incdec.ptr347, ptr %p, align 8
  %257 = load double, ptr %256, align 8
  %conv348 = fptosi double %257 to i32
  store i32 %conv348, ptr %j, align 4
  %258 = load ptr, ptr %p, align 8
  %incdec.ptr349 = getelementptr inbounds double, ptr %258, i32 1
  store ptr %incdec.ptr349, ptr %p, align 8
  %259 = load ptr, ptr %p, align 8
  %incdec.ptr350 = getelementptr inbounds double, ptr %259, i32 1
  store ptr %incdec.ptr350, ptr %p, align 8
  %260 = load double, ptr %259, align 8
  %conv351 = fptosi double %260 to i32
  %261 = load ptr, ptr %bu_s.addr, align 8
  %262 = load i32, ptr %i, align 4
  %idxprom352 = sext i32 %262 to i64
  %arrayidx353 = getelementptr inbounds i32, ptr %261, i64 %idxprom352
  store i32 %conv351, ptr %arrayidx353, align 4
  %263 = load ptr, ptr %p, align 8
  %incdec.ptr354 = getelementptr inbounds double, ptr %263, i32 1
  store ptr %incdec.ptr354, ptr %p, align 8
  %264 = load double, ptr %263, align 8
  %conv355 = fptosi double %264 to i32
  %265 = load ptr, ptr %bo_s.addr, align 8
  %266 = load i32, ptr %i, align 4
  %idxprom356 = sext i32 %266 to i64
  %arrayidx357 = getelementptr inbounds i32, ptr %265, i64 %idxprom356
  store i32 %conv355, ptr %arrayidx357, align 4
  %267 = load ptr, ptr %p, align 8
  %incdec.ptr358 = getelementptr inbounds double, ptr %267, i32 1
  store ptr %incdec.ptr358, ptr %p, align 8
  %268 = load double, ptr %267, align 8
  %269 = load ptr, ptr %w1_s.addr, align 8
  %270 = load i32, ptr %i, align 4
  %idxprom359 = sext i32 %270 to i64
  %arrayidx360 = getelementptr inbounds double, ptr %269, i64 %idxprom359
  store double %268, ptr %arrayidx360, align 8
  %271 = load ptr, ptr %p, align 8
  %incdec.ptr361 = getelementptr inbounds double, ptr %271, i32 1
  store ptr %incdec.ptr361, ptr %p, align 8
  %272 = load double, ptr %271, align 8
  %273 = load ptr, ptr %w2_s.addr, align 8
  %274 = load i32, ptr %i, align 4
  %idxprom362 = sext i32 %274 to i64
  %arrayidx363 = getelementptr inbounds double, ptr %273, i64 %idxprom362
  store double %272, ptr %arrayidx363, align 8
  %275 = load i32, ptr %j, align 4
  %276 = load i32, ptr %i, align 4
  %cmp364 = icmp ne i32 %275, %276
  br i1 %cmp364, label %if.then366, label %if.end368

if.then366:                                       ; preds = %for.body346
  %277 = load ptr, ptr @__stderrp, align 8
  %call367 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef @.str.4)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end368:                                        ; preds = %for.body346
  %278 = load i32, ptr %i, align 4
  %cmp369 = icmp ne i32 %278, 0
  br i1 %cmp369, label %if.then371, label %if.end390

if.then371:                                       ; preds = %if.end368
  %279 = load ptr, ptr %w1_s.addr, align 8
  %280 = load i32, ptr %i, align 4
  %idxprom372 = sext i32 %280 to i64
  %arrayidx373 = getelementptr inbounds double, ptr %279, i64 %idxprom372
  %281 = load double, ptr %arrayidx373, align 8
  %sub374 = fsub double 1.000000e+00, %281
  %282 = load ptr, ptr %w2_s.addr, align 8
  %283 = load i32, ptr %i, align 4
  %sub375 = sub nsw i32 %283, 1
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds double, ptr %282, i64 %idxprom376
  %284 = load double, ptr %arrayidx377, align 8
  %sub378 = fsub double %sub374, %284
  %285 = call double @llvm.fabs.f64(double %sub378)
  %cmp379 = fcmp ogt double %285, 1.000000e-02
  br i1 %cmp379, label %if.then381, label %if.end389

if.then381:                                       ; preds = %if.then371
  %286 = load ptr, ptr @__stderrp, align 8
  %call382 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef @.str.7)
  %287 = load ptr, ptr @__stderrp, align 8
  %288 = load ptr, ptr %w1_s.addr, align 8
  %289 = load i32, ptr %i, align 4
  %idxprom383 = sext i32 %289 to i64
  %arrayidx384 = getelementptr inbounds double, ptr %288, i64 %idxprom383
  %290 = load double, ptr %arrayidx384, align 8
  %291 = load ptr, ptr %w2_s.addr, align 8
  %292 = load i32, ptr %i, align 4
  %sub385 = sub nsw i32 %292, 1
  %idxprom386 = sext i32 %sub385 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %291, i64 %idxprom386
  %293 = load double, ptr %arrayidx387, align 8
  %call388 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef @.str.6, double noundef %290, double noundef %293)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end389:                                        ; preds = %if.then371
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %if.end368
  br label %for.inc391

for.inc391:                                       ; preds = %if.end390
  %294 = load i32, ptr %i, align 4
  %inc392 = add nsw i32 %294, 1
  store i32 %inc392, ptr %i, align 4
  br label %for.cond343, !llvm.loop !70

for.end393:                                       ; preds = %for.cond343
  br label %if.end398

if.else394:                                       ; preds = %for.body333
  %295 = load i32, ptr %sbmax, align 4
  %mul395 = mul nsw i32 %295, 6
  %296 = load ptr, ptr %p, align 8
  %idx.ext396 = sext i32 %mul395 to i64
  %add.ptr397 = getelementptr inbounds double, ptr %296, i64 %idx.ext396
  store ptr %add.ptr397, ptr %p, align 8
  br label %if.end398

if.end398:                                        ; preds = %if.else394, %for.end393
  br label %for.inc399

for.inc399:                                       ; preds = %if.end398
  %297 = load i32, ptr %loop, align 4
  %inc400 = add nsw i32 %297, 1
  store i32 %inc400, ptr %loop, align 4
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

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { noreturn }
attributes #8 = { cold noreturn }

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
