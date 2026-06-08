; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_061.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_061.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_061_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i100 = alloca i32, align 4
  %t.i102 = alloca i32, align 4
  %mode.addr.i89 = alloca i32, align 4
  %t.i91 = alloca i32, align 4
  %mode.addr.i78 = alloca i32, align 4
  %t.i80 = alloca i32, align 4
  %mode.addr.i67 = alloca i32, align 4
  %t.i69 = alloca i32, align 4
  %mode.addr.i56 = alloca i32, align 4
  %t.i58 = alloca i32, align 4
  %mode.addr.i45 = alloca i32, align 4
  %t.i47 = alloca i32, align 4
  %mode.addr.i33 = alloca i32, align 4
  %out.i35 = alloca i32, align 4
  %mode.addr.i22 = alloca i32, align 4
  %t.i24 = alloca i32, align 4
  %mode.addr.i11 = alloca i32, align 4
  %t.i13 = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i2 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  %add.i = add nsw i32 %x, 1
  store i32 %add.i, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %4, %cond.i
  store i32 %add1, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %add3 = add nsw i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 %add3, ptr %x.addr.i2, align 4
  switch i32 %and2, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit
  %6 = load i32, ptr %x.addr.i2, align 4
  %add.i3 = add nsw i32 %6, 9
  store i32 %add.i3, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit
  %7 = load i32, ptr %x.addr.i2, align 4
  %xor.i = xor i32 %7, 16
  store i32 %xor.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit
  %8 = load i32, ptr %x.addr.i2, align 4
  %mul.i4 = mul nsw i32 %8, 5
  store i32 %mul.i4, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_0.exit
  %9 = load i32, ptr %x.addr.i2, align 4
  %sub.i5 = add nsw i32 %9, -7
  store i32 %sub.i5, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %10 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %11 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %11, %10
  store i32 %add5, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %12, 3
  %add7 = add nsw i32 %12, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and6, ptr %mode.addr.i6, align 4
  store i32 %add7, ptr %out.i, align 4
  %and.i8 = and i32 %12, 1
  %tobool.i.not = icmp eq i32 %and.i8, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit
  %13 = load i32, ptr %out.i, align 4
  %add.i9 = add nsw i32 %13, 8
  store i32 %add.i9, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_1.exit
  %14 = load i32, ptr %mode.addr.i6, align 4
  %and1.i = and i32 %14, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %15 = load i32, ptr %out.i, align 4
  %xor.i10 = xor i32 %15, 9
  store i32 %xor.i10, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_2.exit: ; preds = %if.end.i, %if.then3.i
  %16 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %17 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %17, %16
  store i32 %add9, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %18, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i13)
  store i32 %and10, ptr %mode.addr.i11, align 4
  %add.i14 = add nsw i32 %18, 7
  store i32 %add.i14, ptr %t.i13, align 4
  %cmp.i15 = icmp ult i32 %and10, 2
  br i1 %cmp.i15, label %cond.true.i18, label %cond.false.i20

cond.true.i18:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_2.exit
  %19 = load i32, ptr %t.i13, align 4
  %20 = load i32, ptr %mode.addr.i11, align 4
  %add1.i16 = add nsw i32 %20, 1
  %mul.i17 = mul nsw i32 %19, %add1.i16
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit

