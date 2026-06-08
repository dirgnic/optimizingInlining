; ModuleID = './source_snapshot/public_repos/mibench/office/ghostscript/src/bench.c'
source_filename = "./source_snapshot/public_repos/mibench/office/ghostscript/src/bench.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@gp_scratch_file_name_prefix = constant [4 x i8] c"gs_\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@__stdoutp = external global ptr, align 8
@gs_stdout = global ptr null, align 8
@__stderrp = external global ptr, align 8
@gs_stderr = global ptr null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Time for %9d %s = %g ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"integer adds\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"integer multiplies\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"integer divides\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"floating adds\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"floating multiplies\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"floating divides\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"float/int conversions\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"fast memory accesses\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"slow memory accesses\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gp_init_console() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @gp_open_scratch_file(ptr noundef %prefix, ptr noundef %fname, ptr noundef %mode) #0 {
entry:
  %prefix.addr = alloca ptr, align 8
  %fname.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %prefix, ptr %prefix.addr, align 8
  store ptr %fname, ptr %fname.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gp_set_printer_binary(i32 noundef %prnfno, i32 noundef %binary) #0 {
entry:
  %prnfno.addr = alloca i32, align 4
  %binary.addr = alloca i32, align 4
  store i32 %prnfno, ptr %prnfno.addr, align 4
  store i32 %binary, ptr %binary.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gs_exit(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  call void @exit(i32 noundef %0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @lprintf_file_and_line(ptr noundef %f, ptr noundef %file, i32 noundef %line) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  store ptr %file, ptr %file.addr, align 8
  store i32 %line, ptr %line.addr, align 4
  %0 = load ptr, ptr %f.addr, align 8
  %1 = load ptr, ptr %file.addr, align 8
  %2 = load i32, ptr %line.addr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, ptr noundef %1, i32 noundef %2)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = alloca ptr, align 8
  %t0 = alloca [2 x i64], align 8
  %t1 = alloca [2 x i64], align 8
  %msg = alloca ptr, align 8
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @malloc(i64 noundef 1100000) #6
  store ptr %call, ptr %mem, align 8
  %0 = load ptr, ptr @__stdoutp, align 8
  store ptr %0, ptr @gs_stdout, align 8
  %1 = load ptr, ptr @__stderrp, align 8
  store ptr %1, ptr @gs_stderr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay = getelementptr inbounds [2 x i64], ptr %t0, i64 0, i64 0
  call void @gp_get_usertime(ptr noundef %arraydecay)
  %2 = load i32, ptr %i, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
    i32 6, label %sw.bb12
    i32 7, label %sw.bb14
    i32 8, label %sw.bb16
  ]

