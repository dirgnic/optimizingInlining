; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_061.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_061.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_061_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i119 = alloca i32, align 4
  %t.i121 = alloca i32, align 4
  %x.addr.i113 = alloca i32, align 4
  %s.i114 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i98 = alloca i32, align 4
  %t.i100 = alloca i32, align 4
  %mode.addr.i87 = alloca i32, align 4
  %t.i89 = alloca i32, align 4
  %mode.addr.i76 = alloca i32, align 4
  %t.i78 = alloca i32, align 4
  %mode.addr.i65 = alloca i32, align 4
  %t.i67 = alloca i32, align 4
  %mode.addr.i54 = alloca i32, align 4
  %t.i56 = alloca i32, align 4
  %mode.addr.i42 = alloca i32, align 4
  %out.i44 = alloca i32, align 4
  %mode.addr.i31 = alloca i32, align 4
  %t.i33 = alloca i32, align 4
  %retval.i22 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %x.addr.i24 = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i24)
  store i32 %and14, ptr %mode.addr.i23, align 4
  store i32 %add15, ptr %x.addr.i24, align 4
  %cmp.i25 = icmp eq i32 %and14, 0
  br i1 %cmp.i25, label %if.then.i27, label %if.end.i28

if.then.i27:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit
  %25 = load i32, ptr %x.addr.i24, align 4
  %add.i26 = add nsw i32 %25, 3
  store i32 %add.i26, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit

if.end.i28:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_3.exit
  %26 = load i32, ptr %mode.addr.i23, align 4
  %cmp1.i = icmp eq i32 %26, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i28
  %27 = load i32, ptr %x.addr.i24, align 4
  %mul.i29 = mul nsw i32 %27, 3
  store i32 %mul.i29, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit

if.end3.i:                                        ; preds = %if.end.i28
  %28 = load i32, ptr %mode.addr.i23, align 4
  %cmp4.i = icmp eq i32 %28, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %29 = load i32, ptr %x.addr.i24, align 4
  %sub.i30 = add nsw i32 %29, -3
  store i32 %sub.i30, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit

if.end6.i:                                        ; preds = %if.end3.i
  %30 = load i32, ptr %x.addr.i24, align 4
  %31 = load i32, ptr %mode.addr.i23, align 4
  %add7.i = add nsw i32 %30, %31
  store i32 %add7.i, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit: ; preds = %if.then.i27, %if.then2.i, %if.then5.i, %if.end6.i
  %32 = load i32, ptr %retval.i22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i24)
  %33 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %33, %32
  store i32 %add17, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %34, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i33)
  store i32 %and18, ptr %mode.addr.i31, align 4
  %add.i34 = add nsw i32 %34, 6
  store i32 %add.i34, ptr %t.i33, align 4
  %cmp.i35 = icmp ult i32 %and18, 2
  br i1 %cmp.i35, label %cond.true.i38, label %cond.false.i40

cond.true.i38:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit
  %35 = load i32, ptr %t.i33, align 4
  %36 = load i32, ptr %mode.addr.i31, align 4
  %add1.i36 = add nsw i32 %36, 1
  %mul.i37 = mul nsw i32 %35, %add1.i36
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit

cond.false.i40:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_4.exit
  %37 = load i32, ptr %t.i33, align 4
  %38 = load i32, ptr %mode.addr.i31, align 4
  %sub.i39 = sub nsw i32 %37, %38
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit: ; preds = %cond.true.i38, %cond.false.i40
  %cond.i41 = phi i32 [ %mul.i37, %cond.true.i38 ], [ %sub.i39, %cond.false.i40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i33)
  %39 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %39, %cond.i41
  store i32 %add21, ptr %total, align 4
  %40 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %40, 3
  %add23 = add nsw i32 %40, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i44)
  store i32 %and22, ptr %mode.addr.i42, align 4
  store i32 %add23, ptr %out.i44, align 4
  %and.i45 = and i32 %40, 1
  %tobool.i46.not = icmp eq i32 %and.i45, 0
  br i1 %tobool.i46.not, label %if.end.i51, label %if.then.i48

if.then.i48:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit
  %41 = load i32, ptr %out.i44, align 4
  %add.i47 = add nsw i32 %41, 4
  store i32 %add.i47, ptr %out.i44, align 4
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.then.i48, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_5.exit
  %42 = load i32, ptr %mode.addr.i42, align 4
  %and1.i49 = and i32 %42, 2
  %tobool2.i50.not = icmp eq i32 %and1.i49, 0
  br i1 %tobool2.i50.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit, label %if.then3.i53

if.then3.i53:                                     ; preds = %if.end.i51
  %43 = load i32, ptr %out.i44, align 4
  %xor.i52 = xor i32 %43, 13
  store i32 %xor.i52, ptr %out.i44, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit: ; preds = %if.end.i51, %if.then3.i53
  %44 = load i32, ptr %out.i44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i44)
  %45 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %45, %44
  store i32 %add25, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %46, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i56)
  store i32 %and26, ptr %mode.addr.i54, align 4
  %add.i57 = add nsw i32 %46, 10
  store i32 %add.i57, ptr %t.i56, align 4
  %cmp.i58 = icmp ult i32 %and26, 2
  br i1 %cmp.i58, label %cond.true.i61, label %cond.false.i63

