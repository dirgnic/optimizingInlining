; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_003.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_003.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_003_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 11113941, ptr %total, align 4
  %and = and i32 %x, 7
  %call1 = call noundef i32 @_ZL18matrix_003_large_bi(i32 noundef %and)
  %add2 = add nsw i32 %call1, 11113941
  store i32 %add2, ptr %total, align 4
  %and3 = and i32 %x, 7
  %call4 = call noundef i32 @_ZL26matrix_003_branch_variableii(i32 noundef 1, i32 noundef %and3)
  %add5 = add nsw i32 %add2, %call4
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %0, 7
  %mul.i3 = mul nuw nsw i32 %and8, 3
  %add.i4 = add nuw nsw i32 %mul.i3, 3
  %1 = lshr i32 %add.i4, 1
  %xor.i6 = xor i32 %add.i4, %1
  %mul1.i7 = shl nuw nsw i32 %xor.i6, 2
  %add2.i8 = add nuw nsw i32 %mul1.i7, 4
  %shr3.i9 = lshr exact i32 %add2.i8, 2
  %xor4.i10 = xor i32 %add2.i8, %shr3.i9
  %mul5.i11 = mul nsw i32 %xor4.i10, 5
  %add6.i12 = add nsw i32 %mul5.i11, 5
  %shr7.i13 = ashr i32 %add6.i12, 3
  %xor8.i14 = xor i32 %add6.i12, %shr7.i13
  %mul9.i15 = mul nsw i32 %xor8.i14, 6
  %add10.i16 = add nsw i32 %mul9.i15, 6
  %shr11.i17 = ashr exact i32 %add10.i16, 1
  %xor12.i18 = xor i32 %add10.i16, %shr11.i17
  %mul13.i19 = mul nsw i32 %xor12.i18, 7
  %add14.i20 = add nsw i32 %mul13.i19, 7
  %shr15.i21 = ashr i32 %add14.i20, 2
  %xor16.i22 = xor i32 %add14.i20, %shr15.i21
  %mul17.i23 = shl nsw i32 %xor16.i22, 3
  %add18.i24 = add nsw i32 %mul17.i23, 8
  %shr19.i25 = ashr exact i32 %add18.i24, 3
  %xor20.i26 = xor i32 %add18.i24, %shr19.i25
  %mul21.i27 = mul nsw i32 %xor20.i26, 9
  %add22.i28 = add nsw i32 %mul21.i27, 9
  %shr23.i29 = ashr i32 %add22.i28, 1
  %xor24.i30 = xor i32 %add22.i28, %shr23.i29
  %mul25.i31 = mul nsw i32 %xor24.i30, 10
  %add26.i32 = add nsw i32 %mul25.i31, 10
  %shr27.i33 = ashr i32 %add26.i32, 2
  %xor28.i34 = xor i32 %add26.i32, %shr27.i33
  %2 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %2, %xor28.i34
  store i32 %add10, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %3, 7
  %call12 = call noundef i32 @_ZL18matrix_003_large_bi(i32 noundef %and11)
  %add13 = add nsw i32 %add10, %call12
  store i32 %add13, ptr %total, align 4
  %call14 = call noundef i32 @_ZL26matrix_003_branch_variableii(i32 noundef 1, i32 noundef 9)
  %add15 = add nsw i32 %add13, %call14
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %4, 7
  %mul.i37 = mul nuw nsw i32 %and18, 3
  %add.i38 = add nuw nsw i32 %mul.i37, 3
  %5 = lshr i32 %add.i38, 1
  %xor.i40 = xor i32 %add.i38, %5
  %mul1.i41 = shl nuw nsw i32 %xor.i40, 2
  %add2.i42 = add nuw nsw i32 %mul1.i41, 4
  %shr3.i43 = lshr exact i32 %add2.i42, 2
  %xor4.i44 = xor i32 %add2.i42, %shr3.i43
  %mul5.i45 = mul nsw i32 %xor4.i44, 5
  %add6.i46 = add nsw i32 %mul5.i45, 5
  %shr7.i47 = ashr i32 %add6.i46, 3
  %xor8.i48 = xor i32 %add6.i46, %shr7.i47
  %mul9.i49 = mul nsw i32 %xor8.i48, 6
  %add10.i50 = add nsw i32 %mul9.i49, 6
  %shr11.i51 = ashr exact i32 %add10.i50, 1
  %xor12.i52 = xor i32 %add10.i50, %shr11.i51
  %mul13.i53 = mul nsw i32 %xor12.i52, 7
  %add14.i54 = add nsw i32 %mul13.i53, 7
  %shr15.i55 = ashr i32 %add14.i54, 2
  %xor16.i56 = xor i32 %add14.i54, %shr15.i55
  %mul17.i57 = shl nsw i32 %xor16.i56, 3
  %add18.i58 = add nsw i32 %mul17.i57, 8
  %shr19.i59 = ashr exact i32 %add18.i58, 3
  %xor20.i60 = xor i32 %add18.i58, %shr19.i59
  %mul21.i61 = mul nsw i32 %xor20.i60, 9
  %add22.i62 = add nsw i32 %mul21.i61, 9
  %shr23.i63 = ashr i32 %add22.i62, 1
  %xor24.i64 = xor i32 %add22.i62, %shr23.i63
  %mul25.i65 = mul nsw i32 %xor24.i64, 10
  %add26.i66 = add nsw i32 %mul25.i65, 10
  %shr27.i67 = ashr i32 %add26.i66, 2
  %xor28.i68 = xor i32 %add26.i66, %shr27.i67
  %6 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %6, %xor28.i68
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL18matrix_003_large_bi(i32 noundef 12)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %7, 7
  %call24 = call noundef i32 @_ZL26matrix_003_branch_variableii(i32 noundef 1, i32 noundef %and23)
  %add25 = add nsw i32 %add22, %call24
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add27 = add nsw i32 %add25, %call26
  %add29 = add nsw i32 %add27, 8332687
  store i32 %add29, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %8, 7
  %call31 = call noundef i32 @_ZL18matrix_003_large_bi(i32 noundef %and30)
  %add32 = add nsw i32 %add29, %call31
  store i32 %add32, ptr %total, align 4
  %and33 = and i32 %8, 7
  %call34 = call noundef i32 @_ZL26matrix_003_branch_variableii(i32 noundef 1, i32 noundef %and33)
  %add35 = add nsw i32 %add32, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_003_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 7
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
define internal noundef i32 @_ZL26matrix_003_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL20matrix_003_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef %sub)
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
