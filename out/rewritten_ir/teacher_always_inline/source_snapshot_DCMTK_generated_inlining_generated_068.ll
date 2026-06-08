; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_068.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_068.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_068_entry(i32 noundef %x) #0 {
entry:
  %x.addr.i150 = alloca i32, align 4
  %s.i151 = alloca i32, align 4
  %mode.addr.i129 = alloca i32, align 4
  %t.i131 = alloca i32, align 4
  %retval.i114 = alloca i32, align 4
  %x.addr.i116 = alloca i32, align 4
  %x.addr.i44 = alloca i32, align 4
  %s.i45 = alloca i32, align 4
  %retval.i24 = alloca i32, align 4
  %x.addr.i26 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i15 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %s.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add8, ptr %x.addr.i8, align 4
  %and.i9 = and i32 %add8, 3
  %mul.i10 = mul nuw nsw i32 %and.i9, 9
  %add.i11 = add nsw i32 %add8, %mul.i10
  store i32 %add.i11, ptr %s.i, align 4
  %8 = and i32 %add.i11, 1
  %cmp.i12 = icmp eq i32 %8, 0
  %9 = load i32, ptr %s.i, align 4
  %add1.i13 = add nsw i32 %9, 1
  %10 = load i32, ptr %s.i, align 4
  %storemerge = select i1 %cmp.i12, i32 %10, i32 %add1.i13
  store i32 %storemerge, ptr %s.i, align 4
  %11 = load i32, ptr %x.addr.i8, align 4
  %and2.i = and i32 %11, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 10
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %12 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %12, 3
  %13 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %13, -1
  %storemerge220 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge220, ptr %s.i, align 4
  %14 = load i32, ptr %x.addr.i8, align 4
  %and12.i = and i32 %14, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 11
  %add14.i = add nsw i32 %storemerge220, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %15 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %15, 0
  %16 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %16, 5
  %17 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %17, -2
  %storemerge221 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge221, ptr %s.i, align 4
  %18 = load i32, ptr %x.addr.i8, align 4
  %and22.i = and i32 %18, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 12
  %add24.i = add nsw i32 %storemerge221, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %19 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %19, 7
  %20 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %20, -3
  %storemerge222 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge222, ptr %s.i, align 4
  %21 = load i32, ptr %x.addr.i8, align 4
  %and32.i = and i32 %21, 7
  %mul33.i = mul nuw nsw i32 %and32.i, 13
  %add34.i = add nsw i32 %storemerge222, %mul33.i
  store i32 %add34.i, ptr %s.i, align 4
  %rem35.i = srem i32 %add34.i, 6
  %cmp36.i = icmp eq i32 %rem35.i, 0
  %22 = load i32, ptr %s.i, align 4
  %add40.i = add nsw i32 %22, 9
  %23 = load i32, ptr %s.i, align 4
  %sub38.i = add nsw i32 %23, -4
  %storemerge223 = select i1 %cmp36.i, i32 %sub38.i, i32 %add40.i
  store i32 %storemerge223, ptr %s.i, align 4
  %24 = load i32, ptr %x.addr.i8, align 4
  %and42.i = and i32 %24, 8
  %mul43.i = mul nuw nsw i32 %and42.i, 14
  %add44.i = add nsw i32 %storemerge223, %mul43.i
  store i32 %add44.i, ptr %s.i, align 4
  %rem45.i = srem i32 %add44.i, 7
  %cmp46.i = icmp eq i32 %rem45.i, 0
  %25 = load i32, ptr %s.i, align 4
  %add50.i = add nsw i32 %25, 11
  %26 = load i32, ptr %s.i, align 4
  %sub48.i = add nsw i32 %26, -5
  %storemerge224 = select i1 %cmp46.i, i32 %sub48.i, i32 %add50.i
  store i32 %storemerge224, ptr %s.i, align 4
  %27 = load i32, ptr %x.addr.i8, align 4
  %and52.i = and i32 %27, 9
  %mul53.i = mul nuw nsw i32 %and52.i, 15
  %add54.i = add nsw i32 %storemerge224, %mul53.i
  store i32 %add54.i, ptr %s.i, align 4
  %28 = and i32 %add54.i, 7
  %cmp56.i = icmp eq i32 %28, 0
  %29 = load i32, ptr %s.i, align 4
  %add60.i = add nsw i32 %29, 13
  %30 = load i32, ptr %s.i, align 4
  %sub58.i = add nsw i32 %30, -6
  %storemerge225 = select i1 %cmp56.i, i32 %sub58.i, i32 %add60.i
  store i32 %storemerge225, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %31 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %31, %storemerge225
  store i32 %add10, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %32, 3
  %add12 = add nsw i32 %32, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  store i32 %add12, ptr %x.addr.i15, align 4
  switch i32 %and11, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %33 = load i32, ptr %x.addr.i15, align 4
  %add.i17 = add nsw i32 %33, 4
  store i32 %add.i17, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %34 = load i32, ptr %x.addr.i15, align 4
  %xor.i18 = xor i32 %34, 5
  store i32 %xor.i18, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %35 = load i32, ptr %x.addr.i15, align 4
  %mul.i19 = mul nsw i32 %35, 5
  store i32 %mul.i19, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %36 = load i32, ptr %x.addr.i15, align 4
  %sub.i20 = add nsw i32 %36, -6
  store i32 %sub.i20, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %37 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  %38 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %38, %37
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18game_068_recursivei(i32 noundef 1)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %add17 = shl i32 %39, 1
  %add.i23 = add i32 %add17, 17
  %add19 = add nsw i32 %add16, %add.i23
  store i32 %add19, ptr %total, align 4
  %and20 = and i32 %39, 3
  %add21 = add nsw i32 %39, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i26)
  store i32 %add21, ptr %x.addr.i26, align 4
  switch i32 %and20, label %sw.default.i35 [
    i32 0, label %sw.bb.i29
    i32 1, label %sw.bb1.i31
    i32 2, label %sw.bb2.i33
  ]

