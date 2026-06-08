; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_053.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_053.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_053_kernel(i32 noundef %x) #0 {
entry:
  %x.addr.i115 = alloca i32, align 4
  %s.i116 = alloca i32, align 4
  %mode.addr.i97 = alloca i32, align 4
  %t.i99 = alloca i32, align 4
  %retval.i82 = alloca i32, align 4
  %x.addr.i84 = alloca i32, align 4
  %x.addr.i42 = alloca i32, align 4
  %s.i43 = alloca i32, align 4
  %retval.i23 = alloca i32, align 4
  %x.addr.i25 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i14 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 5
  store i32 %add.i, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  %add.i2 = add nsw i32 %x, 5
  store i32 %add.i2, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i3 = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i3, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %cond.i
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add.i5 = add nsw i32 %5, 5
  %mul.i6 = shl nsw i32 %add.i5, 1
  %shr.i = ashr i32 %add.i5, 1
  %xor.i = xor i32 %mul.i6, %shr.i
  %add1.i7 = add nsw i32 %xor.i, 4
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %add1.i7
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add8, ptr %x.addr.i8, align 4
  %and.i = and i32 %add8, 3
  %mul.i9 = mul nuw nsw i32 %and.i, 5
  %add.i10 = add nsw i32 %add8, %mul.i9
  store i32 %add.i10, ptr %s.i, align 4
  %8 = and i32 %add.i10, 1
  %cmp.i11 = icmp eq i32 %8, 0
  %9 = load i32, ptr %s.i, align 4
  %add1.i12 = add nsw i32 %9, 1
  %10 = load i32, ptr %s.i, align 4
  %storemerge = select i1 %cmp.i11, i32 %10, i32 %add1.i12
  store i32 %storemerge, ptr %s.i, align 4
  %11 = load i32, ptr %x.addr.i8, align 4
  %and2.i = and i32 %11, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 6
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %12 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %12, 3
  %13 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %13, -1
  %storemerge155 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge155, ptr %s.i, align 4
  %14 = load i32, ptr %x.addr.i8, align 4
  %and12.i = and i32 %14, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 7
  %add14.i = add nsw i32 %storemerge155, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %15 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %15, 0
  %16 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %16, 5
  %17 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %17, -2
  %storemerge156 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge156, ptr %s.i, align 4
  %18 = load i32, ptr %x.addr.i8, align 4
  %and22.i = shl i32 %18, 3
  %mul23.i = and i32 %and22.i, 48
  %add24.i = add nsw i32 %storemerge156, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %19 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %19, 7
  %20 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %20, -3
  %storemerge157 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge157, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %21 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %21, %storemerge157
  store i32 %add10, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %22, 3
  %add12 = add nsw i32 %22, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  store i32 %add12, ptr %x.addr.i14, align 4
  switch i32 %and11, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %23 = load i32, ptr %x.addr.i14, align 4
  %add.i16 = add nsw i32 %23, 11
  store i32 %add.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %24 = load i32, ptr %x.addr.i14, align 4
  %xor.i17 = xor i32 %24, 7
  store i32 %xor.i17, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %25 = load i32, ptr %x.addr.i14, align 4
  %mul.i18 = mul nsw i32 %25, 5
  store i32 %mul.i18, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %26 = load i32, ptr %x.addr.i14, align 4
  %sub.i19 = add nsw i32 %26, -5
  store i32 %sub.i19, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %27 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  %and14 = and i32 %27, 255
  %28 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %28, %and14
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL19image_053_recursivei(i32 noundef 1)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %add18 = shl i32 %29, 1
  %add.i22 = add i32 %add18, 16
  %add20 = add nsw i32 %add17, %add.i22
  store i32 %add20, ptr %total, align 4
  %and21 = and i32 %29, 3
  %add22 = add nsw i32 %29, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i25)
  store i32 %add22, ptr %x.addr.i25, align 4
  switch i32 %and21, label %sw.default.i34 [
    i32 0, label %sw.bb.i28
    i32 1, label %sw.bb1.i30
    i32 2, label %sw.bb2.i32
  ]

