; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_049.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_049.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_049_kernel(i32 noundef %x) #0 {
entry:
  %x.addr.i139 = alloca i32, align 4
  %s.i140 = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i141 = alloca i32, align 4
  %x.addr.i134 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %retval.i118 = alloca i32, align 4
  %mode.addr.i119 = alloca i32, align 4
  %x.addr.i120 = alloca i32, align 4
  %retval.i102 = alloca i32, align 4
  %mode.addr.i103 = alloca i32, align 4
  %x.addr.i104 = alloca i32, align 4
  %retval.i86 = alloca i32, align 4
  %mode.addr.i87 = alloca i32, align 4
  %x.addr.i88 = alloca i32, align 4
  %retval.i70 = alloca i32, align 4
  %mode.addr.i71 = alloca i32, align 4
  %x.addr.i72 = alloca i32, align 4
  %retval.i54 = alloca i32, align 4
  %mode.addr.i55 = alloca i32, align 4
  %x.addr.i56 = alloca i32, align 4
  %mode.addr.i44 = alloca i32, align 4
  %t.i46 = alloca i32, align 4
  %mode.addr.i32 = alloca i32, align 4
  %out.i34 = alloca i32, align 4
  %retval.i20 = alloca i32, align 4
  %x.addr.i22 = alloca i32, align 4
  %retval.i11 = alloca i32, align 4
  %mode.addr.i12 = alloca i32, align 4
  %x.addr.i13 = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 %x, ptr %x.addr.i, align 4
  switch i32 %and, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 7
  store i32 %add.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

sw.bb1.i:                                         ; preds = %entry
  %1 = load i32, ptr %x.addr.i, align 4
  %xor.i = xor i32 %1, 20
  store i32 %xor.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

sw.bb2.i:                                         ; preds = %entry
  %2 = load i32, ptr %x.addr.i, align 4
  %mul.i = shl nsw i32 %2, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

sw.default.i:                                     ; preds = %entry
  %3 = load i32, ptr %x.addr.i, align 4
  %sub.i = add nsw i32 %3, -1
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %4 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %5 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %6, 3
  %add3 = add nsw i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and2, ptr %mode.addr.i1, align 4
  store i32 %add3, ptr %out.i, align 4
  %and.i3 = and i32 %6, 1
  %tobool.i.not = icmp eq i32 %and.i3, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit
  %7 = load i32, ptr %out.i, align 4
  %add.i4 = add nsw i32 %7, 3
  store i32 %add.i4, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit
  %8 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %8, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %9 = load i32, ptr %out.i, align 4
  %xor.i5 = xor i32 %9, 15
  store i32 %xor.i5, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit: ; preds = %if.end.i, %if.then3.i
  %10 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %11 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %11, %10
  store i32 %add5, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and6, ptr %mode.addr.i6, align 4
  %add.i8 = add nsw i32 %12, 3
  store i32 %add.i8, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and6, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit
  %13 = load i32, ptr %t.i, align 4
  %14 = load i32, ptr %mode.addr.i6, align 4
  %add1.i = add nsw i32 %14, 1
  %mul.i9 = mul nsw i32 %13, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit

cond.false.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit
  %15 = load i32, ptr %t.i, align 4
  %16 = load i32, ptr %mode.addr.i6, align 4
  %sub.i10 = sub nsw i32 %15, %16
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i9, %cond.true.i ], [ %sub.i10, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %17 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %17, %cond.i
  store i32 %add9, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %18, 3
  %add11 = add nsw i32 %18, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 %and10, ptr %mode.addr.i12, align 4
  store i32 %add11, ptr %x.addr.i13, align 4
  %cmp.i14 = icmp eq i32 %and10, 0
  br i1 %cmp.i14, label %if.then.i16, label %if.end.i17

if.then.i16:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit
  %19 = load i32, ptr %x.addr.i13, align 4
  %add.i15 = add nsw i32 %19, 8
  store i32 %add.i15, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

if.end.i17:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit
  %20 = load i32, ptr %mode.addr.i12, align 4
  %cmp1.i = icmp eq i32 %20, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i17
  %21 = load i32, ptr %x.addr.i13, align 4
  %mul.i18 = shl nsw i32 %21, 1
  store i32 %mul.i18, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

if.end3.i:                                        ; preds = %if.end.i17
  %22 = load i32, ptr %mode.addr.i12, align 4
  %cmp4.i = icmp eq i32 %22, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %23 = load i32, ptr %x.addr.i13, align 4
  %sub.i19 = add nsw i32 %23, -5
  store i32 %sub.i19, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

if.end6.i:                                        ; preds = %if.end3.i
  %24 = load i32, ptr %x.addr.i13, align 4
  %25 = load i32, ptr %mode.addr.i12, align 4
  %add7.i = add nsw i32 %24, %25
  store i32 %add7.i, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit: ; preds = %if.then.i16, %if.then2.i, %if.then5.i, %if.end6.i
  %26 = load i32, ptr %retval.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %27 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %27, %26
  store i32 %add13, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and14 = and i32 %28, 3
  %add15 = add nsw i32 %28, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i22)
  store i32 %add15, ptr %x.addr.i22, align 4
  switch i32 %and14, label %sw.default.i31 [
    i32 0, label %sw.bb.i25
    i32 1, label %sw.bb1.i27
    i32 2, label %sw.bb2.i29
  ]

sw.bb.i25:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit
  %29 = load i32, ptr %x.addr.i22, align 4
  %add.i24 = add nsw i32 %29, 11
  store i32 %add.i24, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit

sw.bb1.i27:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit
  %30 = load i32, ptr %x.addr.i22, align 4
  %xor.i26 = xor i32 %30, 7
  store i32 %xor.i26, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit

sw.bb2.i29:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit
  %31 = load i32, ptr %x.addr.i22, align 4
  %mul.i28 = mul nsw i32 %31, 5
  store i32 %mul.i28, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit

sw.default.i31:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit
  %32 = load i32, ptr %x.addr.i22, align 4
  %sub.i30 = add nsw i32 %32, -5
  store i32 %sub.i30, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit: ; preds = %sw.bb.i25, %sw.bb1.i27, %sw.bb2.i29, %sw.default.i31
  %33 = load i32, ptr %retval.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i22)
  %and17 = and i32 %33, 255
  %34 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %34, %and17
  store i32 %add18, ptr %total, align 4
  %35 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %35, 3
  %add20 = add nsw i32 %35, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i34)
  store i32 %and19, ptr %mode.addr.i32, align 4
  store i32 %add20, ptr %out.i34, align 4
  %and.i35 = and i32 %35, 1
  %tobool.i36.not = icmp eq i32 %and.i35, 0
  br i1 %tobool.i36.not, label %if.end.i41, label %if.then.i38

if.then.i38:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit
  %36 = load i32, ptr %out.i34, align 4
  %add.i37 = add nsw i32 %36, 7
  store i32 %add.i37, ptr %out.i34, align 4
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.then.i38, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit
  %37 = load i32, ptr %mode.addr.i32, align 4
  %and1.i39 = and i32 %37, 2
  %tobool2.i40.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.i40.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit, label %if.then3.i43

if.then3.i43:                                     ; preds = %if.end.i41
  %38 = load i32, ptr %out.i34, align 4
  %xor.i42 = xor i32 %38, 19
  store i32 %xor.i42, ptr %out.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit: ; preds = %if.end.i41, %if.then3.i43
  %39 = load i32, ptr %out.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i34)
  %40 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %40, %39
  store i32 %add22, ptr %total, align 4
  %41 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %41, 3
  %add24 = add nsw i32 %41, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i46)
  store i32 %and23, ptr %mode.addr.i44, align 4
  store i32 %add24, ptr %t.i46, align 4
  %cmp.i47 = icmp ult i32 %and23, 2
  br i1 %cmp.i47, label %cond.true.i50, label %cond.false.i52