sw.bb.i29:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit
  %40 = load i32, ptr %x.addr.i26, align 4
  %add.i28 = add nsw i32 %40, 11
  store i32 %add.i28, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit

sw.bb1.i31:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit
  %41 = load i32, ptr %x.addr.i26, align 4
  %xor.i30 = xor i32 %41, 12
  store i32 %xor.i30, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit

sw.bb2.i33:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit
  %42 = load i32, ptr %x.addr.i26, align 4
  %mul.i32 = mul nsw i32 %42, 3
  store i32 %mul.i32, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit

sw.default.i35:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_4.exit
  %43 = load i32, ptr %x.addr.i26, align 4
  %sub.i34 = add nsw i32 %43, -6
  store i32 %sub.i34, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit: ; preds = %sw.bb.i29, %sw.bb1.i31, %sw.bb2.i33, %sw.default.i35
  %44 = load i32, ptr %retval.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i26)
  %45 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %45, %44
  store i32 %add23, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %add.i38 = add nsw i32 %46, 13
  %mul.i39 = mul nsw i32 %add.i38, 5
  %shr.i40 = ashr i32 %add.i38, 1
  %xor.i41 = xor i32 %mul.i39, %shr.i40
  %and.i42 = and i32 %46, 3
  %mul2.i = mul nuw nsw i32 %and.i42, 6
  %add3.i43 = add nsw i32 %xor.i41, %mul2.i
  %47 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %47, %add3.i43
  store i32 %add26, ptr %total, align 4
  %48 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %48, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i45)
  store i32 %add27, ptr %x.addr.i44, align 4
  %and.i46 = and i32 %add27, 3
  %mul.i47 = mul nuw nsw i32 %and.i46, 9
  %add.i48 = add nsw i32 %add27, %mul.i47
  store i32 %add.i48, ptr %s.i45, align 4
  %49 = and i32 %add.i48, 1
  %cmp.i50 = icmp eq i32 %49, 0
  %50 = load i32, ptr %s.i45, align 4
  %add1.i52 = add nsw i32 %50, 1
  %51 = load i32, ptr %s.i45, align 4
  %storemerge226 = select i1 %cmp.i50, i32 %51, i32 %add1.i52
  store i32 %storemerge226, ptr %s.i45, align 4
  %52 = load i32, ptr %x.addr.i44, align 4
  %and2.i54 = and i32 %52, 4
  %mul3.i55 = mul nuw nsw i32 %and2.i54, 10
  %add4.i56 = add nsw i32 %storemerge226, %mul3.i55
  store i32 %add4.i56, ptr %s.i45, align 4
  %rem5.i57 = srem i32 %add4.i56, 3
  %cmp6.i58 = icmp eq i32 %rem5.i57, 0
  %53 = load i32, ptr %s.i45, align 4
  %add10.i62 = add nsw i32 %53, 3
  %54 = load i32, ptr %s.i45, align 4
  %sub8.i60 = add nsw i32 %54, -1
  %storemerge227 = select i1 %cmp6.i58, i32 %sub8.i60, i32 %add10.i62
  store i32 %storemerge227, ptr %s.i45, align 4
  %55 = load i32, ptr %x.addr.i44, align 4
  %and12.i64 = and i32 %55, 5
  %mul13.i65 = mul nuw nsw i32 %and12.i64, 11
  %add14.i66 = add nsw i32 %storemerge227, %mul13.i65
  store i32 %add14.i66, ptr %s.i45, align 4
  %56 = and i32 %add14.i66, 3
  %cmp16.i68 = icmp eq i32 %56, 0
  %57 = load i32, ptr %s.i45, align 4
  %add20.i72 = add nsw i32 %57, 5
  %58 = load i32, ptr %s.i45, align 4
  %sub18.i70 = add nsw i32 %58, -2
  %storemerge228 = select i1 %cmp16.i68, i32 %sub18.i70, i32 %add20.i72
  store i32 %storemerge228, ptr %s.i45, align 4
  %59 = load i32, ptr %x.addr.i44, align 4
  %and22.i74 = and i32 %59, 6
  %mul23.i75 = mul nuw nsw i32 %and22.i74, 12
  %add24.i76 = add nsw i32 %storemerge228, %mul23.i75
  store i32 %add24.i76, ptr %s.i45, align 4
  %rem25.i77 = srem i32 %add24.i76, 5
  %cmp26.i78 = icmp eq i32 %rem25.i77, 0
  %60 = load i32, ptr %s.i45, align 4
  %add30.i82 = add nsw i32 %60, 7
  %61 = load i32, ptr %s.i45, align 4
  %sub28.i80 = add nsw i32 %61, -3
  %storemerge229 = select i1 %cmp26.i78, i32 %sub28.i80, i32 %add30.i82
  store i32 %storemerge229, ptr %s.i45, align 4
  %62 = load i32, ptr %x.addr.i44, align 4
  %and32.i84 = and i32 %62, 7
  %mul33.i85 = mul nuw nsw i32 %and32.i84, 13
  %add34.i86 = add nsw i32 %storemerge229, %mul33.i85
  store i32 %add34.i86, ptr %s.i45, align 4
  %rem35.i87 = srem i32 %add34.i86, 6
  %cmp36.i88 = icmp eq i32 %rem35.i87, 0
  %63 = load i32, ptr %s.i45, align 4
  %add40.i92 = add nsw i32 %63, 9
  %64 = load i32, ptr %s.i45, align 4
  %sub38.i90 = add nsw i32 %64, -4
  %storemerge230 = select i1 %cmp36.i88, i32 %sub38.i90, i32 %add40.i92
  store i32 %storemerge230, ptr %s.i45, align 4
  %65 = load i32, ptr %x.addr.i44, align 4
  %and42.i94 = and i32 %65, 8
  %mul43.i95 = mul nuw nsw i32 %and42.i94, 14
  %add44.i96 = add nsw i32 %storemerge230, %mul43.i95
  store i32 %add44.i96, ptr %s.i45, align 4
  %rem45.i97 = srem i32 %add44.i96, 7
  %cmp46.i98 = icmp eq i32 %rem45.i97, 0
  %66 = load i32, ptr %s.i45, align 4
  %add50.i102 = add nsw i32 %66, 11
  %67 = load i32, ptr %s.i45, align 4
  %sub48.i100 = add nsw i32 %67, -5
  %storemerge231 = select i1 %cmp46.i98, i32 %sub48.i100, i32 %add50.i102
  store i32 %storemerge231, ptr %s.i45, align 4
  %68 = load i32, ptr %x.addr.i44, align 4
  %and52.i104 = and i32 %68, 9
  %mul53.i105 = mul nuw nsw i32 %and52.i104, 15
  %add54.i106 = add nsw i32 %storemerge231, %mul53.i105
  store i32 %add54.i106, ptr %s.i45, align 4
  %69 = and i32 %add54.i106, 7
  %cmp56.i108 = icmp eq i32 %69, 0
  %70 = load i32, ptr %s.i45, align 4
  %add60.i112 = add nsw i32 %70, 13
  %71 = load i32, ptr %s.i45, align 4
  %sub58.i110 = add nsw i32 %71, -6
  %storemerge232 = select i1 %cmp56.i108, i32 %sub58.i110, i32 %add60.i112
  store i32 %storemerge232, ptr %s.i45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i45)
  %72 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %72, %storemerge232
  store i32 %add29, ptr %total, align 4
  %73 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %73, 3
  %add31 = add nsw i32 %73, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i116)
  store i32 %add31, ptr %x.addr.i116, align 4
  switch i32 %and30, label %sw.default.i125 [
    i32 0, label %sw.bb.i119
    i32 1, label %sw.bb1.i121
    i32 2, label %sw.bb2.i123
  ]

