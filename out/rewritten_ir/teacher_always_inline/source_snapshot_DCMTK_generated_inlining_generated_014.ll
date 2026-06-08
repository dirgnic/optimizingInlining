; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_014.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_014.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_014_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i136 = alloca i32, align 4
  %out.i138 = alloca i32, align 4
  %mode.addr.i124 = alloca i32, align 4
  %out.i126 = alloca i32, align 4
  %mode.addr.i112 = alloca i32, align 4
  %out.i114 = alloca i32, align 4
  %mode.addr.i66 = alloca i32, align 4
  %out.i68 = alloca i32, align 4
  %x.addr.i52 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %out.i28 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 0, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 17
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %4, 1
  %add.i2 = shl i32 %4, 2
  %sub.i = add i32 %add.i2, 30
  %and.i3 = and i32 %add1, 15
  %xor.i4 = xor i32 %sub.i, %and.i3
  %5 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %5, %xor.i4
  %add5 = add nsw i32 %add3, 39
  store i32 %add5, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %6, 3
  %add.i14 = shl i32 %6, 2
  %sub.i16 = add i32 %add.i14, 44
  %and.i17 = and i32 %add6, 15
  %xor.i18 = xor i32 %sub.i16, %and.i17
  %7 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %7, %xor.i18
  %add10 = add nsw i32 %add8, 55
  store i32 %add10, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %8, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i28)
  store i32 2, ptr %mode.addr.i26, align 4
  store i32 %add11, ptr %out.i28, align 4
  %9 = load i32, ptr %mode.addr.i26, align 4
  %and1.i33 = and i32 %9, 2
  %tobool2.i34.not = icmp eq i32 %and1.i33, 0
  br i1 %tobool2.i34.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_5.exit, label %if.then3.i37

if.then3.i37:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit
  %10 = load i32, ptr %out.i28, align 4
  %xor.i36 = xor i32 %10, 17
  store i32 %xor.i36, ptr %out.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_5.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit, %if.then3.i37
  %11 = load i32, ptr %out.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i28)
  %12 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %12, %11
  %add15 = add nsw i32 %add13, 71
  store i32 %add15, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %13, 7
  %add.i47 = shl i32 %13, 2
  %sub.i49 = add i32 %add.i47, 72
  %and.i50 = and i32 %add16, 15
  %xor.i51 = xor i32 %sub.i49, %and.i50
  %14 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %14, %xor.i51
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 1, ptr %x.addr.i52, align 4
  store i32 5, ptr %s.i, align 4
  %15 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %15, 1
  store i32 %add1.i, ptr %s.i, align 4
  %16 = load i32, ptr %x.addr.i52, align 4
  %and2.i = and i32 %16, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 5
  %add4.i = add nsw i32 %add1.i, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %17 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %17, 3
  %18 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %18, -5
  %storemerge148 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge148, ptr %s.i, align 4
  %19 = load i32, ptr %x.addr.i52, align 4
  %and12.i = and i32 %19, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 6
  %add14.i = add nsw i32 %storemerge148, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %20 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %20, 0
  %21 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %21, 5
  %22 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %22, -6
  %storemerge149 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge149, ptr %s.i, align 4
  %23 = load i32, ptr %x.addr.i52, align 4
  %and22.i = and i32 %23, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 7
  %add24.i = add nsw i32 %storemerge149, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %24 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %24, 7
  %25 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %25, -7
  %storemerge150 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge150, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %26 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %26, %storemerge150
  store i32 %add20, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %28 = mul i32 %27, 3
  %add.i61 = add i32 %28, 58
  %shr.i = ashr i32 %add.i61, 1
  %xor.i62 = xor i32 %add.i61, %shr.i
  %mul1.i = shl nsw i32 %xor.i62, 2
  %add2.i = add nsw i32 %mul1.i, 32
  %shr3.i = ashr exact i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 33
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i63 = add nsw i32 %mul9.i, 34
  %shr11.i = ashr exact i32 %add10.i63, 1
  %xor12.i = xor i32 %add10.i63, %shr11.i
  %mul13.i64 = mul nsw i32 %xor12.i, 7
  %add14.i65 = add nsw i32 %mul13.i64, 35
  %shr15.i = ashr i32 %add14.i65, 2
  %xor16.i = xor i32 %add14.i65, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 36
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 37
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 38
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %29 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %29, %xor28.i
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i66)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i68)
  store i32 1, ptr %mode.addr.i66, align 4
  store i32 3, ptr %out.i68, align 4
  %30 = load i32, ptr %out.i68, align 4
  %add.i71 = add nsw i32 %30, 7
  store i32 %add.i71, ptr %out.i68, align 4
  %31 = load i32, ptr %mode.addr.i66, align 4
  %and1.i73 = and i32 %31, 2
  %tobool2.i74.not = icmp eq i32 %and1.i73, 0
  br i1 %tobool2.i74.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_10.exit, label %if.then3.i77

