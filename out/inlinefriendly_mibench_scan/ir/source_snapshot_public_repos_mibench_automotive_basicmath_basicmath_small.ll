; ModuleID = './source_snapshot/public_repos/mibench/automotive/basicmath/basicmath_small.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/basicmath/basicmath_small.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %c1 = alloca double, align 8
  %d1 = alloca double, align 8
  %a2 = alloca double, align 8
  %b2 = alloca double, align 8
  %c2 = alloca double, align 8
  %d2 = alloca double, align 8
  %a3 = alloca double, align 8
  %b3 = alloca double, align 8
  %c3 = alloca double, align 8
  %d3 = alloca double, align 8
  %a4 = alloca double, align 8
  %b4 = alloca double, align 8
  %c4 = alloca double, align 8
  %d4 = alloca double, align 8
  %x = alloca [3 x double], align 8
  %X = alloca double, align 8
  %solutions = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %q = alloca %struct.int_sqrt, align 4
  %n = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store double 1.000000e+00, ptr %a1, align 8
  store double -1.050000e+01, ptr %b1, align 8
  store double 3.200000e+01, ptr %c1, align 8
  store double -3.000000e+01, ptr %d1, align 8
  store double 1.000000e+00, ptr %a2, align 8
  store double -4.500000e+00, ptr %b2, align 8
  store double 1.700000e+01, ptr %c2, align 8
  store double -3.000000e+01, ptr %d2, align 8
  store double 1.000000e+00, ptr %a3, align 8
  store double -3.500000e+00, ptr %b3, align 8
  store double 2.200000e+01, ptr %c3, align 8
  store double -3.100000e+01, ptr %d3, align 8
  store double 1.000000e+00, ptr %a4, align 8
  store double -1.370000e+01, ptr %b4, align 8
  store double 1.000000e+00, ptr %c4, align 8
  store double -3.500000e+01, ptr %d4, align 8
  store i64 1072497001, ptr %l, align 8
  store i64 0, ptr %n, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load double, ptr %a1, align 8
  %1 = load double, ptr %b1, align 8
  %2 = load double, ptr %c1, align 8
  %3 = load double, ptr %d1, align 8
  %arraydecay = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %solutions, ptr noundef %arraydecay)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %solutions, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom
  %7 = load double, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %9 = load double, ptr %a2, align 8
  %10 = load double, ptr %b2, align 8
  %11 = load double, ptr %c2, align 8
  %12 = load double, ptr %d2, align 8
  %arraydecay4 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %9, double noundef %10, double noundef %11, double noundef %12, ptr noundef %solutions, ptr noundef %arraydecay4)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %solutions, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %15 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom9
  %16 = load double, ptr %arrayidx10, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %16)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %17 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end14:                                        ; preds = %for.cond6
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %18 = load double, ptr %a3, align 8
  %19 = load double, ptr %b3, align 8
  %20 = load double, ptr %c3, align 8
  %21 = load double, ptr %d3, align 8
  %arraydecay16 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %18, double noundef %19, double noundef %20, double noundef %21, ptr noundef %solutions, ptr noundef %arraydecay16)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc24, %for.end14
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %solutions, align 4
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond18
  %24 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom21
  %25 = load double, ptr %arrayidx22, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %25)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %26 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond18, !llvm.loop !9

for.end26:                                        ; preds = %for.cond18
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %27 = load double, ptr %a4, align 8
  %28 = load double, ptr %b4, align 8
  %29 = load double, ptr %c4, align 8
  %30 = load double, ptr %d4, align 8
  %arraydecay28 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %27, double noundef %28, double noundef %29, double noundef %30, ptr noundef %solutions, ptr noundef %arraydecay28)
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end26
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %solutions, align 4
  %cmp31 = icmp slt i32 %31, %32
  br i1 %cmp31, label %for.body32, label %for.end38

for.body32:                                       ; preds = %for.cond30
  %33 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom33
  %34 = load double, ptr %arrayidx34, align 8
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %34)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body32
  %35 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond30, !llvm.loop !10

for.end38:                                        ; preds = %for.cond30
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 1.000000e+00, ptr %a1, align 8
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc71, %for.end38
  %36 = load double, ptr %a1, align 8
  %cmp41 = fcmp olt double %36, 1.000000e+01
  br i1 %cmp41, label %for.body42, label %for.end73

for.body42:                                       ; preds = %for.cond40
  store double 1.000000e+01, ptr %b1, align 8
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc68, %for.body42
  %37 = load double, ptr %b1, align 8
  %cmp44 = fcmp ogt double %37, 0.000000e+00
  br i1 %cmp44, label %for.body45, label %for.end70

for.body45:                                       ; preds = %for.cond43
  store double 5.000000e+00, ptr %c1, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc66, %for.body45
  %38 = load double, ptr %c1, align 8
  %cmp47 = fcmp olt double %38, 1.500000e+01
  br i1 %cmp47, label %for.body48, label %for.end67

for.body48:                                       ; preds = %for.cond46
  store double -1.000000e+00, ptr %d1, align 8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc64, %for.body48
  %39 = load double, ptr %d1, align 8
  %cmp50 = fcmp ogt double %39, -1.100000e+01
  br i1 %cmp50, label %for.body51, label %for.end65

for.body51:                                       ; preds = %for.cond49
  %40 = load double, ptr %a1, align 8
  %41 = load double, ptr %b1, align 8
  %42 = load double, ptr %c1, align 8
  %43 = load double, ptr %d1, align 8
  %arraydecay52 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %40, double noundef %41, double noundef %42, double noundef %43, ptr noundef %solutions, ptr noundef %arraydecay52)
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc60, %for.body51
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %solutions, align 4
  %cmp55 = icmp slt i32 %44, %45
  br i1 %cmp55, label %for.body56, label %for.end62

