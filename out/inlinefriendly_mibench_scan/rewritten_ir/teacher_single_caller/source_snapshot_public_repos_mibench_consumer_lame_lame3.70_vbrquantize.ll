; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_vbrquantize.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/vbrquantize.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@pow43 = external global [8208 x double], align 8
@__func__.find_scalefac = private unnamed_addr constant [14 x i8] c"find_scalefac\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"vbrquantize.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sf_ok!=10000\00", align 1
@pretab = external global [21 x i32], align 4
@masking_lower = external global float, align 4
@convert_mdct = external global i32, align 4
@scalefac_band = external global %struct.scalefac_struct, align 4

; Function Attrs: nounwind ssp uwtable
define double @calc_sfb_ave_noise(ptr noundef %xr, ptr noundef %xr34, i32 noundef %stride, i32 noundef %bw, double noundef %sfpow) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %xr34.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %bw.addr = alloca i32, align 4
  %sfpow.addr = alloca double, align 8
  %j = alloca i32, align 4
  %xfsf = alloca double, align 8
  %sfpow34 = alloca double, align 8
  %ix = alloca i32, align 4
  %temp = alloca double, align 8
  %temp2 = alloca double, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %xr34, ptr %xr34.addr, align 8
  store i32 %stride, ptr %stride.addr, align 4
  store i32 %bw, ptr %bw.addr, align 4
  store double %sfpow, ptr %sfpow.addr, align 8
  store double 0.000000e+00, ptr %xfsf, align 8
  %0 = call double @llvm.pow.f64(double %sfpow, double 7.500000e-01)
  store double %0, ptr %sfpow34, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end21, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add23, %if.end21 ]
  store i32 %storemerge, ptr %j, align 4
  %1 = load i32, ptr %stride.addr, align 4
  %2 = load i32, ptr %bw.addr, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %storemerge, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %xr34.addr, align 8
  %4 = load i32, ptr %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  %5 = load double, ptr %arrayidx, align 8
  %6 = load double, ptr %sfpow34, align 8
  %div = fdiv double %5, %6
  %7 = call double @llvm.floor.f64(double %div)
  %conv = fptosi double %7 to i32
  store i32 %conv, ptr %ix, align 4
  %cmp1 = icmp sgt i32 %conv, 8206
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %xr.addr, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %8, i64 %idxprom3
  %10 = load double, ptr %arrayidx4, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  %12 = load i32, ptr %ix, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom5
  %13 = load double, ptr %arrayidx6, align 8
  %14 = load double, ptr %sfpow.addr, align 8
  %neg = fneg double %13
  %15 = call double @llvm.fmuladd.f64(double %neg, double %14, double %11)
  store double %15, ptr %temp, align 8
  %16 = load i32, ptr %ix, align 4
  %cmp8 = icmp slt i32 %16, 8206
  br i1 %cmp8, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %xr.addr, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %17, i64 %idxprom11
  %19 = load double, ptr %arrayidx12, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %21 = load i32, ptr %ix, align 4
  %add = add nsw i32 %21, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom13
  %22 = load double, ptr %arrayidx14, align 8
  %23 = load double, ptr %sfpow.addr, align 8
  %neg16 = fneg double %22
  %24 = call double @llvm.fmuladd.f64(double %neg16, double %23, double %20)
  store double %24, ptr %temp2, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = load double, ptr %temp, align 8
  %27 = call double @llvm.fabs.f64(double %26)
  %cmp17 = fcmp olt double %25, %27
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then10
  %28 = load double, ptr %temp2, align 8
  store double %28, ptr %temp, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.then19, %if.end
  %29 = load double, ptr %temp, align 8
  %30 = load double, ptr %xfsf, align 8
  %31 = call double @llvm.fmuladd.f64(double %29, double %29, double %30)
  store double %31, ptr %xfsf, align 8
  %32 = load i32, ptr %stride.addr, align 4
  %33 = load i32, ptr %j, align 4
  %add23 = add nsw i32 %33, %32
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %34 = load double, ptr %xfsf, align 8
  %35 = load i32, ptr %bw.addr, align 4
  %conv24 = sitofp i32 %35 to double
  %div25 = fdiv double %34, %conv24
  br label %return

return:                                           ; preds = %for.body, %for.end
  %storemerge1 = phi double [ %div25, %for.end ], [ -1.000000e+00, %for.body ]
  ret double %storemerge1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind ssp uwtable
