; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_004.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_004.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_004_entry(i32 noundef %x) #0 {
entry:
  %x.addr.i113 = alloca i32, align 4
  %s.i114 = alloca i32, align 4
  %limit.i115 = alloca i32, align 4
  %i.i116 = alloca i32, align 4
  %x.addr.i102 = alloca i32, align 4
  %y.i103 = alloca i32, align 4
  %i.i104 = alloca i32, align 4
  %mode.addr.i90 = alloca i32, align 4
  %out.i92 = alloca i32, align 4
  %retval.i72 = alloca i32, align 4
  %mode.addr.i73 = alloca i32, align 4
  %x.addr.i74 = alloca i32, align 4
  %x.addr.i54 = alloca i32, align 4
  %s.i55 = alloca i32, align 4
  %limit.i56 = alloca i32, align 4
  %i.i57 = alloca i32, align 4
  %x.addr.i43 = alloca i32, align 4
  %y.i44 = alloca i32, align 4
  %i.i45 = alloca i32, align 4
  %retval.i27 = alloca i32, align 4
  %mode.addr.i28 = alloca i32, align 4
  %x.addr.i29 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i18 = alloca i32, align 4
  %x.addr.i19 = alloca i32, align 4
  %x.addr.i6 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i7 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %xor.i = xor i32 %x, 5
  store i32 %xor.i, ptr %total, align 4
  %and = and i32 %x, 3
  %add2 = add nsw i32 %x, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %add2, ptr %out.i, align 4
  %and.i = and i32 %x, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 6
  store i32 %add.i, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = load i32, ptr %out.i, align 4
  %xor.i2 = xor i32 %2, 8
  store i32 %xor.i2, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_1.exit: ; preds = %if.end.i, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %3
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add5, ptr %x.addr.i3, align 4
  %add.i4 = add nsw i32 %5, 11
  store i32 %add.i4, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_1.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_1.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 2
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_2.exit

for.body.i:                                       ; preds = %for.cond.i
  %6 = load i32, ptr %i.i, align 4
  %7 = load i32, ptr %x.addr.i3, align 4
  %and.i5 = and i32 %7, 3
  %add1.i = add nsw i32 %6, %and.i5
  %8 = load i32, ptr %y.i, align 4
  %add2.i = add nsw i32 %8, %add1.i
  store i32 %add2.i, ptr %y.i, align 4
  %9 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %9, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_2.exit: ; preds = %for.cond.i
  %10 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %11 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %11, %10
  store i32 %add7, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i7)
  store i32 %add8, ptr %x.addr.i6, align 4
  store i32 %add8, ptr %s.i, align 4
  %and.i8 = and i32 %add8, 3
  %add.i9 = or i32 %and.i8, 4
  store i32 %add.i9, ptr %limit.i, align 4
  br label %for.cond.i11

for.cond.i11:                                     ; preds = %if.end.i16, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_2.exit
  %storemerge131 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_2.exit ], [ %inc.i17, %if.end.i16 ]
  store i32 %storemerge131, ptr %i.i7, align 4
  %13 = load i32, ptr %limit.i, align 4
  %cmp.i10 = icmp slt i32 %storemerge131, %13
  br i1 %cmp.i10, label %for.body.i13, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_3.exit

for.body.i13:                                     ; preds = %for.cond.i11
  %14 = load i32, ptr %i.i7, align 4
  %mul.i = mul nsw i32 %14, %14
  %15 = load i32, ptr %s.i, align 4
  %add1.i12 = add nsw i32 %15, %mul.i
  store i32 %add1.i12, ptr %s.i, align 4
  %and2.i = and i32 %add1.i12, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i15, label %if.end.i16

if.then.i15:                                      ; preds = %for.body.i13
  %16 = load i32, ptr %i.i7, align 4
  %17 = load i32, ptr %x.addr.i6, align 4
  %add4.i = add nsw i32 %16, %17
  %18 = load i32, ptr %s.i, align 4
  %xor.i14 = xor i32 %18, %add4.i
  store i32 %xor.i14, ptr %s.i, align 4
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i15, %for.body.i13
  %19 = load i32, ptr %i.i7, align 4
  %inc.i17 = add nsw i32 %19, 1
  br label %for.cond.i11, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_3.exit: ; preds = %for.cond.i11
  %20 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i7)
  %21 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %21, %20
  store i32 %add10, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %22, 3
  %add12 = add nsw i32 %22, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i19)
  store i32 %and11, ptr %mode.addr.i18, align 4
  store i32 %add12, ptr %x.addr.i19, align 4
  %cmp.i20 = icmp eq i32 %and11, 0
  br i1 %cmp.i20, label %if.then.i22, label %if.end.i23

