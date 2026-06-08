; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_067.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_067.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_067_entry(i32 noundef %x) #0 {
entry:
  %retval.i142 = alloca i32, align 4
  %mode.addr.i143 = alloca i32, align 4
  %x.addr.i144 = alloca i32, align 4
  %x.addr.i124 = alloca i32, align 4
  %s.i125 = alloca i32, align 4
  %limit.i126 = alloca i32, align 4
  %i.i127 = alloca i32, align 4
  %x.addr.i111 = alloca i32, align 4
  %s.i112 = alloca i32, align 4
  %i.i113 = alloca i32, align 4
  %retval.i95 = alloca i32, align 4
  %mode.addr.i96 = alloca i32, align 4
  %x.addr.i97 = alloca i32, align 4
  %x.addr.i77 = alloca i32, align 4
  %s.i78 = alloca i32, align 4
  %limit.i79 = alloca i32, align 4
  %i.i80 = alloca i32, align 4
  %x.addr.i64 = alloca i32, align 4
  %s.i65 = alloca i32, align 4
  %i.i66 = alloca i32, align 4
  %retval.i48 = alloca i32, align 4
  %mode.addr.i49 = alloca i32, align 4
  %x.addr.i50 = alloca i32, align 4
  %x.addr.i30 = alloca i32, align 4
  %s.i31 = alloca i32, align 4
  %limit.i32 = alloca i32, align 4
  %i.i33 = alloca i32, align 4
  %x.addr.i17 = alloca i32, align 4
  %s.i18 = alloca i32, align 4
  %i.i19 = alloca i32, align 4
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
  store i32 2, ptr %x.addr.i, align 4
  store i32 2, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 8
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %x.addr.i, align 4
  %1 = load i32, ptr %i.i, align 4
  %xor.i = xor i32 %0, %1
  %add.i = add nsw i32 %xor.i, 2
  %2 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %2, %add.i
  %shl.i = shl i32 %add1.i, 1
  %shr.i = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_0.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and = and i32 %6, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i3)
  store i32 %and, ptr %x.addr.i1, align 4
  store i32 %and, ptr %s.i2, align 4
  %and.i = and i32 %6, 3
  %add.i4 = or i32 %and.i, 4
  store i32 %add.i4, ptr %limit.i, align 4
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %if.end.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_0.exit
  %storemerge158 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_0.exit ], [ %inc.i10, %if.end.i ]
  store i32 %storemerge158, ptr %i.i3, align 4
  %7 = load i32, ptr %limit.i, align 4
  %cmp.i5 = icmp slt i32 %storemerge158, %7
  br i1 %cmp.i5, label %for.body.i8, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_1.exit

for.body.i8:                                      ; preds = %for.cond.i6
  %8 = load i32, ptr %i.i3, align 4
  %mul.i = mul nsw i32 %8, %8
  %9 = load i32, ptr %s.i2, align 4
  %add1.i7 = add nsw i32 %9, %mul.i
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

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_1.exit: ; preds = %for.cond.i6
  %14 = load i32, ptr %s.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i3)
  %15 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %15, %14
  store i32 %add2, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %16, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i11)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 %and3, ptr %x.addr.i11, align 4
  %17 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %17, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_1.exit
  %18 = load i32, ptr %x.addr.i11, align 4
  %mul.i16 = mul nsw i32 %18, 5
  store i32 %mul.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_2.exit

if.end3.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_1.exit
  %19 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %19, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %20 = load i32, ptr %x.addr.i11, align 4
  %sub.i = add nsw i32 %20, -5
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_2.exit

if.end6.i:                                        ; preds = %if.end3.i
  %21 = load i32, ptr %x.addr.i11, align 4
  %22 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %21, %22
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_2.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %23 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i11)
  %24 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %24, %23
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_067_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %25, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i19)
  store i32 %and8, ptr %x.addr.i17, align 4
  store i32 %and8, ptr %s.i18, align 4
  br label %for.cond.i21

