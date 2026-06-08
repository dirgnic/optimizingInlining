; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_064.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_064.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_064_entry(i32 noundef %x) #0 {
entry:
  %retval.i66 = alloca i32, align 4
  %mode.addr.i67 = alloca i32, align 4
  %x.addr.i68 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %x.addr.i59 = alloca i32, align 4
  %x.addr.i40 = alloca i32, align 4
  %s.i41 = alloca i32, align 4
  %limit.i42 = alloca i32, align 4
  %i.i43 = alloca i32, align 4
  %x.addr.i27 = alloca i32, align 4
  %s.i28 = alloca i32, align 4
  %i.i29 = alloca i32, align 4
  %x.addr.i17 = alloca i32, align 4
  %s.i18 = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i19 = alloca i32, align 4
  %x.addr.i15 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %xor.i = xor i32 %x, 65
  %add2 = add nsw i32 %x, 1
  %xor.i2 = xor i32 %add2, 66
  %add4 = add nsw i32 %xor.i, %xor.i2
  %add5 = add nsw i32 %x, 2
  %xor.i4 = xor i32 %add5, 67
  %add7 = add nsw i32 %add4, %xor.i4
  store i32 %add7, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %0, 3
  %xor.i6 = xor i32 %add8, 68
  %add10 = add nsw i32 %add7, %xor.i6
  %add11 = add nsw i32 %0, 4
  %xor.i8 = xor i32 %add11, 69
  %add13 = add nsw i32 %add10, %xor.i8
  store i32 %add13, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %add14 = add nsw i32 %1, 5
  %xor.i10 = xor i32 %add14, 70
  %add16 = add nsw i32 %add13, %xor.i10
  %add17 = add nsw i32 %1, 6
  %xor.i12 = xor i32 %add17, 71
  %add19 = add nsw i32 %add16, %xor.i12
  store i32 %add19, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %2, 7
  %xor.i14 = xor i32 %add20, 72
  %add22 = add nsw i32 %add19, %xor.i14
  store i32 %add22, ptr %total, align 4
  %add23 = add nsw i32 %2, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add23, ptr %x.addr.i15, align 4
  store i32 %add23, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 10
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = load i32, ptr %x.addr.i15, align 4
  %4 = load i32, ptr %i.i, align 4
  %xor.i16 = xor i32 %3, %4
  %add.i = add nsw i32 %xor.i16, 12
  %5 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %5, %add.i
  %shl.i = shl i32 %add1.i, 1
  %shr.i = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_8.exit: ; preds = %for.cond.i
  %7 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %8 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %8, %7
  store i32 %add25, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %9, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i19)
  store i32 %add26, ptr %x.addr.i17, align 4
  store i32 %add26, ptr %s.i18, align 4
  %and.i = and i32 %add26, 3
  %add.i20 = add nuw nsw i32 %and.i, 5
  store i32 %add.i20, ptr %limit.i, align 4
  br label %for.cond.i22

for.cond.i22:                                     ; preds = %if.end.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_8.exit
  %storemerge82 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_8.exit ], [ %inc.i26, %if.end.i ]
  store i32 %storemerge82, ptr %i.i19, align 4
  %10 = load i32, ptr %limit.i, align 4
  %cmp.i21 = icmp slt i32 %storemerge82, %10
  br i1 %cmp.i21, label %for.body.i24, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_9.exit

for.body.i24:                                     ; preds = %for.cond.i22
  %11 = load i32, ptr %i.i19, align 4
  %mul.i = mul nsw i32 %11, %11
  %sub.i = add nsw i32 %mul.i, -4
  %12 = load i32, ptr %s.i18, align 4
  %add1.i23 = add nsw i32 %12, %sub.i
  store i32 %add1.i23, ptr %s.i18, align 4
  %and2.i = and i32 %add1.i23, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i24
  %13 = load i32, ptr %i.i19, align 4
  %14 = load i32, ptr %x.addr.i17, align 4
  %add4.i = add nsw i32 %13, %14
  %15 = load i32, ptr %s.i18, align 4
  %xor.i25 = xor i32 %15, %add4.i
  store i32 %xor.i25, ptr %s.i18, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i24
  %16 = load i32, ptr %i.i19, align 4
  %inc.i26 = add nsw i32 %16, 1
  br label %for.cond.i22, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_9.exit: ; preds = %for.cond.i22
  %17 = load i32, ptr %s.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i19)
  %18 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %18, %17
  store i32 %add28, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %add29 = add nsw i32 %19, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i29)
  store i32 %add29, ptr %x.addr.i27, align 4
  store i32 %add29, ptr %s.i28, align 4
  br label %for.cond.i31