sw.bb.i28:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit
  %30 = load i32, ptr %x.addr.i25, align 4
  %add.i27 = add nsw i32 %30, 7
  store i32 %add.i27, ptr %retval.i23, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit

sw.bb1.i30:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit
  %31 = load i32, ptr %x.addr.i25, align 4
  %xor.i29 = xor i32 %31, 14
  store i32 %xor.i29, ptr %retval.i23, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit

sw.bb2.i32:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit
  %32 = load i32, ptr %x.addr.i25, align 4
  %mul.i31 = mul nsw i32 %32, 3
  store i32 %mul.i31, ptr %retval.i23, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit

sw.default.i34:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit
  %33 = load i32, ptr %x.addr.i25, align 4
  %sub.i33 = add nsw i32 %33, -5
  store i32 %sub.i33, ptr %retval.i23, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit: ; preds = %sw.bb.i28, %sw.bb1.i30, %sw.bb2.i32, %sw.default.i34
  %34 = load i32, ptr %retval.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i25)
  %35 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %35, %34
  store i32 %add24, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %add.i37 = add nsw i32 %36, 20
  %mul.i38 = mul nsw i32 %add.i37, 5
  %shr.i39 = ashr i32 %add.i37, 1
  %xor.i40 = xor i32 %mul.i38, %shr.i39
  %add1.i41 = add nsw i32 %xor.i40, 2
  %37 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %37, %add1.i41
  store i32 %add27, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %38, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i43)
  store i32 %add28, ptr %x.addr.i42, align 4
  %and.i44 = and i32 %add28, 3
  %mul.i45 = mul nuw nsw i32 %and.i44, 5
  %add.i46 = add nsw i32 %add28, %mul.i45
  store i32 %add.i46, ptr %s.i43, align 4
  %39 = and i32 %add.i46, 1
  %cmp.i48 = icmp eq i32 %39, 0
  %40 = load i32, ptr %s.i43, align 4
  %add1.i50 = add nsw i32 %40, 1
  %41 = load i32, ptr %s.i43, align 4
  %storemerge158 = select i1 %cmp.i48, i32 %41, i32 %add1.i50
  store i32 %storemerge158, ptr %s.i43, align 4
  %42 = load i32, ptr %x.addr.i42, align 4
  %and2.i52 = and i32 %42, 4
  %mul3.i53 = mul nuw nsw i32 %and2.i52, 6
  %add4.i54 = add nsw i32 %storemerge158, %mul3.i53
  store i32 %add4.i54, ptr %s.i43, align 4
  %rem5.i55 = srem i32 %add4.i54, 3
  %cmp6.i56 = icmp eq i32 %rem5.i55, 0
  %43 = load i32, ptr %s.i43, align 4
  %add10.i60 = add nsw i32 %43, 3
  %44 = load i32, ptr %s.i43, align 4
  %sub8.i58 = add nsw i32 %44, -1
  %storemerge159 = select i1 %cmp6.i56, i32 %sub8.i58, i32 %add10.i60
  store i32 %storemerge159, ptr %s.i43, align 4
  %45 = load i32, ptr %x.addr.i42, align 4
  %and12.i62 = and i32 %45, 5
  %mul13.i63 = mul nuw nsw i32 %and12.i62, 7
  %add14.i64 = add nsw i32 %storemerge159, %mul13.i63
  store i32 %add14.i64, ptr %s.i43, align 4
  %46 = and i32 %add14.i64, 3
  %cmp16.i66 = icmp eq i32 %46, 0
  %47 = load i32, ptr %s.i43, align 4
  %add20.i70 = add nsw i32 %47, 5
  %48 = load i32, ptr %s.i43, align 4
  %sub18.i68 = add nsw i32 %48, -2
  %storemerge160 = select i1 %cmp16.i66, i32 %sub18.i68, i32 %add20.i70
  store i32 %storemerge160, ptr %s.i43, align 4
  %49 = load i32, ptr %x.addr.i42, align 4
  %and22.i72 = shl i32 %49, 3
  %mul23.i73 = and i32 %and22.i72, 48
  %add24.i74 = add nsw i32 %storemerge160, %mul23.i73
  store i32 %add24.i74, ptr %s.i43, align 4
  %rem25.i75 = srem i32 %add24.i74, 5
  %cmp26.i76 = icmp eq i32 %rem25.i75, 0
  %50 = load i32, ptr %s.i43, align 4
  %add30.i80 = add nsw i32 %50, 7
  %51 = load i32, ptr %s.i43, align 4
  %sub28.i78 = add nsw i32 %51, -3
  %storemerge161 = select i1 %cmp26.i76, i32 %sub28.i78, i32 %add30.i80
  store i32 %storemerge161, ptr %s.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i43)
  %and30 = and i32 %storemerge161, 255
  %52 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %52, %and30
  store i32 %add31, ptr %total, align 4
  %53 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %53, 3
  %add33 = add nsw i32 %53, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i82)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i84)
  store i32 %add33, ptr %x.addr.i84, align 4
  switch i32 %and32, label %sw.default.i93 [
    i32 0, label %sw.bb.i87
    i32 1, label %sw.bb1.i89
    i32 2, label %sw.bb2.i91
  ]

