; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_012.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_012.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_012_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i60 = alloca i32, align 4
  %out.i62 = alloca i32, align 4
  %mode.addr.i48 = alloca i32, align 4
  %out.i50 = alloca i32, align 4
  %mode.addr.i36 = alloca i32, align 4
  %out.i38 = alloca i32, align 4
  %mode.addr.i24 = alloca i32, align 4
  %out.i26 = alloca i32, align 4
  %mode.addr.i8 = alloca i32, align 4
  %out.i10 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %x, ptr %out.i, align 4
  %and.i = and i32 %x, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 5
  store i32 %add.i, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %2, 15
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_0.exit: ; preds = %if.end.i, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %4, %3
  store i32 %add1, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %sub.i = add nsw i32 %5, -2
  %add4 = add nsw i32 %add1, %sub.i
  %sub.i3 = add nsw i32 %5, -2
  %add7 = add nsw i32 %add4, %sub.i3
  %sub.i5 = add nsw i32 %5, -2
  %add10 = add nsw i32 %add7, %sub.i5
  store i32 %add10, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %sub.i7 = add nsw i32 %6, -2
  %add13 = add nsw i32 %add10, %sub.i7
  store i32 %add13, ptr %total, align 4
  %and14 = and i32 %6, 3
  %add15 = add nsw i32 %6, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i10)
  store i32 %and14, ptr %mode.addr.i8, align 4
  store i32 %add15, ptr %out.i10, align 4
  %and.i11 = and i32 %6, 1
  %tobool.i12.not = icmp eq i32 %and.i11, 0
  br i1 %tobool.i12.not, label %if.end.i17, label %if.then.i14

if.then.i14:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_0.exit
  %7 = load i32, ptr %out.i10, align 4
  %add.i13 = add nsw i32 %7, 5
  store i32 %add.i13, ptr %out.i10, align 4
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then.i14, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_0.exit
  %8 = load i32, ptr %mode.addr.i8, align 4
  %and1.i15 = and i32 %8, 2
  %tobool2.i16.not = icmp eq i32 %and1.i15, 0
  br i1 %tobool2.i16.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit, label %if.then3.i19

if.then3.i19:                                     ; preds = %if.end.i17
  %9 = load i32, ptr %out.i10, align 4
  %xor.i18 = xor i32 %9, 15
  store i32 %xor.i18, ptr %out.i10, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit: ; preds = %if.end.i17, %if.then3.i19
  %10 = load i32, ptr %out.i10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i10)
  %11 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %11, %10
  store i32 %add17, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %sub.i21 = add nsw i32 %12, -2
  %add20 = add nsw i32 %add17, %sub.i21
  %sub.i23 = add nsw i32 %12, -2
  %add23 = add nsw i32 %add20, %sub.i23
  store i32 %add23, ptr %total, align 4
  %add24 = add nsw i32 %12, 8
  %call25 = call noundef i32 @_ZL16game_012_large_ai(i32 noundef %add24)
  %add26 = add nsw i32 %add23, %call25
  store i32 %add26, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %13, 9
  %call28 = call noundef i32 @_ZL16game_012_large_bi(i32 noundef %add27)
  %add29 = add nsw i32 %add26, %call28
  store i32 %add29, ptr %total, align 4
  %and30 = and i32 %13, 3
  %add31 = add nsw i32 %13, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i26)
  store i32 %and30, ptr %mode.addr.i24, align 4
  store i32 %add31, ptr %out.i26, align 4
  %and.i27 = and i32 %13, 1
  %tobool.i28.not = icmp eq i32 %and.i27, 0
  br i1 %tobool.i28.not, label %if.end.i33, label %if.then.i30

if.then.i30:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit
  %14 = load i32, ptr %out.i26, align 4
  %add.i29 = add nsw i32 %14, 5
  store i32 %add.i29, ptr %out.i26, align 4
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i30, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit
  %15 = load i32, ptr %mode.addr.i24, align 4
  %and1.i31 = and i32 %15, 2
  %tobool2.i32.not = icmp eq i32 %and1.i31, 0
  br i1 %tobool2.i32.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_8.exit, label %if.then3.i35

if.then3.i35:                                     ; preds = %if.end.i33
  %16 = load i32, ptr %out.i26, align 4
  %xor.i34 = xor i32 %16, 15
  store i32 %xor.i34, ptr %out.i26, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_8.exit: ; preds = %if.end.i33, %if.then3.i35
  %17 = load i32, ptr %out.i26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i26)
  %18 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %18, %17
  store i32 %add33, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %add34 = add nsw i32 %19, 11
  %call35 = call noundef i32 @_ZL16game_012_large_bi(i32 noundef %add34)
  %add36 = add nsw i32 %add33, %call35
  store i32 %add36, ptr %total, align 4
  %and37 = and i32 %19, 3
  %add38 = add nsw i32 %19, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i38)
  store i32 %and37, ptr %mode.addr.i36, align 4
  store i32 %add38, ptr %out.i38, align 4
  %and.i39 = and i32 %19, 1
  %tobool.i40.not = icmp eq i32 %and.i39, 0
  br i1 %tobool.i40.not, label %if.end.i45, label %if.then.i42

