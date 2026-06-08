; ModuleID = 'SingleSource/Benchmarks/Misc/ffbench.c'
source_filename = "SingleSource/Benchmarks/Misc/ffbench.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@main.nsize = internal global [3 x i32] zeroinitializer, align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't allocate data array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%d passes.  No errors in results.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d passes.  %d errors in results.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %npasses = alloca i32, align 4
  %faedge = alloca i32, align 4
  %fdata = alloca ptr, align 8
  %fanum = alloca i64, align 8
  %fasize = alloca i64, align 8
  %mapbase = alloca double, align 8
  %mapscale = alloca double, align 8
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  %imin = alloca double, align 8
  %imax = alloca double, align 8
  %r = alloca double, align 8
  %ij = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 63, ptr %npasses, align 4
  store i32 256, ptr %faedge, align 4
  %0 = load i32, ptr %faedge, align 4
  %1 = load i32, ptr %faedge, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  store i64 %conv, ptr %fanum, align 8
  %2 = load i64, ptr %fanum, align 8
  %add = add nsw i64 %2, 1
  %mul1 = mul nsw i64 %add, 2
  %mul2 = mul i64 %mul1, 8
  store i64 %mul2, ptr %fasize, align 8
  %3 = load i32, ptr %faedge, align 4
  store i32 %3, ptr getelementptr inbounds ([3 x i32], ptr @main.nsize, i64 0, i64 2), align 4
  store i32 %3, ptr getelementptr inbounds ([3 x i32], ptr @main.nsize, i64 0, i64 1), align 4
  %4 = load i64, ptr %fasize, align 8
  %call = call ptr @malloc(i64 noundef %4) #5
  store ptr %call, ptr %fdata, align 8
  %5 = load ptr, ptr %fdata, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str) #6
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %fdata, align 8
  %8 = load i64, ptr %fasize, align 8
  %9 = load ptr, ptr %fdata, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call5 = call ptr @__memset_chk(ptr noundef %7, i32 noundef 0, i64 noundef %8, i64 noundef %10) #6
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %faedge, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %faedge, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %15 = load i32, ptr %i, align 4
  %and = and i32 %15, 15
  %cmp12 = icmp eq i32 %and, 8
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body11
  %16 = load i32, ptr %j, align 4
  %and14 = and i32 %16, 15
  %cmp15 = icmp eq i32 %and14, 8
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %lor.lhs.false, %for.body11
  %17 = load ptr, ptr %fdata, align 8
  %18 = load i32, ptr %faedge, align 4
  %19 = load i32, ptr %i, align 4
  %mul18 = mul nsw i32 %18, %19
  %20 = load i32, ptr %j, align 4
  %add19 = add nsw i32 %mul18, %20
  %mul20 = mul nsw i32 %add19, 2
  %add21 = add nsw i32 1, %mul20
  %idxprom = sext i32 %add21 to i64
  %arrayidx = getelementptr inbounds double, ptr %17, i64 %idxprom
  store double 1.280000e+02, ptr %arrayidx, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %21 = load i32, ptr %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %22 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc30, %for.end25
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %npasses, align 4
  %cmp27 = icmp slt i32 %23, %24
  br i1 %cmp27, label %for.body29, label %for.end32

for.body29:                                       ; preds = %for.cond26
  %25 = load ptr, ptr %fdata, align 8
  call void @fourn(ptr noundef %25, ptr noundef @main.nsize, i32 noundef 2, i32 noundef 1)
  %26 = load ptr, ptr %fdata, align 8
  call void @fourn(ptr noundef %26, ptr noundef @main.nsize, i32 noundef 2, i32 noundef -1)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body29
  %27 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %27, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond26, !llvm.loop !9

for.end32:                                        ; preds = %for.cond26
  store double 1.000000e+10, ptr %rmin, align 8
  store double -1.000000e+10, ptr %rmax, align 8
  store double 1.000000e+10, ptr %imin, align 8
  store double -1.000000e+10, ptr %imax, align 8
  store double 0.000000e+00, ptr %ar, align 8
  store double 0.000000e+00, ptr %ai, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc65, %for.end32
  %28 = load i32, ptr %i, align 4
  %conv34 = sext i32 %28 to i64
  %29 = load i64, ptr %fanum, align 8
  %cmp35 = icmp sle i64 %conv34, %29
  br i1 %cmp35, label %for.body37, label %for.end67

