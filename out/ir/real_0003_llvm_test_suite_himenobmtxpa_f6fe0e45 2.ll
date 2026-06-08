; ModuleID = 'SingleSource/Benchmarks/Misc/himenobmtxpa.c'
source_filename = "SingleSource/Benchmarks/Misc/himenobmtxpa.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%struct.Mat = type { ptr, i32, i32, i32, i32 }
%struct.timeval = type { i64, i32 }

@omega = global float 0x3FE99999A0000000, align 4
@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@p = global %struct.Mat zeroinitializer, align 8
@bnd = global %struct.Mat zeroinitializer, align 8
@wrk1 = global %struct.Mat zeroinitializer, align 8
@wrk2 = global %struct.Mat zeroinitializer, align 8
@a = global %struct.Mat zeroinitializer, align 8
@b = global %struct.Mat zeroinitializer, align 8
@c = global %struct.Mat zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"XS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"xl\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Invalid input character !!\0A\00", align 1
@second.base_sec = internal global i32 0, align 4
@second.base_usec = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nn = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmax = alloca i32, align 4
  %mimax = alloca i32, align 4
  %mjmax = alloca i32, align 4
  %mkmax = alloca i32, align 4
  %msize = alloca [3 x i32], align 4
  %gosa = alloca float, align 4
  %cpu0 = alloca double, align 8
  %cpu1 = alloca double, align 8
  %cpu = alloca double, align 8
  %flop = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], ptr %msize, i64 0, i64 0
  store i32 64, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], ptr %msize, i64 0, i64 1
  store i32 64, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], ptr %msize, i64 0, i64 2
  store i32 128, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], ptr %msize, i64 0, i64 0
  %0 = load i32, ptr %arrayidx3, align 4
  store i32 %0, ptr %mimax, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], ptr %msize, i64 0, i64 1
  %1 = load i32, ptr %arrayidx4, align 4
  store i32 %1, ptr %mjmax, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %msize, i64 0, i64 2
  %2 = load i32, ptr %arrayidx5, align 4
  store i32 %2, ptr %mkmax, align 4
  %3 = load i32, ptr %mimax, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %imax, align 4
  %4 = load i32, ptr %mjmax, align 4
  %sub6 = sub nsw i32 %4, 1
  store i32 %sub6, ptr %jmax, align 4
  %5 = load i32, ptr %mkmax, align 4
  %sub7 = sub nsw i32 %5, 1
  store i32 %sub7, ptr %kmax, align 4
  %6 = load i32, ptr %mimax, align 4
  %7 = load i32, ptr %mjmax, align 4
  %8 = load i32, ptr %mkmax, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %9 = load i32, ptr %imax, align 4
  %10 = load i32, ptr %jmax, align 4
  %11 = load i32, ptr %kmax, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  %12 = load i32, ptr %mimax, align 4
  %13 = load i32, ptr %mjmax, align 4
  %14 = load i32, ptr %mkmax, align 4
  %call9 = call i32 @newMat(ptr noundef @p, i32 noundef 1, i32 noundef %12, i32 noundef %13, i32 noundef %14)
  %15 = load i32, ptr %mimax, align 4
  %16 = load i32, ptr %mjmax, align 4
  %17 = load i32, ptr %mkmax, align 4
  %call10 = call i32 @newMat(ptr noundef @bnd, i32 noundef 1, i32 noundef %15, i32 noundef %16, i32 noundef %17)
  %18 = load i32, ptr %mimax, align 4
  %19 = load i32, ptr %mjmax, align 4
  %20 = load i32, ptr %mkmax, align 4
  %call11 = call i32 @newMat(ptr noundef @wrk1, i32 noundef 1, i32 noundef %18, i32 noundef %19, i32 noundef %20)
  %21 = load i32, ptr %mimax, align 4
  %22 = load i32, ptr %mjmax, align 4
  %23 = load i32, ptr %mkmax, align 4
  %call12 = call i32 @newMat(ptr noundef @wrk2, i32 noundef 1, i32 noundef %21, i32 noundef %22, i32 noundef %23)
  %24 = load i32, ptr %mimax, align 4
  %25 = load i32, ptr %mjmax, align 4
  %26 = load i32, ptr %mkmax, align 4
  %call13 = call i32 @newMat(ptr noundef @a, i32 noundef 4, i32 noundef %24, i32 noundef %25, i32 noundef %26)
  %27 = load i32, ptr %mimax, align 4
  %28 = load i32, ptr %mjmax, align 4
  %29 = load i32, ptr %mkmax, align 4
  %call14 = call i32 @newMat(ptr noundef @b, i32 noundef 3, i32 noundef %27, i32 noundef %28, i32 noundef %29)
  %30 = load i32, ptr %mimax, align 4
  %31 = load i32, ptr %mjmax, align 4
  %32 = load i32, ptr %mkmax, align 4
  %call15 = call i32 @newMat(ptr noundef @c, i32 noundef 3, i32 noundef %30, i32 noundef %31, i32 noundef %32)
  call void @mat_set_init(ptr noundef @p)
  call void @mat_set(ptr noundef @bnd, i32 noundef 0, float noundef 1.000000e+00)
  call void @mat_set(ptr noundef @wrk1, i32 noundef 0, float noundef 0.000000e+00)
  call void @mat_set(ptr noundef @wrk2, i32 noundef 0, float noundef 0.000000e+00)
  call void @mat_set(ptr noundef @a, i32 noundef 0, float noundef 1.000000e+00)
  call void @mat_set(ptr noundef @a, i32 noundef 1, float noundef 1.000000e+00)
  call void @mat_set(ptr noundef @a, i32 noundef 2, float noundef 1.000000e+00)
  call void @mat_set(ptr noundef @a, i32 noundef 3, float noundef 0x3FC5555560000000)
  call void @mat_set(ptr noundef @b, i32 noundef 0, float noundef 0.000000e+00)
  call void @mat_set(ptr noundef @b, i32 noundef 1, float noundef 0.000000e+00)
  call void @mat_set(ptr noundef @b, i32 noundef 2, float noundef 0.000000e+00)
  call void @mat_set(ptr noundef @c, i32 noundef 0, float noundef 1.000000e+00)
  call void @mat_set(ptr noundef @c, i32 noundef 1, float noundef 1.000000e+00)
  call void @mat_set(ptr noundef @c, i32 noundef 2, float noundef 1.000000e+00)
  store i32 64, ptr %nn, align 4
  %33 = load i32, ptr %nn, align 4
  %call16 = call float @jacobi(i32 noundef %33, ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @p, ptr noundef @bnd, ptr noundef @wrk1, ptr noundef @wrk2)
  store float %call16, ptr %gosa, align 4
  %34 = load i32, ptr %nn, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %34)
  %35 = load float, ptr %gosa, align 4
  %conv = fpext float %35 to double
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv)
  call void @clearMat(ptr noundef @p)
  call void @clearMat(ptr noundef @bnd)
  call void @clearMat(ptr noundef @wrk1)
  call void @clearMat(ptr noundef @wrk2)
  call void @clearMat(ptr noundef @a)
  call void @clearMat(ptr noundef @b)
  call void @clearMat(ptr noundef @c)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @newMat(ptr noundef %Mat, i32 noundef %mnums, i32 noundef %mrows, i32 noundef %mcols, i32 noundef %mdeps) #0 {
entry:
  %Mat.addr = alloca ptr, align 8
  %mnums.addr = alloca i32, align 4
  %mrows.addr = alloca i32, align 4
  %mcols.addr = alloca i32, align 4
  %mdeps.addr = alloca i32, align 4
  store ptr %Mat, ptr %Mat.addr, align 8
  store i32 %mnums, ptr %mnums.addr, align 4
  store i32 %mrows, ptr %mrows.addr, align 4
  store i32 %mcols, ptr %mcols.addr, align 4
  store i32 %mdeps, ptr %mdeps.addr, align 4
  %0 = load i32, ptr %mnums.addr, align 4
  %1 = load ptr, ptr %Mat.addr, align 8
  %mnums1 = getelementptr inbounds nuw %struct.Mat, ptr %1, i32 0, i32 1
  store i32 %0, ptr %mnums1, align 8
  %2 = load i32, ptr %mrows.addr, align 4
  %3 = load ptr, ptr %Mat.addr, align 8
  %mrows2 = getelementptr inbounds nuw %struct.Mat, ptr %3, i32 0, i32 2
  store i32 %2, ptr %mrows2, align 4
  %4 = load i32, ptr %mcols.addr, align 4
  %5 = load ptr, ptr %Mat.addr, align 8
  %mcols3 = getelementptr inbounds nuw %struct.Mat, ptr %5, i32 0, i32 3
  store i32 %4, ptr %mcols3, align 8
  %6 = load i32, ptr %mdeps.addr, align 4
  %7 = load ptr, ptr %Mat.addr, align 8
  %mdeps4 = getelementptr inbounds nuw %struct.Mat, ptr %7, i32 0, i32 4
  store i32 %6, ptr %mdeps4, align 4
  %8 = load ptr, ptr %Mat.addr, align 8
  %m = getelementptr inbounds nuw %struct.Mat, ptr %8, i32 0, i32 0
  store ptr null, ptr %m, align 8
  %9 = load i32, ptr %mnums.addr, align 4
  %10 = load i32, ptr %mrows.addr, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, ptr %mcols.addr, align 4
  %mul5 = mul nsw i32 %mul, %11
  %12 = load i32, ptr %mdeps.addr, align 4
  %mul6 = mul nsw i32 %mul5, %12
  %conv = sext i32 %mul6 to i64
  %mul7 = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul7) #6
  %13 = load ptr, ptr %Mat.addr, align 8
  %m8 = getelementptr inbounds nuw %struct.Mat, ptr %13, i32 0, i32 0
  store ptr %call, ptr %m8, align 8
  %14 = load ptr, ptr %Mat.addr, align 8
  %m9 = getelementptr inbounds nuw %struct.Mat, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %m9, align 8
  %cmp = icmp ne ptr %15, null
  %16 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mat_set_init(ptr noundef %Mat) #0 {
entry:
  %Mat.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tt = alloca float, align 4
  store ptr %Mat, ptr %Mat.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %Mat.addr, align 8
  %mrows = getelementptr inbounds nuw %struct.Mat, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %mrows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load ptr, ptr %Mat.addr, align 8
  %mcols = getelementptr inbounds nuw %struct.Mat, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %mcols, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4
  %7 = load ptr, ptr %Mat.addr, align 8
  %mdeps = getelementptr inbounds nuw %struct.Mat, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %mdeps, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %9, %10
  %conv = sitofp i32 %mul to float
  %11 = load ptr, ptr %Mat.addr, align 8
  %mrows7 = getelementptr inbounds nuw %struct.Mat, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %mrows7, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load ptr, ptr %Mat.addr, align 8
  %mrows8 = getelementptr inbounds nuw %struct.Mat, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %mrows8, align 4
  %sub9 = sub nsw i32 %14, 1
  %mul10 = mul nsw i32 %sub, %sub9
  %conv11 = sitofp i32 %mul10 to float
  %div = fdiv float %conv, %conv11
  %15 = load ptr, ptr %Mat.addr, align 8
  %m = getelementptr inbounds nuw %struct.Mat, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %m, align 8
  %17 = load ptr, ptr %Mat.addr, align 8
  %mrows12 = getelementptr inbounds nuw %struct.Mat, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %mrows12, align 4
  %mul13 = mul nsw i32 0, %18
  %19 = load ptr, ptr %Mat.addr, align 8
  %mcols14 = getelementptr inbounds nuw %struct.Mat, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %mcols14, align 8
  %mul15 = mul nsw i32 %mul13, %20
  %21 = load ptr, ptr %Mat.addr, align 8
  %mdeps16 = getelementptr inbounds nuw %struct.Mat, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %mdeps16, align 4
  %mul17 = mul nsw i32 %mul15, %22
  %23 = load i32, ptr %i, align 4
  %24 = load ptr, ptr %Mat.addr, align 8
  %mcols18 = getelementptr inbounds nuw %struct.Mat, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %mcols18, align 8
  %mul19 = mul nsw i32 %23, %25
  %26 = load ptr, ptr %Mat.addr, align 8
  %mdeps20 = getelementptr inbounds nuw %struct.Mat, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %mdeps20, align 4
  %mul21 = mul nsw i32 %mul19, %27
  %add = add nsw i32 %mul17, %mul21
  %28 = load i32, ptr %j, align 4
  %29 = load ptr, ptr %Mat.addr, align 8
  %mdeps22 = getelementptr inbounds nuw %struct.Mat, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %mdeps22, align 4
  %mul23 = mul nsw i32 %28, %30
  %add24 = add nsw i32 %add, %mul23
  %31 = load i32, ptr %k, align 4
  %add25 = add nsw i32 %add24, %31
  %idxprom = sext i32 %add25 to i64
  %arrayidx = getelementptr inbounds float, ptr %16, i64 %idxprom
  store float %div, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %32 = load i32, ptr %k, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %33 = load i32, ptr %j, align 4
  %inc27 = add nsw i32 %33, 1
  store i32 %inc27, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end28:                                        ; preds = %for.cond1
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %34 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mat_set(ptr noundef %Mat, i32 noundef %l, float noundef %val) #0 {
entry:
  %Mat.addr = alloca ptr, align 8
  %l.addr = alloca i32, align 4
  %val.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %Mat, ptr %Mat.addr, align 8
  store i32 %l, ptr %l.addr, align 4
  store float %val, ptr %val.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %Mat.addr, align 8
  %mrows = getelementptr inbounds nuw %struct.Mat, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %mrows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load ptr, ptr %Mat.addr, align 8
  %mcols = getelementptr inbounds nuw %struct.Mat, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %mcols, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4
  %7 = load ptr, ptr %Mat.addr, align 8
  %mdeps = getelementptr inbounds nuw %struct.Mat, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %mdeps, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load float, ptr %val.addr, align 4
  %10 = load ptr, ptr %Mat.addr, align 8
  %m = getelementptr inbounds nuw %struct.Mat, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %m, align 8
  %12 = load i32, ptr %l.addr, align 4
  %13 = load ptr, ptr %Mat.addr, align 8
  %mrows7 = getelementptr inbounds nuw %struct.Mat, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %mrows7, align 4
  %mul = mul nsw i32 %12, %14
  %15 = load ptr, ptr %Mat.addr, align 8
  %mcols8 = getelementptr inbounds nuw %struct.Mat, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %mcols8, align 8
  %mul9 = mul nsw i32 %mul, %16
  %17 = load ptr, ptr %Mat.addr, align 8
  %mdeps10 = getelementptr inbounds nuw %struct.Mat, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %mdeps10, align 4
  %mul11 = mul nsw i32 %mul9, %18
  %19 = load i32, ptr %i, align 4
  %20 = load ptr, ptr %Mat.addr, align 8
  %mcols12 = getelementptr inbounds nuw %struct.Mat, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %mcols12, align 8
  %mul13 = mul nsw i32 %19, %21
  %22 = load ptr, ptr %Mat.addr, align 8
  %mdeps14 = getelementptr inbounds nuw %struct.Mat, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %mdeps14, align 4
  %mul15 = mul nsw i32 %mul13, %23
  %add = add nsw i32 %mul11, %mul15
  %24 = load i32, ptr %j, align 4
  %25 = load ptr, ptr %Mat.addr, align 8
  %mdeps16 = getelementptr inbounds nuw %struct.Mat, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %mdeps16, align 4
  %mul17 = mul nsw i32 %24, %26
  %add18 = add nsw i32 %add, %mul17
  %27 = load i32, ptr %k, align 4
  %add19 = add nsw i32 %add18, %27
  %idxprom = sext i32 %add19 to i64
  %arrayidx = getelementptr inbounds float, ptr %11, i64 %idxprom
  store float %9, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %28 = load i32, ptr %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !10