sw.bb.i87:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit
  %54 = load i32, ptr %x.addr.i84, align 4
  %add.i86 = add nsw i32 %54, 11
  store i32 %add.i86, ptr %retval.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit

sw.bb1.i89:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit
  %55 = load i32, ptr %x.addr.i84, align 4
  %xor.i88 = xor i32 %55, 7
  store i32 %xor.i88, ptr %retval.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit

sw.bb2.i91:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit
  %56 = load i32, ptr %x.addr.i84, align 4
  %mul.i90 = mul nsw i32 %56, 5
  store i32 %mul.i90, ptr %retval.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit

sw.default.i93:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit
  %57 = load i32, ptr %x.addr.i84, align 4
  %sub.i92 = add nsw i32 %57, -5
  store i32 %sub.i92, ptr %retval.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit: ; preds = %sw.bb.i87, %sw.bb1.i89, %sw.bb2.i91, %sw.default.i93
  %58 = load i32, ptr %retval.i82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i82)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i84)
  %59 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %59, %58
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL19image_053_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %61 = mul i32 %60, 5
  %add.i96 = add i32 %61, 62
  %add40 = add nsw i32 %add37, %add.i96
  store i32 %add40, ptr %total, align 4
  %and41 = and i32 %60, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i97)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i99)
  store i32 %and41, ptr %mode.addr.i97, align 4
  %add.i100 = add nsw i32 %60, 16
  store i32 %add.i100, ptr %t.i99, align 4
  %cmp.i101 = icmp ult i32 %and41, 2
  br i1 %cmp.i101, label %cond.true.i104, label %cond.false.i106

cond.true.i104:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit
  %62 = load i32, ptr %t.i99, align 4
  %63 = load i32, ptr %mode.addr.i97, align 4
  %add1.i102 = add nsw i32 %63, 1
  %mul.i103 = mul nsw i32 %62, %add1.i102
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_13.exit

