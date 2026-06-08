; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_105.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_105.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @image_105_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL18image_105_branch_0ii(i32 noundef 1, i32 noundef 1)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %2 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %2, 7
  %call2 = call noundef i32 @_ZL18image_105_branch_1ii(i32 noundef %and, i32 noundef %and1)
  %3 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %3, %call2
  store i32 %add3, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %4, 2
  %and5 = and i32 %add4, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %5, 7
  %call7 = call noundef i32 @_ZL18image_105_branch_2ii(i32 noundef 3, i32 noundef %and6)
  %6 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %6, %call7
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call9 = call noundef i32 @_ZL19image_105_recursivei(i32 noundef 3)
  %7 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %7, %call9
  store i32 %add10, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %8, 7
  %call12 = call noundef i32 @_ZL18image_105_branch_4ii(i32 noundef 1, i32 noundef %and11)
  %9 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %9, %call12
  store i32 %add13, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add14 = add nsw i32 %10, 5
  %and15 = and i32 %add14, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end
  %11 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %11, 3
  %12 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %12, 7
  %call20 = call noundef i32 @_ZL18image_105_branch_5ii(i32 noundef %and18, i32 noundef %and19)
  %13 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %13, %call20
  store i32 %add21, ptr %total, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end
  %call23 = call noundef i32 @_ZL18image_105_branch_6ii(i32 noundef 3, i32 noundef 7)
  %14 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %14, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL19image_105_recursivei(i32 noundef 3)
  %15 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %15, %call25
  store i32 %add26, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %16, 8
  %and28 = and i32 %add27, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end22
  %17 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %17, 7
  %call32 = call noundef i32 @_ZL25image_105_branch_variableii(i32 noundef 1, i32 noundef %and31)
  %18 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %18, %call32
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end22
  %19 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %19, 3
  %call36 = call noundef i32 @_ZL25image_105_branch_variableii(i32 noundef %and35, i32 noundef 10)
  %20 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %20, %call36
  store i32 %add37, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %21, 7
  %call39 = call noundef i32 @_ZL25image_105_branch_variableii(i32 noundef 3, i32 noundef %and38)
  %22 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %22, %call39
  store i32 %add40, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add41 = add nsw i32 %23, 11
  %and42 = and i32 %add41, 1
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end34
  %call45 = call noundef i32 @_ZL19image_105_recursivei(i32 noundef 3)
  %24 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %24, %call45
  store i32 %add46, ptr %total, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end34
  %call48 = call noundef i32 @_ZL17image_105_large_ai(i32 noundef 0)
  %25 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %25, %call48
  store i32 %add49, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %26, 7
  %call51 = call noundef i32 @_ZL17image_105_large_bi(i32 noundef %and50)
  %27 = load i32, ptr %total, align 4
  %add52 = add nsw i32 %27, %call51
  store i32 %add52, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %add53 = add nsw i32 %28, 14
  %and54 = and i32 %add53, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end47
  %call57 = call noundef i32 @_ZL19image_105_recursivei(i32 noundef 2)
  %29 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %29, %call57
  store i32 %add58, ptr %total, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end47
  %call60 = call noundef i32 @_ZL19image_105_recursivei(i32 noundef 3)
  %30 = load i32, ptr %total, align 4
  %add61 = add nsw i32 %30, %call60
  store i32 %add61, ptr %total, align 4
  %31 = load i32, ptr %total, align 4
  ret i32 %31
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_105_branch_0ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
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
define internal noundef i32 @_ZL18image_105_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 8
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
  %sub = sub nsw i32 %5, 4
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
define internal noundef i32 @_ZL18image_105_branch_2ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 10
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 10
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 3
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL19image_105_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_105_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL19image_105_recursivei(i32 noundef %sub1)
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
define internal noundef i32 @_ZL18image_105_branch_4ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 4
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
define internal noundef i32 @_ZL18image_105_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %sub = sub nsw i32 %5, 3
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
define internal noundef i32 @_ZL18image_105_branch_6ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 14
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 7
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL25image_105_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %out, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %out, align 4
  %add = add nsw i32 %2, 2
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 13
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17image_105_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 7
  %2 = load i32, ptr %s, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, ptr %s, align 4
  %3 = load i32, ptr %s, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %s, align 4
  %sub = sub nsw i32 %4, 0
  store i32 %sub, ptr %s, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %5, 1
  store i32 %add1, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %6, 4
  %mul3 = mul nsw i32 %and2, 8
  %7 = load i32, ptr %s, align 4
  %add4 = add nsw i32 %7, %mul3
  store i32 %add4, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %rem5 = srem i32 %8, 3
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %s, align 4
  %sub8 = sub nsw i32 %9, 1
  store i32 %sub8, ptr %s, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.end
  %10 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %10, 3
  store i32 %add10, ptr %s, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %11 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %11, 5
  %mul13 = mul nsw i32 %and12, 9
  %12 = load i32, ptr %s, align 4
  %add14 = add nsw i32 %12, %mul13
  store i32 %add14, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %rem15 = srem i32 %13, 4
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end11
  %14 = load i32, ptr %s, align 4
  %sub18 = sub nsw i32 %14, 2
  store i32 %sub18, ptr %s, align 4
  br label %if.end21

