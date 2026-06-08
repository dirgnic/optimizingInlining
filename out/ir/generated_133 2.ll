; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_133.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_133.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @image_133_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL16image_133_tiny_0i(i32 noundef 1)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %call1 = call noundef i32 @_ZL18image_133_branch_1ii(i32 noundef 1, i32 noundef 2)
  %1 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %1, %call1
  store i32 %add2, ptr %total, align 4
  %call3 = call noundef i32 @_ZL18image_133_medium_2i(i32 noundef 3)
  %2 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %2, %call3
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL17image_133_large_bi(i32 noundef 4)
  %3 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %3, %call5
  store i32 %add6, ptr %total, align 4
  %call7 = call noundef i32 @_ZL25image_133_branch_variableii(i32 noundef 1, i32 noundef 5)
  %4 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %4, %call7
  store i32 %add8, ptr %total, align 4
  %call9 = call noundef i32 @_ZL19image_133_recursivei(i32 noundef 1)
  %5 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %5, %call9
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL16image_133_tiny_6i(i32 noundef 7)
  %6 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %6, %call11
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL18image_133_branch_7ii(i32 noundef 1, i32 noundef 8)
  %7 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %7, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18image_133_medium_0i(i32 noundef 9)
  %8 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %8, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL17image_133_large_bi(i32 noundef 10)
  %9 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %9, %call17
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL25image_133_branch_variableii(i32 noundef 1, i32 noundef 0)
  %10 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %10, %call19
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL19image_133_recursivei(i32 noundef 3)
  %11 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %11, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL16image_133_tiny_4i(i32 noundef 2)
  %12 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %12, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL18image_133_branch_5ii(i32 noundef 1, i32 noundef 3)
  %13 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %13, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL18image_133_medium_6i(i32 noundef 4)
  %14 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %14, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL17image_133_large_bi(i32 noundef 5)
  %15 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %15, %call29
  store i32 %add30, ptr %total, align 4
  %16 = load i32, ptr %total, align 4
  ret i32 %16
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16image_133_tiny_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %0, 2
  ret i32 %sub
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_133_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 9
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
  %sub = sub nsw i32 %5, 7
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
define internal noundef i32 @_ZL18image_133_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
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
  %mul = mul nsw i32 %and1, 3
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 4
  %mul4 = mul nsw i32 %and3, 4
  %7 = load i32, ptr %y, align 4
  %add5 = add nsw i32 %7, %mul4
  store i32 %add5, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL17image_133_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 150
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 151
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 152
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 153
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 154
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 155
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 156
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 157
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  %mul29 = mul nsw i32 %25, 11
  %add30 = add nsw i32 %mul29, 158
  store i32 %add30, ptr %s, align 4
  %26 = load i32, ptr %s, align 4
  %shr31 = ashr i32 %26, 3
  %27 = load i32, ptr %s, align 4
  %xor32 = xor i32 %27, %shr31
  store i32 %xor32, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %mul33 = mul nsw i32 %28, 12
  %add34 = add nsw i32 %mul33, 159
  store i32 %add34, ptr %s, align 4
  %29 = load i32, ptr %s, align 4
  %shr35 = ashr i32 %29, 1
  %30 = load i32, ptr %s, align 4
  %xor36 = xor i32 %30, %shr35
  store i32 %xor36, ptr %s, align 4
  %31 = load i32, ptr %s, align 4
  %mul37 = mul nsw i32 %31, 13
  %add38 = add nsw i32 %mul37, 160
  store i32 %add38, ptr %s, align 4
  %32 = load i32, ptr %s, align 4
  %shr39 = ashr i32 %32, 2
  %33 = load i32, ptr %s, align 4
  %xor40 = xor i32 %33, %shr39
  store i32 %xor40, ptr %s, align 4
  %34 = load i32, ptr %s, align 4
  %mul41 = mul nsw i32 %34, 14
  %add42 = add nsw i32 %mul41, 161
  store i32 %add42, ptr %s, align 4
  %35 = load i32, ptr %s, align 4
  %shr43 = ashr i32 %35, 3
  %36 = load i32, ptr %s, align 4
  %xor44 = xor i32 %36, %shr43
  store i32 %xor44, ptr %s, align 4
  %37 = load i32, ptr %s, align 4
  %mul45 = mul nsw i32 %37, 15
  %add46 = add nsw i32 %mul45, 162
  store i32 %add46, ptr %s, align 4
  %38 = load i32, ptr %s, align 4
  %shr47 = ashr i32 %38, 1
  %39 = load i32, ptr %s, align 4
  %xor48 = xor i32 %39, %shr47
  store i32 %xor48, ptr %s, align 4
  %40 = load i32, ptr %s, align 4
  %mul49 = mul nsw i32 %40, 16
  %add50 = add nsw i32 %mul49, 163
  store i32 %add50, ptr %s, align 4
  %41 = load i32, ptr %s, align 4
  %shr51 = ashr i32 %41, 2
  %42 = load i32, ptr %s, align 4
  %xor52 = xor i32 %42, %shr51
  store i32 %xor52, ptr %s, align 4
  %43 = load i32, ptr %s, align 4
  %mul53 = mul nsw i32 %43, 17
  %add54 = add nsw i32 %mul53, 164
  store i32 %add54, ptr %s, align 4
  %44 = load i32, ptr %s, align 4
  %shr55 = ashr i32 %44, 3
  %45 = load i32, ptr %s, align 4
  %xor56 = xor i32 %45, %shr55
  store i32 %xor56, ptr %s, align 4
  %46 = load i32, ptr %s, align 4
  %mul57 = mul nsw i32 %46, 18
  %add58 = add nsw i32 %mul57, 165
  store i32 %add58, ptr %s, align 4
  %47 = load i32, ptr %s, align 4
  %shr59 = ashr i32 %47, 1
  %48 = load i32, ptr %s, align 4
  %xor60 = xor i32 %48, %shr59
  store i32 %xor60, ptr %s, align 4
  %49 = load i32, ptr %s, align 4
  %mul61 = mul nsw i32 %49, 19
  %add62 = add nsw i32 %mul61, 166
  store i32 %add62, ptr %s, align 4
  %50 = load i32, ptr %s, align 4
  %shr63 = ashr i32 %50, 2
  %51 = load i32, ptr %s, align 4
  %xor64 = xor i32 %51, %shr63
  store i32 %xor64, ptr %s, align 4
  %52 = load i32, ptr %s, align 4
  %mul65 = mul nsw i32 %52, 20
  %add66 = add nsw i32 %mul65, 167
  store i32 %add66, ptr %s, align 4
  %53 = load i32, ptr %s, align 4
  %shr67 = ashr i32 %53, 3
  %54 = load i32, ptr %s, align 4
  %xor68 = xor i32 %54, %shr67
  store i32 %xor68, ptr %s, align 4
  %55 = load i32, ptr %s, align 4
  ret i32 %55
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL25image_133_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %2, 6
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 3
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL19image_133_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_133_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL19image_133_recursivei(i32 noundef %sub1)
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
define internal noundef i32 @_ZL16image_133_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %0, 8
  ret i32 %sub
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_133_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %2, 5
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 10
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_133_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 4
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
  %mul = mul nsw i32 %and1, 1
  %5 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 4
  %mul4 = mul nsw i32 %and3, 2
  %7 = load i32, ptr %y, align 4
  %add5 = add nsw i32 %7, %mul4
  store i32 %add5, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16image_133_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %0, 6
  ret i32 %sub
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18image_133_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 4
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
define internal noundef i32 @_ZL18image_133_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %shl = shl i32 %1, 2
  %sub = sub nsw i32 %shl, 9
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
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 4
  %mul4 = mul nsw i32 %and3, 8
  %7 = load i32, ptr %y, align 4
  %add5 = add nsw i32 %7, %mul4
  store i32 %add5, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
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
