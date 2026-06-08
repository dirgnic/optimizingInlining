; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_066.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_066.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_066_entry(i32 noundef %x) #0 {
entry:
  %x.addr.i84 = alloca i32, align 4
  %y.i85 = alloca i32, align 4
  %i.i86 = alloca i32, align 4
  %x.addr.i70 = alloca i32, align 4
  %y.i71 = alloca i32, align 4
  %i.i72 = alloca i32, align 4
  %x.addr.i56 = alloca i32, align 4
  %y.i57 = alloca i32, align 4
  %i.i58 = alloca i32, align 4
  %x.addr.i43 = alloca i32, align 4
  %y.i44 = alloca i32, align 4
  %i.i45 = alloca i32, align 4
  %x.addr.i29 = alloca i32, align 4
  %y.i30 = alloca i32, align 4
  %i.i31 = alloca i32, align 4
  %x.addr.i15 = alloca i32, align 4
  %y.i16 = alloca i32, align 4
  %i.i17 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %i.i3 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 0, ptr %x.addr.i, align 4
  store i32 3, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 2
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %i.i, align 4
  %1 = load i32, ptr %x.addr.i, align 4
  %and.i = and i32 %1, 3
  %add1.i = add nsw i32 %0, %and.i
  %2 = load i32, ptr %y.i, align 4
  %add2.i = add nsw i32 %2, %add1.i
  store i32 %add2.i, ptr %y.i, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_0.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %x.addr.i, align 4
  %and3.i = shl i32 %4, 2
  %mul.i = and i32 %and3.i, 12
  %5 = load i32, ptr %y.i, align 4
  %add4.i = add nsw i32 %5, %mul.i
  store i32 %add4.i, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %6 = load i32, ptr %total, align 4
  %add = add nsw i32 %6, %add4.i
  store i32 %add, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i3)
  store i32 %add1, ptr %x.addr.i1, align 4
  %add.i4 = add nsw i32 %7, 5
  store i32 %add.i4, ptr %y.i2, align 4
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %for.body.i10, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_0.exit
  %storemerge98 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_0.exit ], [ %inc.i11, %for.body.i10 ]
  store i32 %storemerge98, ptr %i.i3, align 4
  %cmp.i5 = icmp slt i32 %storemerge98, 3
  br i1 %cmp.i5, label %for.body.i10, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_1.exit

for.body.i10:                                     ; preds = %for.cond.i6
  %8 = load i32, ptr %i.i3, align 4
  %9 = load i32, ptr %x.addr.i1, align 4
  %and.i7 = and i32 %9, 3
  %add1.i8 = add nsw i32 %8, %and.i7
  %10 = load i32, ptr %y.i2, align 4
  %add2.i9 = add nsw i32 %10, %add1.i8
  store i32 %add2.i9, ptr %y.i2, align 4
  %11 = load i32, ptr %i.i3, align 4
  %inc.i11 = add nsw i32 %11, 1
  br label %for.cond.i6, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_1.exit: ; preds = %for.cond.i6
  %12 = load i32, ptr %x.addr.i1, align 4
  %and3.i12 = and i32 %12, 3
  %mul.i13 = mul nuw nsw i32 %and3.i12, 5
  %13 = load i32, ptr %y.i2, align 4
  %add4.i14 = add nsw i32 %13, %mul.i13
  store i32 %add4.i14, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i3)
  %14 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %14, %add4.i14
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i17)
  store i32 2, ptr %x.addr.i15, align 4
  store i32 7, ptr %y.i16, align 4
  br label %for.cond.i20

for.cond.i20:                                     ; preds = %for.body.i24, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_1.exit
  %storemerge99 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_1.exit ], [ %inc.i25, %for.body.i24 ]
  store i32 %storemerge99, ptr %i.i17, align 4
  %cmp.i19 = icmp slt i32 %storemerge99, 4
  br i1 %cmp.i19, label %for.body.i24, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_2.exit

for.body.i24:                                     ; preds = %for.cond.i20
  %15 = load i32, ptr %i.i17, align 4
  %16 = load i32, ptr %x.addr.i15, align 4
  %and.i21 = and i32 %16, 3
  %add1.i22 = add nsw i32 %15, %and.i21
  %17 = load i32, ptr %y.i16, align 4
  %add2.i23 = add nsw i32 %17, %add1.i22
  store i32 %add2.i23, ptr %y.i16, align 4
  %18 = load i32, ptr %i.i17, align 4
  %inc.i25 = add nsw i32 %18, 1
  br label %for.cond.i20, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_2.exit: ; preds = %for.cond.i20
  %19 = load i32, ptr %x.addr.i15, align 4
  %and3.i26 = and i32 %19, 3
  %mul.i27 = mul nuw nsw i32 %and3.i26, 6
  %20 = load i32, ptr %y.i16, align 4
  %add4.i28 = add nsw i32 %20, %mul.i27
  store i32 %add4.i28, ptr %y.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i17)
  %21 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %21, %add4.i28
  store i32 %add5, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %22, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i29)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i31)
  store i32 %add6, ptr %x.addr.i29, align 4
  %add.i32 = add nsw i32 %22, 9
  store i32 %add.i32, ptr %y.i30, align 4
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %for.body.i38, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_2.exit
  %storemerge100 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_2.exit ], [ %inc.i39, %for.body.i38 ]
  store i32 %storemerge100, ptr %i.i31, align 4
  %cmp.i33 = icmp slt i32 %storemerge100, 2
  br i1 %cmp.i33, label %for.body.i38, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_3.exit

