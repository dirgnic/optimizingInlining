; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_159.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_159.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @matrix_159_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 3
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 0
  %call = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and, i32 noundef %add)
  %2 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %2, %call
  store i32 %add1, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %3, 1
  %call3 = call noundef i32 @_ZL18matrix_159_large_bi(i32 noundef %add2)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %call3
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %and6 = and i32 %add5, 1
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %6, 3
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 2
  %call9 = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and7, i32 noundef %add8)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %call9
  store i32 %add10, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call noundef i32 @_ZL20matrix_159_recursivei(i32 noundef 3)
  %9 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %9, %call11
  store i32 %add12, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add13 = add nsw i32 %10, 4
  %call14 = call noundef i32 @_ZL18matrix_159_large_ai(i32 noundef %add13)
  %11 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %11, %call14
  store i32 %add15, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %12, 5
  %and17 = and i32 %add16, 1
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %13 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %13, 3
  %14 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %14, 5
  %call22 = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and20, i32 noundef %add21)
  %15 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %15, %call22
  store i32 %add23, ptr %total, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end
  %16 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %16, 3
  %17 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %17, 6
  %call27 = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and25, i32 noundef %add26)
  %18 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %18, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL20matrix_159_recursivei(i32 noundef 3)
  %19 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %19, %call29
  store i32 %add30, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %20, 8
  %and32 = and i32 %add31, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end24
  %21 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %21, 8
  %call36 = call noundef i32 @_ZL18matrix_159_large_ai(i32 noundef %add35)
  %22 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %22, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end24
  %23 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %23, 9
  %call40 = call noundef i32 @_ZL18matrix_159_large_bi(i32 noundef %add39)
  %24 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %24, %call40
  store i32 %add41, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %25, 3
  %26 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %26, 10
  %call44 = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and42, i32 noundef %add43)
  %27 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %27, %call44
  store i32 %add45, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %28, 11
  %and47 = and i32 %add46, 1
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end38
  %call50 = call noundef i32 @_ZL20matrix_159_recursivei(i32 noundef 3)
  %29 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %29, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38
  %30 = load i32, ptr %x.addr, align 4
  %add53 = add nsw i32 %30, 12
  %call54 = call noundef i32 @_ZL18matrix_159_large_ai(i32 noundef %add53)
  %31 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %31, %call54
  store i32 %add55, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %add56 = add nsw i32 %32, 13
  %call57 = call noundef i32 @_ZL18matrix_159_large_bi(i32 noundef %add56)
  %33 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %33, %call57
  store i32 %add58, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %add59 = add nsw i32 %34, 14
  %and60 = and i32 %add59, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end52
  %35 = load i32, ptr %x.addr, align 4
  %and63 = and i32 %35, 3
  %36 = load i32, ptr %x.addr, align 4
  %add64 = add nsw i32 %36, 14
  %call65 = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and63, i32 noundef %add64)
  %37 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %37, %call65
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end52
  %38 = load i32, ptr %x.addr, align 4
  %and68 = and i32 %38, 3
  %39 = load i32, ptr %x.addr, align 4
  %add69 = add nsw i32 %39, 15
  %call70 = call noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %and68, i32 noundef %add69)
  %40 = load i32, ptr %total, align 4
  %add71 = add nsw i32 %40, %call70
  store i32 %add71, ptr %total, align 4
  %41 = load i32, ptr %total, align 4
  ret i32 %41
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26matrix_159_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 7
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 11
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 6
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18matrix_159_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 1
  %2 = load i32, ptr %s, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, ptr %s, align 4
  %3 = load i32, ptr %s, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %s, align 4
  %sub = sub nsw i32 %4, 1
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
  %mul3 = mul nsw i32 %and2, 2
  %7 = load i32, ptr %s, align 4
  %add4 = add nsw i32 %7, %mul3
  store i32 %add4, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %rem5 = srem i32 %8, 3
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %s, align 4
  %sub8 = sub nsw i32 %9, 2
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
  %mul13 = mul nsw i32 %and12, 3
  %12 = load i32, ptr %s, align 4
  %add14 = add nsw i32 %12, %mul13
  store i32 %add14, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %rem15 = srem i32 %13, 4
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end11
  %14 = load i32, ptr %s, align 4
  %sub18 = sub nsw i32 %14, 3
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
  %mul23 = mul nsw i32 %and22, 4
  %17 = load i32, ptr %s, align 4
  %add24 = add nsw i32 %17, %mul23
  store i32 %add24, ptr %s, align 4
  %18 = load i32, ptr %s, align 4
  %rem25 = srem i32 %18, 5
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end21
  %19 = load i32, ptr %s, align 4
  %sub28 = sub nsw i32 %19, 4
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
  %mul33 = mul nsw i32 %and32, 5
  %22 = load i32, ptr %s, align 4
  %add34 = add nsw i32 %22, %mul33
  store i32 %add34, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %rem35 = srem i32 %23, 6
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end31
  %24 = load i32, ptr %s, align 4
  %sub38 = sub nsw i32 %24, 5
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
  %mul43 = mul nsw i32 %and42, 6
  %27 = load i32, ptr %s, align 4
  %add44 = add nsw i32 %27, %mul43
  store i32 %add44, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %rem45 = srem i32 %28, 7
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end41
  %29 = load i32, ptr %s, align 4
  %sub48 = sub nsw i32 %29, 6
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
  %mul53 = mul nsw i32 %and52, 7
  %32 = load i32, ptr %s, align 4
  %add54 = add nsw i32 %32, %mul53
  store i32 %add54, ptr %s, align 4
  %33 = load i32, ptr %s, align 4
  %rem55 = srem i32 %33, 8
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end51
  %34 = load i32, ptr %s, align 4
  %sub58 = sub nsw i32 %34, 7
  store i32 %sub58, ptr %s, align 4
  br label %if.end61