sw.bb:                                            ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call1 = call i32 @iadd(i32 noundef 0, i32 noundef 10000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.cond
  store i32 1000000, ptr %n, align 4
  %call3 = call i32 @imul(i32 noundef 1, i32 noundef 1000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.cond
  store i32 1000000, ptr %n, align 4
  %call5 = call i32 @idiv(i32 noundef 1, i32 noundef 1000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call7 = call i32 @fadd(float noundef 0x40091EB860000000, i32 noundef 10000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call9 = call i32 @fmul(float noundef 0x3FF0000020000000, i32 noundef 10000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.cond
  store i32 1000000, ptr %n, align 4
  %call11 = call i32 @fdiv(float noundef 0x3FF0000020000000, i32 noundef 1000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call13 = call i32 @fconv(i32 noundef 12345, i32 noundef 10000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.cond
  %3 = load ptr, ptr %mem, align 8
  store i32 10000000, ptr %n, align 4
  %call15 = call i32 @mfast(ptr noundef %3, i32 noundef 10000000, ptr noundef %msg)
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.cond
  %4 = load ptr, ptr %mem, align 8
  store i32 1000000, ptr %n, align 4
  %call17 = call i32 @mslow(ptr noundef %4, i32 noundef 1000000, ptr noundef %msg)
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %5 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %5)
  call void @exit(i32 noundef 0) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %arraydecay18 = getelementptr inbounds [2 x i64], ptr %t1, i64 0, i64 0
  call void @gp_get_usertime(ptr noundef %arraydecay18)
  %6 = load i32, ptr %n, align 4
  %7 = load ptr, ptr %msg, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %t1, i64 0, i64 0
  %8 = load i64, ptr %arrayidx, align 8
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %t0, i64 0, i64 0
  %9 = load i64, ptr %arrayidx19, align 8
  %sub = sub nsw i64 %8, %9
  %conv = sitofp i64 %sub to double
  %arrayidx20 = getelementptr inbounds [2 x i64], ptr %t1, i64 0, i64 1
  %10 = load i64, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %t0, i64 0, i64 1
  %11 = load i64, ptr %arrayidx21, align 8
  %sub22 = sub nsw i64 %10, %11
  %conv23 = sitofp i64 %sub22 to double
  %div = fdiv double %conv23, 1.000000e+06
  %12 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %div)
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, ptr noundef %7, double noundef %12)
  %13 = load ptr, ptr @__stdoutp, align 8
  %call25 = call i32 @fflush(ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare void @gp_get_usertime(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @iadd(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 0, ptr %b, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %a.addr, align 4
  %3 = load i32, ptr %b, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %b, align 4
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %b, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, ptr %b, align 4
  %6 = load i32, ptr %a.addr, align 4
  %7 = load i32, ptr %b, align 4
  %add2 = add nsw i32 %7, %6
  store i32 %add2, ptr %b, align 4
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %b, align 4
  %add3 = add nsw i32 %9, %8
  store i32 %add3, ptr %b, align 4
  %10 = load i32, ptr %a.addr, align 4
  %11 = load i32, ptr %b, align 4
  %add4 = add nsw i32 %11, %10
  store i32 %add4, ptr %b, align 4
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %b, align 4
  %add5 = add nsw i32 %13, %12
  store i32 %add5, ptr %b, align 4
  %14 = load i32, ptr %a.addr, align 4
  %15 = load i32, ptr %b, align 4
  %add6 = add nsw i32 %15, %14
  store i32 %add6, ptr %b, align 4
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %b, align 4
  %add7 = add nsw i32 %17, %16
  store i32 %add7, ptr %b, align 4
  %18 = load i32, ptr %a.addr, align 4
  %19 = load i32, ptr %b, align 4
  %add8 = add nsw i32 %19, %18
  store i32 %add8, ptr %b, align 4
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %b, align 4
  %add9 = add nsw i32 %21, %20
  store i32 %add9, ptr %b, align 4
  %22 = load i32, ptr %a.addr, align 4
  %23 = load i32, ptr %b, align 4
  %add10 = add nsw i32 %23, %22
  store i32 %add10, ptr %b, align 4
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %b, align 4
  %add11 = add nsw i32 %25, %24
  store i32 %add11, ptr %b, align 4
  %26 = load i32, ptr %a.addr, align 4
  %27 = load i32, ptr %b, align 4
  %add12 = add nsw i32 %27, %26
  store i32 %add12, ptr %b, align 4
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %b, align 4
  %add13 = add nsw i32 %29, %28
  store i32 %add13, ptr %b, align 4
  %30 = load i32, ptr %a.addr, align 4
  %31 = load i32, ptr %b, align 4
  %add14 = add nsw i32 %31, %30
  store i32 %add14, ptr %b, align 4
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %b, align 4
  %add15 = add nsw i32 %33, %32
  store i32 %add15, ptr %b, align 4
  %34 = load i32, ptr %a.addr, align 4
  %35 = load i32, ptr %b, align 4
  %add16 = add nsw i32 %35, %34
  store i32 %add16, ptr %b, align 4
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %b, align 4
  %add17 = add nsw i32 %37, %36
  store i32 %add17, ptr %b, align 4
  %38 = load i32, ptr %a.addr, align 4
  %39 = load i32, ptr %b, align 4
  %add18 = add nsw i32 %39, %38
  store i32 %add18, ptr %b, align 4
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %b, align 4
  %add19 = add nsw i32 %41, %40
  store i32 %add19, ptr %b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.2, ptr %42, align 8
  %43 = load i32, ptr %b, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @imul(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 1, ptr %b, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %a.addr, align 4
  %3 = load i32, ptr %b, align 4
  %mul = mul nsw i32 %3, %2
  store i32 %mul, ptr %b, align 4
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %b, align 4
  %mul1 = mul nsw i32 %5, %4
  store i32 %mul1, ptr %b, align 4
  %6 = load i32, ptr %a.addr, align 4
  %7 = load i32, ptr %b, align 4
  %mul2 = mul nsw i32 %7, %6
  store i32 %mul2, ptr %b, align 4
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %b, align 4
  %mul3 = mul nsw i32 %9, %8
  store i32 %mul3, ptr %b, align 4
  %10 = load i32, ptr %a.addr, align 4
  %11 = load i32, ptr %b, align 4
  %mul4 = mul nsw i32 %11, %10
  store i32 %mul4, ptr %b, align 4
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %b, align 4
  %mul5 = mul nsw i32 %13, %12
  store i32 %mul5, ptr %b, align 4
  %14 = load i32, ptr %a.addr, align 4
  %15 = load i32, ptr %b, align 4
  %mul6 = mul nsw i32 %15, %14
  store i32 %mul6, ptr %b, align 4
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %b, align 4
  %mul7 = mul nsw i32 %17, %16
  store i32 %mul7, ptr %b, align 4
  %18 = load i32, ptr %a.addr, align 4
  %19 = load i32, ptr %b, align 4
  %mul8 = mul nsw i32 %19, %18
  store i32 %mul8, ptr %b, align 4
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %b, align 4
  %mul9 = mul nsw i32 %21, %20
  store i32 %mul9, ptr %b, align 4
  %22 = load i32, ptr %a.addr, align 4
  %23 = load i32, ptr %b, align 4
  %mul10 = mul nsw i32 %23, %22
  store i32 %mul10, ptr %b, align 4
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %b, align 4
  %mul11 = mul nsw i32 %25, %24
  store i32 %mul11, ptr %b, align 4
  %26 = load i32, ptr %a.addr, align 4
  %27 = load i32, ptr %b, align 4
  %mul12 = mul nsw i32 %27, %26
  store i32 %mul12, ptr %b, align 4
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %b, align 4
  %mul13 = mul nsw i32 %29, %28
  store i32 %mul13, ptr %b, align 4
  %30 = load i32, ptr %a.addr, align 4
  %31 = load i32, ptr %b, align 4
  %mul14 = mul nsw i32 %31, %30
  store i32 %mul14, ptr %b, align 4
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %b, align 4
  %mul15 = mul nsw i32 %33, %32
  store i32 %mul15, ptr %b, align 4
  %34 = load i32, ptr %a.addr, align 4
  %35 = load i32, ptr %b, align 4
  %mul16 = mul nsw i32 %35, %34
  store i32 %mul16, ptr %b, align 4
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %b, align 4
  %mul17 = mul nsw i32 %37, %36
  store i32 %mul17, ptr %b, align 4
  %38 = load i32, ptr %a.addr, align 4
  %39 = load i32, ptr %b, align 4
  %mul18 = mul nsw i32 %39, %38
  store i32 %mul18, ptr %b, align 4
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %b, align 4
  %mul19 = mul nsw i32 %41, %40
  store i32 %mul19, ptr %b, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.3, ptr %42, align 8
  %43 = load i32, ptr %b, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @idiv(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 1, ptr %b, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %b, align 4
  %add = add nsw i32 %2, 999999
  store i32 %add, ptr %b, align 4
  %3 = load i32, ptr %a.addr, align 4
  %4 = load i32, ptr %b, align 4
  %div1 = sdiv i32 %4, %3
  store i32 %div1, ptr %b, align 4
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %b, align 4
  %div2 = sdiv i32 %6, %5
  store i32 %div2, ptr %b, align 4
  %7 = load i32, ptr %a.addr, align 4
  %8 = load i32, ptr %b, align 4
  %div3 = sdiv i32 %8, %7
  store i32 %div3, ptr %b, align 4
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %b, align 4
  %div4 = sdiv i32 %10, %9
  store i32 %div4, ptr %b, align 4
  %11 = load i32, ptr %a.addr, align 4
  %12 = load i32, ptr %b, align 4
  %div5 = sdiv i32 %12, %11
  store i32 %div5, ptr %b, align 4
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %b, align 4
  %div6 = sdiv i32 %14, %13
  store i32 %div6, ptr %b, align 4
  %15 = load i32, ptr %a.addr, align 4
  %16 = load i32, ptr %b, align 4
  %div7 = sdiv i32 %16, %15
  store i32 %div7, ptr %b, align 4
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %b, align 4
  %div8 = sdiv i32 %18, %17
  store i32 %div8, ptr %b, align 4
  %19 = load i32, ptr %a.addr, align 4
  %20 = load i32, ptr %b, align 4
  %div9 = sdiv i32 %20, %19
  store i32 %div9, ptr %b, align 4
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %b, align 4
  %div10 = sdiv i32 %22, %21
  store i32 %div10, ptr %b, align 4
  %23 = load i32, ptr %a.addr, align 4
  %24 = load i32, ptr %b, align 4
  %div11 = sdiv i32 %24, %23
  store i32 %div11, ptr %b, align 4
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %b, align 4
  %div12 = sdiv i32 %26, %25
  store i32 %div12, ptr %b, align 4
  %27 = load i32, ptr %a.addr, align 4
  %28 = load i32, ptr %b, align 4
  %div13 = sdiv i32 %28, %27
  store i32 %div13, ptr %b, align 4
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %b, align 4
  %div14 = sdiv i32 %30, %29
  store i32 %div14, ptr %b, align 4
  %31 = load i32, ptr %a.addr, align 4
  %32 = load i32, ptr %b, align 4
  %div15 = sdiv i32 %32, %31
  store i32 %div15, ptr %b, align 4
  %33 = load i32, ptr %i, align 4
  %34 = load i32, ptr %b, align 4
  %div16 = sdiv i32 %34, %33
  store i32 %div16, ptr %b, align 4
  %35 = load i32, ptr %a.addr, align 4
  %36 = load i32, ptr %b, align 4
  %div17 = sdiv i32 %36, %35
  store i32 %div17, ptr %b, align 4
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %b, align 4
  %div18 = sdiv i32 %38, %37
  store i32 %div18, ptr %b, align 4
  %39 = load i32, ptr %a.addr, align 4
  %40 = load i32, ptr %b, align 4
  %div19 = sdiv i32 %40, %39
  store i32 %div19, ptr %b, align 4
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %b, align 4
  %div20 = sdiv i32 %42, %41
  store i32 %div20, ptr %b, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.4, ptr %43, align 8
  %44 = load i32, ptr %b, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fadd(float noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca float, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store float 0.000000e+00, ptr %b, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 10
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float, ptr %a.addr, align 4
  %3 = load float, ptr %b, align 4
  %add = fadd float %3, %2
  store float %add, ptr %b, align 4
  %4 = load float, ptr %a.addr, align 4
  %5 = load float, ptr %b, align 4
  %add1 = fadd float %5, %4
  store float %add1, ptr %b, align 4
  %6 = load float, ptr %a.addr, align 4
  %7 = load float, ptr %b, align 4
  %add2 = fadd float %7, %6
  store float %add2, ptr %b, align 4
  %8 = load float, ptr %a.addr, align 4
  %9 = load float, ptr %b, align 4
  %add3 = fadd float %9, %8
  store float %add3, ptr %b, align 4
  %10 = load float, ptr %a.addr, align 4
  %11 = load float, ptr %b, align 4
  %add4 = fadd float %11, %10
  store float %add4, ptr %b, align 4
  %12 = load float, ptr %a.addr, align 4
  %13 = load float, ptr %b, align 4
  %add5 = fadd float %13, %12
  store float %add5, ptr %b, align 4
  %14 = load float, ptr %a.addr, align 4
  %15 = load float, ptr %b, align 4
  %add6 = fadd float %15, %14
  store float %add6, ptr %b, align 4
  %16 = load float, ptr %a.addr, align 4
  %17 = load float, ptr %b, align 4
  %add7 = fadd float %17, %16
  store float %add7, ptr %b, align 4
  %18 = load float, ptr %a.addr, align 4
  %19 = load float, ptr %b, align 4
  %add8 = fadd float %19, %18
  store float %add8, ptr %b, align 4
  %20 = load float, ptr %a.addr, align 4
  %21 = load float, ptr %b, align 4
  %add9 = fadd float %21, %20
  store float %add9, ptr %b, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.5, ptr %22, align 8
  %23 = load float, ptr %b, align 4
  %conv = fptosi float %23 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fmul(float noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca float, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store float 1.000000e+00, ptr %b, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 10
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float, ptr %a.addr, align 4
  %3 = load float, ptr %b, align 4
  %mul = fmul float %3, %2
  store float %mul, ptr %b, align 4
  %4 = load float, ptr %a.addr, align 4
  %5 = load float, ptr %b, align 4
  %mul1 = fmul float %5, %4
  store float %mul1, ptr %b, align 4
  %6 = load float, ptr %a.addr, align 4
  %7 = load float, ptr %b, align 4
  %mul2 = fmul float %7, %6
  store float %mul2, ptr %b, align 4
  %8 = load float, ptr %a.addr, align 4
  %9 = load float, ptr %b, align 4
  %mul3 = fmul float %9, %8
  store float %mul3, ptr %b, align 4
  %10 = load float, ptr %a.addr, align 4
  %11 = load float, ptr %b, align 4
  %mul4 = fmul float %11, %10
  store float %mul4, ptr %b, align 4
  %12 = load float, ptr %a.addr, align 4
  %13 = load float, ptr %b, align 4
  %mul5 = fmul float %13, %12
  store float %mul5, ptr %b, align 4
  %14 = load float, ptr %a.addr, align 4
  %15 = load float, ptr %b, align 4
  %mul6 = fmul float %15, %14
  store float %mul6, ptr %b, align 4
  %16 = load float, ptr %a.addr, align 4
  %17 = load float, ptr %b, align 4
  %mul7 = fmul float %17, %16
  store float %mul7, ptr %b, align 4
  %18 = load float, ptr %a.addr, align 4
  %19 = load float, ptr %b, align 4
  %mul8 = fmul float %19, %18
  store float %mul8, ptr %b, align 4
  %20 = load float, ptr %a.addr, align 4
  %21 = load float, ptr %b, align 4
  %mul9 = fmul float %21, %20
  store float %mul9, ptr %b, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.6, ptr %22, align 8
  %23 = load float, ptr %b, align 4
  %conv = fptosi float %23 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fdiv(float noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca float, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store float 1.000000e+00, ptr %b, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 10
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float, ptr %a.addr, align 4
  %3 = load float, ptr %b, align 4
  %div1 = fdiv float %3, %2
  store float %div1, ptr %b, align 4
  %4 = load float, ptr %a.addr, align 4
  %5 = load float, ptr %b, align 4
  %div2 = fdiv float %5, %4
  store float %div2, ptr %b, align 4
  %6 = load float, ptr %a.addr, align 4
  %7 = load float, ptr %b, align 4
  %div3 = fdiv float %7, %6
  store float %div3, ptr %b, align 4
  %8 = load float, ptr %a.addr, align 4
  %9 = load float, ptr %b, align 4
  %div4 = fdiv float %9, %8
  store float %div4, ptr %b, align 4
  %10 = load float, ptr %a.addr, align 4
  %11 = load float, ptr %b, align 4
  %div5 = fdiv float %11, %10
  store float %div5, ptr %b, align 4
  %12 = load float, ptr %a.addr, align 4
  %13 = load float, ptr %b, align 4
  %div6 = fdiv float %13, %12
  store float %div6, ptr %b, align 4
  %14 = load float, ptr %a.addr, align 4
  %15 = load float, ptr %b, align 4
  %div7 = fdiv float %15, %14
  store float %div7, ptr %b, align 4
  %16 = load float, ptr %a.addr, align 4
  %17 = load float, ptr %b, align 4
  %div8 = fdiv float %17, %16
  store float %div8, ptr %b, align 4
  %18 = load float, ptr %a.addr, align 4
  %19 = load float, ptr %b, align 4
  %div9 = fdiv float %19, %18
  store float %div9, ptr %b, align 4
  %20 = load float, ptr %a.addr, align 4
  %21 = load float, ptr %b, align 4
  %div10 = fdiv float %21, %20
  store float %div10, ptr %b, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.7, ptr %22, align 8
  %23 = load float, ptr %b, align 4
  %conv = fptosi float %23 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fconv(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca [10 x i32], align 4
  %f = alloca [10 x float], align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  %0 = load i32, ptr %a.addr, align 4
  %arrayidx = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  store i32 %0, ptr %arrayidx, align 4
  %1 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %1, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, ptr %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  %conv = sitofp i32 %3 to float
  %arrayidx2 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 0
  store float %conv, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 1
  %4 = load i32, ptr %arrayidx3, align 4
  %conv4 = sitofp i32 %4 to float
  %arrayidx5 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 1
  store float %conv4, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 2
  %5 = load i32, ptr %arrayidx6, align 4
  %conv7 = sitofp i32 %5 to float
  %arrayidx8 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 2
  store float %conv7, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 3
  %6 = load i32, ptr %arrayidx9, align 4
  %conv10 = sitofp i32 %6 to float
  %arrayidx11 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 3
  store float %conv10, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 4
  %7 = load i32, ptr %arrayidx12, align 4
  %conv13 = sitofp i32 %7 to float
  %arrayidx14 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 4
  store float %conv13, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 5
  %8 = load i32, ptr %arrayidx15, align 4
  %conv16 = sitofp i32 %8 to float
  %arrayidx17 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 5
  store float %conv16, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 6
  %9 = load i32, ptr %arrayidx18, align 4
  %conv19 = sitofp i32 %9 to float
  %arrayidx20 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 6
  store float %conv19, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 7
  %10 = load i32, ptr %arrayidx21, align 4
  %conv22 = sitofp i32 %10 to float
  %arrayidx23 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 7
  store float %conv22, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 8
  %11 = load i32, ptr %arrayidx24, align 4
  %conv25 = sitofp i32 %11 to float
  %arrayidx26 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 8
  store float %conv25, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 9
  %12 = load i32, ptr %arrayidx27, align 4
  %conv28 = sitofp i32 %12 to float
  %arrayidx29 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 9
  store float %conv28, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 1
  %13 = load float, ptr %arrayidx30, align 4
  %conv31 = fptosi float %13 to i32
  %arrayidx32 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  store i32 %conv31, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 2
  %14 = load float, ptr %arrayidx33, align 4
  %conv34 = fptosi float %14 to i32
  %arrayidx35 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 1
  store i32 %conv34, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 3
  %15 = load float, ptr %arrayidx36, align 4
  %conv37 = fptosi float %15 to i32
  %arrayidx38 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 2
  store i32 %conv37, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 4
  %16 = load float, ptr %arrayidx39, align 4
  %conv40 = fptosi float %16 to i32
  %arrayidx41 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 3
  store i32 %conv40, ptr %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 5
  %17 = load float, ptr %arrayidx42, align 4
  %conv43 = fptosi float %17 to i32
  %arrayidx44 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 4
  store i32 %conv43, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 6
  %18 = load float, ptr %arrayidx45, align 4
  %conv46 = fptosi float %18 to i32
  %arrayidx47 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 5
  store i32 %conv46, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 7
  %19 = load float, ptr %arrayidx48, align 4
  %conv49 = fptosi float %19 to i32
  %arrayidx50 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 6
  store i32 %conv49, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 8
  %20 = load float, ptr %arrayidx51, align 4
  %conv52 = fptosi float %20 to i32
  %arrayidx53 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 7
  store i32 %conv52, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 9
  %21 = load float, ptr %arrayidx54, align 4
  %conv55 = fptosi float %21 to i32
  %arrayidx56 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 8
  store i32 %conv55, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 0
  %22 = load float, ptr %arrayidx57, align 4
  %conv58 = fptosi float %22 to i32
  %arrayidx59 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 9
  store i32 %conv58, ptr %arrayidx59, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.8, ptr %23, align 8
  %arrayidx60 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  %24 = load i32, ptr %arrayidx60, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @mfast(ptr noundef %m, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %m.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  store i32 %0, ptr %arrayidx, align 4
  %2 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %2, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i32, ptr %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %m.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 8
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = load ptr, ptr %m.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 9
  store i32 %5, ptr %arrayidx2, align 4
  %7 = load ptr, ptr %m.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 7
  %8 = load i32, ptr %arrayidx3, align 4
  %9 = load ptr, ptr %m.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %9, i64 8
  store i32 %8, ptr %arrayidx4, align 4
  %10 = load ptr, ptr %m.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 6
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = load ptr, ptr %m.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 7
  store i32 %11, ptr %arrayidx6, align 4
  %13 = load ptr, ptr %m.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i64 5
  %14 = load i32, ptr %arrayidx7, align 4
  %15 = load ptr, ptr %m.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 6
  store i32 %14, ptr %arrayidx8, align 4
  %16 = load ptr, ptr %m.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %16, i64 4
  %17 = load i32, ptr %arrayidx9, align 4
  %18 = load ptr, ptr %m.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 5
  store i32 %17, ptr %arrayidx10, align 4
  %19 = load ptr, ptr %m.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 3
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %m.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 4
  store i32 %20, ptr %arrayidx12, align 4
  %22 = load ptr, ptr %m.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %22, i64 2
  %23 = load i32, ptr %arrayidx13, align 4
  %24 = load ptr, ptr %m.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 3
  store i32 %23, ptr %arrayidx14, align 4
  %25 = load ptr, ptr %m.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %25, i64 1
  %26 = load i32, ptr %arrayidx15, align 4
  %27 = load ptr, ptr %m.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %27, i64 2
  store i32 %26, ptr %arrayidx16, align 4
  %28 = load ptr, ptr %m.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %28, i64 0
  %29 = load i32, ptr %arrayidx17, align 4
  %30 = load ptr, ptr %m.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %30, i64 1
  store i32 %29, ptr %arrayidx18, align 4
  %31 = load ptr, ptr %m.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %31, i64 9
  %32 = load i32, ptr %arrayidx19, align 4
  %33 = load ptr, ptr %m.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %33, i64 0
  store i32 %32, ptr %arrayidx20, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.9, ptr %34, align 8
  %35 = load ptr, ptr %m.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %35, i64 0
  %36 = load i32, ptr %arrayidx21, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @mslow(ptr noundef %m, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 0, ptr %k, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %m.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  store i32 %0, ptr %arrayidx, align 4
  %2 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %2, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %m.addr, align 8
  %5 = load i32, ptr %k, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %6 = load ptr, ptr %p, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %6, i64 100
  %7 = load i32, ptr %arrayidx1, align 4
  %8 = load ptr, ptr %p, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %8, i64 0
  store i32 %7, ptr %arrayidx2, align 4
  %9 = load ptr, ptr %p, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 120
  %10 = load i32, ptr %arrayidx3, align 4
  %11 = load ptr, ptr %p, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %11, i64 20
  store i32 %10, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %p, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 140
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = load ptr, ptr %p, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %14, i64 40
  store i32 %13, ptr %arrayidx6, align 4
  %15 = load ptr, ptr %p, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i64 160
  %16 = load i32, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %p, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 60
  store i32 %16, ptr %arrayidx8, align 4
  %18 = load ptr, ptr %p, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 180
  %19 = load i32, ptr %arrayidx9, align 4
  %20 = load ptr, ptr %p, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 80
  store i32 %19, ptr %arrayidx10, align 4
  %21 = load ptr, ptr %p, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %21, i64 300
  %22 = load i32, ptr %arrayidx11, align 4
  %23 = load ptr, ptr %p, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %23, i64 200
  store i32 %22, ptr %arrayidx12, align 4
  %24 = load ptr, ptr %p, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %24, i64 320
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %p, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 220
  store i32 %25, ptr %arrayidx14, align 4
  %27 = load ptr, ptr %p, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %27, i64 340
  %28 = load i32, ptr %arrayidx15, align 4
  %29 = load ptr, ptr %p, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %29, i64 240
  store i32 %28, ptr %arrayidx16, align 4
  %30 = load ptr, ptr %p, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %30, i64 360
  %31 = load i32, ptr %arrayidx17, align 4
  %32 = load ptr, ptr %p, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %32, i64 260
  store i32 %31, ptr %arrayidx18, align 4
  %33 = load ptr, ptr %p, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %33, i64 380
  %34 = load i32, ptr %arrayidx19, align 4
  %35 = load ptr, ptr %p, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %35, i64 280
  store i32 %34, ptr %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %k, align 4
  %add = add nsw i32 %36, 397
  %and = and i32 %add, 262143
  store i32 %and, ptr %k, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.10, ptr %37, align 8
  %38 = load ptr, ptr %m.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx21, align 4
  ret i32 %39
}

declare void @free(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @fflush(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn }
attributes #6 = { allocsize(0) }

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
