; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_038.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_038.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_038_step(i32 noundef %x) #0 {
entry:
  %x.addr.i113 = alloca i32, align 4
  %s.i114 = alloca i32, align 4
  %mode.addr.i95 = alloca i32, align 4
  %t.i97 = alloca i32, align 4
  %retval.i80 = alloca i32, align 4
  %x.addr.i82 = alloca i32, align 4
  %x.addr.i41 = alloca i32, align 4
  %s.i42 = alloca i32, align 4
  %retval.i22 = alloca i32, align 4
  %x.addr.i24 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i13 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 4
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
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i3, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %cond.i
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %5, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit
  %6 = load i32, ptr %x.addr, align 4
  %add.i5 = add nsw i32 %6, 12
  %mul.i6 = shl nsw i32 %add.i5, 1
  %shr.i = ashr i32 %add.i5, 1
  %xor.i = xor i32 %mul.i6, %shr.i
  %add1.i7 = add nsw i32 %xor.i, 6
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %add1.i7
  store i32 %add9, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit
  %8 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %8, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add10, ptr %x.addr.i8, align 4
  %and.i = and i32 %add10, 3
  %add.i9 = add nsw i32 %add10, %and.i
  store i32 %add.i9, ptr %s.i, align 4
  %9 = and i32 %add.i9, 1
  %cmp.i10 = icmp eq i32 %9, 0
  %10 = load i32, ptr %s.i, align 4
  %add1.i11 = add nsw i32 %10, 1
  %11 = load i32, ptr %s.i, align 4
  %storemerge = select i1 %cmp.i10, i32 %11, i32 %add1.i11
  store i32 %storemerge, ptr %s.i, align 4
  %12 = load i32, ptr %x.addr.i8, align 4
  %and2.i = shl i32 %12, 1
  %mul3.i = and i32 %and2.i, 8
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %13 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %13, 3
  %14 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %14, -1
  %storemerge152 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge152, ptr %s.i, align 4
  %15 = load i32, ptr %x.addr.i8, align 4
  %and12.i = and i32 %15, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 3
  %add14.i = add nsw i32 %storemerge152, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %16 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %16, 0
  %17 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %17, 5
  %18 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %18, -2
  %storemerge153 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge153, ptr %s.i, align 4
  %19 = load i32, ptr %x.addr.i8, align 4
  %and22.i = shl i32 %19, 2
  %mul23.i = and i32 %and22.i, 24
  %add24.i = add nsw i32 %storemerge153, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %20 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %20, 7
  %21 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %21, -3
  %storemerge154 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge154, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %22 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %22, %storemerge154
  store i32 %add12, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and13 = and i32 %23, 3
  %add14 = add nsw i32 %23, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 %add14, ptr %x.addr.i13, align 4
  switch i32 %and13, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end
  %24 = load i32, ptr %x.addr.i13, align 4
  %add.i15 = add nsw i32 %24, 7
  store i32 %add.i15, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

sw.bb1.i:                                         ; preds = %if.end
  %25 = load i32, ptr %x.addr.i13, align 4
  %xor.i16 = xor i32 %25, 9
  store i32 %xor.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

sw.bb2.i:                                         ; preds = %if.end
  %26 = load i32, ptr %x.addr.i13, align 4
  %mul.i17 = mul nsw i32 %26, 5
  store i32 %mul.i17, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

sw.default.i:                                     ; preds = %if.end
  %27 = load i32, ptr %x.addr.i13, align 4
  %sub.i18 = add nsw i32 %27, -4
  store i32 %sub.i18, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %28 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %29 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %29, %28
  store i32 %add16, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %31 = and i32 %30, 1
  %tobool19.not.not = icmp eq i32 %31, 0
  br i1 %tobool19.not.not, label %if.then20, label %if.end23

if.then20:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit
  %call21 = call noundef i32 @_ZL20packet_038_recursivei(i32 noundef 1)
  %32 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %32, %call21
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit
  %33 = load i32, ptr %x.addr, align 4
  %add24 = shl i32 %33, 1
  %add.i21 = add i32 %add24, 15
  %34 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %34, %add.i21
  store i32 %add26, ptr %total, align 4
  %and27 = and i32 %33, 3
  %35 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %35, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i24)
  store i32 %add28, ptr %x.addr.i24, align 4
  switch i32 %and27, label %sw.default.i33 [
    i32 0, label %sw.bb.i27
    i32 1, label %sw.bb1.i29
    i32 2, label %sw.bb2.i31
  ]

