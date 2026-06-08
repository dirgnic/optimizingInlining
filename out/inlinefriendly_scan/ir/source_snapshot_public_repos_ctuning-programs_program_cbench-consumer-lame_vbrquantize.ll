; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/vbrquantize.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/vbrquantize.c"
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @calc_sfb_ave_noise(ptr noundef %xr, ptr noundef %xr34, i32 noundef %stride, i32 noundef %bw, double noundef %sfpow) #0 {
entry:
  %retval = alloca double, align 8
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
  %0 = load double, ptr %sfpow.addr, align 8
  %1 = call double @llvm.pow.f64(double %0, double 7.500000e-01)
  store double %1, ptr %sfpow34, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %stride.addr, align 4
  %4 = load i32, ptr %bw.addr, align 4
  %mul = mul nsw i32 %3, %4
  %cmp = icmp slt i32 %2, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %xr34.addr, align 8
  %6 = load i32, ptr %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds double, ptr %5, i64 %idxprom
  %7 = load double, ptr %arrayidx, align 8
  %8 = load double, ptr %sfpow34, align 8
  %div = fdiv double %7, %8
  %9 = call double @llvm.floor.f64(double %div)
  %conv = fptosi double %9 to i32
  store i32 %conv, ptr %ix, align 4
  %10 = load i32, ptr %ix, align 4
  %cmp1 = icmp sgt i32 %10, 8206
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store double -1.000000e+00, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %xr.addr, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %11, i64 %idxprom3
  %13 = load double, ptr %arrayidx4, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = load i32, ptr %ix, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom5
  %16 = load double, ptr %arrayidx6, align 8
  %17 = load double, ptr %sfpow.addr, align 8
  %neg = fneg double %16
  %18 = call double @llvm.fmuladd.f64(double %neg, double %17, double %14)
  store double %18, ptr %temp, align 8
  %19 = load i32, ptr %ix, align 4
  %cmp8 = icmp slt i32 %19, 8206
  br i1 %cmp8, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.end
  %20 = load ptr, ptr %xr.addr, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %20, i64 %idxprom11
  %22 = load double, ptr %arrayidx12, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = load i32, ptr %ix, align 4
  %add = add nsw i32 %24, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom13
  %25 = load double, ptr %arrayidx14, align 8
  %26 = load double, ptr %sfpow.addr, align 8
  %neg16 = fneg double %25
  %27 = call double @llvm.fmuladd.f64(double %neg16, double %26, double %23)
  store double %27, ptr %temp2, align 8
  %28 = load double, ptr %temp2, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = load double, ptr %temp, align 8
  %31 = call double @llvm.fabs.f64(double %30)
  %cmp17 = fcmp olt double %29, %31
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then10
  %32 = load double, ptr %temp2, align 8
  store double %32, ptr %temp, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then10
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  %33 = load double, ptr %temp, align 8
  %34 = load double, ptr %temp, align 8
  %35 = load double, ptr %xfsf, align 8
  %36 = call double @llvm.fmuladd.f64(double %33, double %34, double %35)
  store double %36, ptr %xfsf, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %37 = load i32, ptr %stride.addr, align 4
  %38 = load i32, ptr %j, align 4
  %add23 = add nsw i32 %38, %37
  store i32 %add23, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load double, ptr %xfsf, align 8
  %40 = load i32, ptr %bw.addr, align 4
  %conv24 = sitofp i32 %40 to double
  %div25 = fdiv double %39, %conv24
  store double %div25, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %41 = load double, ptr %retval, align 8
  ret double %41
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @find_scalefac(ptr noundef %xr, ptr noundef %xr34, i32 noundef %stride, i32 noundef %sfb, double noundef %l3_xmin, i32 noundef %bw) #0 {
entry:
  %retval = alloca double, align 8
  %xr.addr = alloca ptr, align 8
  %xr34.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %sfb.addr = alloca i32, align 4
  %l3_xmin.addr = alloca double, align 8
  %bw.addr = alloca i32, align 4
  %xfsf = alloca double, align 8
  %sfpow = alloca double, align 8
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
  store i32 %sfb, ptr %sfb.addr, align 4
  store double %l3_xmin, ptr %l3_xmin.addr, align 8
  store i32 %bw, ptr %bw.addr, align 4
  store double -2.050000e+01, ptr %sf, align 8
  store i32 -82, ptr %sf4, align 4
  store double 3.200000e+01, ptr %delsf, align 8
  store i32 128, ptr %delsf4, align 4
  store double 1.000000e+04, ptr %sf_ok, align 8
  store i32 10000, ptr %sf_ok4, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, ptr %delsf, align 8
  %div = fdiv double %1, 2.000000e+00
  store double %div, ptr %delsf, align 8
  %2 = load i32, ptr %delsf4, align 4
  %div1 = sdiv i32 %2, 2
  store i32 %div1, ptr %delsf4, align 4
  %3 = load double, ptr %sf, align 8
  %4 = call double @llvm.pow.f64(double 2.000000e+00, double %3)
  store double %4, ptr %sfpow, align 8
  %5 = load ptr, ptr %xr.addr, align 8
  %6 = load ptr, ptr %xr34.addr, align 8
  %7 = load i32, ptr %stride.addr, align 4
  %8 = load i32, ptr %bw.addr, align 4
  %9 = load double, ptr %sfpow, align 8
  %call = call double @calc_sfb_ave_noise(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, double noundef %9)
  store double %call, ptr %xfsf, align 8
  %10 = load double, ptr %xfsf, align 8
  %cmp2 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load double, ptr %delsf, align 8
  %12 = load double, ptr %sf, align 8
  %add = fadd double %12, %11
  store double %add, ptr %sf, align 8
  %13 = load i32, ptr %delsf4, align 4
  %14 = load i32, ptr %sf4, align 4
  %add3 = add nsw i32 %14, %13
  store i32 %add3, ptr %sf4, align 4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %15 = load double, ptr %sf_ok, align 8
  %cmp4 = fcmp oeq double %15, 1.000000e+04
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %16 = load double, ptr %sf, align 8
  store double %16, ptr %sf_ok, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %17 = load i32, ptr %sf_ok4, align 4
  %cmp6 = icmp eq i32 %17, 10000
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %18 = load i32, ptr %sf4, align 4
  store i32 %18, ptr %sf_ok4, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %19 = load double, ptr %xfsf, align 8
  %20 = load double, ptr %l3_xmin.addr, align 8
  %cmp9 = fcmp ogt double %19, %20
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end8
  %21 = load double, ptr %delsf, align 8
  %22 = load double, ptr %sf, align 8
  %sub = fsub double %22, %21
  store double %sub, ptr %sf, align 8
  %23 = load i32, ptr %delsf4, align 4
  %24 = load i32, ptr %sf4, align 4
  %sub11 = sub nsw i32 %24, %23
  store i32 %sub11, ptr %sf4, align 4
  br label %if.end15

