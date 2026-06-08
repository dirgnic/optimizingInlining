; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_mibench_office_ghostscript_src_bench.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
define void @gp_init_console() #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @gp_open_scratch_file(ptr noundef %prefix, ptr noundef %fname, ptr noundef %mode) #0 {
entry:
  ret ptr null
}

; Function Attrs: nounwind ssp uwtable
define void @gp_set_printer_binary(i32 noundef %prnfno, i32 noundef %binary) #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @gs_exit(i32 noundef %n) #0 {
entry:
  call void @exit(i32 noundef %n) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @lprintf_file_and_line(ptr noundef %f, ptr noundef %file, i32 noundef %line) #0 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str, ptr noundef %file, i32 noundef %line) #6
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %i = alloca i32, align 4
  %mem = alloca ptr, align 8
  %t0 = alloca [2 x i64], align 8
  %t1 = alloca [2 x i64], align 8
  %msg = alloca ptr, align 8
  %n = alloca i32, align 4
  %call = call dereferenceable_or_null(1100000) ptr @malloc(i64 noundef 1100000) #7
  store ptr %call, ptr %mem, align 8
  %0 = load ptr, ptr @__stdoutp, align 8
  store ptr %0, ptr @gs_stdout, align 8
  %1 = load ptr, ptr @__stderrp, align 8
  store ptr %1, ptr @gs_stderr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %sw.epilog ]
  store i32 %storemerge, ptr %i, align 4
  call void @gp_get_usertime(ptr noundef nonnull %t0) #6
  switch i32 %storemerge, label %sw.default [
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
  %call1 = call i32 @iadd(i32 noundef 0, i32 noundef 10000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.cond
  store i32 1000000, ptr %n, align 4
  %call3 = call i32 @imul(i32 noundef 1, i32 noundef 1000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.cond
  store i32 1000000, ptr %n, align 4
  %call5 = call i32 @idiv(i32 noundef 1, i32 noundef 1000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call7 = call i32 @fadd(float noundef 0x40091EB860000000, i32 noundef 10000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call9 = call i32 @fmul(float noundef 0x3FF0000020000000, i32 noundef 10000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.cond
  store i32 1000000, ptr %n, align 4
  %call11 = call i32 @fdiv(float noundef 0x3FF0000020000000, i32 noundef 1000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.cond
  store i32 10000000, ptr %n, align 4
  %call13 = call i32 @fconv(i32 noundef 12345, i32 noundef 10000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.cond
  %2 = load ptr, ptr %mem, align 8
  store i32 10000000, ptr %n, align 4
  %call15 = call i32 @mfast(ptr noundef %2, i32 noundef 10000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.cond
  %3 = load ptr, ptr %mem, align 8
  store i32 1000000, ptr %n, align 4
  %call17 = call i32 @mslow(ptr noundef %3, i32 noundef 1000000, ptr noundef nonnull %msg)
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %4 = load ptr, ptr %mem, align 8
  call void @free(ptr noundef %4) #6
  call void @exit(i32 noundef 0) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  call void @gp_get_usertime(ptr noundef nonnull %t1) #6
  %5 = load i32, ptr %n, align 4
  %6 = load ptr, ptr %msg, align 8
  %7 = load i64, ptr %t1, align 8
  %8 = load i64, ptr %t0, align 8
  %sub = sub nsw i64 %7, %8
  %conv = sitofp i64 %sub to double
  %arrayidx20 = getelementptr inbounds [2 x i64], ptr %t1, i64 0, i64 1
  %9 = load i64, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %t0, i64 0, i64 1
  %10 = load i64, ptr %arrayidx21, align 8
  %sub22 = sub nsw i64 %9, %10
  %conv23 = sitofp i64 %sub22 to double
  %div = fdiv double %conv23, 1.000000e+06
  %11 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %div)
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %5, ptr noundef %6, double noundef %11) #6
  %12 = load ptr, ptr @__stdoutp, align 8
  %call25 = call i32 @fflush(ptr noundef %12) #6
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare void @gp_get_usertime(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @iadd(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 0, ptr %b, align 4
  %div = sdiv i32 %n, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %a.addr, align 4
  %2 = load i32, ptr %b, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %b, align 4
  %3 = load i32, ptr %i, align 4
  %add1 = add nsw i32 %add, %3
  store i32 %add1, ptr %b, align 4
  %4 = load i32, ptr %a.addr, align 4
  %add2 = add nsw i32 %add1, %4
  %add3 = add nsw i32 %add2, %3
  %add4 = add nsw i32 %add3, %4
  store i32 %add4, ptr %b, align 4
  %5 = load i32, ptr %i, align 4
  %add5 = add nsw i32 %add4, %5
  store i32 %add5, ptr %b, align 4
  %6 = load i32, ptr %a.addr, align 4
  %add6 = add nsw i32 %add5, %6
  %add7 = add nsw i32 %add6, %5
  %add8 = add nsw i32 %add7, %6
  store i32 %add8, ptr %b, align 4
  %7 = load i32, ptr %i, align 4
  %add9 = add nsw i32 %add8, %7
  store i32 %add9, ptr %b, align 4
  %8 = load i32, ptr %a.addr, align 4
  %add10 = add nsw i32 %add9, %8
  %add11 = add nsw i32 %add10, %7
  %add12 = add nsw i32 %add11, %8
  store i32 %add12, ptr %b, align 4
  %9 = load i32, ptr %i, align 4
  %add13 = add nsw i32 %add12, %9
  store i32 %add13, ptr %b, align 4
  %10 = load i32, ptr %a.addr, align 4
  %add14 = add nsw i32 %add13, %10
  %add15 = add nsw i32 %add14, %9
  %add16 = add nsw i32 %add15, %10
  store i32 %add16, ptr %b, align 4
  %11 = load i32, ptr %i, align 4
  %add17 = add nsw i32 %add16, %11
  store i32 %add17, ptr %b, align 4
  %12 = load i32, ptr %a.addr, align 4
  %add18 = add nsw i32 %add17, %12
  %add19 = add nsw i32 %add18, %11
  store i32 %add19, ptr %b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.2, ptr %13, align 8
  %14 = load i32, ptr %b, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @imul(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 1, ptr %b, align 4
  %div = sdiv i32 %n, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %a.addr, align 4
  %2 = load i32, ptr %b, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, ptr %b, align 4
  %3 = load i32, ptr %i, align 4
  %mul1 = mul nsw i32 %mul, %3
  store i32 %mul1, ptr %b, align 4
  %4 = load i32, ptr %a.addr, align 4
  %mul2 = mul nsw i32 %mul1, %4
  %mul3 = mul nsw i32 %mul2, %3
  %mul4 = mul nsw i32 %mul3, %4
  store i32 %mul4, ptr %b, align 4
  %5 = load i32, ptr %i, align 4
  %mul5 = mul nsw i32 %mul4, %5
  store i32 %mul5, ptr %b, align 4
  %6 = load i32, ptr %a.addr, align 4
  %mul6 = mul nsw i32 %mul5, %6
  %mul7 = mul nsw i32 %mul6, %5
  %mul8 = mul nsw i32 %mul7, %6
  store i32 %mul8, ptr %b, align 4
  %7 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 %mul8, %7
  store i32 %mul9, ptr %b, align 4
  %8 = load i32, ptr %a.addr, align 4
  %mul10 = mul nsw i32 %mul9, %8
  %mul11 = mul nsw i32 %mul10, %7
  %mul12 = mul nsw i32 %mul11, %8
  store i32 %mul12, ptr %b, align 4
  %9 = load i32, ptr %i, align 4
  %mul13 = mul nsw i32 %mul12, %9
  store i32 %mul13, ptr %b, align 4
  %10 = load i32, ptr %a.addr, align 4
  %mul14 = mul nsw i32 %mul13, %10
  %mul15 = mul nsw i32 %mul14, %9
  %mul16 = mul nsw i32 %mul15, %10
  store i32 %mul16, ptr %b, align 4
  %11 = load i32, ptr %i, align 4
  %mul17 = mul nsw i32 %mul16, %11
  store i32 %mul17, ptr %b, align 4
  %12 = load i32, ptr %a.addr, align 4
  %mul18 = mul nsw i32 %mul17, %12
  %mul19 = mul nsw i32 %mul18, %11
  store i32 %mul19, ptr %b, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.3, ptr %13, align 8
  %14 = load i32, ptr %b, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @idiv(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 1, ptr %b, align 4
  %div = sdiv i32 %n, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %b, align 4
  %add = add nsw i32 %1, 999999
  store i32 %add, ptr %b, align 4
  %2 = load i32, ptr %a.addr, align 4
  %div1 = sdiv i32 %add, %2
  store i32 %div1, ptr %b, align 4
  %3 = load i32, ptr %i, align 4
  %div2 = sdiv i32 %div1, %3
  %div3 = sdiv i32 %div2, %2
  %div4 = sdiv i32 %div3, %3
  store i32 %div4, ptr %b, align 4
  %4 = load i32, ptr %a.addr, align 4
  %div5 = sdiv i32 %div4, %4
  store i32 %div5, ptr %b, align 4
  %5 = load i32, ptr %i, align 4
  %div6 = sdiv i32 %div5, %5
  %div7 = sdiv i32 %div6, %4
  %div8 = sdiv i32 %div7, %5
  store i32 %div8, ptr %b, align 4
  %6 = load i32, ptr %a.addr, align 4
  %div9 = sdiv i32 %div8, %6
  store i32 %div9, ptr %b, align 4
  %7 = load i32, ptr %i, align 4
  %div10 = sdiv i32 %div9, %7
  %div11 = sdiv i32 %div10, %6
  %div12 = sdiv i32 %div11, %7
  store i32 %div12, ptr %b, align 4
  %8 = load i32, ptr %a.addr, align 4
  %div13 = sdiv i32 %div12, %8
  store i32 %div13, ptr %b, align 4
  %9 = load i32, ptr %i, align 4
  %div14 = sdiv i32 %div13, %9
  %div15 = sdiv i32 %div14, %8
  %div16 = sdiv i32 %div15, %9
  store i32 %div16, ptr %b, align 4
  %10 = load i32, ptr %a.addr, align 4
  %div17 = sdiv i32 %div16, %10
  store i32 %div17, ptr %b, align 4
  %11 = load i32, ptr %i, align 4
  %div18 = sdiv i32 %div17, %11
  %div19 = sdiv i32 %div18, %10
  %div20 = sdiv i32 %div19, %11
  store i32 %div20, ptr %b, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.4, ptr %12, align 8
  %13 = load i32, ptr %b, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fadd(float noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca float, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store float 0.000000e+00, ptr %b, align 4
  %div = sdiv i32 %n, 10
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, ptr %a.addr, align 4
  %2 = load float, ptr %b, align 4
  %add = fadd float %2, %1
  %add1 = fadd float %add, %1
  %add2 = fadd float %add1, %1
  %add3 = fadd float %add2, %1
  store float %add3, ptr %b, align 4
  %3 = load float, ptr %a.addr, align 4
  %add4 = fadd float %add3, %3
  %add5 = fadd float %add4, %3
  %add6 = fadd float %add5, %3
  %add7 = fadd float %add6, %3
  %add8 = fadd float %add7, %3
  store float %add8, ptr %b, align 4
  %4 = load float, ptr %a.addr, align 4
  %add9 = fadd float %add8, %4
  store float %add9, ptr %b, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.5, ptr %5, align 8
  %6 = load float, ptr %b, align 4
  %conv = fptosi float %6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fmul(float noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca float, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store float 1.000000e+00, ptr %b, align 4
  %div = sdiv i32 %n, 10
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, ptr %a.addr, align 4
  %2 = load float, ptr %b, align 4
  %mul = fmul float %2, %1
  %mul1 = fmul float %mul, %1
  %mul2 = fmul float %mul1, %1
  %mul3 = fmul float %mul2, %1
  store float %mul3, ptr %b, align 4
  %3 = load float, ptr %a.addr, align 4
  %mul4 = fmul float %mul3, %3
  %mul5 = fmul float %mul4, %3
  %mul6 = fmul float %mul5, %3
  %mul7 = fmul float %mul6, %3
  %mul8 = fmul float %mul7, %3
  store float %mul8, ptr %b, align 4
  %4 = load float, ptr %a.addr, align 4
  %mul9 = fmul float %mul8, %4
  store float %mul9, ptr %b, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.6, ptr %5, align 8
  %6 = load float, ptr %b, align 4
  %conv = fptosi float %6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fdiv(float noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %a.addr = alloca float, align 4
  %msg.addr = alloca ptr, align 8
  %b = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store float 1.000000e+00, ptr %b, align 4
  %div = sdiv i32 %n, 10
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, ptr %a.addr, align 4
  %2 = load float, ptr %b, align 4
  %div1 = fdiv float %2, %1
  %div2 = fdiv float %div1, %1
  %div3 = fdiv float %div2, %1
  %div4 = fdiv float %div3, %1
  store float %div4, ptr %b, align 4
  %3 = load float, ptr %a.addr, align 4
  %div5 = fdiv float %div4, %3
  %div6 = fdiv float %div5, %3
  %div7 = fdiv float %div6, %3
  %div8 = fdiv float %div7, %3
  %div9 = fdiv float %div8, %3
  store float %div9, ptr %b, align 4
  %4 = load float, ptr %a.addr, align 4
  %div10 = fdiv float %div9, %4
  store float %div10, ptr %b, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.7, ptr %5, align 8
  %6 = load float, ptr %b, align 4
  %conv = fptosi float %6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fconv(i32 noundef %a, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  %b = alloca [10 x i32], align 4
  %f = alloca [10 x float], align 4
  %i = alloca i32, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i32 %a, ptr %b, align 4
  %div = sdiv i32 %n, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %b, align 4
  %conv = sitofp i32 %1 to float
  store float %conv, ptr %f, align 4
  %arrayidx3 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 1
  %2 = load i32, ptr %arrayidx3, align 4
  %conv4 = sitofp i32 %2 to float
  %arrayidx5 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 1
  store float %conv4, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 2
  %3 = load i32, ptr %arrayidx6, align 4
  %conv7 = sitofp i32 %3 to float
  %arrayidx8 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 2
  store float %conv7, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 3
  %4 = load i32, ptr %arrayidx9, align 4
  %conv10 = sitofp i32 %4 to float
  %arrayidx11 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 3
  store float %conv10, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 4
  %5 = load i32, ptr %arrayidx12, align 4
  %conv13 = sitofp i32 %5 to float
  %arrayidx14 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 4
  store float %conv13, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 5
  %6 = load i32, ptr %arrayidx15, align 4
  %conv16 = sitofp i32 %6 to float
  %arrayidx17 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 5
  store float %conv16, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 6
  %7 = load i32, ptr %arrayidx18, align 4
  %conv19 = sitofp i32 %7 to float
  %arrayidx20 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 6
  store float %conv19, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 7
  %8 = load i32, ptr %arrayidx21, align 4
  %conv22 = sitofp i32 %8 to float
  %arrayidx23 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 7
  store float %conv22, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 8
  %9 = load i32, ptr %arrayidx24, align 4
  %conv25 = sitofp i32 %9 to float
  %arrayidx26 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 8
  store float %conv25, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 9
  %10 = load i32, ptr %arrayidx27, align 4
  %conv28 = sitofp i32 %10 to float
  %arrayidx29 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 9
  store float %conv28, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 1
  %11 = load float, ptr %arrayidx30, align 4
  %conv31 = fptosi float %11 to i32
  store i32 %conv31, ptr %b, align 4
  %arrayidx33 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 2
  %12 = load float, ptr %arrayidx33, align 4
  %conv34 = fptosi float %12 to i32
  %arrayidx35 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 1
  store i32 %conv34, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 3
  %13 = load float, ptr %arrayidx36, align 4
  %conv37 = fptosi float %13 to i32
  %arrayidx38 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 2
  store i32 %conv37, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 4
  %14 = load float, ptr %arrayidx39, align 4
  %conv40 = fptosi float %14 to i32
  %arrayidx41 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 3
  store i32 %conv40, ptr %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 5
  %15 = load float, ptr %arrayidx42, align 4
  %conv43 = fptosi float %15 to i32
  %arrayidx44 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 4
  store i32 %conv43, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 6
  %16 = load float, ptr %arrayidx45, align 4
  %conv46 = fptosi float %16 to i32
  %arrayidx47 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 5
  store i32 %conv46, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 7
  %17 = load float, ptr %arrayidx48, align 4
  %conv49 = fptosi float %17 to i32
  %arrayidx50 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 6
  store i32 %conv49, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 8
  %18 = load float, ptr %arrayidx51, align 4
  %conv52 = fptosi float %18 to i32
  %arrayidx53 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 7
  store i32 %conv52, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [10 x float], ptr %f, i64 0, i64 9
  %19 = load float, ptr %arrayidx54, align 4
  %conv55 = fptosi float %19 to i32
  %arrayidx56 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 8
  store i32 %conv55, ptr %arrayidx56, align 4
  %20 = load float, ptr %f, align 4
  %conv58 = fptosi float %20 to i32
  %arrayidx59 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 9
  store i32 %conv58, ptr %arrayidx59, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.8, ptr %21, align 8
  %22 = load i32, ptr %b, align 4
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @mfast(ptr noundef %m, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i32 %n, ptr %m, align 4
  %div = sdiv i32 %n, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %m.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 8
  %2 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, ptr %1, i64 9
  store i32 %2, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i32, ptr %1, i64 7
  %3 = load i32, ptr %arrayidx3, align 4
  %4 = load ptr, ptr %m.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 8
  store i32 %3, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds i32, ptr %4, i64 6
  %5 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i32, ptr %4, i64 7
  store i32 %5, ptr %arrayidx6, align 4
  %6 = load ptr, ptr %m.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 5
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 %7, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds i32, ptr %6, i64 4
  %8 = load i32, ptr %arrayidx9, align 4
  %9 = load ptr, ptr %m.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 5
  store i32 %8, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds i32, ptr %9, i64 4
  store i32 %10, ptr %arrayidx12, align 4
  %11 = load ptr, ptr %m.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %11, i64 2
  %12 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 3
  store i32 %12, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds i32, ptr %11, i64 1
  %13 = load i32, ptr %arrayidx15, align 4
  %14 = load ptr, ptr %m.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %14, i64 2
  store i32 %13, ptr %arrayidx16, align 4
  %15 = load i32, ptr %14, align 4
  %arrayidx18 = getelementptr inbounds i32, ptr %14, i64 1
  store i32 %15, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds i32, ptr %14, i64 9
  %16 = load i32, ptr %arrayidx19, align 4
  %17 = load ptr, ptr %m.addr, align 8
  store i32 %16, ptr %17, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.9, ptr %18, align 8
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @mslow(ptr noundef %m, i32 noundef %n, ptr noundef %msg) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i32 0, ptr %k, align 4
  store i32 %n, ptr %m, align 4
  %div = sdiv i32 %n, 20
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %m.addr, align 8
  %2 = load i32, ptr %k, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %add.ptr, i64 100
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %add.ptr, align 4
  %arrayidx3 = getelementptr inbounds i32, ptr %add.ptr, i64 120
  %4 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds i32, ptr %add.ptr, i64 20
  store i32 %4, ptr %arrayidx4, align 4
  %5 = load ptr, ptr %p, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 140
  %6 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i32, ptr %5, i64 40
  store i32 %6, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds i32, ptr %5, i64 160
  %7 = load i32, ptr %arrayidx7, align 4
  %8 = load ptr, ptr %p, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %8, i64 60
  store i32 %7, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 180
  %9 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds i32, ptr %8, i64 80
  store i32 %9, ptr %arrayidx10, align 4
  %10 = load ptr, ptr %p, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %10, i64 300
  %11 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 200
  store i32 %11, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 320
  %12 = load i32, ptr %arrayidx13, align 4
  %13 = load ptr, ptr %p, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %13, i64 220
  store i32 %12, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds i32, ptr %13, i64 340
  %14 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds i32, ptr %13, i64 240
  store i32 %14, ptr %arrayidx16, align 4
  %15 = load ptr, ptr %p, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %15, i64 360
  %16 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds i32, ptr %15, i64 260
  store i32 %16, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds i32, ptr %15, i64 380
  %17 = load i32, ptr %arrayidx19, align 4
  %18 = load ptr, ptr %p, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %18, i64 280
  store i32 %17, ptr %arrayidx20, align 4
  %19 = load i32, ptr %k, align 4
  %add = add nsw i32 %19, 397
  %and = and i32 %add, 262143
  store i32 %and, ptr %k, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %msg.addr, align 8
  store ptr @.str.10, ptr %20, align 8
  %21 = load ptr, ptr %m.addr, align 8
  %22 = load i32, ptr %21, align 4
  ret i32 %22
}

declare void @free(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @fflush(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