sw.bb.i119:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit
  %74 = load i32, ptr %x.addr.i116, align 4
  %add.i118 = add nsw i32 %74, 4
  store i32 %add.i118, ptr %retval.i114, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit

sw.bb1.i121:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit
  %75 = load i32, ptr %x.addr.i116, align 4
  %xor.i120 = xor i32 %75, 5
  store i32 %xor.i120, ptr %retval.i114, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit

sw.bb2.i123:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit
  %76 = load i32, ptr %x.addr.i116, align 4
  %mul.i122 = mul nsw i32 %76, 5
  store i32 %mul.i122, ptr %retval.i114, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit

sw.default.i125:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_7.exit
  %77 = load i32, ptr %x.addr.i116, align 4
  %sub.i124 = add nsw i32 %77, -6
  store i32 %sub.i124, ptr %retval.i114, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit: ; preds = %sw.bb.i119, %sw.bb1.i121, %sw.bb2.i123, %sw.default.i125
  %78 = load i32, ptr %retval.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i116)
  %79 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %79, %78
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL18game_068_recursivei(i32 noundef 3)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %80 = load i32, ptr %x.addr, align 4
  %81 = mul i32 %80, 5
  %add.i128 = add i32 %81, 63
  %add38 = add nsw i32 %add35, %add.i128
  store i32 %add38, ptr %total, align 4
  %and39 = and i32 %80, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i129)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i131)
  store i32 %and39, ptr %mode.addr.i129, align 4
  %add.i132 = add nsw i32 %80, 16
  store i32 %add.i132, ptr %t.i131, align 4
  %cmp.i133 = icmp ult i32 %and39, 2
  br i1 %cmp.i133, label %cond.true.i136, label %cond.false.i138

