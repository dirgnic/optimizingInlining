; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_218.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_218.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @packet_218_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL19packet_218_medium_0i(i32 noundef 10)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 7
  %call1 = call noundef i32 @_ZL19packet_218_medium_1i(i32 noundef %and)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %call1
  store i32 %add2, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add3 = add nsw i32 %3, 2
  %and4 = and i32 %add3, 1
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %4, 7
  %call6 = call noundef i32 @_ZL19packet_218_medium_2i(i32 noundef %and5)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %call6
  store i32 %add7, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef 3)
  %6 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %6, %call8
  store i32 %add9, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %7, 7
  %call11 = call noundef i32 @_ZL19packet_218_medium_4i(i32 noundef %and10)
  %8 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %8, %call11
  store i32 %add12, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add13 = add nsw i32 %9, 5
  %and14 = and i32 %add13, 1
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end
  %10 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %10, 7
  %call18 = call noundef i32 @_ZL19packet_218_medium_5i(i32 noundef %and17)
  %11 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %11, %call18
  store i32 %add19, ptr %total, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end
  %call21 = call noundef i32 @_ZL19packet_218_medium_6i(i32 noundef 3)
  %12 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %12, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef 3)
  %13 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %13, %call23
  store i32 %add24, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add25 = add nsw i32 %14, 8
  %and26 = and i32 %add25, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end20
  %15 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %15, 7
  %call30 = call noundef i32 @_ZL18packet_218_large_ai(i32 noundef %and29)
  %16 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %16, %call30
  store i32 %add31, ptr %total, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end20
  %call33 = call noundef i32 @_ZL18packet_218_large_bi(i32 noundef 6)
  %17 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %17, %call33
  store i32 %add34, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %18, 7
  %call36 = call noundef i32 @_ZL18packet_218_large_ai(i32 noundef %and35)
  %19 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %19, %call36
  store i32 %add37, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add38 = add nsw i32 %20, 11
  %and39 = and i32 %add38, 1
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end32
  %call42 = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef 3)
  %21 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %21, %call42
  store i32 %add43, ptr %total, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end32
  %call45 = call noundef i32 @_ZL26packet_218_branch_variableii(i32 noundef 2, i32 noundef 9)
  %22 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %22, %call45
  store i32 %add46, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and47 = and i32 %23, 3
  %24 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %24, 7
  %call49 = call noundef i32 @_ZL26packet_218_branch_variableii(i32 noundef %and47, i32 noundef %and48)
  %25 = load i32, ptr %total, align 4
  %add50 = add nsw i32 %25, %call49
  store i32 %add50, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %add51 = add nsw i32 %26, 14
  %and52 = and i32 %add51, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end44
  %call55 = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef 2)
  %27 = load i32, ptr %total, align 4
  %add56 = add nsw i32 %27, %call55
  store i32 %add56, ptr %total, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end44
  %call58 = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef 3)
  %28 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %28, %call58
  store i32 %add59, ptr %total, align 4
  %29 = load i32, ptr %total, align 4
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_218_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 12
  store i32 %add, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 3
  %add1 = add nsw i32 %2, %and
  %4 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %4, %add1
  store i32 %add2, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 2
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 3
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 5
  %mul9 = mul nsw i32 %and8, 4
  %11 = load i32, ptr %y, align 4
  %add10 = add nsw i32 %11, %mul9
  store i32 %add10, ptr %y, align 4
  %12 = load i32, ptr %y, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_218_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 13
  store i32 %add, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 3
  %add1 = add nsw i32 %2, %and
  %4 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %4, %add1
  store i32 %add2, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 3
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 4
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 5
  %mul9 = mul nsw i32 %and8, 5
  %11 = load i32, ptr %y, align 4
  %add10 = add nsw i32 %11, %mul9
  store i32 %add10, ptr %y, align 4
  %12 = load i32, ptr %y, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_218_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 3
  %add1 = add nsw i32 %2, %and
  %4 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %4, %add1
  store i32 %add2, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 4
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 5
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 5
  %mul9 = mul nsw i32 %and8, 6
  %11 = load i32, ptr %y, align 4
  %add10 = add nsw i32 %11, %mul9
  store i32 %add10, ptr %y, align 4
  %12 = load i32, ptr %y, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL20packet_218_recursivei(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %3, 2
  %call = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL20packet_218_recursivei(i32 noundef %sub1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_218_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 3
  %add1 = add nsw i32 %2, %and
  %4 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %4, %add1
  store i32 %add2, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 6
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 7
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 5
  %mul9 = mul nsw i32 %and8, 8
  %11 = load i32, ptr %y, align 4
  %add10 = add nsw i32 %11, %mul9
  store i32 %add10, ptr %y, align 4
  %12 = load i32, ptr %y, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_218_medium_5i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
  store i32 %add, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 3
  %add1 = add nsw i32 %2, %and
  %4 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %4, %add1
  store i32 %add2, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 7
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 8
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 5
  %mul9 = mul nsw i32 %and8, 9
  %11 = load i32, ptr %y, align 4
  %add10 = add nsw i32 %11, %mul9
  store i32 %add10, ptr %y, align 4
  %12 = load i32, ptr %y, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_218_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 3
  %add1 = add nsw i32 %2, %and
  %4 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %4, %add1
  store i32 %add2, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 1
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 2
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 5
  %mul9 = mul nsw i32 %and8, 3
  %11 = load i32, ptr %y, align 4
  %add10 = add nsw i32 %11, %mul9
  store i32 %add10, ptr %y, align 4
  %12 = load i32, ptr %y, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18packet_218_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 10
  %4 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %4, %add
  store i32 %add1, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shl = shl i32 %5, 1
  %6 = load i32, ptr %s, align 4
  %shr = ashr i32 %6, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %s, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18packet_218_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %add = add nsw i32 %and, 9
  store i32 %add, ptr %limit, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %4, %5
  %sub = sub nsw i32 %mul, 4
  %6 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %6, %sub
  store i32 %add1, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %and2 = and i32 %7, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %8, %9
  %10 = load i32, ptr %s, align 4
  %xor = xor i32 %10, %add4
  store i32 %xor, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %s, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26packet_218_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 4
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %5, 6
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load i32, ptr %x.addr, align 4
  %7 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %6, %7
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

attributes #0 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