cond.true.i50:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit
  %42 = load i32, ptr %t.i46, align 4
  %43 = load i32, ptr %mode.addr.i44, align 4
  %add1.i48 = add nsw i32 %43, 1
  %mul.i49 = mul nsw i32 %42, %add1.i48
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_6.exit

cond.false.i52:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit
  %44 = load i32, ptr %t.i46, align 4
  %45 = load i32, ptr %mode.addr.i44, align 4
  %sub.i51 = sub nsw i32 %44, %45
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_6.exit: ; preds = %cond.true.i50, %cond.false.i52
  %cond.i53 = phi i32 [ %mul.i49, %cond.true.i50 ], [ %sub.i51, %cond.false.i52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i46)
  %46 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %46, %cond.i53
  store i32 %add26, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %47, 3
  %add28 = add nsw i32 %47, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  store i32 %and27, ptr %mode.addr.i55, align 4
  store i32 %add28, ptr %x.addr.i56, align 4
  %cmp.i57 = icmp eq i32 %and27, 0
  br i1 %cmp.i57, label %if.then.i59, label %if.end.i61

if.then.i59:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_6.exit
  %48 = load i32, ptr %x.addr.i56, align 4
  %add.i58 = add nsw i32 %48, 3
  store i32 %add.i58, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit

if.end.i61:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_6.exit
  %49 = load i32, ptr %mode.addr.i55, align 4
  %cmp1.i60 = icmp eq i32 %49, 1
  br i1 %cmp1.i60, label %if.then2.i63, label %if.end3.i65

if.then2.i63:                                     ; preds = %if.end.i61
  %50 = load i32, ptr %x.addr.i56, align 4
  %mul.i62 = shl nsw i32 %50, 1
  store i32 %mul.i62, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit

if.end3.i65:                                      ; preds = %if.end.i61
  %51 = load i32, ptr %mode.addr.i55, align 4
  %cmp4.i64 = icmp eq i32 %51, 2
  br i1 %cmp4.i64, label %if.then5.i67, label %if.end6.i69

if.then5.i67:                                     ; preds = %if.end3.i65
  %52 = load i32, ptr %x.addr.i56, align 4
  %sub.i66 = add nsw i32 %52, -4
  store i32 %sub.i66, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit

if.end6.i69:                                      ; preds = %if.end3.i65
  %53 = load i32, ptr %x.addr.i56, align 4
  %54 = load i32, ptr %mode.addr.i55, align 4
  %add7.i68 = add nsw i32 %53, %54
  store i32 %add7.i68, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit: ; preds = %if.then.i59, %if.then2.i63, %if.then5.i67, %if.end6.i69
  %55 = load i32, ptr %retval.i54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  %56 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %56, %55
  store i32 %add30, ptr %total, align 4
  %57 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %57, 3
  %add32 = add nsw i32 %57, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i72)
  store i32 %and31, ptr %mode.addr.i71, align 4
  store i32 %add32, ptr %x.addr.i72, align 4
  %cmp.i73 = icmp eq i32 %and31, 0
  br i1 %cmp.i73, label %if.then.i75, label %if.end.i77

if.then.i75:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit
  %58 = load i32, ptr %x.addr.i72, align 4
  %add.i74 = add nsw i32 %58, 5
  store i32 %add.i74, ptr %retval.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit

if.end.i77:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_7.exit
  %59 = load i32, ptr %mode.addr.i71, align 4
  %cmp1.i76 = icmp eq i32 %59, 1
  br i1 %cmp1.i76, label %if.then2.i79, label %if.end3.i81

if.then2.i79:                                     ; preds = %if.end.i77
  %60 = load i32, ptr %x.addr.i72, align 4
  %mul.i78 = mul nsw i32 %60, 3
  store i32 %mul.i78, ptr %retval.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit

if.end3.i81:                                      ; preds = %if.end.i77
  %61 = load i32, ptr %mode.addr.i71, align 4
  %cmp4.i80 = icmp eq i32 %61, 2
  br i1 %cmp4.i80, label %if.then5.i83, label %if.end6.i85

if.then5.i83:                                     ; preds = %if.end3.i81
  %62 = load i32, ptr %x.addr.i72, align 4
  %sub.i82 = add nsw i32 %62, -7
  store i32 %sub.i82, ptr %retval.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit

if.end6.i85:                                      ; preds = %if.end3.i81
  %63 = load i32, ptr %x.addr.i72, align 4
  %64 = load i32, ptr %mode.addr.i71, align 4
  %add7.i84 = add nsw i32 %63, %64
  store i32 %add7.i84, ptr %retval.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit: ; preds = %if.then.i75, %if.then2.i79, %if.then5.i83, %if.end6.i85
  %65 = load i32, ptr %retval.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i72)
  %66 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %66, %65
  store i32 %add34, ptr %total, align 4
  %67 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %67, 3
  %add36 = add nsw i32 %67, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i86)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i87)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i88)
  store i32 %and35, ptr %mode.addr.i87, align 4
  store i32 %add36, ptr %x.addr.i88, align 4
  %cmp.i89 = icmp eq i32 %and35, 0
  br i1 %cmp.i89, label %if.then.i91, label %if.end.i93

if.then.i91:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit
  %68 = load i32, ptr %x.addr.i88, align 4
  %add.i90 = add nsw i32 %68, 5
  store i32 %add.i90, ptr %retval.i86, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit

if.end.i93:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_8.exit
  %69 = load i32, ptr %mode.addr.i87, align 4
  %cmp1.i92 = icmp eq i32 %69, 1
  br i1 %cmp1.i92, label %if.then2.i95, label %if.end3.i97

if.then2.i95:                                     ; preds = %if.end.i93
  %70 = load i32, ptr %x.addr.i88, align 4
  %mul.i94 = mul nsw i32 %70, 3
  store i32 %mul.i94, ptr %retval.i86, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit

if.end3.i97:                                      ; preds = %if.end.i93
  %71 = load i32, ptr %mode.addr.i87, align 4
  %cmp4.i96 = icmp eq i32 %71, 2
  br i1 %cmp4.i96, label %if.then5.i99, label %if.end6.i101

if.then5.i99:                                     ; preds = %if.end3.i97
  %72 = load i32, ptr %x.addr.i88, align 4
  %sub.i98 = add nsw i32 %72, -7
  store i32 %sub.i98, ptr %retval.i86, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit

if.end6.i101:                                     ; preds = %if.end3.i97
  %73 = load i32, ptr %x.addr.i88, align 4
  %74 = load i32, ptr %mode.addr.i87, align 4
  %add7.i100 = add nsw i32 %73, %74
  store i32 %add7.i100, ptr %retval.i86, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit: ; preds = %if.then.i91, %if.then2.i95, %if.then5.i99, %if.end6.i101
  %75 = load i32, ptr %retval.i86, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i86)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i87)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i88)
  %and38 = and i32 %75, 255
  %76 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %76, %and38
  store i32 %add39, ptr %total, align 4
  %77 = load i32, ptr %x.addr, align 4
  %and40 = and i32 %77, 3
  %add41 = add nsw i32 %77, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i102)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i104)
  store i32 %and40, ptr %mode.addr.i103, align 4
  store i32 %add41, ptr %x.addr.i104, align 4
  %cmp.i105 = icmp eq i32 %and40, 0
  br i1 %cmp.i105, label %if.then.i107, label %if.end.i109

if.then.i107:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit
  %78 = load i32, ptr %x.addr.i104, align 4
  %add.i106 = add nsw i32 %78, 5
  store i32 %add.i106, ptr %retval.i102, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit

if.end.i109:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_9.exit
  %79 = load i32, ptr %mode.addr.i103, align 4
  %cmp1.i108 = icmp eq i32 %79, 1
  br i1 %cmp1.i108, label %if.then2.i111, label %if.end3.i113

if.then2.i111:                                    ; preds = %if.end.i109
  %80 = load i32, ptr %x.addr.i104, align 4
  %mul.i110 = mul nsw i32 %80, 3
  store i32 %mul.i110, ptr %retval.i102, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit

if.end3.i113:                                     ; preds = %if.end.i109
  %81 = load i32, ptr %mode.addr.i103, align 4
  %cmp4.i112 = icmp eq i32 %81, 2
  br i1 %cmp4.i112, label %if.then5.i115, label %if.end6.i117

if.then5.i115:                                    ; preds = %if.end3.i113
  %82 = load i32, ptr %x.addr.i104, align 4
  %sub.i114 = add nsw i32 %82, -7
  store i32 %sub.i114, ptr %retval.i102, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit

if.end6.i117:                                     ; preds = %if.end3.i113
  %83 = load i32, ptr %x.addr.i104, align 4
  %84 = load i32, ptr %mode.addr.i103, align 4
  %add7.i116 = add nsw i32 %83, %84
  store i32 %add7.i116, ptr %retval.i102, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit: ; preds = %if.then.i107, %if.then2.i111, %if.then5.i115, %if.end6.i117
  %85 = load i32, ptr %retval.i102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i104)
  %86 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %86, %85
  store i32 %add43, ptr %total, align 4
  %87 = load i32, ptr %x.addr, align 4
  %and44 = and i32 %87, 3
  %add45 = add nsw i32 %87, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i118)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i119)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i120)
  store i32 %and44, ptr %mode.addr.i119, align 4
  store i32 %add45, ptr %x.addr.i120, align 4
  %cmp.i121 = icmp eq i32 %and44, 0
  br i1 %cmp.i121, label %if.then.i123, label %if.end.i125

if.then.i123:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit
  %88 = load i32, ptr %x.addr.i120, align 4
  %add.i122 = add nsw i32 %88, 5
  store i32 %add.i122, ptr %retval.i118, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit

if.end.i125:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_10.exit
  %89 = load i32, ptr %mode.addr.i119, align 4
  %cmp1.i124 = icmp eq i32 %89, 1
  br i1 %cmp1.i124, label %if.then2.i127, label %if.end3.i129

if.then2.i127:                                    ; preds = %if.end.i125
  %90 = load i32, ptr %x.addr.i120, align 4
  %mul.i126 = mul nsw i32 %90, 3
  store i32 %mul.i126, ptr %retval.i118, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit

if.end3.i129:                                     ; preds = %if.end.i125
  %91 = load i32, ptr %mode.addr.i119, align 4
  %cmp4.i128 = icmp eq i32 %91, 2
  br i1 %cmp4.i128, label %if.then5.i131, label %if.end6.i133

if.then5.i131:                                    ; preds = %if.end3.i129
  %92 = load i32, ptr %x.addr.i120, align 4
  %sub.i130 = add nsw i32 %92, -7
  store i32 %sub.i130, ptr %retval.i118, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit

if.end6.i133:                                     ; preds = %if.end3.i129
  %93 = load i32, ptr %x.addr.i120, align 4
  %94 = load i32, ptr %mode.addr.i119, align 4
  %add7.i132 = add nsw i32 %93, %94
  store i32 %add7.i132, ptr %retval.i118, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit: ; preds = %if.then.i123, %if.then2.i127, %if.then5.i131, %if.end6.i133
  %95 = load i32, ptr %retval.i118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i118)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i119)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i120)
  %96 = load i32, ptr %total, align 4
  %add47 = add nsw i32 %96, %95
  store i32 %add47, ptr %total, align 4
  %97 = load i32, ptr %x.addr, align 4
  %add48 = add nsw i32 %97, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i134)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add48, ptr %x.addr.i134, align 4
  store i32 %add48, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_11.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i135 = icmp slt i32 %storemerge, 8
  br i1 %cmp.i135, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_12.exit

