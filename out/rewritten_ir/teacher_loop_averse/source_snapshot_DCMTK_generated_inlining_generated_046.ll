; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_046.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_046.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_046_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  %call = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and, i32 noundef %x)
  store i32 %call, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL19packet_046_medium_1i(i32 noundef %add2)
  %add4 = add nsw i32 %call, %call3
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %0, 2
  %call6 = call noundef i32 @_ZL19packet_046_medium_2i(i32 noundef %add5)
  %add7 = add nsw i32 %add4, %call6
  store i32 %add7, ptr %total, align 4
  %add8 = add nsw i32 %0, 3
  %call9 = call noundef i32 @_ZL19packet_046_medium_3i(i32 noundef %add8)
  %add10 = add nsw i32 %add7, %call9
  store i32 %add10, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %1, 4
  %call12 = call noundef i32 @_ZL19packet_046_medium_4i(i32 noundef %add11)
  %and13 = and i32 %call12, 255
  %add14 = add nsw i32 %add10, %and13
  store i32 %add14, ptr %total, align 4
  %and15 = and i32 %1, 3
  %2 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %2, 5
  %call17 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and15, i32 noundef %add16)
  %add18 = add nsw i32 %add14, %call17
  store i32 %add18, ptr %total, align 4
  %add19 = add nsw i32 %2, 6
  %call20 = call noundef i32 @_ZL19packet_046_medium_6i(i32 noundef %add19)
  %add21 = add nsw i32 %add18, %call20
  store i32 %add21, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %3, 7
  %call23 = call noundef i32 @_ZL19packet_046_medium_7i(i32 noundef %add22)
  %add24 = add nsw i32 %add21, %call23
  store i32 %add24, ptr %total, align 4
  %4 = mul i32 %3, 3
  %add.i = add i32 %4, 70
  %shr.i = ashr i32 %add.i, 1
  %xor.i = xor i32 %add.i, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 47
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 48
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 49
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 50
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 51
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 52
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 53
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %5 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %5, %xor28.i
  store i32 %add27, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %6, 9
  %call29 = call noundef i32 @_ZL18packet_046_large_bi(i32 noundef %add28)
  %and30 = and i32 %call29, 255
  %add31 = add nsw i32 %add27, %and30
  store i32 %add31, ptr %total, align 4
  %and32 = and i32 %6, 3
  %7 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %7, 10
  %call34 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and32, i32 noundef %add33)
  %add35 = add nsw i32 %add31, %call34
  store i32 %add35, ptr %total, align 4
  %add36 = add nsw i32 %7, 11
  %call37 = call noundef i32 @_ZL18packet_046_large_bi(i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  store i32 %add38, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %8, 3
  %add40 = add nsw i32 %8, 12
  %call41 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and39, i32 noundef %add40)
  %add42 = add nsw i32 %add38, %call41
  store i32 %add42, ptr %total, align 4
  %and43 = and i32 %8, 3
  %9 = load i32, ptr %x.addr, align 4
  %add44 = add nsw i32 %9, 13
  %call45 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and43, i32 noundef %add44)
  %add46 = add nsw i32 %add42, %call45
  store i32 %add46, ptr %total, align 4
  %call47 = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef 2)
  %and48 = and i32 %call47, 255
  %add49 = add nsw i32 %add46, %and48
  store i32 %add49, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %10, 3
  %add51 = add nsw i32 %10, 15
  %call52 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and50, i32 noundef %add51)
  %add53 = add nsw i32 %add49, %call52
  store i32 %add53, ptr %total, align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }

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