if.then.i42:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_8.exit
  %20 = load i32, ptr %out.i38, align 4
  %add.i41 = add nsw i32 %20, 5
  store i32 %add.i41, ptr %out.i38, align 4
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then.i42, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_8.exit
  %21 = load i32, ptr %mode.addr.i36, align 4
  %and1.i43 = and i32 %21, 2
  %tobool2.i44.not = icmp eq i32 %and1.i43, 0
  br i1 %tobool2.i44.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_9.exit, label %if.then3.i47

if.then3.i47:                                     ; preds = %if.end.i45
  %22 = load i32, ptr %out.i38, align 4
  %xor.i46 = xor i32 %22, 15
  store i32 %xor.i46, ptr %out.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_9.exit: ; preds = %if.end.i45, %if.then3.i47
  %23 = load i32, ptr %out.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i38)
  %24 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %24, %23
  store i32 %add40, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and41 = and i32 %25, 3
  %add42 = add nsw i32 %25, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i50)
  store i32 %and41, ptr %mode.addr.i48, align 4
  store i32 %add42, ptr %out.i50, align 4
  %and.i51 = and i32 %25, 1
  %tobool.i52.not = icmp eq i32 %and.i51, 0
  br i1 %tobool.i52.not, label %if.end.i57, label %if.then.i54

if.then.i54:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_9.exit
  %26 = load i32, ptr %out.i50, align 4
  %add.i53 = add nsw i32 %26, 5
  store i32 %add.i53, ptr %out.i50, align 4
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i54, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_9.exit
  %27 = load i32, ptr %mode.addr.i48, align 4
  %and1.i55 = and i32 %27, 2
  %tobool2.i56.not = icmp eq i32 %and1.i55, 0
  br i1 %tobool2.i56.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit, label %if.then3.i59

if.then3.i59:                                     ; preds = %if.end.i57
  %28 = load i32, ptr %out.i50, align 4
  %xor.i58 = xor i32 %28, 15
  store i32 %xor.i58, ptr %out.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit: ; preds = %if.end.i57, %if.then3.i59
  %29 = load i32, ptr %out.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i50)
  %30 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %30, %29
  store i32 %add44, ptr %total, align 4
  %call45 = call noundef i32 @_ZL18game_012_recursivei(i32 noundef 2)
  %add46 = add nsw i32 %add44, %call45
  store i32 %add46, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %and47 = and i32 %31, 3
  %add48 = add nsw i32 %31, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i62)
  store i32 %and47, ptr %mode.addr.i60, align 4
  store i32 %add48, ptr %out.i62, align 4
  %and.i63 = and i32 %31, 1
  %tobool.i64.not = icmp eq i32 %and.i63, 0
  br i1 %tobool.i64.not, label %if.end.i69, label %if.then.i66

if.then.i66:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit
  %32 = load i32, ptr %out.i62, align 4
  %add.i65 = add nsw i32 %32, 5
  store i32 %add.i65, ptr %out.i62, align 4
  br label %if.end.i69

if.end.i69:                                       ; preds = %if.then.i66, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit
  %33 = load i32, ptr %mode.addr.i60, align 4
  %and1.i67 = and i32 %33, 2
  %tobool2.i68.not = icmp eq i32 %and1.i67, 0
  br i1 %tobool2.i68.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit, label %if.then3.i71

if.then3.i71:                                     ; preds = %if.end.i69
  %34 = load i32, ptr %out.i62, align 4
  %xor.i70 = xor i32 %34, 15
  store i32 %xor.i70, ptr %out.i62, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit: ; preds = %if.end.i69, %if.then3.i71
  %35 = load i32, ptr %out.i62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i60)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i62)
  %36 = load i32, ptr %total, align 4
  %add50 = add nsw i32 %36, %35
  store i32 %add50, ptr %total, align 4
  ret i32 %add50
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_012_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 1
  %mul = and i32 %and, 6
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -2
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 3
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -3
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = shl i32 %6, 2
  %mul13 = and i32 %and12, 20
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -4
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 5
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -5
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_012_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 29
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 30
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 31
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 32
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 33
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 34
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 35
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 36
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_012_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_012_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_012_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
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