for.end:                                          ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %29 = load i32, ptr %j, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, ptr %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end22:                                        ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %30 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @jacobi(i32 noundef %nn, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %p, ptr noundef %bnd, ptr noundef %wrk1, ptr noundef %wrk2) #0 {
entry:
  %nn.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %bnd.addr = alloca ptr, align 8
  %wrk1.addr = alloca ptr, align 8
  %wrk2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmax = alloca i32, align 4
  %gosa = alloca float, align 4
  %s0 = alloca float, align 4
  %ss = alloca float, align 4
  store i32 %nn, ptr %nn.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %bnd, ptr %bnd.addr, align 8
  store ptr %wrk1, ptr %wrk1.addr, align 8
  store ptr %wrk2, ptr %wrk2.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %mrows = getelementptr inbounds nuw %struct.Mat, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %mrows, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %imax, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %mcols = getelementptr inbounds nuw %struct.Mat, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %mcols, align 8
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, ptr %jmax, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %mdeps = getelementptr inbounds nuw %struct.Mat, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %mdeps, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, ptr %kmax, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc714, %entry
  %6 = load i32, ptr %n, align 4
  %7 = load i32, ptr %nn.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end716

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %gosa, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc657, %for.body
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %imax, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end659

for.body5:                                        ; preds = %for.cond3
  store i32 1, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc654, %for.body5
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %jmax, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end656

