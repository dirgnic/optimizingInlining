; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_090.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_090.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @packet_090_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL19packet_090_medium_0i(i32 noundef 12)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 7
  %call1 = call noundef i32 @_ZL19packet_090_medium_1i(i32 noundef %and)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %call1
  store i32 %add2, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %3, 7
  %call4 = call noundef i32 @_ZL19packet_090_medium_2i(i32 noundef %and3)
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, %call4
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef 3)
  %5 = load i32, ptr %total, align 4
  %xor = xor i32 %5, %call6
  store i32 %xor, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %6, 7
  %call8 = call noundef i32 @_ZL19packet_090_medium_4i(i32 noundef %and7)
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %call8
  store i32 %add9, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %8, 7
  %call11 = call noundef i32 @_ZL19packet_090_medium_5i(i32 noundef %and10)
  %9 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %9, %call11
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL19packet_090_medium_6i(i32 noundef 5)
  %10 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %10, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef 3)
  %11 = load i32, ptr %total, align 4
  %xor16 = xor i32 %11, %call15
  store i32 %xor16, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %12, 7
  %call18 = call noundef i32 @_ZL18packet_090_large_ai(i32 noundef %and17)
  %13 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %13, %call18
  store i32 %add19, ptr %total, align 4
  %call20 = call noundef i32 @_ZL18packet_090_large_bi(i32 noundef 8)
  %14 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %14, %call20
  store i32 %add21, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %15, 7
  %call23 = call noundef i32 @_ZL18packet_090_large_ai(i32 noundef %and22)
  %16 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %16, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef 3)
  %17 = load i32, ptr %total, align 4
  %xor26 = xor i32 %17, %call25
  store i32 %xor26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL26packet_090_branch_variableii(i32 noundef 2, i32 noundef 11)
  %18 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %18, %call27
  store i32 %add28, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %19, 3
  %20 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %20, 7
  %call31 = call noundef i32 @_ZL26packet_090_branch_variableii(i32 noundef %and29, i32 noundef %and30)
  %21 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %21, %call31
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef 2)
  %22 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %22, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef 3)
  %23 = load i32, ptr %total, align 4
  %xor36 = xor i32 %23, %call35
  store i32 %xor36, ptr %total, align 4
  %24 = load i32, ptr %total, align 4
  ret i32 %24
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_090_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 12
  store i32 %sub, ptr %y, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 15
  %3 = load i32, ptr %y, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %4, 3
  %mul = mul nsw i32 %and1, 7
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_090_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 0
  store i32 %sub, ptr %y, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 15
  %3 = load i32, ptr %y, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %4, 3
  %mul = mul nsw i32 %and1, 1
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_090_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, ptr %y, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 15
  %3 = load i32, ptr %y, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %4, 3
  %mul = mul nsw i32 %and1, 2
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL20packet_090_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL20packet_090_recursivei(i32 noundef %sub1)
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
define internal noundef i32 @_ZL19packet_090_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 9
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 3
  store i32 %sub, ptr %y, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 15
  %3 = load i32, ptr %y, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %4, 3
  %mul = mul nsw i32 %and1, 4
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_090_medium_5i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 4
  store i32 %sub, ptr %y, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 15
  %3 = load i32, ptr %y, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %4, 3
  %mul = mul nsw i32 %and1, 5
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_090_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 11
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 5
  store i32 %sub, ptr %y, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and = and i32 %2, 15
  %3 = load i32, ptr %y, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %4, 3
  %mul = mul nsw i32 %and1, 6
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %y, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18packet_090_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 3
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
  %mul3 = mul nsw i32 %and2, 4
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
  %mul13 = mul nsw i32 %and12, 5
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
  %mul23 = mul nsw i32 %and22, 6
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
  %mul33 = mul nsw i32 %and32, 7
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
  %mul43 = mul nsw i32 %and42, 8
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
  %mul53 = mul nsw i32 %and52, 9
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
define internal noundef i32 @_ZL18packet_090_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 107
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 108
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 109
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 110
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 111
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 112
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 113
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 114
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  %mul29 = mul nsw i32 %25, 11
  %add30 = add nsw i32 %mul29, 115
  store i32 %add30, ptr %s, align 4
  %26 = load i32, ptr %s, align 4
  %shr31 = ashr i32 %26, 3
  %27 = load i32, ptr %s, align 4
  %xor32 = xor i32 %27, %shr31
  store i32 %xor32, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %mul33 = mul nsw i32 %28, 12
  %add34 = add nsw i32 %mul33, 116
  store i32 %add34, ptr %s, align 4
  %29 = load i32, ptr %s, align 4
  %shr35 = ashr i32 %29, 1
  %30 = load i32, ptr %s, align 4
  %xor36 = xor i32 %30, %shr35
  store i32 %xor36, ptr %s, align 4
  %31 = load i32, ptr %s, align 4
  %mul37 = mul nsw i32 %31, 13
  %add38 = add nsw i32 %mul37, 117
  store i32 %add38, ptr %s, align 4
  %32 = load i32, ptr %s, align 4
  %shr39 = ashr i32 %32, 2
  %33 = load i32, ptr %s, align 4
  %xor40 = xor i32 %33, %shr39
  store i32 %xor40, ptr %s, align 4
  %34 = load i32, ptr %s, align 4
  %mul41 = mul nsw i32 %34, 14
  %add42 = add nsw i32 %mul41, 118
  store i32 %add42, ptr %s, align 4
  %35 = load i32, ptr %s, align 4
  %shr43 = ashr i32 %35, 3
  %36 = load i32, ptr %s, align 4
  %xor44 = xor i32 %36, %shr43
  store i32 %xor44, ptr %s, align 4
  %37 = load i32, ptr %s, align 4
  %mul45 = mul nsw i32 %37, 15
  %add46 = add nsw i32 %mul45, 119
  store i32 %add46, ptr %s, align 4
  %38 = load i32, ptr %s, align 4
  %shr47 = ashr i32 %38, 1
  %39 = load i32, ptr %s, align 4
  %xor48 = xor i32 %39, %shr47
  store i32 %xor48, ptr %s, align 4
  %40 = load i32, ptr %s, align 4
  ret i32 %40
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26packet_090_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %2, 3
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 17
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
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