if.else12:                                        ; preds = %if.end8
  %25 = load double, ptr %sf, align 8
  store double %25, ptr %sf_ok, align 8
  %26 = load i32, ptr %sf4, align 4
  store i32 %26, ptr %sf_ok4, align 4
  %27 = load double, ptr %delsf, align 8
  %28 = load double, ptr %sf, align 8
  %add13 = fadd double %28, %27
  store double %add13, ptr %sf, align 8
  %29 = load i32, ptr %delsf4, align 4
  %30 = load i32, ptr %sf4, align 4
  %add14 = add nsw i32 %30, %29
  store i32 %add14, ptr %sf4, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %32 = load double, ptr %sf_ok, align 8
  %cmp17 = fcmp une double %32, 1.000000e+04
  %lnot = xor i1 %cmp17, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  call void @__assert_rtn(ptr noundef @__func__.find_scalefac, ptr noundef @.str, i32 noundef 108, ptr noundef @.str.1) #6
  unreachable

33:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %33
  %34 = load double, ptr %sf_ok, align 8
  %add18 = fadd double %34, 7.500000e-01
  store double %add18, ptr %sf, align 8
  %35 = load i32, ptr %sf_ok4, align 4
  %add19 = add nsw i32 %35, 3
  store i32 %add19, ptr %sf4, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %cond.end
  %36 = load double, ptr %sf, align 8
  %37 = load double, ptr %sf_ok, align 8
  %add20 = fadd double %37, 1.000000e-02
  %cmp21 = fcmp ogt double %36, %add20
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load double, ptr %sf, align 8
  %39 = load double, ptr %sf_ok, align 8
  %40 = load double, ptr %delsf, align 8
  %41 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %40, double %39)
  %sub23 = fsub double %38, %41
  %42 = call double @llvm.fabs.f64(double %sub23)
  %cmp24 = fcmp olt double %42, 1.000000e-02
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.body
  %43 = load double, ptr %sf, align 8
  %sub27 = fsub double %43, 2.500000e-01
  store double %sub27, ptr %sf, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.body
  %44 = load i32, ptr %sf4, align 4
  %45 = load i32, ptr %sf_ok4, align 4
  %46 = load i32, ptr %delsf4, align 4
  %mul = mul nsw i32 2, %46
  %add29 = add nsw i32 %45, %mul
  %cmp30 = icmp eq i32 %44, %add29
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %47 = load i32, ptr %sf4, align 4
  %sub33 = sub nsw i32 %47, 1
  store i32 %sub33, ptr %sf4, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28
  %48 = load double, ptr %sf, align 8
  %49 = call double @llvm.pow.f64(double 2.000000e+00, double %48)
  store double %49, ptr %sfpow, align 8
  %50 = load ptr, ptr %xr.addr, align 8
  %51 = load ptr, ptr %xr34.addr, align 8
  %52 = load i32, ptr %stride.addr, align 4
  %53 = load i32, ptr %bw.addr, align 4
  %54 = load double, ptr %sfpow, align 8
  %call35 = call double @calc_sfb_ave_noise(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef %53, double noundef %54)
  store double %call35, ptr %xfsf, align 8
  %55 = load double, ptr %xfsf, align 8
  %cmp36 = fcmp ogt double %55, 0.000000e+00
  br i1 %cmp36, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end34
  %56 = load double, ptr %xfsf, align 8
  %57 = load double, ptr %l3_xmin.addr, align 8
  %cmp39 = fcmp ole double %56, %57
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then38
  %58 = load double, ptr %sf, align 8
  store double %58, ptr %retval, align 8
  br label %return

