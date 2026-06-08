; ModuleID = 'SingleSource/Benchmarks/Misc/whetstone.c'
source_filename = "SingleSource/Benchmarks/Misc/whetstone.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"usage: whetdc [-c] [loops]\0A\00", align 1
@T = global double 0.000000e+00, align 8
@T1 = global double 0.000000e+00, align 8
@T2 = global double 0.000000e+00, align 8
@E1 = global [5 x double] zeroinitializer, align 8
@J = global i32 0, align 4
@K = global i32 0, align 4
@L = global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %I = alloca i64, align 8
  %N1 = alloca i64, align 8
  %N2 = alloca i64, align 8
  %N3 = alloca i64, align 8
  %N4 = alloca i64, align 8
  %N6 = alloca i64, align 8
  %N7 = alloca i64, align 8
  %N8 = alloca i64, align 8
  %N9 = alloca i64, align 8
  %N10 = alloca i64, align 8
  %N11 = alloca i64, align 8
  %X1 = alloca double, align 8
  %X2 = alloca double, align 8
  %X3 = alloca double, align 8
  %X4 = alloca double, align 8
  %X = alloca double, align 8
  %Y = alloca double, align 8
  %Z = alloca double, align 8
  %LOOP = alloca i64, align 8
  %II = alloca i32, align 4
  %JJ = alloca i32, align 4
  %loopstart = alloca i64, align 8
  %startsec = alloca i64, align 8
  %finisec = alloca i64, align 8
  %KIPS = alloca float, align 4
  %continuous = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 100000, ptr %loopstart, align 8
  store i32 0, ptr %continuous, align 4
  store i32 1, ptr %II, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %entry
  %0 = load i32, ptr %II, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %II, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strncmp(ptr noundef %4, ptr noundef @.str, i64 noundef 2) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr %II, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 %idxprom2
  %7 = load ptr, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx4, align 1
  %conv = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv, 99
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 1, ptr %continuous, align 4
  br label %if.end18

if.else:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %II, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %9, i64 %idxprom7
  %11 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i64 @atol(ptr noundef %11)
  %cmp10 = icmp sgt i64 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else
  %12 = load ptr, ptr %argv.addr, align 8
  %13 = load i32, ptr %II, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %12, i64 %idxprom13
  %14 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i64 @atol(ptr noundef %14)
  store i64 %call15, ptr %loopstart, align 8
  br label %if.end

if.else16:                                        ; preds = %if.else
  %15 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %16 = load i32, ptr %II, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %II, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %LCONT

LCONT:                                            ; preds = %if.then244, %while.end
  %call19 = call i64 @time(ptr noundef null)
  store i64 %call19, ptr %startsec, align 8
  store double 4.999750e-01, ptr @T, align 8
  store double 5.002500e-01, ptr @T1, align 8
  store double 2.000000e+00, ptr @T2, align 8
  %17 = load i64, ptr %loopstart, align 8
  store i64 %17, ptr %LOOP, align 8
  store i32 1, ptr %II, align 4
  store i32 1, ptr %JJ, align 4
  br label %IILOOP

