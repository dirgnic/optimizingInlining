; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_019.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_019.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_019_dispatch(i32 noundef %x) #0 {
entry:
  %retval.i146 = alloca i32, align 4
  %mode.addr.i147 = alloca i32, align 4
  %x.addr.i148 = alloca i32, align 4
  %x.addr.i127 = alloca i32, align 4
  %s.i128 = alloca i32, align 4
  %limit.i129 = alloca i32, align 4
  %i.i130 = alloca i32, align 4
  %x.addr.i114 = alloca i32, align 4
  %s.i115 = alloca i32, align 4
  %i.i116 = alloca i32, align 4
  %retval.i98 = alloca i32, align 4
  %mode.addr.i99 = alloca i32, align 4
  %x.addr.i100 = alloca i32, align 4
  %x.addr.i79 = alloca i32, align 4
  %s.i80 = alloca i32, align 4
  %limit.i81 = alloca i32, align 4
  %i.i82 = alloca i32, align 4
  %x.addr.i66 = alloca i32, align 4
  %s.i67 = alloca i32, align 4
  %i.i68 = alloca i32, align 4
  %retval.i50 = alloca i32, align 4
  %mode.addr.i51 = alloca i32, align 4
  %x.addr.i52 = alloca i32, align 4
  %x.addr.i31 = alloca i32, align 4
  %s.i32 = alloca i32, align 4
  %limit.i33 = alloca i32, align 4
  %i.i34 = alloca i32, align 4
  %x.addr.i18 = alloca i32, align 4
  %s.i19 = alloca i32, align 4
  %i.i20 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %x.addr.i11 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i2 = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i3 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %x, ptr %x.addr.i, align 4
  store i32 %x, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 8
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %x.addr.i, align 4
  %1 = load i32, ptr %i.i, align 4
  %xor.i = xor i32 %0, %1
  %add.i = add nsw i32 %xor.i, 6
  %2 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %2, %add.i
  %shl.i = shl i32 %add1.i, 1
  %shr.i = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_0.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i3)
  store i32 %add2, ptr %x.addr.i1, align 4
  store i32 %add2, ptr %s.i2, align 4
  %and.i = and i32 %add2, 3
  %add.i4 = add nuw nsw i32 %and.i, 3
  store i32 %add.i4, ptr %limit.i, align 4
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %if.end.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_0.exit
  %storemerge162 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_0.exit ], [ %inc.i10, %if.end.i ]
  store i32 %storemerge162, ptr %i.i3, align 4
  %7 = load i32, ptr %limit.i, align 4
  %cmp.i5 = icmp slt i32 %storemerge162, %7
  br i1 %cmp.i5, label %for.body.i8, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_1.exit

for.body.i8:                                      ; preds = %for.cond.i6
  %8 = load i32, ptr %i.i3, align 4
  %mul.i = mul nsw i32 %8, %8
  %sub.i = add nsw i32 %mul.i, -1
  %9 = load i32, ptr %s.i2, align 4
  %add1.i7 = add nsw i32 %9, %sub.i
  store i32 %add1.i7, ptr %s.i2, align 4
  %and2.i = and i32 %add1.i7, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i8
  %10 = load i32, ptr %i.i3, align 4
  %11 = load i32, ptr %x.addr.i1, align 4
  %add4.i = add nsw i32 %10, %11
  %12 = load i32, ptr %s.i2, align 4
  %xor.i9 = xor i32 %12, %add4.i
  store i32 %xor.i9, ptr %s.i2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i8
  %13 = load i32, ptr %i.i3, align 4
  %inc.i10 = add nsw i32 %13, 1
  br label %for.cond.i6, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_1.exit: ; preds = %for.cond.i6
  %14 = load i32, ptr %s.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i3)
  %15 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %15, %14
  store i32 %add4, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and = and i32 %16, 3
  %add5 = add nsw i32 %16, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i11)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %add5, ptr %x.addr.i11, align 4
  %cmp.i12 = icmp eq i32 %and, 0
  br i1 %cmp.i12, label %if.then.i14, label %if.end.i15

if.then.i14:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_1.exit
  %17 = load i32, ptr %x.addr.i11, align 4
  %add.i13 = add nsw i32 %17, 2
  store i32 %add.i13, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit

if.end.i15:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_1.exit
  %18 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %18, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i15
  %19 = load i32, ptr %x.addr.i11, align 4
  %mul.i16 = mul nsw i32 %19, 5
  store i32 %mul.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit

if.end3.i:                                        ; preds = %if.end.i15
  %20 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %20, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %21 = load i32, ptr %x.addr.i11, align 4
  %sub.i17 = add nsw i32 %21, -7
  store i32 %sub.i17, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit

