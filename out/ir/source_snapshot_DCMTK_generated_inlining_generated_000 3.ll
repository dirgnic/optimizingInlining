; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_000.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_000.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define i32 @game_000_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
  %call = call noundef i32 @_ZL15game_000_tiny_0i(i32 noundef %add)
  %1 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %1, %call
  store i32 %add1, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %2, 1
  %call3 = call noundef i32 @_ZL15game_000_tiny_1i(i32 noundef %add2)
  %3 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %3, %call3
  store i32 %add4, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %4, 2
  %call6 = call noundef i32 @_ZL15game_000_tiny_2i(i32 noundef %add5)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %call6
  store i32 %add7, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %6, 3
  %call9 = call noundef i32 @_ZL15game_000_tiny_3i(i32 noundef %add8)
  %7 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %7, %call9
  store i32 %add10, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %8, 4
  %call12 = call noundef i32 @_ZL15game_000_tiny_4i(i32 noundef %add11)
  %9 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %9, %call12
  store i32 %add13, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add14 = add nsw i32 %10, 5
  %call15 = call noundef i32 @_ZL15game_000_tiny_5i(i32 noundef %add14)
  %11 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %11, %call15
  store i32 %add16, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %add17 = add nsw i32 %12, 6
  %call18 = call noundef i32 @_ZL15game_000_tiny_6i(i32 noundef %add17)
  %13 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %13, %call18
  store i32 %add19, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %14, 7
  %call21 = call noundef i32 @_ZL15game_000_tiny_7i(i32 noundef %add20)
  %15 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %15, %call21
  store i32 %add22, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add23 = add nsw i32 %16, 8
  %call24 = call noundef i32 @_ZL16game_000_large_ai(i32 noundef %add23)
  %17 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %17, %call24
  store i32 %add25, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %18, 9
  %call27 = call noundef i32 @_ZL16game_000_large_bi(i32 noundef %add26)
  %19 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %19, %call27
  store i32 %add28, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add29 = add nsw i32 %20, 10
  %call30 = call noundef i32 @_ZL16game_000_large_ai(i32 noundef %add29)
  %21 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %21, %call30
  store i32 %add31, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %22, 11
  %call33 = call noundef i32 @_ZL16game_000_large_bi(i32 noundef %add32)
  %23 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %23, %call33
  store i32 %add34, ptr %total, align 4
  %24 = load i32, ptr %x.addr, align 4
  %and = and i32 %24, 3
  %25 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %25, 12
  %call36 = call noundef i32 @_ZL24game_000_branch_variableii(i32 noundef %and, i32 noundef %add35)
  %26 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %26, %call36
  store i32 %add37, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %27, 3
  %28 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %28, 13
  %call40 = call noundef i32 @_ZL24game_000_branch_variableii(i32 noundef %and38, i32 noundef %add39)
  %29 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %29, %call40
  store i32 %add41, ptr %total, align 4
  %call42 = call noundef i32 @_ZL18game_000_recursivei(i32 noundef 2)
  %30 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %30, %call42
  store i32 %add43, ptr %total, align 4
  %call44 = call noundef i32 @_ZL18game_000_recursivei(i32 noundef 3)
  %31 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %31, %call44
  store i32 %add45, ptr %total, align 4
  %32 = load i32, ptr %total, align 4
  ret i32 %32
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 2
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 4
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_5i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 7
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL15game_000_tiny_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 8
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL16game_000_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 0
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 1
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 2
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 3
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 4
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 5
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 6
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 7
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  ret i32 %25
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL16game_000_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 4
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @_ZL24game_000_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal noundef i32 @_ZL18game_000_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_000_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

attributes #0 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
