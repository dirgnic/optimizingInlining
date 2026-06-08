; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_188.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_188.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @game_188_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL24game_188_branch_variableii(i32 noundef 0, i32 noundef 6)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 7
  %call1 = call noundef i32 @_ZL15game_188_tiny_1i(i32 noundef %and)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %call1
  store i32 %add2, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %3, 7
  %call4 = call noundef i32 @_ZL15game_188_tiny_2i(i32 noundef %and3)
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, %call4
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL15game_188_tiny_3i(i32 noundef 9)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %call6
  store i32 %add7, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %6, 7
  %call9 = call noundef i32 @_ZL15game_188_tiny_4i(i32 noundef %and8)
  %7 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %7, %call9
  store i32 %add10, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %8, 3
  %9 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %9, 7
  %call13 = call noundef i32 @_ZL24game_188_branch_variableii(i32 noundef %and11, i32 noundef %and12)
  %10 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %10, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL15game_188_tiny_6i(i32 noundef 12)
  %11 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %11, %call15
  store i32 %add16, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %12, 7
  %call18 = call noundef i32 @_ZL15game_188_tiny_7i(i32 noundef %and17)
  %13 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %13, %call18
  store i32 %add19, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %14, 7
  %call21 = call noundef i32 @_ZL16game_188_large_ai(i32 noundef %and20)
  %15 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %15, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL16game_188_large_bi(i32 noundef 2)
  %16 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %16, %call23
  store i32 %add24, ptr %total, align 4
  %17 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %17, 7
  %call26 = call noundef i32 @_ZL24game_188_branch_variableii(i32 noundef 2, i32 noundef %and25)
  %18 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %18, %call26
  store i32 %add27, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %19, 7
  %call29 = call noundef i32 @_ZL16game_188_large_bi(i32 noundef %and28)
  %20 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %20, %call29
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL24game_188_branch_variableii(i32 noundef 0, i32 noundef 5)
  %21 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %21, %call31
  store i32 %add32, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and33 = and i32 %22, 3
  %23 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %23, 7
  %call35 = call noundef i32 @_ZL24game_188_branch_variableii(i32 noundef %and33, i32 noundef %and34)
  %24 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %24, %call35
  store i32 %add36, ptr %total, align 4
  %call37 = call noundef i32 @_ZL18game_188_recursivei(i32 noundef 2)
  %25 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %25, %call37
  store i32 %add38, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %26, 3
  %call40 = call noundef i32 @_ZL24game_188_branch_variableii(i32 noundef %and39, i32 noundef 8)
  %27 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %27, %call40
  store i32 %add41, ptr %total, align 4
  %28 = load i32, ptr %total, align 4
  ret i32 %28
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL24game_188_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = mul nsw i32 %3, 2
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
define internal noundef i32 @_ZL15game_188_tiny_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 190
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_188_tiny_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 191
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_188_tiny_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 192
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_188_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 193
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_188_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 195
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL15game_188_tiny_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %0, 196
  ret i32 %xor
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL16game_188_large_ai(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 6
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
define internal noundef i32 @_ZL16game_188_large_bi(i32 noundef %x) #1 {
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
  %sub = sub nsw i32 %mul, 2
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
define internal noundef i32 @_ZL18game_188_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_188_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL18game_188_recursivei(i32 noundef %sub1)
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