if.end6.i:                                        ; preds = %if.end3.i
  %22 = load i32, ptr %x.addr.i11, align 4
  %23 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %22, %23
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit: ; preds = %if.then.i14, %if.then2.i, %if.then5.i, %if.end6.i
  %24 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i11)
  %25 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %25, %24
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL20matrix_019_recursivei(i32 noundef 3)
  %xor = xor i32 %add7, %call8
  store i32 %xor, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %add9 = add nsw i32 %26, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i20)
  store i32 %add9, ptr %x.addr.i18, align 4
  store i32 %add9, ptr %s.i19, align 4
  br label %for.cond.i22

for.cond.i22:                                     ; preds = %for.body.i29, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit
  %storemerge163 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_2.exit ], [ %inc.i30, %for.body.i29 ]
  store i32 %storemerge163, ptr %i.i20, align 4
  %cmp.i21 = icmp slt i32 %storemerge163, 8
  br i1 %cmp.i21, label %for.body.i29, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_4.exit

for.body.i29:                                     ; preds = %for.cond.i22
  %27 = load i32, ptr %x.addr.i18, align 4
  %28 = load i32, ptr %i.i20, align 4
  %xor.i23 = xor i32 %27, %28
  %add.i24 = add nsw i32 %xor.i23, 6
  %29 = load i32, ptr %s.i19, align 4
  %add1.i25 = add nsw i32 %29, %add.i24
  %shl.i26 = shl i32 %add1.i25, 1
  %shr.i27 = ashr i32 %add1.i25, 3
  %xor2.i28 = xor i32 %shl.i26, %shr.i27
  store i32 %xor2.i28, ptr %s.i19, align 4
  %30 = load i32, ptr %i.i20, align 4
  %inc.i30 = add nsw i32 %30, 1
  br label %for.cond.i22, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_4.exit: ; preds = %for.cond.i22
  %31 = load i32, ptr %s.i19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i20)
  %32 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %32, %31
  store i32 %add11, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %add12 = add nsw i32 %33, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i34)
  store i32 %add12, ptr %x.addr.i31, align 4
  store i32 %add12, ptr %s.i32, align 4
  %and.i35 = and i32 %add12, 3
  %add.i36 = add nuw nsw i32 %and.i35, 3
  store i32 %add.i36, ptr %limit.i33, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %if.end.i48, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_4.exit
  %storemerge164 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_4.exit ], [ %inc.i49, %if.end.i48 ]
  store i32 %storemerge164, ptr %i.i34, align 4
  %34 = load i32, ptr %limit.i33, align 4
  %cmp.i37 = icmp slt i32 %storemerge164, %34
  br i1 %cmp.i37, label %for.body.i44, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_5.exit

for.body.i44:                                     ; preds = %for.cond.i38
  %35 = load i32, ptr %i.i34, align 4
  %mul.i39 = mul nsw i32 %35, %35
  %sub.i40 = add nsw i32 %mul.i39, -1
  %36 = load i32, ptr %s.i32, align 4
  %add1.i41 = add nsw i32 %36, %sub.i40
  store i32 %add1.i41, ptr %s.i32, align 4
  %and2.i42 = and i32 %add1.i41, 1
  %cmp3.i43 = icmp eq i32 %and2.i42, 0
  br i1 %cmp3.i43, label %if.then.i47, label %if.end.i48

if.then.i47:                                      ; preds = %for.body.i44
  %37 = load i32, ptr %i.i34, align 4
  %38 = load i32, ptr %x.addr.i31, align 4
  %add4.i45 = add nsw i32 %37, %38
  %39 = load i32, ptr %s.i32, align 4
  %xor.i46 = xor i32 %39, %add4.i45
  store i32 %xor.i46, ptr %s.i32, align 4
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i47, %for.body.i44
  %40 = load i32, ptr %i.i34, align 4
  %inc.i49 = add nsw i32 %40, 1
  br label %for.cond.i38, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_5.exit: ; preds = %for.cond.i38
  %41 = load i32, ptr %s.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i34)
  %42 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %42, %41
  store i32 %add14, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %43, 3
  %add16 = add nsw i32 %43, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i52)
  store i32 %and15, ptr %mode.addr.i51, align 4
  store i32 %add16, ptr %x.addr.i52, align 4
  %cmp.i53 = icmp eq i32 %and15, 0
  br i1 %cmp.i53, label %if.then.i55, label %if.end.i57

if.then.i55:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_5.exit
  %44 = load i32, ptr %x.addr.i52, align 4
  %add.i54 = add nsw i32 %44, 2
  store i32 %add.i54, ptr %retval.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit

if.end.i57:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_5.exit
  %45 = load i32, ptr %mode.addr.i51, align 4
  %cmp1.i56 = icmp eq i32 %45, 1
  br i1 %cmp1.i56, label %if.then2.i59, label %if.end3.i61

if.then2.i59:                                     ; preds = %if.end.i57
  %46 = load i32, ptr %x.addr.i52, align 4
  %mul.i58 = mul nsw i32 %46, 5
  store i32 %mul.i58, ptr %retval.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit

if.end3.i61:                                      ; preds = %if.end.i57
  %47 = load i32, ptr %mode.addr.i51, align 4
  %cmp4.i60 = icmp eq i32 %47, 2
  br i1 %cmp4.i60, label %if.then5.i63, label %if.end6.i65

if.then5.i63:                                     ; preds = %if.end3.i61
  %48 = load i32, ptr %x.addr.i52, align 4
  %sub.i62 = add nsw i32 %48, -7
  store i32 %sub.i62, ptr %retval.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit

if.end6.i65:                                      ; preds = %if.end3.i61
  %49 = load i32, ptr %x.addr.i52, align 4
  %50 = load i32, ptr %mode.addr.i51, align 4
  %add7.i64 = add nsw i32 %49, %50
  store i32 %add7.i64, ptr %retval.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit: ; preds = %if.then.i55, %if.then2.i59, %if.then5.i63, %if.end6.i65
  %51 = load i32, ptr %retval.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i52)
  %52 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %52, %51
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_019_recursivei(i32 noundef 3)
  %xor20 = xor i32 %add18, %call19
  store i32 %xor20, ptr %total, align 4
  %53 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %53, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i66)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i68)
  store i32 %add21, ptr %x.addr.i66, align 4
  store i32 %add21, ptr %s.i67, align 4
  br label %for.cond.i70

for.cond.i70:                                     ; preds = %for.body.i77, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit
  %storemerge165 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_6.exit ], [ %inc.i78, %for.body.i77 ]
  store i32 %storemerge165, ptr %i.i68, align 4
  %cmp.i69 = icmp slt i32 %storemerge165, 8
  br i1 %cmp.i69, label %for.body.i77, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_8.exit

for.body.i77:                                     ; preds = %for.cond.i70
  %54 = load i32, ptr %x.addr.i66, align 4
  %55 = load i32, ptr %i.i68, align 4
  %xor.i71 = xor i32 %54, %55
  %add.i72 = add nsw i32 %xor.i71, 6
  %56 = load i32, ptr %s.i67, align 4
  %add1.i73 = add nsw i32 %56, %add.i72
  %shl.i74 = shl i32 %add1.i73, 1
  %shr.i75 = ashr i32 %add1.i73, 3
  %xor2.i76 = xor i32 %shl.i74, %shr.i75
  store i32 %xor2.i76, ptr %s.i67, align 4
  %57 = load i32, ptr %i.i68, align 4
  %inc.i78 = add nsw i32 %57, 1
  br label %for.cond.i70, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_8.exit: ; preds = %for.cond.i70
  %58 = load i32, ptr %s.i67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i66)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i68)
  %59 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %59, %58
  store i32 %add23, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %add24 = add nsw i32 %60, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i79)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i82)
  store i32 %add24, ptr %x.addr.i79, align 4
  store i32 %add24, ptr %s.i80, align 4
  %and.i83 = and i32 %add24, 3
  %add.i84 = add nuw nsw i32 %and.i83, 3
  store i32 %add.i84, ptr %limit.i81, align 4
  br label %for.cond.i86

for.cond.i86:                                     ; preds = %if.end.i96, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_8.exit
  %storemerge166 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_8.exit ], [ %inc.i97, %if.end.i96 ]
  store i32 %storemerge166, ptr %i.i82, align 4
  %61 = load i32, ptr %limit.i81, align 4
  %cmp.i85 = icmp slt i32 %storemerge166, %61
  br i1 %cmp.i85, label %for.body.i92, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_9.exit

for.body.i92:                                     ; preds = %for.cond.i86
  %62 = load i32, ptr %i.i82, align 4
  %mul.i87 = mul nsw i32 %62, %62
  %sub.i88 = add nsw i32 %mul.i87, -1
  %63 = load i32, ptr %s.i80, align 4
  %add1.i89 = add nsw i32 %63, %sub.i88
  store i32 %add1.i89, ptr %s.i80, align 4
  %and2.i90 = and i32 %add1.i89, 1
  %cmp3.i91 = icmp eq i32 %and2.i90, 0
  br i1 %cmp3.i91, label %if.then.i95, label %if.end.i96

