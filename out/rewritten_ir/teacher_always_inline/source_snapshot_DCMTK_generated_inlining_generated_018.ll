; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_018.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_018.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_018_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i132 = alloca i32, align 4
  %t.i134 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i113 = alloca i32, align 4
  %s.i114 = alloca i32, align 4
  %i.i115 = alloca i32, align 4
  %x.addr.i73 = alloca i32, align 4
  %s.i74 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr.i60 = alloca i32, align 4
  %y.i61 = alloca i32, align 4
  %x.addr.i50 = alloca i32, align 4
  %y.i51 = alloca i32, align 4
  %x.addr.i40 = alloca i32, align 4
  %y.i41 = alloca i32, align 4
  %x.addr.i30 = alloca i32, align 4
  %y.i31 = alloca i32, align 4
  %y.i21 = alloca i32, align 4
  %x.addr.i10 = alloca i32, align 4
  %y.i11 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 5, ptr %x.addr.i, align 4
  store i32 15, ptr %y.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %shr.i = ashr i32 %0, 1
  %1 = load i32, ptr %y.i, align 4
  %add1.i = add nsw i32 %1, %shr.i
  store i32 %add1.i, ptr %y.i, align 4
  %2 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  store i32 %and, ptr %x.addr.i1, align 4
  %add.i3 = add nuw nsw i32 %and, 11
  store i32 %add.i3, ptr %y.i2, align 4
  %and.i4 = and i32 %4, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.else.i9, label %if.then.i8

if.then.i8:                                       ; preds = %entry
  %5 = load i32, ptr %x.addr.i1, align 4
  %shr.i6 = ashr i32 %5, 1
  %6 = load i32, ptr %y.i2, align 4
  %add1.i7 = add nsw i32 %6, %shr.i6
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit

if.else.i9:                                       ; preds = %entry
  %7 = load i32, ptr %y.i2, align 4
  %sub.i = add nsw i32 %7, -1
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit: ; preds = %if.then.i8, %if.else.i9
  %storemerge = phi i32 [ %sub.i, %if.else.i9 ], [ %add1.i7, %if.then.i8 ]
  store i32 %storemerge, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  %8 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %8, %storemerge
  store i32 %add2, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %9, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i11)
  store i32 %and3, ptr %x.addr.i10, align 4
  %add.i12 = add nuw nsw i32 %and3, 12
  store i32 %add.i12, ptr %y.i11, align 4
  %and.i13 = and i32 %9, 1
  %tobool.i14.not = icmp eq i32 %and.i13, 0
  br i1 %tobool.i14.not, label %if.else.i19, label %if.then.i17

if.then.i17:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit
  %10 = load i32, ptr %x.addr.i10, align 4
  %shr.i15 = ashr i32 %10, 1
  %11 = load i32, ptr %y.i11, align 4
  %add1.i16 = add nsw i32 %11, %shr.i15
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit

if.else.i19:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit
  %12 = load i32, ptr %y.i11, align 4
  %sub.i18 = add nsw i32 %12, -2
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit: ; preds = %if.then.i17, %if.else.i19
  %storemerge143 = phi i32 [ %sub.i18, %if.else.i19 ], [ %add1.i16, %if.then.i17 ]
  store i32 %storemerge143, ptr %y.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i11)
  %13 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %13, %storemerge143
  store i32 %add5, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i21)
  store i32 21, ptr %y.i21, align 4
  %14 = load i32, ptr %y.i21, align 4
  %sub.i28 = add nsw i32 %14, -3
  store i32 %sub.i28, ptr %y.i21, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i21)
  %15 = load i32, ptr %total, align 4
  %xor = xor i32 %15, %sub.i28
  store i32 %xor, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %16, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i31)
  store i32 %and7, ptr %x.addr.i30, align 4
  %add.i32 = add nuw nsw i32 %and7, 3
  store i32 %add.i32, ptr %y.i31, align 4
  %and.i33 = and i32 %16, 1
  %tobool.i34.not = icmp eq i32 %and.i33, 0
  br i1 %tobool.i34.not, label %if.else.i39, label %if.then.i37

if.then.i37:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit
  %17 = load i32, ptr %x.addr.i30, align 4
  %shr.i35 = ashr i32 %17, 1
  %18 = load i32, ptr %y.i31, align 4
  %add1.i36 = add nsw i32 %18, %shr.i35
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit

if.else.i39:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit
  %19 = load i32, ptr %y.i31, align 4
  %sub.i38 = add nsw i32 %19, -4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit: ; preds = %if.then.i37, %if.else.i39
  %storemerge145 = phi i32 [ %sub.i38, %if.else.i39 ], [ %add1.i36, %if.then.i37 ]
  store i32 %storemerge145, ptr %y.i31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i31)
  %20 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %20, %storemerge145
  store i32 %add9, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %21, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i41)
  store i32 %and10, ptr %x.addr.i40, align 4
  %add.i42 = add nuw nsw i32 %and10, 4
  store i32 %add.i42, ptr %y.i41, align 4
  %and.i43 = and i32 %21, 1
  %tobool.i44.not = icmp eq i32 %and.i43, 0
  br i1 %tobool.i44.not, label %if.else.i49, label %if.then.i47