for.body8:                                        ; preds = %for.cond6
  store i32 1, ptr %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %12 = load i32, ptr %k, align 4
  %13 = load i32, ptr %kmax, align 4
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %14 = load ptr, ptr %a.addr, align 8
  %m = getelementptr inbounds nuw %struct.Mat, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %m, align 8
  %16 = load ptr, ptr %a.addr, align 8
  %mrows12 = getelementptr inbounds nuw %struct.Mat, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %mrows12, align 4
  %mul = mul nsw i32 0, %17
  %18 = load ptr, ptr %a.addr, align 8
  %mcols13 = getelementptr inbounds nuw %struct.Mat, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %mcols13, align 8
  %mul14 = mul nsw i32 %mul, %19
  %20 = load ptr, ptr %a.addr, align 8
  %mdeps15 = getelementptr inbounds nuw %struct.Mat, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %mdeps15, align 4
  %mul16 = mul nsw i32 %mul14, %21
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %a.addr, align 8
  %mcols17 = getelementptr inbounds nuw %struct.Mat, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %mcols17, align 8
  %mul18 = mul nsw i32 %22, %24
  %25 = load ptr, ptr %a.addr, align 8
  %mdeps19 = getelementptr inbounds nuw %struct.Mat, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %mdeps19, align 4
  %mul20 = mul nsw i32 %mul18, %26
  %add = add nsw i32 %mul16, %mul20
  %27 = load i32, ptr %j, align 4
  %28 = load ptr, ptr %a.addr, align 8
  %mdeps21 = getelementptr inbounds nuw %struct.Mat, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %mdeps21, align 4
  %mul22 = mul nsw i32 %27, %29
  %add23 = add nsw i32 %add, %mul22
  %30 = load i32, ptr %k, align 4
  %add24 = add nsw i32 %add23, %30
  %idxprom = sext i32 %add24 to i64
  %arrayidx = getelementptr inbounds float, ptr %15, i64 %idxprom
  %31 = load float, ptr %arrayidx, align 4
  %32 = load ptr, ptr %p.addr, align 8
  %m25 = getelementptr inbounds nuw %struct.Mat, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %m25, align 8
  %34 = load ptr, ptr %p.addr, align 8
  %mrows26 = getelementptr inbounds nuw %struct.Mat, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %mrows26, align 4
  %mul27 = mul nsw i32 0, %35
  %36 = load ptr, ptr %p.addr, align 8
  %mcols28 = getelementptr inbounds nuw %struct.Mat, ptr %36, i32 0, i32 3
  %37 = load i32, ptr %mcols28, align 8
  %mul29 = mul nsw i32 %mul27, %37
  %38 = load ptr, ptr %p.addr, align 8
  %mdeps30 = getelementptr inbounds nuw %struct.Mat, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %mdeps30, align 4
  %mul31 = mul nsw i32 %mul29, %39
  %40 = load i32, ptr %i, align 4
  %add32 = add nsw i32 %40, 1
  %41 = load ptr, ptr %p.addr, align 8
  %mcols33 = getelementptr inbounds nuw %struct.Mat, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %mcols33, align 8
  %mul34 = mul nsw i32 %add32, %42
  %43 = load ptr, ptr %p.addr, align 8
  %mdeps35 = getelementptr inbounds nuw %struct.Mat, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %mdeps35, align 4
  %mul36 = mul nsw i32 %mul34, %44
  %add37 = add nsw i32 %mul31, %mul36
  %45 = load i32, ptr %j, align 4
  %46 = load ptr, ptr %p.addr, align 8
  %mdeps38 = getelementptr inbounds nuw %struct.Mat, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %mdeps38, align 4
  %mul39 = mul nsw i32 %45, %47
  %add40 = add nsw i32 %add37, %mul39
  %48 = load i32, ptr %k, align 4
  %add41 = add nsw i32 %add40, %48
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %33, i64 %idxprom42
  %49 = load float, ptr %arrayidx43, align 4
  %50 = load ptr, ptr %a.addr, align 8
  %m45 = getelementptr inbounds nuw %struct.Mat, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %m45, align 8
  %52 = load ptr, ptr %a.addr, align 8
  %mrows46 = getelementptr inbounds nuw %struct.Mat, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %mrows46, align 4
  %mul47 = mul nsw i32 1, %53
  %54 = load ptr, ptr %a.addr, align 8
  %mcols48 = getelementptr inbounds nuw %struct.Mat, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %mcols48, align 8
  %mul49 = mul nsw i32 %mul47, %55
  %56 = load ptr, ptr %a.addr, align 8
  %mdeps50 = getelementptr inbounds nuw %struct.Mat, ptr %56, i32 0, i32 4
  %57 = load i32, ptr %mdeps50, align 4
  %mul51 = mul nsw i32 %mul49, %57
  %58 = load i32, ptr %i, align 4
  %59 = load ptr, ptr %a.addr, align 8
  %mcols52 = getelementptr inbounds nuw %struct.Mat, ptr %59, i32 0, i32 3
  %60 = load i32, ptr %mcols52, align 8
  %mul53 = mul nsw i32 %58, %60
  %61 = load ptr, ptr %a.addr, align 8
  %mdeps54 = getelementptr inbounds nuw %struct.Mat, ptr %61, i32 0, i32 4
  %62 = load i32, ptr %mdeps54, align 4
  %mul55 = mul nsw i32 %mul53, %62
  %add56 = add nsw i32 %mul51, %mul55
  %63 = load i32, ptr %j, align 4
  %64 = load ptr, ptr %a.addr, align 8
  %mdeps57 = getelementptr inbounds nuw %struct.Mat, ptr %64, i32 0, i32 4
  %65 = load i32, ptr %mdeps57, align 4
  %mul58 = mul nsw i32 %63, %65
  %add59 = add nsw i32 %add56, %mul58
  %66 = load i32, ptr %k, align 4
  %add60 = add nsw i32 %add59, %66
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %51, i64 %idxprom61
  %67 = load float, ptr %arrayidx62, align 4
  %68 = load ptr, ptr %p.addr, align 8
  %m63 = getelementptr inbounds nuw %struct.Mat, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %m63, align 8
  %70 = load ptr, ptr %p.addr, align 8
  %mrows64 = getelementptr inbounds nuw %struct.Mat, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %mrows64, align 4
  %mul65 = mul nsw i32 0, %71
  %72 = load ptr, ptr %p.addr, align 8
  %mcols66 = getelementptr inbounds nuw %struct.Mat, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %mcols66, align 8
  %mul67 = mul nsw i32 %mul65, %73
  %74 = load ptr, ptr %p.addr, align 8
  %mdeps68 = getelementptr inbounds nuw %struct.Mat, ptr %74, i32 0, i32 4
  %75 = load i32, ptr %mdeps68, align 4
  %mul69 = mul nsw i32 %mul67, %75
  %76 = load i32, ptr %i, align 4
  %77 = load ptr, ptr %p.addr, align 8
  %mcols70 = getelementptr inbounds nuw %struct.Mat, ptr %77, i32 0, i32 3
  %78 = load i32, ptr %mcols70, align 8
  %mul71 = mul nsw i32 %76, %78
  %79 = load ptr, ptr %p.addr, align 8
  %mdeps72 = getelementptr inbounds nuw %struct.Mat, ptr %79, i32 0, i32 4
  %80 = load i32, ptr %mdeps72, align 4
  %mul73 = mul nsw i32 %mul71, %80
  %add74 = add nsw i32 %mul69, %mul73
  %81 = load i32, ptr %j, align 4
  %add75 = add nsw i32 %81, 1
  %82 = load ptr, ptr %p.addr, align 8
  %mdeps76 = getelementptr inbounds nuw %struct.Mat, ptr %82, i32 0, i32 4
  %83 = load i32, ptr %mdeps76, align 4
  %mul77 = mul nsw i32 %add75, %83
  %add78 = add nsw i32 %add74, %mul77
  %84 = load i32, ptr %k, align 4
  %add79 = add nsw i32 %add78, %84
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %69, i64 %idxprom80
  %85 = load float, ptr %arrayidx81, align 4
  %mul82 = fmul float %67, %85
  %86 = call float @llvm.fmuladd.f32(float %31, float %49, float %mul82)
  %87 = load ptr, ptr %a.addr, align 8
  %m83 = getelementptr inbounds nuw %struct.Mat, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %m83, align 8
  %89 = load ptr, ptr %a.addr, align 8
  %mrows84 = getelementptr inbounds nuw %struct.Mat, ptr %89, i32 0, i32 2
  %90 = load i32, ptr %mrows84, align 4
  %mul85 = mul nsw i32 2, %90
  %91 = load ptr, ptr %a.addr, align 8
  %mcols86 = getelementptr inbounds nuw %struct.Mat, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %mcols86, align 8
  %mul87 = mul nsw i32 %mul85, %92
  %93 = load ptr, ptr %a.addr, align 8
  %mdeps88 = getelementptr inbounds nuw %struct.Mat, ptr %93, i32 0, i32 4
  %94 = load i32, ptr %mdeps88, align 4
  %mul89 = mul nsw i32 %mul87, %94
  %95 = load i32, ptr %i, align 4
  %96 = load ptr, ptr %a.addr, align 8
  %mcols90 = getelementptr inbounds nuw %struct.Mat, ptr %96, i32 0, i32 3
  %97 = load i32, ptr %mcols90, align 8
  %mul91 = mul nsw i32 %95, %97
  %98 = load ptr, ptr %a.addr, align 8
  %mdeps92 = getelementptr inbounds nuw %struct.Mat, ptr %98, i32 0, i32 4
  %99 = load i32, ptr %mdeps92, align 4
  %mul93 = mul nsw i32 %mul91, %99
  %add94 = add nsw i32 %mul89, %mul93
  %100 = load i32, ptr %j, align 4
  %101 = load ptr, ptr %a.addr, align 8
  %mdeps95 = getelementptr inbounds nuw %struct.Mat, ptr %101, i32 0, i32 4
  %102 = load i32, ptr %mdeps95, align 4
  %mul96 = mul nsw i32 %100, %102
  %add97 = add nsw i32 %add94, %mul96
  %103 = load i32, ptr %k, align 4
  %add98 = add nsw i32 %add97, %103
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds float, ptr %88, i64 %idxprom99
  %104 = load float, ptr %arrayidx100, align 4
  %105 = load ptr, ptr %p.addr, align 8
  %m101 = getelementptr inbounds nuw %struct.Mat, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %m101, align 8
  %107 = load ptr, ptr %p.addr, align 8
  %mrows102 = getelementptr inbounds nuw %struct.Mat, ptr %107, i32 0, i32 2
  %108 = load i32, ptr %mrows102, align 4
  %mul103 = mul nsw i32 0, %108
  %109 = load ptr, ptr %p.addr, align 8
  %mcols104 = getelementptr inbounds nuw %struct.Mat, ptr %109, i32 0, i32 3
  %110 = load i32, ptr %mcols104, align 8
  %mul105 = mul nsw i32 %mul103, %110
  %111 = load ptr, ptr %p.addr, align 8
  %mdeps106 = getelementptr inbounds nuw %struct.Mat, ptr %111, i32 0, i32 4
  %112 = load i32, ptr %mdeps106, align 4
  %mul107 = mul nsw i32 %mul105, %112
  %113 = load i32, ptr %i, align 4
  %114 = load ptr, ptr %p.addr, align 8
  %mcols108 = getelementptr inbounds nuw %struct.Mat, ptr %114, i32 0, i32 3
  %115 = load i32, ptr %mcols108, align 8
  %mul109 = mul nsw i32 %113, %115
  %116 = load ptr, ptr %p.addr, align 8
  %mdeps110 = getelementptr inbounds nuw %struct.Mat, ptr %116, i32 0, i32 4
  %117 = load i32, ptr %mdeps110, align 4
  %mul111 = mul nsw i32 %mul109, %117
  %add112 = add nsw i32 %mul107, %mul111
  %118 = load i32, ptr %j, align 4
  %119 = load ptr, ptr %p.addr, align 8
  %mdeps113 = getelementptr inbounds nuw %struct.Mat, ptr %119, i32 0, i32 4
  %120 = load i32, ptr %mdeps113, align 4
  %mul114 = mul nsw i32 %118, %120
  %add115 = add nsw i32 %add112, %mul114
  %121 = load i32, ptr %k, align 4
  %add116 = add nsw i32 %121, 1
  %add117 = add nsw i32 %add115, %add116
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds float, ptr %106, i64 %idxprom118
  %122 = load float, ptr %arrayidx119, align 4
  %123 = call float @llvm.fmuladd.f32(float %104, float %122, float %86)
  %124 = load ptr, ptr %b.addr, align 8
  %m121 = getelementptr inbounds nuw %struct.Mat, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %m121, align 8
  %126 = load ptr, ptr %b.addr, align 8
  %mrows122 = getelementptr inbounds nuw %struct.Mat, ptr %126, i32 0, i32 2
  %127 = load i32, ptr %mrows122, align 4
  %mul123 = mul nsw i32 0, %127
  %128 = load ptr, ptr %b.addr, align 8
  %mcols124 = getelementptr inbounds nuw %struct.Mat, ptr %128, i32 0, i32 3
  %129 = load i32, ptr %mcols124, align 8
  %mul125 = mul nsw i32 %mul123, %129
  %130 = load ptr, ptr %b.addr, align 8
  %mdeps126 = getelementptr inbounds nuw %struct.Mat, ptr %130, i32 0, i32 4
  %131 = load i32, ptr %mdeps126, align 4
  %mul127 = mul nsw i32 %mul125, %131
  %132 = load i32, ptr %i, align 4
  %133 = load ptr, ptr %b.addr, align 8
  %mcols128 = getelementptr inbounds nuw %struct.Mat, ptr %133, i32 0, i32 3
  %134 = load i32, ptr %mcols128, align 8
  %mul129 = mul nsw i32 %132, %134
  %135 = load ptr, ptr %b.addr, align 8
  %mdeps130 = getelementptr inbounds nuw %struct.Mat, ptr %135, i32 0, i32 4
  %136 = load i32, ptr %mdeps130, align 4
  %mul131 = mul nsw i32 %mul129, %136
  %add132 = add nsw i32 %mul127, %mul131
  %137 = load i32, ptr %j, align 4
  %138 = load ptr, ptr %b.addr, align 8
  %mdeps133 = getelementptr inbounds nuw %struct.Mat, ptr %138, i32 0, i32 4
  %139 = load i32, ptr %mdeps133, align 4
  %mul134 = mul nsw i32 %137, %139
  %add135 = add nsw i32 %add132, %mul134
  %140 = load i32, ptr %k, align 4
  %add136 = add nsw i32 %add135, %140
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %125, i64 %idxprom137
  %141 = load float, ptr %arrayidx138, align 4
  %142 = load ptr, ptr %p.addr, align 8
  %m139 = getelementptr inbounds nuw %struct.Mat, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %m139, align 8
  %144 = load ptr, ptr %p.addr, align 8
  %mrows140 = getelementptr inbounds nuw %struct.Mat, ptr %144, i32 0, i32 2
  %145 = load i32, ptr %mrows140, align 4
  %mul141 = mul nsw i32 0, %145
  %146 = load ptr, ptr %p.addr, align 8
  %mcols142 = getelementptr inbounds nuw %struct.Mat, ptr %146, i32 0, i32 3
  %147 = load i32, ptr %mcols142, align 8
  %mul143 = mul nsw i32 %mul141, %147
  %148 = load ptr, ptr %p.addr, align 8
  %mdeps144 = getelementptr inbounds nuw %struct.Mat, ptr %148, i32 0, i32 4
  %149 = load i32, ptr %mdeps144, align 4
  %mul145 = mul nsw i32 %mul143, %149
  %150 = load i32, ptr %i, align 4
  %add146 = add nsw i32 %150, 1
  %151 = load ptr, ptr %p.addr, align 8
  %mcols147 = getelementptr inbounds nuw %struct.Mat, ptr %151, i32 0, i32 3
  %152 = load i32, ptr %mcols147, align 8
  %mul148 = mul nsw i32 %add146, %152
  %153 = load ptr, ptr %p.addr, align 8
  %mdeps149 = getelementptr inbounds nuw %struct.Mat, ptr %153, i32 0, i32 4
  %154 = load i32, ptr %mdeps149, align 4
  %mul150 = mul nsw i32 %mul148, %154
  %add151 = add nsw i32 %mul145, %mul150
  %155 = load i32, ptr %j, align 4
  %add152 = add nsw i32 %155, 1
  %156 = load ptr, ptr %p.addr, align 8
  %mdeps153 = getelementptr inbounds nuw %struct.Mat, ptr %156, i32 0, i32 4
  %157 = load i32, ptr %mdeps153, align 4
  %mul154 = mul nsw i32 %add152, %157
  %add155 = add nsw i32 %add151, %mul154
  %158 = load i32, ptr %k, align 4
  %add156 = add nsw i32 %add155, %158
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds float, ptr %143, i64 %idxprom157
  %159 = load float, ptr %arrayidx158, align 4
  %160 = load ptr, ptr %p.addr, align 8
  %m159 = getelementptr inbounds nuw %struct.Mat, ptr %160, i32 0, i32 0
  %161 = load ptr, ptr %m159, align 8
  %162 = load ptr, ptr %p.addr, align 8
  %mrows160 = getelementptr inbounds nuw %struct.Mat, ptr %162, i32 0, i32 2
  %163 = load i32, ptr %mrows160, align 4
  %mul161 = mul nsw i32 0, %163
  %164 = load ptr, ptr %p.addr, align 8
  %mcols162 = getelementptr inbounds nuw %struct.Mat, ptr %164, i32 0, i32 3
  %165 = load i32, ptr %mcols162, align 8
  %mul163 = mul nsw i32 %mul161, %165
  %166 = load ptr, ptr %p.addr, align 8
  %mdeps164 = getelementptr inbounds nuw %struct.Mat, ptr %166, i32 0, i32 4
  %167 = load i32, ptr %mdeps164, align 4
  %mul165 = mul nsw i32 %mul163, %167
  %168 = load i32, ptr %i, align 4
  %add166 = add nsw i32 %168, 1
  %169 = load ptr, ptr %p.addr, align 8
  %mcols167 = getelementptr inbounds nuw %struct.Mat, ptr %169, i32 0, i32 3
  %170 = load i32, ptr %mcols167, align 8
  %mul168 = mul nsw i32 %add166, %170
  %171 = load ptr, ptr %p.addr, align 8
  %mdeps169 = getelementptr inbounds nuw %struct.Mat, ptr %171, i32 0, i32 4
  %172 = load i32, ptr %mdeps169, align 4
  %mul170 = mul nsw i32 %mul168, %172
  %add171 = add nsw i32 %mul165, %mul170
  %173 = load i32, ptr %j, align 4
  %sub172 = sub nsw i32 %173, 1
  %174 = load ptr, ptr %p.addr, align 8
  %mdeps173 = getelementptr inbounds nuw %struct.Mat, ptr %174, i32 0, i32 4
  %175 = load i32, ptr %mdeps173, align 4
  %mul174 = mul nsw i32 %sub172, %175
  %add175 = add nsw i32 %add171, %mul174
  %176 = load i32, ptr %k, align 4
  %add176 = add nsw i32 %add175, %176
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds float, ptr %161, i64 %idxprom177
  %177 = load float, ptr %arrayidx178, align 4
  %sub179 = fsub float %159, %177
  %178 = load ptr, ptr %p.addr, align 8
  %m180 = getelementptr inbounds nuw %struct.Mat, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %m180, align 8
  %180 = load ptr, ptr %p.addr, align 8
  %mrows181 = getelementptr inbounds nuw %struct.Mat, ptr %180, i32 0, i32 2
  %181 = load i32, ptr %mrows181, align 4
  %mul182 = mul nsw i32 0, %181
  %182 = load ptr, ptr %p.addr, align 8
  %mcols183 = getelementptr inbounds nuw %struct.Mat, ptr %182, i32 0, i32 3
  %183 = load i32, ptr %mcols183, align 8
  %mul184 = mul nsw i32 %mul182, %183
  %184 = load ptr, ptr %p.addr, align 8
  %mdeps185 = getelementptr inbounds nuw %struct.Mat, ptr %184, i32 0, i32 4
  %185 = load i32, ptr %mdeps185, align 4
  %mul186 = mul nsw i32 %mul184, %185
  %186 = load i32, ptr %i, align 4
  %sub187 = sub nsw i32 %186, 1
  %187 = load ptr, ptr %p.addr, align 8
  %mcols188 = getelementptr inbounds nuw %struct.Mat, ptr %187, i32 0, i32 3
  %188 = load i32, ptr %mcols188, align 8
  %mul189 = mul nsw i32 %sub187, %188
  %189 = load ptr, ptr %p.addr, align 8
  %mdeps190 = getelementptr inbounds nuw %struct.Mat, ptr %189, i32 0, i32 4
  %190 = load i32, ptr %mdeps190, align 4
  %mul191 = mul nsw i32 %mul189, %190
  %add192 = add nsw i32 %mul186, %mul191
  %191 = load i32, ptr %j, align 4
  %add193 = add nsw i32 %191, 1
  %192 = load ptr, ptr %p.addr, align 8
  %mdeps194 = getelementptr inbounds nuw %struct.Mat, ptr %192, i32 0, i32 4
  %193 = load i32, ptr %mdeps194, align 4
  %mul195 = mul nsw i32 %add193, %193
  %add196 = add nsw i32 %add192, %mul195
  %194 = load i32, ptr %k, align 4
  %add197 = add nsw i32 %add196, %194
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds float, ptr %179, i64 %idxprom198
  %195 = load float, ptr %arrayidx199, align 4
  %sub200 = fsub float %sub179, %195
  %196 = load ptr, ptr %p.addr, align 8
  %m201 = getelementptr inbounds nuw %struct.Mat, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %m201, align 8
  %198 = load ptr, ptr %p.addr, align 8
  %mrows202 = getelementptr inbounds nuw %struct.Mat, ptr %198, i32 0, i32 2
  %199 = load i32, ptr %mrows202, align 4
  %mul203 = mul nsw i32 0, %199
  %200 = load ptr, ptr %p.addr, align 8
  %mcols204 = getelementptr inbounds nuw %struct.Mat, ptr %200, i32 0, i32 3
  %201 = load i32, ptr %mcols204, align 8
  %mul205 = mul nsw i32 %mul203, %201
  %202 = load ptr, ptr %p.addr, align 8
  %mdeps206 = getelementptr inbounds nuw %struct.Mat, ptr %202, i32 0, i32 4
  %203 = load i32, ptr %mdeps206, align 4
  %mul207 = mul nsw i32 %mul205, %203
  %204 = load i32, ptr %i, align 4
  %sub208 = sub nsw i32 %204, 1
  %205 = load ptr, ptr %p.addr, align 8
  %mcols209 = getelementptr inbounds nuw %struct.Mat, ptr %205, i32 0, i32 3
  %206 = load i32, ptr %mcols209, align 8
  %mul210 = mul nsw i32 %sub208, %206
  %207 = load ptr, ptr %p.addr, align 8
  %mdeps211 = getelementptr inbounds nuw %struct.Mat, ptr %207, i32 0, i32 4
  %208 = load i32, ptr %mdeps211, align 4
  %mul212 = mul nsw i32 %mul210, %208
  %add213 = add nsw i32 %mul207, %mul212
  %209 = load i32, ptr %j, align 4
  %sub214 = sub nsw i32 %209, 1
  %210 = load ptr, ptr %p.addr, align 8
  %mdeps215 = getelementptr inbounds nuw %struct.Mat, ptr %210, i32 0, i32 4
  %211 = load i32, ptr %mdeps215, align 4
  %mul216 = mul nsw i32 %sub214, %211
  %add217 = add nsw i32 %add213, %mul216
  %212 = load i32, ptr %k, align 4
  %add218 = add nsw i32 %add217, %212
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds float, ptr %197, i64 %idxprom219
  %213 = load float, ptr %arrayidx220, align 4
  %add221 = fadd float %sub200, %213
  %214 = call float @llvm.fmuladd.f32(float %141, float %add221, float %123)
  %215 = load ptr, ptr %b.addr, align 8
  %m223 = getelementptr inbounds nuw %struct.Mat, ptr %215, i32 0, i32 0
  %216 = load ptr, ptr %m223, align 8
  %217 = load ptr, ptr %b.addr, align 8
  %mrows224 = getelementptr inbounds nuw %struct.Mat, ptr %217, i32 0, i32 2
  %218 = load i32, ptr %mrows224, align 4
  %mul225 = mul nsw i32 1, %218
  %219 = load ptr, ptr %b.addr, align 8
  %mcols226 = getelementptr inbounds nuw %struct.Mat, ptr %219, i32 0, i32 3
  %220 = load i32, ptr %mcols226, align 8
  %mul227 = mul nsw i32 %mul225, %220
  %221 = load ptr, ptr %b.addr, align 8
  %mdeps228 = getelementptr inbounds nuw %struct.Mat, ptr %221, i32 0, i32 4
  %222 = load i32, ptr %mdeps228, align 4
  %mul229 = mul nsw i32 %mul227, %222
  %223 = load i32, ptr %i, align 4
  %224 = load ptr, ptr %b.addr, align 8
  %mcols230 = getelementptr inbounds nuw %struct.Mat, ptr %224, i32 0, i32 3
  %225 = load i32, ptr %mcols230, align 8
  %mul231 = mul nsw i32 %223, %225
  %226 = load ptr, ptr %b.addr, align 8
  %mdeps232 = getelementptr inbounds nuw %struct.Mat, ptr %226, i32 0, i32 4
  %227 = load i32, ptr %mdeps232, align 4
  %mul233 = mul nsw i32 %mul231, %227
  %add234 = add nsw i32 %mul229, %mul233
  %228 = load i32, ptr %j, align 4
  %229 = load ptr, ptr %b.addr, align 8
  %mdeps235 = getelementptr inbounds nuw %struct.Mat, ptr %229, i32 0, i32 4
  %230 = load i32, ptr %mdeps235, align 4
  %mul236 = mul nsw i32 %228, %230
  %add237 = add nsw i32 %add234, %mul236
  %231 = load i32, ptr %k, align 4
  %add238 = add nsw i32 %add237, %231
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds float, ptr %216, i64 %idxprom239
  %232 = load float, ptr %arrayidx240, align 4
  %233 = load ptr, ptr %p.addr, align 8
  %m241 = getelementptr inbounds nuw %struct.Mat, ptr %233, i32 0, i32 0
  %234 = load ptr, ptr %m241, align 8
  %235 = load ptr, ptr %p.addr, align 8
  %mrows242 = getelementptr inbounds nuw %struct.Mat, ptr %235, i32 0, i32 2
  %236 = load i32, ptr %mrows242, align 4
  %mul243 = mul nsw i32 0, %236
  %237 = load ptr, ptr %p.addr, align 8
  %mcols244 = getelementptr inbounds nuw %struct.Mat, ptr %237, i32 0, i32 3
  %238 = load i32, ptr %mcols244, align 8
  %mul245 = mul nsw i32 %mul243, %238
  %239 = load ptr, ptr %p.addr, align 8
  %mdeps246 = getelementptr inbounds nuw %struct.Mat, ptr %239, i32 0, i32 4
  %240 = load i32, ptr %mdeps246, align 4
  %mul247 = mul nsw i32 %mul245, %240
  %241 = load i32, ptr %i, align 4
  %242 = load ptr, ptr %p.addr, align 8
  %mcols248 = getelementptr inbounds nuw %struct.Mat, ptr %242, i32 0, i32 3
  %243 = load i32, ptr %mcols248, align 8
  %mul249 = mul nsw i32 %241, %243
  %244 = load ptr, ptr %p.addr, align 8
  %mdeps250 = getelementptr inbounds nuw %struct.Mat, ptr %244, i32 0, i32 4
  %245 = load i32, ptr %mdeps250, align 4
  %mul251 = mul nsw i32 %mul249, %245
  %add252 = add nsw i32 %mul247, %mul251
  %246 = load i32, ptr %j, align 4
  %add253 = add nsw i32 %246, 1
  %247 = load ptr, ptr %p.addr, align 8
  %mdeps254 = getelementptr inbounds nuw %struct.Mat, ptr %247, i32 0, i32 4
  %248 = load i32, ptr %mdeps254, align 4
  %mul255 = mul nsw i32 %add253, %248
  %add256 = add nsw i32 %add252, %mul255
  %249 = load i32, ptr %k, align 4
  %add257 = add nsw i32 %249, 1
  %add258 = add nsw i32 %add256, %add257
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds float, ptr %234, i64 %idxprom259
  %250 = load float, ptr %arrayidx260, align 4
  %251 = load ptr, ptr %p.addr, align 8
  %m261 = getelementptr inbounds nuw %struct.Mat, ptr %251, i32 0, i32 0
  %252 = load ptr, ptr %m261, align 8
  %253 = load ptr, ptr %p.addr, align 8
  %mrows262 = getelementptr inbounds nuw %struct.Mat, ptr %253, i32 0, i32 2
  %254 = load i32, ptr %mrows262, align 4
  %mul263 = mul nsw i32 0, %254
  %255 = load ptr, ptr %p.addr, align 8
  %mcols264 = getelementptr inbounds nuw %struct.Mat, ptr %255, i32 0, i32 3
  %256 = load i32, ptr %mcols264, align 8
  %mul265 = mul nsw i32 %mul263, %256
  %257 = load ptr, ptr %p.addr, align 8
  %mdeps266 = getelementptr inbounds nuw %struct.Mat, ptr %257, i32 0, i32 4
  %258 = load i32, ptr %mdeps266, align 4
  %mul267 = mul nsw i32 %mul265, %258
  %259 = load i32, ptr %i, align 4
  %260 = load ptr, ptr %p.addr, align 8
  %mcols268 = getelementptr inbounds nuw %struct.Mat, ptr %260, i32 0, i32 3
  %261 = load i32, ptr %mcols268, align 8
  %mul269 = mul nsw i32 %259, %261
  %262 = load ptr, ptr %p.addr, align 8
  %mdeps270 = getelementptr inbounds nuw %struct.Mat, ptr %262, i32 0, i32 4
  %263 = load i32, ptr %mdeps270, align 4
  %mul271 = mul nsw i32 %mul269, %263
  %add272 = add nsw i32 %mul267, %mul271
  %264 = load i32, ptr %j, align 4
  %sub273 = sub nsw i32 %264, 1
  %265 = load ptr, ptr %p.addr, align 8
  %mdeps274 = getelementptr inbounds nuw %struct.Mat, ptr %265, i32 0, i32 4
  %266 = load i32, ptr %mdeps274, align 4
  %mul275 = mul nsw i32 %sub273, %266
  %add276 = add nsw i32 %add272, %mul275
  %267 = load i32, ptr %k, align 4
  %add277 = add nsw i32 %267, 1
  %add278 = add nsw i32 %add276, %add277
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds float, ptr %252, i64 %idxprom279
  %268 = load float, ptr %arrayidx280, align 4
  %sub281 = fsub float %250, %268
  %269 = load ptr, ptr %p.addr, align 8
  %m282 = getelementptr inbounds nuw %struct.Mat, ptr %269, i32 0, i32 0
  %270 = load ptr, ptr %m282, align 8
  %271 = load ptr, ptr %p.addr, align 8
  %mrows283 = getelementptr inbounds nuw %struct.Mat, ptr %271, i32 0, i32 2
  %272 = load i32, ptr %mrows283, align 4
  %mul284 = mul nsw i32 0, %272
  %273 = load ptr, ptr %p.addr, align 8
  %mcols285 = getelementptr inbounds nuw %struct.Mat, ptr %273, i32 0, i32 3
  %274 = load i32, ptr %mcols285, align 8
  %mul286 = mul nsw i32 %mul284, %274
  %275 = load ptr, ptr %p.addr, align 8
  %mdeps287 = getelementptr inbounds nuw %struct.Mat, ptr %275, i32 0, i32 4
  %276 = load i32, ptr %mdeps287, align 4
  %mul288 = mul nsw i32 %mul286, %276
  %277 = load i32, ptr %i, align 4
  %278 = load ptr, ptr %p.addr, align 8
  %mcols289 = getelementptr inbounds nuw %struct.Mat, ptr %278, i32 0, i32 3
  %279 = load i32, ptr %mcols289, align 8
  %mul290 = mul nsw i32 %277, %279
  %280 = load ptr, ptr %p.addr, align 8
  %mdeps291 = getelementptr inbounds nuw %struct.Mat, ptr %280, i32 0, i32 4
  %281 = load i32, ptr %mdeps291, align 4
  %mul292 = mul nsw i32 %mul290, %281
  %add293 = add nsw i32 %mul288, %mul292
  %282 = load i32, ptr %j, align 4
  %add294 = add nsw i32 %282, 1
  %283 = load ptr, ptr %p.addr, align 8
  %mdeps295 = getelementptr inbounds nuw %struct.Mat, ptr %283, i32 0, i32 4
  %284 = load i32, ptr %mdeps295, align 4
  %mul296 = mul nsw i32 %add294, %284
  %add297 = add nsw i32 %add293, %mul296
  %285 = load i32, ptr %k, align 4
  %sub298 = sub nsw i32 %285, 1
  %add299 = add nsw i32 %add297, %sub298
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds float, ptr %270, i64 %idxprom300
  %286 = load float, ptr %arrayidx301, align 4
  %sub302 = fsub float %sub281, %286
  %287 = load ptr, ptr %p.addr, align 8
  %m303 = getelementptr inbounds nuw %struct.Mat, ptr %287, i32 0, i32 0
  %288 = load ptr, ptr %m303, align 8
  %289 = load ptr, ptr %p.addr, align 8
  %mrows304 = getelementptr inbounds nuw %struct.Mat, ptr %289, i32 0, i32 2
  %290 = load i32, ptr %mrows304, align 4
  %mul305 = mul nsw i32 0, %290
  %291 = load ptr, ptr %p.addr, align 8
  %mcols306 = getelementptr inbounds nuw %struct.Mat, ptr %291, i32 0, i32 3
  %292 = load i32, ptr %mcols306, align 8
  %mul307 = mul nsw i32 %mul305, %292
  %293 = load ptr, ptr %p.addr, align 8
  %mdeps308 = getelementptr inbounds nuw %struct.Mat, ptr %293, i32 0, i32 4
  %294 = load i32, ptr %mdeps308, align 4
  %mul309 = mul nsw i32 %mul307, %294
  %295 = load i32, ptr %i, align 4
  %296 = load ptr, ptr %p.addr, align 8
  %mcols310 = getelementptr inbounds nuw %struct.Mat, ptr %296, i32 0, i32 3
  %297 = load i32, ptr %mcols310, align 8
  %mul311 = mul nsw i32 %295, %297
  %298 = load ptr, ptr %p.addr, align 8
  %mdeps312 = getelementptr inbounds nuw %struct.Mat, ptr %298, i32 0, i32 4
  %299 = load i32, ptr %mdeps312, align 4
  %mul313 = mul nsw i32 %mul311, %299
  %add314 = add nsw i32 %mul309, %mul313
  %300 = load i32, ptr %j, align 4
  %sub315 = sub nsw i32 %300, 1
  %301 = load ptr, ptr %p.addr, align 8
  %mdeps316 = getelementptr inbounds nuw %struct.Mat, ptr %301, i32 0, i32 4
  %302 = load i32, ptr %mdeps316, align 4
  %mul317 = mul nsw i32 %sub315, %302
  %add318 = add nsw i32 %add314, %mul317
  %303 = load i32, ptr %k, align 4
  %sub319 = sub nsw i32 %303, 1
  %add320 = add nsw i32 %add318, %sub319
  %idxprom321 = sext i32 %add320 to i64
  %arrayidx322 = getelementptr inbounds float, ptr %288, i64 %idxprom321
  %304 = load float, ptr %arrayidx322, align 4
  %add323 = fadd float %sub302, %304
  %305 = call float @llvm.fmuladd.f32(float %232, float %add323, float %214)
  %306 = load ptr, ptr %b.addr, align 8
  %m325 = getelementptr inbounds nuw %struct.Mat, ptr %306, i32 0, i32 0
  %307 = load ptr, ptr %m325, align 8
  %308 = load ptr, ptr %b.addr, align 8
  %mrows326 = getelementptr inbounds nuw %struct.Mat, ptr %308, i32 0, i32 2
  %309 = load i32, ptr %mrows326, align 4
  %mul327 = mul nsw i32 2, %309
  %310 = load ptr, ptr %b.addr, align 8
  %mcols328 = getelementptr inbounds nuw %struct.Mat, ptr %310, i32 0, i32 3
  %311 = load i32, ptr %mcols328, align 8
  %mul329 = mul nsw i32 %mul327, %311
  %312 = load ptr, ptr %b.addr, align 8
  %mdeps330 = getelementptr inbounds nuw %struct.Mat, ptr %312, i32 0, i32 4
  %313 = load i32, ptr %mdeps330, align 4
  %mul331 = mul nsw i32 %mul329, %313
  %314 = load i32, ptr %i, align 4
  %315 = load ptr, ptr %b.addr, align 8
  %mcols332 = getelementptr inbounds nuw %struct.Mat, ptr %315, i32 0, i32 3
  %316 = load i32, ptr %mcols332, align 8
  %mul333 = mul nsw i32 %314, %316
  %317 = load ptr, ptr %b.addr, align 8
  %mdeps334 = getelementptr inbounds nuw %struct.Mat, ptr %317, i32 0, i32 4
  %318 = load i32, ptr %mdeps334, align 4
  %mul335 = mul nsw i32 %mul333, %318
  %add336 = add nsw i32 %mul331, %mul335
  %319 = load i32, ptr %j, align 4
  %320 = load ptr, ptr %b.addr, align 8
  %mdeps337 = getelementptr inbounds nuw %struct.Mat, ptr %320, i32 0, i32 4
  %321 = load i32, ptr %mdeps337, align 4
  %mul338 = mul nsw i32 %319, %321
  %add339 = add nsw i32 %add336, %mul338
  %322 = load i32, ptr %k, align 4
  %add340 = add nsw i32 %add339, %322
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds float, ptr %307, i64 %idxprom341
  %323 = load float, ptr %arrayidx342, align 4
  %324 = load ptr, ptr %p.addr, align 8
  %m343 = getelementptr inbounds nuw %struct.Mat, ptr %324, i32 0, i32 0
  %325 = load ptr, ptr %m343, align 8
  %326 = load ptr, ptr %p.addr, align 8
  %mrows344 = getelementptr inbounds nuw %struct.Mat, ptr %326, i32 0, i32 2
  %327 = load i32, ptr %mrows344, align 4
  %mul345 = mul nsw i32 0, %327
  %328 = load ptr, ptr %p.addr, align 8
  %mcols346 = getelementptr inbounds nuw %struct.Mat, ptr %328, i32 0, i32 3
  %329 = load i32, ptr %mcols346, align 8
  %mul347 = mul nsw i32 %mul345, %329
  %330 = load ptr, ptr %p.addr, align 8
  %mdeps348 = getelementptr inbounds nuw %struct.Mat, ptr %330, i32 0, i32 4
  %331 = load i32, ptr %mdeps348, align 4
  %mul349 = mul nsw i32 %mul347, %331
  %332 = load i32, ptr %i, align 4
  %add350 = add nsw i32 %332, 1
  %333 = load ptr, ptr %p.addr, align 8
  %mcols351 = getelementptr inbounds nuw %struct.Mat, ptr %333, i32 0, i32 3
  %334 = load i32, ptr %mcols351, align 8
  %mul352 = mul nsw i32 %add350, %334
  %335 = load ptr, ptr %p.addr, align 8
  %mdeps353 = getelementptr inbounds nuw %struct.Mat, ptr %335, i32 0, i32 4
  %336 = load i32, ptr %mdeps353, align 4
  %mul354 = mul nsw i32 %mul352, %336
  %add355 = add nsw i32 %mul349, %mul354
  %337 = load i32, ptr %j, align 4
  %338 = load ptr, ptr %p.addr, align 8
  %mdeps356 = getelementptr inbounds nuw %struct.Mat, ptr %338, i32 0, i32 4
  %339 = load i32, ptr %mdeps356, align 4
  %mul357 = mul nsw i32 %337, %339
  %add358 = add nsw i32 %add355, %mul357
  %340 = load i32, ptr %k, align 4
  %add359 = add nsw i32 %340, 1
  %add360 = add nsw i32 %add358, %add359
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds float, ptr %325, i64 %idxprom361
  %341 = load float, ptr %arrayidx362, align 4
  %342 = load ptr, ptr %p.addr, align 8
  %m363 = getelementptr inbounds nuw %struct.Mat, ptr %342, i32 0, i32 0
  %343 = load ptr, ptr %m363, align 8
  %344 = load ptr, ptr %p.addr, align 8
  %mrows364 = getelementptr inbounds nuw %struct.Mat, ptr %344, i32 0, i32 2
  %345 = load i32, ptr %mrows364, align 4
  %mul365 = mul nsw i32 0, %345
  %346 = load ptr, ptr %p.addr, align 8
  %mcols366 = getelementptr inbounds nuw %struct.Mat, ptr %346, i32 0, i32 3
  %347 = load i32, ptr %mcols366, align 8
  %mul367 = mul nsw i32 %mul365, %347
  %348 = load ptr, ptr %p.addr, align 8
  %mdeps368 = getelementptr inbounds nuw %struct.Mat, ptr %348, i32 0, i32 4
  %349 = load i32, ptr %mdeps368, align 4
  %mul369 = mul nsw i32 %mul367, %349
  %350 = load i32, ptr %i, align 4
  %sub370 = sub nsw i32 %350, 1
  %351 = load ptr, ptr %p.addr, align 8
  %mcols371 = getelementptr inbounds nuw %struct.Mat, ptr %351, i32 0, i32 3
  %352 = load i32, ptr %mcols371, align 8
  %mul372 = mul nsw i32 %sub370, %352
  %353 = load ptr, ptr %p.addr, align 8
  %mdeps373 = getelementptr inbounds nuw %struct.Mat, ptr %353, i32 0, i32 4
  %354 = load i32, ptr %mdeps373, align 4
  %mul374 = mul nsw i32 %mul372, %354
  %add375 = add nsw i32 %mul369, %mul374
  %355 = load i32, ptr %j, align 4
  %356 = load ptr, ptr %p.addr, align 8
  %mdeps376 = getelementptr inbounds nuw %struct.Mat, ptr %356, i32 0, i32 4
  %357 = load i32, ptr %mdeps376, align 4
  %mul377 = mul nsw i32 %355, %357
  %add378 = add nsw i32 %add375, %mul377
  %358 = load i32, ptr %k, align 4
  %add379 = add nsw i32 %358, 1
  %add380 = add nsw i32 %add378, %add379
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds float, ptr %343, i64 %idxprom381
  %359 = load float, ptr %arrayidx382, align 4
  %sub383 = fsub float %341, %359
  %360 = load ptr, ptr %p.addr, align 8
  %m384 = getelementptr inbounds nuw %struct.Mat, ptr %360, i32 0, i32 0
  %361 = load ptr, ptr %m384, align 8
  %362 = load ptr, ptr %p.addr, align 8
  %mrows385 = getelementptr inbounds nuw %struct.Mat, ptr %362, i32 0, i32 2
  %363 = load i32, ptr %mrows385, align 4
  %mul386 = mul nsw i32 0, %363
  %364 = load ptr, ptr %p.addr, align 8
  %mcols387 = getelementptr inbounds nuw %struct.Mat, ptr %364, i32 0, i32 3
  %365 = load i32, ptr %mcols387, align 8
  %mul388 = mul nsw i32 %mul386, %365
  %366 = load ptr, ptr %p.addr, align 8
  %mdeps389 = getelementptr inbounds nuw %struct.Mat, ptr %366, i32 0, i32 4
  %367 = load i32, ptr %mdeps389, align 4
  %mul390 = mul nsw i32 %mul388, %367
  %368 = load i32, ptr %i, align 4
  %add391 = add nsw i32 %368, 1
  %369 = load ptr, ptr %p.addr, align 8
  %mcols392 = getelementptr inbounds nuw %struct.Mat, ptr %369, i32 0, i32 3
  %370 = load i32, ptr %mcols392, align 8
  %mul393 = mul nsw i32 %add391, %370
  %371 = load ptr, ptr %p.addr, align 8
  %mdeps394 = getelementptr inbounds nuw %struct.Mat, ptr %371, i32 0, i32 4
  %372 = load i32, ptr %mdeps394, align 4
  %mul395 = mul nsw i32 %mul393, %372
  %add396 = add nsw i32 %mul390, %mul395
  %373 = load i32, ptr %j, align 4
  %374 = load ptr, ptr %p.addr, align 8
  %mdeps397 = getelementptr inbounds nuw %struct.Mat, ptr %374, i32 0, i32 4
  %375 = load i32, ptr %mdeps397, align 4
  %mul398 = mul nsw i32 %373, %375
  %add399 = add nsw i32 %add396, %mul398
  %376 = load i32, ptr %k, align 4
  %sub400 = sub nsw i32 %376, 1
  %add401 = add nsw i32 %add399, %sub400
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds float, ptr %361, i64 %idxprom402
  %377 = load float, ptr %arrayidx403, align 4
  %sub404 = fsub float %sub383, %377
  %378 = load ptr, ptr %p.addr, align 8
  %m405 = getelementptr inbounds nuw %struct.Mat, ptr %378, i32 0, i32 0
  %379 = load ptr, ptr %m405, align 8
  %380 = load ptr, ptr %p.addr, align 8
  %mrows406 = getelementptr inbounds nuw %struct.Mat, ptr %380, i32 0, i32 2
  %381 = load i32, ptr %mrows406, align 4
  %mul407 = mul nsw i32 0, %381
  %382 = load ptr, ptr %p.addr, align 8
  %mcols408 = getelementptr inbounds nuw %struct.Mat, ptr %382, i32 0, i32 3
  %383 = load i32, ptr %mcols408, align 8
  %mul409 = mul nsw i32 %mul407, %383
  %384 = load ptr, ptr %p.addr, align 8
  %mdeps410 = getelementptr inbounds nuw %struct.Mat, ptr %384, i32 0, i32 4
  %385 = load i32, ptr %mdeps410, align 4
  %mul411 = mul nsw i32 %mul409, %385
  %386 = load i32, ptr %i, align 4
  %sub412 = sub nsw i32 %386, 1
  %387 = load ptr, ptr %p.addr, align 8
  %mcols413 = getelementptr inbounds nuw %struct.Mat, ptr %387, i32 0, i32 3
  %388 = load i32, ptr %mcols413, align 8
  %mul414 = mul nsw i32 %sub412, %388
  %389 = load ptr, ptr %p.addr, align 8
  %mdeps415 = getelementptr inbounds nuw %struct.Mat, ptr %389, i32 0, i32 4
  %390 = load i32, ptr %mdeps415, align 4
  %mul416 = mul nsw i32 %mul414, %390
  %add417 = add nsw i32 %mul411, %mul416
  %391 = load i32, ptr %j, align 4
  %392 = load ptr, ptr %p.addr, align 8
  %mdeps418 = getelementptr inbounds nuw %struct.Mat, ptr %392, i32 0, i32 4
  %393 = load i32, ptr %mdeps418, align 4
  %mul419 = mul nsw i32 %391, %393
  %add420 = add nsw i32 %add417, %mul419
  %394 = load i32, ptr %k, align 4
  %sub421 = sub nsw i32 %394, 1
  %add422 = add nsw i32 %add420, %sub421
  %idxprom423 = sext i32 %add422 to i64
  %arrayidx424 = getelementptr inbounds float, ptr %379, i64 %idxprom423
  %395 = load float, ptr %arrayidx424, align 4
  %add425 = fadd float %sub404, %395
  %396 = call float @llvm.fmuladd.f32(float %323, float %add425, float %305)
  %397 = load ptr, ptr %c.addr, align 8
  %m427 = getelementptr inbounds nuw %struct.Mat, ptr %397, i32 0, i32 0
  %398 = load ptr, ptr %m427, align 8
  %399 = load ptr, ptr %c.addr, align 8
  %mrows428 = getelementptr inbounds nuw %struct.Mat, ptr %399, i32 0, i32 2
  %400 = load i32, ptr %mrows428, align 4
  %mul429 = mul nsw i32 0, %400
  %401 = load ptr, ptr %c.addr, align 8
  %mcols430 = getelementptr inbounds nuw %struct.Mat, ptr %401, i32 0, i32 3
  %402 = load i32, ptr %mcols430, align 8
  %mul431 = mul nsw i32 %mul429, %402
  %403 = load ptr, ptr %c.addr, align 8
  %mdeps432 = getelementptr inbounds nuw %struct.Mat, ptr %403, i32 0, i32 4
  %404 = load i32, ptr %mdeps432, align 4
  %mul433 = mul nsw i32 %mul431, %404
  %405 = load i32, ptr %i, align 4
  %406 = load ptr, ptr %c.addr, align 8
  %mcols434 = getelementptr inbounds nuw %struct.Mat, ptr %406, i32 0, i32 3
  %407 = load i32, ptr %mcols434, align 8
  %mul435 = mul nsw i32 %405, %407
  %408 = load ptr, ptr %c.addr, align 8
  %mdeps436 = getelementptr inbounds nuw %struct.Mat, ptr %408, i32 0, i32 4
  %409 = load i32, ptr %mdeps436, align 4
  %mul437 = mul nsw i32 %mul435, %409
  %add438 = add nsw i32 %mul433, %mul437
  %410 = load i32, ptr %j, align 4
  %411 = load ptr, ptr %c.addr, align 8
  %mdeps439 = getelementptr inbounds nuw %struct.Mat, ptr %411, i32 0, i32 4
  %412 = load i32, ptr %mdeps439, align 4
  %mul440 = mul nsw i32 %410, %412
  %add441 = add nsw i32 %add438, %mul440
  %413 = load i32, ptr %k, align 4
  %add442 = add nsw i32 %add441, %413
  %idxprom443 = sext i32 %add442 to i64
  %arrayidx444 = getelementptr inbounds float, ptr %398, i64 %idxprom443
  %414 = load float, ptr %arrayidx444, align 4
  %415 = load ptr, ptr %p.addr, align 8
  %m445 = getelementptr inbounds nuw %struct.Mat, ptr %415, i32 0, i32 0
  %416 = load ptr, ptr %m445, align 8
  %417 = load ptr, ptr %p.addr, align 8
  %mrows446 = getelementptr inbounds nuw %struct.Mat, ptr %417, i32 0, i32 2
  %418 = load i32, ptr %mrows446, align 4
  %mul447 = mul nsw i32 0, %418
  %419 = load ptr, ptr %p.addr, align 8
  %mcols448 = getelementptr inbounds nuw %struct.Mat, ptr %419, i32 0, i32 3
  %420 = load i32, ptr %mcols448, align 8
  %mul449 = mul nsw i32 %mul447, %420
  %421 = load ptr, ptr %p.addr, align 8
  %mdeps450 = getelementptr inbounds nuw %struct.Mat, ptr %421, i32 0, i32 4
  %422 = load i32, ptr %mdeps450, align 4
  %mul451 = mul nsw i32 %mul449, %422
  %423 = load i32, ptr %i, align 4
  %sub452 = sub nsw i32 %423, 1
  %424 = load ptr, ptr %p.addr, align 8
  %mcols453 = getelementptr inbounds nuw %struct.Mat, ptr %424, i32 0, i32 3
  %425 = load i32, ptr %mcols453, align 8
  %mul454 = mul nsw i32 %sub452, %425
  %426 = load ptr, ptr %p.addr, align 8
  %mdeps455 = getelementptr inbounds nuw %struct.Mat, ptr %426, i32 0, i32 4
  %427 = load i32, ptr %mdeps455, align 4
  %mul456 = mul nsw i32 %mul454, %427
  %add457 = add nsw i32 %mul451, %mul456
  %428 = load i32, ptr %j, align 4
  %429 = load ptr, ptr %p.addr, align 8
  %mdeps458 = getelementptr inbounds nuw %struct.Mat, ptr %429, i32 0, i32 4
  %430 = load i32, ptr %mdeps458, align 4
  %mul459 = mul nsw i32 %428, %430
  %add460 = add nsw i32 %add457, %mul459
  %431 = load i32, ptr %k, align 4
  %add461 = add nsw i32 %add460, %431
  %idxprom462 = sext i32 %add461 to i64
  %arrayidx463 = getelementptr inbounds float, ptr %416, i64 %idxprom462
  %432 = load float, ptr %arrayidx463, align 4
  %433 = call float @llvm.fmuladd.f32(float %414, float %432, float %396)
  %434 = load ptr, ptr %c.addr, align 8
  %m465 = getelementptr inbounds nuw %struct.Mat, ptr %434, i32 0, i32 0
  %435 = load ptr, ptr %m465, align 8
  %436 = load ptr, ptr %c.addr, align 8
  %mrows466 = getelementptr inbounds nuw %struct.Mat, ptr %436, i32 0, i32 2
  %437 = load i32, ptr %mrows466, align 4
  %mul467 = mul nsw i32 1, %437
  %438 = load ptr, ptr %c.addr, align 8
  %mcols468 = getelementptr inbounds nuw %struct.Mat, ptr %438, i32 0, i32 3
  %439 = load i32, ptr %mcols468, align 8
  %mul469 = mul nsw i32 %mul467, %439
  %440 = load ptr, ptr %c.addr, align 8
  %mdeps470 = getelementptr inbounds nuw %struct.Mat, ptr %440, i32 0, i32 4
  %441 = load i32, ptr %mdeps470, align 4
  %mul471 = mul nsw i32 %mul469, %441
  %442 = load i32, ptr %i, align 4
  %443 = load ptr, ptr %c.addr, align 8
  %mcols472 = getelementptr inbounds nuw %struct.Mat, ptr %443, i32 0, i32 3
  %444 = load i32, ptr %mcols472, align 8
  %mul473 = mul nsw i32 %442, %444
  %445 = load ptr, ptr %c.addr, align 8
  %mdeps474 = getelementptr inbounds nuw %struct.Mat, ptr %445, i32 0, i32 4
  %446 = load i32, ptr %mdeps474, align 4
  %mul475 = mul nsw i32 %mul473, %446
  %add476 = add nsw i32 %mul471, %mul475
  %447 = load i32, ptr %j, align 4
  %448 = load ptr, ptr %c.addr, align 8
  %mdeps477 = getelementptr inbounds nuw %struct.Mat, ptr %448, i32 0, i32 4
  %449 = load i32, ptr %mdeps477, align 4
  %mul478 = mul nsw i32 %447, %449
  %add479 = add nsw i32 %add476, %mul478
  %450 = load i32, ptr %k, align 4
  %add480 = add nsw i32 %add479, %450
  %idxprom481 = sext i32 %add480 to i64
  %arrayidx482 = getelementptr inbounds float, ptr %435, i64 %idxprom481
  %451 = load float, ptr %arrayidx482, align 4
  %452 = load ptr, ptr %p.addr, align 8
  %m483 = getelementptr inbounds nuw %struct.Mat, ptr %452, i32 0, i32 0
  %453 = load ptr, ptr %m483, align 8
  %454 = load ptr, ptr %p.addr, align 8
  %mrows484 = getelementptr inbounds nuw %struct.Mat, ptr %454, i32 0, i32 2
  %455 = load i32, ptr %mrows484, align 4
  %mul485 = mul nsw i32 0, %455
  %456 = load ptr, ptr %p.addr, align 8
  %mcols486 = getelementptr inbounds nuw %struct.Mat, ptr %456, i32 0, i32 3
  %457 = load i32, ptr %mcols486, align 8
  %mul487 = mul nsw i32 %mul485, %457
  %458 = load ptr, ptr %p.addr, align 8
  %mdeps488 = getelementptr inbounds nuw %struct.Mat, ptr %458, i32 0, i32 4
  %459 = load i32, ptr %mdeps488, align 4
  %mul489 = mul nsw i32 %mul487, %459
  %460 = load i32, ptr %i, align 4
  %461 = load ptr, ptr %p.addr, align 8
  %mcols490 = getelementptr inbounds nuw %struct.Mat, ptr %461, i32 0, i32 3
  %462 = load i32, ptr %mcols490, align 8
  %mul491 = mul nsw i32 %460, %462
  %463 = load ptr, ptr %p.addr, align 8
  %mdeps492 = getelementptr inbounds nuw %struct.Mat, ptr %463, i32 0, i32 4
  %464 = load i32, ptr %mdeps492, align 4
  %mul493 = mul nsw i32 %mul491, %464
  %add494 = add nsw i32 %mul489, %mul493
  %465 = load i32, ptr %j, align 4
  %sub495 = sub nsw i32 %465, 1
  %466 = load ptr, ptr %p.addr, align 8
  %mdeps496 = getelementptr inbounds nuw %struct.Mat, ptr %466, i32 0, i32 4
  %467 = load i32, ptr %mdeps496, align 4
  %mul497 = mul nsw i32 %sub495, %467
  %add498 = add nsw i32 %add494, %mul497
  %468 = load i32, ptr %k, align 4
  %add499 = add nsw i32 %add498, %468
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds float, ptr %453, i64 %idxprom500
  %469 = load float, ptr %arrayidx501, align 4
  %470 = call float @llvm.fmuladd.f32(float %451, float %469, float %433)
  %471 = load ptr, ptr %c.addr, align 8
  %m503 = getelementptr inbounds nuw %struct.Mat, ptr %471, i32 0, i32 0
  %472 = load ptr, ptr %m503, align 8
  %473 = load ptr, ptr %c.addr, align 8
  %mrows504 = getelementptr inbounds nuw %struct.Mat, ptr %473, i32 0, i32 2
  %474 = load i32, ptr %mrows504, align 4
  %mul505 = mul nsw i32 2, %474
  %475 = load ptr, ptr %c.addr, align 8
  %mcols506 = getelementptr inbounds nuw %struct.Mat, ptr %475, i32 0, i32 3
  %476 = load i32, ptr %mcols506, align 8
  %mul507 = mul nsw i32 %mul505, %476
  %477 = load ptr, ptr %c.addr, align 8
  %mdeps508 = getelementptr inbounds nuw %struct.Mat, ptr %477, i32 0, i32 4
  %478 = load i32, ptr %mdeps508, align 4
  %mul509 = mul nsw i32 %mul507, %478
  %479 = load i32, ptr %i, align 4
  %480 = load ptr, ptr %c.addr, align 8
  %mcols510 = getelementptr inbounds nuw %struct.Mat, ptr %480, i32 0, i32 3
  %481 = load i32, ptr %mcols510, align 8
  %mul511 = mul nsw i32 %479, %481
  %482 = load ptr, ptr %c.addr, align 8
  %mdeps512 = getelementptr inbounds nuw %struct.Mat, ptr %482, i32 0, i32 4
  %483 = load i32, ptr %mdeps512, align 4
  %mul513 = mul nsw i32 %mul511, %483
  %add514 = add nsw i32 %mul509, %mul513
  %484 = load i32, ptr %j, align 4
  %485 = load ptr, ptr %c.addr, align 8
  %mdeps515 = getelementptr inbounds nuw %struct.Mat, ptr %485, i32 0, i32 4
  %486 = load i32, ptr %mdeps515, align 4
  %mul516 = mul nsw i32 %484, %486
  %add517 = add nsw i32 %add514, %mul516
  %487 = load i32, ptr %k, align 4
  %add518 = add nsw i32 %add517, %487
  %idxprom519 = sext i32 %add518 to i64
  %arrayidx520 = getelementptr inbounds float, ptr %472, i64 %idxprom519
  %488 = load float, ptr %arrayidx520, align 4
  %489 = load ptr, ptr %p.addr, align 8
  %m521 = getelementptr inbounds nuw %struct.Mat, ptr %489, i32 0, i32 0
  %490 = load ptr, ptr %m521, align 8
  %491 = load ptr, ptr %p.addr, align 8
  %mrows522 = getelementptr inbounds nuw %struct.Mat, ptr %491, i32 0, i32 2
  %492 = load i32, ptr %mrows522, align 4
  %mul523 = mul nsw i32 0, %492
  %493 = load ptr, ptr %p.addr, align 8
  %mcols524 = getelementptr inbounds nuw %struct.Mat, ptr %493, i32 0, i32 3
  %494 = load i32, ptr %mcols524, align 8
  %mul525 = mul nsw i32 %mul523, %494
  %495 = load ptr, ptr %p.addr, align 8
  %mdeps526 = getelementptr inbounds nuw %struct.Mat, ptr %495, i32 0, i32 4
  %496 = load i32, ptr %mdeps526, align 4
  %mul527 = mul nsw i32 %mul525, %496
  %497 = load i32, ptr %i, align 4
  %498 = load ptr, ptr %p.addr, align 8
  %mcols528 = getelementptr inbounds nuw %struct.Mat, ptr %498, i32 0, i32 3
  %499 = load i32, ptr %mcols528, align 8
  %mul529 = mul nsw i32 %497, %499
  %500 = load ptr, ptr %p.addr, align 8
  %mdeps530 = getelementptr inbounds nuw %struct.Mat, ptr %500, i32 0, i32 4
  %501 = load i32, ptr %mdeps530, align 4
  %mul531 = mul nsw i32 %mul529, %501
  %add532 = add nsw i32 %mul527, %mul531
  %502 = load i32, ptr %j, align 4
  %503 = load ptr, ptr %p.addr, align 8
  %mdeps533 = getelementptr inbounds nuw %struct.Mat, ptr %503, i32 0, i32 4
  %504 = load i32, ptr %mdeps533, align 4
  %mul534 = mul nsw i32 %502, %504
  %add535 = add nsw i32 %add532, %mul534
  %505 = load i32, ptr %k, align 4
  %sub536 = sub nsw i32 %505, 1
  %add537 = add nsw i32 %add535, %sub536
  %idxprom538 = sext i32 %add537 to i64
  %arrayidx539 = getelementptr inbounds float, ptr %490, i64 %idxprom538
  %506 = load float, ptr %arrayidx539, align 4
  %507 = call float @llvm.fmuladd.f32(float %488, float %506, float %470)
  %508 = load ptr, ptr %wrk1.addr, align 8
  %m541 = getelementptr inbounds nuw %struct.Mat, ptr %508, i32 0, i32 0
  %509 = load ptr, ptr %m541, align 8
  %510 = load ptr, ptr %wrk1.addr, align 8
  %mrows542 = getelementptr inbounds nuw %struct.Mat, ptr %510, i32 0, i32 2
  %511 = load i32, ptr %mrows542, align 4
  %mul543 = mul nsw i32 0, %511
  %512 = load ptr, ptr %wrk1.addr, align 8
  %mcols544 = getelementptr inbounds nuw %struct.Mat, ptr %512, i32 0, i32 3
  %513 = load i32, ptr %mcols544, align 8
  %mul545 = mul nsw i32 %mul543, %513
  %514 = load ptr, ptr %wrk1.addr, align 8
  %mdeps546 = getelementptr inbounds nuw %struct.Mat, ptr %514, i32 0, i32 4
  %515 = load i32, ptr %mdeps546, align 4
  %mul547 = mul nsw i32 %mul545, %515
  %516 = load i32, ptr %i, align 4
  %517 = load ptr, ptr %wrk1.addr, align 8
  %mcols548 = getelementptr inbounds nuw %struct.Mat, ptr %517, i32 0, i32 3
  %518 = load i32, ptr %mcols548, align 8
  %mul549 = mul nsw i32 %516, %518
  %519 = load ptr, ptr %wrk1.addr, align 8
  %mdeps550 = getelementptr inbounds nuw %struct.Mat, ptr %519, i32 0, i32 4
  %520 = load i32, ptr %mdeps550, align 4
  %mul551 = mul nsw i32 %mul549, %520
  %add552 = add nsw i32 %mul547, %mul551
  %521 = load i32, ptr %j, align 4
  %522 = load ptr, ptr %wrk1.addr, align 8
  %mdeps553 = getelementptr inbounds nuw %struct.Mat, ptr %522, i32 0, i32 4
  %523 = load i32, ptr %mdeps553, align 4
  %mul554 = mul nsw i32 %521, %523
  %add555 = add nsw i32 %add552, %mul554
  %524 = load i32, ptr %k, align 4
  %add556 = add nsw i32 %add555, %524
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds float, ptr %509, i64 %idxprom557
  %525 = load float, ptr %arrayidx558, align 4
  %add559 = fadd float %507, %525
  store float %add559, ptr %s0, align 4
  %526 = load float, ptr %s0, align 4
  %527 = load ptr, ptr %a.addr, align 8
  %m560 = getelementptr inbounds nuw %struct.Mat, ptr %527, i32 0, i32 0
  %528 = load ptr, ptr %m560, align 8
  %529 = load ptr, ptr %a.addr, align 8
  %mrows561 = getelementptr inbounds nuw %struct.Mat, ptr %529, i32 0, i32 2
  %530 = load i32, ptr %mrows561, align 4
  %mul562 = mul nsw i32 3, %530
  %531 = load ptr, ptr %a.addr, align 8
  %mcols563 = getelementptr inbounds nuw %struct.Mat, ptr %531, i32 0, i32 3
  %532 = load i32, ptr %mcols563, align 8
  %mul564 = mul nsw i32 %mul562, %532
  %533 = load ptr, ptr %a.addr, align 8
  %mdeps565 = getelementptr inbounds nuw %struct.Mat, ptr %533, i32 0, i32 4
  %534 = load i32, ptr %mdeps565, align 4
  %mul566 = mul nsw i32 %mul564, %534
  %535 = load i32, ptr %i, align 4
  %536 = load ptr, ptr %a.addr, align 8
  %mcols567 = getelementptr inbounds nuw %struct.Mat, ptr %536, i32 0, i32 3
  %537 = load i32, ptr %mcols567, align 8
  %mul568 = mul nsw i32 %535, %537
  %538 = load ptr, ptr %a.addr, align 8
  %mdeps569 = getelementptr inbounds nuw %struct.Mat, ptr %538, i32 0, i32 4
  %539 = load i32, ptr %mdeps569, align 4
  %mul570 = mul nsw i32 %mul568, %539
  %add571 = add nsw i32 %mul566, %mul570
  %540 = load i32, ptr %j, align 4
  %541 = load ptr, ptr %a.addr, align 8
  %mdeps572 = getelementptr inbounds nuw %struct.Mat, ptr %541, i32 0, i32 4
  %542 = load i32, ptr %mdeps572, align 4
  %mul573 = mul nsw i32 %540, %542
  %add574 = add nsw i32 %add571, %mul573
  %543 = load i32, ptr %k, align 4
  %add575 = add nsw i32 %add574, %543
  %idxprom576 = sext i32 %add575 to i64
  %arrayidx577 = getelementptr inbounds float, ptr %528, i64 %idxprom576
  %544 = load float, ptr %arrayidx577, align 4
  %545 = load ptr, ptr %p.addr, align 8
  %m579 = getelementptr inbounds nuw %struct.Mat, ptr %545, i32 0, i32 0
  %546 = load ptr, ptr %m579, align 8
  %547 = load ptr, ptr %p.addr, align 8
  %mrows580 = getelementptr inbounds nuw %struct.Mat, ptr %547, i32 0, i32 2
  %548 = load i32, ptr %mrows580, align 4
  %mul581 = mul nsw i32 0, %548
  %549 = load ptr, ptr %p.addr, align 8
  %mcols582 = getelementptr inbounds nuw %struct.Mat, ptr %549, i32 0, i32 3
  %550 = load i32, ptr %mcols582, align 8
  %mul583 = mul nsw i32 %mul581, %550
  %551 = load ptr, ptr %p.addr, align 8
  %mdeps584 = getelementptr inbounds nuw %struct.Mat, ptr %551, i32 0, i32 4
  %552 = load i32, ptr %mdeps584, align 4
  %mul585 = mul nsw i32 %mul583, %552
  %553 = load i32, ptr %i, align 4
  %554 = load ptr, ptr %p.addr, align 8
  %mcols586 = getelementptr inbounds nuw %struct.Mat, ptr %554, i32 0, i32 3
  %555 = load i32, ptr %mcols586, align 8
  %mul587 = mul nsw i32 %553, %555
  %556 = load ptr, ptr %p.addr, align 8
  %mdeps588 = getelementptr inbounds nuw %struct.Mat, ptr %556, i32 0, i32 4
  %557 = load i32, ptr %mdeps588, align 4
  %mul589 = mul nsw i32 %mul587, %557
  %add590 = add nsw i32 %mul585, %mul589
  %558 = load i32, ptr %j, align 4
  %559 = load ptr, ptr %p.addr, align 8
  %mdeps591 = getelementptr inbounds nuw %struct.Mat, ptr %559, i32 0, i32 4
  %560 = load i32, ptr %mdeps591, align 4
  %mul592 = mul nsw i32 %558, %560
  %add593 = add nsw i32 %add590, %mul592
  %561 = load i32, ptr %k, align 4
  %add594 = add nsw i32 %add593, %561
  %idxprom595 = sext i32 %add594 to i64
  %arrayidx596 = getelementptr inbounds float, ptr %546, i64 %idxprom595
  %562 = load float, ptr %arrayidx596, align 4
  %neg = fneg float %562
  %563 = call float @llvm.fmuladd.f32(float %526, float %544, float %neg)
  %564 = load ptr, ptr %bnd.addr, align 8
  %m597 = getelementptr inbounds nuw %struct.Mat, ptr %564, i32 0, i32 0
  %565 = load ptr, ptr %m597, align 8
  %566 = load ptr, ptr %bnd.addr, align 8
  %mrows598 = getelementptr inbounds nuw %struct.Mat, ptr %566, i32 0, i32 2
  %567 = load i32, ptr %mrows598, align 4
  %mul599 = mul nsw i32 0, %567
  %568 = load ptr, ptr %bnd.addr, align 8
  %mcols600 = getelementptr inbounds nuw %struct.Mat, ptr %568, i32 0, i32 3
  %569 = load i32, ptr %mcols600, align 8
  %mul601 = mul nsw i32 %mul599, %569
  %570 = load ptr, ptr %bnd.addr, align 8
  %mdeps602 = getelementptr inbounds nuw %struct.Mat, ptr %570, i32 0, i32 4
  %571 = load i32, ptr %mdeps602, align 4
  %mul603 = mul nsw i32 %mul601, %571
  %572 = load i32, ptr %i, align 4
  %573 = load ptr, ptr %bnd.addr, align 8
  %mcols604 = getelementptr inbounds nuw %struct.Mat, ptr %573, i32 0, i32 3
  %574 = load i32, ptr %mcols604, align 8
  %mul605 = mul nsw i32 %572, %574
  %575 = load ptr, ptr %bnd.addr, align 8
  %mdeps606 = getelementptr inbounds nuw %struct.Mat, ptr %575, i32 0, i32 4
  %576 = load i32, ptr %mdeps606, align 4
  %mul607 = mul nsw i32 %mul605, %576
  %add608 = add nsw i32 %mul603, %mul607
  %577 = load i32, ptr %j, align 4
  %578 = load ptr, ptr %bnd.addr, align 8
  %mdeps609 = getelementptr inbounds nuw %struct.Mat, ptr %578, i32 0, i32 4
  %579 = load i32, ptr %mdeps609, align 4
  %mul610 = mul nsw i32 %577, %579
  %add611 = add nsw i32 %add608, %mul610
  %580 = load i32, ptr %k, align 4
  %add612 = add nsw i32 %add611, %580
  %idxprom613 = sext i32 %add612 to i64
  %arrayidx614 = getelementptr inbounds float, ptr %565, i64 %idxprom613
  %581 = load float, ptr %arrayidx614, align 4
  %mul615 = fmul float %563, %581
  store float %mul615, ptr %ss, align 4
  %582 = load float, ptr %ss, align 4
  %583 = load float, ptr %ss, align 4
  %584 = load float, ptr %gosa, align 4
  %585 = call float @llvm.fmuladd.f32(float %582, float %583, float %584)
  store float %585, ptr %gosa, align 4
  %586 = load ptr, ptr %p.addr, align 8
  %m617 = getelementptr inbounds nuw %struct.Mat, ptr %586, i32 0, i32 0
  %587 = load ptr, ptr %m617, align 8
  %588 = load ptr, ptr %p.addr, align 8
  %mrows618 = getelementptr inbounds nuw %struct.Mat, ptr %588, i32 0, i32 2
  %589 = load i32, ptr %mrows618, align 4
  %mul619 = mul nsw i32 0, %589
  %590 = load ptr, ptr %p.addr, align 8
  %mcols620 = getelementptr inbounds nuw %struct.Mat, ptr %590, i32 0, i32 3
  %591 = load i32, ptr %mcols620, align 8
  %mul621 = mul nsw i32 %mul619, %591
  %592 = load ptr, ptr %p.addr, align 8
  %mdeps622 = getelementptr inbounds nuw %struct.Mat, ptr %592, i32 0, i32 4
  %593 = load i32, ptr %mdeps622, align 4
  %mul623 = mul nsw i32 %mul621, %593
  %594 = load i32, ptr %i, align 4
  %595 = load ptr, ptr %p.addr, align 8
  %mcols624 = getelementptr inbounds nuw %struct.Mat, ptr %595, i32 0, i32 3
  %596 = load i32, ptr %mcols624, align 8
  %mul625 = mul nsw i32 %594, %596
  %597 = load ptr, ptr %p.addr, align 8
  %mdeps626 = getelementptr inbounds nuw %struct.Mat, ptr %597, i32 0, i32 4
  %598 = load i32, ptr %mdeps626, align 4
  %mul627 = mul nsw i32 %mul625, %598
  %add628 = add nsw i32 %mul623, %mul627
  %599 = load i32, ptr %j, align 4
  %600 = load ptr, ptr %p.addr, align 8
  %mdeps629 = getelementptr inbounds nuw %struct.Mat, ptr %600, i32 0, i32 4
  %601 = load i32, ptr %mdeps629, align 4
  %mul630 = mul nsw i32 %599, %601
  %add631 = add nsw i32 %add628, %mul630
  %602 = load i32, ptr %k, align 4
  %add632 = add nsw i32 %add631, %602
  %idxprom633 = sext i32 %add632 to i64
  %arrayidx634 = getelementptr inbounds float, ptr %587, i64 %idxprom633
  %603 = load float, ptr %arrayidx634, align 4
  %604 = load float, ptr @omega, align 4
  %605 = load float, ptr %ss, align 4
  %606 = call float @llvm.fmuladd.f32(float %604, float %605, float %603)
  %607 = load ptr, ptr %wrk2.addr, align 8
  %m636 = getelementptr inbounds nuw %struct.Mat, ptr %607, i32 0, i32 0
  %608 = load ptr, ptr %m636, align 8
  %609 = load ptr, ptr %wrk2.addr, align 8
  %mrows637 = getelementptr inbounds nuw %struct.Mat, ptr %609, i32 0, i32 2
  %610 = load i32, ptr %mrows637, align 4
  %mul638 = mul nsw i32 0, %610
  %611 = load ptr, ptr %wrk2.addr, align 8
  %mcols639 = getelementptr inbounds nuw %struct.Mat, ptr %611, i32 0, i32 3
  %612 = load i32, ptr %mcols639, align 8
  %mul640 = mul nsw i32 %mul638, %612
  %613 = load ptr, ptr %wrk2.addr, align 8
  %mdeps641 = getelementptr inbounds nuw %struct.Mat, ptr %613, i32 0, i32 4
  %614 = load i32, ptr %mdeps641, align 4
  %mul642 = mul nsw i32 %mul640, %614
  %615 = load i32, ptr %i, align 4
  %616 = load ptr, ptr %wrk2.addr, align 8
  %mcols643 = getelementptr inbounds nuw %struct.Mat, ptr %616, i32 0, i32 3
  %617 = load i32, ptr %mcols643, align 8
  %mul644 = mul nsw i32 %615, %617
  %618 = load ptr, ptr %wrk2.addr, align 8
  %mdeps645 = getelementptr inbounds nuw %struct.Mat, ptr %618, i32 0, i32 4
  %619 = load i32, ptr %mdeps645, align 4
  %mul646 = mul nsw i32 %mul644, %619
  %add647 = add nsw i32 %mul642, %mul646
  %620 = load i32, ptr %j, align 4
  %621 = load ptr, ptr %wrk2.addr, align 8
  %mdeps648 = getelementptr inbounds nuw %struct.Mat, ptr %621, i32 0, i32 4
  %622 = load i32, ptr %mdeps648, align 4
  %mul649 = mul nsw i32 %620, %622
  %add650 = add nsw i32 %add647, %mul649
  %623 = load i32, ptr %k, align 4
  %add651 = add nsw i32 %add650, %623
  %idxprom652 = sext i32 %add651 to i64
  %arrayidx653 = getelementptr inbounds float, ptr %608, i64 %idxprom652
  store float %606, ptr %arrayidx653, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %624 = load i32, ptr %k, align 4
  %inc = add nsw i32 %624, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond9, !llvm.loop !13