cond.true.i61:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit
  %47 = load i32, ptr %t.i56, align 4
  %48 = load i32, ptr %mode.addr.i54, align 4
  %add1.i59 = add nsw i32 %48, 1
  %mul.i60 = mul nsw i32 %47, %add1.i59
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit

cond.false.i63:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_6.exit
  %49 = load i32, ptr %t.i56, align 4
  %50 = load i32, ptr %mode.addr.i54, align 4
  %sub.i62 = sub nsw i32 %49, %50
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit: ; preds = %cond.true.i61, %cond.false.i63
  %cond.i64 = phi i32 [ %mul.i60, %cond.true.i61 ], [ %sub.i62, %cond.false.i63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i56)
  %51 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %51, %cond.i64
  store i32 %add29, ptr %total, align 4
  %52 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %52, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i65)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i67)
  store i32 %and30, ptr %mode.addr.i65, align 4
  %add.i68 = add nsw i32 %52, 9
  store i32 %add.i68, ptr %t.i67, align 4
  %cmp.i69 = icmp ult i32 %and30, 2
  br i1 %cmp.i69, label %cond.true.i72, label %cond.false.i74

cond.true.i72:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit
  %53 = load i32, ptr %t.i67, align 4
  %54 = load i32, ptr %mode.addr.i65, align 4
  %add1.i70 = add nsw i32 %54, 1
  %mul.i71 = mul nsw i32 %53, %add1.i70
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit

cond.false.i74:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_7.exit
  %55 = load i32, ptr %t.i67, align 4
  %56 = load i32, ptr %mode.addr.i65, align 4
  %sub.i73 = sub nsw i32 %55, %56
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit: ; preds = %cond.true.i72, %cond.false.i74
  %cond.i75 = phi i32 [ %mul.i71, %cond.true.i72 ], [ %sub.i73, %cond.false.i74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i65)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i67)
  %57 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %57, %cond.i75
  store i32 %add33, ptr %total, align 4
  %58 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %58, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i78)
  store i32 %and34, ptr %mode.addr.i76, align 4
  %add.i79 = add nsw i32 %58, 10
  store i32 %add.i79, ptr %t.i78, align 4
  %cmp.i80 = icmp ult i32 %and34, 2
  br i1 %cmp.i80, label %cond.true.i83, label %cond.false.i85

cond.true.i83:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit
  %59 = load i32, ptr %t.i78, align 4
  %60 = load i32, ptr %mode.addr.i76, align 4
  %add1.i81 = add nsw i32 %60, 1
  %mul.i82 = mul nsw i32 %59, %add1.i81
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit

cond.false.i85:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_8.exit
  %61 = load i32, ptr %t.i78, align 4
  %62 = load i32, ptr %mode.addr.i76, align 4
  %sub.i84 = sub nsw i32 %61, %62
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit: ; preds = %cond.true.i83, %cond.false.i85
  %cond.i86 = phi i32 [ %mul.i82, %cond.true.i83 ], [ %sub.i84, %cond.false.i85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i76)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i78)
  %63 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %63, %cond.i86
  store i32 %add37, ptr %total, align 4
  %64 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %64, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i87)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i89)
  store i32 %and38, ptr %mode.addr.i87, align 4
  %add.i90 = add nsw i32 %64, 11
  store i32 %add.i90, ptr %t.i89, align 4
  %cmp.i91 = icmp ult i32 %and38, 2
  br i1 %cmp.i91, label %cond.true.i94, label %cond.false.i96

cond.true.i94:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit
  %65 = load i32, ptr %t.i89, align 4
  %66 = load i32, ptr %mode.addr.i87, align 4
  %add1.i92 = add nsw i32 %66, 1
  %mul.i93 = mul nsw i32 %65, %add1.i92
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit

cond.false.i96:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_9.exit
  %67 = load i32, ptr %t.i89, align 4
  %68 = load i32, ptr %mode.addr.i87, align 4
  %sub.i95 = sub nsw i32 %67, %68
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit: ; preds = %cond.true.i94, %cond.false.i96
  %cond.i97 = phi i32 [ %mul.i93, %cond.true.i94 ], [ %sub.i95, %cond.false.i96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i87)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i89)
  %69 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %69, %cond.i97
  store i32 %add41, ptr %total, align 4
  %70 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %70, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i100)
  store i32 %and42, ptr %mode.addr.i98, align 4
  %add.i101 = add nsw i32 %70, 12
  store i32 %add.i101, ptr %t.i100, align 4
  %cmp.i102 = icmp ult i32 %and42, 2
  br i1 %cmp.i102, label %cond.true.i105, label %cond.false.i107

cond.true.i105:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit
  %71 = load i32, ptr %t.i100, align 4
  %72 = load i32, ptr %mode.addr.i98, align 4
  %add1.i103 = add nsw i32 %72, 1
  %mul.i104 = mul nsw i32 %71, %add1.i103
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_11.exit