IILOOP:                                           ; preds = %if.then240, %LCONT
  store i64 0, ptr %N1, align 8
  %18 = load i64, ptr %LOOP, align 8
  %mul = mul nsw i64 12, %18
  store i64 %mul, ptr %N2, align 8
  %19 = load i64, ptr %LOOP, align 8
  %mul20 = mul nsw i64 14, %19
  store i64 %mul20, ptr %N3, align 8
  %20 = load i64, ptr %LOOP, align 8
  %mul21 = mul nsw i64 345, %20
  store i64 %mul21, ptr %N4, align 8
  %21 = load i64, ptr %LOOP, align 8
  %mul22 = mul nsw i64 210, %21
  store i64 %mul22, ptr %N6, align 8
  %22 = load i64, ptr %LOOP, align 8
  %mul23 = mul nsw i64 32, %22
  store i64 %mul23, ptr %N7, align 8
  %23 = load i64, ptr %LOOP, align 8
  %mul24 = mul nsw i64 899, %23
  store i64 %mul24, ptr %N8, align 8
  %24 = load i64, ptr %LOOP, align 8
  %mul25 = mul nsw i64 616, %24
  store i64 %mul25, ptr %N9, align 8
  store i64 0, ptr %N10, align 8
  %25 = load i64, ptr %LOOP, align 8
  %mul26 = mul nsw i64 93, %25
  store i64 %mul26, ptr %N11, align 8
  store double 1.000000e+00, ptr %X1, align 8
  store double -1.000000e+00, ptr %X2, align 8
  store double -1.000000e+00, ptr %X3, align 8
  store double -1.000000e+00, ptr %X4, align 8
  store i64 1, ptr %I, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %IILOOP
  %26 = load i64, ptr %I, align 8
  %27 = load i64, ptr %N1, align 8
  %cmp27 = icmp sle i64 %26, %27
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load double, ptr %X1, align 8
  %29 = load double, ptr %X2, align 8
  %add = fadd double %28, %29
  %30 = load double, ptr %X3, align 8
  %add29 = fadd double %add, %30
  %31 = load double, ptr %X4, align 8
  %sub = fsub double %add29, %31
  %32 = load double, ptr @T, align 8
  %mul30 = fmul double %sub, %32
  store double %mul30, ptr %X1, align 8
  %33 = load double, ptr %X1, align 8
  %34 = load double, ptr %X2, align 8
  %add31 = fadd double %33, %34
  %35 = load double, ptr %X3, align 8
  %sub32 = fsub double %add31, %35
  %36 = load double, ptr %X4, align 8
  %add33 = fadd double %sub32, %36
  %37 = load double, ptr @T, align 8
  %mul34 = fmul double %add33, %37
  store double %mul34, ptr %X2, align 8
  %38 = load double, ptr %X1, align 8
  %39 = load double, ptr %X2, align 8
  %sub35 = fsub double %38, %39
  %40 = load double, ptr %X3, align 8
  %add36 = fadd double %sub35, %40
  %41 = load double, ptr %X4, align 8
  %add37 = fadd double %add36, %41
  %42 = load double, ptr @T, align 8
  %mul38 = fmul double %add37, %42
  store double %mul38, ptr %X3, align 8
  %43 = load double, ptr %X1, align 8
  %fneg = fneg double %43
  %44 = load double, ptr %X2, align 8
  %add39 = fadd double %fneg, %44
  %45 = load double, ptr %X3, align 8
  %add40 = fadd double %add39, %45
  %46 = load double, ptr %X4, align 8
  %add41 = fadd double %add40, %46
  %47 = load double, ptr @T, align 8
  %mul42 = fmul double %add41, %47
  store double %mul42, ptr %X4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i64, ptr %I, align 8
  %inc43 = add nsw i64 %48, 1
  store i64 %inc43, ptr %I, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %49 = load i32, ptr %JJ, align 4
  %50 = load i32, ptr %II, align 4
  %cmp44 = icmp eq i32 %49, %50
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.end
  %51 = load i64, ptr %N1, align 8
  %52 = load i64, ptr %N1, align 8
  %53 = load i64, ptr %N1, align 8
  %54 = load double, ptr %X1, align 8
  %55 = load double, ptr %X2, align 8
  %56 = load double, ptr %X3, align 8
  %57 = load double, ptr %X4, align 8
  call void @POUT(i64 noundef %51, i64 noundef %52, i64 noundef %53, double noundef %54, double noundef %55, double noundef %56, double noundef %57)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %for.end
  store double 1.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  store double -1.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  store double -1.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  store double -1.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  store i64 1, ptr %I, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc69, %if.end47
  %58 = load i64, ptr %I, align 8
  %59 = load i64, ptr %N2, align 8
  %cmp49 = icmp sle i64 %58, %59
  br i1 %cmp49, label %for.body51, label %for.end71

for.body51:                                       ; preds = %for.cond48
  %60 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %61 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %add52 = fadd double %60, %61
  %62 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %add53 = fadd double %add52, %62
  %63 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  %sub54 = fsub double %add53, %63
  %64 = load double, ptr @T, align 8
  %mul55 = fmul double %sub54, %64
  store double %mul55, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %65 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %66 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %add56 = fadd double %65, %66
  %67 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %sub57 = fsub double %add56, %67
  %68 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  %add58 = fadd double %sub57, %68
  %69 = load double, ptr @T, align 8
  %mul59 = fmul double %add58, %69
  store double %mul59, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %70 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %71 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %sub60 = fsub double %70, %71
  %72 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %add61 = fadd double %sub60, %72
  %73 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  %add62 = fadd double %add61, %73
  %74 = load double, ptr @T, align 8
  %mul63 = fmul double %add62, %74
  store double %mul63, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %75 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %fneg64 = fneg double %75
  %76 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %add65 = fadd double %fneg64, %76
  %77 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %add66 = fadd double %add65, %77
  %78 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  %add67 = fadd double %add66, %78
  %79 = load double, ptr @T, align 8
  %mul68 = fmul double %add67, %79
  store double %mul68, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  br label %for.inc69

for.inc69:                                        ; preds = %for.body51
  %80 = load i64, ptr %I, align 8
  %inc70 = add nsw i64 %80, 1
  store i64 %inc70, ptr %I, align 8
  br label %for.cond48, !llvm.loop !9

