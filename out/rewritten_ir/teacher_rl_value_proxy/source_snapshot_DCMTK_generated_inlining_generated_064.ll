; ModuleID = './out/rewritten_ir/teacher_rl_value_proxy/source_snapshot_DCMTK_generated_inlining_generated_064.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_064.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_064_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %call = call noundef i32 @_ZL15game_064_tiny_0i(i32 noundef %x)
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL15game_064_tiny_1i(i32 noundef %add2)
  %add4 = add nsw i32 %call, %call3
  %add5 = add nsw i32 %x, 2
  %call6 = call noundef i32 @_ZL15game_064_tiny_2i(i32 noundef %add5)
  %add7 = add nsw i32 %add4, %call6
  %add8 = add nsw i32 %x, 3
  %call9 = call noundef i32 @_ZL15game_064_tiny_3i(i32 noundef %add8)
  %add10 = add nsw i32 %add7, %call9
  %0 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %0, 4
  %call12 = call noundef i32 @_ZL15game_064_tiny_4i(i32 noundef %add11)
  %add13 = add nsw i32 %add10, %call12
  %add14 = add nsw i32 %0, 5
  %call15 = call noundef i32 @_ZL15game_064_tiny_5i(i32 noundef %add14)
  %add16 = add nsw i32 %add13, %call15
  %1 = load i32, ptr %x.addr, align 4
  %add17 = add nsw i32 %1, 6
  %call18 = call noundef i32 @_ZL15game_064_tiny_6i(i32 noundef %add17)
  %add19 = add nsw i32 %add16, %call18
  %add20 = add nsw i32 %1, 7
  %call21 = call noundef i32 @_ZL15game_064_tiny_7i(i32 noundef %add20)
  %add22 = add nsw i32 %add19, %call21
  %2 = load i32, ptr %x.addr, align 4
  %add23 = add nsw i32 %2, 8
  %call24 = call noundef i32 @_ZL16game_064_large_ai(i32 noundef %add23)
  %add25 = add nsw i32 %add22, %call24
  %add26 = add nsw i32 %2, 9
  %call27 = call noundef i32 @_ZL16game_064_large_bi(i32 noundef %add26)
  %add28 = add nsw i32 %add25, %call27
  %3 = load i32, ptr %x.addr, align 4
  %add29 = add nsw i32 %3, 10
  %call30 = call noundef i32 @_ZL16game_064_large_ai(i32 noundef %add29)
  %add31 = add nsw i32 %add28, %call30
  %add32 = add nsw i32 %3, 11
  %call33 = call noundef i32 @_ZL16game_064_large_bi(i32 noundef %add32)
  %add34 = add nsw i32 %add31, %call33
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 3
  %add35 = add nsw i32 %4, 12
  %call36 = call noundef i32 @_ZL24game_064_branch_variableii(i32 noundef %and, i32 noundef %add35)
  %add37 = add nsw i32 %add34, %call36
  %and38 = and i32 %4, 3
  %add39 = add nsw i32 %4, 13
  %call40 = call noundef i32 @_ZL24game_064_branch_variableii(i32 noundef %and38, i32 noundef %add39)
  %add41 = add nsw i32 %add37, %call40
  %call42 = call noundef i32 @_ZL18game_064_recursivei(i32 noundef 2)
  %add43 = add nsw i32 %add41, %call42
  %call44 = call noundef i32 @_ZL18game_064_recursivei(i32 noundef 3)
  %add45 = add nsw i32 %add43, %call44
  ret i32 %add45
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_0i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 65
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_1i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 66
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_2i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 67
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_3i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 68
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_4i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 69
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_5i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 70
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_6i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 71
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_064_tiny_7i(i32 noundef %x) #1 {
entry:
  %xor = xor i32 %x, 72
  ret i32 %xor
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_064_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 12
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %add
  %shl = shl i32 %add1, 1
  %shr = ashr i32 %add1, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %s, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_064_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 5
  store i32 %add, ptr %limit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %1
  %sub = add nsw i32 %mul, -4
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %sub
  store i32 %add1, ptr %s, align 4
  %and2 = and i32 %add1, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %3, %4
  %5 = load i32, ptr %s, align 4
  %xor = xor i32 %5, %add4
  store i32 %xor, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_064_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -7
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %5, %6
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_064_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %1 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %1, -2
  %call = call noundef i32 @_ZL18game_064_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_064_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
  ret i32 %storemerge
}

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
