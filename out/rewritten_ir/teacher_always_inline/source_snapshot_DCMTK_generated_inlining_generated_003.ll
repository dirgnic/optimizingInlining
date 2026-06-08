; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_003.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_003.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_003_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i174 = alloca i32, align 4
  %t.i176 = alloca i32, align 4
  %x.addr.i161 = alloca i32, align 4
  %s.i162 = alloca i32, align 4
  %i.i163 = alloca i32, align 4
  %mode.addr.i116 = alloca i32, align 4
  %t.i118 = alloca i32, align 4
  %x.addr.i103 = alloca i32, align 4
  %s.i104 = alloca i32, align 4
  %i.i105 = alloca i32, align 4
  %mode.addr.i58 = alloca i32, align 4
  %t.i60 = alloca i32, align 4
  %x.addr.i45 = alloca i32, align 4
  %s.i46 = alloca i32, align 4
  %i.i47 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i2 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 11113941, ptr %total, align 4
  %and = and i32 %x, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %and, ptr %x.addr.i1, align 4
  store i32 %and, ptr %s.i2, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 4
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_1.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %x.addr.i1, align 4
  %1 = load i32, ptr %i.i, align 4
  %xor.i3 = xor i32 %0, %1
  %add.i4 = add nsw i32 %xor.i3, 7
  %2 = load i32, ptr %s.i2, align 4
  %add1.i = add nsw i32 %2, %add.i4
  %shl.i = shl i32 %add1.i, 1
  %shr.i5 = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i5
  store i32 %xor2.i, ptr %s.i2, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_1.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %s.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %6, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i, align 4
  %add.i7 = add nuw nsw i32 %and3, 3
  store i32 %add.i7, ptr %t.i, align 4
  %7 = load i32, ptr %t.i, align 4
  %8 = load i32, ptr %mode.addr.i, align 4
  %add1.i9 = add nsw i32 %8, 1
  %mul.i10 = mul nsw i32 %7, %add1.i9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %9 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %9, %mul.i10
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %10, 7
  %mul.i13 = mul nuw nsw i32 %and8, 3
  %add.i14 = add nuw nsw i32 %mul.i13, 3
  %11 = lshr i32 %add.i14, 1
  %xor.i16 = xor i32 %add.i14, %11
  %mul1.i17 = shl nuw nsw i32 %xor.i16, 2
  %add2.i18 = add nuw nsw i32 %mul1.i17, 4
  %shr3.i19 = lshr exact i32 %add2.i18, 2
  %xor4.i20 = xor i32 %add2.i18, %shr3.i19
  %mul5.i21 = mul nsw i32 %xor4.i20, 5
  %add6.i22 = add nsw i32 %mul5.i21, 5
  %shr7.i23 = ashr i32 %add6.i22, 3
  %xor8.i24 = xor i32 %add6.i22, %shr7.i23
  %mul9.i25 = mul nsw i32 %xor8.i24, 6
  %add10.i26 = add nsw i32 %mul9.i25, 6
  %shr11.i27 = ashr exact i32 %add10.i26, 1
  %xor12.i28 = xor i32 %add10.i26, %shr11.i27
  %mul13.i29 = mul nsw i32 %xor12.i28, 7
  %add14.i30 = add nsw i32 %mul13.i29, 7
  %shr15.i31 = ashr i32 %add14.i30, 2
  %xor16.i32 = xor i32 %add14.i30, %shr15.i31
  %mul17.i33 = shl nsw i32 %xor16.i32, 3
  %add18.i34 = add nsw i32 %mul17.i33, 8
  %shr19.i35 = ashr exact i32 %add18.i34, 3
  %xor20.i36 = xor i32 %add18.i34, %shr19.i35
  %mul21.i37 = mul nsw i32 %xor20.i36, 9
  %add22.i38 = add nsw i32 %mul21.i37, 9
  %shr23.i39 = ashr i32 %add22.i38, 1
  %xor24.i40 = xor i32 %add22.i38, %shr23.i39
  %mul25.i41 = mul nsw i32 %xor24.i40, 10
  %add26.i42 = add nsw i32 %mul25.i41, 10
  %shr27.i43 = ashr i32 %add26.i42, 2
  %xor28.i44 = xor i32 %add26.i42, %shr27.i43
  %12 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %12, %xor28.i44
  store i32 %add10, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %13, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i46)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i47)
  store i32 %and11, ptr %x.addr.i45, align 4
  store i32 %and11, ptr %s.i46, align 4
  br label %for.cond.i49