for.end71:                                        ; preds = %for.cond48
  %81 = load i32, ptr %JJ, align 4
  %82 = load i32, ptr %II, align 4
  %cmp72 = icmp eq i32 %81, %82
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %for.end71
  %83 = load i64, ptr %N2, align 8
  %84 = load i64, ptr %N3, align 8
  %85 = load i64, ptr %N2, align 8
  %86 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %87 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %88 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %89 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  call void @POUT(i64 noundef %83, i64 noundef %84, i64 noundef %85, double noundef %86, double noundef %87, double noundef %88, double noundef %89)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %for.end71
  store i64 1, ptr %I, align 8
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc80, %if.end75
  %90 = load i64, ptr %I, align 8
  %91 = load i64, ptr %N3, align 8
  %cmp77 = icmp sle i64 %90, %91
  br i1 %cmp77, label %for.body79, label %for.end82

for.body79:                                       ; preds = %for.cond76
  call void @PA(ptr noundef @E1)
  br label %for.inc80

for.inc80:                                        ; preds = %for.body79
  %92 = load i64, ptr %I, align 8
  %inc81 = add nsw i64 %92, 1
  store i64 %inc81, ptr %I, align 8
  br label %for.cond76, !llvm.loop !10

for.end82:                                        ; preds = %for.cond76
  %93 = load i32, ptr %JJ, align 4
  %94 = load i32, ptr %II, align 4
  %cmp83 = icmp eq i32 %93, %94
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.end82
  %95 = load i64, ptr %N3, align 8
  %96 = load i64, ptr %N2, align 8
  %97 = load i64, ptr %N2, align 8
  %98 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %99 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %100 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %101 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  call void @POUT(i64 noundef %95, i64 noundef %96, i64 noundef %97, double noundef %98, double noundef %99, double noundef %100, double noundef %101)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %for.end82
  store i32 1, ptr @J, align 4
  store i64 1, ptr %I, align 8
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc106, %if.end86
  %102 = load i64, ptr %I, align 8
  %103 = load i64, ptr %N4, align 8
  %cmp88 = icmp sle i64 %102, %103
  br i1 %cmp88, label %for.body90, label %for.end108

for.body90:                                       ; preds = %for.cond87
  %104 = load i32, ptr @J, align 4
  %cmp91 = icmp eq i32 %104, 1
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %for.body90
  store i32 2, ptr @J, align 4
  br label %if.end95

if.else94:                                        ; preds = %for.body90
  store i32 3, ptr @J, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then93
  %105 = load i32, ptr @J, align 4
  %cmp96 = icmp sgt i32 %105, 2
  br i1 %cmp96, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.end95
  store i32 0, ptr @J, align 4
  br label %if.end100

if.else99:                                        ; preds = %if.end95
  store i32 1, ptr @J, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then98
  %106 = load i32, ptr @J, align 4
  %cmp101 = icmp slt i32 %106, 1
  br i1 %cmp101, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.end100
  store i32 1, ptr @J, align 4
  br label %if.end105

if.else104:                                       ; preds = %if.end100
  store i32 0, ptr @J, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then103
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %107 = load i64, ptr %I, align 8
  %inc107 = add nsw i64 %107, 1
  store i64 %inc107, ptr %I, align 8
  br label %for.cond87, !llvm.loop !11

for.end108:                                       ; preds = %for.cond87
  %108 = load i32, ptr %JJ, align 4
  %109 = load i32, ptr %II, align 4
  %cmp109 = icmp eq i32 %108, %109
  br i1 %cmp109, label %if.then111, label %if.end114

if.then111:                                       ; preds = %for.end108
  %110 = load i64, ptr %N4, align 8
  %111 = load i32, ptr @J, align 4
  %conv112 = sext i32 %111 to i64
  %112 = load i32, ptr @J, align 4
  %conv113 = sext i32 %112 to i64
  %113 = load double, ptr %X1, align 8
  %114 = load double, ptr %X2, align 8
  %115 = load double, ptr %X3, align 8
  %116 = load double, ptr %X4, align 8
  call void @POUT(i64 noundef %110, i64 noundef %conv112, i64 noundef %conv113, double noundef %113, double noundef %114, double noundef %115, double noundef %116)
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %for.end108
  store i32 1, ptr @J, align 4
  store i32 2, ptr @K, align 4
  store i32 3, ptr @L, align 4
  store i64 1, ptr %I, align 8
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc142, %if.end114
  %117 = load i64, ptr %I, align 8
  %118 = load i64, ptr %N6, align 8
  %cmp116 = icmp sle i64 %117, %118
  br i1 %cmp116, label %for.body118, label %for.end144