for.body37:                                       ; preds = %for.cond33
  %30 = load ptr, ptr %fdata, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %30, i64 %idxprom38
  %32 = load double, ptr %arrayidx39, align 8
  store double %32, ptr %r, align 8
  %33 = load ptr, ptr %fdata, align 8
  %34 = load i32, ptr %i, align 4
  %add40 = add nsw i32 %34, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds double, ptr %33, i64 %idxprom41
  %35 = load double, ptr %arrayidx42, align 8
  store double %35, ptr %ij, align 8
  %36 = load double, ptr %r, align 8
  %37 = load double, ptr %ar, align 8
  %add43 = fadd double %37, %36
  store double %add43, ptr %ar, align 8
  %38 = load double, ptr %ij, align 8
  %39 = load double, ptr %ai, align 8
  %add44 = fadd double %39, %38
  store double %add44, ptr %ai, align 8
  %40 = load double, ptr %r, align 8
  %41 = load double, ptr %rmin, align 8
  %cmp45 = fcmp ole double %40, %41
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body37
  %42 = load double, ptr %r, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body37
  %43 = load double, ptr %rmin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %42, %cond.true ], [ %43, %cond.false ]
  store double %cond, ptr %rmin, align 8
  %44 = load double, ptr %r, align 8
  %45 = load double, ptr %rmax, align 8
  %cmp47 = fcmp ogt double %44, %45
  br i1 %cmp47, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %cond.end
  %46 = load double, ptr %r, align 8
  br label %cond.end51

cond.false50:                                     ; preds = %cond.end
  %47 = load double, ptr %rmax, align 8
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true49
  %cond52 = phi double [ %46, %cond.true49 ], [ %47, %cond.false50 ]
  store double %cond52, ptr %rmax, align 8
  %48 = load double, ptr %ij, align 8
  %49 = load double, ptr %imin, align 8
  %cmp53 = fcmp ole double %48, %49
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end51
  %50 = load double, ptr %ij, align 8
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end51
  %51 = load double, ptr %imin, align 8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi double [ %50, %cond.true55 ], [ %51, %cond.false56 ]
  store double %cond58, ptr %imin, align 8
  %52 = load double, ptr %ij, align 8
  %53 = load double, ptr %imax, align 8
  %cmp59 = fcmp ogt double %52, %53
  br i1 %cmp59, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.end57
  %54 = load double, ptr %ij, align 8
  br label %cond.end63

cond.false62:                                     ; preds = %cond.end57
  %55 = load double, ptr %imax, align 8
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi double [ %54, %cond.true61 ], [ %55, %cond.false62 ]
  store double %cond64, ptr %imax, align 8
  br label %for.inc65

for.inc65:                                        ; preds = %cond.end63
  %56 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %56, 2
  store i32 %add66, ptr %i, align 4
  br label %for.cond33, !llvm.loop !10

for.end67:                                        ; preds = %for.cond33
  %57 = load double, ptr %rmin, align 8
  store double %57, ptr %mapbase, align 8
  %58 = load double, ptr %rmax, align 8
  %59 = load double, ptr %rmin, align 8
  %sub = fsub double %58, %59
  %div = fdiv double 2.550000e+02, %sub
  store double %div, ptr %mapscale, align 8
  store i32 0, ptr %m, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc101, %for.end67
  %60 = load i32, ptr %i, align 4
  %61 = load i32, ptr %faedge, align 4
  %cmp69 = icmp slt i32 %60, %61
  br i1 %cmp69, label %for.body71, label %for.end103

for.body71:                                       ; preds = %for.cond68
  store i32 0, ptr %j, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc98, %for.body71
  %62 = load i32, ptr %j, align 4
  %63 = load i32, ptr %faedge, align 4
  %cmp73 = icmp slt i32 %62, %63
  br i1 %cmp73, label %for.body75, label %for.end100

