; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_015.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_015.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_015_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i222 = alloca i32, align 4
  %out.i224 = alloca i32, align 4
  %mode.addr.i210 = alloca i32, align 4
  %out.i212 = alloca i32, align 4
  %x.addr.i136 = alloca i32, align 4
  %s.i137 = alloca i32, align 4
  %mode.addr.i124 = alloca i32, align 4
  %out.i126 = alloca i32, align 4
  %x.addr.i50 = alloca i32, align 4
  %s.i51 = alloca i32, align 4
  %mode.addr.i38 = alloca i32, align 4
  %out.i40 = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %out.i28 = alloca i32, align 4
  %x.addr.i16 = alloca i32, align 4
  %s.i17 = alloca i32, align 4
  %mode.addr.i4 = alloca i32, align 4
  %out.i6 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 3, ptr %mode.addr.i, align 4
  store i32 2, ptr %out.i, align 4
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 8
  store i32 %add.i, ptr %out.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %2 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %2, 18
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_0.exit: ; preds = %entry, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and = and i32 %5, 7
  %mul.i = mul nuw nsw i32 %and, 3
  %add.i2 = or i32 %mul.i, 32
  %6 = lshr i32 %add.i2, 1
  %xor.i3 = xor i32 %add.i2, %6
  %mul1.i = shl nuw nsw i32 %xor.i3, 2
  %add2.i = add nuw nsw i32 %mul1.i, 33
  %shr3.i = lshr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 34
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 35
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 36
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 37
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 38
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 39
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %7 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %7, %xor28.i
  store i32 %add2, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %8, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i6)
  store i32 1, ptr %mode.addr.i4, align 4
  store i32 %and3, ptr %out.i6, align 4
  %9 = load i32, ptr %out.i6, align 4
  %add.i9 = add nsw i32 %9, 8
  store i32 %add.i9, ptr %out.i6, align 4
  %10 = load i32, ptr %mode.addr.i4, align 4
  %and1.i11 = and i32 %10, 2
  %tobool2.i12.not = icmp eq i32 %and1.i11, 0
  br i1 %tobool2.i12.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_2.exit, label %if.then3.i15

if.then3.i15:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_0.exit
  %11 = load i32, ptr %out.i6, align 4
  %xor.i14 = xor i32 %11, 18
  store i32 %xor.i14, ptr %out.i6, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_2.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_0.exit, %if.then3.i15
  %12 = load i32, ptr %out.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i6)
  %13 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %13, %12
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_015_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %14, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i17)
  store i32 %and8, ptr %x.addr.i16, align 4
  %and.i18 = and i32 %14, 3
  %mul.i19 = mul nuw nsw i32 %and.i18, 5
  %add.i20 = add nuw nsw i32 %and8, %mul.i19
  store i32 %add.i20, ptr %s.i17, align 4
  %rem.i = and i32 %add.i20, 1
  %cmp.i = icmp eq i32 %rem.i, 0
  %15 = load i32, ptr %s.i17, align 4
  %add1.i = add nsw i32 %15, 1
  %16 = load i32, ptr %s.i17, align 4
  %storemerge = select i1 %cmp.i, i32 %16, i32 %add1.i
  store i32 %storemerge, ptr %s.i17, align 4
  %17 = load i32, ptr %x.addr.i16, align 4
  %and2.i = and i32 %17, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 6
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i17, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %18 = load i32, ptr %s.i17, align 4
  %add10.i23 = add nsw i32 %18, 3
  %19 = load i32, ptr %s.i17, align 4
  %sub8.i = add nsw i32 %19, -1
  %storemerge234 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i23
  store i32 %storemerge234, ptr %s.i17, align 4
  %20 = load i32, ptr %x.addr.i16, align 4
  %and12.i = and i32 %20, 5
  %mul13.i24 = mul nuw nsw i32 %and12.i, 7
  %add14.i25 = add nsw i32 %storemerge234, %mul13.i24
  store i32 %add14.i25, ptr %s.i17, align 4
  %21 = and i32 %add14.i25, 3
  %cmp16.i = icmp eq i32 %21, 0
  %22 = load i32, ptr %s.i17, align 4
  %add20.i = add nsw i32 %22, 5
  %23 = load i32, ptr %s.i17, align 4
  %sub18.i = add nsw i32 %23, -2
  %storemerge235 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge235, ptr %s.i17, align 4
  %24 = load i32, ptr %x.addr.i16, align 4
  %and22.i = shl i32 %24, 3
  %mul23.i = and i32 %and22.i, 48
  %add24.i = add nsw i32 %storemerge235, %mul23.i
  store i32 %add24.i, ptr %s.i17, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %25 = load i32, ptr %s.i17, align 4
  %add30.i = add nsw i32 %25, 7
  %26 = load i32, ptr %s.i17, align 4
  %sub28.i = add nsw i32 %26, -3
  %storemerge236 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge236, ptr %s.i17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i17)
  %27 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %27, %storemerge236
  store i32 %add10, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %28, 3
  %and12 = and i32 %28, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i28)
  store i32 %and11, ptr %mode.addr.i26, align 4
  store i32 %and12, ptr %out.i28, align 4
  %and.i29 = and i32 %28, 1
  %tobool.i30.not = icmp eq i32 %and.i29, 0
  br i1 %tobool.i30.not, label %if.end.i35, label %if.then.i32