if.end42:                                         ; preds = %if.then38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end34
  %59 = load double, ptr %sf, align 8
  %sub44 = fsub double %59, 2.500000e-01
  store double %sub44, ptr %sf, align 8
  %60 = load i32, ptr %sf4, align 4
  %sub45 = sub nsw i32 %60, 1
  store i32 %sub45, ptr %sf4, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %61 = load double, ptr %sf_ok, align 8
  store double %61, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then41
  %62 = load double, ptr %retval, align 8
  ret double %62
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @compute_scalefacs_short(ptr noundef %vbrsf, ptr noundef %cod_info, ptr noundef %scalefac) #0 {
entry:
  %vbrsf.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %maxrange = alloca double, align 8
  %maxover = alloca double, align 8
  %sf = alloca [12 x [3 x double]], align 8
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %ifqstep_inv = alloca i32, align 4
  store ptr %vbrsf, ptr %vbrsf.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %0 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %scalefac_scale, align 4
  %cmp = icmp eq i32 %1, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, ptr %ifqstep_inv, align 4
  %arraydecay = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 0
  %3 = load ptr, ptr %vbrsf.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %3, i64 288, i1 false)
  store double 0.000000e+00, ptr %maxover, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %4 = load i32, ptr %sfb, align 4
  %cmp1 = icmp slt i32 %4, 12
  br i1 %cmp1, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %5, 3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %idxprom
  %7 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 %idxprom5
  %8 = load double, ptr %arrayidx6, align 8
  %fneg = fneg double %8
  %9 = load i32, ptr %ifqstep_inv, align 4
  %conv = sitofp i32 %9 to double
  %10 = call double @llvm.fmuladd.f64(double %fneg, double %conv, double 7.500000e-01)
  %add = fadd double %10, 1.000000e-04
  %11 = call double @llvm.floor.f64(double %add)
  %conv7 = fptosi double %11 to i32
  %12 = load ptr, ptr %scalefac.addr, align 8
  %13 = load i32, ptr %sfb, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [3 x i32], ptr %12, i64 %idxprom8
  %14 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  store i32 %conv7, ptr %arrayidx11, align 4
  %15 = load i32, ptr %sfb, align 4
  %cmp12 = icmp slt i32 %15, 6
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %16 = load i32, ptr %ifqstep_inv, align 4
  %conv14 = sitofp i32 %16 to double
  %div = fdiv double 1.500000e+01, %conv14
  store double %div, ptr %maxrange, align 8
  br label %if.end

if.else:                                          ; preds = %for.body4
  %17 = load i32, ptr %ifqstep_inv, align 4
  %conv15 = sitofp i32 %17 to double
  %div16 = fdiv double 7.000000e+00, %conv15
  store double %div16, ptr %maxrange, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load double, ptr %maxrange, align 8
  %19 = load i32, ptr %sfb, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %idxprom17
  %20 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %21 = load double, ptr %arrayidx20, align 8
  %add21 = fadd double %18, %21
  %22 = load double, ptr %maxover, align 8
  %cmp22 = fcmp ogt double %add21, %22
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end
  %23 = load double, ptr %maxrange, align 8
  %24 = load i32, ptr %sfb, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %idxprom25
  %25 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [3 x double], ptr %arrayidx26, i64 0, i64 %idxprom27
  %26 = load double, ptr %arrayidx28, align 8
  %add29 = fadd double %23, %26
  store double %add29, ptr %maxover, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond2, !llvm.loop !10

for.end:                                          ; preds = %for.cond2
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %28 = load i32, ptr %sfb, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !11

for.end33:                                        ; preds = %for.cond
  %29 = load double, ptr %maxover, align 8
  ret double %29
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %scalefac_scale, align 4
  %cmp = icmp eq i32 %1, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 2, i32 1
  store i32 %cond, ptr %ifqstep_inv, align 4
  %arraydecay = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 0
  %3 = load ptr, ptr %vbrsf.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %3, i64 168, i1 false)
  %4 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %4, i32 0, i32 12
  store i32 0, ptr %preflag, align 8
  store i32 11, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %sfb, align 4
  %cmp1 = icmp slt i32 %5, 21
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom
  %7 = load double, ptr %arrayidx, align 8
  %8 = load i32, ptr %sfb, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = load i32, ptr %ifqstep_inv, align 4
  %div = sdiv i32 %9, %10
  %conv = sitofp i32 %div to double
  %add = fadd double %7, %conv
  %cmp4 = fcmp ogt double %add, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %sfb, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, ptr %sfb, align 4
  %cmp6 = icmp eq i32 %12, 21
  br i1 %cmp6, label %if.then8, label %if.end24

if.then8:                                         ; preds = %for.end
  %13 = load ptr, ptr %cod_info.addr, align 8
  %preflag9 = getelementptr inbounds %struct.gr_info, ptr %13, i32 0, i32 12
  store i32 1, ptr %preflag9, align 8
  store i32 11, ptr %sfb, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc21, %if.then8
  %14 = load i32, ptr %sfb, align 4
  %cmp11 = icmp slt i32 %14, 21
  br i1 %cmp11, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond10
  %15 = load i32, ptr %sfb, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4
  %17 = load i32, ptr %ifqstep_inv, align 4
  %div16 = sdiv i32 %16, %17
  %conv17 = sitofp i32 %div16 to double
  %18 = load i32, ptr %sfb, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom18
  %19 = load double, ptr %arrayidx19, align 8
  %add20 = fadd double %19, %conv17
  store double %add20, ptr %arrayidx19, align 8
  br label %for.inc21

for.inc21:                                        ; preds = %for.body13
  %20 = load i32, ptr %sfb, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, ptr %sfb, align 4
  br label %for.cond10, !llvm.loop !13

for.end23:                                        ; preds = %for.cond10
  br label %if.end24

if.end24:                                         ; preds = %for.end23, %for.end
  store double 0.000000e+00, ptr %maxover, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc54, %if.end24
  %21 = load i32, ptr %sfb, align 4
  %cmp26 = icmp slt i32 %21, 21
  br i1 %cmp26, label %for.body28, label %for.end56

