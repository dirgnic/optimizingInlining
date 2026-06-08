; ModuleID = './source_snapshot/public_repos/mibench/automotive/basicmath/basicmath_large.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/basicmath/basicmath_large.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
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
  store double 1.000000e+00, ptr %a1, align 8
  store double -4.500000e+00, ptr %b1, align 8
  store double 1.700000e+01, ptr %c1, align 8
  store double -3.000000e+01, ptr %d1, align 8
  %9 = load double, ptr %a1, align 8
  %10 = load double, ptr %b1, align 8
  %11 = load double, ptr %c1, align 8
  %12 = load double, ptr %d1, align 8
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
  store double 1.000000e+00, ptr %a1, align 8
  store double -3.500000e+00, ptr %b1, align 8
  store double 2.200000e+01, ptr %c1, align 8
  store double -3.100000e+01, ptr %d1, align 8
  %18 = load double, ptr %a1, align 8
  %19 = load double, ptr %b1, align 8
  %20 = load double, ptr %c1, align 8
  %21 = load double, ptr %d1, align 8
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
  store double 1.000000e+00, ptr %a1, align 8
  store double -1.370000e+01, ptr %b1, align 8
  store double 1.000000e+00, ptr %c1, align 8
  store double -3.500000e+01, ptr %d1, align 8
  %27 = load double, ptr %a1, align 8
  %28 = load double, ptr %b1, align 8
  %29 = load double, ptr %c1, align 8
  %30 = load double, ptr %d1, align 8
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
  store double 3.000000e+00, ptr %a1, align 8
  store double 1.234000e+01, ptr %b1, align 8
  store double 5.000000e+00, ptr %c1, align 8
  store double 1.200000e+01, ptr %d1, align 8
  %36 = load double, ptr %a1, align 8
  %37 = load double, ptr %b1, align 8
  %38 = load double, ptr %c1, align 8
  %39 = load double, ptr %d1, align 8
  %arraydecay40 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %36, double noundef %37, double noundef %38, double noundef %39, ptr noundef %solutions, ptr noundef %arraydecay40)
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc48, %for.end38
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %solutions, align 4
  %cmp43 = icmp slt i32 %40, %41
  br i1 %cmp43, label %for.body44, label %for.end50

for.body44:                                       ; preds = %for.cond42
  %42 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom45
  %43 = load double, ptr %arrayidx46, align 8
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %43)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body44
  %44 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %44, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond42, !llvm.loop !11

for.end50:                                        ; preds = %for.cond42
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double -8.000000e+00, ptr %a1, align 8
  store double -6.789000e+01, ptr %b1, align 8
  store double 6.000000e+00, ptr %c1, align 8
  store double -2.360000e+01, ptr %d1, align 8
  %45 = load double, ptr %a1, align 8
  %46 = load double, ptr %b1, align 8
  %47 = load double, ptr %c1, align 8
  %48 = load double, ptr %d1, align 8
  %arraydecay52 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %45, double noundef %46, double noundef %47, double noundef %48, ptr noundef %solutions, ptr noundef %arraydecay52)
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc60, %for.end50
  %49 = load i32, ptr %i, align 4
  %50 = load i32, ptr %solutions, align 4
  %cmp55 = icmp slt i32 %49, %50
  br i1 %cmp55, label %for.body56, label %for.end62

for.body56:                                       ; preds = %for.cond54
  %51 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %51 to i64
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom57
  %52 = load double, ptr %arrayidx58, align 8
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %52)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body56
  %53 = load i32, ptr %i, align 4
  %inc61 = add nsw i32 %53, 1
  store i32 %inc61, ptr %i, align 4
  br label %for.cond54, !llvm.loop !12

for.end62:                                        ; preds = %for.cond54
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 4.500000e+01, ptr %a1, align 8
  store double 8.670000e+00, ptr %b1, align 8
  store double 7.500000e+00, ptr %c1, align 8
  store double 3.400000e+01, ptr %d1, align 8
  %54 = load double, ptr %a1, align 8
  %55 = load double, ptr %b1, align 8
  %56 = load double, ptr %c1, align 8
  %57 = load double, ptr %d1, align 8
  %arraydecay64 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %54, double noundef %55, double noundef %56, double noundef %57, ptr noundef %solutions, ptr noundef %arraydecay64)
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc72, %for.end62
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %solutions, align 4
  %cmp67 = icmp slt i32 %58, %59
  br i1 %cmp67, label %for.body68, label %for.end74

for.body68:                                       ; preds = %for.cond66
  %60 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %60 to i64
  %arrayidx70 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom69
  %61 = load double, ptr %arrayidx70, align 8
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %61)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body68
  %62 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %62, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond66, !llvm.loop !13

