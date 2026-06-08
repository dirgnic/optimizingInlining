; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_012.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_012.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_012_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i108 = alloca i32, align 4
  %out.i110 = alloca i32, align 4
  %mode.addr.i96 = alloca i32, align 4
  %out.i98 = alloca i32, align 4
  %mode.addr.i84 = alloca i32, align 4
  %out.i86 = alloca i32, align 4
  %mode.addr.i38 = alloca i32, align 4
  %out.i40 = alloca i32, align 4
  %x.addr.i24 = alloca i32, align 4
  %s.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add24, ptr %x.addr.i24, align 4
  %and.i25 = shl i32 %12, 1
  %mul.i = and i32 %and.i25, 6
  %add.i26 = add nsw i32 %add24, %mul.i
  store i32 %add.i26, ptr %s.i, align 4
  %13 = and i32 %add.i26, 1
  %cmp.i = icmp eq i32 %13, 0
  %14 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %14, 1
  %15 = load i32, ptr %s.i, align 4
  %sub.i27 = add nsw i32 %15, -2
  %storemerge = select i1 %cmp.i, i32 %sub.i27, i32 %add1.i
  store i32 %storemerge, ptr %s.i, align 4
  %16 = load i32, ptr %x.addr.i24, align 4
  %and2.i = and i32 %16, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 3
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %17 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %17, 3
  %18 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %18, -3
  %storemerge120 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge120, ptr %s.i, align 4
  %19 = load i32, ptr %x.addr.i24, align 4
  %and12.i = shl i32 %19, 2
  %mul13.i = and i32 %and12.i, 20
  %add14.i = add nsw i32 %storemerge120, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %20 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %20, 0
  %21 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %21, 5
  %22 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %22, -4
  %storemerge121 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge121, ptr %s.i, align 4
  %23 = load i32, ptr %x.addr.i24, align 4
  %and22.i = and i32 %23, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 5
  %add24.i = add nsw i32 %storemerge121, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %24 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %24, 7
  %25 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %25, -5
  %storemerge122 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge122, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %26 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %26, %storemerge122
  store i32 %add26, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %28 = mul i32 %27, 3
  %add.i33 = add i32 %28, 56
  %shr.i = ashr i32 %add.i33, 1
  %xor.i34 = xor i32 %add.i33, %shr.i
  %mul1.i = shl nsw i32 %xor.i34, 2
  %add2.i = add nsw i32 %mul1.i, 30
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 31
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i35 = add nsw i32 %mul9.i, 32
  %shr11.i = ashr exact i32 %add10.i35, 1
  %xor12.i = xor i32 %add10.i35, %shr11.i
  %mul13.i36 = mul nsw i32 %xor12.i, 7
  %add14.i37 = add nsw i32 %mul13.i36, 33
  %shr15.i = ashr i32 %add14.i37, 2
  %xor16.i = xor i32 %add14.i37, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 34
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 35
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 36
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %29 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %29, %xor28.i
  store i32 %add29, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %30, 3
  %add31 = add nsw i32 %30, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i40)
  store i32 %and30, ptr %mode.addr.i38, align 4
  store i32 %add31, ptr %out.i40, align 4
  %and.i41 = and i32 %30, 1
  %tobool.i42.not = icmp eq i32 %and.i41, 0
  br i1 %tobool.i42.not, label %if.end.i47, label %if.then.i44

if.then.i44:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit
  %31 = load i32, ptr %out.i40, align 4
  %add.i43 = add nsw i32 %31, 5
  store i32 %add.i43, ptr %out.i40, align 4
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i44, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_5.exit
  %32 = load i32, ptr %mode.addr.i38, align 4
  %and1.i45 = and i32 %32, 2
  %tobool2.i46.not = icmp eq i32 %and1.i45, 0
  br i1 %tobool2.i46.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit, label %if.then3.i49

if.then3.i49:                                     ; preds = %if.end.i47
  %33 = load i32, ptr %out.i40, align 4
  %xor.i48 = xor i32 %33, 15
  store i32 %xor.i48, ptr %out.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit: ; preds = %if.end.i47, %if.then3.i49
  %34 = load i32, ptr %out.i40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i40)
  %35 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %35, %34
  store i32 %add33, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %37 = mul i32 %36, 3
  %add.i53 = add i32 %37, 62
  %shr.i54 = ashr i32 %add.i53, 1
  %xor.i55 = xor i32 %add.i53, %shr.i54
  %mul1.i56 = shl nsw i32 %xor.i55, 2
  %add2.i57 = add nsw i32 %mul1.i56, 30
  %shr3.i58 = ashr i32 %add2.i57, 2
  %xor4.i59 = xor i32 %add2.i57, %shr3.i58
  %mul5.i60 = mul nsw i32 %xor4.i59, 5
  %add6.i61 = add nsw i32 %mul5.i60, 31
  %shr7.i62 = ashr i32 %add6.i61, 3
  %xor8.i63 = xor i32 %add6.i61, %shr7.i62
  %mul9.i64 = mul nsw i32 %xor8.i63, 6
  %add10.i65 = add nsw i32 %mul9.i64, 32
  %shr11.i66 = ashr exact i32 %add10.i65, 1
  %xor12.i67 = xor i32 %add10.i65, %shr11.i66
  %mul13.i68 = mul nsw i32 %xor12.i67, 7
  %add14.i69 = add nsw i32 %mul13.i68, 33
  %shr15.i70 = ashr i32 %add14.i69, 2
  %xor16.i71 = xor i32 %add14.i69, %shr15.i70
  %mul17.i72 = shl nsw i32 %xor16.i71, 3
  %add18.i73 = add nsw i32 %mul17.i72, 34
  %shr19.i74 = ashr i32 %add18.i73, 3
  %xor20.i75 = xor i32 %add18.i73, %shr19.i74
  %mul21.i76 = mul nsw i32 %xor20.i75, 9
  %add22.i77 = add nsw i32 %mul21.i76, 35
  %shr23.i78 = ashr i32 %add22.i77, 1
  %xor24.i79 = xor i32 %add22.i77, %shr23.i78
  %mul25.i80 = mul nsw i32 %xor24.i79, 10
  %add26.i81 = add nsw i32 %mul25.i80, 36
  %shr27.i82 = ashr i32 %add26.i81, 2
  %xor28.i83 = xor i32 %add26.i81, %shr27.i82
  %38 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %38, %xor28.i83
  store i32 %add36, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %39, 3
  %add38 = add nsw i32 %39, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i86)
  store i32 %and37, ptr %mode.addr.i84, align 4
  store i32 %add38, ptr %out.i86, align 4
  %and.i87 = and i32 %39, 1
  %tobool.i88.not = icmp eq i32 %and.i87, 0
  br i1 %tobool.i88.not, label %if.end.i93, label %if.then.i90