define double @find_scalefac(ptr noundef %xr, ptr noundef %xr34, i32 noundef %stride, i32 noundef %sfb, double noundef %l3_xmin, i32 noundef %bw) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %xr34.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %l3_xmin.addr = alloca double, align 8
  %bw.addr = alloca i32, align 4
  %xfsf = alloca double, align 8
  %sf = alloca double, align 8
  %sf_ok = alloca double, align 8
  %delsf = alloca double, align 8
  %sf4 = alloca i32, align 4
  %sf_ok4 = alloca i32, align 4
  %delsf4 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %xr34, ptr %xr34.addr, align 8
  store i32 %stride, ptr %stride.addr, align 4
  store double %l3_xmin, ptr %l3_xmin.addr, align 8
  store i32 %bw, ptr %bw.addr, align 4
  store double -2.050000e+01, ptr %sf, align 8
  store i32 -82, ptr %sf4, align 4
  store double 3.200000e+01, ptr %delsf, align 8
  store i32 128, ptr %delsf4, align 4
  store double 1.000000e+04, ptr %sf_ok, align 8
  store i32 10000, ptr %sf_ok4, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end16 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load double, ptr %delsf, align 8
  %div = fmul double %0, 5.000000e-01
  store double %div, ptr %delsf, align 8
  %1 = load i32, ptr %delsf4, align 4
  %div1 = sdiv i32 %1, 2
  store i32 %div1, ptr %delsf4, align 4
  %2 = load double, ptr %sf, align 8
  %exp25 = call double @llvm.exp2.f64(double %2)
  %3 = load ptr, ptr %xr.addr, align 8
  %4 = load ptr, ptr %xr34.addr, align 8
  %5 = load i32, ptr %stride.addr, align 4
  %6 = load i32, ptr %bw.addr, align 4
  %call = call double @calc_sfb_ave_noise(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, double noundef %exp25)
  store double %call, ptr %xfsf, align 8
  %cmp2 = fcmp olt double %call, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load double, ptr %delsf, align 8
  %8 = load double, ptr %sf, align 8
  %add = fadd double %8, %7
  store double %add, ptr %sf, align 8
  %9 = load i32, ptr %delsf4, align 4
  %10 = load i32, ptr %sf4, align 4
  %add3 = add nsw i32 %10, %9
  br label %if.end16

if.else:                                          ; preds = %for.body
  %11 = load double, ptr %sf_ok, align 8
  %cmp4 = fcmp oeq double %11, 1.000000e+04
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %12 = load double, ptr %sf, align 8
  store double %12, ptr %sf_ok, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %13 = load i32, ptr %sf_ok4, align 4
  %cmp6 = icmp eq i32 %13, 10000
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %14 = load i32, ptr %sf4, align 4
  store i32 %14, ptr %sf_ok4, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %15 = load double, ptr %xfsf, align 8
  %16 = load double, ptr %l3_xmin.addr, align 8
  %cmp9 = fcmp ogt double %15, %16
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end8
  %17 = load double, ptr %delsf, align 8
  %18 = load double, ptr %sf, align 8
  %sub = fsub double %18, %17
  store double %sub, ptr %sf, align 8
  %19 = load i32, ptr %delsf4, align 4
  %20 = load i32, ptr %sf4, align 4
  %sub11 = sub nsw i32 %20, %19
  br label %if.end16

if.else12:                                        ; preds = %if.end8
  %21 = load double, ptr %sf, align 8
  store double %21, ptr %sf_ok, align 8
  %22 = load i32, ptr %sf4, align 4
  store i32 %22, ptr %sf_ok4, align 4
  %23 = load double, ptr %delsf, align 8
  %add13 = fadd double %21, %23
  store double %add13, ptr %sf, align 8
  %24 = load i32, ptr %delsf4, align 4
  %add14 = add nsw i32 %22, %24
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.else12, %if.then
  %storemerge7 = phi i32 [ %add3, %if.then ], [ %add14, %if.else12 ], [ %sub11, %if.then10 ]
  store i32 %storemerge7, ptr %sf4, align 4
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %26 = load double, ptr %sf_ok, align 8
  %cmp17 = fcmp oeq double %26, 1.000000e+04
  br i1 %cmp17, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.find_scalefac, ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #6
  unreachable

cond.end:                                         ; preds = %for.end
  %27 = load double, ptr %sf_ok, align 8
  %add18 = fadd double %27, 7.500000e-01
  store double %add18, ptr %sf, align 8
  %28 = load i32, ptr %sf_ok4, align 4
  %add19 = add nsw i32 %28, 3
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %cond.end
  %storemerge1 = phi i32 [ %add19, %cond.end ], [ %sub45, %if.end43 ]
  store i32 %storemerge1, ptr %sf4, align 4
  %29 = load double, ptr %sf, align 8
  %30 = load double, ptr %sf_ok, align 8
  %add20 = fadd double %30, 1.000000e-02
  %cmp21 = fcmp ogt double %29, %add20
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load double, ptr %sf, align 8
  %32 = load double, ptr %sf_ok, align 8
  %33 = load double, ptr %delsf, align 8
  %34 = call double @llvm.fmuladd.f64(double %33, double 2.000000e+00, double %32)
  %sub23 = fsub double %31, %34
  %35 = call double @llvm.fabs.f64(double %sub23)
  %cmp24 = fcmp olt double %35, 1.000000e-02
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.body
  %36 = load double, ptr %sf, align 8
  %sub27 = fadd double %36, -2.500000e-01
  store double %sub27, ptr %sf, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.body
  %37 = load i32, ptr %sf4, align 4
  %38 = load i32, ptr %sf_ok4, align 4
  %39 = load i32, ptr %delsf4, align 4
  %mul = shl nsw i32 %39, 1
  %add29 = add nsw i32 %38, %mul
  %cmp30 = icmp eq i32 %37, %add29
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %40 = load i32, ptr %sf4, align 4
  %sub33 = add nsw i32 %40, -1
  store i32 %sub33, ptr %sf4, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28
  %41 = load double, ptr %sf, align 8
  %exp2 = call double @llvm.exp2.f64(double %41)
  %42 = load ptr, ptr %xr.addr, align 8
  %43 = load ptr, ptr %xr34.addr, align 8
  %44 = load i32, ptr %stride.addr, align 4
  %45 = load i32, ptr %bw.addr, align 4
  %call35 = call double @calc_sfb_ave_noise(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, double noundef %exp2)
  store double %call35, ptr %xfsf, align 8
  %cmp36 = fcmp ogt double %call35, 0.000000e+00
  br i1 %cmp36, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end34
  %46 = load double, ptr %xfsf, align 8
  %47 = load double, ptr %l3_xmin.addr, align 8
  %cmp39 = fcmp ugt double %46, %47
  br i1 %cmp39, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.then38
  %48 = load double, ptr %sf, align 8
  br label %return