for.cond.i49:                                     ; preds = %for.body.i56, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_1.exit
  %storemerge185 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_1.exit ], [ %inc.i57, %for.body.i56 ]
  store i32 %storemerge185, ptr %i.i47, align 4
  %cmp.i48 = icmp slt i32 %storemerge185, 4
  br i1 %cmp.i48, label %for.body.i56, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_5.exit

for.body.i56:                                     ; preds = %for.cond.i49
  %14 = load i32, ptr %x.addr.i45, align 4
  %15 = load i32, ptr %i.i47, align 4
  %xor.i50 = xor i32 %14, %15
  %add.i51 = add nsw i32 %xor.i50, 7
  %16 = load i32, ptr %s.i46, align 4
  %add1.i52 = add nsw i32 %16, %add.i51
  %shl.i53 = shl i32 %add1.i52, 1
  %shr.i54 = ashr i32 %add1.i52, 3
  %xor2.i55 = xor i32 %shl.i53, %shr.i54
  store i32 %xor2.i55, ptr %s.i46, align 4
  %17 = load i32, ptr %i.i47, align 4
  %inc.i57 = add nsw i32 %17, 1
  br label %for.cond.i49, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_5.exit: ; preds = %for.cond.i49
  %18 = load i32, ptr %s.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i47)
  %19 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %19, %18
  store i32 %add13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i58)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i60)
  store i32 1, ptr %mode.addr.i58, align 4
  store i32 12, ptr %t.i60, align 4
  %20 = load i32, ptr %t.i60, align 4
  %21 = load i32, ptr %mode.addr.i58, align 4
  %add1.i63 = add nsw i32 %21, 1
  %mul.i64 = mul nsw i32 %20, %add1.i63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i58)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i60)
  %22 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %22, %mul.i64
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %23, 7
  %mul.i71 = mul nuw nsw i32 %and18, 3
  %add.i72 = add nuw nsw i32 %mul.i71, 3
  %24 = lshr i32 %add.i72, 1
  %xor.i74 = xor i32 %add.i72, %24
  %mul1.i75 = shl nuw nsw i32 %xor.i74, 2
  %add2.i76 = add nuw nsw i32 %mul1.i75, 4
  %shr3.i77 = lshr exact i32 %add2.i76, 2
  %xor4.i78 = xor i32 %add2.i76, %shr3.i77
  %mul5.i79 = mul nsw i32 %xor4.i78, 5
  %add6.i80 = add nsw i32 %mul5.i79, 5
  %shr7.i81 = ashr i32 %add6.i80, 3
  %xor8.i82 = xor i32 %add6.i80, %shr7.i81
  %mul9.i83 = mul nsw i32 %xor8.i82, 6
  %add10.i84 = add nsw i32 %mul9.i83, 6
  %shr11.i85 = ashr exact i32 %add10.i84, 1
  %xor12.i86 = xor i32 %add10.i84, %shr11.i85
  %mul13.i87 = mul nsw i32 %xor12.i86, 7
  %add14.i88 = add nsw i32 %mul13.i87, 7
  %shr15.i89 = ashr i32 %add14.i88, 2
  %xor16.i90 = xor i32 %add14.i88, %shr15.i89
  %mul17.i91 = shl nsw i32 %xor16.i90, 3
  %add18.i92 = add nsw i32 %mul17.i91, 8
  %shr19.i93 = ashr exact i32 %add18.i92, 3
  %xor20.i94 = xor i32 %add18.i92, %shr19.i93
  %mul21.i95 = mul nsw i32 %xor20.i94, 9
  %add22.i96 = add nsw i32 %mul21.i95, 9
  %shr23.i97 = ashr i32 %add22.i96, 1
  %xor24.i98 = xor i32 %add22.i96, %shr23.i97
  %mul25.i99 = mul nsw i32 %xor24.i98, 10
  %add26.i100 = add nsw i32 %mul25.i99, 10
  %shr27.i101 = ashr i32 %add26.i100, 2
  %xor28.i102 = xor i32 %add26.i100, %shr27.i101
  %25 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %25, %xor28.i102
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i105)
  store i32 12, ptr %x.addr.i103, align 4
  store i32 12, ptr %s.i104, align 4
  br label %for.cond.i107

