; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_057.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_057.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_057_kernel(i32 noundef %x) #0 {
entry:
  %x.addr.i83 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i71 = alloca i32, align 4
  %out.i73 = alloca i32, align 4
  %mode.addr.i59 = alloca i32, align 4
  %out.i61 = alloca i32, align 4
  %mode.addr.i52 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i40 = alloca i32, align 4
  %x.addr.i42 = alloca i32, align 4
  %retval.i24 = alloca i32, align 4
  %mode.addr.i25 = alloca i32, align 4
  %x.addr.i26 = alloca i32, align 4
  %mode.addr.i13 = alloca i32, align 4
  %t.i15 = alloca i32, align 4
  %retval.i7 = alloca i32, align 4
  %x.addr.i9 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
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
  %add.i = add nsw i32 %x, 2
  store i32 %add.i, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit: ; preds = %cond.true.i, %cond.false.i
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 %and2, ptr %mode.addr.i1, align 4
  store i32 %add3, ptr %x.addr.i2, align 4
  %cmp.i3 = icmp eq i32 %and2, 0
  br i1 %cmp.i3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %6 = load i32, ptr %x.addr.i2, align 4
  %add.i4 = add nsw i32 %6, 5
  store i32 %add.i4, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

if.end.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %7 = load i32, ptr %mode.addr.i1, align 4
  %cmp1.i = icmp eq i32 %7, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %8 = load i32, ptr %x.addr.i2, align 4
  %mul.i5 = shl nsw i32 %8, 2
  store i32 %mul.i5, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = load i32, ptr %mode.addr.i1, align 4
  %cmp4.i = icmp eq i32 %9, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %10 = load i32, ptr %x.addr.i2, align 4
  %sub.i6 = add nsw i32 %10, -6
  store i32 %sub.i6, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

if.end6.i:                                        ; preds = %if.end3.i
  %11 = load i32, ptr %x.addr.i2, align 4
  %12 = load i32, ptr %mode.addr.i1, align 4
  %add7.i = add nsw i32 %11, %12
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit: ; preds = %if.then.i, %if.then2.i, %if.then5.i, %if.end6.i
  %13 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %14 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %14, %13
  store i32 %add5, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %15, 3
  %add7 = add nsw i32 %15, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i9)
  store i32 %add7, ptr %x.addr.i9, align 4
  switch i32 %and6, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %16 = load i32, ptr %x.addr.i9, align 4
  %add.i10 = add nsw i32 %16, 6
  store i32 %add.i10, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %17 = load i32, ptr %x.addr.i9, align 4
  %xor.i = xor i32 %17, 13
  store i32 %xor.i, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %18 = load i32, ptr %x.addr.i9, align 4
  %mul.i11 = mul nsw i32 %18, 5
  store i32 %mul.i11, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %19 = load i32, ptr %x.addr.i9, align 4
  %sub.i12 = add nsw i32 %19, -4
  store i32 %sub.i12, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %20 = load i32, ptr %retval.i7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i9)
  %21 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %21, %20
  store i32 %add9, ptr %total, align 4
  %call10 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add11 = add nsw i32 %add9, %call10
  store i32 %add11, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %22, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i15)
  store i32 %and12, ptr %mode.addr.i13, align 4
  %add.i16 = add nsw i32 %22, 5
  store i32 %add.i16, ptr %t.i15, align 4
  %cmp.i17 = icmp ult i32 %and12, 2
  br i1 %cmp.i17, label %cond.true.i20, label %cond.false.i22

cond.true.i20:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit
  %23 = load i32, ptr %t.i15, align 4
  %24 = load i32, ptr %mode.addr.i13, align 4
  %add1.i18 = add nsw i32 %24, 1
  %mul.i19 = mul nsw i32 %23, %add1.i18
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

cond.false.i22:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit
  %25 = load i32, ptr %t.i15, align 4
  %26 = load i32, ptr %mode.addr.i13, align 4
  %sub.i21 = sub nsw i32 %25, %26
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit: ; preds = %cond.true.i20, %cond.false.i22
  %cond.i23 = phi i32 [ %mul.i19, %cond.true.i20 ], [ %sub.i21, %cond.false.i22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i15)
  %and15 = and i32 %cond.i23, 255
  %27 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %27, %and15
  store i32 %add16, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %28, 3
  %add18 = add nsw i32 %28, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i26)
  store i32 %and17, ptr %mode.addr.i25, align 4
  store i32 %add18, ptr %x.addr.i26, align 4
  %cmp.i27 = icmp eq i32 %and17, 0
  br i1 %cmp.i27, label %if.then.i29, label %if.end.i31

if.then.i29:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %29 = load i32, ptr %x.addr.i26, align 4
  %add.i28 = add nsw i32 %29, 9
  store i32 %add.i28, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