cond.true.i136:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit
  %82 = load i32, ptr %t.i131, align 4
  %83 = load i32, ptr %mode.addr.i129, align 4
  %add1.i134 = add nsw i32 %83, 1
  %mul.i135 = mul nsw i32 %82, %add1.i134
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_13.exit

cond.false.i138:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_10.exit
  %84 = load i32, ptr %t.i131, align 4
  %85 = load i32, ptr %mode.addr.i129, align 4
  %sub.i137 = sub nsw i32 %84, %85
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_13.exit: ; preds = %cond.true.i136, %cond.false.i138
  %cond.i139 = phi i32 [ %mul.i135, %cond.true.i136 ], [ %sub.i137, %cond.false.i138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i129)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i131)
  %86 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %86, %cond.i139
  store i32 %add42, ptr %total, align 4
  %87 = load i32, ptr %x.addr, align 4
  %add43 = add i32 %87, 2
  %add.i142 = add nsw i32 %87, 25
  %mul.i143 = mul nsw i32 %add.i142, 6
  %shr.i144 = ashr i32 %add.i142, 1
  %xor.i145 = xor i32 %mul.i143, %shr.i144
  %add1.i146 = add nsw i32 %xor.i145, 6
  %and.i147 = and i32 %add43, 3
  %mul2.i148 = mul nuw nsw i32 %and.i147, 5
  %add3.i149 = add nsw i32 %add1.i146, %mul2.i148
  %88 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %88, %add3.i149
  store i32 %add45, ptr %total, align 4
  %89 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %89, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i150)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i151)
  store i32 %add46, ptr %x.addr.i150, align 4
  %and.i152 = and i32 %add46, 3
  %mul.i153 = mul nuw nsw i32 %and.i152, 9
  %add.i154 = add nsw i32 %add46, %mul.i153
  store i32 %add.i154, ptr %s.i151, align 4
  %90 = and i32 %add.i154, 1
  %cmp.i156 = icmp eq i32 %90, 0
  %91 = load i32, ptr %s.i151, align 4
  %add1.i158 = add nsw i32 %91, 1
  %92 = load i32, ptr %s.i151, align 4
  %storemerge233 = select i1 %cmp.i156, i32 %92, i32 %add1.i158
  store i32 %storemerge233, ptr %s.i151, align 4
  %93 = load i32, ptr %x.addr.i150, align 4
  %and2.i160 = and i32 %93, 4
  %mul3.i161 = mul nuw nsw i32 %and2.i160, 10
  %add4.i162 = add nsw i32 %storemerge233, %mul3.i161
  store i32 %add4.i162, ptr %s.i151, align 4
  %rem5.i163 = srem i32 %add4.i162, 3
  %cmp6.i164 = icmp eq i32 %rem5.i163, 0
  %94 = load i32, ptr %s.i151, align 4
  %add10.i168 = add nsw i32 %94, 3
  %95 = load i32, ptr %s.i151, align 4
  %sub8.i166 = add nsw i32 %95, -1
  %storemerge234 = select i1 %cmp6.i164, i32 %sub8.i166, i32 %add10.i168
  store i32 %storemerge234, ptr %s.i151, align 4
  %96 = load i32, ptr %x.addr.i150, align 4
  %and12.i170 = and i32 %96, 5
  %mul13.i171 = mul nuw nsw i32 %and12.i170, 11
  %add14.i172 = add nsw i32 %storemerge234, %mul13.i171
  store i32 %add14.i172, ptr %s.i151, align 4
  %97 = and i32 %add14.i172, 3
  %cmp16.i174 = icmp eq i32 %97, 0
  %98 = load i32, ptr %s.i151, align 4
  %add20.i178 = add nsw i32 %98, 5
  %99 = load i32, ptr %s.i151, align 4
  %sub18.i176 = add nsw i32 %99, -2
  %storemerge235 = select i1 %cmp16.i174, i32 %sub18.i176, i32 %add20.i178
  store i32 %storemerge235, ptr %s.i151, align 4
  %100 = load i32, ptr %x.addr.i150, align 4
  %and22.i180 = and i32 %100, 6
  %mul23.i181 = mul nuw nsw i32 %and22.i180, 12
  %add24.i182 = add nsw i32 %storemerge235, %mul23.i181
  store i32 %add24.i182, ptr %s.i151, align 4
  %rem25.i183 = srem i32 %add24.i182, 5
  %cmp26.i184 = icmp eq i32 %rem25.i183, 0
  %101 = load i32, ptr %s.i151, align 4
  %add30.i188 = add nsw i32 %101, 7
  %102 = load i32, ptr %s.i151, align 4
  %sub28.i186 = add nsw i32 %102, -3
  %storemerge236 = select i1 %cmp26.i184, i32 %sub28.i186, i32 %add30.i188
  store i32 %storemerge236, ptr %s.i151, align 4
  %103 = load i32, ptr %x.addr.i150, align 4
  %and32.i190 = and i32 %103, 7
  %mul33.i191 = mul nuw nsw i32 %and32.i190, 13
  %add34.i192 = add nsw i32 %storemerge236, %mul33.i191
  store i32 %add34.i192, ptr %s.i151, align 4
  %rem35.i193 = srem i32 %add34.i192, 6
  %cmp36.i194 = icmp eq i32 %rem35.i193, 0
  %104 = load i32, ptr %s.i151, align 4
  %add40.i198 = add nsw i32 %104, 9
  %105 = load i32, ptr %s.i151, align 4
  %sub38.i196 = add nsw i32 %105, -4
  %storemerge237 = select i1 %cmp36.i194, i32 %sub38.i196, i32 %add40.i198
  store i32 %storemerge237, ptr %s.i151, align 4
  %106 = load i32, ptr %x.addr.i150, align 4
  %and42.i200 = and i32 %106, 8
  %mul43.i201 = mul nuw nsw i32 %and42.i200, 14
  %add44.i202 = add nsw i32 %storemerge237, %mul43.i201
  store i32 %add44.i202, ptr %s.i151, align 4
  %rem45.i203 = srem i32 %add44.i202, 7
  %cmp46.i204 = icmp eq i32 %rem45.i203, 0
  %107 = load i32, ptr %s.i151, align 4
  %add50.i208 = add nsw i32 %107, 11
  %108 = load i32, ptr %s.i151, align 4
  %sub48.i206 = add nsw i32 %108, -5
  %storemerge238 = select i1 %cmp46.i204, i32 %sub48.i206, i32 %add50.i208
  store i32 %storemerge238, ptr %s.i151, align 4
  %109 = load i32, ptr %x.addr.i150, align 4
  %and52.i210 = and i32 %109, 9
  %mul53.i211 = mul nuw nsw i32 %and52.i210, 15
  %add54.i212 = add nsw i32 %storemerge238, %mul53.i211
  store i32 %add54.i212, ptr %s.i151, align 4
  %110 = and i32 %add54.i212, 7
  %cmp56.i214 = icmp eq i32 %110, 0
  %111 = load i32, ptr %s.i151, align 4
  %add60.i218 = add nsw i32 %111, 13
  %112 = load i32, ptr %s.i151, align 4
  %sub58.i216 = add nsw i32 %112, -6
  %storemerge239 = select i1 %cmp56.i214, i32 %sub58.i216, i32 %add60.i218
  store i32 %storemerge239, ptr %s.i151, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i150)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i151)
  %113 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %113, %storemerge239
  store i32 %add48, ptr %total, align 4
  ret i32 %add48
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