cond.false.i106:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_10.exit
  %64 = load i32, ptr %t.i99, align 4
  %65 = load i32, ptr %mode.addr.i97, align 4
  %sub.i105 = sub nsw i32 %64, %65
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_13.exit: ; preds = %cond.true.i104, %cond.false.i106
  %cond.i107 = phi i32 [ %mul.i103, %cond.true.i104 ], [ %sub.i105, %cond.false.i106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i97)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i99)
  %66 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %66, %cond.i107
  store i32 %add44, ptr %total, align 4
  %67 = load i32, ptr %x.addr, align 4
  %add.i110 = add nsw i32 %67, 21
  %mul.i111 = mul nsw i32 %add.i110, 6
  %68 = lshr i32 %add.i110, 1
  %xor.i113 = xor i32 %mul.i111, %68
  %add1.i114 = add i32 %xor.i113, 8
  %and47 = and i32 %add1.i114, 255
  %69 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %69, %and47
  store i32 %add48, ptr %total, align 4
  %70 = load i32, ptr %x.addr, align 4
  %add49 = add nsw i32 %70, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i116)
  store i32 %add49, ptr %x.addr.i115, align 4
  %and.i117 = and i32 %add49, 3
  %mul.i118 = mul nuw nsw i32 %and.i117, 5
  %add.i119 = add nsw i32 %add49, %mul.i118
  store i32 %add.i119, ptr %s.i116, align 4
  %71 = and i32 %add.i119, 1
  %cmp.i121 = icmp eq i32 %71, 0
  %72 = load i32, ptr %s.i116, align 4
  %add1.i123 = add nsw i32 %72, 1
  %73 = load i32, ptr %s.i116, align 4
  %storemerge162 = select i1 %cmp.i121, i32 %73, i32 %add1.i123
  store i32 %storemerge162, ptr %s.i116, align 4
  %74 = load i32, ptr %x.addr.i115, align 4
  %and2.i125 = and i32 %74, 4
  %mul3.i126 = mul nuw nsw i32 %and2.i125, 6
  %add4.i127 = add nsw i32 %storemerge162, %mul3.i126
  store i32 %add4.i127, ptr %s.i116, align 4
  %rem5.i128 = srem i32 %add4.i127, 3
  %cmp6.i129 = icmp eq i32 %rem5.i128, 0
  %75 = load i32, ptr %s.i116, align 4
  %add10.i133 = add nsw i32 %75, 3
  %76 = load i32, ptr %s.i116, align 4
  %sub8.i131 = add nsw i32 %76, -1
  %storemerge163 = select i1 %cmp6.i129, i32 %sub8.i131, i32 %add10.i133
  store i32 %storemerge163, ptr %s.i116, align 4
  %77 = load i32, ptr %x.addr.i115, align 4
  %and12.i135 = and i32 %77, 5
  %mul13.i136 = mul nuw nsw i32 %and12.i135, 7
  %add14.i137 = add nsw i32 %storemerge163, %mul13.i136
  store i32 %add14.i137, ptr %s.i116, align 4
  %78 = and i32 %add14.i137, 3
  %cmp16.i139 = icmp eq i32 %78, 0
  %79 = load i32, ptr %s.i116, align 4
  %add20.i143 = add nsw i32 %79, 5
  %80 = load i32, ptr %s.i116, align 4
  %sub18.i141 = add nsw i32 %80, -2
  %storemerge164 = select i1 %cmp16.i139, i32 %sub18.i141, i32 %add20.i143
  store i32 %storemerge164, ptr %s.i116, align 4
  %81 = load i32, ptr %x.addr.i115, align 4
  %and22.i145 = shl i32 %81, 3
  %mul23.i146 = and i32 %and22.i145, 48
  %add24.i147 = add nsw i32 %storemerge164, %mul23.i146
  store i32 %add24.i147, ptr %s.i116, align 4
  %rem25.i148 = srem i32 %add24.i147, 5
  %cmp26.i149 = icmp eq i32 %rem25.i148, 0
  %82 = load i32, ptr %s.i116, align 4
  %add30.i153 = add nsw i32 %82, 7
  %83 = load i32, ptr %s.i116, align 4
  %sub28.i151 = add nsw i32 %83, -3
  %storemerge165 = select i1 %cmp26.i149, i32 %sub28.i151, i32 %add30.i153
  store i32 %storemerge165, ptr %s.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i116)
  %84 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %84, %storemerge165
  store i32 %add51, ptr %total, align 4
  ret i32 %add51
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_053_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_053_recursivei(i32 noundef %sub)
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
