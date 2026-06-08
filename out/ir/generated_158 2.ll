; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_158.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_158.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @packet_158_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef 2, i32 noundef 2)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 7
  %call1 = call noundef i32 @_ZL19packet_158_medium_1i(i32 noundef %and)
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
  %call6 = call noundef i32 @_ZL19packet_158_medium_2i(i32 noundef %and5)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %call6
  store i32 %add7, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = call noundef i32 @_ZL19packet_158_medium_3i(i32 noundef 5)
  %6 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %6, %call8
  store i32 %add9, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %7, 7
  %call11 = call noundef i32 @_ZL19packet_158_medium_4i(i32 noundef %and10)
  %8 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %8, %call11
  store i32 %add12, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add13 = add nsw i32 %9, 5
  %and14 = and i32 %add13, 1
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end
  %10 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %10, 3
  %11 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %11, 7
  %call19 = call noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef %and17, i32 noundef %and18)
  %12 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %12, %call19
  store i32 %add20, ptr %total, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end
  %call22 = call noundef i32 @_ZL19packet_158_medium_6i(i32 noundef 8)
  %13 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %13, %call22
  store i32 %add23, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and24 = and i32 %14, 7
  %call25 = call noundef i32 @_ZL19packet_158_medium_7i(i32 noundef %and24)
  %15 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %15, %call25
  store i32 %add26, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %16, 8
  %and28 = and i32 %add27, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end21
  %17 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %17, 7
  %call32 = call noundef i32 @_ZL18packet_158_large_ai(i32 noundef %and31)
  %18 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %18, %call32
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end21
  %call35 = call noundef i32 @_ZL18packet_158_large_bi(i32 noundef 11)
  %19 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %19, %call35
  store i32 %add36, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %20, 7
  %call38 = call noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef 0, i32 noundef %and37)
  %21 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %21, %call38
  store i32 %add39, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %add40 = add nsw i32 %22, 11
  %and41 = and i32 %add40, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end34
  %23 = load i32, ptr %x.addr, align 4
  %and44 = and i32 %23, 7
  %call45 = call noundef i32 @_ZL18packet_158_large_bi(i32 noundef %and44)
  %24 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %24, %call45
  store i32 %add46, ptr %total, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end34
  %call48 = call noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef 2, i32 noundef 1)
  %25 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %25, %call48
  store i32 %add49, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %26, 3
  %27 = load i32, ptr %x.addr, align 4
  %and51 = and i32 %27, 7
  %call52 = call noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef %and50, i32 noundef %and51)
  %28 = load i32, ptr %total, align 4
  %add53 = add nsw i32 %28, %call52
  store i32 %add53, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %add54 = add nsw i32 %29, 14
  %and55 = and i32 %add54, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end47
  %call58 = call noundef i32 @_ZL20packet_158_recursivei(i32 noundef 2)
  %30 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %30, %call58
  store i32 %add59, ptr %total, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end47
  %31 = load i32, ptr %x.addr, align 4
  %and61 = and i32 %31, 3
  %call62 = call noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef %and61, i32 noundef 4)
  %32 = load i32, ptr %total, align 4
  %add63 = add nsw i32 %32, %call62
  store i32 %add63, ptr %total, align 4
  %33 = load i32, ptr %total, align 4
  ret i32 %33
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26packet_158_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 6
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_158_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 8
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
  br label %for.cond, !llvm.loop !6

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
  %10 = load i32, ptr %y, align 4
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_158_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 9
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
  br label %for.cond, !llvm.loop !8

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
  %10 = load i32, ptr %y, align 4
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_158_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 10
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
  br label %for.cond, !llvm.loop !9

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
  %10 = load i32, ptr %y, align 4
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_158_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 11
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
  %10 = load i32, ptr %y, align 4
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_158_medium_6i(i32 noundef %x) #1 {
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
  br label %for.cond, !llvm.loop !11

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
  %10 = load i32, ptr %y, align 4
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_158_medium_7i(i32 noundef %x) #1 {
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
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 3
  %mul = mul nsw i32 %and3, 5
  %7 = load i32, ptr %y, align 4
  %add4 = add nsw i32 %7, %mul
  store i32 %add4, ptr %y, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %8, 4
  %mul6 = mul nsw i32 %and5, 6
  %9 = load i32, ptr %y, align 4
  %add7 = add nsw i32 %9, %mul6
  store i32 %add7, ptr %y, align 4
  %10 = load i32, ptr %y, align 4
  ret i32 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18packet_158_large_ai(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %1, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 2
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
define internal noundef i32 @_ZL18packet_158_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %and, 8
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
  %sub = sub nsw i32 %mul, 0
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL20packet_158_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_158_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL20packet_158_recursivei(i32 noundef %sub1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