sw.bb.i27:                                        ; preds = %if.end23
  %36 = load i32, ptr %x.addr.i24, align 4
  %add.i26 = add nsw i32 %36, 3
  store i32 %add.i26, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit

sw.bb1.i29:                                       ; preds = %if.end23
  %37 = load i32, ptr %x.addr.i24, align 4
  %xor.i28 = xor i32 %37, 16
  store i32 %xor.i28, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit

sw.bb2.i31:                                       ; preds = %if.end23
  %38 = load i32, ptr %x.addr.i24, align 4
  %mul.i30 = mul nsw i32 %38, 3
  store i32 %mul.i30, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit

sw.default.i33:                                   ; preds = %if.end23
  %39 = load i32, ptr %x.addr.i24, align 4
  %sub.i32 = add nsw i32 %39, -4
  store i32 %sub.i32, ptr %retval.i22, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit: ; preds = %sw.bb.i27, %sw.bb1.i29, %sw.bb2.i31, %sw.default.i33
  %40 = load i32, ptr %retval.i22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i24)
  %41 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %41, %40
  store i32 %add30, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %42, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit
  %43 = load i32, ptr %x.addr, align 4
  %add.i36 = add nsw i32 %43, 16
  %mul.i37 = mul nsw i32 %add.i36, 5
  %shr.i38 = ashr i32 %add.i36, 1
  %xor.i39 = xor i32 %mul.i37, %shr.i38
  %add1.i40 = add nsw i32 %xor.i39, 4
  %44 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %44, %add1.i40
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit
  %45 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %45, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i42)
  store i32 %add39, ptr %x.addr.i41, align 4
  %and.i43 = and i32 %add39, 3
  %add.i44 = add nsw i32 %add39, %and.i43
  store i32 %add.i44, ptr %s.i42, align 4
  %46 = and i32 %add.i44, 1
  %cmp.i46 = icmp eq i32 %46, 0
  %47 = load i32, ptr %s.i42, align 4
  %add1.i48 = add nsw i32 %47, 1
  %48 = load i32, ptr %s.i42, align 4
  %storemerge155 = select i1 %cmp.i46, i32 %48, i32 %add1.i48
  store i32 %storemerge155, ptr %s.i42, align 4
  %49 = load i32, ptr %x.addr.i41, align 4
  %and2.i50 = shl i32 %49, 1
  %mul3.i51 = and i32 %and2.i50, 8
  %add4.i52 = add nsw i32 %storemerge155, %mul3.i51
  store i32 %add4.i52, ptr %s.i42, align 4
  %rem5.i53 = srem i32 %add4.i52, 3
  %cmp6.i54 = icmp eq i32 %rem5.i53, 0
  %50 = load i32, ptr %s.i42, align 4
  %add10.i58 = add nsw i32 %50, 3
  %51 = load i32, ptr %s.i42, align 4
  %sub8.i56 = add nsw i32 %51, -1
  %storemerge156 = select i1 %cmp6.i54, i32 %sub8.i56, i32 %add10.i58
  store i32 %storemerge156, ptr %s.i42, align 4
  %52 = load i32, ptr %x.addr.i41, align 4
  %and12.i60 = and i32 %52, 5
  %mul13.i61 = mul nuw nsw i32 %and12.i60, 3
  %add14.i62 = add nsw i32 %storemerge156, %mul13.i61
  store i32 %add14.i62, ptr %s.i42, align 4
  %53 = and i32 %add14.i62, 3
  %cmp16.i64 = icmp eq i32 %53, 0
  %54 = load i32, ptr %s.i42, align 4
  %add20.i68 = add nsw i32 %54, 5
  %55 = load i32, ptr %s.i42, align 4
  %sub18.i66 = add nsw i32 %55, -2
  %storemerge157 = select i1 %cmp16.i64, i32 %sub18.i66, i32 %add20.i68
  store i32 %storemerge157, ptr %s.i42, align 4
  %56 = load i32, ptr %x.addr.i41, align 4
  %and22.i70 = shl i32 %56, 2
  %mul23.i71 = and i32 %and22.i70, 24
  %add24.i72 = add nsw i32 %storemerge157, %mul23.i71
  store i32 %add24.i72, ptr %s.i42, align 4
  %rem25.i73 = srem i32 %add24.i72, 5
  %cmp26.i74 = icmp eq i32 %rem25.i73, 0
  %57 = load i32, ptr %s.i42, align 4
  %add30.i78 = add nsw i32 %57, 7
  %58 = load i32, ptr %s.i42, align 4
  %sub28.i76 = add nsw i32 %58, -3
  %storemerge158 = select i1 %cmp26.i74, i32 %sub28.i76, i32 %add30.i78
  store i32 %storemerge158, ptr %s.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i42)
  %59 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %59, %storemerge158
  store i32 %add41, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %60, 3
  %add43 = add nsw i32 %60, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i82)
  store i32 %add43, ptr %x.addr.i82, align 4
  switch i32 %and42, label %sw.default.i91 [
    i32 0, label %sw.bb.i85
    i32 1, label %sw.bb1.i87
    i32 2, label %sw.bb2.i89
  ]