if.then.i32:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_2.exit
  %29 = load i32, ptr %out.i28, align 4
  %add.i31 = add nsw i32 %29, 8
  store i32 %add.i31, ptr %out.i28, align 4
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.then.i32, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_2.exit
  %30 = load i32, ptr %mode.addr.i26, align 4
  %and1.i33 = and i32 %30, 2
  %tobool2.i34.not = icmp eq i32 %and1.i33, 0
  br i1 %tobool2.i34.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_5.exit, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i35
  %31 = load i32, ptr %out.i28, align 4
  %xor.i36 = xor i32 %31, 18
  store i32 %xor.i36, ptr %out.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_5.exit: ; preds = %if.end.i35, %if.then3.i37
  %32 = load i32, ptr %out.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i28)
  %33 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %33, %32
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i40)
  store i32 1, ptr %mode.addr.i38, align 4
  store i32 8, ptr %out.i40, align 4
  %34 = load i32, ptr %out.i40, align 4
  %add.i43 = add nsw i32 %34, 8
  store i32 %add.i43, ptr %out.i40, align 4
  %35 = load i32, ptr %mode.addr.i38, align 4
  %and1.i45 = and i32 %35, 2
  %tobool2.i46.not = icmp eq i32 %and1.i45, 0
  br i1 %tobool2.i46.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_6.exit, label %if.then3.i49