for.end:                                          ; preds = %for.cond9
  br label %for.inc654

for.inc654:                                       ; preds = %for.end
  %625 = load i32, ptr %j, align 4
  %inc655 = add nsw i32 %625, 1
  store i32 %inc655, ptr %j, align 4
  br label %for.cond6, !llvm.loop !14

for.end656:                                       ; preds = %for.cond6
  br label %for.inc657

for.inc657:                                       ; preds = %for.end656
  %626 = load i32, ptr %i, align 4
  %inc658 = add nsw i32 %626, 1
  store i32 %inc658, ptr %i, align 4
  br label %for.cond3, !llvm.loop !15

for.end659:                                       ; preds = %for.cond3
  store i32 1, ptr %i, align 4
  br label %for.cond660

for.cond660:                                      ; preds = %for.inc711, %for.end659
  %627 = load i32, ptr %i, align 4
  %628 = load i32, ptr %imax, align 4
  %cmp661 = icmp slt i32 %627, %628
  br i1 %cmp661, label %for.body662, label %for.end713

for.body662:                                      ; preds = %for.cond660
  store i32 1, ptr %j, align 4
  br label %for.cond663

for.cond663:                                      ; preds = %for.inc708, %for.body662
  %629 = load i32, ptr %j, align 4
  %630 = load i32, ptr %jmax, align 4
  %cmp664 = icmp slt i32 %629, %630
  br i1 %cmp664, label %for.body665, label %for.end710