for.body118:                                      ; preds = %for.cond115
  %119 = load i32, ptr @J, align 4
  %120 = load i32, ptr @K, align 4
  %121 = load i32, ptr @J, align 4
  %sub119 = sub nsw i32 %120, %121
  %mul120 = mul nsw i32 %119, %sub119
  %122 = load i32, ptr @L, align 4
  %123 = load i32, ptr @K, align 4
  %sub121 = sub nsw i32 %122, %123
  %mul122 = mul nsw i32 %mul120, %sub121
  store i32 %mul122, ptr @J, align 4
  %124 = load i32, ptr @L, align 4
  %125 = load i32, ptr @K, align 4
  %mul123 = mul nsw i32 %124, %125
  %126 = load i32, ptr @L, align 4
  %127 = load i32, ptr @J, align 4
  %sub124 = sub nsw i32 %126, %127
  %128 = load i32, ptr @K, align 4
  %mul125 = mul nsw i32 %sub124, %128
  %sub126 = sub nsw i32 %mul123, %mul125
  store i32 %sub126, ptr @K, align 4
  %129 = load i32, ptr @L, align 4
  %130 = load i32, ptr @K, align 4
  %sub127 = sub nsw i32 %129, %130
  %131 = load i32, ptr @K, align 4
  %132 = load i32, ptr @J, align 4
  %add128 = add nsw i32 %131, %132
  %mul129 = mul nsw i32 %sub127, %add128
  store i32 %mul129, ptr @L, align 4
  %133 = load i32, ptr @J, align 4
  %134 = load i32, ptr @K, align 4
  %add130 = add nsw i32 %133, %134
  %135 = load i32, ptr @L, align 4
  %add131 = add nsw i32 %add130, %135
  %conv132 = sitofp i32 %add131 to double
  %136 = load i32, ptr @L, align 4
  %sub133 = sub nsw i32 %136, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom134
  store double %conv132, ptr %arrayidx135, align 8
  %137 = load i32, ptr @J, align 4
  %138 = load i32, ptr @K, align 4
  %mul136 = mul nsw i32 %137, %138
  %139 = load i32, ptr @L, align 4
  %mul137 = mul nsw i32 %mul136, %139
  %conv138 = sitofp i32 %mul137 to double
  %140 = load i32, ptr @K, align 4
  %sub139 = sub nsw i32 %140, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom140
  store double %conv138, ptr %arrayidx141, align 8
  br label %for.inc142

for.inc142:                                       ; preds = %for.body118
  %141 = load i64, ptr %I, align 8
  %inc143 = add nsw i64 %141, 1
  store i64 %inc143, ptr %I, align 8
  br label %for.cond115, !llvm.loop !12

for.end144:                                       ; preds = %for.cond115
  %142 = load i32, ptr %JJ, align 4
  %143 = load i32, ptr %II, align 4
  %cmp145 = icmp eq i32 %142, %143
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %for.end144
  %144 = load i64, ptr %N6, align 8
  %145 = load i32, ptr @J, align 4
  %conv148 = sext i32 %145 to i64
  %146 = load i32, ptr @K, align 4
  %conv149 = sext i32 %146 to i64
  %147 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %148 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %149 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %150 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  call void @POUT(i64 noundef %144, i64 noundef %conv148, i64 noundef %conv149, double noundef %147, double noundef %148, double noundef %149, double noundef %150)
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %for.end144
  store double 5.000000e-01, ptr %X, align 8
  store double 5.000000e-01, ptr %Y, align 8
  store i64 1, ptr %I, align 8
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc170, %if.end150
  %151 = load i64, ptr %I, align 8
  %152 = load i64, ptr %N7, align 8
  %cmp152 = icmp sle i64 %151, %152
  br i1 %cmp152, label %for.body154, label %for.end172

for.body154:                                      ; preds = %for.cond151
  %153 = load double, ptr @T, align 8
  %154 = load double, ptr @T2, align 8
  %155 = load double, ptr %X, align 8
  %156 = call double @llvm.sin.f64(double %155)
  %mul155 = fmul double %154, %156
  %157 = load double, ptr %X, align 8
  %158 = call double @llvm.cos.f64(double %157)
  %mul156 = fmul double %mul155, %158
  %159 = load double, ptr %X, align 8
  %160 = load double, ptr %Y, align 8
  %add157 = fadd double %159, %160
  %161 = call double @llvm.cos.f64(double %add157)
  %162 = load double, ptr %X, align 8
  %163 = load double, ptr %Y, align 8
  %sub158 = fsub double %162, %163
  %164 = call double @llvm.cos.f64(double %sub158)
  %add159 = fadd double %161, %164
  %sub160 = fsub double %add159, 1.000000e+00
  %div = fdiv double %mul156, %sub160
  %165 = call double @llvm.atan.f64(double %div)
  %mul161 = fmul double %153, %165
  store double %mul161, ptr %X, align 8
  %166 = load double, ptr @T, align 8
  %167 = load double, ptr @T2, align 8
  %168 = load double, ptr %Y, align 8
  %169 = call double @llvm.sin.f64(double %168)
  %mul162 = fmul double %167, %169
  %170 = load double, ptr %Y, align 8
  %171 = call double @llvm.cos.f64(double %170)
  %mul163 = fmul double %mul162, %171
  %172 = load double, ptr %X, align 8
  %173 = load double, ptr %Y, align 8
  %add164 = fadd double %172, %173
  %174 = call double @llvm.cos.f64(double %add164)
  %175 = load double, ptr %X, align 8
  %176 = load double, ptr %Y, align 8
  %sub165 = fsub double %175, %176
  %177 = call double @llvm.cos.f64(double %sub165)
  %add166 = fadd double %174, %177
  %sub167 = fsub double %add166, 1.000000e+00
  %div168 = fdiv double %mul163, %sub167
  %178 = call double @llvm.atan.f64(double %div168)
  %mul169 = fmul double %166, %178
  store double %mul169, ptr %Y, align 8
  br label %for.inc170