if.end43:                                         ; preds = %if.then38, %if.end34
  %49 = load double, ptr %sf, align 8
  %sub44 = fadd double %49, -2.500000e-01
  store double %sub44, ptr %sf, align 8
  %50 = load i32, ptr %sf4, align 4
  %sub45 = add nsw i32 %50, -1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %51 = load double, ptr %sf_ok, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then41
  %storemerge2 = phi double [ %51, %while.end ], [ %48, %if.then41 ]
  ret double %storemerge2
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define double @compute_scalefacs_short(ptr noundef %vbrsf, ptr noundef %cod_info, ptr noundef %scalefac) #0 {
entry:
  %vbrsf.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %maxrange = alloca double, align 8
  %maxover = alloca double, align 8
  %sf = alloca [12 x [3 x double]], align 8
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %ifqstep_inv = alloca i32, align 4
  store ptr %vbrsf, ptr %vbrsf.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %0 = load i32, ptr %scalefac_scale, align 4
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, ptr %ifqstep_inv, align 4
  %1 = load ptr, ptr %vbrsf.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %sf, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false)
  store double 0.000000e+00, ptr %maxover, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ]
  store i32 %storemerge, ptr %sfb, align 4
  %cmp1 = icmp slt i32 %storemerge, 12
  br i1 %cmp1, label %for.cond2, label %for.end33

for.cond2:                                        ; preds = %for.cond, %for.inc
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp3 = icmp slt i32 %storemerge1, 3
  br i1 %cmp3, label %for.body4, label %for.inc31

for.body4:                                        ; preds = %for.cond2
  %2 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %idxprom, i64 %idxprom5
  %4 = load double, ptr %arrayidx6, align 8
  %fneg = fneg double %4
  %5 = load i32, ptr %ifqstep_inv, align 4
  %conv = sitofp i32 %5 to double
  %6 = call double @llvm.fmuladd.f64(double %fneg, double %conv, double 7.500000e-01)
  %add = fadd double %6, 1.000000e-04
  %7 = call double @llvm.floor.f64(double %add)
  %conv7 = fptosi double %7 to i32
  %8 = load ptr, ptr %scalefac.addr, align 8
  %9 = load i32, ptr %sfb, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %8, i64 %idxprom8, i64 %idxprom10
  store i32 %conv7, ptr %arrayidx11, align 4
  %cmp12 = icmp slt i32 %9, 6
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %11 = load i32, ptr %ifqstep_inv, align 4
  %conv14 = sitofp i32 %11 to double
  %div = fdiv double 1.500000e+01, %conv14
  br label %if.end

if.else:                                          ; preds = %for.body4
  %12 = load i32, ptr %ifqstep_inv, align 4
  %conv15 = sitofp i32 %12 to double
  %div16 = fdiv double 7.000000e+00, %conv15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge2 = phi double [ %div16, %if.else ], [ %div, %if.then ]
  store double %storemerge2, ptr %maxrange, align 8
  %13 = load i32, ptr %sfb, align 4
  %idxprom17 = sext i32 %13 to i64
  %14 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %idxprom17, i64 %idxprom19
  %15 = load double, ptr %arrayidx20, align 8
  %add21 = fadd double %storemerge2, %15
  %16 = load double, ptr %maxover, align 8
  %cmp22 = fcmp ogt double %add21, %16
  br i1 %cmp22, label %if.then24, label %for.inc

if.then24:                                        ; preds = %if.end
  %17 = load double, ptr %maxrange, align 8
  %18 = load i32, ptr %sfb, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %idxprom25, i64 %idxprom27
  %20 = load double, ptr %arrayidx28, align 8
  %add29 = fadd double %17, %20
  store double %add29, ptr %maxover, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then24
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond2, !llvm.loop !10

for.inc31:                                        ; preds = %for.cond2
  %22 = load i32, ptr %sfb, align 4
  %inc32 = add nsw i32 %22, 1
  br label %for.cond, !llvm.loop !11