for.body75:                                       ; preds = %for.cond72
  %64 = load ptr, ptr %fdata, align 8
  %65 = load i32, ptr %faedge, align 4
  %66 = load i32, ptr %i, align 4
  %mul76 = mul nsw i32 %65, %66
  %67 = load i32, ptr %j, align 4
  %add77 = add nsw i32 %mul76, %67
  %mul78 = mul nsw i32 %add77, 2
  %add79 = add nsw i32 1, %mul78
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %64, i64 %idxprom80
  %68 = load double, ptr %arrayidx81, align 8
  %69 = load double, ptr %mapbase, align 8
  %sub82 = fsub double %68, %69
  %70 = load double, ptr %mapscale, align 8
  %mul83 = fmul double %sub82, %70
  %conv84 = fptosi double %mul83 to i32
  store i32 %conv84, ptr %k, align 4
  %71 = load i32, ptr %i, align 4
  %and85 = and i32 %71, 15
  %cmp86 = icmp eq i32 %and85, 8
  br i1 %cmp86, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body75
  %72 = load i32, ptr %j, align 4
  %and88 = and i32 %72, 15
  %cmp89 = icmp eq i32 %and88, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body75
  %73 = phi i1 [ true, %for.body75 ], [ %cmp89, %lor.rhs ]
  %74 = zext i1 %73 to i64
  %cond91 = select i1 %73, i32 255, i32 0
  store i32 %cond91, ptr %l, align 4
  %75 = load i32, ptr %k, align 4
  %76 = load i32, ptr %l, align 4
  %cmp92 = icmp ne i32 %75, %76
  br i1 %cmp92, label %if.then94, label %if.end97

if.then94:                                        ; preds = %lor.end
  %77 = load i32, ptr %m, align 4
  %inc95 = add nsw i32 %77, 1
  store i32 %inc95, ptr %m, align 4
  %78 = load ptr, ptr @__stderrp, align 8
  %79 = load i32, ptr %i, align 4
  %80 = load i32, ptr %j, align 4
  %81 = load i32, ptr %l, align 4
  %82 = load i32, ptr %k, align 4
  %call96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef @.str.1, i32 noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %lor.end
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %83 = load i32, ptr %j, align 4
  %inc99 = add nsw i32 %83, 1
  store i32 %inc99, ptr %j, align 4
  br label %for.cond72, !llvm.loop !11

for.end100:                                       ; preds = %for.cond72
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %84 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %84, 1
  store i32 %inc102, ptr %i, align 4
  br label %for.cond68, !llvm.loop !12

for.end103:                                       ; preds = %for.cond68
  %85 = load i32, ptr %m, align 4
  %cmp104 = icmp eq i32 %85, 0
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %for.end103
  %86 = load ptr, ptr @__stderrp, align 8
  %87 = load i32, ptr %npasses, align 4
  %call107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.2, i32 noundef %87) #6
  br label %if.end109

if.else:                                          ; preds = %for.end103
  %88 = load ptr, ptr @__stderrp, align 8
  %89 = load i32, ptr %npasses, align 4
  %90 = load i32, ptr %m, align 4
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.3, i32 noundef %89, i32 noundef %90) #6
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then106
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @fourn(ptr noundef %data, ptr noundef %nn, i32 noundef %ndim, i32 noundef %isign) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %nn.addr = alloca ptr, align 8
  %ndim.addr = alloca i32, align 4
  %isign.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i2rev = alloca i32, align 4
  %i3rev = alloca i32, align 4
  %ip1 = alloca i32, align 4
  %ip2 = alloca i32, align 4
  %ip3 = alloca i32, align 4
  %ifp1 = alloca i32, align 4
  %ifp2 = alloca i32, align 4
  %ibit = alloca i32, align 4
  %idim = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %n = alloca i32, align 4
  %nprev = alloca i32, align 4
  %nrem = alloca i32, align 4
  %ntot = alloca i32, align 4
  %tempi = alloca double, align 8
  %tempr = alloca double, align 8
  %theta = alloca double, align 8
  %wi = alloca double, align 8
  %wpi = alloca double, align 8
  %wpr = alloca double, align 8
  %wr = alloca double, align 8
  %wtemp = alloca double, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %nn, ptr %nn.addr, align 8
  store i32 %ndim, ptr %ndim.addr, align 4
  store i32 %isign, ptr %isign.addr, align 4
  store i32 1, ptr %ntot, align 4
  store i32 1, ptr %idim, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idim, align 4
  %1 = load i32, ptr %ndim.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %nn.addr, align 8
  %3 = load i32, ptr %idim, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %ntot, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, ptr %ntot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %idim, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %idim, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %nprev, align 4
  %7 = load i32, ptr %ndim.addr, align 4
  store i32 %7, ptr %idim, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc132, %for.end
  %8 = load i32, ptr %idim, align 4
  %cmp2 = icmp sge i32 %8, 1
  br i1 %cmp2, label %for.body3, label %for.end133