if.then.i22:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_3.exit
  %23 = load i32, ptr %x.addr.i19, align 4
  %add.i21 = add nsw i32 %23, 5
  store i32 %add.i21, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit

if.end.i23:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_3.exit
  %24 = load i32, ptr %mode.addr.i18, align 4
  %cmp1.i = icmp eq i32 %24, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i23
  %25 = load i32, ptr %x.addr.i19, align 4
  %mul.i24 = shl nsw i32 %25, 1
  store i32 %mul.i24, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit

if.end3.i:                                        ; preds = %if.end.i23
  %26 = load i32, ptr %mode.addr.i18, align 4
  %cmp4.i = icmp eq i32 %26, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %27 = load i32, ptr %x.addr.i19, align 4
  %sub.i = add nsw i32 %27, -7
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit

if.end6.i:                                        ; preds = %if.end3.i
  %28 = load i32, ptr %x.addr.i19, align 4
  %29 = load i32, ptr %mode.addr.i18, align 4
  %add7.i = add nsw i32 %28, %29
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit: ; preds = %if.then.i22, %if.then2.i, %if.then5.i, %if.end6.i
  %30 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i19)
  %31 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %31, %30
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18game_004_recursivei(i32 noundef 1)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %add17 = add nsw i32 %32, 6
  %xor.i26 = xor i32 %add17, 11
  %add19 = add nsw i32 %add16, %xor.i26
  store i32 %add19, ptr %total, align 4
  %and20 = and i32 %32, 3
  %add21 = add nsw i32 %32, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i29)
  store i32 %and20, ptr %mode.addr.i28, align 4
  store i32 %add21, ptr %x.addr.i29, align 4
  %cmp.i30 = icmp eq i32 %and20, 0
  br i1 %cmp.i30, label %if.then.i32, label %if.end.i34

if.then.i32:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit
  %33 = load i32, ptr %x.addr.i29, align 4
  %add.i31 = add nsw i32 %33, 3
  store i32 %add.i31, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit

if.end.i34:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_4.exit
  %34 = load i32, ptr %mode.addr.i28, align 4
  %cmp1.i33 = icmp eq i32 %34, 1
  br i1 %cmp1.i33, label %if.then2.i36, label %if.end3.i38

if.then2.i36:                                     ; preds = %if.end.i34
  %35 = load i32, ptr %x.addr.i29, align 4
  %mul.i35 = mul nsw i32 %35, 5
  store i32 %mul.i35, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit

if.end3.i38:                                      ; preds = %if.end.i34
  %36 = load i32, ptr %mode.addr.i28, align 4
  %cmp4.i37 = icmp eq i32 %36, 2
  br i1 %cmp4.i37, label %if.then5.i40, label %if.end6.i42

if.then5.i40:                                     ; preds = %if.end3.i38
  %37 = load i32, ptr %x.addr.i29, align 4
  %sub.i39 = add nsw i32 %37, -4
  store i32 %sub.i39, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit

if.end6.i42:                                      ; preds = %if.end3.i38
  %38 = load i32, ptr %x.addr.i29, align 4
  %39 = load i32, ptr %mode.addr.i28, align 4
  %add7.i41 = add nsw i32 %38, %39
  store i32 %add7.i41, ptr %retval.i27, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit: ; preds = %if.then.i32, %if.then2.i36, %if.then5.i40, %if.end6.i42
  %40 = load i32, ptr %retval.i27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i29)
  %41 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %41, %40
  store i32 %add23, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %add24 = add nsw i32 %42, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i43)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i45)
  store i32 %add24, ptr %x.addr.i43, align 4
  %add.i46 = add nsw i32 %42, 15
  store i32 %add.i46, ptr %y.i44, align 4
  br label %for.cond.i48

for.cond.i48:                                     ; preds = %for.body.i52, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit
  %storemerge132 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_7.exit ], [ %inc.i53, %for.body.i52 ]
  store i32 %storemerge132, ptr %i.i45, align 4
  %cmp.i47 = icmp slt i32 %storemerge132, 3
  br i1 %cmp.i47, label %for.body.i52, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_8.exit

for.body.i52:                                     ; preds = %for.cond.i48
  %43 = load i32, ptr %i.i45, align 4
  %44 = load i32, ptr %x.addr.i43, align 4
  %and.i49 = and i32 %44, 3
  %add1.i50 = add nsw i32 %43, %and.i49
  %45 = load i32, ptr %y.i44, align 4
  %add2.i51 = add nsw i32 %45, %add1.i50
  store i32 %add2.i51, ptr %y.i44, align 4
  %46 = load i32, ptr %i.i45, align 4
  %inc.i53 = add nsw i32 %46, 1
  br label %for.cond.i48, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_8.exit: ; preds = %for.cond.i48
  %47 = load i32, ptr %y.i44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i45)
  %48 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %48, %47
  store i32 %add26, ptr %total, align 4
  %49 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %49, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i57)
  store i32 %add27, ptr %x.addr.i54, align 4
  store i32 %add27, ptr %s.i55, align 4
  %and.i58 = and i32 %add27, 3
  %add.i59 = or i32 %and.i58, 4
  store i32 %add.i59, ptr %limit.i56, align 4
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %if.end.i70, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_8.exit
  %storemerge133 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_8.exit ], [ %inc.i71, %if.end.i70 ]
  store i32 %storemerge133, ptr %i.i57, align 4
  %50 = load i32, ptr %limit.i56, align 4
  %cmp.i60 = icmp slt i32 %storemerge133, %50
  br i1 %cmp.i60, label %for.body.i66, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_9.exit