for.cond.i107:                                    ; preds = %for.body.i114, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_5.exit
  %storemerge186 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_5.exit ], [ %inc.i115, %for.body.i114 ]
  store i32 %storemerge186, ptr %i.i105, align 4
  %cmp.i106 = icmp slt i32 %storemerge186, 4
  br i1 %cmp.i106, label %for.body.i114, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_9.exit

for.body.i114:                                    ; preds = %for.cond.i107
  %26 = load i32, ptr %x.addr.i103, align 4
  %27 = load i32, ptr %i.i105, align 4
  %xor.i108 = xor i32 %26, %27
  %add.i109 = add nsw i32 %xor.i108, 7
  %28 = load i32, ptr %s.i104, align 4
  %add1.i110 = add nsw i32 %28, %add.i109
  %shl.i111 = shl i32 %add1.i110, 1
  %shr.i112 = ashr i32 %add1.i110, 3
  %xor2.i113 = xor i32 %shl.i111, %shr.i112
  store i32 %xor2.i113, ptr %s.i104, align 4
  %29 = load i32, ptr %i.i105, align 4
  %inc.i115 = add nsw i32 %29, 1
  br label %for.cond.i107, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_9.exit: ; preds = %for.cond.i107
  %30 = load i32, ptr %s.i104, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i105)
  %31 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %31, %30
  store i32 %add22, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %32, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i118)
  store i32 1, ptr %mode.addr.i116, align 4
  %add.i119 = add nuw nsw i32 %and23, 3
  store i32 %add.i119, ptr %t.i118, align 4
  %33 = load i32, ptr %t.i118, align 4
  %34 = load i32, ptr %mode.addr.i116, align 4
  %add1.i121 = add nsw i32 %34, 1
  %mul.i122 = mul nsw i32 %33, %add1.i121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i118)
  %35 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %35, %mul.i122
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add27 = add nsw i32 %add25, %call26
  %add29 = add nsw i32 %add27, 8332687
  store i32 %add29, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %36, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i161)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i162)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i163)
  store i32 %and30, ptr %x.addr.i161, align 4
  store i32 %and30, ptr %s.i162, align 4
  br label %for.cond.i165

for.cond.i165:                                    ; preds = %for.body.i172, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_9.exit
  %storemerge187 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_9.exit ], [ %inc.i173, %for.body.i172 ]
  store i32 %storemerge187, ptr %i.i163, align 4
  %cmp.i164 = icmp slt i32 %storemerge187, 4
  br i1 %cmp.i164, label %for.body.i172, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_13.exit

for.body.i172:                                    ; preds = %for.cond.i165
  %37 = load i32, ptr %x.addr.i161, align 4
  %38 = load i32, ptr %i.i163, align 4
  %xor.i166 = xor i32 %37, %38
  %add.i167 = add nsw i32 %xor.i166, 7
  %39 = load i32, ptr %s.i162, align 4
  %add1.i168 = add nsw i32 %39, %add.i167
  %shl.i169 = shl i32 %add1.i168, 1
  %shr.i170 = ashr i32 %add1.i168, 3
  %xor2.i171 = xor i32 %shl.i169, %shr.i170
  store i32 %xor2.i171, ptr %s.i162, align 4
  %40 = load i32, ptr %i.i163, align 4
  %inc.i173 = add nsw i32 %40, 1
  br label %for.cond.i165, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_003_13.exit: ; preds = %for.cond.i165
  %41 = load i32, ptr %s.i162, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i161)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i162)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i163)
  %42 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %42, %41
  store i32 %add32, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %and33 = and i32 %43, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i174)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i176)
  store i32 1, ptr %mode.addr.i174, align 4
  %add.i177 = add nuw nsw i32 %and33, 3
  store i32 %add.i177, ptr %t.i176, align 4
  %44 = load i32, ptr %t.i176, align 4
  %45 = load i32, ptr %mode.addr.i174, align 4
  %add1.i179 = add nsw i32 %45, 1
  %mul.i180 = mul nsw i32 %44, %add1.i179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i174)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i176)
  %46 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %46, %mul.i180
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20matrix_003_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
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