cond.false.i20:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_2.exit
  %21 = load i32, ptr %t.i13, align 4
  %22 = load i32, ptr %mode.addr.i11, align 4
  %sub.i19 = sub nsw i32 %21, %22
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit: ; preds = %cond.true.i18, %cond.false.i20
  %cond.i21 = phi i32 [ %mul.i17, %cond.true.i18 ], [ %sub.i19, %cond.false.i20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i13)
  %23 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %23, %cond.i21
  store i32 %add13, ptr %total, align 4
  %24 = load i32, ptr %x.addr, align 4
  %and14 = and i32 %24, 3
  %add15 = add nsw i32 %24, 4
  %call16 = call noundef i32 @_ZL18image_061_branch_4ii(i32 noundef %and14, i32 noundef %add15)
  %add17 = add nsw i32 %add13, %call16
  store i32 %add17, ptr %total, align 4
  %and18 = and i32 %24, 3
  %25 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i24)
  store i32 %and18, ptr %mode.addr.i22, align 4
  %add.i25 = add nsw i32 %25, 6
  store i32 %add.i25, ptr %t.i24, align 4
  %cmp.i26 = icmp ult i32 %and18, 2
  br i1 %cmp.i26, label %cond.true.i29, label %cond.false.i31

cond.true.i29:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit
  %26 = load i32, ptr %t.i24, align 4
  %27 = load i32, ptr %mode.addr.i22, align 4
  %add1.i27 = add nsw i32 %27, 1
  %mul.i28 = mul nsw i32 %26, %add1.i27
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit

cond.false.i31:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit
  %28 = load i32, ptr %t.i24, align 4
  %29 = load i32, ptr %mode.addr.i22, align 4
  %sub.i30 = sub nsw i32 %28, %29
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit: ; preds = %cond.true.i29, %cond.false.i31
  %cond.i32 = phi i32 [ %mul.i28, %cond.true.i29 ], [ %sub.i30, %cond.false.i31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i24)
  %30 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %30, %cond.i32
  store i32 %add21, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %31, 3
  %add23 = add nsw i32 %31, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i35)
  store i32 %and22, ptr %mode.addr.i33, align 4
  store i32 %add23, ptr %out.i35, align 4
  %and.i36 = and i32 %31, 1
  %tobool.i37.not = icmp eq i32 %and.i36, 0
  br i1 %tobool.i37.not, label %if.end.i42, label %if.then.i39

if.then.i39:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit
  %32 = load i32, ptr %out.i35, align 4
  %add.i38 = add nsw i32 %32, 4
  store i32 %add.i38, ptr %out.i35, align 4
  br label %if.end.i42

if.end.i42:                                       ; preds = %if.then.i39, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit
  %33 = load i32, ptr %mode.addr.i33, align 4
  %and1.i40 = and i32 %33, 2
  %tobool2.i41.not = icmp eq i32 %and1.i40, 0
  br i1 %tobool2.i41.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit, label %if.then3.i44

if.then3.i44:                                     ; preds = %if.end.i42
  %34 = load i32, ptr %out.i35, align 4
  %xor.i43 = xor i32 %34, 13
  store i32 %xor.i43, ptr %out.i35, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit: ; preds = %if.end.i42, %if.then3.i44
  %35 = load i32, ptr %out.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i35)
  %36 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %36, %35
  store i32 %add25, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %37, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i47)
  store i32 %and26, ptr %mode.addr.i45, align 4
  %add.i48 = add nsw i32 %37, 10
  store i32 %add.i48, ptr %t.i47, align 4
  %cmp.i49 = icmp ult i32 %and26, 2
  br i1 %cmp.i49, label %cond.true.i52, label %cond.false.i54

cond.true.i52:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit
  %38 = load i32, ptr %t.i47, align 4
  %39 = load i32, ptr %mode.addr.i45, align 4
  %add1.i50 = add nsw i32 %39, 1
  %mul.i51 = mul nsw i32 %38, %add1.i50
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit

cond.false.i54:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit
  %40 = load i32, ptr %t.i47, align 4
  %41 = load i32, ptr %mode.addr.i45, align 4
  %sub.i53 = sub nsw i32 %40, %41
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit: ; preds = %cond.true.i52, %cond.false.i54
  %cond.i55 = phi i32 [ %mul.i51, %cond.true.i52 ], [ %sub.i53, %cond.false.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i47)
  %42 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %42, %cond.i55
  store i32 %add29, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %43, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i58)
  store i32 %and30, ptr %mode.addr.i56, align 4
  %add.i59 = add nsw i32 %43, 9
  store i32 %add.i59, ptr %t.i58, align 4
  %cmp.i60 = icmp ult i32 %and30, 2
  br i1 %cmp.i60, label %cond.true.i63, label %cond.false.i65