for.body.i66:                                     ; preds = %for.cond.i61
  %51 = load i32, ptr %i.i57, align 4
  %mul.i62 = mul nsw i32 %51, %51
  %52 = load i32, ptr %s.i55, align 4
  %add1.i63 = add nsw i32 %52, %mul.i62
  store i32 %add1.i63, ptr %s.i55, align 4
  %and2.i64 = and i32 %add1.i63, 1
  %cmp3.i65 = icmp eq i32 %and2.i64, 0
  br i1 %cmp3.i65, label %if.then.i69, label %if.end.i70

if.then.i69:                                      ; preds = %for.body.i66
  %53 = load i32, ptr %i.i57, align 4
  %54 = load i32, ptr %x.addr.i54, align 4
  %add4.i67 = add nsw i32 %53, %54
  %55 = load i32, ptr %s.i55, align 4
  %xor.i68 = xor i32 %55, %add4.i67
  store i32 %xor.i68, ptr %s.i55, align 4
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i69, %for.body.i66
  %56 = load i32, ptr %i.i57, align 4
  %inc.i71 = add nsw i32 %56, 1
  br label %for.cond.i61, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_9.exit: ; preds = %for.cond.i61
  %57 = load i32, ptr %s.i55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i57)
  %58 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %58, %57
  store i32 %add29, ptr %total, align 4
  %59 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %59, 3
  %add31 = add nsw i32 %59, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i73)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i74)
  store i32 %and30, ptr %mode.addr.i73, align 4
  store i32 %add31, ptr %x.addr.i74, align 4
  %cmp.i75 = icmp eq i32 %and30, 0
  br i1 %cmp.i75, label %if.then.i77, label %if.end.i79

if.then.i77:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_9.exit
  %60 = load i32, ptr %x.addr.i74, align 4
  %add.i76 = add nsw i32 %60, 5
  store i32 %add.i76, ptr %retval.i72, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit

if.end.i79:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_9.exit
  %61 = load i32, ptr %mode.addr.i73, align 4
  %cmp1.i78 = icmp eq i32 %61, 1
  br i1 %cmp1.i78, label %if.then2.i81, label %if.end3.i83

if.then2.i81:                                     ; preds = %if.end.i79
  %62 = load i32, ptr %x.addr.i74, align 4
  %mul.i80 = shl nsw i32 %62, 1
  store i32 %mul.i80, ptr %retval.i72, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit

if.end3.i83:                                      ; preds = %if.end.i79
  %63 = load i32, ptr %mode.addr.i73, align 4
  %cmp4.i82 = icmp eq i32 %63, 2
  br i1 %cmp4.i82, label %if.then5.i85, label %if.end6.i87

if.then5.i85:                                     ; preds = %if.end3.i83
  %64 = load i32, ptr %x.addr.i74, align 4
  %sub.i84 = add nsw i32 %64, -7
  store i32 %sub.i84, ptr %retval.i72, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit

if.end6.i87:                                      ; preds = %if.end3.i83
  %65 = load i32, ptr %x.addr.i74, align 4
  %66 = load i32, ptr %mode.addr.i73, align 4
  %add7.i86 = add nsw i32 %65, %66
  store i32 %add7.i86, ptr %retval.i72, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit: ; preds = %if.then.i77, %if.then2.i81, %if.then5.i85, %if.end6.i87
  %67 = load i32, ptr %retval.i72, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i72)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i73)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i74)
  %68 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %68, %67
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL18game_004_recursivei(i32 noundef 3)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %69 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %69, 12
  %xor.i89 = xor i32 %add36, 9
  %add38 = add nsw i32 %add35, %xor.i89
  store i32 %add38, ptr %total, align 4
  %and39 = and i32 %69, 3
  %add40 = add nsw i32 %69, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i90)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i92)
  store i32 %and39, ptr %mode.addr.i90, align 4
  store i32 %add40, ptr %out.i92, align 4
  %and.i93 = and i32 %69, 1
  %tobool.i94.not = icmp eq i32 %and.i93, 0
  br i1 %tobool.i94.not, label %if.end.i99, label %if.then.i96