for.inc170:                                       ; preds = %for.body154
  %179 = load i64, ptr %I, align 8
  %inc171 = add nsw i64 %179, 1
  store i64 %inc171, ptr %I, align 8
  br label %for.cond151, !llvm.loop !13

for.end172:                                       ; preds = %for.cond151
  %180 = load i32, ptr %JJ, align 4
  %181 = load i32, ptr %II, align 4
  %cmp173 = icmp eq i32 %180, %181
  br i1 %cmp173, label %if.then175, label %if.end178

if.then175:                                       ; preds = %for.end172
  %182 = load i64, ptr %N7, align 8
  %183 = load i32, ptr @J, align 4
  %conv176 = sext i32 %183 to i64
  %184 = load i32, ptr @K, align 4
  %conv177 = sext i32 %184 to i64
  %185 = load double, ptr %X, align 8
  %186 = load double, ptr %X, align 8
  %187 = load double, ptr %Y, align 8
  %188 = load double, ptr %Y, align 8
  call void @POUT(i64 noundef %182, i64 noundef %conv176, i64 noundef %conv177, double noundef %185, double noundef %186, double noundef %187, double noundef %188)
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %for.end172
  store double 1.000000e+00, ptr %X, align 8
  store double 1.000000e+00, ptr %Y, align 8
  store double 1.000000e+00, ptr %Z, align 8
  store i64 1, ptr %I, align 8
  br label %for.cond179

for.cond179:                                      ; preds = %for.inc183, %if.end178
  %189 = load i64, ptr %I, align 8
  %190 = load i64, ptr %N8, align 8
  %cmp180 = icmp sle i64 %189, %190
  br i1 %cmp180, label %for.body182, label %for.end185

for.body182:                                      ; preds = %for.cond179
  %191 = load double, ptr %X, align 8
  %192 = load double, ptr %Y, align 8
  call void @P3(double noundef %191, double noundef %192, ptr noundef %Z)
  br label %for.inc183

for.inc183:                                       ; preds = %for.body182
  %193 = load i64, ptr %I, align 8
  %inc184 = add nsw i64 %193, 1
  store i64 %inc184, ptr %I, align 8
  br label %for.cond179, !llvm.loop !14

for.end185:                                       ; preds = %for.cond179
  %194 = load i32, ptr %JJ, align 4
  %195 = load i32, ptr %II, align 4
  %cmp186 = icmp eq i32 %194, %195
  br i1 %cmp186, label %if.then188, label %if.end191

if.then188:                                       ; preds = %for.end185
  %196 = load i64, ptr %N8, align 8
  %197 = load i32, ptr @J, align 4
  %conv189 = sext i32 %197 to i64
  %198 = load i32, ptr @K, align 4
  %conv190 = sext i32 %198 to i64
  %199 = load double, ptr %X, align 8
  %200 = load double, ptr %Y, align 8
  %201 = load double, ptr %Z, align 8
  %202 = load double, ptr %Z, align 8
  call void @POUT(i64 noundef %196, i64 noundef %conv189, i64 noundef %conv190, double noundef %199, double noundef %200, double noundef %201, double noundef %202)
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %for.end185
  store i32 1, ptr @J, align 4
  store i32 2, ptr @K, align 4
  store i32 3, ptr @L, align 4
  store double 1.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  store double 2.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  store double 3.000000e+00, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  store i64 1, ptr %I, align 8
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc196, %if.end191
  %203 = load i64, ptr %I, align 8
  %204 = load i64, ptr %N9, align 8
  %cmp193 = icmp sle i64 %203, %204
  br i1 %cmp193, label %for.body195, label %for.end198

for.body195:                                      ; preds = %for.cond192
  call void @P0()
  br label %for.inc196

for.inc196:                                       ; preds = %for.body195
  %205 = load i64, ptr %I, align 8
  %inc197 = add nsw i64 %205, 1
  store i64 %inc197, ptr %I, align 8
  br label %for.cond192, !llvm.loop !15

for.end198:                                       ; preds = %for.cond192
  %206 = load i32, ptr %JJ, align 4
  %207 = load i32, ptr %II, align 4
  %cmp199 = icmp eq i32 %206, %207
  br i1 %cmp199, label %if.then201, label %if.end204