for.end74:                                        ; preds = %for.cond66
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double -1.200000e+01, ptr %a1, align 8
  store double -1.700000e+00, ptr %b1, align 8
  store double 5.300000e+00, ptr %c1, align 8
  store double 1.600000e+01, ptr %d1, align 8
  %63 = load double, ptr %a1, align 8
  %64 = load double, ptr %b1, align 8
  %65 = load double, ptr %c1, align 8
  %66 = load double, ptr %d1, align 8
  %arraydecay76 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %63, double noundef %64, double noundef %65, double noundef %66, ptr noundef %solutions, ptr noundef %arraydecay76)
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc84, %for.end74
  %67 = load i32, ptr %i, align 4
  %68 = load i32, ptr %solutions, align 4
  %cmp79 = icmp slt i32 %67, %68
  br i1 %cmp79, label %for.body80, label %for.end86

for.body80:                                       ; preds = %for.cond78
  %69 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %69 to i64
  %arrayidx82 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom81
  %70 = load double, ptr %arrayidx82, align 8
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %70)
  br label %for.inc84

for.inc84:                                        ; preds = %for.body80
  %71 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %71, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond78, !llvm.loop !14

for.end86:                                        ; preds = %for.cond78
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store double 1.000000e+00, ptr %a1, align 8
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc119, %for.end86
  %72 = load double, ptr %a1, align 8
  %cmp89 = fcmp olt double %72, 1.000000e+01
  br i1 %cmp89, label %for.body90, label %for.end121

for.body90:                                       ; preds = %for.cond88
  store double 1.000000e+01, ptr %b1, align 8
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc116, %for.body90
  %73 = load double, ptr %b1, align 8
  %cmp92 = fcmp ogt double %73, 0.000000e+00
  br i1 %cmp92, label %for.body93, label %for.end118

for.body93:                                       ; preds = %for.cond91
  store double 5.000000e+00, ptr %c1, align 8
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc114, %for.body93
  %74 = load double, ptr %c1, align 8
  %cmp95 = fcmp olt double %74, 1.500000e+01
  br i1 %cmp95, label %for.body96, label %for.end115

for.body96:                                       ; preds = %for.cond94
  store double -1.000000e+00, ptr %d1, align 8
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc112, %for.body96
  %75 = load double, ptr %d1, align 8
  %cmp98 = fcmp ogt double %75, -5.000000e+00
  br i1 %cmp98, label %for.body99, label %for.end113

for.body99:                                       ; preds = %for.cond97
  %76 = load double, ptr %a1, align 8
  %77 = load double, ptr %b1, align 8
  %78 = load double, ptr %c1, align 8
  %79 = load double, ptr %d1, align 8
  %arraydecay100 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 0
  call void @SolveCubic(double noundef %76, double noundef %77, double noundef %78, double noundef %79, ptr noundef %solutions, ptr noundef %arraydecay100)
  %call101 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc108, %for.body99
  %80 = load i32, ptr %i, align 4
  %81 = load i32, ptr %solutions, align 4
  %cmp103 = icmp slt i32 %80, %81
  br i1 %cmp103, label %for.body104, label %for.end110

for.body104:                                      ; preds = %for.cond102
  %82 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %82 to i64
  %arrayidx106 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %idxprom105
  %83 = load double, ptr %arrayidx106, align 8
  %call107 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %83)
  br label %for.inc108

for.inc108:                                       ; preds = %for.body104
  %84 = load i32, ptr %i, align 4
  %inc109 = add nsw i32 %84, 1
  store i32 %inc109, ptr %i, align 4
  br label %for.cond102, !llvm.loop !15

for.end110:                                       ; preds = %for.cond102
  %call111 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc112

for.inc112:                                       ; preds = %for.end110
  %85 = load double, ptr %d1, align 8
  %sub = fsub double %85, 4.510000e-01
  store double %sub, ptr %d1, align 8
  br label %for.cond97, !llvm.loop !16

for.end113:                                       ; preds = %for.cond97
  br label %for.inc114

for.inc114:                                       ; preds = %for.end113
  %86 = load double, ptr %c1, align 8
  %add = fadd double %86, 6.100000e-01
  store double %add, ptr %c1, align 8
  br label %for.cond94, !llvm.loop !17

for.end115:                                       ; preds = %for.cond94
  br label %for.inc116

for.inc116:                                       ; preds = %for.end115
  %87 = load double, ptr %b1, align 8
  %sub117 = fsub double %87, 2.500000e-01
  store double %sub117, ptr %b1, align 8
  br label %for.cond91, !llvm.loop !18

for.end118:                                       ; preds = %for.cond91
  br label %for.inc119

