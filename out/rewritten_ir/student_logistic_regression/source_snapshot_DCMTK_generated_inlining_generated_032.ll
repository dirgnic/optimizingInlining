; ModuleID = './out/rewritten_ir/student_logistic_regression/source_snapshot_DCMTK_generated_inlining_generated_032.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_032.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_032_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL15game_032_tiny_0i(i32 noundef 0)
  store i32 %call, ptr %total, align 4
  %add1 = add nsw i32 %x, 1
  %call2 = call noundef i32 @_ZL15game_032_tiny_1i(i32 noundef %add1)
  %add3 = add nsw i32 %call, %call2
  store i32 %add3, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call noundef i32 @_ZL15game_032_tiny_2i(i32 noundef 2)
  %1 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %1, %call5
  store i32 %add6, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %x.addr, align 4
  %add7 = add nsw i32 %2, 3
  %call8 = call noundef i32 @_ZL15game_032_tiny_3i(i32 noundef %add7)
  %3 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %3, %call8
  store i32 %add9, ptr %total, align 4
  %call10 = call noundef i32 @_ZL15game_032_tiny_4i(i32 noundef 4)
  %add11 = add nsw i32 %add9, %call10
  store i32 %add11, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %5 = and i32 %4, 1
  %tobool14.not.not = icmp eq i32 %5, 0
  br i1 %tobool14.not.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %6 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %6, 5
  %call17 = call noundef i32 @_ZL15game_032_tiny_5i(i32 noundef %add16)
  %7 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %7, %call17
  store i32 %add18, ptr %total, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  %call20 = call noundef i32 @_ZL15game_032_tiny_6i(i32 noundef 6)
  %8 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %8, %call20
  store i32 %add21, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %9, 7
  %call23 = call noundef i32 @_ZL15game_032_tiny_7i(i32 noundef %add22)
  %add24 = add nsw i32 %add21, %call23
  store i32 %add24, ptr %total, align 4
  %and26 = and i32 %9, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end19
  %call29 = call noundef i32 @_ZL16game_032_large_ai(i32 noundef 1)
  %10 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %10, %call29
  store i32 %add30, ptr %total, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end19
  %11 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %11, 9
  %call33 = call noundef i32 @_ZL16game_032_large_bi(i32 noundef %add32)
  %12 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %12, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL16game_032_large_ai(i32 noundef 3)
  %add36 = add nsw i32 %add34, %call35
  store i32 %add36, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %14 = and i32 %13, 1
  %tobool39.not.not = icmp eq i32 %14, 0
  br i1 %tobool39.not.not, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end31
  %15 = load i32, ptr %x.addr, align 4
  %add41 = add nsw i32 %15, 11
  %call42 = call noundef i32 @_ZL16game_032_large_bi(i32 noundef %add41)
  %16 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %16, %call42
  store i32 %add43, ptr %total, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end31
  %call45 = call noundef i32 @_ZL24game_032_branch_variableii(i32 noundef 0, i32 noundef 5)
  %17 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %17, %call45
  store i32 %add46, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add47 = add nsw i32 %18, 13
  %call48 = call noundef i32 @_ZL24game_032_branch_variableii(i32 noundef 1, i32 noundef %add47)
  %add49 = add nsw i32 %add46, %call48
  store i32 %add49, ptr %total, align 4
  %and51 = and i32 %18, 1
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.end44
  %call54 = call noundef i32 @_ZL18game_032_recursivei(i32 noundef 2)
  %19 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %19, %call54
  store i32 %add55, ptr %total, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end44
  %call57 = call noundef i32 @_ZL18game_032_recursivei(i32 noundef 3)
  %20 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %20, %call57
  store i32 %add58, ptr %total, align 4
  ret i32 %add58
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_0i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 33
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_1i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 34
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_2i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 35
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_3i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 36
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_4i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 37
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_5i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 38
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_6i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 39
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_032_tiny_7i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 40
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_032_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 32
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 33
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 34
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 35
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 36
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 37
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 38
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 39
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_032_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 10
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
define internal noundef i32 @_ZL24game_032_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 2
  store i32 %add, ptr %t, align 4
  %cmp = icmp slt i32 %mode, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %1, 1
  %mul = mul nsw i32 %0, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_032_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_032_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
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