for.cond.i21:                                     ; preds = %for.body.i28, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_2.exit
  %storemerge159 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_2.exit ], [ %inc.i29, %for.body.i28 ]
  store i32 %storemerge159, ptr %i.i19, align 4
  %cmp.i20 = icmp slt i32 %storemerge159, 8
  br i1 %cmp.i20, label %for.body.i28, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_4.exit

for.body.i28:                                     ; preds = %for.cond.i21
  %26 = load i32, ptr %x.addr.i17, align 4
  %27 = load i32, ptr %i.i19, align 4
  %xor.i22 = xor i32 %26, %27
  %add.i23 = add nsw i32 %xor.i22, 2
  %28 = load i32, ptr %s.i18, align 4
  %add1.i24 = add nsw i32 %28, %add.i23
  %shl.i25 = shl i32 %add1.i24, 1
  %shr.i26 = ashr i32 %add1.i24, 3
  %xor2.i27 = xor i32 %shl.i25, %shr.i26
  store i32 %xor2.i27, ptr %s.i18, align 4
  %29 = load i32, ptr %i.i19, align 4
  %inc.i29 = add nsw i32 %29, 1
  br label %for.cond.i21, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_4.exit: ; preds = %for.cond.i21
  %30 = load i32, ptr %s.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i19)
  %31 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %31, %30
  store i32 %add10, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %32, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i33)
  store i32 %and11, ptr %x.addr.i30, align 4
  store i32 %and11, ptr %s.i31, align 4
  %and.i34 = and i32 %32, 3
  %add.i35 = or i32 %and.i34, 4
  store i32 %add.i35, ptr %limit.i32, align 4
  br label %for.cond.i37

for.cond.i37:                                     ; preds = %if.end.i46, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_4.exit
  %storemerge160 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_4.exit ], [ %inc.i47, %if.end.i46 ]
  store i32 %storemerge160, ptr %i.i33, align 4
  %33 = load i32, ptr %limit.i32, align 4
  %cmp.i36 = icmp slt i32 %storemerge160, %33
  br i1 %cmp.i36, label %for.body.i42, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_5.exit

for.body.i42:                                     ; preds = %for.cond.i37
  %34 = load i32, ptr %i.i33, align 4
  %mul.i38 = mul nsw i32 %34, %34
  %35 = load i32, ptr %s.i31, align 4
  %add1.i39 = add nsw i32 %35, %mul.i38
  store i32 %add1.i39, ptr %s.i31, align 4
  %and2.i40 = and i32 %add1.i39, 1
  %cmp3.i41 = icmp eq i32 %and2.i40, 0
  br i1 %cmp3.i41, label %if.then.i45, label %if.end.i46

if.then.i45:                                      ; preds = %for.body.i42
  %36 = load i32, ptr %i.i33, align 4
  %37 = load i32, ptr %x.addr.i30, align 4
  %add4.i43 = add nsw i32 %36, %37
  %38 = load i32, ptr %s.i31, align 4
  %xor.i44 = xor i32 %38, %add4.i43
  store i32 %xor.i44, ptr %s.i31, align 4
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i45, %for.body.i42
  %39 = load i32, ptr %i.i33, align 4
  %inc.i47 = add nsw i32 %39, 1
  br label %for.cond.i37, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_5.exit: ; preds = %for.cond.i37
  %40 = load i32, ptr %s.i31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i33)
  %41 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %41, %40
  store i32 %add13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i49)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i50)
  store i32 1, ptr %mode.addr.i49, align 4
  store i32 8, ptr %x.addr.i50, align 4
  %42 = load i32, ptr %mode.addr.i49, align 4
  %cmp1.i54 = icmp eq i32 %42, 1
  br i1 %cmp1.i54, label %if.then2.i57, label %if.end3.i59

if.then2.i57:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_5.exit
  %43 = load i32, ptr %x.addr.i50, align 4
  %mul.i56 = mul nsw i32 %43, 5
  store i32 %mul.i56, ptr %retval.i48, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_6.exit