if.then.i47:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit
  %22 = load i32, ptr %x.addr.i40, align 4
  %shr.i45 = ashr i32 %22, 1
  %23 = load i32, ptr %y.i41, align 4
  %add1.i46 = add nsw i32 %23, %shr.i45
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit

if.else.i49:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit
  %24 = load i32, ptr %y.i41, align 4
  %sub.i48 = add nsw i32 %24, -5
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit: ; preds = %if.then.i47, %if.else.i49
  %storemerge146 = phi i32 [ %sub.i48, %if.else.i49 ], [ %add1.i46, %if.then.i47 ]
  store i32 %storemerge146, ptr %y.i41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i41)
  %25 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %25, %storemerge146
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i51)
  store i32 11, ptr %x.addr.i50, align 4
  store i32 16, ptr %y.i51, align 4
  %26 = load i32, ptr %x.addr.i50, align 4
  %shr.i55 = ashr i32 %26, 1
  %27 = load i32, ptr %y.i51, align 4
  %add1.i56 = add nsw i32 %27, %shr.i55
  store i32 %add1.i56, ptr %y.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i51)
  %28 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %28, %add1.i56
  store i32 %add14, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %29, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i61)
  store i32 %and15, ptr %x.addr.i60, align 4
  %add.i62 = add nuw nsw i32 %and15, 6
  store i32 %add.i62, ptr %y.i61, align 4
  %and.i63 = and i32 %29, 1
  %tobool.i64.not = icmp eq i32 %and.i63, 0
  br i1 %tobool.i64.not, label %if.else.i69, label %if.then.i67

if.then.i67:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit
  %30 = load i32, ptr %x.addr.i60, align 4
  %shr.i65 = ashr i32 %30, 1
  %31 = load i32, ptr %y.i61, align 4
  %add1.i66 = add nsw i32 %31, %shr.i65
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit

if.else.i69:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit
  %32 = load i32, ptr %y.i61, align 4
  %sub.i68 = add nsw i32 %32, -7
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit: ; preds = %if.then.i67, %if.else.i69
  %storemerge148 = phi i32 [ %sub.i68, %if.else.i69 ], [ %add1.i66, %if.then.i67 ]
  store i32 %storemerge148, ptr %y.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i60)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i61)
  %33 = load i32, ptr %total, align 4
  %xor17 = xor i32 %33, %storemerge148
  store i32 %xor17, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %34, 7
  %mul.i = mul nuw nsw i32 %and18, 3
  %add.i71 = add nuw nsw i32 %mul.i, 18
  %35 = lshr i32 %add.i71, 1
  %xor.i = xor i32 %add.i71, %35
  %mul1.i = shl nuw nsw i32 %xor.i, 2
  %add2.i = add nuw nsw i32 %mul1.i, 19
  %shr3.i = lshr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 20
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 21
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 22
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 23
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 24
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 25
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %36 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %36, %xor28.i
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i73)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i74)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 1, ptr %x.addr.i73, align 4
  store i32 1, ptr %s.i74, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit
  %storemerge149 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge149, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge149, 4
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %37 = load i32, ptr %x.addr.i73, align 4
  %38 = load i32, ptr %i.i, align 4
  %xor.i75 = xor i32 %37, %38
  %add.i76 = add nsw i32 %xor.i75, 9
  %39 = load i32, ptr %s.i74, align 4
  %add1.i77 = add nsw i32 %39, %add.i76
  %shl.i = shl i32 %add1.i77, 1
  %shr.i78 = ashr i32 %add1.i77, 3
  %xor2.i = xor i32 %shl.i, %shr.i78
  store i32 %xor2.i, ptr %s.i74, align 4
  %40 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %40, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_9.exit: ; preds = %for.cond.i
  %41 = load i32, ptr %s.i74, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i73)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i74)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %42 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %42, %41
  store i32 %add22, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %43, 7
  %mul.i81 = mul nuw nsw i32 %and23, 3
  %add.i82 = add nuw nsw i32 %mul.i81, 18
  %44 = lshr i32 %add.i82, 1
  %xor.i84 = xor i32 %add.i82, %44
  %mul1.i85 = shl nuw nsw i32 %xor.i84, 2
  %add2.i86 = add nuw nsw i32 %mul1.i85, 19
  %shr3.i87 = lshr i32 %add2.i86, 2
  %xor4.i88 = xor i32 %add2.i86, %shr3.i87
  %mul5.i89 = mul nsw i32 %xor4.i88, 5
  %add6.i90 = add nsw i32 %mul5.i89, 20
  %shr7.i91 = ashr i32 %add6.i90, 3
  %xor8.i92 = xor i32 %add6.i90, %shr7.i91
  %mul9.i93 = mul nsw i32 %xor8.i92, 6
  %add10.i94 = add nsw i32 %mul9.i93, 21
  %shr11.i95 = ashr i32 %add10.i94, 1
  %xor12.i96 = xor i32 %add10.i94, %shr11.i95
  %mul13.i97 = mul nsw i32 %xor12.i96, 7
  %add14.i98 = add nsw i32 %mul13.i97, 22
  %shr15.i99 = ashr i32 %add14.i98, 2
  %xor16.i100 = xor i32 %add14.i98, %shr15.i99
  %mul17.i101 = shl nsw i32 %xor16.i100, 3
  %add18.i102 = add nsw i32 %mul17.i101, 23
  %shr19.i103 = ashr i32 %add18.i102, 3
  %xor20.i104 = xor i32 %add18.i102, %shr19.i103
  %mul21.i105 = mul nsw i32 %xor20.i104, 9
  %add22.i106 = add nsw i32 %mul21.i105, 24
  %shr23.i107 = ashr i32 %add22.i106, 1
  %xor24.i108 = xor i32 %add22.i106, %shr23.i107
  %mul25.i109 = mul nsw i32 %xor24.i108, 10
  %add26.i110 = add nsw i32 %mul25.i109, 25
  %shr27.i111 = ashr i32 %add26.i110, 2
  %xor28.i112 = xor i32 %add26.i110, %shr27.i111
  %45 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %45, %xor28.i112
  store i32 %add25, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %46, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i115)
  store i32 %and26, ptr %x.addr.i113, align 4
  store i32 %and26, ptr %s.i114, align 4
  br label %for.cond.i117

