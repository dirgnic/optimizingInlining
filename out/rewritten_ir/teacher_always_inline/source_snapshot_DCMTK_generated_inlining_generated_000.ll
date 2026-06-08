; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_000.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_000.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_000_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i71 = alloca i32, align 4
  %t.i73 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i54 = alloca i32, align 4
  %s.i55 = alloca i32, align 4
  %i.i56 = alloca i32, align 4
  %x.addr.i16 = alloca i32, align 4
  %s.i17 = alloca i32, align 4
  %i.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add26, ptr %x.addr.i16, align 4
  store i32 %add26, ptr %s.i17, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 6
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = load i32, ptr %x.addr.i16, align 4
  %4 = load i32, ptr %i.i, align 4
  %xor.i18 = xor i32 %3, %4
  %add.i19 = add nsw i32 %xor.i18, 4
  %5 = load i32, ptr %s.i17, align 4
  %add1.i = add nsw i32 %5, %add.i19
  %shl.i = shl i32 %add1.i, 1
  %shr.i20 = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i20
  store i32 %xor2.i, ptr %s.i17, align 4
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_9.exit: ; preds = %for.cond.i
  %7 = load i32, ptr %s.i17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %8 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %8, %7
  store i32 %add28, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %10 = mul i32 %9, 3
  %mul.i23 = add i32 %10, 30
  %shr.i24 = ashr i32 %mul.i23, 1
  %xor.i25 = xor i32 %mul.i23, %shr.i24
  %mul1.i26 = shl nsw i32 %xor.i25, 2
  %add2.i27 = or i32 %mul1.i26, 1
  %xor4.i29 = xor i32 %add2.i27, %xor.i25
  %mul5.i30 = mul nsw i32 %xor4.i29, 5
  %add6.i31 = add nsw i32 %mul5.i30, 2
  %shr7.i32 = ashr i32 %add6.i31, 3
  %xor8.i33 = xor i32 %add6.i31, %shr7.i32
  %mul9.i34 = mul nsw i32 %xor8.i33, 6
  %add10.i35 = add nsw i32 %mul9.i34, 3
  %shr11.i36 = ashr i32 %add10.i35, 1
  %xor12.i37 = xor i32 %add10.i35, %shr11.i36
  %mul13.i38 = mul nsw i32 %xor12.i37, 7
  %add14.i39 = add nsw i32 %mul13.i38, 4
  %shr15.i40 = ashr i32 %add14.i39, 2
  %xor16.i41 = xor i32 %add14.i39, %shr15.i40
  %mul17.i42 = shl nsw i32 %xor16.i41, 3
  %add18.i43 = or i32 %mul17.i42, 5
  %xor20.i45 = xor i32 %add18.i43, %xor16.i41
  %mul21.i46 = mul nsw i32 %xor20.i45, 9
  %add22.i47 = add nsw i32 %mul21.i46, 6
  %shr23.i48 = ashr i32 %add22.i47, 1
  %xor24.i49 = xor i32 %add22.i47, %shr23.i48
  %mul25.i50 = mul nsw i32 %xor24.i49, 10
  %add26.i51 = add nsw i32 %mul25.i50, 7
  %shr27.i52 = ashr i32 %add26.i51, 2
  %xor28.i53 = xor i32 %add26.i51, %shr27.i52
  %11 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %11, %xor28.i53
  store i32 %add31, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %12, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i56)
  store i32 %add32, ptr %x.addr.i54, align 4
  store i32 %add32, ptr %s.i55, align 4
  br label %for.cond.i58

for.cond.i58:                                     ; preds = %for.body.i65, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_9.exit
  %storemerge81 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_9.exit ], [ %inc.i66, %for.body.i65 ]
  store i32 %storemerge81, ptr %i.i56, align 4
  %cmp.i57 = icmp slt i32 %storemerge81, 6
  br i1 %cmp.i57, label %for.body.i65, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_11.exit

for.body.i65:                                     ; preds = %for.cond.i58
  %13 = load i32, ptr %x.addr.i54, align 4
  %14 = load i32, ptr %i.i56, align 4
  %xor.i59 = xor i32 %13, %14
  %add.i60 = add nsw i32 %xor.i59, 4
  %15 = load i32, ptr %s.i55, align 4
  %add1.i61 = add nsw i32 %15, %add.i60
  %shl.i62 = shl i32 %add1.i61, 1
  %shr.i63 = ashr i32 %add1.i61, 3
  %xor2.i64 = xor i32 %shl.i62, %shr.i63
  store i32 %xor2.i64, ptr %s.i55, align 4
  %16 = load i32, ptr %i.i56, align 4
  %inc.i66 = add nsw i32 %16, 1
  br label %for.cond.i58, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_11.exit: ; preds = %for.cond.i58
  %17 = load i32, ptr %s.i55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i56)
  %18 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %18, %17
  store i32 %add34, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and = and i32 %19, 3
  %add35 = add nsw i32 %19, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %add35, ptr %t.i, align 4
  %cmp.i68 = icmp ult i32 %and, 2
  br i1 %cmp.i68, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_11.exit
  %20 = load i32, ptr %t.i, align 4
  %21 = load i32, ptr %mode.addr.i, align 4
  %add1.i69 = add nsw i32 %21, 1
  %mul.i70 = mul nsw i32 %20, %add1.i69
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_12.exit

cond.false.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_11.exit
  %22 = load i32, ptr %t.i, align 4
  %23 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %22, %23
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_12.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i70, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %24 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %24, %cond.i
  store i32 %add37, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %25, 3
  %add39 = add nsw i32 %25, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i73)
  store i32 %and38, ptr %mode.addr.i71, align 4
  store i32 %add39, ptr %t.i73, align 4
  %cmp.i74 = icmp ult i32 %and38, 2
  br i1 %cmp.i74, label %cond.true.i77, label %cond.false.i79

cond.true.i77:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_12.exit
  %26 = load i32, ptr %t.i73, align 4
  %27 = load i32, ptr %mode.addr.i71, align 4
  %add1.i75 = add nsw i32 %27, 1
  %mul.i76 = mul nsw i32 %26, %add1.i75
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_13.exit

cond.false.i79:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_12.exit
  %28 = load i32, ptr %t.i73, align 4
  %29 = load i32, ptr %mode.addr.i71, align 4
  %sub.i78 = sub nsw i32 %28, %29
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_000_13.exit: ; preds = %cond.true.i77, %cond.false.i79
  %cond.i80 = phi i32 [ %mul.i76, %cond.true.i77 ], [ %sub.i78, %cond.false.i79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i73)
  %30 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %30, %cond.i80
  store i32 %add41, ptr %total, align 4
  %call42 = call noundef i32 @_ZL18game_000_recursivei(i32 noundef 2)
  %add43 = add nsw i32 %add41, %call42
  store i32 %add43, ptr %total, align 4
  %call44 = call noundef i32 @_ZL18game_000_recursivei(i32 noundef 3)
  %add45 = add nsw i32 %add43, %call44
  store i32 %add45, ptr %total, align 4
  ret i32 %add45
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