sw.bb.i85:                                        ; preds = %if.end38
  %61 = load i32, ptr %x.addr.i82, align 4
  %add.i84 = add nsw i32 %61, 7
  store i32 %add.i84, ptr %retval.i80, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit

sw.bb1.i87:                                       ; preds = %if.end38
  %62 = load i32, ptr %x.addr.i82, align 4
  %xor.i86 = xor i32 %62, 9
  store i32 %xor.i86, ptr %retval.i80, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit

sw.bb2.i89:                                       ; preds = %if.end38
  %63 = load i32, ptr %x.addr.i82, align 4
  %mul.i88 = mul nsw i32 %63, 5
  store i32 %mul.i88, ptr %retval.i80, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit

sw.default.i91:                                   ; preds = %if.end38
  %64 = load i32, ptr %x.addr.i82, align 4
  %sub.i90 = add nsw i32 %64, -4
  store i32 %sub.i90, ptr %retval.i80, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit: ; preds = %sw.bb.i85, %sw.bb1.i87, %sw.bb2.i89, %sw.default.i91
  %65 = load i32, ptr %retval.i80, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i82)
  %66 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %66, %65
  store i32 %add45, ptr %total, align 4
  %67 = load i32, ptr %x.addr, align 4
  %68 = and i32 %67, 1
  %tobool48.not.not = icmp eq i32 %68, 0
  br i1 %tobool48.not.not, label %if.then49, label %if.end52

if.then49:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit
  %call50 = call noundef i32 @_ZL20packet_038_recursivei(i32 noundef 3)
  %69 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %69, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_10.exit
  %70 = load i32, ptr %x.addr, align 4
  %71 = mul i32 %70, 5
  %add.i94 = add i32 %71, 61
  %72 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %72, %add.i94
  store i32 %add55, ptr %total, align 4
  %and56 = and i32 %70, 3
  %73 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i97)
  store i32 %and56, ptr %mode.addr.i95, align 4
  %add.i98 = add nsw i32 %73, 16
  store i32 %add.i98, ptr %t.i97, align 4
  %cmp.i99 = icmp ult i32 %and56, 2
  br i1 %cmp.i99, label %cond.true.i102, label %cond.false.i104

cond.true.i102:                                   ; preds = %if.end52
  %74 = load i32, ptr %t.i97, align 4
  %75 = load i32, ptr %mode.addr.i95, align 4
  %add1.i100 = add nsw i32 %75, 1
  %mul.i101 = mul nsw i32 %74, %add1.i100
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_13.exit

cond.false.i104:                                  ; preds = %if.end52
  %76 = load i32, ptr %t.i97, align 4
  %77 = load i32, ptr %mode.addr.i95, align 4
  %sub.i103 = sub nsw i32 %76, %77
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_13.exit: ; preds = %cond.true.i102, %cond.false.i104
  %cond.i105 = phi i32 [ %mul.i101, %cond.true.i102 ], [ %sub.i103, %cond.false.i104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i97)
  %78 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %78, %cond.i105
  store i32 %add59, ptr %total, align 4
  %79 = load i32, ptr %x.addr, align 4
  %and61 = and i32 %79, 1
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end67, label %if.then63

