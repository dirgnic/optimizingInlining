; ModuleID = 'SingleSource/Benchmarks/Misc/pi.c'
source_filename = "SingleSource/Benchmarks/Misc/pi.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [16 x i8] c"Starting PI...\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" x = %9.6f    y = %12.2f  low = %8d j = %7d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Pi = %9.6f ztot = %12.2f itot = %8d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @myadd(ptr noundef %sum, ptr noundef %addend) #0 {
entry:
  %sum.addr = alloca ptr, align 8
  %addend.addr = alloca ptr, align 8
  store ptr %sum, ptr %sum.addr, align 8
  store ptr %addend, ptr %addend.addr, align 8
  %0 = load ptr, ptr %sum.addr, align 8
  %1 = load float, ptr %0, align 4
  %2 = load ptr, ptr %addend.addr, align 8
  %3 = load float, ptr %2, align 4
  %add = fadd float %1, %3
  %4 = load ptr, ptr %sum.addr, align 8
  store float %add, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ztot = alloca float, align 4
  %yran = alloca float, align 4
  %ymult = alloca float, align 4
  %ymod = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %pi = alloca float, align 4
  %prod = alloca float, align 4
  %low = alloca i64, align 8
  %ixran = alloca i64, align 8
  %itot = alloca i64, align 8
  %j = alloca i64, align 8
  %iprod = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store float 0.000000e+00, ptr %ztot, align 4
  store i64 1, ptr %low, align 8
  store i64 1907, ptr %ixran, align 8
  store float 5.813000e+03, ptr %yran, align 4
  store float 1.307000e+03, ptr %ymult, align 4
  store float 5.471000e+03, ptr %ymod, align 4
  store i64 40000000, ptr %itot, align 8
  store i64 1, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %j, align 8
  %1 = load i64, ptr %itot, align 8
  %cmp = icmp sle i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %ixran, align 8
  %mul = mul nsw i64 27611, %2
  store i64 %mul, ptr %iprod, align 8
  %3 = load i64, ptr %iprod, align 8
  %4 = load i64, ptr %iprod, align 8
  %div = sdiv i64 %4, 74383
  %mul1 = mul nsw i64 74383, %div
  %sub = sub nsw i64 %3, %mul1
  store i64 %sub, ptr %ixran, align 8
  %5 = load i64, ptr %ixran, align 8
  %conv = sitofp i64 %5 to float
  %conv2 = fpext float %conv to double
  %div3 = fdiv double %conv2, 7.438300e+04
  %conv4 = fptrunc double %div3 to float
  store float %conv4, ptr %x, align 4
  %6 = load float, ptr %ymult, align 4
  %7 = load float, ptr %yran, align 4
  %mul5 = fmul float %6, %7
  store float %mul5, ptr %prod, align 4
  %8 = load float, ptr %prod, align 4
  %9 = load float, ptr %ymod, align 4
  %10 = load float, ptr %prod, align 4
  %11 = load float, ptr %ymod, align 4
  %div6 = fdiv float %10, %11
  %conv7 = fptosi float %div6 to i64
  %conv8 = sitofp i64 %conv7 to float
  %neg = fneg float %9
  %12 = call float @llvm.fmuladd.f32(float %neg, float %conv8, float %8)
  store float %12, ptr %yran, align 4
  %13 = load float, ptr %yran, align 4
  %14 = load float, ptr %ymod, align 4
  %div10 = fdiv float %13, %14
  store float %div10, ptr %y, align 4
  %15 = load float, ptr %x, align 4
  %16 = load float, ptr %x, align 4
  %17 = load float, ptr %y, align 4
  %18 = load float, ptr %y, align 4
  %mul12 = fmul float %17, %18
  %19 = call float @llvm.fmuladd.f32(float %15, float %16, float %mul12)
  store float %19, ptr %z, align 4
  call void @myadd(ptr noundef %ztot, ptr noundef %z)
  %20 = load float, ptr %z, align 4
  %conv13 = fpext float %20 to double
  %cmp14 = fcmp ole double %conv13, 1.000000e+00
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load i64, ptr %low, align 8
  %add = add nsw i64 %21, 1
  store i64 %add, ptr %low, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %j, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load float, ptr %x, align 4
  %conv16 = fpext float %23 to double
  %24 = load float, ptr %y, align 4
  %conv17 = fpext float %24 to double
  %25 = load i64, ptr %low, align 8
  %conv18 = trunc i64 %25 to i32
  %26 = load i64, ptr %j, align 8
  %conv19 = trunc i64 %26 to i32
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv16, double noundef %conv17, i32 noundef %conv18, i32 noundef %conv19)
  %27 = load i64, ptr %low, align 8
  %conv21 = sitofp i64 %27 to float
  %conv22 = fpext float %conv21 to double
  %mul23 = fmul double 4.000000e+00, %conv22
  %28 = load i64, ptr %itot, align 8
  %conv24 = sitofp i64 %28 to float
  %conv25 = fpext float %conv24 to double
  %div26 = fdiv double %mul23, %conv25
  %conv27 = fptrunc double %div26 to float
  store float %conv27, ptr %pi, align 4
  %29 = load float, ptr %pi, align 4
  %conv28 = fpext float %29 to double
  %30 = load float, ptr %ztot, align 4
  %conv29 = fpext float %30 to double
  %mul30 = fmul double %conv29, 0.000000e+00
  %31 = load i64, ptr %itot, align 8
  %conv31 = trunc i64 %31 to i32
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv28, double noundef %mul30, i32 noundef %conv31)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
