; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_012.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_012.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_012_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  %call = call noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %and, i32 noundef %x)
  %sub.i = add nsw i32 %x, -2
  %add4 = add nsw i32 %call, %sub.i
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %sub.i2 = add nsw i32 %0, -2
  %add7 = add nsw i32 %add4, %sub.i2
  %sub.i4 = add nsw i32 %0, -2
  %add10 = add nsw i32 %add7, %sub.i4
  %sub.i6 = add nsw i32 %0, -2
  %add13 = add nsw i32 %add10, %sub.i6
  store i32 %add13, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and14 = and i32 %1, 3
  %add15 = add nsw i32 %1, 5
  %call16 = call noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %and14, i32 noundef %add15)
  %add17 = add nsw i32 %add13, %call16
  %sub.i8 = add nsw i32 %1, -2
  %add20 = add nsw i32 %add17, %sub.i8
  store i32 %add20, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %sub.i10 = add nsw i32 %2, -2
  %add23 = add nsw i32 %add20, %sub.i10
  store i32 %add23, ptr %total, align 4
  %add24 = add nsw i32 %2, 8
  %call25 = call noundef i32 @_ZL16game_012_large_ai(i32 noundef %add24)
  %add26 = add nsw i32 %add23, %call25
  store i32 %add26, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %4 = mul i32 %3, 3
  %add.i = add i32 %4, 56
  %shr.i = ashr i32 %add.i, 1
  %xor.i = xor i32 %add.i, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 30
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 31
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 32
  %shr11.i = ashr exact i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 33
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 34
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 35
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 36
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %5 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %5, %xor28.i
  store i32 %add29, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %6, 3
  %add31 = add nsw i32 %6, 10
  %call32 = call noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %and30, i32 noundef %add31)
  %add33 = add nsw i32 %add29, %call32
  store i32 %add33, ptr %total, align 4
  %7 = mul i32 %6, 3
  %add.i15 = add i32 %7, 62
  %shr.i16 = ashr i32 %add.i15, 1
  %xor.i17 = xor i32 %add.i15, %shr.i16
  %mul1.i18 = shl nsw i32 %xor.i17, 2
  %add2.i19 = add nsw i32 %mul1.i18, 30
  %shr3.i20 = ashr i32 %add2.i19, 2
  %xor4.i21 = xor i32 %add2.i19, %shr3.i20
  %mul5.i22 = mul nsw i32 %xor4.i21, 5
  %add6.i23 = add nsw i32 %mul5.i22, 31
  %shr7.i24 = ashr i32 %add6.i23, 3
  %xor8.i25 = xor i32 %add6.i23, %shr7.i24
  %mul9.i26 = mul nsw i32 %xor8.i25, 6
  %add10.i27 = add nsw i32 %mul9.i26, 32
  %shr11.i28 = ashr exact i32 %add10.i27, 1
  %xor12.i29 = xor i32 %add10.i27, %shr11.i28
  %mul13.i30 = mul nsw i32 %xor12.i29, 7
  %add14.i31 = add nsw i32 %mul13.i30, 33
  %shr15.i32 = ashr i32 %add14.i31, 2
  %xor16.i33 = xor i32 %add14.i31, %shr15.i32
  %mul17.i34 = shl nsw i32 %xor16.i33, 3
  %add18.i35 = add nsw i32 %mul17.i34, 34
  %shr19.i36 = ashr i32 %add18.i35, 3
  %xor20.i37 = xor i32 %add18.i35, %shr19.i36
  %mul21.i38 = mul nsw i32 %xor20.i37, 9
  %add22.i39 = add nsw i32 %mul21.i38, 35
  %shr23.i40 = ashr i32 %add22.i39, 1
  %xor24.i41 = xor i32 %add22.i39, %shr23.i40
  %mul25.i42 = mul nsw i32 %xor24.i41, 10
  %add26.i43 = add nsw i32 %mul25.i42, 36
  %shr27.i44 = ashr i32 %add26.i43, 2
  %xor28.i45 = xor i32 %add26.i43, %shr27.i44
  %8 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %8, %xor28.i45
  store i32 %add36, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %9, 3
  %add38 = add nsw i32 %9, 12
  %call39 = call noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %and37, i32 noundef %add38)
  %add40 = add nsw i32 %add36, %call39
  store i32 %add40, ptr %total, align 4
  %and41 = and i32 %9, 3
  %10 = load i32, ptr %x.addr, align 4
  %add42 = add nsw i32 %10, 13
  %call43 = call noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %and41, i32 noundef %add42)
  %add44 = add nsw i32 %add40, %call43
  store i32 %add44, ptr %total, align 4
  %call45 = call noundef i32 @_ZL18game_012_recursivei(i32 noundef 2)
  %add46 = add nsw i32 %add44, %call45
  store i32 %add46, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and47 = and i32 %11, 3
  %add48 = add nsw i32 %11, 15
  %call49 = call noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %and47, i32 noundef %add48)
  %add50 = add nsw i32 %add46, %call49
  store i32 %add50, ptr %total, align 4
  ret i32 %add50
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_012_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %2, 15
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_012_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 1
  %mul = and i32 %and, 6
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -2
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 3
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -3
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = shl i32 %6, 2
  %mul13 = and i32 %and12, 20
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -4
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 5
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -5
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_012_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_012_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_012_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
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
