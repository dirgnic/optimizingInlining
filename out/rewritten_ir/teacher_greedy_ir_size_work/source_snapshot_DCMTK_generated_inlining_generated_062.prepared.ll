; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_062.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_062.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_062_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 0, i32 noundef 7)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %call1 = call noundef i32 @_ZL19packet_062_medium_1i(i32 noundef 8)
  %1 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %1, %call1
  store i32 %add2, ptr %total, align 4
  %call3 = call noundef i32 @_ZL19packet_062_medium_2i(i32 noundef 9)
  %2 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %2, %call3
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL19packet_062_medium_3i(i32 noundef 10)
  %3 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %3, %call5
  store i32 %add6, ptr %total, align 4
  %call7 = call noundef i32 @_ZL19packet_062_medium_4i(i32 noundef 0)
  %4 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %4, %call7
  store i32 %add8, ptr %total, align 4
  %call9 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 2, i32 noundef 1)
  %5 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %5, %call9
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL19packet_062_medium_6i(i32 noundef 2)
  %6 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %6, %call11
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL19packet_062_medium_7i(i32 noundef 3)
  %7 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %7, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18packet_062_large_ai(i32 noundef 4)
  %8 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %8, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 5)
  %9 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %9, %call17
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 1, i32 noundef 6)
  %10 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %10, %call19
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_0(i32 noundef 7)
  %11 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %11, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 0, i32 noundef 8)
  %12 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %12, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 1, i32 noundef 9)
  %13 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %13, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef 2)
  %14 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %14, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 0, i32 noundef 0)
  %15 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %15, %call29
  store i32 %add30, ptr %total, align 4
  %16 = load i32, ptr %total, align 4
  ret i32 %16
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 2
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 11
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
  %sub = sub nsw i32 %4, 0
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 1
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 12
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
  %mul = mul nsw i32 %and2, 2
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 13
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
  %sub = sub nsw i32 %4, 2
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 3
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_4i(i32 noundef %x) #1 {
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
  %sub = sub nsw i32 %4, 3
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 4
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
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
  %sub = sub nsw i32 %4, 5
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 6
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
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
  %sub = sub nsw i32 %4, 6
  store i32 %sub, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %mul = mul nsw i32 %and2, 7
  %6 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %6, %mul
  store i32 %add3, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_062_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 62
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 63
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 64
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 65
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 66
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 67
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 68
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 69
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  %mul29 = mul nsw i32 %25, 11
  %add30 = add nsw i32 %mul29, 70
  store i32 %add30, ptr %s, align 4
  %26 = load i32, ptr %s, align 4
  %shr31 = ashr i32 %26, 3
  %27 = load i32, ptr %s, align 4
  %xor32 = xor i32 %27, %shr31
  store i32 %xor32, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %mul33 = mul nsw i32 %28, 12
  %add34 = add nsw i32 %mul33, 71
  store i32 %add34, ptr %s, align 4
  %29 = load i32, ptr %s, align 4
  %shr35 = ashr i32 %29, 1
  %30 = load i32, ptr %s, align 4
  %xor36 = xor i32 %30, %shr35
  store i32 %xor36, ptr %s, align 4
  %31 = load i32, ptr %s, align 4
  %mul37 = mul nsw i32 %31, 13
  %add38 = add nsw i32 %mul37, 72
  store i32 %add38, ptr %s, align 4
  %32 = load i32, ptr %s, align 4
  %shr39 = ashr i32 %32, 2
  %33 = load i32, ptr %s, align 4
  %xor40 = xor i32 %33, %shr39
  store i32 %xor40, ptr %s, align 4
  %34 = load i32, ptr %s, align 4
  %mul41 = mul nsw i32 %34, 14
  %add42 = add nsw i32 %mul41, 73
  store i32 %add42, ptr %s, align 4
  %35 = load i32, ptr %s, align 4
  %shr43 = ashr i32 %35, 3
  %36 = load i32, ptr %s, align 4
  %xor44 = xor i32 %36, %shr43
  store i32 %xor44, ptr %s, align 4
  %37 = load i32, ptr %s, align 4
  %mul45 = mul nsw i32 %37, 15
  %add46 = add nsw i32 %mul45, 74
  store i32 %add46, ptr %s, align 4
  %38 = load i32, ptr %s, align 4
  %shr47 = ashr i32 %38, 1
  %39 = load i32, ptr %s, align 4
  %xor48 = xor i32 %39, %shr47
  store i32 %xor48, ptr %s, align 4
  %40 = load i32, ptr %s, align 4
  ret i32 %40
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_062_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 1
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_062_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_0(i32 noundef %x)  alwaysinline#1 {
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
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 1
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

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