for.cond.i31:                                     ; preds = %for.body.i38, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_9.exit
  %storemerge83 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_9.exit ], [ %inc.i39, %for.body.i38 ]
  store i32 %storemerge83, ptr %i.i29, align 4
  %cmp.i30 = icmp slt i32 %storemerge83, 10
  br i1 %cmp.i30, label %for.body.i38, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_10.exit

for.body.i38:                                     ; preds = %for.cond.i31
  %20 = load i32, ptr %x.addr.i27, align 4
  %21 = load i32, ptr %i.i29, align 4
  %xor.i32 = xor i32 %20, %21
  %add.i33 = add nsw i32 %xor.i32, 12
  %22 = load i32, ptr %s.i28, align 4
  %add1.i34 = add nsw i32 %22, %add.i33
  %shl.i35 = shl i32 %add1.i34, 1
  %shr.i36 = ashr i32 %add1.i34, 3
  %xor2.i37 = xor i32 %shl.i35, %shr.i36
  store i32 %xor2.i37, ptr %s.i28, align 4
  %23 = load i32, ptr %i.i29, align 4
  %inc.i39 = add nsw i32 %23, 1
  br label %for.cond.i31, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_10.exit: ; preds = %for.cond.i31
  %24 = load i32, ptr %s.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i29)
  %25 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %25, %24
  store i32 %add31, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %26, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i43)
  store i32 %add32, ptr %x.addr.i40, align 4
  store i32 %add32, ptr %s.i41, align 4
  %and.i44 = and i32 %add32, 3
  %add.i45 = add nuw nsw i32 %and.i44, 5
  store i32 %add.i45, ptr %limit.i42, align 4
  br label %for.cond.i47

for.cond.i47:                                     ; preds = %if.end.i57, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_10.exit
  %storemerge84 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_10.exit ], [ %inc.i58, %if.end.i57 ]
  store i32 %storemerge84, ptr %i.i43, align 4
  %27 = load i32, ptr %limit.i42, align 4
  %cmp.i46 = icmp slt i32 %storemerge84, %27
  br i1 %cmp.i46, label %for.body.i53, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_11.exit

for.body.i53:                                     ; preds = %for.cond.i47
  %28 = load i32, ptr %i.i43, align 4
  %mul.i48 = mul nsw i32 %28, %28
  %sub.i49 = add nsw i32 %mul.i48, -4
  %29 = load i32, ptr %s.i41, align 4
  %add1.i50 = add nsw i32 %29, %sub.i49
  store i32 %add1.i50, ptr %s.i41, align 4
  %and2.i51 = and i32 %add1.i50, 1
  %cmp3.i52 = icmp eq i32 %and2.i51, 0
  br i1 %cmp3.i52, label %if.then.i56, label %if.end.i57

if.then.i56:                                      ; preds = %for.body.i53
  %30 = load i32, ptr %i.i43, align 4
  %31 = load i32, ptr %x.addr.i40, align 4
  %add4.i54 = add nsw i32 %30, %31
  %32 = load i32, ptr %s.i41, align 4
  %xor.i55 = xor i32 %32, %add4.i54
  store i32 %xor.i55, ptr %s.i41, align 4
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i56, %for.body.i53
  %33 = load i32, ptr %i.i43, align 4
  %inc.i58 = add nsw i32 %33, 1
  br label %for.cond.i47, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_11.exit: ; preds = %for.cond.i47
  %34 = load i32, ptr %s.i41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i43)
  %35 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %35, %34
  store i32 %add34, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %and = and i32 %36, 3
  %add35 = add nsw i32 %36, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i59)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %add35, ptr %x.addr.i59, align 4
  %cmp.i60 = icmp eq i32 %and, 0
  br i1 %cmp.i60, label %if.then.i62, label %if.end.i63