for.body28:                                       ; preds = %for.cond25
  %22 = load i32, ptr %sfb, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom29
  %23 = load double, ptr %arrayidx30, align 8
  %fneg = fneg double %23
  %24 = load i32, ptr %ifqstep_inv, align 4
  %conv31 = sitofp i32 %24 to double
  %25 = call double @llvm.fmuladd.f64(double %fneg, double %conv31, double 7.500000e-01)
  %add32 = fadd double %25, 1.000000e-04
  %26 = call double @llvm.floor.f64(double %add32)
  %conv33 = fptosi double %26 to i32
  %27 = load ptr, ptr %scalefac.addr, align 8
  %28 = load i32, ptr %sfb, align 4
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %27, i64 %idxprom34
  store i32 %conv33, ptr %arrayidx35, align 4
  %29 = load i32, ptr %sfb, align 4
  %cmp36 = icmp slt i32 %29, 11
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %for.body28
  %30 = load i32, ptr %ifqstep_inv, align 4
  %conv39 = sitofp i32 %30 to double
  %div40 = fdiv double 1.500000e+01, %conv39
  store double %div40, ptr %maxrange, align 8
  br label %if.end43

if.else:                                          ; preds = %for.body28
  %31 = load i32, ptr %ifqstep_inv, align 4
  %conv41 = sitofp i32 %31 to double
  %div42 = fdiv double 7.000000e+00, %conv41
  store double %div42, ptr %maxrange, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38
  %32 = load double, ptr %maxrange, align 8
  %33 = load i32, ptr %sfb, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom44
  %34 = load double, ptr %arrayidx45, align 8
  %add46 = fadd double %32, %34
  %35 = load double, ptr %maxover, align 8
  %cmp47 = fcmp ogt double %add46, %35
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end43
  %36 = load double, ptr %maxrange, align 8
  %37 = load i32, ptr %sfb, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %idxprom50
  %38 = load double, ptr %arrayidx51, align 8
  %add52 = fadd double %36, %38
  store double %add52, ptr %maxover, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end43
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %39 = load i32, ptr %sfb, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, ptr %sfb, align 4
  br label %for.cond25, !llvm.loop !14