cond.false.i107:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_10.exit
  %73 = load i32, ptr %t.i100, align 4
  %74 = load i32, ptr %mode.addr.i98, align 4
  %sub.i106 = sub nsw i32 %73, %74
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_11.exit: ; preds = %cond.true.i105, %cond.false.i107
  %cond.i108 = phi i32 [ %mul.i104, %cond.true.i105 ], [ %sub.i106, %cond.false.i107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i100)
  %75 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %75, %cond.i108
  store i32 %add45, ptr %total, align 4
  %76 = load i32, ptr %x.addr, align 4
  %77 = mul i32 %76, 3
  %add.i111 = add i32 %77, 97
  %shr.i = ashr i32 %add.i111, 1
  %xor.i112 = xor i32 %add.i111, %shr.i
  %mul1.i = shl nsw i32 %xor.i112, 2
  %add2.i = add nsw i32 %mul1.i, 62
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 63
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 64
  %shr11.i = ashr exact i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 65
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 66
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 67
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 68
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %mul29.i = mul nsw i32 %xor28.i, 11
  %add30.i = add nsw i32 %mul29.i, 69
  %shr31.i = ashr i32 %add30.i, 3
  %xor32.i = xor i32 %add30.i, %shr31.i
  %mul33.i = mul nsw i32 %xor32.i, 12
  %add34.i = add nsw i32 %mul33.i, 70
  %shr35.i = ashr exact i32 %add34.i, 1
  %xor36.i = xor i32 %add34.i, %shr35.i
  %mul37.i = mul nsw i32 %xor36.i, 13
  %add38.i = add nsw i32 %mul37.i, 71
  %shr39.i = ashr i32 %add38.i, 2
  %xor40.i = xor i32 %add38.i, %shr39.i
  %mul41.i = mul nsw i32 %xor40.i, 14
  %add42.i = add nsw i32 %mul41.i, 72
  %shr43.i = ashr i32 %add42.i, 3
  %xor44.i = xor i32 %add42.i, %shr43.i
  %mul45.i = mul nsw i32 %xor44.i, 15
  %add46.i = add nsw i32 %mul45.i, 73
  %shr47.i = ashr i32 %add46.i, 1
  %xor48.i = xor i32 %add46.i, %shr47.i
  %78 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %78, %xor48.i
  store i32 %add48, ptr %total, align 4
  %79 = load i32, ptr %x.addr, align 4
  %add49 = add nsw i32 %79, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add49, ptr %x.addr.i113, align 4
  store i32 %add49, ptr %s.i114, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_11.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_11.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i115 = icmp slt i32 %storemerge, 9
  br i1 %cmp.i115, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_13.exit

for.body.i:                                       ; preds = %for.cond.i
  %80 = load i32, ptr %x.addr.i113, align 4
  %81 = load i32, ptr %i.i, align 4
  %xor.i116 = xor i32 %80, %81
  %82 = load i32, ptr %s.i114, align 4
  %add1.i117 = add nsw i32 %82, %xor.i116
  %shl.i = shl i32 %add1.i117, 1
  %shr.i118 = ashr i32 %add1.i117, 3
  %xor2.i = xor i32 %shl.i, %shr.i118
  store i32 %xor2.i, ptr %s.i114, align 4
  %83 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %83, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_13.exit: ; preds = %for.cond.i
  %84 = load i32, ptr %s.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %85 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %85, %84
  store i32 %add51, ptr %total, align 4
  %call52 = call noundef i32 @_ZL19image_061_recursivei(i32 noundef 2)
  %add53 = add nsw i32 %add51, %call52
  store i32 %add53, ptr %total, align 4
  %86 = load i32, ptr %x.addr, align 4
  %and54 = and i32 %86, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i119)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i121)
  store i32 %and54, ptr %mode.addr.i119, align 4
  %add.i122 = add nsw i32 %86, 16
  store i32 %add.i122, ptr %t.i121, align 4
  %cmp.i123 = icmp ult i32 %and54, 2
  br i1 %cmp.i123, label %cond.true.i126, label %cond.false.i128

cond.true.i126:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_13.exit
  %87 = load i32, ptr %t.i121, align 4
  %88 = load i32, ptr %mode.addr.i119, align 4
  %add1.i124 = add nsw i32 %88, 1
  %mul.i125 = mul nsw i32 %87, %add1.i124
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_15.exit

cond.false.i128:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_13.exit
  %89 = load i32, ptr %t.i121, align 4
  %90 = load i32, ptr %mode.addr.i119, align 4
  %sub.i127 = sub nsw i32 %89, %90
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_061_15.exit: ; preds = %cond.true.i126, %cond.false.i128
  %cond.i129 = phi i32 [ %mul.i125, %cond.true.i126 ], [ %sub.i127, %cond.false.i128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i119)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i121)
  %91 = load i32, ptr %total, align 4
  %add57 = add nsw i32 %91, %cond.i129
  store i32 %add57, ptr %total, align 4
  ret i32 %add57
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