if.then.i95:                                      ; preds = %for.body.i92
  %64 = load i32, ptr %i.i82, align 4
  %65 = load i32, ptr %x.addr.i79, align 4
  %add4.i93 = add nsw i32 %64, %65
  %66 = load i32, ptr %s.i80, align 4
  %xor.i94 = xor i32 %66, %add4.i93
  store i32 %xor.i94, ptr %s.i80, align 4
  br label %if.end.i96

if.end.i96:                                       ; preds = %if.then.i95, %for.body.i92
  %67 = load i32, ptr %i.i82, align 4
  %inc.i97 = add nsw i32 %67, 1
  br label %for.cond.i86, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_9.exit: ; preds = %for.cond.i86
  %68 = load i32, ptr %s.i80, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i79)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i81)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i82)
  %69 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %69, %68
  store i32 %add26, ptr %total, align 4
  %70 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %70, 3
  %add28 = add nsw i32 %70, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i99)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i100)
  store i32 %and27, ptr %mode.addr.i99, align 4
  store i32 %add28, ptr %x.addr.i100, align 4
  %cmp.i101 = icmp eq i32 %and27, 0
  br i1 %cmp.i101, label %if.then.i103, label %if.end.i105

if.then.i103:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_9.exit
  %71 = load i32, ptr %x.addr.i100, align 4
  %add.i102 = add nsw i32 %71, 2
  store i32 %add.i102, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit

if.end.i105:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_9.exit
  %72 = load i32, ptr %mode.addr.i99, align 4
  %cmp1.i104 = icmp eq i32 %72, 1
  br i1 %cmp1.i104, label %if.then2.i107, label %if.end3.i109

if.then2.i107:                                    ; preds = %if.end.i105
  %73 = load i32, ptr %x.addr.i100, align 4
  %mul.i106 = mul nsw i32 %73, 5
  store i32 %mul.i106, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit

if.end3.i109:                                     ; preds = %if.end.i105
  %74 = load i32, ptr %mode.addr.i99, align 4
  %cmp4.i108 = icmp eq i32 %74, 2
  br i1 %cmp4.i108, label %if.then5.i111, label %if.end6.i113

if.then5.i111:                                    ; preds = %if.end3.i109
  %75 = load i32, ptr %x.addr.i100, align 4
  %sub.i110 = add nsw i32 %75, -7
  store i32 %sub.i110, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit

if.end6.i113:                                     ; preds = %if.end3.i109
  %76 = load i32, ptr %x.addr.i100, align 4
  %77 = load i32, ptr %mode.addr.i99, align 4
  %add7.i112 = add nsw i32 %76, %77
  store i32 %add7.i112, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit: ; preds = %if.then.i103, %if.then2.i107, %if.then5.i111, %if.end6.i113
  %78 = load i32, ptr %retval.i98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i99)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i100)
  %79 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %79, %78
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL20matrix_019_recursivei(i32 noundef 3)
  %xor32 = xor i32 %add30, %call31
  store i32 %xor32, ptr %total, align 4
  %80 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %80, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i116)
  store i32 %add33, ptr %x.addr.i114, align 4
  store i32 %add33, ptr %s.i115, align 4
  br label %for.cond.i118

for.cond.i118:                                    ; preds = %for.body.i125, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit
  %storemerge167 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_10.exit ], [ %inc.i126, %for.body.i125 ]
  store i32 %storemerge167, ptr %i.i116, align 4
  %cmp.i117 = icmp slt i32 %storemerge167, 8
  br i1 %cmp.i117, label %for.body.i125, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_12.exit

for.body.i125:                                    ; preds = %for.cond.i118
  %81 = load i32, ptr %x.addr.i114, align 4
  %82 = load i32, ptr %i.i116, align 4
  %xor.i119 = xor i32 %81, %82
  %add.i120 = add nsw i32 %xor.i119, 6
  %83 = load i32, ptr %s.i115, align 4
  %add1.i121 = add nsw i32 %83, %add.i120
  %shl.i122 = shl i32 %add1.i121, 1
  %shr.i123 = ashr i32 %add1.i121, 3
  %xor2.i124 = xor i32 %shl.i122, %shr.i123
  store i32 %xor2.i124, ptr %s.i115, align 4
  %84 = load i32, ptr %i.i116, align 4
  %inc.i126 = add nsw i32 %84, 1
  br label %for.cond.i118, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_12.exit: ; preds = %for.cond.i118
  %85 = load i32, ptr %s.i115, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i116)
  %86 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %86, %85
  store i32 %add35, ptr %total, align 4
  %87 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %87, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i127)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i129)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i130)
  store i32 %add36, ptr %x.addr.i127, align 4
  store i32 %add36, ptr %s.i128, align 4
  %and.i131 = and i32 %add36, 3
  %add.i132 = add nuw nsw i32 %and.i131, 3
  store i32 %add.i132, ptr %limit.i129, align 4
  br label %for.cond.i134