for.body3:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %nn.addr, align 8
  %10 = load i32, ptr %idim, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %n, align 4
  %12 = load i32, ptr %ntot, align 4
  %13 = load i32, ptr %n, align 4
  %14 = load i32, ptr %nprev, align 4
  %mul6 = mul nsw i32 %13, %14
  %div = sdiv i32 %12, %mul6
  store i32 %div, ptr %nrem, align 4
  %15 = load i32, ptr %nprev, align 4
  %shl = shl i32 %15, 1
  store i32 %shl, ptr %ip1, align 4
  %16 = load i32, ptr %ip1, align 4
  %17 = load i32, ptr %n, align 4
  %mul7 = mul nsw i32 %16, %17
  store i32 %mul7, ptr %ip2, align 4
  %18 = load i32, ptr %ip2, align 4
  %19 = load i32, ptr %nrem, align 4
  %mul8 = mul nsw i32 %18, %19
  store i32 %mul8, ptr %ip3, align 4
  store i32 1, ptr %i2rev, align 4
  store i32 1, ptr %i2, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc52, %for.body3
  %20 = load i32, ptr %i2, align 4
  %21 = load i32, ptr %ip2, align 4
  %cmp10 = icmp sle i32 %20, %21
  br i1 %cmp10, label %for.body11, label %for.end54

for.body11:                                       ; preds = %for.cond9
  %22 = load i32, ptr %i2, align 4
  %23 = load i32, ptr %i2rev, align 4
  %cmp12 = icmp slt i32 %22, %23
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  %24 = load i32, ptr %i2, align 4
  store i32 %24, ptr %i1, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc44, %if.then
  %25 = load i32, ptr %i1, align 4
  %26 = load i32, ptr %i2, align 4
  %27 = load i32, ptr %ip1, align 4
  %add = add nsw i32 %26, %27
  %sub = sub nsw i32 %add, 2
  %cmp14 = icmp sle i32 %25, %sub
  br i1 %cmp14, label %for.body15, label %for.end46

for.body15:                                       ; preds = %for.cond13
  %28 = load i32, ptr %i1, align 4
  store i32 %28, ptr %i3, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc41, %for.body15
  %29 = load i32, ptr %i3, align 4
  %30 = load i32, ptr %ip3, align 4
  %cmp17 = icmp sle i32 %29, %30
  br i1 %cmp17, label %for.body18, label %for.end43

for.body18:                                       ; preds = %for.cond16
  %31 = load i32, ptr %i2rev, align 4
  %32 = load i32, ptr %i3, align 4
  %add19 = add nsw i32 %31, %32
  %33 = load i32, ptr %i2, align 4
  %sub20 = sub nsw i32 %add19, %33
  store i32 %sub20, ptr %i3rev, align 4
  %34 = load ptr, ptr %data.addr, align 8
  %35 = load i32, ptr %i3, align 4
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds double, ptr %34, i64 %idxprom21
  %36 = load double, ptr %arrayidx22, align 8
  store double %36, ptr %tempr, align 8
  %37 = load ptr, ptr %data.addr, align 8
  %38 = load i32, ptr %i3rev, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %37, i64 %idxprom23
  %39 = load double, ptr %arrayidx24, align 8
  %40 = load ptr, ptr %data.addr, align 8
  %41 = load i32, ptr %i3, align 4
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %40, i64 %idxprom25
  store double %39, ptr %arrayidx26, align 8
  %42 = load double, ptr %tempr, align 8
  %43 = load ptr, ptr %data.addr, align 8
  %44 = load i32, ptr %i3rev, align 4
  %idxprom27 = sext i32 %44 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %43, i64 %idxprom27
  store double %42, ptr %arrayidx28, align 8
  %45 = load ptr, ptr %data.addr, align 8
  %46 = load i32, ptr %i3, align 4
  %add29 = add nsw i32 %46, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %45, i64 %idxprom30
  %47 = load double, ptr %arrayidx31, align 8
  store double %47, ptr %tempr, align 8
  %48 = load ptr, ptr %data.addr, align 8
  %49 = load i32, ptr %i3rev, align 4
  %add32 = add nsw i32 %49, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %48, i64 %idxprom33
  %50 = load double, ptr %arrayidx34, align 8
  %51 = load ptr, ptr %data.addr, align 8
  %52 = load i32, ptr %i3, align 4
  %add35 = add nsw i32 %52, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %51, i64 %idxprom36
  store double %50, ptr %arrayidx37, align 8
  %53 = load double, ptr %tempr, align 8
  %54 = load ptr, ptr %data.addr, align 8
  %55 = load i32, ptr %i3rev, align 4
  %add38 = add nsw i32 %55, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, ptr %54, i64 %idxprom39
  store double %53, ptr %arrayidx40, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body18
  %56 = load i32, ptr %ip2, align 4
  %57 = load i32, ptr %i3, align 4
  %add42 = add nsw i32 %57, %56
  store i32 %add42, ptr %i3, align 4
  br label %for.cond16, !llvm.loop !14