for.body665:                                      ; preds = %for.cond663
  store i32 1, ptr %k, align 4
  br label %for.cond666

for.cond666:                                      ; preds = %for.inc705, %for.body665
  %631 = load i32, ptr %k, align 4
  %632 = load i32, ptr %kmax, align 4
  %cmp667 = icmp slt i32 %631, %632
  br i1 %cmp667, label %for.body668, label %for.end707

for.body668:                                      ; preds = %for.cond666
  %633 = load ptr, ptr %wrk2.addr, align 8
  %m669 = getelementptr inbounds nuw %struct.Mat, ptr %633, i32 0, i32 0
  %634 = load ptr, ptr %m669, align 8
  %635 = load ptr, ptr %wrk2.addr, align 8
  %mrows670 = getelementptr inbounds nuw %struct.Mat, ptr %635, i32 0, i32 2
  %636 = load i32, ptr %mrows670, align 4
  %mul671 = mul nsw i32 0, %636
  %637 = load ptr, ptr %wrk2.addr, align 8
  %mcols672 = getelementptr inbounds nuw %struct.Mat, ptr %637, i32 0, i32 3
  %638 = load i32, ptr %mcols672, align 8
  %mul673 = mul nsw i32 %mul671, %638
  %639 = load ptr, ptr %wrk2.addr, align 8
  %mdeps674 = getelementptr inbounds nuw %struct.Mat, ptr %639, i32 0, i32 4
  %640 = load i32, ptr %mdeps674, align 4
  %mul675 = mul nsw i32 %mul673, %640
  %641 = load i32, ptr %i, align 4
  %642 = load ptr, ptr %wrk2.addr, align 8
  %mcols676 = getelementptr inbounds nuw %struct.Mat, ptr %642, i32 0, i32 3
  %643 = load i32, ptr %mcols676, align 8
  %mul677 = mul nsw i32 %641, %643
  %644 = load ptr, ptr %wrk2.addr, align 8
  %mdeps678 = getelementptr inbounds nuw %struct.Mat, ptr %644, i32 0, i32 4
  %645 = load i32, ptr %mdeps678, align 4
  %mul679 = mul nsw i32 %mul677, %645
  %add680 = add nsw i32 %mul675, %mul679
  %646 = load i32, ptr %j, align 4
  %647 = load ptr, ptr %wrk2.addr, align 8
  %mdeps681 = getelementptr inbounds nuw %struct.Mat, ptr %647, i32 0, i32 4
  %648 = load i32, ptr %mdeps681, align 4
  %mul682 = mul nsw i32 %646, %648
  %add683 = add nsw i32 %add680, %mul682
  %649 = load i32, ptr %k, align 4
  %add684 = add nsw i32 %add683, %649
  %idxprom685 = sext i32 %add684 to i64
  %arrayidx686 = getelementptr inbounds float, ptr %634, i64 %idxprom685
  %650 = load float, ptr %arrayidx686, align 4
  %651 = load ptr, ptr %p.addr, align 8
  %m687 = getelementptr inbounds nuw %struct.Mat, ptr %651, i32 0, i32 0
  %652 = load ptr, ptr %m687, align 8
  %653 = load ptr, ptr %p.addr, align 8
  %mrows688 = getelementptr inbounds nuw %struct.Mat, ptr %653, i32 0, i32 2
  %654 = load i32, ptr %mrows688, align 4
  %mul689 = mul nsw i32 0, %654
  %655 = load ptr, ptr %p.addr, align 8
  %mcols690 = getelementptr inbounds nuw %struct.Mat, ptr %655, i32 0, i32 3
  %656 = load i32, ptr %mcols690, align 8
  %mul691 = mul nsw i32 %mul689, %656
  %657 = load ptr, ptr %p.addr, align 8
  %mdeps692 = getelementptr inbounds nuw %struct.Mat, ptr %657, i32 0, i32 4
  %658 = load i32, ptr %mdeps692, align 4
  %mul693 = mul nsw i32 %mul691, %658
  %659 = load i32, ptr %i, align 4
  %660 = load ptr, ptr %p.addr, align 8
  %mcols694 = getelementptr inbounds nuw %struct.Mat, ptr %660, i32 0, i32 3
  %661 = load i32, ptr %mcols694, align 8
  %mul695 = mul nsw i32 %659, %661
  %662 = load ptr, ptr %p.addr, align 8
  %mdeps696 = getelementptr inbounds nuw %struct.Mat, ptr %662, i32 0, i32 4
  %663 = load i32, ptr %mdeps696, align 4
  %mul697 = mul nsw i32 %mul695, %663
  %add698 = add nsw i32 %mul693, %mul697
  %664 = load i32, ptr %j, align 4
  %665 = load ptr, ptr %p.addr, align 8
  %mdeps699 = getelementptr inbounds nuw %struct.Mat, ptr %665, i32 0, i32 4
  %666 = load i32, ptr %mdeps699, align 4
  %mul700 = mul nsw i32 %664, %666
  %add701 = add nsw i32 %add698, %mul700
  %667 = load i32, ptr %k, align 4
  %add702 = add nsw i32 %add701, %667
  %idxprom703 = sext i32 %add702 to i64
  %arrayidx704 = getelementptr inbounds float, ptr %652, i64 %idxprom703
  store float %650, ptr %arrayidx704, align 4
  br label %for.inc705

