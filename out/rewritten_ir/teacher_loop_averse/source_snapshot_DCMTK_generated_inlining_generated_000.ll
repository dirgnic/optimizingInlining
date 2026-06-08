; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_000.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_000.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_000_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add.i14 = shl i32 %x, 3
  %add22 = add i32 %add.i14, 64
  store i32 %add22, ptr %total, align 4
  %0 = mul i32 %x, 3
  %mul.i = add i32 %0, 24
  %shr.i = ashr i32 %mul.i, 1
  %xor.i = xor i32 %mul.i, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = or i32 %mul1.i, 1
  %xor4.i = xor i32 %add2.i, %xor.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 2
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 3
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 4
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = or i32 %mul17.i, 5
  %xor20.i = xor i32 %add18.i, %xor16.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 6
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 7
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %1 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %1, %xor28.i
  store i32 %add25, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %2, 9
  %call27 = call noundef i32 @_ZL16game_000_large_bi(i32 noundef %add26)
  %add28 = add nsw i32 %add25, %call27
  store i32 %add28, ptr %total, align 4
  %3 = mul i32 %2, 3
  %mul.i18 = add i32 %3, 30
  %shr.i19 = ashr i32 %mul.i18, 1
  %xor.i20 = xor i32 %mul.i18, %shr.i19
  %mul1.i21 = shl nsw i32 %xor.i20, 2
  %add2.i22 = or i32 %mul1.i21, 1
  %xor4.i24 = xor i32 %add2.i22, %xor.i20
  %mul5.i25 = mul nsw i32 %xor4.i24, 5
  %add6.i26 = add nsw i32 %mul5.i25, 2
  %shr7.i27 = ashr i32 %add6.i26, 3
  %xor8.i28 = xor i32 %add6.i26, %shr7.i27
  %mul9.i29 = mul nsw i32 %xor8.i28, 6
  %add10.i30 = add nsw i32 %mul9.i29, 3
  %shr11.i31 = ashr i32 %add10.i30, 1
  %xor12.i32 = xor i32 %add10.i30, %shr11.i31
  %mul13.i33 = mul nsw i32 %xor12.i32, 7
  %add14.i34 = add nsw i32 %mul13.i33, 4
  %shr15.i35 = ashr i32 %add14.i34, 2
  %xor16.i36 = xor i32 %add14.i34, %shr15.i35
  %mul17.i37 = shl nsw i32 %xor16.i36, 3
  %add18.i38 = or i32 %mul17.i37, 5
  %xor20.i40 = xor i32 %add18.i38, %xor16.i36
  %mul21.i41 = mul nsw i32 %xor20.i40, 9
  %add22.i42 = add nsw i32 %mul21.i41, 6
  %shr23.i43 = ashr i32 %add22.i42, 1
  %xor24.i44 = xor i32 %add22.i42, %shr23.i43
  %mul25.i45 = mul nsw i32 %xor24.i44, 10
  %add26.i46 = add nsw i32 %mul25.i45, 7
  %shr27.i47 = ashr i32 %add26.i46, 2
  %xor28.i48 = xor i32 %add26.i46, %shr27.i47
  %4 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %4, %xor28.i48
  store i32 %add31, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %5, 11
  %call33 = call noundef i32 @_ZL16game_000_large_bi(i32 noundef %add32)
  %add34 = add nsw i32 %add31, %call33
  store i32 %add34, ptr %total, align 4
  %and = and i32 %5, 3
  %add35 = add nsw i32 %5, 12
  %call36 = call noundef i32 @_ZL24game_000_branch_variableii(i32 noundef %and, i32 noundef %add35)
  %add37 = add nsw i32 %add34, %call36
  store i32 %add37, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %6, 3
  %add39 = add nsw i32 %6, 13
  %call40 = call noundef i32 @_ZL24game_000_branch_variableii(i32 noundef %and38, i32 noundef %add39)
  %add41 = add nsw i32 %add37, %call40
  store i32 %add41, ptr %total, align 4
  %call42 = call noundef i32 @_ZL18game_000_recursivei(i32 noundef 2)
  %add43 = add nsw i32 %add41, %call42
  store i32 %add43, ptr %total, align 4
  %call44 = call noundef i32 @_ZL18game_000_recursivei(i32 noundef 3)
  %add45 = add nsw i32 %add43, %call44
  store i32 %add45, ptr %total, align 4
  ret i32 %add45
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_000_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 4
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
define internal noundef i32 @_ZL24game_000_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %t, align 4
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
define internal noundef i32 @_ZL18game_000_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_000_recursivei(i32 noundef %sub)
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
