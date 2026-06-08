; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_181.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_181.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @image_181_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
  %call = call noundef i32 @_ZL16image_181_tiny_0i(i32 noundef %add)
  %1 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %1, %call
  store i32 %add1, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 3
  %3 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %3, 1
  %call3 = call noundef i32 @_ZL18image_181_branch_1ii(i32 noundef %and, i32 noundef %add2)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %call3
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %call6 = call noundef i32 @_ZL18image_181_medium_2i(i32 noundef %add5)
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %call6
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  %call9 = call noundef i32 @_ZL17image_181_large_bi(i32 noundef %add8)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %call9
  store i32 %add10, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %9, 3
  %10 = load i32, ptr %x.addr, align 4
  %add12 = add nsw i32 %10, 4
  %call13 = call noundef i32 @_ZL25image_181_branch_variableii(i32 noundef %and11, i32 noundef %add12)
  %11 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %11, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL19image_181_recursivei(i32 noundef 1)
  %12 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %12, %call15
  store i32 %add16, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add17 = add nsw i32 %13, 6
  %call18 = call noundef i32 @_ZL16image_181_tiny_6i(i32 noundef %add17)
  %14 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %14, %call18
  store i32 %add19, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %15, 3
  %16 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %16, 7
  %call22 = call noundef i32 @_ZL18image_181_branch_7ii(i32 noundef %and20, i32 noundef %add21)
  %17 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %17, %call22
  store i32 %add23, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add24 = add nsw i32 %18, 8
  %call25 = call noundef i32 @_ZL18image_181_medium_0i(i32 noundef %add24)
  %19 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %19, %call25
  store i32 %add26, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %20, 9
  %call28 = call noundef i32 @_ZL17image_181_large_bi(i32 noundef %add27)
  %21 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %21, %call28
  store i32 %add29, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %22, 3
  %23 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %23, 10
  %call32 = call noundef i32 @_ZL25image_181_branch_variableii(i32 noundef %and30, i32 noundef %add31)
  %24 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %24, %call32
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL19image_181_recursivei(i32 noundef 3)
  %25 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %25, %call34
  store i32 %add35, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %26, 12
  %call37 = call noundef i32 @_ZL16image_181_tiny_4i(i32 noundef %add36)
  %27 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %27, %call37
  store i32 %add38, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %28, 3
  %29 = load i32, ptr %x.addr, align 4
  %add40 = add nsw i32 %29, 13
  %call41 = call noundef i32 @_ZL18image_181_branch_5ii(i32 noundef %and39, i32 noundef %add40)
  %30 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %30, %call41
  store i32 %add42, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %31, 14
  %call44 = call noundef i32 @_ZL18image_181_medium_6i(i32 noundef %add43)
  %32 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %32, %call44
  store i32 %add45, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %33, 15
  %call47 = call noundef i32 @_ZL17image_181_large_bi(i32 noundef %add46)
  %34 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %34, %call47
  store i32 %add48, ptr %total, align 4
  %35 = load i32, ptr %total, align 4
  ret i32 %35
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16image_181_tiny_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 182
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_181_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 8
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 17
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_181_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, %shr
  store i32 %add1, ptr %y, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %y, align 4
  %sub = sub nsw i32 %4, 3
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 2
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %7, 4
  %mul5 = mul nsw i32 %and4, 3
  %8 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %8, %mul5
  store i32 %add6, ptr %y, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %9, 5
  %mul8 = mul nsw i32 %and7, 4
  %10 = load i32, ptr %y, align 4
  %add9 = add nsw i32 %10, %mul8
  store i32 %add9, ptr %y, align 4
  %11 = load i32, ptr %y, align 4
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17image_181_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 3
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %s, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL25image_181_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %t, align 4
  %5 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL19image_181_recursivei(i32 noundef %x) #0 {
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
  %2 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %2, 1
  %call = call noundef i32 @_ZL19image_181_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16image_181_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 188
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_181_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %t, align 4
  %5 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_181_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 8
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, %shr
  store i32 %add1, ptr %y, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %y, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 7
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %7, 4
  %mul5 = mul nsw i32 %and4, 8
  %8 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %8, %mul5
  store i32 %add6, ptr %y, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %9, 5
  %mul8 = mul nsw i32 %and7, 9
  %10 = load i32, ptr %y, align 4
  %add9 = add nsw i32 %10, %mul8
  store i32 %add9, ptr %y, align 4
  %11 = load i32, ptr %y, align 4
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16image_181_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 186
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_181_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 12
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 21
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 5
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_181_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, %shr
  store i32 %add1, ptr %y, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %y, align 4
  %sub = sub nsw i32 %4, 7
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 6
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %7, 4
  %mul5 = mul nsw i32 %and4, 7
  %8 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %8, %mul5
  store i32 %add6, ptr %y, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %9, 5
  %mul8 = mul nsw i32 %and7, 8
  %10 = load i32, ptr %y, align 4
  %add9 = add nsw i32 %10, %mul8
  store i32 %add9, ptr %y, align 4
  %11 = load i32, ptr %y, align 4
  ret i32 %11
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