if.then.i62:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_11.exit
  %37 = load i32, ptr %x.addr.i59, align 4
  %add.i61 = add nsw i32 %37, 2
  store i32 %add.i61, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit

if.end.i63:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_11.exit
  %38 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %38, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i63
  %39 = load i32, ptr %x.addr.i59, align 4
  %mul.i64 = shl nsw i32 %39, 1
  store i32 %mul.i64, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit

if.end3.i:                                        ; preds = %if.end.i63
  %40 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %40, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %41 = load i32, ptr %x.addr.i59, align 4
  %sub.i65 = add nsw i32 %41, -7
  store i32 %sub.i65, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit

if.end6.i:                                        ; preds = %if.end3.i
  %42 = load i32, ptr %x.addr.i59, align 4
  %43 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %42, %43
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit: ; preds = %if.then.i62, %if.then2.i, %if.then5.i, %if.end6.i
  %44 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i59)
  %45 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %45, %44
  store i32 %add37, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %46, 3
  %add39 = add nsw i32 %46, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i66)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i68)
  store i32 %and38, ptr %mode.addr.i67, align 4
  store i32 %add39, ptr %x.addr.i68, align 4
  %cmp.i69 = icmp eq i32 %and38, 0
  br i1 %cmp.i69, label %if.then.i71, label %if.end.i73

if.then.i71:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit
  %47 = load i32, ptr %x.addr.i68, align 4
  %add.i70 = add nsw i32 %47, 2
  store i32 %add.i70, ptr %retval.i66, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_13.exit

if.end.i73:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_12.exit
  %48 = load i32, ptr %mode.addr.i67, align 4
  %cmp1.i72 = icmp eq i32 %48, 1
  br i1 %cmp1.i72, label %if.then2.i75, label %if.end3.i77

if.then2.i75:                                     ; preds = %if.end.i73
  %49 = load i32, ptr %x.addr.i68, align 4
  %mul.i74 = shl nsw i32 %49, 1
  store i32 %mul.i74, ptr %retval.i66, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_13.exit

if.end3.i77:                                      ; preds = %if.end.i73
  %50 = load i32, ptr %mode.addr.i67, align 4
  %cmp4.i76 = icmp eq i32 %50, 2
  br i1 %cmp4.i76, label %if.then5.i79, label %if.end6.i81

if.then5.i79:                                     ; preds = %if.end3.i77
  %51 = load i32, ptr %x.addr.i68, align 4
  %sub.i78 = add nsw i32 %51, -7
  store i32 %sub.i78, ptr %retval.i66, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_13.exit

if.end6.i81:                                      ; preds = %if.end3.i77
  %52 = load i32, ptr %x.addr.i68, align 4
  %53 = load i32, ptr %mode.addr.i67, align 4
  %add7.i80 = add nsw i32 %52, %53
  store i32 %add7.i80, ptr %retval.i66, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_064_13.exit: ; preds = %if.then.i71, %if.then2.i75, %if.then5.i79, %if.end6.i81
  %54 = load i32, ptr %retval.i66, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i66)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i68)
  %55 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %55, %54
  store i32 %add41, ptr %total, align 4
  %call42 = call noundef i32 @_ZL18game_064_recursivei(i32 noundef 2)
  %add43 = add nsw i32 %add41, %call42
  store i32 %add43, ptr %total, align 4
  %call44 = call noundef i32 @_ZL18game_064_recursivei(i32 noundef 3)
  %add45 = add nsw i32 %add43, %call44
  store i32 %add45, ptr %total, align 4
  ret i32 %add45
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_064_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_064_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_064_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
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
!8 = distinct !{!8, !7}