for.end33:                                        ; preds = %for.cond
  %23 = load double, ptr %maxover, align 8
  ret double %23
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define double @compute_scalefacs_long(ptr noundef %vbrsf, ptr noundef %cod_info, ptr noundef %scalefac) #0 {
entry:
  %vbrsf.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %sfb = alloca i32, align 4
  %sf = alloca [21 x double], align 8
  %maxrange = alloca double, align 8
  %maxover = alloca double, align 8
  %ifqstep_inv = alloca i32, align 4
  store ptr %vbrsf, ptr %vbrsf.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %0 = load i32, ptr %scalefac_scale, align 4
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, ptr %ifqstep_inv, align 4
  %1 = load ptr, ptr %vbrsf.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %sf, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  %2 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 12
  store i32 0, ptr %preflag, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 11, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %sfb, align 4
  %cmp1 = icmp slt i32 %storemerge, 21
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom
  %4 = load double, ptr %arrayidx, align 8
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = load i32, ptr %ifqstep_inv, align 4
  %div = sdiv i32 %5, %6
  %conv = sitofp i32 %div to double
  %add = fadd double %4, %conv
  %cmp4 = fcmp ogt double %add, 0.000000e+00
  br i1 %cmp4, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %sfb, align 4
  %inc = add nsw i32 %7, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.body, %for.cond
  %8 = load i32, ptr %sfb, align 4
  %cmp6 = icmp eq i32 %8, 21
  br i1 %cmp6, label %if.then8, label %if.end24

if.then8:                                         ; preds = %for.end
  %9 = load ptr, ptr %cod_info.addr, align 8
  %preflag9 = getelementptr inbounds %struct.gr_info, ptr %9, i64 0, i32 12
  store i32 1, ptr %preflag9, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.body13, %if.then8
  %storemerge3 = phi i32 [ 11, %if.then8 ], [ %inc22, %for.body13 ]
  store i32 %storemerge3, ptr %sfb, align 4
  %cmp11 = icmp slt i32 %storemerge3, 21
  br i1 %cmp11, label %for.body13, label %if.end24

for.body13:                                       ; preds = %for.cond10
  %10 = load i32, ptr %sfb, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom14
  %11 = load i32, ptr %arrayidx15, align 4
  %12 = load i32, ptr %ifqstep_inv, align 4
  %div16 = sdiv i32 %11, %12
  %conv17 = sitofp i32 %div16 to double
  %13 = load i32, ptr %sfb, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom18
  %14 = load double, ptr %arrayidx19, align 8
  %add20 = fadd double %14, %conv17
  store double %add20, ptr %arrayidx19, align 8
  %15 = load i32, ptr %sfb, align 4
  %inc22 = add nsw i32 %15, 1
  br label %for.cond10, !llvm.loop !13

if.end24:                                         ; preds = %for.cond10, %for.end
  store double 0.000000e+00, ptr %maxover, align 8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc54, %if.end24
  %storemerge1 = phi i32 [ 0, %if.end24 ], [ %inc55, %for.inc54 ]
  store i32 %storemerge1, ptr %sfb, align 4
  %cmp26 = icmp slt i32 %storemerge1, 21
  br i1 %cmp26, label %for.body28, label %for.end56

for.body28:                                       ; preds = %for.cond25
  %16 = load i32, ptr %sfb, align 4
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom29
  %17 = load double, ptr %arrayidx30, align 8
  %fneg = fneg double %17
  %18 = load i32, ptr %ifqstep_inv, align 4
  %conv31 = sitofp i32 %18 to double
  %19 = call double @llvm.fmuladd.f64(double %fneg, double %conv31, double 7.500000e-01)
  %add32 = fadd double %19, 1.000000e-04
  %20 = call double @llvm.floor.f64(double %add32)
  %conv33 = fptosi double %20 to i32
  %21 = load ptr, ptr %scalefac.addr, align 8
  %22 = load i32, ptr %sfb, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %21, i64 %idxprom34
  store i32 %conv33, ptr %arrayidx35, align 4
  %cmp36 = icmp slt i32 %22, 11
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %for.body28
  %23 = load i32, ptr %ifqstep_inv, align 4
  %conv39 = sitofp i32 %23 to double
  %div40 = fdiv double 1.500000e+01, %conv39
  br label %if.end43

if.else:                                          ; preds = %for.body28
  %24 = load i32, ptr %ifqstep_inv, align 4
  %conv41 = sitofp i32 %24 to double
  %div42 = fdiv double 7.000000e+00, %conv41
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38
  %storemerge2 = phi double [ %div42, %if.else ], [ %div40, %if.then38 ]
  store double %storemerge2, ptr %maxrange, align 8
  %25 = load i32, ptr %sfb, align 4
  %idxprom44 = sext i32 %25 to i64
  %arrayidx45 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom44
  %26 = load double, ptr %arrayidx45, align 8
  %add46 = fadd double %storemerge2, %26
  %27 = load double, ptr %maxover, align 8
  %cmp47 = fcmp ogt double %add46, %27
  br i1 %cmp47, label %if.then49, label %for.inc54

if.then49:                                        ; preds = %if.end43
  %28 = load double, ptr %maxrange, align 8
  %29 = load i32, ptr %sfb, align 4
  %idxprom50 = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom50
  %30 = load double, ptr %arrayidx51, align 8
  %add52 = fadd double %28, %30
  store double %add52, ptr %maxover, align 8
  br label %for.inc54

for.inc54:                                        ; preds = %if.end43, %if.then49
  %31 = load i32, ptr %sfb, align 4
  %inc55 = add nsw i32 %31, 1
  br label %for.cond25, !llvm.loop !14