cond.true.i63:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit
  %44 = load i32, ptr %t.i58, align 4
  %45 = load i32, ptr %mode.addr.i56, align 4
  %add1.i61 = add nsw i32 %45, 1
  %mul.i62 = mul nsw i32 %44, %add1.i61
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit

cond.false.i65:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit
  %46 = load i32, ptr %t.i58, align 4
  %47 = load i32, ptr %mode.addr.i56, align 4
  %sub.i64 = sub nsw i32 %46, %47
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit: ; preds = %cond.true.i63, %cond.false.i65
  %cond.i66 = phi i32 [ %mul.i62, %cond.true.i63 ], [ %sub.i64, %cond.false.i65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i58)
  %48 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %48, %cond.i66
  store i32 %add33, ptr %total, align 4
  %49 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %49, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i69)
  store i32 %and34, ptr %mode.addr.i67, align 4
  %add.i70 = add nsw i32 %49, 10
  store i32 %add.i70, ptr %t.i69, align 4
  %cmp.i71 = icmp ult i32 %and34, 2
  br i1 %cmp.i71, label %cond.true.i74, label %cond.false.i76

cond.true.i74:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit
  %50 = load i32, ptr %t.i69, align 4
  %51 = load i32, ptr %mode.addr.i67, align 4
  %add1.i72 = add nsw i32 %51, 1
  %mul.i73 = mul nsw i32 %50, %add1.i72
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit

cond.false.i76:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit
  %52 = load i32, ptr %t.i69, align 4
  %53 = load i32, ptr %mode.addr.i67, align 4
  %sub.i75 = sub nsw i32 %52, %53
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit: ; preds = %cond.true.i74, %cond.false.i76
  %cond.i77 = phi i32 [ %mul.i73, %cond.true.i74 ], [ %sub.i75, %cond.false.i76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i69)
  %54 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %54, %cond.i77
  store i32 %add37, ptr %total, align 4
  %55 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %55, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i80)
  store i32 %and38, ptr %mode.addr.i78, align 4
  %add.i81 = add nsw i32 %55, 11
  store i32 %add.i81, ptr %t.i80, align 4
  %cmp.i82 = icmp ult i32 %and38, 2
  br i1 %cmp.i82, label %cond.true.i85, label %cond.false.i87

cond.true.i85:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit
  %56 = load i32, ptr %t.i80, align 4
  %57 = load i32, ptr %mode.addr.i78, align 4
  %add1.i83 = add nsw i32 %57, 1
  %mul.i84 = mul nsw i32 %56, %add1.i83
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit

cond.false.i87:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit
  %58 = load i32, ptr %t.i80, align 4
  %59 = load i32, ptr %mode.addr.i78, align 4
  %sub.i86 = sub nsw i32 %58, %59
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit: ; preds = %cond.true.i85, %cond.false.i87
  %cond.i88 = phi i32 [ %mul.i84, %cond.true.i85 ], [ %sub.i86, %cond.false.i87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i80)
  %60 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %60, %cond.i88
  store i32 %add41, ptr %total, align 4
  %61 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %61, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i91)
  store i32 %and42, ptr %mode.addr.i89, align 4
  %add.i92 = add nsw i32 %61, 12
  store i32 %add.i92, ptr %t.i91, align 4
  %cmp.i93 = icmp ult i32 %and42, 2
  br i1 %cmp.i93, label %cond.true.i96, label %cond.false.i98

cond.true.i96:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit
  %62 = load i32, ptr %t.i91, align 4
  %63 = load i32, ptr %mode.addr.i89, align 4
  %add1.i94 = add nsw i32 %63, 1
  %mul.i95 = mul nsw i32 %62, %add1.i94
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit

cond.false.i98:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit
  %64 = load i32, ptr %t.i91, align 4
  %65 = load i32, ptr %mode.addr.i89, align 4
  %sub.i97 = sub nsw i32 %64, %65
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit: ; preds = %cond.true.i96, %cond.false.i98
  %cond.i99 = phi i32 [ %mul.i95, %cond.true.i96 ], [ %sub.i97, %cond.false.i98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i91)
  %66 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %66, %cond.i99
  store i32 %add45, ptr %total, align 4
  %67 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %67, 12
  %call47 = call noundef i32 @_ZL17image_061_large_ai(i32 noundef %add46)
  %add48 = add nsw i32 %add45, %call47
  store i32 %add48, ptr %total, align 4
  %add49 = add nsw i32 %67, 13
  %call50 = call noundef i32 @_ZL17image_061_large_bi(i32 noundef %add49)
  %add51 = add nsw i32 %add48, %call50
  store i32 %add51, ptr %total, align 4
  %call52 = call noundef i32 @_ZL19image_061_recursivei(i32 noundef 2)
  %add53 = add nsw i32 %add51, %call52
  store i32 %add53, ptr %total, align 4
  %68 = load i32, ptr %x.addr, align 4
  %and54 = and i32 %68, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i102)
  store i32 %and54, ptr %mode.addr.i100, align 4
  %add.i103 = add nsw i32 %68, 16
  store i32 %add.i103, ptr %t.i102, align 4
  %cmp.i104 = icmp ult i32 %and54, 2
  br i1 %cmp.i104, label %cond.true.i107, label %cond.false.i109

cond.true.i107:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit
  %69 = load i32, ptr %t.i102, align 4
  %70 = load i32, ptr %mode.addr.i100, align 4
  %add1.i105 = add nsw i32 %70, 1
  %mul.i106 = mul nsw i32 %69, %add1.i105
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_12.exit

cond.false.i109:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit
  %71 = load i32, ptr %t.i102, align 4
  %72 = load i32, ptr %mode.addr.i100, align 4
  %sub.i108 = sub nsw i32 %71, %72
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_12.exit: ; preds = %cond.true.i107, %cond.false.i109
  %cond.i110 = phi i32 [ %mul.i106, %cond.true.i107 ], [ %sub.i108, %cond.false.i109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i100)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i102)
  %73 = load i32, ptr %total, align 4
  %add57 = add nsw i32 %73, %cond.i110
  store i32 %add57, ptr %total, align 4
  ret i32 %add57
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_061_branch_4ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -3
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %5, %6
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_061_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 61
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 62
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 63
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 64
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 65
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 66
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 67
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 68
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  %mul29 = mul nsw i32 %xor28, 11
  %add30 = add nsw i32 %mul29, 69
  %shr31 = ashr i32 %add30, 3
  %xor32 = xor i32 %add30, %shr31
  %mul33 = mul nsw i32 %xor32, 12
  %add34 = add nsw i32 %mul33, 70
  %shr35 = ashr exact i32 %add34, 1
  %xor36 = xor i32 %add34, %shr35
  %mul37 = mul nsw i32 %xor36, 13
  %add38 = add nsw i32 %mul37, 71
  %shr39 = ashr i32 %add38, 2
  %xor40 = xor i32 %add38, %shr39
  %mul41 = mul nsw i32 %xor40, 14
  %add42 = add nsw i32 %mul41, 72
  %shr43 = ashr i32 %add42, 3
  %xor44 = xor i32 %add42, %shr43
  %mul45 = mul nsw i32 %xor44, 15
  %add46 = add nsw i32 %mul45, 73
  %shr47 = ashr i32 %add46, 1
  %xor48 = xor i32 %add46, %shr47
  ret i32 %xor48
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_061_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 9
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_061_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_061_recursivei(i32 noundef %sub)
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