for.end56:                                        ; preds = %for.cond25
  %40 = load double, ptr %maxover, align 8
  ret double %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @VBR_iteration_loop_new(ptr noundef %gfp, ptr noundef %pe, ptr noundef %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr noundef %scalefac) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %pe.addr = alloca ptr, align 8
  %ms_ener_ratio.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %ratio.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %l3_xmin = alloca [2 x [2 x %struct.III_psy_xmin]], align 8
  %masking_lower_db = alloca double, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %bw = alloca i32, align 4
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %over = alloca i32, align 4
  %vbrsf = alloca %struct.III_psy_xmin, align 8
  %vbrmax = alloca double, align 8
  %xr34 = alloca [576 x double], align 8
  %cod_info = alloca ptr, align 8
  %shortblock = alloca i32, align 4
  %temp = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %pe, ptr %pe.addr, align 8
  store ptr %ms_ener_ratio, ptr %ms_ener_ratio.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ratio, ptr %ratio.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %1 = load ptr, ptr %l3_side.addr, align 8
  %2 = load ptr, ptr %l3_enc.addr, align 8
  call void @iteration_init(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 22
  %4 = load i32, ptr %VBR_q, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 -10, %mul
  %conv = sitofp i32 %add to double
  store double %conv, ptr %masking_lower_db, align 8
  %5 = load double, ptr %masking_lower_db, align 8
  %div = fdiv double %5, 1.000000e+01
  %6 = call double @llvm.pow.f64(double 1.000000e+01, double %div)
  %conv1 = fptrunc double %6 to float
  store float %conv1, ptr @masking_lower, align 4
  store float 1.000000e+00, ptr @masking_lower, align 4
  store i32 0, ptr %gr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc247, %entry
  %7 = load i32, ptr %gr, align 4
  %8 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %8, i32 0, i32 45
  %9 = load i32, ptr %mode_gr, align 8
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end249

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr @convert_mdct, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %xr.addr, align 8
  %12 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2 x [576 x double]], ptr %11, i64 %idxprom
  %arraydecay = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx, i64 0, i64 0
  %13 = load ptr, ptr %xr.addr, align 8
  %14 = load i32, ptr %gr, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], ptr %13, i64 %idxprom3
  %arraydecay5 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx4, i64 0, i64 0
  call void @ms_convert(ptr noundef %arraydecay, ptr noundef %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, ptr %ch, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc244, %if.end
  %15 = load i32, ptr %ch, align 4
  %16 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %16, i32 0, i32 46
  %17 = load i32, ptr %stereo, align 4
  %cmp7 = icmp slt i32 %15, %17
  br i1 %cmp7, label %for.body9, label %for.end246

for.body9:                                        ; preds = %for.cond6
  %18 = load ptr, ptr %l3_side.addr, align 8
  %gr10 = getelementptr inbounds %struct.III_side_info_t, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %gr, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [2 x %struct.anon], ptr %gr10, i64 0, i64 %idxprom11
  %ch13 = getelementptr inbounds %struct.anon, ptr %arrayidx12, i32 0, i32 0
  %20 = load i32, ptr %ch, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch13, i64 0, i64 %idxprom14
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx15, i32 0, i32 0
  store ptr %tt, ptr %cod_info, align 8
  store i32 0, ptr %over, align 4
  %21 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %block_type, align 8
  %cmp16 = icmp eq i32 %22, 2
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, ptr %shortblock, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body9
  %23 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %23, 576
  br i1 %cmp19, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %xr.addr, align 8
  %25 = load i32, ptr %gr, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [2 x [576 x double]], ptr %24, i64 %idxprom22
  %26 = load i32, ptr %ch, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx23, i64 0, i64 %idxprom24
  %27 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [576 x double], ptr %arrayidx25, i64 0, i64 %idxprom26
  %28 = load double, ptr %arrayidx27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  store double %29, ptr %temp, align 8
  %30 = load double, ptr %temp, align 8
  %31 = call double @llvm.sqrt.f64(double %30)
  %32 = load double, ptr %temp, align 8
  %mul28 = fmul double %31, %32
  %33 = call double @llvm.sqrt.f64(double %mul28)
  %34 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom29
  store double %33, ptr %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond18, !llvm.loop !15

for.end:                                          ; preds = %for.cond18
  %36 = load ptr, ptr %gfp.addr, align 8
  %37 = load ptr, ptr %xr.addr, align 8
  %38 = load i32, ptr %gr, align 4
  %idxprom31 = sext i32 %38 to i64
  %arrayidx32 = getelementptr inbounds [2 x [576 x double]], ptr %37, i64 %idxprom31
  %39 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx32, i64 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [576 x double], ptr %arrayidx34, i64 0, i64 0
  %40 = load ptr, ptr %ratio.addr, align 8
  %41 = load i32, ptr %gr, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %40, i64 %idxprom36
  %42 = load i32, ptr %ch, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx37, i64 0, i64 %idxprom38
  %43 = load ptr, ptr %cod_info, align 8
  %44 = load i32, ptr %gr, align 4
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %idxprom40
  %45 = load i32, ptr %ch, align 4
  %idxprom42 = sext i32 %45 to i64
  %arrayidx43 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %arrayidx41, i64 0, i64 %idxprom42
  %call = call i32 @calc_xmin(ptr noundef %36, ptr noundef %arraydecay35, ptr noundef %arrayidx39, ptr noundef %43, ptr noundef %arrayidx43)
  store double 0.000000e+00, ptr %vbrmax, align 8
  %46 = load i32, ptr %shortblock, align 4
  %tobool44 = icmp ne i32 %46, 0
  br i1 %tobool44, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.end
  store i32 0, ptr %sfb, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc104, %if.then45
  %47 = load i32, ptr %sfb, align 4
  %cmp47 = icmp slt i32 %47, 12
  br i1 %cmp47, label %for.body49, label %for.end106

for.body49:                                       ; preds = %for.cond46
  store i32 0, ptr %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc101, %for.body49
  %48 = load i32, ptr %i, align 4
  %cmp51 = icmp slt i32 %48, 3
  br i1 %cmp51, label %for.body53, label %for.end103

for.body53:                                       ; preds = %for.cond50
  %49 = load i32, ptr %sfb, align 4
  %idxprom54 = sext i32 %49 to i64
  %arrayidx55 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom54
  %50 = load i32, ptr %arrayidx55, align 4
  store i32 %50, ptr %start, align 4
  %51 = load i32, ptr %sfb, align 4
  %add56 = add nsw i32 %51, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom57
  %52 = load i32, ptr %arrayidx58, align 4
  store i32 %52, ptr %end, align 4
  %53 = load i32, ptr %end, align 4
  %54 = load i32, ptr %start, align 4
  %sub = sub nsw i32 %53, %54
  store i32 %sub, ptr %bw, align 4
  %55 = load ptr, ptr %xr.addr, align 8
  %56 = load i32, ptr %gr, align 4
  %idxprom59 = sext i32 %56 to i64
  %arrayidx60 = getelementptr inbounds [2 x [576 x double]], ptr %55, i64 %idxprom59
  %57 = load i32, ptr %ch, align 4
  %idxprom61 = sext i32 %57 to i64
  %arrayidx62 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx60, i64 0, i64 %idxprom61
  %58 = load i32, ptr %start, align 4
  %mul63 = mul nsw i32 3, %58
  %59 = load i32, ptr %i, align 4
  %add64 = add nsw i32 %mul63, %59
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [576 x double], ptr %arrayidx62, i64 0, i64 %idxprom65
  %60 = load i32, ptr %start, align 4
  %mul67 = mul nsw i32 3, %60
  %61 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %mul67, %61
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom69
  %62 = load i32, ptr %sfb, align 4
  %63 = load float, ptr @masking_lower, align 4
  %conv71 = fpext float %63 to double
  %64 = load i32, ptr %gr, align 4
  %idxprom72 = sext i32 %64 to i64
  %arrayidx73 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %idxprom72
  %65 = load i32, ptr %ch, align 4
  %idxprom74 = sext i32 %65 to i64
  %arrayidx75 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %arrayidx73, i64 0, i64 %idxprom74
  %s = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx75, i32 0, i32 1
  %66 = load i32, ptr %sfb, align 4
  %idxprom76 = sext i32 %66 to i64
  %arrayidx77 = getelementptr inbounds [13 x [3 x double]], ptr %s, i64 0, i64 %idxprom76
  %67 = load i32, ptr %i, align 4
  %idxprom78 = sext i32 %67 to i64
  %arrayidx79 = getelementptr inbounds [3 x double], ptr %arrayidx77, i64 0, i64 %idxprom78
  %68 = load double, ptr %arrayidx79, align 8
  %mul80 = fmul double %conv71, %68
  %69 = load i32, ptr %bw, align 4
  %call81 = call double @find_scalefac(ptr noundef %arrayidx66, ptr noundef %arrayidx70, i32 noundef 3, i32 noundef %62, double noundef %mul80, i32 noundef %69)
  %s82 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 1
  %70 = load i32, ptr %sfb, align 4
  %idxprom83 = sext i32 %70 to i64
  %arrayidx84 = getelementptr inbounds [13 x [3 x double]], ptr %s82, i64 0, i64 %idxprom83
  %71 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %71 to i64
  %arrayidx86 = getelementptr inbounds [3 x double], ptr %arrayidx84, i64 0, i64 %idxprom85
  store double %call81, ptr %arrayidx86, align 8
  %s87 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 1
  %72 = load i32, ptr %sfb, align 4
  %idxprom88 = sext i32 %72 to i64
  %arrayidx89 = getelementptr inbounds [13 x [3 x double]], ptr %s87, i64 0, i64 %idxprom88
  %73 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %73 to i64
  %arrayidx91 = getelementptr inbounds [3 x double], ptr %arrayidx89, i64 0, i64 %idxprom90
  %74 = load double, ptr %arrayidx91, align 8
  %75 = load double, ptr %vbrmax, align 8
  %cmp92 = fcmp ogt double %74, %75
  br i1 %cmp92, label %if.then94, label %if.end100

if.then94:                                        ; preds = %for.body53
  %s95 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 1
  %76 = load i32, ptr %sfb, align 4
  %idxprom96 = sext i32 %76 to i64
  %arrayidx97 = getelementptr inbounds [13 x [3 x double]], ptr %s95, i64 0, i64 %idxprom96
  %77 = load i32, ptr %i, align 4
  %idxprom98 = sext i32 %77 to i64
  %arrayidx99 = getelementptr inbounds [3 x double], ptr %arrayidx97, i64 0, i64 %idxprom98
  %78 = load double, ptr %arrayidx99, align 8
  store double %78, ptr %vbrmax, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %for.body53
  br label %for.inc101

for.inc101:                                       ; preds = %if.end100
  %79 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %79, 1
  store i32 %inc102, ptr %i, align 4
  br label %for.cond50, !llvm.loop !16

for.end103:                                       ; preds = %for.cond50
  br label %for.inc104

for.inc104:                                       ; preds = %for.end103
  %80 = load i32, ptr %sfb, align 4
  %inc105 = add nsw i32 %80, 1
  store i32 %inc105, ptr %sfb, align 4
  br label %for.cond46, !llvm.loop !17

for.end106:                                       ; preds = %for.cond46
  br label %if.end150

if.else:                                          ; preds = %for.end
  store i32 0, ptr %sfb, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc147, %if.else
  %81 = load i32, ptr %sfb, align 4
  %cmp108 = icmp slt i32 %81, 21
  br i1 %cmp108, label %for.body110, label %for.end149

for.body110:                                      ; preds = %for.cond107
  %82 = load i32, ptr %sfb, align 4
  %idxprom111 = sext i32 %82 to i64
  %arrayidx112 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom111
  %83 = load i32, ptr %arrayidx112, align 4
  store i32 %83, ptr %start, align 4
  %84 = load i32, ptr %sfb, align 4
  %add113 = add nsw i32 %84, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom114
  %85 = load i32, ptr %arrayidx115, align 4
  store i32 %85, ptr %end, align 4
  %86 = load i32, ptr %end, align 4
  %87 = load i32, ptr %start, align 4
  %sub116 = sub nsw i32 %86, %87
  store i32 %sub116, ptr %bw, align 4
  %88 = load ptr, ptr %xr.addr, align 8
  %89 = load i32, ptr %gr, align 4
  %idxprom117 = sext i32 %89 to i64
  %arrayidx118 = getelementptr inbounds [2 x [576 x double]], ptr %88, i64 %idxprom117
  %90 = load i32, ptr %ch, align 4
  %idxprom119 = sext i32 %90 to i64
  %arrayidx120 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx118, i64 0, i64 %idxprom119
  %91 = load i32, ptr %start, align 4
  %idxprom121 = sext i32 %91 to i64
  %arrayidx122 = getelementptr inbounds [576 x double], ptr %arrayidx120, i64 0, i64 %idxprom121
  %92 = load i32, ptr %start, align 4
  %idxprom123 = sext i32 %92 to i64
  %arrayidx124 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom123
  %93 = load i32, ptr %sfb, align 4
  %94 = load float, ptr @masking_lower, align 4
  %conv125 = fpext float %94 to double
  %95 = load i32, ptr %gr, align 4
  %idxprom126 = sext i32 %95 to i64
  %arrayidx127 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %idxprom126
  %96 = load i32, ptr %ch, align 4
  %idxprom128 = sext i32 %96 to i64
  %arrayidx129 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %arrayidx127, i64 0, i64 %idxprom128
  %l = getelementptr inbounds %struct.III_psy_xmin, ptr %arrayidx129, i32 0, i32 0
  %97 = load i32, ptr %sfb, align 4
  %idxprom130 = sext i32 %97 to i64
  %arrayidx131 = getelementptr inbounds [22 x double], ptr %l, i64 0, i64 %idxprom130
  %98 = load double, ptr %arrayidx131, align 8
  %mul132 = fmul double %conv125, %98
  %99 = load i32, ptr %bw, align 4
  %call133 = call double @find_scalefac(ptr noundef %arrayidx122, ptr noundef %arrayidx124, i32 noundef 1, i32 noundef %93, double noundef %mul132, i32 noundef %99)
  %l134 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 0
  %100 = load i32, ptr %sfb, align 4
  %idxprom135 = sext i32 %100 to i64
  %arrayidx136 = getelementptr inbounds [22 x double], ptr %l134, i64 0, i64 %idxprom135
  store double %call133, ptr %arrayidx136, align 8
  %l137 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 0
  %101 = load i32, ptr %sfb, align 4
  %idxprom138 = sext i32 %101 to i64
  %arrayidx139 = getelementptr inbounds [22 x double], ptr %l137, i64 0, i64 %idxprom138
  %102 = load double, ptr %arrayidx139, align 8
  %103 = load double, ptr %vbrmax, align 8
  %cmp140 = fcmp ogt double %102, %103
  br i1 %cmp140, label %if.then142, label %if.end146

if.then142:                                       ; preds = %for.body110
  %l143 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 0
  %104 = load i32, ptr %sfb, align 4
  %idxprom144 = sext i32 %104 to i64
  %arrayidx145 = getelementptr inbounds [22 x double], ptr %l143, i64 0, i64 %idxprom144
  %105 = load double, ptr %arrayidx145, align 8
  store double %105, ptr %vbrmax, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %for.body110
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %106 = load i32, ptr %sfb, align 4
  %inc148 = add nsw i32 %106, 1
  store i32 %inc148, ptr %sfb, align 4
  br label %for.cond107, !llvm.loop !18

for.end149:                                       ; preds = %for.cond107
  br label %if.end150

if.end150:                                        ; preds = %for.end149, %for.end106
  %107 = load double, ptr %vbrmax, align 8
  %108 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %107, double 2.100000e+02)
  %add152 = fadd double %108, 5.000000e-01
  %109 = call double @llvm.floor.f64(double %add152)
  %conv153 = fptoui double %109 to i32
  %110 = load ptr, ptr %cod_info, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %110, i32 0, i32 3
  store i32 %conv153, ptr %global_gain, align 4
  %111 = load i32, ptr %shortblock, align 4
  %tobool154 = icmp ne i32 %111, 0
  br i1 %tobool154, label %if.then155, label %if.else203

