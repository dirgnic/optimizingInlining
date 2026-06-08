; ModuleID = './out/rewritten_ir/teacher_ml_linear_score/source_snapshot_DCMTK_generated_inlining_generated_031.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_031.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_031_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  %call = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and, i32 noundef %x)
  store i32 %call, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add2)
  %add4 = add nsw i32 %call, %call3
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %0, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %1, 3
  %add8 = add nsw i32 %1, 2
  %call9 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and7, i32 noundef %add8)
  %2 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %2, %call9
  store i32 %add10, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %3 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %3, %call11
  store i32 %add12, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add13 = add nsw i32 %4, 4
  %call14 = call noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %add13)
  %add15 = add nsw i32 %add12, %call14
  store i32 %add15, ptr %total, align 4
  %5 = and i32 %4, 1
  %tobool18.not.not = icmp eq i32 %5, 0
  br i1 %tobool18.not.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %6 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %6, 3
  %add21 = add nsw i32 %6, 5
  %call22 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and20, i32 noundef %add21)
  %7 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %7, %call22
  store i32 %add23, ptr %total, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end
  %8 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %8, 3
  %add26 = add nsw i32 %8, 6
  %call27 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and25, i32 noundef %add26)
  %9 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %9, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %10, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %if.end24
  %11 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %11, 8
  %call36 = call noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %add35)
  %12 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %12, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end24
  %13 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %13, 9
  %call40 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add39)
  %14 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %14, %call40
  store i32 %add41, ptr %total, align 4
  %and42 = and i32 %13, 3
  %15 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %15, 10
  %call44 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and42, i32 noundef %add43)
  %add45 = add nsw i32 %add41, %call44
  store i32 %add45, ptr %total, align 4
  %16 = and i32 %15, 1
  %tobool48.not.not = icmp eq i32 %16, 0
  br i1 %tobool48.not.not, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end38
  %call50 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %17 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %17, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38
  %18 = load i32, ptr %x.addr, align 4
  %add53 = add nsw i32 %18, 12
  %call54 = call noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %add53)
  %19 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %19, %call54
  store i32 %add55, ptr %total, align 4
  %add56 = add nsw i32 %18, 13
  %call57 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add56)
  %add58 = add nsw i32 %add55, %call57
  store i32 %add58, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %and60 = and i32 %20, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.end52
  %21 = load i32, ptr %x.addr, align 4
  %and63 = and i32 %21, 3
  %add64 = add nsw i32 %21, 14
  %call65 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and63, i32 noundef %add64)
  %22 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %22, %call65
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end52
  %23 = load i32, ptr %x.addr, align 4
  %and68 = and i32 %23, 3
  %add69 = add nsw i32 %23, 15
  %call70 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and68, i32 noundef %add69)
  %24 = load i32, ptr %total, align 4
  %add71 = add nsw i32 %24, %call70
  store i32 %add71, ptr %total, align 4
  ret i32 %add71
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 1
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 9
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 31
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 32
  %shr3 = ashr exact i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 33
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 34
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 35
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 36
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 37
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 38
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
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