if.then3.i49:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_5.exit
  %36 = load i32, ptr %out.i40, align 4
  %xor.i48 = xor i32 %36, 18
  store i32 %xor.i48, ptr %out.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_5.exit, %if.then3.i49
  %37 = load i32, ptr %out.i40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i40)
  %38 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %38, %37
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL20matrix_015_recursivei(i32 noundef 3)
  %add18 = add nsw i32 %add16, %call17
  store i32 %add18, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %39, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i51)
  store i32 %and19, ptr %x.addr.i50, align 4
  %and.i52 = and i32 %39, 3
  %mul.i53 = mul nuw nsw i32 %and.i52, 5
  %add.i54 = add nuw nsw i32 %and19, %mul.i53
  store i32 %add.i54, ptr %s.i51, align 4
  %rem.i55 = and i32 %add.i54, 1
  %cmp.i56 = icmp eq i32 %rem.i55, 0
  %40 = load i32, ptr %s.i51, align 4
  %add1.i58 = add nsw i32 %40, 1
  %41 = load i32, ptr %s.i51, align 4
  %storemerge237 = select i1 %cmp.i56, i32 %41, i32 %add1.i58
  store i32 %storemerge237, ptr %s.i51, align 4
  %42 = load i32, ptr %x.addr.i50, align 4
  %and2.i60 = and i32 %42, 4
  %mul3.i61 = mul nuw nsw i32 %and2.i60, 6
  %add4.i62 = add nsw i32 %storemerge237, %mul3.i61
  store i32 %add4.i62, ptr %s.i51, align 4
  %rem5.i63 = srem i32 %add4.i62, 3
  %cmp6.i64 = icmp eq i32 %rem5.i63, 0
  %43 = load i32, ptr %s.i51, align 4
  %add10.i68 = add nsw i32 %43, 3
  %44 = load i32, ptr %s.i51, align 4
  %sub8.i66 = add nsw i32 %44, -1
  %storemerge238 = select i1 %cmp6.i64, i32 %sub8.i66, i32 %add10.i68
  store i32 %storemerge238, ptr %s.i51, align 4
  %45 = load i32, ptr %x.addr.i50, align 4
  %and12.i70 = and i32 %45, 5
  %mul13.i71 = mul nuw nsw i32 %and12.i70, 7
  %add14.i72 = add nsw i32 %storemerge238, %mul13.i71
  store i32 %add14.i72, ptr %s.i51, align 4
  %46 = and i32 %add14.i72, 3
  %cmp16.i74 = icmp eq i32 %46, 0
  %47 = load i32, ptr %s.i51, align 4
  %add20.i78 = add nsw i32 %47, 5
  %48 = load i32, ptr %s.i51, align 4
  %sub18.i76 = add nsw i32 %48, -2
  %storemerge239 = select i1 %cmp16.i74, i32 %sub18.i76, i32 %add20.i78
  store i32 %storemerge239, ptr %s.i51, align 4
  %49 = load i32, ptr %x.addr.i50, align 4
  %and22.i80 = shl i32 %49, 3
  %mul23.i81 = and i32 %and22.i80, 48
  %add24.i82 = add nsw i32 %storemerge239, %mul23.i81
  store i32 %add24.i82, ptr %s.i51, align 4
  %rem25.i83 = srem i32 %add24.i82, 5
  %cmp26.i84 = icmp eq i32 %rem25.i83, 0
  %50 = load i32, ptr %s.i51, align 4
  %add30.i88 = add nsw i32 %50, 7
  %51 = load i32, ptr %s.i51, align 4
  %sub28.i86 = add nsw i32 %51, -3
  %storemerge240 = select i1 %cmp26.i84, i32 %sub28.i86, i32 %add30.i88
  store i32 %storemerge240, ptr %s.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i51)
  %52 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %52, %storemerge240
  %add23 = add nsw i32 %add21, 93104213
  store i32 %add23, ptr %total, align 4
  %53 = load i32, ptr %x.addr, align 4
  %and24 = and i32 %53, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i124)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i126)
  store i32 1, ptr %mode.addr.i124, align 4
  store i32 %and24, ptr %out.i126, align 4
  %54 = load i32, ptr %out.i126, align 4
  %add.i129 = add nsw i32 %54, 8
  store i32 %add.i129, ptr %out.i126, align 4
  %55 = load i32, ptr %mode.addr.i124, align 4
  %and1.i131 = and i32 %55, 2
  %tobool2.i132.not = icmp eq i32 %and1.i131, 0
  br i1 %tobool2.i132.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_10.exit, label %if.then3.i135

