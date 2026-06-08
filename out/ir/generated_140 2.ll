; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_140.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_140.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @game_140_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 3
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 0
  %call = call noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %and, i32 noundef %add)
  %2 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %2, %call
  store i32 %add1, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %3, 1
  %call3 = call noundef i32 @_ZL15game_140_tiny_1i(i32 noundef %add2)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %call3
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %call6 = call noundef i32 @_ZL15game_140_tiny_2i(i32 noundef %add5)
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %call6
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  %call9 = call noundef i32 @_ZL15game_140_tiny_3i(i32 noundef %add8)
  %8 = load i32, ptr %total, align 4
  %xor = xor i32 %8, %call9
  store i32 %xor, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %9, 4
  %call11 = call noundef i32 @_ZL15game_140_tiny_4i(i32 noundef %add10)
  %10 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %10, %call11
  store i32 %add12, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and13 = and i32 %11, 3
  %12 = load i32, ptr %x.addr, align 4
  %add14 = add nsw i32 %12, 5
  %call15 = call noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %and13, i32 noundef %add14)
  %13 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %13, %call15
  store i32 %add16, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add17 = add nsw i32 %14, 6
  %call18 = call noundef i32 @_ZL15game_140_tiny_6i(i32 noundef %add17)
  %15 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %15, %call18
  store i32 %add19, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %16, 7
  %call21 = call noundef i32 @_ZL15game_140_tiny_7i(i32 noundef %add20)
  %17 = load i32, ptr %total, align 4
  %xor22 = xor i32 %17, %call21
  store i32 %xor22, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add23 = add nsw i32 %18, 8
  %call24 = call noundef i32 @_ZL16game_140_large_ai(i32 noundef %add23)
  %19 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %19, %call24
  store i32 %add25, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %20, 9
  %call27 = call noundef i32 @_ZL16game_140_large_bi(i32 noundef %add26)
  %21 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %21, %call27
  store i32 %add28, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %22, 3
  %23 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %23, 10
  %call31 = call noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %and29, i32 noundef %add30)
  %24 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %24, %call31
  store i32 %add32, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %25, 11
  %call34 = call noundef i32 @_ZL16game_140_large_bi(i32 noundef %add33)
  %26 = load i32, ptr %total, align 4
  %xor35 = xor i32 %26, %call34
  store i32 %xor35, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and36 = and i32 %27, 3
  %28 = load i32, ptr %x.addr, align 4
  %add37 = add nsw i32 %28, 12
  %call38 = call noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %and36, i32 noundef %add37)
  %29 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %29, %call38
  store i32 %add39, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %and40 = and i32 %30, 3
  %31 = load i32, ptr %x.addr, align 4
  %add41 = add nsw i32 %31, 13
  %call42 = call noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %and40, i32 noundef %add41)
  %32 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %32, %call42
  store i32 %add43, ptr %total, align 4
  %call44 = call noundef i32 @_ZL18game_140_recursivei(i32 noundef 2)
  %33 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %33, %call44
  store i32 %add45, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %and46 = and i32 %34, 3
  %35 = load i32, ptr %x.addr, align 4
  %add47 = add nsw i32 %35, 15
  %call48 = call noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %and46, i32 noundef %add47)
  %36 = load i32, ptr %total, align 4
  %xor49 = xor i32 %36, %call48
  store i32 %xor49, ptr %total, align 4
  %37 = load i32, ptr %total, align 4
  ret i32 %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL24game_140_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = mul nsw i32 %3, 2
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
define internal noundef i32 @_ZL15game_140_tiny_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 142
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_140_tiny_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 143
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_140_tiny_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 144
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_140_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 145
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_140_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 147
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_140_tiny_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 148
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16game_140_large_ai(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %1, 8
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %s, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16game_140_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %and, 6
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
  %sub = sub nsw i32 %mul, 3
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %s, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL18game_140_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_140_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL18game_140_recursivei(i32 noundef %sub1)
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
