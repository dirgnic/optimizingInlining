; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_048.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_048.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_048_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i72 = alloca i32, align 4
  %t.i74 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i55 = alloca i32, align 4
  %s.i56 = alloca i32, align 4
  %i.i57 = alloca i32, align 4
  %x.addr.i17 = alloca i32, align 4
  %s.i18 = alloca i32, align 4
  %i.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 5, ptr %x.addr.i17, align 4
  store i32 5, ptr %s.i18, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 4
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %4 = load i32, ptr %x.addr.i17, align 4
  %5 = load i32, ptr %i.i, align 4
  %xor.i19 = xor i32 %4, %5
  %6 = load i32, ptr %s.i18, align 4
  %add1.i = add nsw i32 %6, %xor.i19
  %shl.i = shl i32 %add1.i, 1
  %shr.i20 = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i20
  store i32 %xor2.i, ptr %s.i18, align 4
  %7 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %7, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_9.exit: ; preds = %for.cond.i
  %8 = load i32, ptr %s.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %and24 = and i32 %8, 255
  %9 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %9, %and24
  store i32 %add25, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %10, 7
  %mul.i23 = mul nuw nsw i32 %and26, 3
  %add.i24 = add nuw nsw i32 %mul.i23, 48
  %11 = lshr i32 %add.i24, 1
  %xor.i26 = xor i32 %add.i24, %11
  %mul1.i27 = shl nuw nsw i32 %xor.i26, 2
  %add2.i28 = add nuw nsw i32 %mul1.i27, 49
  %shr3.i29 = lshr i32 %add2.i28, 2
  %xor4.i30 = xor i32 %add2.i28, %shr3.i29
  %mul5.i31 = mul nsw i32 %xor4.i30, 5
  %add6.i32 = add nsw i32 %mul5.i31, 50
  %shr7.i33 = ashr i32 %add6.i32, 3
  %xor8.i34 = xor i32 %add6.i32, %shr7.i33
  %mul9.i35 = mul nsw i32 %xor8.i34, 6
  %add10.i36 = add nsw i32 %mul9.i35, 51
  %shr11.i37 = ashr i32 %add10.i36, 1
  %xor12.i38 = xor i32 %add10.i36, %shr11.i37
  %mul13.i39 = mul nsw i32 %xor12.i38, 7
  %add14.i40 = add nsw i32 %mul13.i39, 52
  %shr15.i41 = ashr i32 %add14.i40, 2
  %xor16.i42 = xor i32 %add14.i40, %shr15.i41
  %mul17.i43 = shl nsw i32 %xor16.i42, 3
  %add18.i44 = add nsw i32 %mul17.i43, 53
  %shr19.i45 = ashr i32 %add18.i44, 3
  %xor20.i46 = xor i32 %add18.i44, %shr19.i45
  %mul21.i47 = mul nsw i32 %xor20.i46, 9
  %add22.i48 = add nsw i32 %mul21.i47, 54
  %shr23.i49 = ashr i32 %add22.i48, 1
  %xor24.i50 = xor i32 %add22.i48, %shr23.i49
  %mul25.i51 = mul nsw i32 %xor24.i50, 10
  %add26.i52 = add nsw i32 %mul25.i51, 55
  %shr27.i53 = ashr i32 %add26.i52, 2
  %xor28.i54 = xor i32 %add26.i52, %shr27.i53
  %12 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %12, %xor28.i54
  store i32 %add28, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %13, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i57)
  store i32 %and29, ptr %x.addr.i55, align 4
  store i32 %and29, ptr %s.i56, align 4
  br label %for.cond.i59

for.cond.i59:                                     ; preds = %for.body.i65, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_9.exit
  %storemerge83 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_9.exit ], [ %inc.i66, %for.body.i65 ]
  store i32 %storemerge83, ptr %i.i57, align 4
  %cmp.i58 = icmp slt i32 %storemerge83, 4
  br i1 %cmp.i58, label %for.body.i65, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_11.exit

for.body.i65:                                     ; preds = %for.cond.i59
  %14 = load i32, ptr %x.addr.i55, align 4
  %15 = load i32, ptr %i.i57, align 4
  %xor.i60 = xor i32 %14, %15
  %16 = load i32, ptr %s.i56, align 4
  %add1.i61 = add nsw i32 %16, %xor.i60
  %shl.i62 = shl i32 %add1.i61, 1
  %shr.i63 = ashr i32 %add1.i61, 3
  %xor2.i64 = xor i32 %shl.i62, %shr.i63
  store i32 %xor2.i64, ptr %s.i56, align 4
  %17 = load i32, ptr %i.i57, align 4
  %inc.i66 = add nsw i32 %17, 1
  br label %for.cond.i59, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_11.exit: ; preds = %for.cond.i59
  %18 = load i32, ptr %s.i56, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i57)
  %19 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %19, %18
  store i32 %add31, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 11, ptr %t.i, align 4
  %20 = load i32, ptr %t.i, align 4
  %21 = load i32, ptr %mode.addr.i, align 4
  %add1.i70 = add nsw i32 %21, 1
  %mul.i71 = mul nsw i32 %20, %add1.i70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %22 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %22, %mul.i71
  store i32 %add33, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %23, 3
  %and35 = and i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i74)
  store i32 %and34, ptr %mode.addr.i72, align 4
  %add.i75 = add nuw nsw i32 %and35, 3
  store i32 %add.i75, ptr %t.i74, align 4
  %cmp.i76 = icmp ult i32 %and34, 2
  br i1 %cmp.i76, label %cond.true.i79, label %cond.false.i81

cond.true.i79:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_11.exit
  %24 = load i32, ptr %t.i74, align 4
  %25 = load i32, ptr %mode.addr.i72, align 4
  %add1.i77 = add nsw i32 %25, 1
  %mul.i78 = mul nsw i32 %24, %add1.i77
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_13.exit

cond.false.i81:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_11.exit
  %26 = load i32, ptr %t.i74, align 4
  %27 = load i32, ptr %mode.addr.i72, align 4
  %sub.i80 = sub nsw i32 %26, %27
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_048_13.exit: ; preds = %cond.true.i79, %cond.false.i81
  %cond.i82 = phi i32 [ %mul.i78, %cond.true.i79 ], [ %sub.i80, %cond.false.i81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i72)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i74)
  %28 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %28, %cond.i82
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }

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