for.inc705:                                       ; preds = %for.body668
  %668 = load i32, ptr %k, align 4
  %inc706 = add nsw i32 %668, 1
  store i32 %inc706, ptr %k, align 4
  br label %for.cond666, !llvm.loop !16

for.end707:                                       ; preds = %for.cond666
  br label %for.inc708

for.inc708:                                       ; preds = %for.end707
  %669 = load i32, ptr %j, align 4
  %inc709 = add nsw i32 %669, 1
  store i32 %inc709, ptr %j, align 4
  br label %for.cond663, !llvm.loop !17

for.end710:                                       ; preds = %for.cond663
  br label %for.inc711

for.inc711:                                       ; preds = %for.end710
  %670 = load i32, ptr %i, align 4
  %inc712 = add nsw i32 %670, 1
  store i32 %inc712, ptr %i, align 4
  br label %for.cond660, !llvm.loop !18

for.end713:                                       ; preds = %for.cond660
  br label %for.inc714

for.inc714:                                       ; preds = %for.end713
  %671 = load i32, ptr %n, align 4
  %inc715 = add nsw i32 %671, 1
  store i32 %inc715, ptr %n, align 4
  br label %for.cond, !llvm.loop !19

for.end716:                                       ; preds = %for.cond
  %672 = load float, ptr %gosa, align 4
  ret float %672
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @clearMat(ptr noundef %Mat) #0 {
entry:
  %Mat.addr = alloca ptr, align 8
  store ptr %Mat, ptr %Mat.addr, align 8
  %0 = load ptr, ptr %Mat.addr, align 8
  %m = getelementptr inbounds nuw %struct.Mat, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %m, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %Mat.addr, align 8
  %m1 = getelementptr inbounds nuw %struct.Mat, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %m1, align 8
  call void @free(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %Mat.addr, align 8
  %m2 = getelementptr inbounds nuw %struct.Mat, ptr %4, i32 0, i32 0
  store ptr null, ptr %m2, align 8
  %5 = load ptr, ptr %Mat.addr, align 8
  %mnums = getelementptr inbounds nuw %struct.Mat, ptr %5, i32 0, i32 1
  store i32 0, ptr %mnums, align 8
  %6 = load ptr, ptr %Mat.addr, align 8
  %mcols = getelementptr inbounds nuw %struct.Mat, ptr %6, i32 0, i32 3
  store i32 0, ptr %mcols, align 8
  %7 = load ptr, ptr %Mat.addr, align 8
  %mrows = getelementptr inbounds nuw %struct.Mat, ptr %7, i32 0, i32 2
  store i32 0, ptr %mrows, align 4
  %8 = load ptr, ptr %Mat.addr, align 8
  %mdeps = getelementptr inbounds nuw %struct.Mat, ptr %8, i32 0, i32 4
  store i32 0, ptr %mdeps, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @fflop(i32 noundef %mx, i32 noundef %my, i32 noundef %mz) #0 {
entry:
  %mx.addr = alloca i32, align 4
  %my.addr = alloca i32, align 4
  %mz.addr = alloca i32, align 4
  store i32 %mx, ptr %mx.addr, align 4
  store i32 %my, ptr %my.addr, align 4
  store i32 %mz, ptr %mz.addr, align 4
  %0 = load i32, ptr %mz.addr, align 4
  %sub = sub nsw i32 %0, 2
  %conv = sitofp i32 %sub to double
  %1 = load i32, ptr %my.addr, align 4
  %sub1 = sub nsw i32 %1, 2
  %conv2 = sitofp i32 %sub1 to double
  %mul = fmul double %conv, %conv2
  %2 = load i32, ptr %mx.addr, align 4
  %sub3 = sub nsw i32 %2, 2
  %conv4 = sitofp i32 %sub3 to double
  %mul5 = fmul double %mul, %conv4
  %mul6 = fmul double %mul5, 3.400000e+01
  ret double %mul6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @mflops(i32 noundef %nn, double noundef %cpu, double noundef %flop) #0 {
entry:
  %nn.addr = alloca i32, align 4
  %cpu.addr = alloca double, align 8
  %flop.addr = alloca double, align 8
  store i32 %nn, ptr %nn.addr, align 4
  store double %cpu, ptr %cpu.addr, align 8
  store double %flop, ptr %flop.addr, align 8
  %0 = load double, ptr %flop.addr, align 8
  %1 = load double, ptr %cpu.addr, align 8
  %div = fdiv double %0, %1
  %mul = fmul double %div, 0x3EB0C6F7A0B5ED8D
  %2 = load i32, ptr %nn.addr, align 4
  %conv = sitofp i32 %2 to double
  %mul1 = fmul double %mul, %conv
  ret double %mul1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @set_param(ptr noundef %is, ptr noundef %size) #0 {
entry:
  %is.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %is, ptr %is.addr, align 8
  store ptr %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %size.addr, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.4) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %size.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.5) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %is.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  store i32 32, ptr %arrayidx, align 4
  %3 = load ptr, ptr %is.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 32, ptr %arrayidx3, align 4
  %4 = load ptr, ptr %is.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 2
  store i32 64, ptr %arrayidx4, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %size.addr, align 8
  %call5 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.6) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.lhs.false7, label %if.then10