for.body.i:                                       ; preds = %for.cond.i
  %98 = load i32, ptr %x.addr.i134, align 4
  %99 = load i32, ptr %i.i, align 4
  %xor.i136 = xor i32 %98, %99
  %add.i137 = add nsw i32 %xor.i136, 10
  %100 = load i32, ptr %s.i, align 4
  %add1.i138 = add nsw i32 %100, %add.i137
  %shl.i = shl i32 %add1.i138, 1
  %shr.i = ashr i32 %add1.i138, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %101 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %101, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_12.exit: ; preds = %for.cond.i
  %102 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i134)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %103 = load i32, ptr %total, align 4
  %add50 = add nsw i32 %103, %102
  store i32 %add50, ptr %total, align 4
  %104 = load i32, ptr %x.addr, align 4
  %add51 = add nsw i32 %104, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i139)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i140)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i141)
  store i32 %add51, ptr %x.addr.i139, align 4
  store i32 %add51, ptr %s.i140, align 4
  %and.i142 = and i32 %add51, 3
  %add.i143 = add nuw nsw i32 %and.i142, 5
  store i32 %add.i143, ptr %limit.i, align 4
  br label %for.cond.i145

for.cond.i145:                                    ; preds = %if.end.i152, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_12.exit
  %storemerge154 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_12.exit ], [ %inc.i153, %if.end.i152 ]
  store i32 %storemerge154, ptr %i.i141, align 4
  %105 = load i32, ptr %limit.i, align 4
  %cmp.i144 = icmp slt i32 %storemerge154, %105
  br i1 %cmp.i144, label %for.body.i149, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_13.exit

for.body.i149:                                    ; preds = %for.cond.i145
  %106 = load i32, ptr %i.i141, align 4
  %mul.i146 = mul nsw i32 %106, %106
  %sub.i147 = add nsw i32 %mul.i146, -3
  %107 = load i32, ptr %s.i140, align 4
  %add1.i148 = add nsw i32 %107, %sub.i147
  store i32 %add1.i148, ptr %s.i140, align 4
  %and2.i = and i32 %add1.i148, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i151, label %if.end.i152

if.then.i151:                                     ; preds = %for.body.i149
  %108 = load i32, ptr %i.i141, align 4
  %109 = load i32, ptr %x.addr.i139, align 4
  %add4.i = add nsw i32 %108, %109
  %110 = load i32, ptr %s.i140, align 4
  %xor.i150 = xor i32 %110, %add4.i
  store i32 %xor.i150, ptr %s.i140, align 4
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.then.i151, %for.body.i149
  %111 = load i32, ptr %i.i141, align 4
  %inc.i153 = add nsw i32 %111, 1
  br label %for.cond.i145, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_13.exit: ; preds = %for.cond.i145
  %112 = load i32, ptr %s.i140, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i139)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i140)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i141)
  %113 = load i32, ptr %total, align 4
  %add53 = add nsw i32 %113, %112
  store i32 %add53, ptr %total, align 4
  %call54 = call noundef i32 @_ZL19image_049_recursivei(i32 noundef 2)
  %and55 = and i32 %call54, 255
  %add56 = add nsw i32 %add53, %and55
  store i32 %add56, ptr %total, align 4
  %call57 = call noundef i32 @_ZL19image_049_recursivei(i32 noundef 3)
  %add58 = add nsw i32 %add56, %call57
  store i32 %add58, ptr %total, align 4
  ret i32 %add58
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_049_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_049_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_049_recursivei(i32 noundef %sub1)
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