if.then155:                                       ; preds = %if.end150
  store i32 0, ptr %sfb, align 4
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc173, %if.then155
  %112 = load i32, ptr %sfb, align 4
  %cmp157 = icmp slt i32 %112, 12
  br i1 %cmp157, label %for.body159, label %for.end175

for.body159:                                      ; preds = %for.cond156
  store i32 0, ptr %i, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc170, %for.body159
  %113 = load i32, ptr %i, align 4
  %cmp161 = icmp slt i32 %113, 3
  br i1 %cmp161, label %for.body163, label %for.end172

for.body163:                                      ; preds = %for.cond160
  %114 = load double, ptr %vbrmax, align 8
  %s164 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 1
  %115 = load i32, ptr %sfb, align 4
  %idxprom165 = sext i32 %115 to i64
  %arrayidx166 = getelementptr inbounds [13 x [3 x double]], ptr %s164, i64 0, i64 %idxprom165
  %116 = load i32, ptr %i, align 4
  %idxprom167 = sext i32 %116 to i64
  %arrayidx168 = getelementptr inbounds [3 x double], ptr %arrayidx166, i64 0, i64 %idxprom167
  %117 = load double, ptr %arrayidx168, align 8
  %sub169 = fsub double %117, %114
  store double %sub169, ptr %arrayidx168, align 8
  br label %for.inc170