if.else19:                                        ; preds = %if.end11
  %15 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %15, 5
  store i32 %add20, ptr %s, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %16 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %16, 6
  %mul23 = mul nsw i32 %and22, 10
  %17 = load i32, ptr %s, align 4
  %add24 = add nsw i32 %17, %mul23
  store i32 %add24, ptr %s, align 4
  %18 = load i32, ptr %s, align 4
  %rem25 = srem i32 %18, 5
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end21
  %19 = load i32, ptr %s, align 4
  %sub28 = sub nsw i32 %19, 3
  store i32 %sub28, ptr %s, align 4
  br label %if.end31

if.else29:                                        ; preds = %if.end21
  %20 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %20, 7
  store i32 %add30, ptr %s, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  %21 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %21, 7
  %mul33 = mul nsw i32 %and32, 11
  %22 = load i32, ptr %s, align 4
  %add34 = add nsw i32 %22, %mul33
  store i32 %add34, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %rem35 = srem i32 %23, 6
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end31
  %24 = load i32, ptr %s, align 4
  %sub38 = sub nsw i32 %24, 4
  store i32 %sub38, ptr %s, align 4
  br label %if.end41

if.else39:                                        ; preds = %if.end31
  %25 = load i32, ptr %s, align 4
  %add40 = add nsw i32 %25, 9
  store i32 %add40, ptr %s, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then37
  %26 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %26, 8
  %mul43 = mul nsw i32 %and42, 12
  %27 = load i32, ptr %s, align 4
  %add44 = add nsw i32 %27, %mul43
  store i32 %add44, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %rem45 = srem i32 %28, 7
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end41
  %29 = load i32, ptr %s, align 4
  %sub48 = sub nsw i32 %29, 5
  store i32 %sub48, ptr %s, align 4
  br label %if.end51

if.else49:                                        ; preds = %if.end41
  %30 = load i32, ptr %s, align 4
  %add50 = add nsw i32 %30, 11
  store i32 %add50, ptr %s, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  %31 = load i32, ptr %x.addr, align 4
  %and52 = and i32 %31, 9
  %mul53 = mul nsw i32 %and52, 13
  %32 = load i32, ptr %s, align 4
  %add54 = add nsw i32 %32, %mul53
  store i32 %add54, ptr %s, align 4
  %33 = load i32, ptr %s, align 4
  %rem55 = srem i32 %33, 8
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end51
  %34 = load i32, ptr %s, align 4
  %sub58 = sub nsw i32 %34, 6
  store i32 %sub58, ptr %s, align 4
  br label %if.end61

if.else59:                                        ; preds = %if.end51
  %35 = load i32, ptr %s, align 4
  %add60 = add nsw i32 %35, 13
  store i32 %add60, ptr %s, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %36 = load i32, ptr %s, align 4
  ret i32 %36
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17image_105_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 122
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 123
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 124
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 125
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 126
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 127
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 128
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 129
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  %mul29 = mul nsw i32 %25, 11
  %add30 = add nsw i32 %mul29, 130
  store i32 %add30, ptr %s, align 4
  %26 = load i32, ptr %s, align 4
  %shr31 = ashr i32 %26, 3
  %27 = load i32, ptr %s, align 4
  %xor32 = xor i32 %27, %shr31
  store i32 %xor32, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %mul33 = mul nsw i32 %28, 12
  %add34 = add nsw i32 %mul33, 131
  store i32 %add34, ptr %s, align 4
  %29 = load i32, ptr %s, align 4
  %shr35 = ashr i32 %29, 1
  %30 = load i32, ptr %s, align 4
  %xor36 = xor i32 %30, %shr35
  store i32 %xor36, ptr %s, align 4
  %31 = load i32, ptr %s, align 4
  %mul37 = mul nsw i32 %31, 13
  %add38 = add nsw i32 %mul37, 132
  store i32 %add38, ptr %s, align 4
  %32 = load i32, ptr %s, align 4
  %shr39 = ashr i32 %32, 2
  %33 = load i32, ptr %s, align 4
  %xor40 = xor i32 %33, %shr39
  store i32 %xor40, ptr %s, align 4
  %34 = load i32, ptr %s, align 4
  %mul41 = mul nsw i32 %34, 14
  %add42 = add nsw i32 %mul41, 133
  store i32 %add42, ptr %s, align 4
  %35 = load i32, ptr %s, align 4
  %shr43 = ashr i32 %35, 3
  %36 = load i32, ptr %s, align 4
  %xor44 = xor i32 %36, %shr43
  store i32 %xor44, ptr %s, align 4
  %37 = load i32, ptr %s, align 4
  %mul45 = mul nsw i32 %37, 15
  %add46 = add nsw i32 %mul45, 134
  store i32 %add46, ptr %s, align 4
  %38 = load i32, ptr %s, align 4
  %shr47 = ashr i32 %38, 1
  %39 = load i32, ptr %s, align 4
  %xor48 = xor i32 %39, %shr47
  store i32 %xor48, ptr %s, align 4
  %40 = load i32, ptr %s, align 4
  ret i32 %40
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
