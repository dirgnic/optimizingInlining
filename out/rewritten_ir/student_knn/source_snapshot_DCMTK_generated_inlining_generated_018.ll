; ModuleID = './out/rewritten_ir/student_knn/source_snapshot_DCMTK_generated_inlining_generated_018.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_018.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_018_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %call = call noundef i32 @_ZL19packet_018_medium_0i(i32 noundef 5)
  %and = and i32 %x, 7
  %call1 = call noundef i32 @_ZL19packet_018_medium_1i(i32 noundef %and)
  %add2 = add nsw i32 %call, %call1
  %and3 = and i32 %x, 7
  %call4 = call noundef i32 @_ZL19packet_018_medium_2i(i32 noundef %and3)
  %add5 = add nsw i32 %add2, %call4
  %call6 = call noundef i32 @_ZL19packet_018_medium_3i(i32 noundef 8)
  %xor = xor i32 %add5, %call6
  %0 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %0, 7
  %call8 = call noundef i32 @_ZL19packet_018_medium_4i(i32 noundef %and7)
  %add9 = add nsw i32 %xor, %call8
  %and10 = and i32 %0, 7
  %call11 = call noundef i32 @_ZL19packet_018_medium_5i(i32 noundef %and10)
  %add12 = add nsw i32 %add9, %call11
  %call13 = call noundef i32 @_ZL19packet_018_medium_6i(i32 noundef 11)
  %add14 = add nsw i32 %add12, %call13
  %1 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %1, 7
  %call16 = call noundef i32 @_ZL19packet_018_medium_7i(i32 noundef %and15)
  %xor17 = xor i32 %add14, %call16
  %and18 = and i32 %1, 7
  %call19 = call noundef i32 @_ZL18packet_018_large_ai(i32 noundef %and18)
  %add20 = add nsw i32 %xor17, %call19
  %call21 = call noundef i32 @_ZL18packet_018_large_bi(i32 noundef 1)
  %add22 = add nsw i32 %add20, %call21
  %2 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %2, 7
  %call24 = call noundef i32 @_ZL18packet_018_large_ai(i32 noundef %and23)
  %add25 = add nsw i32 %add22, %call24
  %and26 = and i32 %2, 7
  %call27 = call noundef i32 @_ZL18packet_018_large_bi(i32 noundef %and26)
  %xor28 = xor i32 %add25, %call27
  %call29 = call noundef i32 @_ZL26packet_018_branch_variableii(i32 noundef 2, i32 noundef 4)
  %add30 = add nsw i32 %xor28, %call29
  %3 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %3, 3
  %and32 = and i32 %3, 7
  %call33 = call noundef i32 @_ZL26packet_018_branch_variableii(i32 noundef %and31, i32 noundef %and32)
  %add34 = add nsw i32 %add30, %call33
  %call35 = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef 2)
  %add36 = add nsw i32 %add34, %call35
  %call37 = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef 3)
  %xor38 = xor i32 %add36, %call37
  ret i32 %xor38
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_018_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 10
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  store i32 %add1, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, ptr %y, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_018_medium_1i(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %2, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_018_medium_2i(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %2, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_018_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 13
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
define internal noundef i32 @_ZL19packet_018_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 3
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
define internal noundef i32 @_ZL19packet_018_medium_5i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 4
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
define internal noundef i32 @_ZL19packet_018_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 5
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
  %sub = add nsw i32 %2, -6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_018_medium_7i(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %2, -7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_018_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 18
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 19
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 20
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 21
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 22
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 23
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 24
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 25
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_018_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 4
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_018_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 3
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
define internal noundef i32 @_ZL20packet_018_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef %sub)
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