if.then201:                                       ; preds = %for.end198
  %208 = load i64, ptr %N9, align 8
  %209 = load i32, ptr @J, align 4
  %conv202 = sext i32 %209 to i64
  %210 = load i32, ptr @K, align 4
  %conv203 = sext i32 %210 to i64
  %211 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 1), align 8
  %212 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 2), align 8
  %213 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 3), align 8
  %214 = load double, ptr getelementptr inbounds ([5 x double], ptr @E1, i64 0, i64 4), align 8
  call void @POUT(i64 noundef %208, i64 noundef %conv202, i64 noundef %conv203, double noundef %211, double noundef %212, double noundef %213, double noundef %214)
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %for.end198
  store i32 2, ptr @J, align 4
  store i32 3, ptr @K, align 4
  store i64 1, ptr %I, align 8
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc214, %if.end204
  %215 = load i64, ptr %I, align 8
  %216 = load i64, ptr %N10, align 8
  %cmp206 = icmp sle i64 %215, %216
  br i1 %cmp206, label %for.body208, label %for.end216

for.body208:                                      ; preds = %for.cond205
  %217 = load i32, ptr @J, align 4
  %218 = load i32, ptr @K, align 4
  %add209 = add nsw i32 %217, %218
  store i32 %add209, ptr @J, align 4
  %219 = load i32, ptr @J, align 4
  %220 = load i32, ptr @K, align 4
  %add210 = add nsw i32 %219, %220
  store i32 %add210, ptr @K, align 4
  %221 = load i32, ptr @K, align 4
  %222 = load i32, ptr @J, align 4
  %sub211 = sub nsw i32 %221, %222
  store i32 %sub211, ptr @J, align 4
  %223 = load i32, ptr @K, align 4
  %224 = load i32, ptr @J, align 4
  %sub212 = sub nsw i32 %223, %224
  %225 = load i32, ptr @J, align 4
  %sub213 = sub nsw i32 %sub212, %225
  store i32 %sub213, ptr @K, align 4
  br label %for.inc214

for.inc214:                                       ; preds = %for.body208
  %226 = load i64, ptr %I, align 8
  %inc215 = add nsw i64 %226, 1
  store i64 %inc215, ptr %I, align 8
  br label %for.cond205, !llvm.loop !16

for.end216:                                       ; preds = %for.cond205
  %227 = load i32, ptr %JJ, align 4
  %228 = load i32, ptr %II, align 4
  %cmp217 = icmp eq i32 %227, %228
  br i1 %cmp217, label %if.then219, label %if.end222

if.then219:                                       ; preds = %for.end216
  %229 = load i64, ptr %N10, align 8
  %230 = load i32, ptr @J, align 4
  %conv220 = sext i32 %230 to i64
  %231 = load i32, ptr @K, align 4
  %conv221 = sext i32 %231 to i64
  %232 = load double, ptr %X1, align 8
  %233 = load double, ptr %X2, align 8
  %234 = load double, ptr %X3, align 8
  %235 = load double, ptr %X4, align 8
  call void @POUT(i64 noundef %229, i64 noundef %conv220, i64 noundef %conv221, double noundef %232, double noundef %233, double noundef %234, double noundef %235)
  br label %if.end222

if.end222:                                        ; preds = %if.then219, %for.end216
  store double 7.500000e-01, ptr %X, align 8
  store i64 1, ptr %I, align 8
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc228, %if.end222
  %236 = load i64, ptr %I, align 8
  %237 = load i64, ptr %N11, align 8
  %cmp224 = icmp sle i64 %236, %237
  br i1 %cmp224, label %for.body226, label %for.end230

for.body226:                                      ; preds = %for.cond223
  %238 = load double, ptr %X, align 8
  %239 = call double @llvm.log.f64(double %238)
  %240 = load double, ptr @T1, align 8
  %div227 = fdiv double %239, %240
  %241 = call double @llvm.exp.f64(double %div227)
  %242 = call double @llvm.sqrt.f64(double %241)
  store double %242, ptr %X, align 8
  br label %for.inc228

for.inc228:                                       ; preds = %for.body226
  %243 = load i64, ptr %I, align 8
  %inc229 = add nsw i64 %243, 1
  store i64 %inc229, ptr %I, align 8
  br label %for.cond223, !llvm.loop !17

for.end230:                                       ; preds = %for.cond223
  %244 = load i32, ptr %JJ, align 4
  %245 = load i32, ptr %II, align 4
  %cmp231 = icmp eq i32 %244, %245
  br i1 %cmp231, label %if.then233, label %if.end236

