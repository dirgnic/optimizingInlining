; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_100.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_100.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @game_100_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL15game_100_tiny_0i(i32 noundef 0)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %1, 1
  %call2 = call noundef i32 @_ZL17game_100_branch_1ii(i32 noundef 1, i32 noundef %add1)
  %2 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %2, %call2
  store i32 %add3, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %3, 2
  %and = and i32 %add4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call noundef i32 @_ZL17game_100_medium_2i(i32 noundef 2)
  %4 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %4, %call5
  store i32 %add6, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %x.addr, align 4
  %add7 = add nsw i32 %5, 3
  %call8 = call noundef i32 @_ZL16game_100_large_bi(i32 noundef %add7)
  %6 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %6, %call8
  store i32 %add9, ptr %total, align 4
  %call10 = call noundef i32 @_ZL24game_100_branch_variableii(i32 noundef 1, i32 noundef 4)
  %7 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %7, %call10
  store i32 %add11, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add12 = add nsw i32 %8, 5
  %and13 = and i32 %add12, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  %call16 = call noundef i32 @_ZL18game_100_recursivei(i32 noundef 1)
  %9 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %9, %call16
  store i32 %add17, ptr %total, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end
  %call19 = call noundef i32 @_ZL15game_100_tiny_6i(i32 noundef 6)
  %10 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %10, %call19
  store i32 %add20, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %11, 7
  %call22 = call noundef i32 @_ZL17game_100_branch_7ii(i32 noundef 1, i32 noundef %add21)
  %12 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %12, %call22
  store i32 %add23, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add24 = add nsw i32 %13, 8
  %and25 = and i32 %add24, 1
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end18
  %call28 = call noundef i32 @_ZL17game_100_medium_0i(i32 noundef 1)
  %14 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %14, %call28
  store i32 %add29, ptr %total, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end18
  %15 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %15, 9
  %call32 = call noundef i32 @_ZL16game_100_large_bi(i32 noundef %add31)
  %16 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %16, %call32
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL24game_100_branch_variableii(i32 noundef 1, i32 noundef 3)
  %17 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %17, %call34
  store i32 %add35, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %18, 11
  %and37 = and i32 %add36, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end30
  %call40 = call noundef i32 @_ZL18game_100_recursivei(i32 noundef 3)
  %19 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %19, %call40
  store i32 %add41, ptr %total, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end30
  %call43 = call noundef i32 @_ZL15game_100_tiny_4i(i32 noundef 5)
  %20 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %20, %call43
  store i32 %add44, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add45 = add nsw i32 %21, 13
  %call46 = call noundef i32 @_ZL17game_100_branch_5ii(i32 noundef 1, i32 noundef %add45)
  %22 = load i32, ptr %total, align 4
  %add47 = add nsw i32 %22, %call46
  store i32 %add47, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add48 = add nsw i32 %23, 14
  %and49 = and i32 %add48, 1
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end42
  %call52 = call noundef i32 @_ZL17game_100_medium_6i(i32 noundef 0)
  %24 = load i32, ptr %total, align 4
  %add53 = add nsw i32 %24, %call52
  store i32 %add53, ptr %total, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end42
  %25 = load i32, ptr %x.addr, align 4
  %add55 = add nsw i32 %25, 15
  %call56 = call noundef i32 @_ZL16game_100_large_bi(i32 noundef %add55)
  %26 = load i32, ptr %total, align 4
  %add57 = add nsw i32 %26, %call56
  store i32 %add57, ptr %total, align 4
  %27 = load i32, ptr %total, align 4
  ret i32 %27
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_100_tiny_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 3
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17game_100_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17game_100_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 4
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 0
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 5
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16game_100_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 8
  %2 = load i32, ptr %s, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, ptr %s, align 4
  %3 = load i32, ptr %s, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %s, align 4
  %sub = sub nsw i32 %4, 2
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
  %mul3 = mul nsw i32 %and2, 9
  %7 = load i32, ptr %s, align 4
  %add4 = add nsw i32 %7, %mul3
  store i32 %add4, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %rem5 = srem i32 %8, 3
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %s, align 4
  %sub8 = sub nsw i32 %9, 3
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
  %mul13 = mul nsw i32 %and12, 10
  %12 = load i32, ptr %s, align 4
  %add14 = add nsw i32 %12, %mul13
  store i32 %add14, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %rem15 = srem i32 %13, 4
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end11
  %14 = load i32, ptr %s, align 4
  %sub18 = sub nsw i32 %14, 4
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
  %mul23 = mul nsw i32 %and22, 11
  %17 = load i32, ptr %s, align 4
  %add24 = add nsw i32 %17, %mul23
  store i32 %add24, ptr %s, align 4
  %18 = load i32, ptr %s, align 4
  %rem25 = srem i32 %18, 5
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end21
  %19 = load i32, ptr %s, align 4
  %sub28 = sub nsw i32 %19, 5
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
  %mul33 = mul nsw i32 %and32, 12
  %22 = load i32, ptr %s, align 4
  %add34 = add nsw i32 %22, %mul33
  store i32 %add34, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %rem35 = srem i32 %23, 6
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end31
  %24 = load i32, ptr %s, align 4
  %sub38 = sub nsw i32 %24, 6
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
  %mul43 = mul nsw i32 %and42, 13
  %27 = load i32, ptr %s, align 4
  %add44 = add nsw i32 %27, %mul43
  store i32 %add44, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %rem45 = srem i32 %28, 7
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end41
  %29 = load i32, ptr %s, align 4
  %sub48 = sub nsw i32 %29, 7
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
  %mul53 = mul nsw i32 %and52, 14
  %32 = load i32, ptr %s, align 4
  %add54 = add nsw i32 %32, %mul53
  store i32 %add54, ptr %s, align 4
  %33 = load i32, ptr %s, align 4
  %rem55 = srem i32 %33, 8
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end51
  %34 = load i32, ptr %s, align 4
  %sub58 = sub nsw i32 %34, 8
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
define internal noundef i32 @_ZL24game_100_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %2, 20
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 4
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
define internal noundef i32 @_ZL18game_100_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_100_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_100_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 2
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17game_100_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17game_100_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 2
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 15
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 3
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_100_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 0
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17game_100_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL17game_100_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 4
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 2
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
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