if.then3.i135:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_6.exit
  %56 = load i32, ptr %out.i126, align 4
  %xor.i134 = xor i32 %56, 18
  store i32 %xor.i134, ptr %out.i126, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_6.exit, %if.then3.i135
  %57 = load i32, ptr %out.i126, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i124)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i126)
  %58 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %58, %57
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL20matrix_015_recursivei(i32 noundef 3)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i137)
  store i32 1, ptr %x.addr.i136, align 4
  store i32 6, ptr %s.i137, align 4
  %59 = load i32, ptr %s.i137, align 4
  store i32 %59, ptr %s.i137, align 4
  %60 = load i32, ptr %x.addr.i136, align 4
  %and2.i146 = and i32 %60, 4
  %mul3.i147 = mul nuw nsw i32 %and2.i146, 6
  %add4.i148 = add nsw i32 %59, %mul3.i147
  store i32 %add4.i148, ptr %s.i137, align 4
  %rem5.i149 = srem i32 %add4.i148, 3
  %cmp6.i150 = icmp eq i32 %rem5.i149, 0
  %61 = load i32, ptr %s.i137, align 4
  %add10.i154 = add nsw i32 %61, 3
  %62 = load i32, ptr %s.i137, align 4
  %sub8.i152 = add nsw i32 %62, -1
  %storemerge242 = select i1 %cmp6.i150, i32 %sub8.i152, i32 %add10.i154
  store i32 %storemerge242, ptr %s.i137, align 4
  %63 = load i32, ptr %x.addr.i136, align 4
  %and12.i156 = and i32 %63, 5
  %mul13.i157 = mul nuw nsw i32 %and12.i156, 7
  %add14.i158 = add nsw i32 %storemerge242, %mul13.i157
  store i32 %add14.i158, ptr %s.i137, align 4
  %64 = and i32 %add14.i158, 3
  %cmp16.i160 = icmp eq i32 %64, 0
  %65 = load i32, ptr %s.i137, align 4
  %add20.i164 = add nsw i32 %65, 5
  %66 = load i32, ptr %s.i137, align 4
  %sub18.i162 = add nsw i32 %66, -2
  %storemerge243 = select i1 %cmp16.i160, i32 %sub18.i162, i32 %add20.i164
  store i32 %storemerge243, ptr %s.i137, align 4
  %67 = load i32, ptr %x.addr.i136, align 4
  %and22.i166 = shl i32 %67, 3
  %mul23.i167 = and i32 %and22.i166, 48
  %add24.i168 = add nsw i32 %storemerge243, %mul23.i167
  store i32 %add24.i168, ptr %s.i137, align 4
  %rem25.i169 = srem i32 %add24.i168, 5
  %cmp26.i170 = icmp eq i32 %rem25.i169, 0
  %68 = load i32, ptr %s.i137, align 4
  %add30.i174 = add nsw i32 %68, 7
  %69 = load i32, ptr %s.i137, align 4
  %sub28.i172 = add nsw i32 %69, -3
  %storemerge244 = select i1 %cmp26.i170, i32 %sub28.i172, i32 %add30.i174
  store i32 %storemerge244, ptr %s.i137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i136)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i137)
  %70 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %70, %storemerge244
  store i32 %add30, ptr %total, align 4
  %71 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %71, 7
  %mul.i178 = mul nuw nsw i32 %and31, 3
  %add.i179 = or i32 %mul.i178, 32
  %72 = lshr i32 %add.i179, 1
  %xor.i181 = xor i32 %add.i179, %72
  %mul1.i182 = shl nuw nsw i32 %xor.i181, 2
  %add2.i183 = add nuw nsw i32 %mul1.i182, 33
  %shr3.i184 = lshr i32 %add2.i183, 2
  %xor4.i185 = xor i32 %add2.i183, %shr3.i184
  %mul5.i186 = mul nsw i32 %xor4.i185, 5
  %add6.i187 = add nsw i32 %mul5.i186, 34
  %shr7.i188 = ashr i32 %add6.i187, 3
  %xor8.i189 = xor i32 %add6.i187, %shr7.i188
  %mul9.i190 = mul nsw i32 %xor8.i189, 6
  %add10.i191 = add nsw i32 %mul9.i190, 35
  %shr11.i192 = ashr i32 %add10.i191, 1
  %xor12.i193 = xor i32 %add10.i191, %shr11.i192
  %mul13.i194 = mul nsw i32 %xor12.i193, 7
  %add14.i195 = add nsw i32 %mul13.i194, 36
  %shr15.i196 = ashr i32 %add14.i195, 2
  %xor16.i197 = xor i32 %add14.i195, %shr15.i196
  %mul17.i198 = shl nsw i32 %xor16.i197, 3
  %add18.i199 = add nsw i32 %mul17.i198, 37
  %shr19.i200 = ashr i32 %add18.i199, 3
  %xor20.i201 = xor i32 %add18.i199, %shr19.i200
  %mul21.i202 = mul nsw i32 %xor20.i201, 9
  %add22.i203 = add nsw i32 %mul21.i202, 38
  %shr23.i204 = ashr i32 %add22.i203, 1
  %xor24.i205 = xor i32 %add22.i203, %shr23.i204
  %mul25.i206 = mul nsw i32 %xor24.i205, 10
  %add26.i207 = add nsw i32 %mul25.i206, 39
  %shr27.i208 = ashr i32 %add26.i207, 2
  %xor28.i209 = xor i32 %add26.i207, %shr27.i208
  %73 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %73, %xor28.i209
  store i32 %add33, ptr %total, align 4
  %74 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %74, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i210)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i212)
  store i32 1, ptr %mode.addr.i210, align 4
  store i32 %and34, ptr %out.i212, align 4
  %75 = load i32, ptr %out.i212, align 4
  %add.i215 = add nsw i32 %75, 8
  store i32 %add.i215, ptr %out.i212, align 4
  %76 = load i32, ptr %mode.addr.i210, align 4
  %and1.i217 = and i32 %76, 2
  %tobool2.i218.not = icmp eq i32 %and1.i217, 0
  br i1 %tobool2.i218.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_14.exit, label %if.then3.i221