for.end43:                                        ; preds = %for.cond16
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %58 = load i32, ptr %i1, align 4
  %add45 = add nsw i32 %58, 2
  store i32 %add45, ptr %i1, align 4
  br label %for.cond13, !llvm.loop !15

for.end46:                                        ; preds = %for.cond13
  br label %if.end

if.end:                                           ; preds = %for.end46, %for.body11
  %59 = load i32, ptr %ip2, align 4
  %shr = ashr i32 %59, 1
  store i32 %shr, ptr %ibit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %60 = load i32, ptr %ibit, align 4
  %61 = load i32, ptr %ip1, align 4
  %cmp47 = icmp sge i32 %60, %61
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %62 = load i32, ptr %i2rev, align 4
  %63 = load i32, ptr %ibit, align 4
  %cmp48 = icmp sgt i32 %62, %63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %64 = phi i1 [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = load i32, ptr %ibit, align 4
  %66 = load i32, ptr %i2rev, align 4
  %sub49 = sub nsw i32 %66, %65
  store i32 %sub49, ptr %i2rev, align 4
  %67 = load i32, ptr %ibit, align 4
  %shr50 = ashr i32 %67, 1
  store i32 %shr50, ptr %ibit, align 4
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end
  %68 = load i32, ptr %ibit, align 4
  %69 = load i32, ptr %i2rev, align 4
  %add51 = add nsw i32 %69, %68
  store i32 %add51, ptr %i2rev, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %while.end
  %70 = load i32, ptr %ip1, align 4
  %71 = load i32, ptr %i2, align 4
  %add53 = add nsw i32 %71, %70
  store i32 %add53, ptr %i2, align 4
  br label %for.cond9, !llvm.loop !17

for.end54:                                        ; preds = %for.cond9
  %72 = load i32, ptr %ip1, align 4
  store i32 %72, ptr %ifp1, align 4
  br label %while.cond55

while.cond55:                                     ; preds = %for.end129, %for.end54
  %73 = load i32, ptr %ifp1, align 4
  %74 = load i32, ptr %ip2, align 4
  %cmp56 = icmp slt i32 %73, %74
  br i1 %cmp56, label %while.body57, label %while.end130

while.body57:                                     ; preds = %while.cond55
  %75 = load i32, ptr %ifp1, align 4
  %shl58 = shl i32 %75, 1
  store i32 %shl58, ptr %ifp2, align 4
  %76 = load i32, ptr %isign.addr, align 4
  %conv = sitofp i32 %76 to double
  %mul59 = fmul double %conv, 0x401921FB54442D1C
  %77 = load i32, ptr %ifp2, align 4
  %78 = load i32, ptr %ip1, align 4
  %div60 = sdiv i32 %77, %78
  %conv61 = sitofp i32 %div60 to double
  %div62 = fdiv double %mul59, %conv61
  store double %div62, ptr %theta, align 8
  %79 = load double, ptr %theta, align 8
  %mul63 = fmul double 5.000000e-01, %79
  %80 = call double @llvm.sin.f64(double %mul63)
  store double %80, ptr %wtemp, align 8
  %81 = load double, ptr %wtemp, align 8
  %mul64 = fmul double -2.000000e+00, %81
  %82 = load double, ptr %wtemp, align 8
  %mul65 = fmul double %mul64, %82
  store double %mul65, ptr %wpr, align 8
  %83 = load double, ptr %theta, align 8
  %84 = call double @llvm.sin.f64(double %83)
  store double %84, ptr %wpi, align 8
  store double 1.000000e+00, ptr %wr, align 8
  store double 0.000000e+00, ptr %wi, align 8
  store i32 1, ptr %i3, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc127, %while.body57
  %85 = load i32, ptr %i3, align 4
  %86 = load i32, ptr %ifp1, align 4
  %cmp67 = icmp sle i32 %85, %86
  br i1 %cmp67, label %for.body69, label %for.end129

for.body69:                                       ; preds = %for.cond66
  %87 = load i32, ptr %i3, align 4
  store i32 %87, ptr %i1, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc117, %for.body69
  %88 = load i32, ptr %i1, align 4
  %89 = load i32, ptr %i3, align 4
  %90 = load i32, ptr %ip1, align 4
  %add71 = add nsw i32 %89, %90
  %sub72 = sub nsw i32 %add71, 2
  %cmp73 = icmp sle i32 %88, %sub72
  br i1 %cmp73, label %for.body75, label %for.end119

for.body75:                                       ; preds = %for.cond70
  %91 = load i32, ptr %i1, align 4
  store i32 %91, ptr %i2, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc114, %for.body75
  %92 = load i32, ptr %i2, align 4
  %93 = load i32, ptr %ip3, align 4
  %cmp77 = icmp sle i32 %92, %93
  br i1 %cmp77, label %for.body79, label %for.end116

for.body79:                                       ; preds = %for.cond76
  %94 = load i32, ptr %i2, align 4
  store i32 %94, ptr %k1, align 4
  %95 = load i32, ptr %k1, align 4
  %96 = load i32, ptr %ifp1, align 4
  %add80 = add nsw i32 %95, %96
  store i32 %add80, ptr %k2, align 4
  %97 = load double, ptr %wr, align 8
  %98 = load ptr, ptr %data.addr, align 8
  %99 = load i32, ptr %k2, align 4
  %idxprom81 = sext i32 %99 to i64
  %arrayidx82 = getelementptr inbounds double, ptr %98, i64 %idxprom81
  %100 = load double, ptr %arrayidx82, align 8
  %101 = load double, ptr %wi, align 8
  %102 = load ptr, ptr %data.addr, align 8
  %103 = load i32, ptr %k2, align 4
  %add84 = add nsw i32 %103, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds double, ptr %102, i64 %idxprom85
  %104 = load double, ptr %arrayidx86, align 8
  %mul87 = fmul double %101, %104
  %neg = fneg double %mul87
  %105 = call double @llvm.fmuladd.f64(double %97, double %100, double %neg)
  store double %105, ptr %tempr, align 8
  %106 = load double, ptr %wr, align 8
  %107 = load ptr, ptr %data.addr, align 8
  %108 = load i32, ptr %k2, align 4
  %add88 = add nsw i32 %108, 1
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds double, ptr %107, i64 %idxprom89
  %109 = load double, ptr %arrayidx90, align 8
  %110 = load double, ptr %wi, align 8
  %111 = load ptr, ptr %data.addr, align 8
  %112 = load i32, ptr %k2, align 4
  %idxprom92 = sext i32 %112 to i64
  %arrayidx93 = getelementptr inbounds double, ptr %111, i64 %idxprom92
  %113 = load double, ptr %arrayidx93, align 8
  %mul94 = fmul double %110, %113
  %114 = call double @llvm.fmuladd.f64(double %106, double %109, double %mul94)
  store double %114, ptr %tempi, align 8
  %115 = load ptr, ptr %data.addr, align 8
  %116 = load i32, ptr %k1, align 4
  %idxprom95 = sext i32 %116 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %115, i64 %idxprom95
  %117 = load double, ptr %arrayidx96, align 8
  %118 = load double, ptr %tempr, align 8
  %sub97 = fsub double %117, %118
  %119 = load ptr, ptr %data.addr, align 8
  %120 = load i32, ptr %k2, align 4
  %idxprom98 = sext i32 %120 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %119, i64 %idxprom98
  store double %sub97, ptr %arrayidx99, align 8
  %121 = load ptr, ptr %data.addr, align 8
  %122 = load i32, ptr %k1, align 4
  %add100 = add nsw i32 %122, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds double, ptr %121, i64 %idxprom101
  %123 = load double, ptr %arrayidx102, align 8
  %124 = load double, ptr %tempi, align 8
  %sub103 = fsub double %123, %124
  %125 = load ptr, ptr %data.addr, align 8
  %126 = load i32, ptr %k2, align 4
  %add104 = add nsw i32 %126, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, ptr %125, i64 %idxprom105
  store double %sub103, ptr %arrayidx106, align 8
  %127 = load double, ptr %tempr, align 8
  %128 = load ptr, ptr %data.addr, align 8
  %129 = load i32, ptr %k1, align 4
  %idxprom107 = sext i32 %129 to i64
  %arrayidx108 = getelementptr inbounds double, ptr %128, i64 %idxprom107
  %130 = load double, ptr %arrayidx108, align 8
  %add109 = fadd double %130, %127
  store double %add109, ptr %arrayidx108, align 8
  %131 = load double, ptr %tempi, align 8
  %132 = load ptr, ptr %data.addr, align 8
  %133 = load i32, ptr %k1, align 4
  %add110 = add nsw i32 %133, 1
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds double, ptr %132, i64 %idxprom111
  %134 = load double, ptr %arrayidx112, align 8
  %add113 = fadd double %134, %131
  store double %add113, ptr %arrayidx112, align 8
  br label %for.inc114

for.inc114:                                       ; preds = %for.body79
  %135 = load i32, ptr %ifp2, align 4
  %136 = load i32, ptr %i2, align 4
  %add115 = add nsw i32 %136, %135
  store i32 %add115, ptr %i2, align 4
  br label %for.cond76, !llvm.loop !18

for.end116:                                       ; preds = %for.cond76
  br label %for.inc117

for.inc117:                                       ; preds = %for.end116
  %137 = load i32, ptr %i1, align 4
  %add118 = add nsw i32 %137, 2
  store i32 %add118, ptr %i1, align 4
  br label %for.cond70, !llvm.loop !19

for.end119:                                       ; preds = %for.cond70
  %138 = load double, ptr %wr, align 8
  store double %138, ptr %wtemp, align 8
  %139 = load double, ptr %wpr, align 8
  %140 = load double, ptr %wi, align 8
  %141 = load double, ptr %wpi, align 8
  %mul121 = fmul double %140, %141
  %neg122 = fneg double %mul121
  %142 = call double @llvm.fmuladd.f64(double %138, double %139, double %neg122)
  %143 = load double, ptr %wr, align 8
  %add123 = fadd double %142, %143
  store double %add123, ptr %wr, align 8
  %144 = load double, ptr %wi, align 8
  %145 = load double, ptr %wpr, align 8
  %146 = load double, ptr %wtemp, align 8
  %147 = load double, ptr %wpi, align 8
  %mul125 = fmul double %146, %147
  %148 = call double @llvm.fmuladd.f64(double %144, double %145, double %mul125)
  %149 = load double, ptr %wi, align 8
  %add126 = fadd double %148, %149
  store double %add126, ptr %wi, align 8
  br label %for.inc127

for.inc127:                                       ; preds = %for.end119
  %150 = load i32, ptr %ip1, align 4
  %151 = load i32, ptr %i3, align 4
  %add128 = add nsw i32 %151, %150
  store i32 %add128, ptr %i3, align 4
  br label %for.cond66, !llvm.loop !20

for.end129:                                       ; preds = %for.cond66
  %152 = load i32, ptr %ifp2, align 4
  store i32 %152, ptr %ifp1, align 4
  br label %while.cond55, !llvm.loop !21

while.end130:                                     ; preds = %while.cond55
  %153 = load i32, ptr %n, align 4
  %154 = load i32, ptr %nprev, align 4
  %mul131 = mul nsw i32 %154, %153
  store i32 %mul131, ptr %nprev, align 4
  br label %for.inc132

for.inc132:                                       ; preds = %while.end130
  %155 = load i32, ptr %idim, align 4
  %dec = add nsw i32 %155, -1
  store i32 %dec, ptr %idim, align 4
  br label %for.cond1, !llvm.loop !22

for.end133:                                       ; preds = %for.cond1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
