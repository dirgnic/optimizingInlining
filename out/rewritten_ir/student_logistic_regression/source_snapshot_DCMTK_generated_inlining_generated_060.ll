; ModuleID = './out/rewritten_ir/student_logistic_regression/source_snapshot_DCMTK_generated_inlining_generated_060.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_060.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_060_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %call = call noundef i32 @_ZL24game_060_branch_variableii(i32 noundef 0, i32 noundef 8)
  %and = and i32 %x, 7
  %call1 = call noundef i32 @_ZL15game_060_tiny_1i(i32 noundef %and)
  %add2 = add nsw i32 %call, %call1
  %and3 = and i32 %x, 7
  %call4 = call noundef i32 @_ZL15game_060_tiny_2i(i32 noundef %and3)
  %add5 = add nsw i32 %add2, %call4
  %call6 = call noundef i32 @_ZL15game_060_tiny_3i(i32 noundef 11)
  %add7 = add nsw i32 %add5, %call6
  %0 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %0, 7
  %call9 = call noundef i32 @_ZL15game_060_tiny_4i(i32 noundef %and8)
  %and10 = and i32 %call9, 255
  %add11 = add nsw i32 %add7, %and10
  %and12 = and i32 %0, 3
  %and13 = and i32 %0, 7
  %call14 = call noundef i32 @_ZL24game_060_branch_variableii(i32 noundef %and12, i32 noundef %and13)
  %add15 = add nsw i32 %add11, %call14
  %call16 = call noundef i32 @_ZL15game_060_tiny_6i(i32 noundef 1)
  %add17 = add nsw i32 %add15, %call16
  %1 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %1, 7
  %call19 = call noundef i32 @_ZL15game_060_tiny_7i(i32 noundef %and18)
  %add20 = add nsw i32 %add17, %call19
  %and21 = and i32 %1, 7
  %call22 = call noundef i32 @_ZL16game_060_large_ai(i32 noundef %and21)
  %add23 = add nsw i32 %add20, %call22
  %call24 = call noundef i32 @_ZL16game_060_large_bi(i32 noundef 4)
  %and25 = and i32 %call24, 255
  %add26 = add nsw i32 %add23, %and25
  %2 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %2, 7
  %call28 = call noundef i32 @_ZL24game_060_branch_variableii(i32 noundef 2, i32 noundef %and27)
  %add29 = add nsw i32 %add26, %call28
  %and30 = and i32 %2, 7
  %call31 = call noundef i32 @_ZL16game_060_large_bi(i32 noundef %and30)
  %add32 = add nsw i32 %add29, %call31
  %call33 = call noundef i32 @_ZL24game_060_branch_variableii(i32 noundef 0, i32 noundef 7)
  %add34 = add nsw i32 %add32, %call33
  %3 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %3, 3
  %and36 = and i32 %3, 7
  %call37 = call noundef i32 @_ZL24game_060_branch_variableii(i32 noundef %and35, i32 noundef %and36)
  %add38 = add nsw i32 %add34, %call37
  %call39 = call noundef i32 @_ZL18game_060_recursivei(i32 noundef 2)
  %and40 = and i32 %call39, 255
  %add41 = add nsw i32 %add38, %and40
  %4 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %4, 3
  %call43 = call noundef i32 @_ZL24game_060_branch_variableii(i32 noundef %and42, i32 noundef 10)
  %add44 = add nsw i32 %add41, %call43
  ret i32 %add44
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_060_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %out, align 4
  %and = and i32 %mode, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %out, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 6
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_060_tiny_1i(i32 noundef %x) #1 {
entry:
  %sub = add nsw i32 %x, -7
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_060_tiny_2i(i32 noundef %x) #1 {
entry:
  %sub = add nsw i32 %x, -8
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_060_tiny_3i(i32 noundef %x) #1 {
entry:
  %sub = add nsw i32 %x, -9
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_060_tiny_4i(i32 noundef %x) #1 {
entry:
  %sub = add nsw i32 %x, -10
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_060_tiny_6i(i32 noundef %x) #1 {
entry:
  %sub = add nsw i32 %x, -1
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_060_tiny_7i(i32 noundef %x) #1 {
entry:
  %sub = add nsw i32 %x, -2
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_060_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 6
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 7
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -1
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = shl i32 %6, 3
  %mul13 = and i32 %and12, 40
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -2
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 9
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -3
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_060_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 77
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 78
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 79
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 80
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 81
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 82
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 83
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 84
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_060_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_060_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_060_recursivei(i32 noundef %sub1)
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