if.then233:                                       ; preds = %for.end230
  %246 = load i64, ptr %N11, align 8
  %247 = load i32, ptr @J, align 4
  %conv234 = sext i32 %247 to i64
  %248 = load i32, ptr @K, align 4
  %conv235 = sext i32 %248 to i64
  %249 = load double, ptr %X, align 8
  %250 = load double, ptr %X, align 8
  %251 = load double, ptr %X, align 8
  %252 = load double, ptr %X, align 8
  call void @POUT(i64 noundef %246, i64 noundef %conv234, i64 noundef %conv235, double noundef %249, double noundef %250, double noundef %251, double noundef %252)
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %for.end230
  %253 = load i32, ptr %JJ, align 4
  %inc237 = add nsw i32 %253, 1
  store i32 %inc237, ptr %JJ, align 4
  %254 = load i32, ptr %II, align 4
  %cmp238 = icmp sle i32 %inc237, %254
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.end236
  br label %IILOOP

if.end241:                                        ; preds = %if.end236
  %call242 = call i64 @time(ptr noundef null)
  store i64 %call242, ptr %finisec, align 8
  %call243 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %255 = load i32, ptr %continuous, align 4
  %tobool = icmp ne i32 %255, 0
  br i1 %tobool, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.end241
  br label %LCONT

if.end245:                                        ; preds = %if.end241
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end245, %if.else16
  %256 = load i32, ptr %retval, align 4
  ret i32 %256
}