for.body.i38:                                     ; preds = %for.cond.i34
  %23 = load i32, ptr %i.i31, align 4
  %24 = load i32, ptr %x.addr.i29, align 4
  %and.i35 = and i32 %24, 3
  %add1.i36 = add nsw i32 %23, %and.i35
  %25 = load i32, ptr %y.i30, align 4
  %add2.i37 = add nsw i32 %25, %add1.i36
  store i32 %add2.i37, ptr %y.i30, align 4
  %26 = load i32, ptr %i.i31, align 4
  %inc.i39 = add nsw i32 %26, 1
  br label %for.cond.i34, !llvm.loop !10

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_3.exit: ; preds = %for.cond.i34
  %27 = load i32, ptr %x.addr.i29, align 4
  %and3.i40 = and i32 %27, 3
  %mul.i41 = mul nuw nsw i32 %and3.i40, 7
  %28 = load i32, ptr %y.i30, align 4
  %add4.i42 = add nsw i32 %28, %mul.i41
  store i32 %add4.i42, ptr %y.i30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i31)
  %29 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %29, %add4.i42
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i43)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i45)
  store i32 4, ptr %x.addr.i43, align 4
  store i32 11, ptr %y.i44, align 4
  br label %for.cond.i48

for.cond.i48:                                     ; preds = %for.body.i52, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_3.exit
  %storemerge101 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_3.exit ], [ %inc.i53, %for.body.i52 ]
  store i32 %storemerge101, ptr %i.i45, align 4
  %cmp.i47 = icmp slt i32 %storemerge101, 3
  br i1 %cmp.i47, label %for.body.i52, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_4.exit

for.body.i52:                                     ; preds = %for.cond.i48
  %30 = load i32, ptr %i.i45, align 4
  %31 = load i32, ptr %x.addr.i43, align 4
  %and.i49 = and i32 %31, 3
  %add1.i50 = add nsw i32 %30, %and.i49
  %32 = load i32, ptr %y.i44, align 4
  %add2.i51 = add nsw i32 %32, %add1.i50
  store i32 %add2.i51, ptr %y.i44, align 4
  %33 = load i32, ptr %i.i45, align 4
  %inc.i53 = add nsw i32 %33, 1
  br label %for.cond.i48, !llvm.loop !11

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_4.exit: ; preds = %for.cond.i48
  %34 = load i32, ptr %x.addr.i43, align 4
  %and3.i54 = and i32 %34, 3
  %35 = load i32, ptr %y.i44, align 4
  %add4.i55 = add nsw i32 %35, %and3.i54
  store i32 %add4.i55, ptr %y.i44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i45)
  %36 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %36, %add4.i55
  store i32 %add10, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %37, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i58)
  store i32 %add11, ptr %x.addr.i56, align 4
  %add.i59 = add nsw i32 %37, 13
  store i32 %add.i59, ptr %y.i57, align 4
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %for.body.i65, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_4.exit
  %storemerge102 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_4.exit ], [ %inc.i66, %for.body.i65 ]
  store i32 %storemerge102, ptr %i.i58, align 4
  %cmp.i60 = icmp slt i32 %storemerge102, 4
  br i1 %cmp.i60, label %for.body.i65, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_5.exit

for.body.i65:                                     ; preds = %for.cond.i61
  %38 = load i32, ptr %i.i58, align 4
  %39 = load i32, ptr %x.addr.i56, align 4
  %and.i62 = and i32 %39, 3
  %add1.i63 = add nsw i32 %38, %and.i62
  %40 = load i32, ptr %y.i57, align 4
  %add2.i64 = add nsw i32 %40, %add1.i63
  store i32 %add2.i64, ptr %y.i57, align 4
  %41 = load i32, ptr %i.i58, align 4
  %inc.i66 = add nsw i32 %41, 1
  br label %for.cond.i61, !llvm.loop !12

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_5.exit: ; preds = %for.cond.i61
  %42 = load i32, ptr %x.addr.i56, align 4
  %and3.i67 = shl i32 %42, 1
  %mul.i68 = and i32 %and3.i67, 6
  %43 = load i32, ptr %y.i57, align 4
  %add4.i69 = add nsw i32 %43, %mul.i68
  store i32 %add4.i69, ptr %y.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i58)
  %44 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %44, %add4.i69
  store i32 %add13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i72)
  store i32 6, ptr %x.addr.i70, align 4
  store i32 15, ptr %y.i71, align 4
  br label %for.cond.i75