lor.lhs.false7:                                   ; preds = %if.end
  %6 = load ptr, ptr %size.addr, align 8
  %call8 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.7) #7
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false7, %if.end
  %7 = load ptr, ptr %is.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %7, i64 0
  store i32 64, ptr %arrayidx11, align 4
  %8 = load ptr, ptr %is.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 64, ptr %arrayidx12, align 4
  %9 = load ptr, ptr %is.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %9, i64 2
  store i32 128, ptr %arrayidx13, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false7
  %10 = load ptr, ptr %size.addr, align 8
  %call15 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.8) #7
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false17, label %if.then20

lor.lhs.false17:                                  ; preds = %if.end14
  %11 = load ptr, ptr %size.addr, align 8
  %call18 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.9) #7
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end24, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17, %if.end14
  %12 = load ptr, ptr %is.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %12, i64 0
  store i32 128, ptr %arrayidx21, align 4
  %13 = load ptr, ptr %is.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %13, i64 1
  store i32 128, ptr %arrayidx22, align 4
  %14 = load ptr, ptr %is.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %14, i64 2
  store i32 256, ptr %arrayidx23, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false17
  %15 = load ptr, ptr %size.addr, align 8
  %call25 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.10) #7
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %if.end24
  %16 = load ptr, ptr %size.addr, align 8
  %call28 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.11) #7
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27, %if.end24
  %17 = load ptr, ptr %is.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %17, i64 0
  store i32 256, ptr %arrayidx31, align 4
  %18 = load ptr, ptr %is.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 256, ptr %arrayidx32, align 4
  %19 = load ptr, ptr %is.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %19, i64 2
  store i32 512, ptr %arrayidx33, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false27
  %20 = load ptr, ptr %size.addr, align 8
  %call35 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.12) #7
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false37, label %if.then40