if.then.i90:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit
  %40 = load i32, ptr %out.i86, align 4
  %add.i89 = add nsw i32 %40, 5
  store i32 %add.i89, ptr %out.i86, align 4
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.then.i90, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_10.exit
  %41 = load i32, ptr %mode.addr.i84, align 4
  %and1.i91 = and i32 %41, 2
  %tobool2.i92.not = icmp eq i32 %and1.i91, 0
  br i1 %tobool2.i92.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit, label %if.then3.i95

if.then3.i95:                                     ; preds = %if.end.i93
  %42 = load i32, ptr %out.i86, align 4
  %xor.i94 = xor i32 %42, 15
  store i32 %xor.i94, ptr %out.i86, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit: ; preds = %if.end.i93, %if.then3.i95
  %43 = load i32, ptr %out.i86, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i84)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i86)
  %44 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %44, %43
  store i32 %add40, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %and41 = and i32 %45, 3
  %add42 = add nsw i32 %45, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i98)
  store i32 %and41, ptr %mode.addr.i96, align 4
  store i32 %add42, ptr %out.i98, align 4
  %and.i99 = and i32 %45, 1
  %tobool.i100.not = icmp eq i32 %and.i99, 0
  br i1 %tobool.i100.not, label %if.end.i105, label %if.then.i102

if.then.i102:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit
  %46 = load i32, ptr %out.i98, align 4
  %add.i101 = add nsw i32 %46, 5
  store i32 %add.i101, ptr %out.i98, align 4
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.then.i102, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_12.exit
  %47 = load i32, ptr %mode.addr.i96, align 4
  %and1.i103 = and i32 %47, 2
  %tobool2.i104.not = icmp eq i32 %and1.i103, 0
  br i1 %tobool2.i104.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_13.exit, label %if.then3.i107

if.then3.i107:                                    ; preds = %if.end.i105
  %48 = load i32, ptr %out.i98, align 4
  %xor.i106 = xor i32 %48, 15
  store i32 %xor.i106, ptr %out.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_13.exit: ; preds = %if.end.i105, %if.then3.i107
  %49 = load i32, ptr %out.i98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i96)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i98)
  %50 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %50, %49
  store i32 %add44, ptr %total, align 4
  %call45 = call noundef i32 @_ZL18game_012_recursivei(i32 noundef 2)
  %add46 = add nsw i32 %add44, %call45
  store i32 %add46, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %and47 = and i32 %51, 3
  %add48 = add nsw i32 %51, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i108)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i110)
  store i32 %and47, ptr %mode.addr.i108, align 4
  store i32 %add48, ptr %out.i110, align 4
  %and.i111 = and i32 %51, 1
  %tobool.i112.not = icmp eq i32 %and.i111, 0
  br i1 %tobool.i112.not, label %if.end.i117, label %if.then.i114

if.then.i114:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_13.exit
  %52 = load i32, ptr %out.i110, align 4
  %add.i113 = add nsw i32 %52, 5
  store i32 %add.i113, ptr %out.i110, align 4
  br label %if.end.i117

if.end.i117:                                      ; preds = %if.then.i114, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_13.exit
  %53 = load i32, ptr %mode.addr.i108, align 4
  %and1.i115 = and i32 %53, 2
  %tobool2.i116.not = icmp eq i32 %and1.i115, 0
  br i1 %tobool2.i116.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_15.exit, label %if.then3.i119

if.then3.i119:                                    ; preds = %if.end.i117
  %54 = load i32, ptr %out.i110, align 4
  %xor.i118 = xor i32 %54, 15
  store i32 %xor.i118, ptr %out.i110, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_012_15.exit: ; preds = %if.end.i117, %if.then3.i119
  %55 = load i32, ptr %out.i110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i108)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i110)
  %56 = load i32, ptr %total, align 4
  %add50 = add nsw i32 %56, %55
  store i32 %add50, ptr %total, align 4
  ret i32 %add50
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