for.cond.i75:                                     ; preds = %for.body.i79, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_5.exit
  %storemerge103 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_5.exit ], [ %inc.i80, %for.body.i79 ]
  store i32 %storemerge103, ptr %i.i72, align 4
  %cmp.i74 = icmp slt i32 %storemerge103, 2
  br i1 %cmp.i74, label %for.body.i79, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_6.exit

for.body.i79:                                     ; preds = %for.cond.i75
  %45 = load i32, ptr %i.i72, align 4
  %46 = load i32, ptr %x.addr.i70, align 4
  %and.i76 = and i32 %46, 3
  %add1.i77 = add nsw i32 %45, %and.i76
  %47 = load i32, ptr %y.i71, align 4
  %add2.i78 = add nsw i32 %47, %add1.i77
  store i32 %add2.i78, ptr %y.i71, align 4
  %48 = load i32, ptr %i.i72, align 4
  %inc.i80 = add nsw i32 %48, 1
  br label %for.cond.i75, !llvm.loop !13

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_6.exit: ; preds = %for.cond.i75
  %49 = load i32, ptr %x.addr.i70, align 4
  %and3.i81 = and i32 %49, 3
  %mul.i82 = mul nuw nsw i32 %and3.i81, 3
  %50 = load i32, ptr %y.i71, align 4
  %add4.i83 = add nsw i32 %50, %mul.i82
  store i32 %add4.i83, ptr %y.i71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i72)
  %51 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %51, %add4.i83
  store i32 %add15, ptr %total, align 4
  %52 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %52, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i85)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i86)
  store i32 %add16, ptr %x.addr.i84, align 4
  %add.i87 = add nsw i32 %52, 17
  store i32 %add.i87, ptr %y.i85, align 4
  br label %for.cond.i89

for.cond.i89:                                     ; preds = %for.body.i93, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_6.exit
  %storemerge104 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_6.exit ], [ %inc.i94, %for.body.i93 ]
  store i32 %storemerge104, ptr %i.i86, align 4
  %cmp.i88 = icmp slt i32 %storemerge104, 3
  br i1 %cmp.i88, label %for.body.i93, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_7.exit

for.body.i93:                                     ; preds = %for.cond.i89
  %53 = load i32, ptr %i.i86, align 4
  %54 = load i32, ptr %x.addr.i84, align 4
  %and.i90 = and i32 %54, 3
  %add1.i91 = add nsw i32 %53, %and.i90
  %55 = load i32, ptr %y.i85, align 4
  %add2.i92 = add nsw i32 %55, %add1.i91
  store i32 %add2.i92, ptr %y.i85, align 4
  %56 = load i32, ptr %i.i86, align 4
  %inc.i94 = add nsw i32 %56, 1
  br label %for.cond.i89, !llvm.loop !14

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_066_7.exit: ; preds = %for.cond.i89
  %57 = load i32, ptr %x.addr.i84, align 4
  %and3.i95 = shl i32 %57, 2
  %mul.i96 = and i32 %and3.i95, 12
  %58 = load i32, ptr %y.i85, align 4
  %add4.i97 = add nsw i32 %58, %mul.i96
  store i32 %add4.i97, ptr %y.i85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i84)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i85)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i86)
  %59 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %59, %add4.i97
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL18packet_066_large_ai(i32 noundef 1)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %60, 9
  %call22 = call noundef i32 @_ZL18packet_066_large_bi(i32 noundef %add21)
  %add23 = add nsw i32 %add20, %call22
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL18packet_066_large_ai(i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  store i32 %add25, ptr %total, align 4
  %61 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %61, 11
  %call27 = call noundef i32 @_ZL18packet_066_large_bi(i32 noundef %add26)
  %add28 = add nsw i32 %add25, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL26packet_066_branch_variableii(i32 noundef 0, i32 noundef 5)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  %62 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %62, 13
  %call32 = call noundef i32 @_ZL26packet_066_branch_variableii(i32 noundef 1, i32 noundef %add31)
  %add33 = add nsw i32 %add30, %call32
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL20packet_066_recursivei(i32 noundef 2)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20packet_066_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_066_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 1
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %add
  %shl = shl i32 %add1, 1
  %shr = ashr i32 %add1, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %s, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_066_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 7
  store i32 %add, ptr %limit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %1
  %sub = add nsw i32 %mul, -6
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %sub
  store i32 %add1, ptr %s, align 4
  %and2 = and i32 %add1, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %3, %4
  %5 = load i32, ptr %s, align 4
  %xor = xor i32 %5, %add4
  store i32 %xor, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_066_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 2
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -4
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %5, %6
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_066_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_066_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_066_recursivei(i32 noundef %sub1)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