if.then3.i221:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_10.exit
  %77 = load i32, ptr %out.i212, align 4
  %xor.i220 = xor i32 %77, 18
  store i32 %xor.i220, ptr %out.i212, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_14.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_10.exit, %if.then3.i221
  %78 = load i32, ptr %out.i212, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i210)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i212)
  %79 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %79, %78
  store i32 %add36, ptr %total, align 4
  %80 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %80, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i222)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i224)
  store i32 %and37, ptr %mode.addr.i222, align 4
  store i32 4, ptr %out.i224, align 4
  %and.i225 = and i32 %80, 1
  %tobool.i226.not = icmp eq i32 %and.i225, 0
  br i1 %tobool.i226.not, label %if.end.i231, label %if.then.i228

if.then.i228:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_14.exit
  %81 = load i32, ptr %out.i224, align 4
  %add.i227 = add nsw i32 %81, 8
  store i32 %add.i227, ptr %out.i224, align 4
  br label %if.end.i231

if.end.i231:                                      ; preds = %if.then.i228, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_14.exit
  %82 = load i32, ptr %mode.addr.i222, align 4
  %and1.i229 = and i32 %82, 2
  %tobool2.i230.not = icmp eq i32 %and1.i229, 0
  br i1 %tobool2.i230.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_15.exit, label %if.then3.i233

if.then3.i233:                                    ; preds = %if.end.i231
  %83 = load i32, ptr %out.i224, align 4
  %xor.i232 = xor i32 %83, 18
  store i32 %xor.i232, ptr %out.i224, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_015_15.exit: ; preds = %if.end.i231, %if.then3.i233
  %84 = load i32, ptr %out.i224, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i222)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i224)
  %85 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %85, %84
  store i32 %add39, ptr %total, align 4
  ret i32 %add39
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_015_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_015_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_015_recursivei(i32 noundef %sub1)
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
