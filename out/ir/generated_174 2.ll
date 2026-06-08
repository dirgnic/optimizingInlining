; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_174.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_174.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @packet_174_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 3
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 0
  %call = call noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %and, i32 noundef %add)
  %2 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %2, %call
  store i32 %add1, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %3, 1
  %call3 = call noundef i32 @_ZL19packet_174_medium_1i(i32 noundef %add2)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %call3
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %call6 = call noundef i32 @_ZL19packet_174_medium_2i(i32 noundef %add5)
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %call6
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  %call9 = call noundef i32 @_ZL19packet_174_medium_3i(i32 noundef %add8)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %call9
  store i32 %add10, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %9, 4
  %call12 = call noundef i32 @_ZL19packet_174_medium_4i(i32 noundef %add11)
  %and13 = and i32 %call12, 255
  %10 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %10, %and13
  store i32 %add14, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %11, 3
  %12 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %12, 5
  %call17 = call noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %and15, i32 noundef %add16)
  %13 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %13, %call17
  store i32 %add18, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %14, 6
  %call20 = call noundef i32 @_ZL19packet_174_medium_6i(i32 noundef %add19)
  %15 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %15, %call20
  store i32 %add21, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %16, 7
  %call23 = call noundef i32 @_ZL19packet_174_medium_7i(i32 noundef %add22)
  %17 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %17, %call23
  store i32 %add24, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add25 = add nsw i32 %18, 8
  %call26 = call noundef i32 @_ZL18packet_174_large_ai(i32 noundef %add25)
  %19 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %19, %call26
  store i32 %add27, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %20, 9
  %call29 = call noundef i32 @_ZL18packet_174_large_bi(i32 noundef %add28)
  %and30 = and i32 %call29, 255
  %21 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %21, %and30
  store i32 %add31, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %22, 3
  %23 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %23, 10
  %call34 = call noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %and32, i32 noundef %add33)
  %24 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %24, %call34
  store i32 %add35, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %25, 11
  %call37 = call noundef i32 @_ZL18packet_174_large_bi(i32 noundef %add36)
  %26 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %26, %call37
  store i32 %add38, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %27, 3
  %28 = load i32, ptr %x.addr, align 4
  %add40 = add nsw i32 %28, 12
  %call41 = call noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %and39, i32 noundef %add40)
  %29 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %29, %call41
  store i32 %add42, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %and43 = and i32 %30, 3
  %31 = load i32, ptr %x.addr, align 4
  %add44 = add nsw i32 %31, 13
  %call45 = call noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %and43, i32 noundef %add44)
  %32 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %32, %call45
  store i32 %add46, ptr %total, align 4
  %call47 = call noundef i32 @_ZL20packet_174_recursivei(i32 noundef 2)
  %and48 = and i32 %call47, 255
  %33 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %33, %and48
  store i32 %add49, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %34, 3
  %35 = load i32, ptr %x.addr, align 4
  %add51 = add nsw i32 %35, 15
  %call52 = call noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %and50, i32 noundef %add51)
  %36 = load i32, ptr %total, align 4
  %add53 = add nsw i32 %36, %call52
  store i32 %add53, ptr %total, align 4
  %37 = load i32, ptr %total, align 4
  ret i32 %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26packet_174_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 11
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 9
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
define internal noundef i32 @_ZL19packet_174_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 13
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 2
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 5
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 1
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %6, 4
  %mul5 = mul nsw i32 %and4, 2
  %7 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %7, %mul5
  store i32 %add6, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_174_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 6
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 2
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %6, 4
  %mul5 = mul nsw i32 %and4, 3
  %7 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %7, %mul5
  store i32 %add6, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_174_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 4
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 7
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 3
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %6, 4
  %mul5 = mul nsw i32 %and4, 4
  %7 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %7, %mul5
  store i32 %add6, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_174_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 5
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 8
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 4
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %6, 4
  %mul5 = mul nsw i32 %and4, 5
  %7 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %7, %mul5
  store i32 %add6, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_174_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 2
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 10
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 6
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %6, 4
  %mul5 = mul nsw i32 %and4, 7
  %7 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %7, %mul5
  store i32 %add6, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL19packet_174_medium_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 8
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 11
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %mul2 = mul nsw i32 %and, 7
  %5 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %5, %mul2
  store i32 %add3, ptr %y, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %6, 4
  %mul5 = mul nsw i32 %and4, 8
  %7 = load i32, ptr %y, align 4
  %add6 = add nsw i32 %7, %mul5
  store i32 %add6, ptr %y, align 4
  %8 = load i32, ptr %y, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18packet_174_large_ai(i32 noundef %x) #1 {
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
  %add = add nsw i32 %and, 7
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
  %sub = sub nsw i32 %mul, 6
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18packet_174_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 5
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
  %mul3 = mul nsw i32 %and2, 6
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
  %mul13 = mul nsw i32 %and12, 7
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
  %mul23 = mul nsw i32 %and22, 8
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
  %mul33 = mul nsw i32 %and32, 9
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
  %mul43 = mul nsw i32 %and42, 10
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
  %mul53 = mul nsw i32 %and52, 11
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
  %mul63 = mul nsw i32 %and62, 12
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
  %mul73 = mul nsw i32 %and72, 13
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
  %mul83 = mul nsw i32 %and82, 14
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
define internal noundef i32 @_ZL20packet_174_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_174_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
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