for.end56:                                        ; preds = %for.cond25
  %32 = load double, ptr %maxover, align 8
  ret double %32
}

; Function Attrs: nounwind ssp uwtable
define void @VBR_iteration_loop_new(ptr noundef %gfp, ptr noundef %pe, ptr noundef %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr noundef %scalefac) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %ratio.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %l3_xmin = alloca [2 x [2 x %struct.III_psy_xmin]], align 8
  %start = alloca i32, align 4
  %bw = alloca i32, align 4
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %vbrsf = alloca %struct.III_psy_xmin, align 8
  %vbrmax = alloca double, align 8
  %xr34 = alloca [576 x double], align 8
  %cod_info = alloca ptr, align 8
  %shortblock = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ratio, ptr %ratio.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  call void @iteration_init(ptr noundef %gfp, ptr noundef %l3_side, ptr noundef %l3_enc) #7
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %0 = load i32, ptr %VBR_q, align 4
  %mul = shl nsw i32 %0, 1
  %add = add nsw i32 %mul, -10
  %conv = sitofp i32 %add to double
  %div = fdiv double %conv, 1.000000e+01
  %__exp10 = call double @__exp10(double %div) #7
  store float 1.000000e+00, ptr @masking_lower, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc247, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc248, %for.inc247 ]
  store i32 %storemerge, ptr %gr, align 4
  %1 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 45
  %2 = load i32, ptr %mode_gr, align 8
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end249

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr @convert_mdct, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %xr.addr, align 8
  %5 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x [576 x double]], ptr %4, i64 %idxprom
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], ptr %4, i64 %idxprom3
  call void @ms_convert(ptr noundef %arrayidx, ptr noundef %arrayidx4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc244, %if.end
  %storemerge1 = phi i32 [ 0, %if.end ], [ %inc245, %for.inc244 ]
  store i32 %storemerge1, ptr %ch, align 4
  %6 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 46
  %7 = load i32, ptr %stereo, align 4
  %cmp7 = icmp slt i32 %storemerge1, %7
  br i1 %cmp7, label %for.body9, label %for.inc247

for.body9:                                        ; preds = %for.cond6
  %8 = load ptr, ptr %l3_side.addr, align 8
  %9 = load i32, ptr %gr, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds %struct.III_side_info_t, ptr %8, i64 0, i32 4, i64 %idxprom11
  %10 = load i32, ptr %ch, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx12, i64 0, i64 %idxprom14
  store ptr %arrayidx15, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx15, i64 0, i32 6
  %11 = load i32, ptr %block_type, align 8
  %cmp16 = icmp eq i32 %11, 2
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, ptr %shortblock, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.body21, %for.body9
  %storemerge2 = phi i32 [ 0, %for.body9 ], [ %inc, %for.body21 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp19 = icmp slt i32 %storemerge2, 576
  br i1 %cmp19, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond18
  %12 = load ptr, ptr %xr.addr, align 8
  %13 = load i32, ptr %gr, align 4
  %idxprom22 = sext i32 %13 to i64
  %14 = load i32, ptr %ch, align 4
  %idxprom24 = sext i32 %14 to i64
  %15 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [2 x [576 x double]], ptr %12, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %16 = load double, ptr %arrayidx27, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = call double @llvm.sqrt.f64(double %17)
  %mul28 = fmul double %18, %17
  %19 = call double @llvm.sqrt.f64(double %mul28)
  %20 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom29
  store double %19, ptr %arrayidx30, align 8
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond18, !llvm.loop !15

for.end:                                          ; preds = %for.cond18
  %22 = load ptr, ptr %gfp.addr, align 8
  %23 = load ptr, ptr %xr.addr, align 8
  %24 = load i32, ptr %gr, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [2 x [576 x double]], ptr %23, i64 %idxprom31, i64 %idxprom33
  %26 = load ptr, ptr %ratio.addr, align 8
  %idxprom36 = sext i32 %24 to i64
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %26, i64 %idxprom36, i64 %idxprom38
  %27 = load ptr, ptr %cod_info, align 8
  %28 = load i32, ptr %gr, align 4
  %idxprom40 = sext i32 %28 to i64
  %29 = load i32, ptr %ch, align 4
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %idxprom40, i64 %idxprom42
  %call = call i32 @calc_xmin(ptr noundef %22, ptr noundef %arrayidx34, ptr noundef %arrayidx39, ptr noundef %27, ptr noundef nonnull %arrayidx43) #7
  store double 0.000000e+00, ptr %vbrmax, align 8
  %30 = load i32, ptr %shortblock, align 4
  %tobool44.not = icmp eq i32 %30, 0
  br i1 %tobool44.not, label %for.cond107, label %for.cond46

for.cond46:                                       ; preds = %for.end, %for.inc104
  %storemerge7 = phi i32 [ %inc105, %for.inc104 ], [ 0, %for.end ]
  store i32 %storemerge7, ptr %sfb, align 4
  %cmp47 = icmp slt i32 %storemerge7, 12
  br i1 %cmp47, label %for.cond50, label %if.end150

for.cond50:                                       ; preds = %for.cond46, %for.inc101
  %storemerge8 = phi i32 [ %inc102, %for.inc101 ], [ 0, %for.cond46 ]
  store i32 %storemerge8, ptr %i, align 4
  %cmp51 = icmp slt i32 %storemerge8, 3
  br i1 %cmp51, label %for.body53, label %for.inc104

for.body53:                                       ; preds = %for.cond50
  %31 = load i32, ptr %sfb, align 4
  %idxprom54 = sext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom54
  %32 = load i32, ptr %arrayidx55, align 4
  store i32 %32, ptr %start, align 4
  %add56 = add nsw i32 %31, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom57
  %33 = load i32, ptr %arrayidx58, align 4
  %sub = sub nsw i32 %33, %32
  store i32 %sub, ptr %bw, align 4
  %34 = load ptr, ptr %xr.addr, align 8
  %35 = load i32, ptr %gr, align 4
  %idxprom59 = sext i32 %35 to i64
  %36 = load i32, ptr %ch, align 4
  %idxprom61 = sext i32 %36 to i64
  %37 = load i32, ptr %start, align 4
  %mul63 = mul nsw i32 %37, 3
  %38 = load i32, ptr %i, align 4
  %add64 = add nsw i32 %mul63, %38
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [2 x [576 x double]], ptr %34, i64 %idxprom59, i64 %idxprom61, i64 %idxprom65
  %mul67 = mul nsw i32 %37, 3
  %add68 = add nsw i32 %mul67, %38
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom69
  %39 = load i32, ptr %sfb, align 4
  %40 = load float, ptr @masking_lower, align 4
  %conv71 = fpext float %40 to double
  %41 = load i32, ptr %gr, align 4
  %idxprom72 = sext i32 %41 to i64
  %42 = load i32, ptr %ch, align 4
  %idxprom74 = sext i32 %42 to i64
  %43 = load i32, ptr %sfb, align 4
  %idxprom76 = sext i32 %43 to i64
  %44 = load i32, ptr %i, align 4
  %idxprom78 = sext i32 %44 to i64
  %arrayidx79 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %idxprom72, i64 %idxprom74, i32 1, i64 %idxprom76, i64 %idxprom78
  %45 = load double, ptr %arrayidx79, align 8
  %mul80 = fmul double %45, %conv71
  %46 = load i32, ptr %bw, align 4
  %call81 = call double @find_scalefac(ptr noundef %arrayidx66, ptr noundef nonnull %arrayidx70, i32 noundef 3, i32 noundef %39, double noundef %mul80, i32 noundef %46)
  %47 = load i32, ptr %sfb, align 4
  %idxprom83 = sext i32 %47 to i64
  %48 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %48 to i64
  %arrayidx86 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1, i64 %idxprom83, i64 %idxprom85
  store double %call81, ptr %arrayidx86, align 8
  %idxprom88 = sext i32 %47 to i64
  %idxprom90 = sext i32 %48 to i64
  %arrayidx91 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1, i64 %idxprom88, i64 %idxprom90
  %49 = load double, ptr %arrayidx91, align 8
  %50 = load double, ptr %vbrmax, align 8
  %cmp92 = fcmp ogt double %49, %50
  br i1 %cmp92, label %if.then94, label %for.inc101

if.then94:                                        ; preds = %for.body53
  %51 = load i32, ptr %sfb, align 4
  %idxprom96 = sext i32 %51 to i64
  %52 = load i32, ptr %i, align 4
  %idxprom98 = sext i32 %52 to i64
  %arrayidx99 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1, i64 %idxprom96, i64 %idxprom98
  %53 = load double, ptr %arrayidx99, align 8
  store double %53, ptr %vbrmax, align 8
  br label %for.inc101

for.inc101:                                       ; preds = %for.body53, %if.then94
  %54 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %54, 1
  br label %for.cond50, !llvm.loop !16

for.inc104:                                       ; preds = %for.cond50
  %55 = load i32, ptr %sfb, align 4
  %inc105 = add nsw i32 %55, 1
  br label %for.cond46, !llvm.loop !17

for.cond107:                                      ; preds = %for.end, %for.inc147
  %storemerge3 = phi i32 [ %inc148, %for.inc147 ], [ 0, %for.end ]
  store i32 %storemerge3, ptr %sfb, align 4
  %cmp108 = icmp slt i32 %storemerge3, 21
  br i1 %cmp108, label %for.body110, label %if.end150

for.body110:                                      ; preds = %for.cond107
  %56 = load i32, ptr %sfb, align 4
  %idxprom111 = sext i32 %56 to i64
  %arrayidx112 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom111
  %57 = load i32, ptr %arrayidx112, align 4
  store i32 %57, ptr %start, align 4
  %add113 = add nsw i32 %56, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom114
  %58 = load i32, ptr %arrayidx115, align 4
  %sub116 = sub nsw i32 %58, %57
  store i32 %sub116, ptr %bw, align 4
  %59 = load ptr, ptr %xr.addr, align 8
  %60 = load i32, ptr %gr, align 4
  %idxprom117 = sext i32 %60 to i64
  %61 = load i32, ptr %ch, align 4
  %idxprom119 = sext i32 %61 to i64
  %62 = load i32, ptr %start, align 4
  %idxprom121 = sext i32 %62 to i64
  %arrayidx122 = getelementptr inbounds [2 x [576 x double]], ptr %59, i64 %idxprom117, i64 %idxprom119, i64 %idxprom121
  %idxprom123 = sext i32 %62 to i64
  %arrayidx124 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom123
  %63 = load i32, ptr %sfb, align 4
  %64 = load float, ptr @masking_lower, align 4
  %conv125 = fpext float %64 to double
  %65 = load i32, ptr %gr, align 4
  %idxprom126 = sext i32 %65 to i64
  %66 = load i32, ptr %ch, align 4
  %idxprom128 = sext i32 %66 to i64
  %arrayidx129 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %idxprom126, i64 %idxprom128
  %67 = load i32, ptr %sfb, align 4
  %idxprom130 = sext i32 %67 to i64
  %arrayidx131 = getelementptr inbounds [22 x double], ptr %arrayidx129, i64 0, i64 %idxprom130
  %68 = load double, ptr %arrayidx131, align 8
  %mul132 = fmul double %68, %conv125
  %69 = load i32, ptr %bw, align 4
  %call133 = call double @find_scalefac(ptr noundef %arrayidx122, ptr noundef nonnull %arrayidx124, i32 noundef 1, i32 noundef %63, double noundef %mul132, i32 noundef %69)
  %70 = load i32, ptr %sfb, align 4
  %idxprom135 = sext i32 %70 to i64
  %arrayidx136 = getelementptr inbounds [22 x double], ptr %vbrsf, i64 0, i64 %idxprom135
  store double %call133, ptr %arrayidx136, align 8
  %idxprom138 = sext i32 %70 to i64
  %arrayidx139 = getelementptr inbounds [22 x double], ptr %vbrsf, i64 0, i64 %idxprom138
  %71 = load double, ptr %arrayidx139, align 8
  %72 = load double, ptr %vbrmax, align 8
  %cmp140 = fcmp ogt double %71, %72
  br i1 %cmp140, label %if.then142, label %for.inc147

if.then142:                                       ; preds = %for.body110
  %73 = load i32, ptr %sfb, align 4
  %idxprom144 = sext i32 %73 to i64
  %arrayidx145 = getelementptr inbounds [22 x double], ptr %vbrsf, i64 0, i64 %idxprom144
  %74 = load double, ptr %arrayidx145, align 8
  store double %74, ptr %vbrmax, align 8
  br label %for.inc147

for.inc147:                                       ; preds = %for.body110, %if.then142
  %75 = load i32, ptr %sfb, align 4
  %inc148 = add nsw i32 %75, 1
  br label %for.cond107, !llvm.loop !18

if.end150:                                        ; preds = %for.cond107, %for.cond46
  %76 = load double, ptr %vbrmax, align 8
  %77 = call double @llvm.fmuladd.f64(double %76, double 4.000000e+00, double 2.100000e+02)
  %add152 = fadd double %77, 5.000000e-01
  %78 = call double @llvm.floor.f64(double %add152)
  %conv153 = fptoui double %78 to i32
  %79 = load ptr, ptr %cod_info, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %79, i64 0, i32 3
  store i32 %conv153, ptr %global_gain, align 4
  %80 = load i32, ptr %shortblock, align 4
  %tobool154.not = icmp eq i32 %80, 0
  br i1 %tobool154.not, label %for.cond204, label %for.cond156

for.cond156:                                      ; preds = %if.end150, %for.inc173
  %storemerge5 = phi i32 [ %inc174, %for.inc173 ], [ 0, %if.end150 ]
  store i32 %storemerge5, ptr %sfb, align 4
  %cmp157 = icmp slt i32 %storemerge5, 12
  br i1 %cmp157, label %for.cond160, label %for.end175

for.cond160:                                      ; preds = %for.cond156, %for.body163
  %storemerge6 = phi i32 [ %inc171, %for.body163 ], [ 0, %for.cond156 ]
  store i32 %storemerge6, ptr %i, align 4
  %cmp161 = icmp slt i32 %storemerge6, 3
  br i1 %cmp161, label %for.body163, label %for.inc173

for.body163:                                      ; preds = %for.cond160
  %81 = load double, ptr %vbrmax, align 8
  %82 = load i32, ptr %sfb, align 4
  %idxprom165 = sext i32 %82 to i64
  %83 = load i32, ptr %i, align 4
  %idxprom167 = sext i32 %83 to i64
  %arrayidx168 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1, i64 %idxprom165, i64 %idxprom167
  %84 = load double, ptr %arrayidx168, align 8
  %sub169 = fsub double %84, %81
  store double %sub169, ptr %arrayidx168, align 8
  %85 = load i32, ptr %i, align 4
  %inc171 = add nsw i32 %85, 1
  br label %for.cond160, !llvm.loop !19

for.inc173:                                       ; preds = %for.cond160
  %86 = load i32, ptr %sfb, align 4
  %inc174 = add nsw i32 %86, 1
  br label %for.cond156, !llvm.loop !20

for.end175:                                       ; preds = %for.cond156
  %87 = load ptr, ptr %cod_info, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %87, i64 0, i32 13
  store i32 0, ptr %scalefac_scale, align 4
  %s176 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1
  %88 = load ptr, ptr %scalefac.addr, align 8
  %89 = load i32, ptr %gr, align 4
  %idxprom178 = sext i32 %89 to i64
  %90 = load i32, ptr %ch, align 4
  %idxprom180 = sext i32 %90 to i64
  %s182 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %88, i64 %idxprom178, i64 %idxprom180, i32 1
  %call184 = call double @compute_scalefacs_short(ptr noundef nonnull %s176, ptr noundef %87, ptr noundef nonnull %s182)
  %cmp185 = fcmp ogt double %call184, 0.000000e+00
  br i1 %cmp185, label %if.then187, label %for.inc244

if.then187:                                       ; preds = %for.end175
  %91 = load ptr, ptr %cod_info, align 8
  %scalefac_scale188 = getelementptr inbounds %struct.gr_info, ptr %91, i64 0, i32 13
  store i32 1, ptr %scalefac_scale188, align 4
  %s189 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1
  %92 = load ptr, ptr %scalefac.addr, align 8
  %93 = load i32, ptr %gr, align 4
  %idxprom191 = sext i32 %93 to i64
  %94 = load i32, ptr %ch, align 4
  %idxprom193 = sext i32 %94 to i64
  %s195 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %92, i64 %idxprom191, i64 %idxprom193, i32 1
  %call197 = call double @compute_scalefacs_short(ptr noundef nonnull %s189, ptr noundef %91, ptr noundef nonnull %s195)
  %cmp198 = fcmp ogt double %call197, 0.000000e+00
  br i1 %cmp198, label %if.then200, label %for.inc244

if.then200:                                       ; preds = %if.then187
  call void @exit(i32 noundef 32) #8
  unreachable

for.cond204:                                      ; preds = %if.end150, %for.body207
  %storemerge4 = phi i32 [ %inc213, %for.body207 ], [ 0, %if.end150 ]
  store i32 %storemerge4, ptr %sfb, align 4
  %cmp205 = icmp slt i32 %storemerge4, 21
  br i1 %cmp205, label %for.body207, label %for.end214

for.body207:                                      ; preds = %for.cond204
  %95 = load double, ptr %vbrmax, align 8
  %96 = load i32, ptr %sfb, align 4
  %idxprom209 = sext i32 %96 to i64
  %arrayidx210 = getelementptr inbounds [22 x double], ptr %vbrsf, i64 0, i64 %idxprom209
  %97 = load double, ptr %arrayidx210, align 8
  %sub211 = fsub double %97, %95
  store double %sub211, ptr %arrayidx210, align 8
  %98 = load i32, ptr %sfb, align 4
  %inc213 = add nsw i32 %98, 1
  br label %for.cond204, !llvm.loop !21

for.end214:                                       ; preds = %for.cond204
  %99 = load ptr, ptr %cod_info, align 8
  %scalefac_scale215 = getelementptr inbounds %struct.gr_info, ptr %99, i64 0, i32 13
  store i32 0, ptr %scalefac_scale215, align 4
  %100 = load ptr, ptr %scalefac.addr, align 8
  %101 = load i32, ptr %gr, align 4
  %idxprom218 = sext i32 %101 to i64
  %102 = load i32, ptr %ch, align 4
  %idxprom220 = sext i32 %102 to i64
  %arrayidx221 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %100, i64 %idxprom218, i64 %idxprom220
  %call224 = call double @compute_scalefacs_long(ptr noundef nonnull %vbrsf, ptr noundef %99, ptr noundef %arrayidx221)
  %cmp225 = fcmp ogt double %call224, 0.000000e+00
  br i1 %cmp225, label %if.then227, label %for.inc244

if.then227:                                       ; preds = %for.end214
  %103 = load ptr, ptr %cod_info, align 8
  %scalefac_scale228 = getelementptr inbounds %struct.gr_info, ptr %103, i64 0, i32 13
  store i32 1, ptr %scalefac_scale228, align 4
  %104 = load ptr, ptr %scalefac.addr, align 8
  %105 = load i32, ptr %gr, align 4
  %idxprom231 = sext i32 %105 to i64
  %106 = load i32, ptr %ch, align 4
  %idxprom233 = sext i32 %106 to i64
  %arrayidx234 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %104, i64 %idxprom231, i64 %idxprom233
  %call237 = call double @compute_scalefacs_long(ptr noundef nonnull %vbrsf, ptr noundef %103, ptr noundef %arrayidx234)
  %cmp238 = fcmp ogt double %call237, 0.000000e+00
  br i1 %cmp238, label %if.then240, label %for.inc244

if.then240:                                       ; preds = %if.then227
  call void @exit(i32 noundef 32) #8
  unreachable

for.inc244:                                       ; preds = %if.then187, %for.end175, %if.then227, %for.end214
  %107 = load i32, ptr %ch, align 4
  %inc245 = add nsw i32 %107, 1
  br label %for.cond6, !llvm.loop !22

for.inc247:                                       ; preds = %for.cond6
  %108 = load i32, ptr %gr, align 4
  %inc248 = add nsw i32 %108, 1
  br label %for.cond, !llvm.loop !23

for.end249:                                       ; preds = %for.cond
  ret void
}

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) #4

declare void @ms_convert(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #1

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #1

declare double @__exp10(double)

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
