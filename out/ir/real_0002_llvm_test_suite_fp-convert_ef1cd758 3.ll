; ModuleID = 'SingleSource/Benchmarks/Misc/fp-convert.c'
source_filename = "SingleSource/Benchmarks/Misc/fp-convert.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [13 x i8] c"Total is %g\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @loop(ptr noundef %x, ptr noundef %y, i64 noundef %length) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %accumulator = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store double 0.000000e+00, ptr %accumulator, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %length.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %3
  %4 = load float, ptr %arrayidx, align 4
  %conv = fpext float %4 to double
  %5 = load ptr, ptr %y.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %5, i64 %6
  %7 = load float, ptr %arrayidx1, align 4
  %conv2 = fpext float %7 to double
  %8 = load double, ptr %accumulator, align 8
  %9 = call double @llvm.fmuladd.f64(double %conv, double %conv2, double %8)
  store double %9, ptr %accumulator, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load double, ptr %accumulator, align 8
  ret double %11
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca [2048 x float], align 4
  %y = alloca [2048 x float], align 4
  %total = alloca double, align 8
  %a = alloca float, align 4
  %b = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store double 0.000000e+00, ptr %total, align 8
  store float 0.000000e+00, ptr %a, align 4
  store float 1.000000e+00, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 500000
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %rem = srem i32 %1, 10
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store float 0.000000e+00, ptr %a, align 4
  store float 1.000000e+00, ptr %b, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %2 = load float, ptr %a, align 4
  %add = fadd float %2, 0x3FB99999A0000000
  store float %add, ptr %a, align 4
  %3 = load float, ptr %b, align 4
  %add1 = fadd float %3, 0x3FC99999A0000000
  store float %add1, ptr %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.end
  %4 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %4, 2048
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load float, ptr %a, align 4
  %6 = load i32, ptr %j, align 4
  %conv = sitofp i32 %6 to float
  %add5 = fadd float %5, %conv
  %7 = load i32, ptr %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2048 x float], ptr %x, i64 0, i64 %idxprom
  store float %add5, ptr %arrayidx, align 4
  %8 = load float, ptr %b, align 4
  %9 = load i32, ptr %j, align 4
  %conv6 = sitofp i32 %9 to float
  %add7 = fadd float %8, %conv6
  %10 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [2048 x float], ptr %y, i64 0, i64 %idxprom8
  store float %add7, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond2, !llvm.loop !8

for.end:                                          ; preds = %for.cond2
  %arraydecay = getelementptr inbounds [2048 x float], ptr %x, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [2048 x float], ptr %y, i64 0, i64 0
  %call = call double @loop(ptr noundef %arraydecay, ptr noundef %arraydecay10, i64 noundef 2048)
  %12 = load double, ptr %total, align 8
  %add11 = fadd double %12, %call
  store double %add11, ptr %total, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end14:                                        ; preds = %for.cond
  %14 = load double, ptr %total, align 8
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %14)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