lor.lhs.false37:                                  ; preds = %if.end34
  %21 = load ptr, ptr %size.addr, align 8
  %call38 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.13) #7
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false37, %if.end34
  %22 = load ptr, ptr %is.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %22, i64 0
  store i32 512, ptr %arrayidx41, align 4
  %23 = load ptr, ptr %is.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 512, ptr %arrayidx42, align 4
  %24 = load ptr, ptr %is.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %24, i64 2
  store i32 1024, ptr %arrayidx43, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false37
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  call void @exit(i32 noundef 6) #8
  unreachable

return:                                           ; preds = %if.then40, %if.then30, %if.then20, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

declare void @free(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @second() #0 {
entry:
  %tm = alloca %struct.timeval, align 8
  %t = alloca double, align 8
  %call = call i32 @gettimeofday(ptr noundef %tm, ptr noundef null)
  %0 = load i32, ptr @second.base_sec, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @second.base_usec, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %tv_sec = getelementptr inbounds nuw %struct.timeval, ptr %tm, i32 0, i32 0
  %2 = load i64, ptr %tv_sec, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, ptr @second.base_sec, align 4
  %tv_usec = getelementptr inbounds nuw %struct.timeval, ptr %tm, i32 0, i32 1
  %3 = load i32, ptr %tv_usec, align 8
  store i32 %3, ptr @second.base_usec, align 4
  store double 0.000000e+00, ptr %t, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %tv_sec2 = getelementptr inbounds nuw %struct.timeval, ptr %tm, i32 0, i32 0
  %4 = load i64, ptr %tv_sec2, align 8
  %5 = load i32, ptr @second.base_sec, align 4
  %conv3 = sext i32 %5 to i64
  %sub = sub nsw i64 %4, %conv3
  %conv4 = sitofp i64 %sub to double
  %tv_usec5 = getelementptr inbounds nuw %struct.timeval, ptr %tm, i32 0, i32 1
  %6 = load i32, ptr %tv_usec5, align 8
  %7 = load i32, ptr @second.base_usec, align 4
  %sub6 = sub nsw i32 %6, %7
  %conv7 = sitofp i32 %sub6 to double
  %div = fdiv double %conv7, 1.000000e+06
  %add = fadd double %conv4, %div
  store double %add, ptr %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, ptr %t, align 8
  ret double %8
}

declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
