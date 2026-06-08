; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_068.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_068.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_068_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i53 = alloca i32, align 4
  %t.i55 = alloca i32, align 4
  %retval.i38 = alloca i32, align 4
  %x.addr.i40 = alloca i32, align 4
  %retval.i18 = alloca i32, align 4
  %x.addr.i20 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i9 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 6
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
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i3, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %cond.i
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %add.i5 = add nsw i32 %5, 9
  %mul.i6 = shl nsw i32 %add.i5, 1
  %shr.i = ashr i32 %add.i5, 1
  %xor.i = xor i32 %mul.i6, %shr.i
  %add1.i7 = add nsw i32 %xor.i, 2
  %and.i = and i32 %add5, 3
  %add3.i = add nsw i32 %add1.i7, %and.i
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %add3.i
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  %call9 = call noundef i32 @_ZL16game_068_large_bi(i32 noundef %add8)
  %add10 = add nsw i32 %add7, %call9
  store i32 %add10, ptr %total, align 4
  %and11 = and i32 %7, 3
  %add12 = add nsw i32 %7, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i9)
  store i32 %add12, ptr %x.addr.i9, align 4
  switch i32 %and11, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %8 = load i32, ptr %x.addr.i9, align 4
  %add.i11 = add nsw i32 %8, 4
  store i32 %add.i11, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %9 = load i32, ptr %x.addr.i9, align 4
  %xor.i12 = xor i32 %9, 5
  store i32 %xor.i12, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %10 = load i32, ptr %x.addr.i9, align 4
  %mul.i13 = mul nsw i32 %10, 5
  store i32 %mul.i13, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %11 = load i32, ptr %x.addr.i9, align 4
  %sub.i14 = add nsw i32 %11, -6
  store i32 %sub.i14, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %12 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i9)
  %13 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %13, %12
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18game_068_recursivei(i32 noundef 1)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add17 = shl i32 %14, 1
  %add.i17 = add i32 %add17, 17
  %add19 = add nsw i32 %add16, %add.i17
  store i32 %add19, ptr %total, align 4
  %and20 = and i32 %14, 3
  %add21 = add nsw i32 %14, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i20)
  store i32 %add21, ptr %x.addr.i20, align 4
  switch i32 %and20, label %sw.default.i29 [
    i32 0, label %sw.bb.i23
    i32 1, label %sw.bb1.i25
    i32 2, label %sw.bb2.i27
  ]

sw.bb.i23:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit
  %15 = load i32, ptr %x.addr.i20, align 4
  %add.i22 = add nsw i32 %15, 11
  store i32 %add.i22, ptr %retval.i18, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit

sw.bb1.i25:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit
  %16 = load i32, ptr %x.addr.i20, align 4
  %xor.i24 = xor i32 %16, 12
  store i32 %xor.i24, ptr %retval.i18, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit

sw.bb2.i27:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit
  %17 = load i32, ptr %x.addr.i20, align 4
  %mul.i26 = mul nsw i32 %17, 3
  store i32 %mul.i26, ptr %retval.i18, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit

sw.default.i29:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_3.exit
  %18 = load i32, ptr %x.addr.i20, align 4
  %sub.i28 = add nsw i32 %18, -6
  store i32 %sub.i28, ptr %retval.i18, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit: ; preds = %sw.bb.i23, %sw.bb1.i25, %sw.bb2.i27, %sw.default.i29
  %19 = load i32, ptr %retval.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i20)
  %20 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %20, %19
  store i32 %add23, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add.i32 = add nsw i32 %21, 13
  %mul.i33 = mul nsw i32 %add.i32, 5
  %shr.i34 = ashr i32 %add.i32, 1
  %xor.i35 = xor i32 %mul.i33, %shr.i34
  %and.i36 = and i32 %21, 3
  %mul2.i = mul nuw nsw i32 %and.i36, 6
  %add3.i37 = add nsw i32 %xor.i35, %mul2.i
  %22 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %22, %add3.i37
  store i32 %add26, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %23, 9
  %call28 = call noundef i32 @_ZL16game_068_large_bi(i32 noundef %add27)
  %add29 = add nsw i32 %add26, %call28
  store i32 %add29, ptr %total, align 4
  %and30 = and i32 %23, 3
  %add31 = add nsw i32 %23, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i40)
  store i32 %add31, ptr %x.addr.i40, align 4
  switch i32 %and30, label %sw.default.i49 [
    i32 0, label %sw.bb.i43
    i32 1, label %sw.bb1.i45
    i32 2, label %sw.bb2.i47
  ]

sw.bb.i43:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit
  %24 = load i32, ptr %x.addr.i40, align 4
  %add.i42 = add nsw i32 %24, 4
  store i32 %add.i42, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit

sw.bb1.i45:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit
  %25 = load i32, ptr %x.addr.i40, align 4
  %xor.i44 = xor i32 %25, 5
  store i32 %xor.i44, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit

sw.bb2.i47:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit
  %26 = load i32, ptr %x.addr.i40, align 4
  %mul.i46 = mul nsw i32 %26, 5
  store i32 %mul.i46, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit

sw.default.i49:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit
  %27 = load i32, ptr %x.addr.i40, align 4
  %sub.i48 = add nsw i32 %27, -6
  store i32 %sub.i48, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit: ; preds = %sw.bb.i43, %sw.bb1.i45, %sw.bb2.i47, %sw.default.i49
  %28 = load i32, ptr %retval.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i40)
  %29 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %29, %28
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL18game_068_recursivei(i32 noundef 3)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %31 = mul i32 %30, 5
  %add.i52 = add i32 %31, 63
  %add38 = add nsw i32 %add35, %add.i52
  store i32 %add38, ptr %total, align 4
  %and39 = and i32 %30, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i53)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i55)
  store i32 %and39, ptr %mode.addr.i53, align 4
  %add.i56 = add nsw i32 %30, 16
  store i32 %add.i56, ptr %t.i55, align 4
  %cmp.i57 = icmp ult i32 %and39, 2
  br i1 %cmp.i57, label %cond.true.i60, label %cond.false.i62

cond.true.i60:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit
  %32 = load i32, ptr %t.i55, align 4
  %33 = load i32, ptr %mode.addr.i53, align 4
  %add1.i58 = add nsw i32 %33, 1
  %mul.i59 = mul nsw i32 %32, %add1.i58
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_11.exit

cond.false.i62:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_8.exit
  %34 = load i32, ptr %t.i55, align 4
  %35 = load i32, ptr %mode.addr.i53, align 4
  %sub.i61 = sub nsw i32 %34, %35
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_11.exit: ; preds = %cond.true.i60, %cond.false.i62
  %cond.i63 = phi i32 [ %mul.i59, %cond.true.i60 ], [ %sub.i61, %cond.false.i62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i53)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i55)
  %36 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %36, %cond.i63
  store i32 %add42, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %add43 = add i32 %37, 2
  %add.i66 = add nsw i32 %37, 25
  %mul.i67 = mul nsw i32 %add.i66, 6
  %shr.i68 = ashr i32 %add.i66, 1
  %xor.i69 = xor i32 %mul.i67, %shr.i68
  %add1.i70 = add nsw i32 %xor.i69, 6
  %and.i71 = and i32 %add43, 3
  %mul2.i72 = mul nuw nsw i32 %and.i71, 5
  %add3.i73 = add nsw i32 %add1.i70, %mul2.i72
  %38 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %38, %add3.i73
  store i32 %add45, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %39, 15
  %call47 = call noundef i32 @_ZL16game_068_large_bi(i32 noundef %add46)
  %add48 = add nsw i32 %add45, %call47
  store i32 %add48, ptr %total, align 4
  ret i32 %add48
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_068_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 9
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 10
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -1
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 11
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -2
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 12
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -3
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %13, 7
  %mul33 = mul nuw nsw i32 %and32, 13
  %add34 = add nsw i32 %storemerge3, %mul33
  store i32 %add34, ptr %s, align 4
  %rem35 = srem i32 %add34, 6
  %cmp36 = icmp eq i32 %rem35, 0
  %14 = load i32, ptr %s, align 4
  %add40 = add nsw i32 %14, 9
  %15 = load i32, ptr %s, align 4
  %sub38 = add nsw i32 %15, -4
  %storemerge4 = select i1 %cmp36, i32 %sub38, i32 %add40
  store i32 %storemerge4, ptr %s, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %16, 8
  %mul43 = mul nuw nsw i32 %and42, 14
  %add44 = add nsw i32 %storemerge4, %mul43
  store i32 %add44, ptr %s, align 4
  %rem45 = srem i32 %add44, 7
  %cmp46 = icmp eq i32 %rem45, 0
  %17 = load i32, ptr %s, align 4
  %add50 = add nsw i32 %17, 11
  %18 = load i32, ptr %s, align 4
  %sub48 = add nsw i32 %18, -5
  %storemerge5 = select i1 %cmp46, i32 %sub48, i32 %add50
  store i32 %storemerge5, ptr %s, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and52 = and i32 %19, 9
  %mul53 = mul nuw nsw i32 %and52, 15
  %add54 = add nsw i32 %storemerge5, %mul53
  store i32 %add54, ptr %s, align 4
  %20 = and i32 %add54, 7
  %cmp56 = icmp eq i32 %20, 0
  %21 = load i32, ptr %s, align 4
  %add60 = add nsw i32 %21, 13
  %22 = load i32, ptr %s, align 4
  %sub58 = add nsw i32 %22, -6
  %storemerge6 = select i1 %cmp56, i32 %sub58, i32 %add60
  store i32 %storemerge6, ptr %s, align 4
  ret i32 %storemerge6
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_068_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_068_recursivei(i32 noundef %sub)
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