if.then.i96:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit
  %70 = load i32, ptr %out.i92, align 4
  %add.i95 = add nsw i32 %70, 2
  store i32 %add.i95, ptr %out.i92, align 4
  br label %if.end.i99

if.end.i99:                                       ; preds = %if.then.i96, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_10.exit
  %71 = load i32, ptr %mode.addr.i90, align 4
  %and1.i97 = and i32 %71, 2
  %tobool2.i98.not = icmp eq i32 %and1.i97, 0
  br i1 %tobool2.i98.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_13.exit, label %if.then3.i101

if.then3.i101:                                    ; preds = %if.end.i99
  %72 = load i32, ptr %out.i92, align 4
  %xor.i100 = xor i32 %72, 12
  store i32 %xor.i100, ptr %out.i92, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_13.exit: ; preds = %if.end.i99, %if.then3.i101
  %73 = load i32, ptr %out.i92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i90)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i92)
  %74 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %74, %73
  store i32 %add42, ptr %total, align 4
  %75 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %75, 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i102)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i104)
  store i32 %add43, ptr %x.addr.i102, align 4
  %add.i105 = add nsw i32 %75, 27
  store i32 %add.i105, ptr %y.i103, align 4
  br label %for.cond.i107

for.cond.i107:                                    ; preds = %for.body.i111, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_13.exit
  %storemerge134 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_13.exit ], [ %inc.i112, %for.body.i111 ]
  store i32 %storemerge134, ptr %i.i104, align 4
  %cmp.i106 = icmp slt i32 %storemerge134, 3
  br i1 %cmp.i106, label %for.body.i111, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_14.exit

for.body.i111:                                    ; preds = %for.cond.i107
  %76 = load i32, ptr %i.i104, align 4
  %77 = load i32, ptr %x.addr.i102, align 4
  %and.i108 = and i32 %77, 3
  %add1.i109 = add nsw i32 %76, %and.i108
  %78 = load i32, ptr %y.i103, align 4
  %add2.i110 = add nsw i32 %78, %add1.i109
  store i32 %add2.i110, ptr %y.i103, align 4
  %79 = load i32, ptr %i.i104, align 4
  %inc.i112 = add nsw i32 %79, 1
  br label %for.cond.i107, !llvm.loop !10

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_14.exit: ; preds = %for.cond.i107
  %80 = load i32, ptr %y.i103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i104)
  %81 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %81, %80
  store i32 %add45, ptr %total, align 4
  %82 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %82, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i116)
  store i32 %add46, ptr %x.addr.i113, align 4
  store i32 %add46, ptr %s.i114, align 4
  %and.i117 = and i32 %add46, 3
  %add.i118 = or i32 %and.i117, 4
  store i32 %add.i118, ptr %limit.i115, align 4
  br label %for.cond.i120

for.cond.i120:                                    ; preds = %if.end.i129, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_14.exit
  %storemerge135 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_14.exit ], [ %inc.i130, %if.end.i129 ]
  store i32 %storemerge135, ptr %i.i116, align 4
  %83 = load i32, ptr %limit.i115, align 4
  %cmp.i119 = icmp slt i32 %storemerge135, %83
  br i1 %cmp.i119, label %for.body.i125, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_15.exit

for.body.i125:                                    ; preds = %for.cond.i120
  %84 = load i32, ptr %i.i116, align 4
  %mul.i121 = mul nsw i32 %84, %84
  %85 = load i32, ptr %s.i114, align 4
  %add1.i122 = add nsw i32 %85, %mul.i121
  store i32 %add1.i122, ptr %s.i114, align 4
  %and2.i123 = and i32 %add1.i122, 1
  %cmp3.i124 = icmp eq i32 %and2.i123, 0
  br i1 %cmp3.i124, label %if.then.i128, label %if.end.i129

if.then.i128:                                     ; preds = %for.body.i125
  %86 = load i32, ptr %i.i116, align 4
  %87 = load i32, ptr %x.addr.i113, align 4
  %add4.i126 = add nsw i32 %86, %87
  %88 = load i32, ptr %s.i114, align 4
  %xor.i127 = xor i32 %88, %add4.i126
  store i32 %xor.i127, ptr %s.i114, align 4
  br label %if.end.i129

if.end.i129:                                      ; preds = %if.then.i128, %for.body.i125
  %89 = load i32, ptr %i.i116, align 4
  %inc.i130 = add nsw i32 %89, 1
  br label %for.cond.i120, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_004_15.exit: ; preds = %for.cond.i120
  %90 = load i32, ptr %s.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i116)
  %91 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %91, %90
  store i32 %add48, ptr %total, align 4
  ret i32 %add48
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_004_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_004_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_004_recursivei(i32 noundef %sub1)
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