if.end3.i59:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_5.exit
  %44 = load i32, ptr %mode.addr.i49, align 4
  %cmp4.i58 = icmp eq i32 %44, 2
  br i1 %cmp4.i58, label %if.then5.i61, label %if.end6.i63

if.then5.i61:                                     ; preds = %if.end3.i59
  %45 = load i32, ptr %x.addr.i50, align 4
  %sub.i60 = add nsw i32 %45, -5
  store i32 %sub.i60, ptr %retval.i48, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_6.exit

if.end6.i63:                                      ; preds = %if.end3.i59
  %46 = load i32, ptr %x.addr.i50, align 4
  %47 = load i32, ptr %mode.addr.i49, align 4
  %add7.i62 = add nsw i32 %46, %47
  store i32 %add7.i62, ptr %retval.i48, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_6.exit: ; preds = %if.then2.i57, %if.then5.i61, %if.end6.i63
  %48 = load i32, ptr %retval.i48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i50)
  %49 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %49, %48
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL20matrix_067_recursivei(i32 noundef 3)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %50 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %50, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i65)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i66)
  store i32 %and18, ptr %x.addr.i64, align 4
  store i32 %and18, ptr %s.i65, align 4
  br label %for.cond.i68

for.cond.i68:                                     ; preds = %for.body.i75, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_6.exit
  %storemerge161 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_6.exit ], [ %inc.i76, %for.body.i75 ]
  store i32 %storemerge161, ptr %i.i66, align 4
  %cmp.i67 = icmp slt i32 %storemerge161, 8
  br i1 %cmp.i67, label %for.body.i75, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_8.exit

for.body.i75:                                     ; preds = %for.cond.i68
  %51 = load i32, ptr %x.addr.i64, align 4
  %52 = load i32, ptr %i.i66, align 4
  %xor.i69 = xor i32 %51, %52
  %add.i70 = add nsw i32 %xor.i69, 2
  %53 = load i32, ptr %s.i65, align 4
  %add1.i71 = add nsw i32 %53, %add.i70
  %shl.i72 = shl i32 %add1.i71, 1
  %shr.i73 = ashr i32 %add1.i71, 3
  %xor2.i74 = xor i32 %shl.i72, %shr.i73
  store i32 %xor2.i74, ptr %s.i65, align 4
  %54 = load i32, ptr %i.i66, align 4
  %inc.i76 = add nsw i32 %54, 1
  br label %for.cond.i68, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_8.exit: ; preds = %for.cond.i68
  %55 = load i32, ptr %s.i65, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i64)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i65)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i66)
  %56 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %56, %55
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i77)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i79)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i80)
  store i32 11, ptr %x.addr.i77, align 4
  store i32 11, ptr %s.i78, align 4
  store i32 7, ptr %limit.i79, align 4
  br label %for.cond.i84

for.cond.i84:                                     ; preds = %if.end.i93, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_8.exit
  %storemerge162 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_8.exit ], [ %inc.i94, %if.end.i93 ]
  store i32 %storemerge162, ptr %i.i80, align 4
  %57 = load i32, ptr %limit.i79, align 4
  %cmp.i83 = icmp slt i32 %storemerge162, %57
  br i1 %cmp.i83, label %for.body.i89, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_9.exit

for.body.i89:                                     ; preds = %for.cond.i84
  %58 = load i32, ptr %i.i80, align 4
  %mul.i85 = mul nsw i32 %58, %58
  %59 = load i32, ptr %s.i78, align 4
  %add1.i86 = add nsw i32 %59, %mul.i85
  store i32 %add1.i86, ptr %s.i78, align 4
  %and2.i87 = and i32 %add1.i86, 1
  %cmp3.i88 = icmp eq i32 %and2.i87, 0
  br i1 %cmp3.i88, label %if.then.i92, label %if.end.i93