if.end.i31:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %30 = load i32, ptr %mode.addr.i25, align 4
  %cmp1.i30 = icmp eq i32 %30, 1
  br i1 %cmp1.i30, label %if.then2.i33, label %if.end3.i35

if.then2.i33:                                     ; preds = %if.end.i31
  %31 = load i32, ptr %x.addr.i26, align 4
  %mul.i32 = shl nsw i32 %31, 2
  store i32 %mul.i32, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

if.end3.i35:                                      ; preds = %if.end.i31
  %32 = load i32, ptr %mode.addr.i25, align 4
  %cmp4.i34 = icmp eq i32 %32, 2
  br i1 %cmp4.i34, label %if.then5.i37, label %if.end6.i39

if.then5.i37:                                     ; preds = %if.end3.i35
  %33 = load i32, ptr %x.addr.i26, align 4
  %sub.i36 = add nsw i32 %33, -5
  store i32 %sub.i36, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

if.end6.i39:                                      ; preds = %if.end3.i35
  %34 = load i32, ptr %x.addr.i26, align 4
  %35 = load i32, ptr %mode.addr.i25, align 4
  %add7.i38 = add nsw i32 %34, %35
  store i32 %add7.i38, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit: ; preds = %if.then.i29, %if.then2.i33, %if.then5.i37, %if.end6.i39
  %36 = load i32, ptr %retval.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i26)
  %37 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %37, %36
  store i32 %add20, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %and21 = and i32 %38, 3
  %add22 = add nsw i32 %38, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i42)
  store i32 %add22, ptr %x.addr.i42, align 4
  switch i32 %and21, label %sw.default.i51 [
    i32 0, label %sw.bb.i45
    i32 1, label %sw.bb1.i47
    i32 2, label %sw.bb2.i49
  ]

sw.bb.i45:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit
  %39 = load i32, ptr %x.addr.i42, align 4
  %add.i44 = add nsw i32 %39, 10
  store i32 %add.i44, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit

sw.bb1.i47:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit
  %40 = load i32, ptr %x.addr.i42, align 4
  %xor.i46 = xor i32 %40, 17
  store i32 %xor.i46, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit

sw.bb2.i49:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit
  %41 = load i32, ptr %x.addr.i42, align 4
  %mul.i48 = mul nsw i32 %41, 3
  store i32 %mul.i48, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit

sw.default.i51:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit
  %42 = load i32, ptr %x.addr.i42, align 4
  %sub.i50 = add nsw i32 %42, -1
  store i32 %sub.i50, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit: ; preds = %sw.bb.i45, %sw.bb1.i47, %sw.bb2.i49, %sw.default.i51
  %43 = load i32, ptr %retval.i40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i42)
  %44 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %44, %43
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %45, 3
  %add28 = add nsw i32 %45, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and27, ptr %mode.addr.i52, align 4
  store i32 %add28, ptr %out.i, align 4
  %and.i54 = and i32 %45, 1
  %tobool.i.not = icmp eq i32 %and.i54, 0
  br i1 %tobool.i.not, label %if.end.i57, label %if.then.i56

if.then.i56:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit
  %46 = load i32, ptr %out.i, align 4
  %add.i55 = add nsw i32 %46, 2
  store i32 %add.i55, ptr %out.i, align 4
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i56, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit
  %47 = load i32, ptr %mode.addr.i52, align 4
  %and1.i = and i32 %47, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i57
  %48 = load i32, ptr %out.i, align 4
  %xor.i58 = xor i32 %48, 3
  store i32 %xor.i58, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit: ; preds = %if.end.i57, %if.then3.i
  %49 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %50 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %50, %49
  store i32 %add30, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %51, 3
  %add32 = add nsw i32 %51, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i61)
  store i32 %and31, ptr %mode.addr.i59, align 4
  store i32 %add32, ptr %out.i61, align 4
  %and.i62 = and i32 %51, 1
  %tobool.i63.not = icmp eq i32 %and.i62, 0
  br i1 %tobool.i63.not, label %if.end.i68, label %if.then.i65

if.then.i65:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit
  %52 = load i32, ptr %out.i61, align 4
  %add.i64 = add nsw i32 %52, 2
  store i32 %add.i64, ptr %out.i61, align 4
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i65, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit
  %53 = load i32, ptr %mode.addr.i59, align 4
  %and1.i66 = and i32 %53, 2
  %tobool2.i67.not = icmp eq i32 %and1.i66, 0
  br i1 %tobool2.i67.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_9.exit, label %if.then3.i70