for.inc119:                                       ; preds = %for.end118
  %88 = load double, ptr %a1, align 8
  %add120 = fadd double %88, 1.000000e+00
  store double %add120, ptr %a1, align 8
  br label %for.cond88, !llvm.loop !19

for.end121:                                       ; preds = %for.cond88
  %call122 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc127, %for.end121
  %89 = load i32, ptr %i, align 4
  %cmp124 = icmp slt i32 %89, 100000
  br i1 %cmp124, label %for.body125, label %for.end129

for.body125:                                      ; preds = %for.cond123
  %90 = load i32, ptr %i, align 4
  %conv = sext i32 %90 to i64
  call void @usqrt(i64 noundef %conv, ptr noundef %q)
  %91 = load i32, ptr %i, align 4
  %sqrt = getelementptr inbounds %struct.int_sqrt, ptr %q, i32 0, i32 0
  %92 = load i32, ptr %sqrt, align 4
  %call126 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %91, i32 noundef %92)
  br label %for.inc127

for.inc127:                                       ; preds = %for.body125
  %93 = load i32, ptr %i, align 4
  %add128 = add nsw i32 %93, 2
  store i32 %add128, ptr %i, align 4
  br label %for.cond123, !llvm.loop !20

for.end129:                                       ; preds = %for.cond123
  %call130 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i64 1072497001, ptr %l, align 8
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc137, %for.end129
  %94 = load i64, ptr %l, align 8
  %cmp132 = icmp ult i64 %94, 1072513385
  br i1 %cmp132, label %for.body134, label %for.end139

for.body134:                                      ; preds = %for.cond131
  %95 = load i64, ptr %l, align 8
  call void @usqrt(i64 noundef %95, ptr noundef %q)
  %96 = load i64, ptr %l, align 8
  %sqrt135 = getelementptr inbounds %struct.int_sqrt, ptr %q, i32 0, i32 0
  %97 = load i32, ptr %sqrt135, align 4
  %call136 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %96, i32 noundef %97)
  br label %for.inc137

for.inc137:                                       ; preds = %for.body134
  %98 = load i64, ptr %l, align 8
  %inc138 = add i64 %98, 1
  store i64 %inc138, ptr %l, align 8
  br label %for.cond131, !llvm.loop !21

for.end139:                                       ; preds = %for.cond131
  %call140 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store double 0.000000e+00, ptr %X, align 8
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc148, %for.end139
  %99 = load double, ptr %X, align 8
  %cmp142 = fcmp ole double %99, 3.600000e+02
  br i1 %cmp142, label %for.body144, label %for.end150

for.body144:                                      ; preds = %for.cond141
  %100 = load double, ptr %X, align 8
  %101 = load double, ptr %X, align 8
  %call145 = call double @atan(double noundef 1.000000e+00) #4
  %mul = fmul double 4.000000e+00, %call145
  %mul146 = fmul double %101, %mul
  %div = fdiv double %mul146, 1.800000e+02
  %call147 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %100, double noundef %div)
  br label %for.inc148

for.inc148:                                       ; preds = %for.body144
  %102 = load double, ptr %X, align 8
  %add149 = fadd double %102, 1.000000e-03
  store double %add149, ptr %X, align 8
  br label %for.cond141, !llvm.loop !22

for.end150:                                       ; preds = %for.cond141
  %call151 = call i32 @puts(ptr noundef @.str.9)
  store double 0.000000e+00, ptr %X, align 8
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc164, %for.end150
  %103 = load double, ptr %X, align 8
  %call153 = call double @atan(double noundef 1.000000e+00) #4
  %mul154 = fmul double 4.000000e+00, %call153
  %104 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %mul154, double 0x3EB0C6F7A0B5ED8D)
  %cmp156 = fcmp ole double %103, %104
  br i1 %cmp156, label %for.body158, label %for.end169

for.body158:                                      ; preds = %for.cond152
  %105 = load double, ptr %X, align 8
  %106 = load double, ptr %X, align 8
  %mul159 = fmul double %106, 1.800000e+02
  %call160 = call double @atan(double noundef 1.000000e+00) #4
  %mul161 = fmul double 4.000000e+00, %call160
  %div162 = fdiv double %mul159, %mul161
  %call163 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %105, double noundef %div162)
  br label %for.inc164

for.inc164:                                       ; preds = %for.body158
  %call165 = call double @atan(double noundef 1.000000e+00) #4
  %mul166 = fmul double 4.000000e+00, %call165
  %div167 = fdiv double %mul166, 5.760000e+03
  %107 = load double, ptr %X, align 8
  %add168 = fadd double %107, %div167
  store double %add168, ptr %X, align 8
  br label %for.cond152, !llvm.loop !23

for.end169:                                       ; preds = %for.cond152
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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