if.then.i92:                                      ; preds = %for.body.i89
  %60 = load i32, ptr %i.i80, align 4
  %61 = load i32, ptr %x.addr.i77, align 4
  %add4.i90 = add nsw i32 %60, %61
  %62 = load i32, ptr %s.i78, align 4
  %xor.i91 = xor i32 %62, %add4.i90
  store i32 %xor.i91, ptr %s.i78, align 4
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.then.i92, %for.body.i89
  %63 = load i32, ptr %i.i80, align 4
  %inc.i94 = add nsw i32 %63, 1
  br label %for.cond.i84, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_9.exit: ; preds = %for.cond.i84
  %64 = load i32, ptr %s.i78, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i77)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i79)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i80)
  %65 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %65, %64
  store i32 %add22, ptr %total, align 4
  %66 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %66, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i97)
  store i32 1, ptr %mode.addr.i96, align 4
  store i32 %and23, ptr %x.addr.i97, align 4
  %67 = load i32, ptr %mode.addr.i96, align 4
  %cmp1.i101 = icmp eq i32 %67, 1
  br i1 %cmp1.i101, label %if.then2.i104, label %if.end3.i106

if.then2.i104:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_9.exit
  %68 = load i32, ptr %x.addr.i97, align 4
  %mul.i103 = mul nsw i32 %68, 5
  store i32 %mul.i103, ptr %retval.i95, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_10.exit

if.end3.i106:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_9.exit
  %69 = load i32, ptr %mode.addr.i96, align 4
  %cmp4.i105 = icmp eq i32 %69, 2
  br i1 %cmp4.i105, label %if.then5.i108, label %if.end6.i110

if.then5.i108:                                    ; preds = %if.end3.i106
  %70 = load i32, ptr %x.addr.i97, align 4
  %sub.i107 = add nsw i32 %70, -5
  store i32 %sub.i107, ptr %retval.i95, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_10.exit

if.end6.i110:                                     ; preds = %if.end3.i106
  %71 = load i32, ptr %x.addr.i97, align 4
  %72 = load i32, ptr %mode.addr.i96, align 4
  %add7.i109 = add nsw i32 %71, %72
  store i32 %add7.i109, ptr %retval.i95, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_10.exit: ; preds = %if.then2.i104, %if.then5.i108, %if.end6.i110
  %73 = load i32, ptr %retval.i95, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i96)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i97)
  %74 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %74, %73
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_067_recursivei(i32 noundef 3)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i111)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i113)
  store i32 1, ptr %x.addr.i111, align 4
  store i32 1, ptr %s.i112, align 4
  br label %for.cond.i115

for.cond.i115:                                    ; preds = %for.body.i122, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_10.exit
  %storemerge163 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_10.exit ], [ %inc.i123, %for.body.i122 ]
  store i32 %storemerge163, ptr %i.i113, align 4
  %cmp.i114 = icmp slt i32 %storemerge163, 8
  br i1 %cmp.i114, label %for.body.i122, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_12.exit

for.body.i122:                                    ; preds = %for.cond.i115
  %75 = load i32, ptr %x.addr.i111, align 4
  %76 = load i32, ptr %i.i113, align 4
  %xor.i116 = xor i32 %75, %76
  %add.i117 = add nsw i32 %xor.i116, 2
  %77 = load i32, ptr %s.i112, align 4
  %add1.i118 = add nsw i32 %77, %add.i117
  %shl.i119 = shl i32 %add1.i118, 1
  %shr.i120 = ashr i32 %add1.i118, 3
  %xor2.i121 = xor i32 %shl.i119, %shr.i120
  store i32 %xor2.i121, ptr %s.i112, align 4
  %78 = load i32, ptr %i.i113, align 4
  %inc.i123 = add nsw i32 %78, 1
  br label %for.cond.i115, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_12.exit: ; preds = %for.cond.i115
  %79 = load i32, ptr %s.i112, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i111)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i112)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i113)
  %80 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %80, %79
  store i32 %add29, ptr %total, align 4
  %81 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %81, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i124)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i125)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i126)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i127)
  store i32 %and30, ptr %x.addr.i124, align 4
  store i32 %and30, ptr %s.i125, align 4
  %and.i128 = and i32 %81, 3
  %add.i129 = or i32 %and.i128, 4
  store i32 %add.i129, ptr %limit.i126, align 4
  br label %for.cond.i131

