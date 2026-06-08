; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_048.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_048.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_048_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 7
  %and3 = and i32 %x, 7
  %add.i4 = add nuw nsw i32 %and, %and3
  %add5 = add nuw nsw i32 %add.i4, 159
  %add7 = or i32 %add5, 64
  store i32 %add7, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %0, 7
  %add.i8 = add nuw nsw i32 %and8, 53
  %add11 = add nuw nsw i32 %add7, %add.i8
  %and12 = and i32 %0, 7
  %add.i10 = add nuw nsw i32 %and12, 54
  %add14 = add nuw nsw i32 %add11, %add.i10
  %add16 = add nuw nsw i32 %add14, 57
  store i32 %add16, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %1, 7
  %add.i14 = or i32 %and17, 56
  %add19 = add nsw i32 %add16, %add.i14
  store i32 %add19, ptr %total, align 4
  %and20 = and i32 %1, 7
  %mul.i = mul nuw nsw i32 %and20, 3
  %add.i16 = add nuw nsw i32 %mul.i, 48
  %2 = lshr i32 %add.i16, 1
  %xor.i = xor i32 %add.i16, %2
  %mul1.i = shl nuw nsw i32 %xor.i, 2
  %add2.i = add nuw nsw i32 %mul1.i, 49
  %shr3.i = lshr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 50
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 51
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 52
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 53
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 54
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 55
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %3 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %3, %xor28.i
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL16game_048_large_bi(i32 noundef 5)
  %and24 = and i32 %call23, 255
  %add25 = add nsw i32 %add22, %and24
  store i32 %add25, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %4, 7
  %mul.i19 = mul nuw nsw i32 %and26, 3
  %add.i20 = add nuw nsw i32 %mul.i19, 48
  %5 = lshr i32 %add.i20, 1
  %xor.i22 = xor i32 %add.i20, %5
  %mul1.i23 = shl nuw nsw i32 %xor.i22, 2
  %add2.i24 = add nuw nsw i32 %mul1.i23, 49
  %shr3.i25 = lshr i32 %add2.i24, 2
  %xor4.i26 = xor i32 %add2.i24, %shr3.i25
  %mul5.i27 = mul nsw i32 %xor4.i26, 5
  %add6.i28 = add nsw i32 %mul5.i27, 50
  %shr7.i29 = ashr i32 %add6.i28, 3
  %xor8.i30 = xor i32 %add6.i28, %shr7.i29
  %mul9.i31 = mul nsw i32 %xor8.i30, 6
  %add10.i32 = add nsw i32 %mul9.i31, 51
  %shr11.i33 = ashr i32 %add10.i32, 1
  %xor12.i34 = xor i32 %add10.i32, %shr11.i33
  %mul13.i35 = mul nsw i32 %xor12.i34, 7
  %add14.i36 = add nsw i32 %mul13.i35, 52
  %shr15.i37 = ashr i32 %add14.i36, 2
  %xor16.i38 = xor i32 %add14.i36, %shr15.i37
  %mul17.i39 = shl nsw i32 %xor16.i38, 3
  %add18.i40 = add nsw i32 %mul17.i39, 53
  %shr19.i41 = ashr i32 %add18.i40, 3
  %xor20.i42 = xor i32 %add18.i40, %shr19.i41
  %mul21.i43 = mul nsw i32 %xor20.i42, 9
  %add22.i44 = add nsw i32 %mul21.i43, 54
  %shr23.i45 = ashr i32 %add22.i44, 1
  %xor24.i46 = xor i32 %add22.i44, %shr23.i45
  %mul25.i47 = mul nsw i32 %xor24.i46, 10
  %add26.i48 = add nsw i32 %mul25.i47, 55
  %shr27.i49 = ashr i32 %add26.i48, 2
  %xor28.i50 = xor i32 %add26.i48, %shr27.i49
  %6 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %6, %xor28.i50
  store i32 %add28, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %7, 7
  %call30 = call noundef i32 @_ZL16game_048_large_bi(i32 noundef %and29)
  %add31 = add nsw i32 %add28, %call30
  store i32 %add31, ptr %total, align 4
  %call32 = call noundef i32 @_ZL24game_048_branch_variableii(i32 noundef 0, i32 noundef 8)
  %add33 = add nsw i32 %add31, %call32
  store i32 %add33, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %8, 3
  %and35 = and i32 %8, 7
  %call36 = call noundef i32 @_ZL24game_048_branch_variableii(i32 noundef %and34, i32 noundef %and35)
  %add37 = add nsw i32 %add33, %call36
  store i32 %add37, ptr %total, align 4
  %call38 = call noundef i32 @_ZL18game_048_recursivei(i32 noundef 2)
  %and39 = and i32 %call38, 255
  %add40 = add nsw i32 %add37, %and39
  store i32 %add40, ptr %total, align 4
  %call41 = call noundef i32 @_ZL18game_048_recursivei(i32 noundef 3)
  %add42 = add nsw i32 %add40, %call41
  store i32 %add42, ptr %total, align 4
  ret i32 %add42
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_048_large_bi(i32 noundef %x) #1 {
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
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %xor
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
define internal noundef i32 @_ZL24game_048_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL18game_048_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_048_recursivei(i32 noundef %sub)
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
