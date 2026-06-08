; ModuleID = 'SingleSource/Benchmarks/Misc/mandel.c'
source_filename = "SingleSource/Benchmarks/Misc/mandel.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@accum = global { double, double } zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @emit([2 x double] noundef %X.coerce) #0 {
entry:
  %X = alloca { double, double }, align 8
  store [2 x double] %X.coerce, ptr %X, align 8
  %X.realp = getelementptr inbounds nuw { double, double }, ptr %X, i32 0, i32 0
  %X.real = load double, ptr %X.realp, align 8
  %X.imagp = getelementptr inbounds nuw { double, double }, ptr %X, i32 0, i32 1
  %X.imag = load double, ptr %X.imagp, align 8
  %accum.real = load volatile double, ptr @accum, align 8
  %accum.imag = load volatile double, ptr getelementptr inbounds nuw ({ double, double }, ptr @accum, i32 0, i32 1), align 8
  %add.r = fadd double %accum.real, %X.real
  %add.i = fadd double %accum.imag, %X.imag
  store volatile double %add.r, ptr @accum, align 8
  store volatile double %add.i, ptr getelementptr inbounds nuw ({ double, double }, ptr @accum, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mandel() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca { double, double }, align 8
  %z = alloca { double, double }, align 8
  %coerce = alloca { double, double }, align 8
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc32, %for.body
  %1 = load i32, ptr %y, align 4
  %cmp2 = icmp slt i32 %1, 5000
  br i1 %cmp2, label %for.body3, label %for.end34

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %x, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 4.000000e+00
  %div = fdiv double %mul, 5.000000e+03
  %add = fadd double -2.000000e+00, %div
  %3 = load i32, ptr %y, align 4
  %conv4 = sitofp i32 %3 to double
  %mul5 = fmul double %conv4, 4.000000e+00
  %div6 = fdiv double %mul5, 5.000000e+03
  %sub = fsub double -2.000000e+00, %div6
  %mul.rl = fmul double %sub, 0.000000e+00
  %mul.ir = fmul double %sub, 1.000000e+00
  %add.r = fadd double %add, %mul.rl
  %c.realp = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 0
  %c.imagp = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 1
  store double %add.r, ptr %c.realp, align 8
  store double %mul.ir, ptr %c.imagp, align 8
  %z.realp = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 1
  store double 0.000000e+00, ptr %z.realp, align 8
  store double 0.000000e+00, ptr %z.imagp, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %n, align 4
  %cmp8 = icmp slt i32 %4, 10
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %z.realp11 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 0
  %z.real = load double, ptr %z.realp11, align 8
  %z.imagp12 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 1
  %z.imag = load double, ptr %z.imagp12, align 8
  %z.realp13 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 0
  %z.real14 = load double, ptr %z.realp13, align 8
  %z.imagp15 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 1
  %z.imag16 = load double, ptr %z.imagp15, align 8
  %mul_ac = fmul double %z.real, %z.real14
  %mul_bd = fmul double %z.imag, %z.imag16
  %mul_ad = fmul double %z.real, %z.imag16
  %mul_bc = fmul double %z.imag, %z.real14
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !6

complex_mul_imag_nan:                             ; preds = %for.body10
  %isnan_cmp17 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp17, label %complex_mul_libcall, label %complex_mul_cont, !prof !6

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { double, double } @__muldc3(double noundef %z.real, double noundef %z.imag, double noundef %z.real14, double noundef %z.imag16) #3
  %5 = extractvalue { double, double } %call, 0
  %6 = extractvalue { double, double } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body10
  %real_mul_phi = phi double [ %mul_r, %for.body10 ], [ %mul_r, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %for.body10 ], [ %mul_i, %complex_mul_imag_nan ], [ %6, %complex_mul_libcall ]
  %c.realp18 = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 0
  %c.real = load double, ptr %c.realp18, align 8
  %c.imagp19 = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 1
  %c.imag = load double, ptr %c.imagp19, align 8
  %add.r20 = fadd double %real_mul_phi, %c.real
  %add.i = fadd double %imag_mul_phi, %c.imag
  %z.realp21 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 0
  %z.imagp22 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 1
  store double %add.r20, ptr %z.realp21, align 8
  store double %add.i, ptr %z.imagp22, align 8
  %z.realp23 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 0
  %7 = load double, ptr %z.realp23, align 8
  %z.imagp24 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 1
  %8 = load double, ptr %z.imagp24, align 8
  %call25 = call double @hypot(double noundef %7, double noundef %8) #4
  %cmp26 = fcmp oge double %call25, 2.000000e+00
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %complex_mul_cont
  br label %for.end

if.end:                                           ; preds = %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %n, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond7, !llvm.loop !7

for.end:                                          ; preds = %if.then, %for.cond7
  %z.realp28 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 0
  %z.real29 = load double, ptr %z.realp28, align 8
  %z.imagp30 = getelementptr inbounds nuw { double, double }, ptr %z, i32 0, i32 1
  %z.imag31 = load double, ptr %z.imagp30, align 8
  %coerce.realp = getelementptr inbounds nuw { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds nuw { double, double }, ptr %coerce, i32 0, i32 1
  store double %z.real29, ptr %coerce.realp, align 8
  store double %z.imag31, ptr %coerce.imagp, align 8
  %10 = load [2 x double], ptr %coerce, align 8
  call void @emit([2 x double] noundef %10)
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %11 = load i32, ptr %y, align 4
  %inc33 = add nsw i32 %11, 1
  store i32 %inc33, ptr %y, align 4
  br label %for.cond1, !llvm.loop !9

for.end34:                                        ; preds = %for.cond1
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %12 = load i32, ptr %x, align 4
  %inc36 = add nsw i32 %12, 1
  store i32 %inc36, ptr %x, align 4
  br label %for.cond, !llvm.loop !10

for.end37:                                        ; preds = %for.cond
  ret void
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @mandel()
  %accum.real = load volatile double, ptr @accum, align 8
  %accum.imag = load volatile double, ptr getelementptr inbounds nuw ({ double, double }, ptr @accum, i32 0, i32 1), align 8
  %conv = fptosi double %accum.real to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = !{!"branch_weights", i32 1, i32 1048575}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