if.then63:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_13.exit
  %80 = load i32, ptr %x.addr, align 4
  %add.i108 = add nsw i32 %80, 17
  %mul.i109 = mul nsw i32 %add.i108, 6
  %shr.i110 = ashr i32 %add.i108, 1
  %xor.i111 = xor i32 %mul.i109, %shr.i110
  %add1.i112 = add nsw i32 %xor.i111, 10
  %81 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %81, %add1.i112
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_13.exit
  %82 = load i32, ptr %x.addr, align 4
  %add68 = add nsw i32 %82, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i114)
  store i32 %add68, ptr %x.addr.i113, align 4
  %and.i115 = and i32 %add68, 3
  %add.i116 = add nsw i32 %add68, %and.i115
  store i32 %add.i116, ptr %s.i114, align 4
  %83 = and i32 %add.i116, 1
  %cmp.i118 = icmp eq i32 %83, 0
  %84 = load i32, ptr %s.i114, align 4
  %add1.i120 = add nsw i32 %84, 1
  %85 = load i32, ptr %s.i114, align 4
  %storemerge159 = select i1 %cmp.i118, i32 %85, i32 %add1.i120
  store i32 %storemerge159, ptr %s.i114, align 4
  %86 = load i32, ptr %x.addr.i113, align 4
  %and2.i122 = shl i32 %86, 1
  %mul3.i123 = and i32 %and2.i122, 8
  %add4.i124 = add nsw i32 %storemerge159, %mul3.i123
  store i32 %add4.i124, ptr %s.i114, align 4
  %rem5.i125 = srem i32 %add4.i124, 3
  %cmp6.i126 = icmp eq i32 %rem5.i125, 0
  %87 = load i32, ptr %s.i114, align 4
  %add10.i130 = add nsw i32 %87, 3
  %88 = load i32, ptr %s.i114, align 4
  %sub8.i128 = add nsw i32 %88, -1
  %storemerge160 = select i1 %cmp6.i126, i32 %sub8.i128, i32 %add10.i130
  store i32 %storemerge160, ptr %s.i114, align 4
  %89 = load i32, ptr %x.addr.i113, align 4
  %and12.i132 = and i32 %89, 5
  %mul13.i133 = mul nuw nsw i32 %and12.i132, 3
  %add14.i134 = add nsw i32 %storemerge160, %mul13.i133
  store i32 %add14.i134, ptr %s.i114, align 4
  %90 = and i32 %add14.i134, 3
  %cmp16.i136 = icmp eq i32 %90, 0
  %91 = load i32, ptr %s.i114, align 4
  %add20.i140 = add nsw i32 %91, 5
  %92 = load i32, ptr %s.i114, align 4
  %sub18.i138 = add nsw i32 %92, -2
  %storemerge161 = select i1 %cmp16.i136, i32 %sub18.i138, i32 %add20.i140
  store i32 %storemerge161, ptr %s.i114, align 4
  %93 = load i32, ptr %x.addr.i113, align 4
  %and22.i142 = shl i32 %93, 2
  %mul23.i143 = and i32 %and22.i142, 24
  %add24.i144 = add nsw i32 %storemerge161, %mul23.i143
  store i32 %add24.i144, ptr %s.i114, align 4
  %rem25.i145 = srem i32 %add24.i144, 5
  %cmp26.i146 = icmp eq i32 %rem25.i145, 0
  %94 = load i32, ptr %s.i114, align 4
  %add30.i150 = add nsw i32 %94, 7
  %95 = load i32, ptr %s.i114, align 4
  %sub28.i148 = add nsw i32 %95, -3
  %storemerge162 = select i1 %cmp26.i146, i32 %sub28.i148, i32 %add30.i150
  store i32 %storemerge162, ptr %s.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i114)
  %96 = load i32, ptr %total, align 4
  %add70 = add nsw i32 %96, %storemerge162
  store i32 %add70, ptr %total, align 4
  ret i32 %add70
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_038_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_038_recursivei(i32 noundef %sub)
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