for.inc170:                                       ; preds = %for.body163
  %118 = load i32, ptr %i, align 4
  %inc171 = add nsw i32 %118, 1
  store i32 %inc171, ptr %i, align 4
  br label %for.cond160, !llvm.loop !19

for.end172:                                       ; preds = %for.cond160
  br label %for.inc173

for.inc173:                                       ; preds = %for.end172
  %119 = load i32, ptr %sfb, align 4
  %inc174 = add nsw i32 %119, 1
  store i32 %inc174, ptr %sfb, align 4
  br label %for.cond156, !llvm.loop !20

for.end175:                                       ; preds = %for.cond156
  %120 = load ptr, ptr %cod_info, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %120, i32 0, i32 13
  store i32 0, ptr %scalefac_scale, align 4
  %s176 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 1
  %arraydecay177 = getelementptr inbounds [13 x [3 x double]], ptr %s176, i64 0, i64 0
  %121 = load ptr, ptr %cod_info, align 8
  %122 = load ptr, ptr %scalefac.addr, align 8
  %123 = load i32, ptr %gr, align 4
  %idxprom178 = sext i32 %123 to i64
  %arrayidx179 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %122, i64 %idxprom178
  %124 = load i32, ptr %ch, align 4
  %idxprom180 = sext i32 %124 to i64
  %arrayidx181 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx179, i64 0, i64 %idxprom180
  %s182 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx181, i32 0, i32 1
  %arraydecay183 = getelementptr inbounds [13 x [3 x i32]], ptr %s182, i64 0, i64 0
  %call184 = call double @compute_scalefacs_short(ptr noundef %arraydecay177, ptr noundef %121, ptr noundef %arraydecay183)
  %cmp185 = fcmp ogt double %call184, 0.000000e+00
  br i1 %cmp185, label %if.then187, label %if.end202