if.then3.i77:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_5.exit
  %32 = load i32, ptr %out.i68, align 4
  %xor.i76 = xor i32 %32, 17
  store i32 %xor.i76, ptr %out.i68, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_5.exit, %if.then3.i77
  %33 = load i32, ptr %out.i68, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i66)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i68)
  %34 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %34, %33
  store i32 %add25, ptr %total, align 4
  %35 = load i32, ptr %x.addr, align 4
  %36 = mul i32 %35, 3
  %add.i81 = add i32 %36, 64
  %shr.i82 = ashr i32 %add.i81, 1
  %xor.i83 = xor i32 %add.i81, %shr.i82
  %mul1.i84 = shl nsw i32 %xor.i83, 2
  %add2.i85 = add nsw i32 %mul1.i84, 32
  %shr3.i86 = ashr exact i32 %add2.i85, 2
  %xor4.i87 = xor i32 %add2.i85, %shr3.i86
  %mul5.i88 = mul nsw i32 %xor4.i87, 5
  %add6.i89 = add nsw i32 %mul5.i88, 33
  %shr7.i90 = ashr i32 %add6.i89, 3
  %xor8.i91 = xor i32 %add6.i89, %shr7.i90
  %mul9.i92 = mul nsw i32 %xor8.i91, 6
  %add10.i93 = add nsw i32 %mul9.i92, 34
  %shr11.i94 = ashr exact i32 %add10.i93, 1
  %xor12.i95 = xor i32 %add10.i93, %shr11.i94
  %mul13.i96 = mul nsw i32 %xor12.i95, 7
  %add14.i97 = add nsw i32 %mul13.i96, 35
  %shr15.i98 = ashr i32 %add14.i97, 2
  %xor16.i99 = xor i32 %add14.i97, %shr15.i98
  %mul17.i100 = shl nsw i32 %xor16.i99, 3
  %add18.i101 = add nsw i32 %mul17.i100, 36
  %shr19.i102 = ashr i32 %add18.i101, 3
  %xor20.i103 = xor i32 %add18.i101, %shr19.i102
  %mul21.i104 = mul nsw i32 %xor20.i103, 9
  %add22.i105 = add nsw i32 %mul21.i104, 37
  %shr23.i106 = ashr i32 %add22.i105, 1
  %xor24.i107 = xor i32 %add22.i105, %shr23.i106
  %mul25.i108 = mul nsw i32 %xor24.i107, 10
  %add26.i109 = add nsw i32 %mul25.i108, 38
  %shr27.i110 = ashr i32 %add26.i109, 2
  %xor28.i111 = xor i32 %add26.i109, %shr27.i110
  %37 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %37, %xor28.i111
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i114)
  store i32 0, ptr %mode.addr.i112, align 4
  store i32 5, ptr %out.i114, align 4
  %38 = load i32, ptr %mode.addr.i112, align 4
  %and1.i119 = and i32 %38, 2
  %tobool2.i120.not = icmp eq i32 %and1.i119, 0
  br i1 %tobool2.i120.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_12.exit, label %if.then3.i123

if.then3.i123:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_10.exit
  %39 = load i32, ptr %out.i114, align 4
  %xor.i122 = xor i32 %39, 17
  store i32 %xor.i122, ptr %out.i114, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_12.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_10.exit, %if.then3.i123
  %40 = load i32, ptr %out.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i112)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i114)
  %41 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %41, %40
  store i32 %add30, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %42, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i124)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i126)
  store i32 1, ptr %mode.addr.i124, align 4
  store i32 %add31, ptr %out.i126, align 4
  %43 = load i32, ptr %out.i126, align 4
  %add.i129 = add nsw i32 %43, 7
  store i32 %add.i129, ptr %out.i126, align 4
  %44 = load i32, ptr %mode.addr.i124, align 4
  %and1.i131 = and i32 %44, 2
  %tobool2.i132.not = icmp eq i32 %and1.i131, 0
  br i1 %tobool2.i132.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_13.exit, label %if.then3.i135

if.then3.i135:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_12.exit
  %45 = load i32, ptr %out.i126, align 4
  %xor.i134 = xor i32 %45, 17
  store i32 %xor.i134, ptr %out.i126, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_13.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_12.exit, %if.then3.i135
  %46 = load i32, ptr %out.i126, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i124)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i126)
  %47 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %47, %46
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef 2)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %48 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %48, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i138)
  store i32 0, ptr %mode.addr.i136, align 4
  store i32 %add36, ptr %out.i138, align 4
  %49 = load i32, ptr %mode.addr.i136, align 4
  %and1.i143 = and i32 %49, 2
  %tobool2.i144.not = icmp eq i32 %and1.i143, 0
  br i1 %tobool2.i144.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_15.exit, label %if.then3.i147

if.then3.i147:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_13.exit
  %50 = load i32, ptr %out.i138, align 4
  %xor.i146 = xor i32 %50, 17
  store i32 %xor.i146, ptr %out.i138, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_15.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_13.exit, %if.then3.i147
  %51 = load i32, ptr %out.i138, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i136)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i138)
  %52 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %52, %51
  store i32 %add38, ptr %total, align 4
  ret i32 %add38
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_014_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef %sub1)
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