for.cond.i131:                                    ; preds = %if.end.i140, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_12.exit
  %storemerge164 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_12.exit ], [ %inc.i141, %if.end.i140 ]
  store i32 %storemerge164, ptr %i.i127, align 4
  %82 = load i32, ptr %limit.i126, align 4
  %cmp.i130 = icmp slt i32 %storemerge164, %82
  br i1 %cmp.i130, label %for.body.i136, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_13.exit

for.body.i136:                                    ; preds = %for.cond.i131
  %83 = load i32, ptr %i.i127, align 4
  %mul.i132 = mul nsw i32 %83, %83
  %84 = load i32, ptr %s.i125, align 4
  %add1.i133 = add nsw i32 %84, %mul.i132
  store i32 %add1.i133, ptr %s.i125, align 4
  %and2.i134 = and i32 %add1.i133, 1
  %cmp3.i135 = icmp eq i32 %and2.i134, 0
  br i1 %cmp3.i135, label %if.then.i139, label %if.end.i140

if.then.i139:                                     ; preds = %for.body.i136
  %85 = load i32, ptr %i.i127, align 4
  %86 = load i32, ptr %x.addr.i124, align 4
  %add4.i137 = add nsw i32 %85, %86
  %87 = load i32, ptr %s.i125, align 4
  %xor.i138 = xor i32 %87, %add4.i137
  store i32 %xor.i138, ptr %s.i125, align 4
  br label %if.end.i140

if.end.i140:                                      ; preds = %if.then.i139, %for.body.i136
  %88 = load i32, ptr %i.i127, align 4
  %inc.i141 = add nsw i32 %88, 1
  br label %for.cond.i131, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_13.exit: ; preds = %for.cond.i131
  %89 = load i32, ptr %s.i125, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i124)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i125)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i126)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i127)
  %90 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %90, %89
  store i32 %add32, ptr %total, align 4
  %91 = load i32, ptr %x.addr, align 4
  %and33 = and i32 %91, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i142)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i143)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i144)
  store i32 1, ptr %mode.addr.i143, align 4
  store i32 %and33, ptr %x.addr.i144, align 4
  %92 = load i32, ptr %mode.addr.i143, align 4
  %cmp1.i148 = icmp eq i32 %92, 1
  br i1 %cmp1.i148, label %if.then2.i151, label %if.end3.i153

if.then2.i151:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_13.exit
  %93 = load i32, ptr %x.addr.i144, align 4
  %mul.i150 = mul nsw i32 %93, 5
  store i32 %mul.i150, ptr %retval.i142, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_14.exit

if.end3.i153:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_13.exit
  %94 = load i32, ptr %mode.addr.i143, align 4
  %cmp4.i152 = icmp eq i32 %94, 2
  br i1 %cmp4.i152, label %if.then5.i155, label %if.end6.i157

if.then5.i155:                                    ; preds = %if.end3.i153
  %95 = load i32, ptr %x.addr.i144, align 4
  %sub.i154 = add nsw i32 %95, -5
  store i32 %sub.i154, ptr %retval.i142, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_14.exit

if.end6.i157:                                     ; preds = %if.end3.i153
  %96 = load i32, ptr %x.addr.i144, align 4
  %97 = load i32, ptr %mode.addr.i143, align 4
  %add7.i156 = add nsw i32 %96, %97
  store i32 %add7.i156, ptr %retval.i142, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_067_14.exit: ; preds = %if.then2.i151, %if.then5.i155, %if.end6.i157
  %98 = load i32, ptr %retval.i142, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i142)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i143)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i144)
  %99 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %99, %98
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20matrix_067_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_067_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_067_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_067_recursivei(i32 noundef %sub1)
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