for.cond.i134:                                    ; preds = %if.end.i144, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_12.exit
  %storemerge168 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_12.exit ], [ %inc.i145, %if.end.i144 ]
  store i32 %storemerge168, ptr %i.i130, align 4
  %88 = load i32, ptr %limit.i129, align 4
  %cmp.i133 = icmp slt i32 %storemerge168, %88
  br i1 %cmp.i133, label %for.body.i140, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_13.exit

for.body.i140:                                    ; preds = %for.cond.i134
  %89 = load i32, ptr %i.i130, align 4
  %mul.i135 = mul nsw i32 %89, %89
  %sub.i136 = add nsw i32 %mul.i135, -1
  %90 = load i32, ptr %s.i128, align 4
  %add1.i137 = add nsw i32 %90, %sub.i136
  store i32 %add1.i137, ptr %s.i128, align 4
  %and2.i138 = and i32 %add1.i137, 1
  %cmp3.i139 = icmp eq i32 %and2.i138, 0
  br i1 %cmp3.i139, label %if.then.i143, label %if.end.i144

if.then.i143:                                     ; preds = %for.body.i140
  %91 = load i32, ptr %i.i130, align 4
  %92 = load i32, ptr %x.addr.i127, align 4
  %add4.i141 = add nsw i32 %91, %92
  %93 = load i32, ptr %s.i128, align 4
  %xor.i142 = xor i32 %93, %add4.i141
  store i32 %xor.i142, ptr %s.i128, align 4
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.then.i143, %for.body.i140
  %94 = load i32, ptr %i.i130, align 4
  %inc.i145 = add nsw i32 %94, 1
  br label %for.cond.i134, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_13.exit: ; preds = %for.cond.i134
  %95 = load i32, ptr %s.i128, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i127)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i128)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i129)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i130)
  %96 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %96, %95
  store i32 %add38, ptr %total, align 4
  %97 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %97, 3
  %add40 = add nsw i32 %97, 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i146)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i147)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i148)
  store i32 %and39, ptr %mode.addr.i147, align 4
  store i32 %add40, ptr %x.addr.i148, align 4
  %cmp.i149 = icmp eq i32 %and39, 0
  br i1 %cmp.i149, label %if.then.i151, label %if.end.i153

if.then.i151:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_13.exit
  %98 = load i32, ptr %x.addr.i148, align 4
  %add.i150 = add nsw i32 %98, 2
  store i32 %add.i150, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_14.exit

if.end.i153:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_13.exit
  %99 = load i32, ptr %mode.addr.i147, align 4
  %cmp1.i152 = icmp eq i32 %99, 1
  br i1 %cmp1.i152, label %if.then2.i155, label %if.end3.i157

if.then2.i155:                                    ; preds = %if.end.i153
  %100 = load i32, ptr %x.addr.i148, align 4
  %mul.i154 = mul nsw i32 %100, 5
  store i32 %mul.i154, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_14.exit

if.end3.i157:                                     ; preds = %if.end.i153
  %101 = load i32, ptr %mode.addr.i147, align 4
  %cmp4.i156 = icmp eq i32 %101, 2
  br i1 %cmp4.i156, label %if.then5.i159, label %if.end6.i161

if.then5.i159:                                    ; preds = %if.end3.i157
  %102 = load i32, ptr %x.addr.i148, align 4
  %sub.i158 = add nsw i32 %102, -7
  store i32 %sub.i158, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_14.exit

if.end6.i161:                                     ; preds = %if.end3.i157
  %103 = load i32, ptr %x.addr.i148, align 4
  %104 = load i32, ptr %mode.addr.i147, align 4
  %add7.i160 = add nsw i32 %103, %104
  store i32 %add7.i160, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_019_14.exit: ; preds = %if.then.i151, %if.then2.i155, %if.then5.i159, %if.end6.i161
  %105 = load i32, ptr %retval.i146, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i146)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i147)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i148)
  %106 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %106, %105
  store i32 %add42, ptr %total, align 4
  %call43 = call noundef i32 @_ZL20matrix_019_recursivei(i32 noundef 3)
  %xor44 = xor i32 %add42, %call43
  store i32 %xor44, ptr %total, align 4
  ret i32 %xor44
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_019_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_019_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_019_recursivei(i32 noundef %sub1)
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
