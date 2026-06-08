; ModuleID = './source_snapshot/public_repos/mibench/automotive/basicmath/cubic.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/basicmath/cubic.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @SolveCubic(double noundef %a, double noundef %b, double noundef %c, double noundef %d, ptr noundef %solutions, ptr noundef %x) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %solutions.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %Q = alloca double, align 8
  %R = alloca double, align 8
  %R2_Q3 = alloca double, align 8
  %theta = alloca double, align 8
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  store double %c, ptr %c.addr, align 8
  store double %d, ptr %d.addr, align 8
  store ptr %solutions, ptr %solutions.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load double, ptr %b.addr, align 8
  %1 = load double, ptr %a.addr, align 8
  %div = fdiv double %0, %1
  store double %div, ptr %a1, align 8
  %2 = load double, ptr %c.addr, align 8
  %3 = load double, ptr %a.addr, align 8
  %div1 = fdiv double %2, %3
  store double %div1, ptr %a2, align 8
  %4 = load double, ptr %d.addr, align 8
  %5 = load double, ptr %a.addr, align 8
  %div2 = fdiv double %4, %5
  store double %div2, ptr %a3, align 8
  %6 = load double, ptr %a1, align 8
  %7 = load double, ptr %a1, align 8
  %8 = load double, ptr %a2, align 8
  %mul3 = fmul double 3.000000e+00, %8
  %neg = fneg double %mul3
  %9 = call double @llvm.fmuladd.f64(double %6, double %7, double %neg)
  %div4 = fdiv double %9, 9.000000e+00
  store double %div4, ptr %Q, align 8
  %10 = load double, ptr %a1, align 8
  %mul = fmul double 2.000000e+00, %10
  %11 = load double, ptr %a1, align 8
  %mul5 = fmul double %mul, %11
  %12 = load double, ptr %a1, align 8
  %13 = load double, ptr %a1, align 8
  %mul7 = fmul double 9.000000e+00, %13
  %14 = load double, ptr %a2, align 8
  %mul8 = fmul double %mul7, %14
  %neg9 = fneg double %mul8
  %15 = call double @llvm.fmuladd.f64(double %mul5, double %12, double %neg9)
  %16 = load double, ptr %a3, align 8
  %17 = call double @llvm.fmuladd.f64(double 2.700000e+01, double %16, double %15)
  %div11 = fdiv double %17, 5.400000e+01
  store double %div11, ptr %R, align 8
  %18 = load double, ptr %R, align 8
  %19 = load double, ptr %R, align 8
  %20 = load double, ptr %Q, align 8
  %21 = load double, ptr %Q, align 8
  %mul13 = fmul double %20, %21
  %22 = load double, ptr %Q, align 8
  %mul14 = fmul double %mul13, %22
  %neg15 = fneg double %mul14
  %23 = call double @llvm.fmuladd.f64(double %18, double %19, double %neg15)
  store double %23, ptr %R2_Q3, align 8
  %24 = load double, ptr %R2_Q3, align 8
  %cmp = fcmp ole double %24, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %25 = load ptr, ptr %solutions.addr, align 8
  store i32 3, ptr %25, align 4
  %26 = load double, ptr %R, align 8
  %27 = load double, ptr %Q, align 8
  %28 = load double, ptr %Q, align 8
  %mul16 = fmul double %27, %28
  %29 = load double, ptr %Q, align 8
  %mul17 = fmul double %mul16, %29
  %30 = call double @llvm.sqrt.f64(double %mul17)
  %div18 = fdiv double %26, %30
  %call = call double @acos(double noundef %div18) #3
  store double %call, ptr %theta, align 8
  %31 = load double, ptr %Q, align 8
  %32 = call double @llvm.sqrt.f64(double %31)
  %mul19 = fmul double -2.000000e+00, %32
  %33 = load double, ptr %theta, align 8
  %div20 = fdiv double %33, 3.000000e+00
  %34 = call double @llvm.cos.f64(double %div20)
  %35 = load double, ptr %a1, align 8
  %div22 = fdiv double %35, 3.000000e+00
  %neg23 = fneg double %div22
  %36 = call double @llvm.fmuladd.f64(double %mul19, double %34, double %neg23)
  %37 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %37, i64 0
  store double %36, ptr %arrayidx, align 8
  %38 = load double, ptr %Q, align 8
  %39 = call double @llvm.sqrt.f64(double %38)
  %mul24 = fmul double -2.000000e+00, %39
  %40 = load double, ptr %theta, align 8
  %call25 = call double @atan(double noundef 1.000000e+00) #3
  %mul26 = fmul double 4.000000e+00, %call25
  %41 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %mul26, double %40)
  %div28 = fdiv double %41, 3.000000e+00
  %42 = call double @llvm.cos.f64(double %div28)
  %43 = load double, ptr %a1, align 8
  %div30 = fdiv double %43, 3.000000e+00
  %neg31 = fneg double %div30
  %44 = call double @llvm.fmuladd.f64(double %mul24, double %42, double %neg31)
  %45 = load ptr, ptr %x.addr, align 8
  %arrayidx32 = getelementptr inbounds double, ptr %45, i64 1
  store double %44, ptr %arrayidx32, align 8
  %46 = load double, ptr %Q, align 8
  %47 = call double @llvm.sqrt.f64(double %46)
  %mul33 = fmul double -2.000000e+00, %47
  %48 = load double, ptr %theta, align 8
  %call34 = call double @atan(double noundef 1.000000e+00) #3
  %mul35 = fmul double 4.000000e+00, %call34
  %49 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %mul35, double %48)
  %div37 = fdiv double %49, 3.000000e+00
  %50 = call double @llvm.cos.f64(double %div37)
  %51 = load double, ptr %a1, align 8
  %div39 = fdiv double %51, 3.000000e+00
  %neg40 = fneg double %div39
  %52 = call double @llvm.fmuladd.f64(double %mul33, double %50, double %neg40)
  %53 = load ptr, ptr %x.addr, align 8
  %arrayidx41 = getelementptr inbounds double, ptr %53, i64 2
  store double %52, ptr %arrayidx41, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %54 = load ptr, ptr %solutions.addr, align 8
  store i32 1, ptr %54, align 4
  %55 = load double, ptr %R2_Q3, align 8
  %56 = call double @llvm.sqrt.f64(double %55)
  %57 = load double, ptr %R, align 8
  %58 = call double @llvm.fabs.f64(double %57)
  %add = fadd double %56, %58
  %59 = call double @llvm.pow.f64(double %add, double 0x3FD5555555555555)
  %60 = load ptr, ptr %x.addr, align 8
  %arrayidx42 = getelementptr inbounds double, ptr %60, i64 0
  store double %59, ptr %arrayidx42, align 8
  %61 = load double, ptr %Q, align 8
  %62 = load ptr, ptr %x.addr, align 8
  %arrayidx43 = getelementptr inbounds double, ptr %62, i64 0
  %63 = load double, ptr %arrayidx43, align 8
  %div44 = fdiv double %61, %63
  %64 = load ptr, ptr %x.addr, align 8
  %arrayidx45 = getelementptr inbounds double, ptr %64, i64 0
  %65 = load double, ptr %arrayidx45, align 8
  %add46 = fadd double %65, %div44
  store double %add46, ptr %arrayidx45, align 8
  %66 = load double, ptr %R, align 8
  %cmp47 = fcmp olt double %66, 0.000000e+00
  %67 = zext i1 %cmp47 to i64
  %cond = select i1 %cmp47, i32 1, i32 -1
  %conv = sitofp i32 %cond to double
  %68 = load ptr, ptr %x.addr, align 8
  %arrayidx48 = getelementptr inbounds double, ptr %68, i64 0
  %69 = load double, ptr %arrayidx48, align 8
  %mul49 = fmul double %69, %conv
  store double %mul49, ptr %arrayidx48, align 8
  %70 = load double, ptr %a1, align 8
  %div50 = fdiv double %70, 3.000000e+00
  %71 = load ptr, ptr %x.addr, align 8
  %arrayidx51 = getelementptr inbounds double, ptr %71, i64 0
  %72 = load double, ptr %arrayidx51, align 8
  %sub = fsub double %72, %div50
  store double %sub, ptr %arrayidx51, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind readnone willreturn
declare double @acos(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: nounwind readnone willreturn
declare double @atan(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