for.body56:                                       ; preds = %for.cond54
  %46 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %46 to i64
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom57
  %47 = load double, ptr %arrayidx58, align 8
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %47)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body56
  %48 = load i32, ptr %i, align 4
  %inc61 = add nsw i32 %48, 1
  store i32 %inc61, ptr %i, align 4
  br label %for.cond54, !llvm.loop !11

for.end62:                                        ; preds = %for.cond54
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc64

for.inc64:                                        ; preds = %for.end62
  %49 = load double, ptr %d1, align 8
  %dec = fadd double %49, -1.000000e+00
  store double %dec, ptr %d1, align 8
  br label %for.cond49, !llvm.loop !12

for.end65:                                        ; preds = %for.cond49
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %50 = load double, ptr %c1, align 8
  %add = fadd double %50, 5.000000e-01
  store double %add, ptr %c1, align 8
  br label %for.cond46, !llvm.loop !13

for.end67:                                        ; preds = %for.cond46
  br label %for.inc68

for.inc68:                                        ; preds = %for.end67
  %51 = load double, ptr %b1, align 8
  %dec69 = fadd double %51, -1.000000e+00
  store double %dec69, ptr %b1, align 8
  br label %for.cond43, !llvm.loop !14

for.end70:                                        ; preds = %for.cond43
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %52 = load double, ptr %a1, align 8
  %inc72 = fadd double %52, 1.000000e+00
  store double %inc72, ptr %a1, align 8
  br label %for.cond40, !llvm.loop !15

for.end73:                                        ; preds = %for.cond40
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc79, %for.end73
  %53 = load i32, ptr %i, align 4
  %cmp76 = icmp slt i32 %53, 1001
  br i1 %cmp76, label %for.body77, label %for.end81

for.body77:                                       ; preds = %for.cond75
  %54 = load i32, ptr %i, align 4
  %conv = sext i32 %54 to i64
  call void @usqrt(i64 noundef %conv, ptr noundef %q)
  %55 = load i32, ptr %i, align 4
  %sqrt = getelementptr inbounds %struct.int_sqrt, ptr %q, i32 0, i32 0
  %56 = load i32, ptr %sqrt, align 4
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %55, i32 noundef %56)
  br label %for.inc79

for.inc79:                                        ; preds = %for.body77
  %57 = load i32, ptr %i, align 4
  %inc80 = add nsw i32 %57, 1
  store i32 %inc80, ptr %i, align 4
  br label %for.cond75, !llvm.loop !16

for.end81:                                        ; preds = %for.cond75
  %58 = load i64, ptr %l, align 8
  call void @usqrt(i64 noundef %58, ptr noundef %q)
  %59 = load i64, ptr %l, align 8
  %sqrt82 = getelementptr inbounds %struct.int_sqrt, ptr %q, i32 0, i32 0
  %60 = load i32, ptr %sqrt82, align 4
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %59, i32 noundef %60)
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store double 0.000000e+00, ptr %X, align 8
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc92, %for.end81
  %61 = load double, ptr %X, align 8
  %cmp86 = fcmp ole double %61, 3.600000e+02
  br i1 %cmp86, label %for.body88, label %for.end94

for.body88:                                       ; preds = %for.cond85
  %62 = load double, ptr %X, align 8
  %63 = load double, ptr %X, align 8
  %call89 = call double @atan(double noundef 1.000000e+00) #4
  %mul = fmul double 4.000000e+00, %call89
  %mul90 = fmul double %63, %mul
  %div = fdiv double %mul90, 1.800000e+02
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %62, double noundef %div)
  br label %for.inc92

for.inc92:                                        ; preds = %for.body88
  %64 = load double, ptr %X, align 8
  %add93 = fadd double %64, 1.000000e+00
  store double %add93, ptr %X, align 8
  br label %for.cond85, !llvm.loop !17

for.end94:                                        ; preds = %for.cond85
  %call95 = call i32 @puts(ptr noundef @.str.9)
  store double 0.000000e+00, ptr %X, align 8
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %for.end94
  %65 = load double, ptr %X, align 8
  %call97 = call double @atan(double noundef 1.000000e+00) #4
  %mul98 = fmul double 4.000000e+00, %call97
  %66 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %mul98, double 0x3EB0C6F7A0B5ED8D)
  %cmp100 = fcmp ole double %65, %66
  br i1 %cmp100, label %for.body102, label %for.end113

for.body102:                                      ; preds = %for.cond96
  %67 = load double, ptr %X, align 8
  %68 = load double, ptr %X, align 8
  %mul103 = fmul double %68, 1.800000e+02
  %call104 = call double @atan(double noundef 1.000000e+00) #4
  %mul105 = fmul double 4.000000e+00, %call104
  %div106 = fdiv double %mul103, %mul105
  %call107 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %67, double noundef %div106)
  br label %for.inc108

for.inc108:                                       ; preds = %for.body102
  %call109 = call double @atan(double noundef 1.000000e+00) #4
  %mul110 = fmul double 4.000000e+00, %call109
  %div111 = fdiv double %mul110, 1.800000e+02
  %69 = load double, ptr %X, align 8
  %add112 = fadd double %69, %div111
  store double %add112, ptr %X, align 8
  br label %for.cond96, !llvm.loop !18

for.end113:                                       ; preds = %for.cond96
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare void @SolveCubic(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) #1

declare void @usqrt(i64 noundef, ptr noundef) #1

; Function Attrs: nounwind readnone willreturn
declare double @atan(double noundef) #2

declare i32 @puts(...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }

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