; Function Attrs: nounwind
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @atol(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i64 @time(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @POUT(i64 noundef %N, i64 noundef %J, i64 noundef %K, double noundef %X1, double noundef %X2, double noundef %X3, double noundef %X4) #0 {
entry:
  %N.addr = alloca i64, align 8
  %J.addr = alloca i64, align 8
  %K.addr = alloca i64, align 8
  %X1.addr = alloca double, align 8
  %X2.addr = alloca double, align 8
  %X3.addr = alloca double, align 8
  %X4.addr = alloca double, align 8
  store i64 %N, ptr %N.addr, align 8
  store i64 %J, ptr %J.addr, align 8
  store i64 %K, ptr %K.addr, align 8
  store double %X1, ptr %X1.addr, align 8
  store double %X2, ptr %X2.addr, align 8
  store double %X3, ptr %X3.addr, align 8
  store double %X4, ptr %X4.addr, align 8
  %0 = load i64, ptr %N.addr, align 8
  %1 = load i64, ptr %J.addr, align 8
  %2 = load i64, ptr %K.addr, align 8
  %3 = load double, ptr %X1.addr, align 8
  %4 = load double, ptr %X2.addr, align 8
  %5 = load double, ptr %X3.addr, align 8
  %6 = load double, ptr %X4.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @PA(ptr noundef %E) #0 {
entry:
  %E.addr = alloca ptr, align 8
  store ptr %E, ptr %E.addr, align 8
  store i32 0, ptr @J, align 4
  br label %L10

L10:                                              ; preds = %if.then, %entry
  %0 = load ptr, ptr %E.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %0, i64 1
  %1 = load double, ptr %arrayidx, align 8
  %2 = load ptr, ptr %E.addr, align 8
  %arrayidx1 = getelementptr inbounds double, ptr %2, i64 2
  %3 = load double, ptr %arrayidx1, align 8
  %add = fadd double %1, %3
  %4 = load ptr, ptr %E.addr, align 8
  %arrayidx2 = getelementptr inbounds double, ptr %4, i64 3
  %5 = load double, ptr %arrayidx2, align 8
  %add3 = fadd double %add, %5
  %6 = load ptr, ptr %E.addr, align 8
  %arrayidx4 = getelementptr inbounds double, ptr %6, i64 4
  %7 = load double, ptr %arrayidx4, align 8
  %sub = fsub double %add3, %7
  %8 = load double, ptr @T, align 8
  %mul = fmul double %sub, %8
  %9 = load ptr, ptr %E.addr, align 8
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 1
  store double %mul, ptr %arrayidx5, align 8
  %10 = load ptr, ptr %E.addr, align 8
  %arrayidx6 = getelementptr inbounds double, ptr %10, i64 1
  %11 = load double, ptr %arrayidx6, align 8
  %12 = load ptr, ptr %E.addr, align 8
  %arrayidx7 = getelementptr inbounds double, ptr %12, i64 2
  %13 = load double, ptr %arrayidx7, align 8
  %add8 = fadd double %11, %13
  %14 = load ptr, ptr %E.addr, align 8
  %arrayidx9 = getelementptr inbounds double, ptr %14, i64 3
  %15 = load double, ptr %arrayidx9, align 8
  %sub10 = fsub double %add8, %15
  %16 = load ptr, ptr %E.addr, align 8
  %arrayidx11 = getelementptr inbounds double, ptr %16, i64 4
  %17 = load double, ptr %arrayidx11, align 8
  %add12 = fadd double %sub10, %17
  %18 = load double, ptr @T, align 8
  %mul13 = fmul double %add12, %18
  %19 = load ptr, ptr %E.addr, align 8
  %arrayidx14 = getelementptr inbounds double, ptr %19, i64 2
  store double %mul13, ptr %arrayidx14, align 8
  %20 = load ptr, ptr %E.addr, align 8
  %arrayidx15 = getelementptr inbounds double, ptr %20, i64 1
  %21 = load double, ptr %arrayidx15, align 8
  %22 = load ptr, ptr %E.addr, align 8
  %arrayidx16 = getelementptr inbounds double, ptr %22, i64 2
  %23 = load double, ptr %arrayidx16, align 8
  %sub17 = fsub double %21, %23
  %24 = load ptr, ptr %E.addr, align 8
  %arrayidx18 = getelementptr inbounds double, ptr %24, i64 3
  %25 = load double, ptr %arrayidx18, align 8
  %add19 = fadd double %sub17, %25
  %26 = load ptr, ptr %E.addr, align 8
  %arrayidx20 = getelementptr inbounds double, ptr %26, i64 4
  %27 = load double, ptr %arrayidx20, align 8
  %add21 = fadd double %add19, %27
  %28 = load double, ptr @T, align 8
  %mul22 = fmul double %add21, %28
  %29 = load ptr, ptr %E.addr, align 8
  %arrayidx23 = getelementptr inbounds double, ptr %29, i64 3
  store double %mul22, ptr %arrayidx23, align 8
  %30 = load ptr, ptr %E.addr, align 8
  %arrayidx24 = getelementptr inbounds double, ptr %30, i64 1
  %31 = load double, ptr %arrayidx24, align 8
  %fneg = fneg double %31
  %32 = load ptr, ptr %E.addr, align 8
  %arrayidx25 = getelementptr inbounds double, ptr %32, i64 2
  %33 = load double, ptr %arrayidx25, align 8
  %add26 = fadd double %fneg, %33
  %34 = load ptr, ptr %E.addr, align 8
  %arrayidx27 = getelementptr inbounds double, ptr %34, i64 3
  %35 = load double, ptr %arrayidx27, align 8
  %add28 = fadd double %add26, %35
  %36 = load ptr, ptr %E.addr, align 8
  %arrayidx29 = getelementptr inbounds double, ptr %36, i64 4
  %37 = load double, ptr %arrayidx29, align 8
  %add30 = fadd double %add28, %37
  %38 = load double, ptr @T2, align 8
  %div = fdiv double %add30, %38
  %39 = load ptr, ptr %E.addr, align 8
  %arrayidx31 = getelementptr inbounds double, ptr %39, i64 4
  store double %div, ptr %arrayidx31, align 8
  %40 = load i32, ptr @J, align 4
  %add32 = add nsw i32 %40, 1
  store i32 %add32, ptr @J, align 4
  %41 = load i32, ptr @J, align 4
  %cmp = icmp slt i32 %41, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %L10
  br label %L10

if.end:                                           ; preds = %L10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @P3(double noundef %X, double noundef %Y, ptr noundef %Z) #0 {
entry:
  %X.addr = alloca double, align 8
  %Y.addr = alloca double, align 8
  %Z.addr = alloca ptr, align 8
  %X1 = alloca double, align 8
  %Y1 = alloca double, align 8
  store double %X, ptr %X.addr, align 8
  store double %Y, ptr %Y.addr, align 8
  store ptr %Z, ptr %Z.addr, align 8
  %0 = load double, ptr %X.addr, align 8
  store double %0, ptr %X1, align 8
  %1 = load double, ptr %Y.addr, align 8
  store double %1, ptr %Y1, align 8
  %2 = load double, ptr @T, align 8
  %3 = load double, ptr %X1, align 8
  %4 = load double, ptr %Y1, align 8
  %add = fadd double %3, %4
  %mul = fmul double %2, %add
  store double %mul, ptr %X1, align 8
  %5 = load double, ptr @T, align 8
  %6 = load double, ptr %X1, align 8
  %7 = load double, ptr %Y1, align 8
  %add1 = fadd double %6, %7
  %mul2 = fmul double %5, %add1
  store double %mul2, ptr %Y1, align 8
  %8 = load double, ptr %X1, align 8
  %9 = load double, ptr %Y1, align 8
  %add3 = fadd double %8, %9
  %10 = load double, ptr @T2, align 8
  %div = fdiv double %add3, %10
  %11 = load ptr, ptr %Z.addr, align 8
  store double %div, ptr %11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @P0() #0 {
entry:
  %0 = load i32, ptr @K, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  %2 = load i32, ptr @J, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom1
  store double %1, ptr %arrayidx2, align 8
  %3 = load i32, ptr @L, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom3
  %4 = load double, ptr %arrayidx4, align 8
  %5 = load i32, ptr @K, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom5
  store double %4, ptr %arrayidx6, align 8
  %6 = load i32, ptr @J, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom7
  %7 = load double, ptr %arrayidx8, align 8
  %8 = load i32, ptr @L, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [5 x double], ptr @E1, i64 0, i64 %idxprom9
  store double %7, ptr %arrayidx10, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