if.else59:                                        ; preds = %if.end51
  %35 = load i32, ptr %s, align 4
  %add60 = add nsw i32 %35, 13
  store i32 %add60, ptr %s, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %36 = load i32, ptr %x.addr, align 4
  %and62 = and i32 %36, 10
  %mul63 = mul nsw i32 %and62, 8
  %37 = load i32, ptr %s, align 4
  %add64 = add nsw i32 %37, %mul63
  store i32 %add64, ptr %s, align 4
  %38 = load i32, ptr %s, align 4
  %rem65 = srem i32 %38, 9
  %cmp66 = icmp eq i32 %rem65, 0
  br i1 %cmp66, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.end61
  %39 = load i32, ptr %s, align 4
  %sub68 = sub nsw i32 %39, 8
  store i32 %sub68, ptr %s, align 4
  br label %if.end71

if.else69:                                        ; preds = %if.end61
  %40 = load i32, ptr %s, align 4
  %add70 = add nsw i32 %40, 15
  store i32 %add70, ptr %s, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then67
  %41 = load i32, ptr %x.addr, align 4
  %and72 = and i32 %41, 11
  %mul73 = mul nsw i32 %and72, 9
  %42 = load i32, ptr %s, align 4
  %add74 = add nsw i32 %42, %mul73
  store i32 %add74, ptr %s, align 4
  %43 = load i32, ptr %s, align 4
  %rem75 = srem i32 %43, 10
  %cmp76 = icmp eq i32 %rem75, 0
  br i1 %cmp76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.end71
  %44 = load i32, ptr %s, align 4
  %sub78 = sub nsw i32 %44, 9
  store i32 %sub78, ptr %s, align 4
  br label %if.end81

if.else79:                                        ; preds = %if.end71
  %45 = load i32, ptr %s, align 4
  %add80 = add nsw i32 %45, 17
  store i32 %add80, ptr %s, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %46 = load i32, ptr %x.addr, align 4
  %and82 = and i32 %46, 12
  %mul83 = mul nsw i32 %and82, 10
  %47 = load i32, ptr %s, align 4
  %add84 = add nsw i32 %47, %mul83
  store i32 %add84, ptr %s, align 4
  %48 = load i32, ptr %s, align 4
  %rem85 = srem i32 %48, 11
  %cmp86 = icmp eq i32 %rem85, 0
  br i1 %cmp86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.end81
  %49 = load i32, ptr %s, align 4
  %sub88 = sub nsw i32 %49, 10
  store i32 %sub88, ptr %s, align 4
  br label %if.end91

if.else89:                                        ; preds = %if.end81
  %50 = load i32, ptr %s, align 4
  %add90 = add nsw i32 %50, 19
  store i32 %add90, ptr %s, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then87
  %51 = load i32, ptr %s, align 4
  ret i32 %51
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL20matrix_159_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_159_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18matrix_159_large_ai(i32 noundef %x) #1 {
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
  %sub = sub nsw i32 %mul, 5
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %s, align 4
  ret i32 %12
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