for.cond.i117:                                    ; preds = %for.body.i124, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_9.exit
  %storemerge150 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_9.exit ], [ %inc.i125, %for.body.i124 ]
  store i32 %storemerge150, ptr %i.i115, align 4
  %cmp.i116 = icmp slt i32 %storemerge150, 4
  br i1 %cmp.i116, label %for.body.i124, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_11.exit

for.body.i124:                                    ; preds = %for.cond.i117
  %47 = load i32, ptr %x.addr.i113, align 4
  %48 = load i32, ptr %i.i115, align 4
  %xor.i118 = xor i32 %47, %48
  %add.i119 = add nsw i32 %xor.i118, 9
  %49 = load i32, ptr %s.i114, align 4
  %add1.i120 = add nsw i32 %49, %add.i119
  %shl.i121 = shl i32 %add1.i120, 1
  %shr.i122 = ashr i32 %add1.i120, 3
  %xor2.i123 = xor i32 %shl.i121, %shr.i122
  store i32 %xor2.i123, ptr %s.i114, align 4
  %50 = load i32, ptr %i.i115, align 4
  %inc.i125 = add nsw i32 %50, 1
  br label %for.cond.i117, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_11.exit: ; preds = %for.cond.i117
  %51 = load i32, ptr %s.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i115)
  %52 = load i32, ptr %total, align 4
  %xor28 = xor i32 %52, %51
  store i32 %xor28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 7, ptr %t.i, align 4
  %53 = load i32, ptr %t.i, align 4
  %54 = load i32, ptr %mode.addr.i, align 4
  %sub.i131 = sub nsw i32 %53, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %55 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %55, %sub.i131
  store i32 %add30, ptr %total, align 4
  %56 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %56, 3
  %and32 = and i32 %56, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i132)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i134)
  store i32 %and31, ptr %mode.addr.i132, align 4
  %add.i135 = add nuw nsw i32 %and32, 3
  store i32 %add.i135, ptr %t.i134, align 4
  %cmp.i136 = icmp ult i32 %and31, 2
  br i1 %cmp.i136, label %cond.true.i139, label %cond.false.i141

cond.true.i139:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_11.exit
  %57 = load i32, ptr %t.i134, align 4
  %58 = load i32, ptr %mode.addr.i132, align 4
  %add1.i137 = add nsw i32 %58, 1
  %mul.i138 = mul nsw i32 %57, %add1.i137
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_13.exit

cond.false.i141:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_11.exit
  %59 = load i32, ptr %t.i134, align 4
  %60 = load i32, ptr %mode.addr.i132, align 4
  %sub.i140 = sub nsw i32 %59, %60
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_13.exit: ; preds = %cond.true.i139, %cond.false.i141
  %cond.i142 = phi i32 [ %mul.i138, %cond.true.i139 ], [ %sub.i140, %cond.false.i141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i132)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i134)
  %61 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %61, %cond.i142
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef 2)
  %add36 = add nsw i32 %add34, %call35
  store i32 %add36, ptr %total, align 4
  %call37 = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef 3)
  %xor38 = xor i32 %add36, %call37
  store i32 %xor38, ptr %total, align 4
  ret i32 %xor38
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_018_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef %sub)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