if.then187:                                       ; preds = %for.end175
  %125 = load ptr, ptr %cod_info, align 8
  %scalefac_scale188 = getelementptr inbounds %struct.gr_info, ptr %125, i32 0, i32 13
  store i32 1, ptr %scalefac_scale188, align 4
  %s189 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 1
  %arraydecay190 = getelementptr inbounds [13 x [3 x double]], ptr %s189, i64 0, i64 0
  %126 = load ptr, ptr %cod_info, align 8
  %127 = load ptr, ptr %scalefac.addr, align 8
  %128 = load i32, ptr %gr, align 4
  %idxprom191 = sext i32 %128 to i64
  %arrayidx192 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %127, i64 %idxprom191
  %129 = load i32, ptr %ch, align 4
  %idxprom193 = sext i32 %129 to i64
  %arrayidx194 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx192, i64 0, i64 %idxprom193
  %s195 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx194, i32 0, i32 1
  %arraydecay196 = getelementptr inbounds [13 x [3 x i32]], ptr %s195, i64 0, i64 0
  %call197 = call double @compute_scalefacs_short(ptr noundef %arraydecay190, ptr noundef %126, ptr noundef %arraydecay196)
  %cmp198 = fcmp ogt double %call197, 0.000000e+00
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.then187
  call void @exit(i32 noundef 32) #7
  unreachable

if.end201:                                        ; preds = %if.then187
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %for.end175
  br label %if.end243

if.else203:                                       ; preds = %if.end150
  store i32 0, ptr %sfb, align 4
  br label %for.cond204

for.cond204:                                      ; preds = %for.inc212, %if.else203
  %130 = load i32, ptr %sfb, align 4
  %cmp205 = icmp slt i32 %130, 21
  br i1 %cmp205, label %for.body207, label %for.end214

for.body207:                                      ; preds = %for.cond204
  %131 = load double, ptr %vbrmax, align 8
  %l208 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 0
  %132 = load i32, ptr %sfb, align 4
  %idxprom209 = sext i32 %132 to i64
  %arrayidx210 = getelementptr inbounds [22 x double], ptr %l208, i64 0, i64 %idxprom209
  %133 = load double, ptr %arrayidx210, align 8
  %sub211 = fsub double %133, %131
  store double %sub211, ptr %arrayidx210, align 8
  br label %for.inc212

for.inc212:                                       ; preds = %for.body207
  %134 = load i32, ptr %sfb, align 4
  %inc213 = add nsw i32 %134, 1
  store i32 %inc213, ptr %sfb, align 4
  br label %for.cond204, !llvm.loop !21

for.end214:                                       ; preds = %for.cond204
  %135 = load ptr, ptr %cod_info, align 8
  %scalefac_scale215 = getelementptr inbounds %struct.gr_info, ptr %135, i32 0, i32 13
  store i32 0, ptr %scalefac_scale215, align 4
  %l216 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 0
  %arraydecay217 = getelementptr inbounds [22 x double], ptr %l216, i64 0, i64 0
  %136 = load ptr, ptr %cod_info, align 8
  %137 = load ptr, ptr %scalefac.addr, align 8
  %138 = load i32, ptr %gr, align 4
  %idxprom218 = sext i32 %138 to i64
  %arrayidx219 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %137, i64 %idxprom218
  %139 = load i32, ptr %ch, align 4
  %idxprom220 = sext i32 %139 to i64
  %arrayidx221 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx219, i64 0, i64 %idxprom220
  %l222 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx221, i32 0, i32 0
  %arraydecay223 = getelementptr inbounds [22 x i32], ptr %l222, i64 0, i64 0
  %call224 = call double @compute_scalefacs_long(ptr noundef %arraydecay217, ptr noundef %136, ptr noundef %arraydecay223)
  %cmp225 = fcmp ogt double %call224, 0.000000e+00
  br i1 %cmp225, label %if.then227, label %if.end242

if.then227:                                       ; preds = %for.end214
  %140 = load ptr, ptr %cod_info, align 8
  %scalefac_scale228 = getelementptr inbounds %struct.gr_info, ptr %140, i32 0, i32 13
  store i32 1, ptr %scalefac_scale228, align 4
  %l229 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i32 0, i32 0
  %arraydecay230 = getelementptr inbounds [22 x double], ptr %l229, i64 0, i64 0
  %141 = load ptr, ptr %cod_info, align 8
  %142 = load ptr, ptr %scalefac.addr, align 8
  %143 = load i32, ptr %gr, align 4
  %idxprom231 = sext i32 %143 to i64
  %arrayidx232 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %142, i64 %idxprom231
  %144 = load i32, ptr %ch, align 4
  %idxprom233 = sext i32 %144 to i64
  %arrayidx234 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx232, i64 0, i64 %idxprom233
  %l235 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx234, i32 0, i32 0
  %arraydecay236 = getelementptr inbounds [22 x i32], ptr %l235, i64 0, i64 0
  %call237 = call double @compute_scalefacs_long(ptr noundef %arraydecay230, ptr noundef %141, ptr noundef %arraydecay236)
  %cmp238 = fcmp ogt double %call237, 0.000000e+00
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then227
  call void @exit(i32 noundef 32) #7
  unreachable

if.end241:                                        ; preds = %if.then227
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %for.end214
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end202
  br label %for.inc244

for.inc244:                                       ; preds = %if.end243
  %145 = load i32, ptr %ch, align 4
  %inc245 = add nsw i32 %145, 1
  store i32 %inc245, ptr %ch, align 4
  br label %for.cond6, !llvm.loop !22

for.end246:                                       ; preds = %for.cond6
  br label %for.inc247

for.inc247:                                       ; preds = %for.end246
  %146 = load i32, ptr %gr, align 4
  %inc248 = add nsw i32 %146, 1
  store i32 %inc248, ptr %gr, align 4
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

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn }
attributes #7 = { noreturn }

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