if.then3.i70:                                     ; preds = %if.end.i68
  %54 = load i32, ptr %out.i61, align 4
  %xor.i69 = xor i32 %54, 3
  store i32 %xor.i69, ptr %out.i61, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_9.exit: ; preds = %if.end.i68, %if.then3.i70
  %55 = load i32, ptr %out.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i61)
  %and34 = and i32 %55, 255
  %56 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %56, %and34
  store i32 %add35, ptr %total, align 4
  %57 = load i32, ptr %x.addr, align 4
  %and36 = and i32 %57, 3
  %add37 = add nsw i32 %57, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i73)
  store i32 %and36, ptr %mode.addr.i71, align 4
  store i32 %add37, ptr %out.i73, align 4
  %and.i74 = and i32 %57, 1
  %tobool.i75.not = icmp eq i32 %and.i74, 0
  br i1 %tobool.i75.not, label %if.end.i80, label %if.then.i77

if.then.i77:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_9.exit
  %58 = load i32, ptr %out.i73, align 4
  %add.i76 = add nsw i32 %58, 2
  store i32 %add.i76, ptr %out.i73, align 4
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then.i77, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_9.exit
  %59 = load i32, ptr %mode.addr.i71, align 4
  %and1.i78 = and i32 %59, 2
  %tobool2.i79.not = icmp eq i32 %and1.i78, 0
  br i1 %tobool2.i79.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_10.exit, label %if.then3.i82

if.then3.i82:                                     ; preds = %if.end.i80
  %60 = load i32, ptr %out.i73, align 4
  %xor.i81 = xor i32 %60, 3
  store i32 %xor.i81, ptr %out.i73, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_10.exit: ; preds = %if.end.i80, %if.then3.i82
  %61 = load i32, ptr %out.i73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i73)
  %62 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %62, %61
  store i32 %add39, ptr %total, align 4
  %call40 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add41 = add nsw i32 %add39, %call40
  store i32 %add41, ptr %total, align 4
  %63 = load i32, ptr %x.addr, align 4
  %add42 = add nsw i32 %63, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add42, ptr %x.addr.i83, align 4
  %and.i84 = and i32 %63, 3
  %mul.i85 = mul nuw nsw i32 %and.i84, 3
  %add.i86 = add nsw i32 %add42, %mul.i85
  store i32 %add.i86, ptr %s.i, align 4
  %64 = and i32 %add.i86, 1
  %cmp.i87 = icmp eq i32 %64, 0
  %65 = load i32, ptr %s.i, align 4
  %add1.i90 = add nsw i32 %65, 1
  %66 = load i32, ptr %s.i, align 4
  %sub.i88 = add nsw i32 %66, -2
  %storemerge = select i1 %cmp.i87, i32 %sub.i88, i32 %add1.i90
  store i32 %storemerge, ptr %s.i, align 4
  %67 = load i32, ptr %x.addr.i83, align 4
  %and2.i = shl i32 %67, 2
  %mul3.i = and i32 %and2.i, 16
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %68 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %68, 3
  %69 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %69, -3
  %storemerge100 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge100, ptr %s.i, align 4
  %70 = load i32, ptr %x.addr.i83, align 4
  %and12.i = and i32 %70, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 5
  %add14.i = add nsw i32 %storemerge100, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %71 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %71, 0
  %72 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %72, 5
  %73 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %73, -4
  %storemerge101 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge101, ptr %s.i, align 4
  %74 = load i32, ptr %x.addr.i83, align 4
  %and22.i = and i32 %74, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 6
  %add24.i = add nsw i32 %storemerge101, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %75 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %75, 7
  %76 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %76, -5
  %storemerge102 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge102, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %77 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %77, %storemerge102
  store i32 %add44, ptr %total, align 4
  %78 = load i32, ptr %x.addr, align 4
  %79 = mul i32 %78, 3
  %add.i95 = add i32 %79, 113
  %shr.i = ashr i32 %add.i95, 1
  %xor.i96 = xor i32 %add.i95, %shr.i
  %mul1.i = shl nsw i32 %xor.i96, 2
  %add2.i = add nsw i32 %mul1.i, 75
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 76
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i97 = add nsw i32 %mul9.i, 77
  %shr11.i = ashr i32 %add10.i97, 1
  %xor12.i = xor i32 %add10.i97, %shr11.i
  %mul13.i98 = mul nsw i32 %xor12.i, 7
  %add14.i99 = add nsw i32 %mul13.i98, 78
  %shr15.i = ashr i32 %add14.i99, 2
  %xor16.i = xor i32 %add14.i99, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 79
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 80
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 81
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %80 = load i32, ptr %total, align 4
  %add47 = add nsw i32 %80, %xor28.i
  store i32 %add47, ptr %total, align 4
  %call48 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 2)
  %and49 = and i32 %call48, 255
  %add50 = add nsw i32 %add47, %and49
  store i32 %add50, ptr %total, align 4
  %call51 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add52 = add nsw i32 %add50, %call51
  store i32 %add52, ptr %total, align 4
  ret i32 %add52
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_057_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_057_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef %sub1)
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
