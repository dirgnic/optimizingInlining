; ModuleID = './out/rewritten_ir/teacher_cost_budget/source_snapshot_DCMTK_generated_inlining_generated_046.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_046.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_046_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %call = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and, i32 noundef %x)
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL19packet_046_medium_1i(i32 noundef %add2)
  %add4 = add nsw i32 %call, %call3
  %add5 = add nsw i32 %x, 2
  %call6 = call noundef i32 @_ZL19packet_046_medium_2i(i32 noundef %add5)
  %add7 = add nsw i32 %add4, %call6
  %add8 = add nsw i32 %x, 3
  %call9 = call noundef i32 @_ZL19packet_046_medium_3i(i32 noundef %add8)
  %add10 = add nsw i32 %add7, %call9
  %0 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %0, 4
  %call12 = call noundef i32 @_ZL19packet_046_medium_4i(i32 noundef %add11)
  %and13 = and i32 %call12, 255
  %add14 = add nsw i32 %add10, %and13
  %and15 = and i32 %0, 3
  %add16 = add nsw i32 %0, 5
  %call17 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and15, i32 noundef %add16)
  %add18 = add nsw i32 %add14, %call17
  %add19 = add nsw i32 %0, 6
  %call20 = call noundef i32 @_ZL19packet_046_medium_6i(i32 noundef %add19)
  %add21 = add nsw i32 %add18, %call20
  %1 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %1, 7
  %call23 = call noundef i32 @_ZL19packet_046_medium_7i(i32 noundef %add22)
  %add24 = add nsw i32 %add21, %call23
  %add25 = add nsw i32 %1, 8
  %call26 = call noundef i32 @_ZL18packet_046_large_ai(i32 noundef %add25)
  %add27 = add nsw i32 %add24, %call26
  %2 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %2, 9
  %call29 = call noundef i32 @_ZL18packet_046_large_bi(i32 noundef %add28)
  %and30 = and i32 %call29, 255
  %add31 = add nsw i32 %add27, %and30
  %and32 = and i32 %2, 3
  %add33 = add nsw i32 %2, 10
  %call34 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and32, i32 noundef %add33)
  %add35 = add nsw i32 %add31, %call34
  %add36 = add nsw i32 %2, 11
  %call37 = call noundef i32 @_ZL18packet_046_large_bi(i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  %3 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %3, 3
  %add40 = add nsw i32 %3, 12
  %call41 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and39, i32 noundef %add40)
  %add42 = add nsw i32 %add38, %call41
  %and43 = and i32 %3, 3
  %add44 = add nsw i32 %3, 13
  %call45 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and43, i32 noundef %add44)
  %add46 = add nsw i32 %add42, %call45
  %call47 = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef 2)
  %and48 = and i32 %call47, 255
  %add49 = add nsw i32 %add46, %and48
  %4 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %4, 3
  %add51 = add nsw i32 %4, 15
  %call52 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and50, i32 noundef %add51)
  %add53 = add nsw i32 %add49, %call52
  ret i32 %add53
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL19packet_046_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 6
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_046_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 7
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_046_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 8
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_046_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 9
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_046_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 11
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_046_medium_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 12
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_046_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 46
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 47
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 48
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 49
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 50
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 51
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 52
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 53
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_046_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 11
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
define internal noundef i32 @_ZL20packet_046_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef %sub)
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
