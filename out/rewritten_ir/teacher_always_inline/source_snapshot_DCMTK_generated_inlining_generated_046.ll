; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_046.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_046.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_046_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i123 = alloca i32, align 4
  %t.i125 = alloca i32, align 4
  %mode.addr.i112 = alloca i32, align 4
  %t.i114 = alloca i32, align 4
  %mode.addr.i101 = alloca i32, align 4
  %t.i103 = alloca i32, align 4
  %x.addr.i88 = alloca i32, align 4
  %s.i89 = alloca i32, align 4
  %i.i90 = alloca i32, align 4
  %mode.addr.i77 = alloca i32, align 4
  %t.i79 = alloca i32, align 4
  %x.addr.i70 = alloca i32, align 4
  %s.i71 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr.i56 = alloca i32, align 4
  %y.i57 = alloca i32, align 4
  %x.addr.i46 = alloca i32, align 4
  %y.i47 = alloca i32, align 4
  %mode.addr.i35 = alloca i32, align 4
  %t.i37 = alloca i32, align 4
  %x.addr.i25 = alloca i32, align 4
  %y.i26 = alloca i32, align 4
  %x.addr.i15 = alloca i32, align 4
  %y.i16 = alloca i32, align 4
  %x.addr.i5 = alloca i32, align 4
  %y.i6 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  %add.i = add nsw i32 %x, 1
  store i32 %add.i, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %4, %cond.i
  store i32 %add1, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 %add2, ptr %x.addr.i1, align 4
  %add.i2 = add nsw i32 %5, 7
  store i32 %add.i2, ptr %y.i, align 4
  %and.i = and i32 %add2, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit
  %6 = load i32, ptr %x.addr.i1, align 4
  %shr.i = ashr i32 %6, 1
  %7 = load i32, ptr %y.i, align 4
  %add1.i3 = add nsw i32 %7, %shr.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit

if.else.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit
  %8 = load i32, ptr %y.i, align 4
  %sub.i4 = add nsw i32 %8, -2
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit: ; preds = %if.then.i, %if.else.i
  %storemerge = phi i32 [ %sub.i4, %if.else.i ], [ %add1.i3, %if.then.i ]
  store i32 %storemerge, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %9 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %9, %storemerge
  store i32 %add4, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %10, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i6)
  store i32 %add5, ptr %x.addr.i5, align 4
  %add.i7 = add nsw i32 %10, 9
  store i32 %add.i7, ptr %y.i6, align 4
  %and.i8 = and i32 %10, 1
  %tobool.i9.not = icmp eq i32 %and.i8, 0
  br i1 %tobool.i9.not, label %if.else.i14, label %if.then.i12

if.then.i12:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit
  %11 = load i32, ptr %x.addr.i5, align 4
  %shr.i10 = ashr i32 %11, 1
  %12 = load i32, ptr %y.i6, align 4
  %add1.i11 = add nsw i32 %12, %shr.i10
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit

if.else.i14:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit
  %13 = load i32, ptr %y.i6, align 4
  %sub.i13 = add nsw i32 %13, -3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit: ; preds = %if.then.i12, %if.else.i14
  %storemerge134 = phi i32 [ %sub.i13, %if.else.i14 ], [ %add1.i11, %if.then.i12 ]
  store i32 %storemerge134, ptr %y.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i6)
  %14 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %14, %storemerge134
  store i32 %add7, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %15, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i16)
  store i32 %add8, ptr %x.addr.i15, align 4
  %add.i17 = add nsw i32 %15, 11
  store i32 %add.i17, ptr %y.i16, align 4
  %and.i18 = and i32 %add8, 1
  %tobool.i19.not = icmp eq i32 %and.i18, 0
  br i1 %tobool.i19.not, label %if.else.i24, label %if.then.i22

if.then.i22:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit
  %16 = load i32, ptr %x.addr.i15, align 4
  %shr.i20 = ashr i32 %16, 1
  %17 = load i32, ptr %y.i16, align 4
  %add1.i21 = add nsw i32 %17, %shr.i20
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit

if.else.i24:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit
  %18 = load i32, ptr %y.i16, align 4
  %sub.i23 = add nsw i32 %18, -4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit: ; preds = %if.then.i22, %if.else.i24
  %storemerge135 = phi i32 [ %sub.i23, %if.else.i24 ], [ %add1.i21, %if.then.i22 ]
  store i32 %storemerge135, ptr %y.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i16)
  %19 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %19, %storemerge135
  store i32 %add10, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %20, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i26)
  store i32 %add11, ptr %x.addr.i25, align 4
  %add.i27 = add nsw i32 %20, 13
  store i32 %add.i27, ptr %y.i26, align 4
  %and.i28 = and i32 %20, 1
  %tobool.i29.not = icmp eq i32 %and.i28, 0
  br i1 %tobool.i29.not, label %if.else.i34, label %if.then.i32

if.then.i32:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit
  %21 = load i32, ptr %x.addr.i25, align 4
  %shr.i30 = ashr i32 %21, 1
  %22 = load i32, ptr %y.i26, align 4
  %add1.i31 = add nsw i32 %22, %shr.i30
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit

if.else.i34:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit
  %23 = load i32, ptr %y.i26, align 4
  %sub.i33 = add nsw i32 %23, -5
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit: ; preds = %if.then.i32, %if.else.i34
  %storemerge136 = phi i32 [ %sub.i33, %if.else.i34 ], [ %add1.i31, %if.then.i32 ]
  store i32 %storemerge136, ptr %y.i26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i26)
  %and13 = and i32 %storemerge136, 255
  %24 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %24, %and13
  store i32 %add14, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %25, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i37)
  store i32 %and15, ptr %mode.addr.i35, align 4
  %add.i38 = add nsw i32 %25, 6
  store i32 %add.i38, ptr %t.i37, align 4
  %cmp.i39 = icmp ult i32 %and15, 2
  br i1 %cmp.i39, label %cond.true.i42, label %cond.false.i44

cond.true.i42:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit
  %26 = load i32, ptr %t.i37, align 4
  %27 = load i32, ptr %mode.addr.i35, align 4
  %add1.i40 = add nsw i32 %27, 1
  %mul.i41 = mul nsw i32 %26, %add1.i40
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit

cond.false.i44:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit
  %28 = load i32, ptr %t.i37, align 4
  %29 = load i32, ptr %mode.addr.i35, align 4
  %sub.i43 = sub nsw i32 %28, %29
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit: ; preds = %cond.true.i42, %cond.false.i44
  %cond.i45 = phi i32 [ %mul.i41, %cond.true.i42 ], [ %sub.i43, %cond.false.i44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i37)
  %30 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %30, %cond.i45
  store i32 %add18, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %31, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i46)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i47)
  store i32 %add19, ptr %x.addr.i46, align 4
  %add.i48 = add nsw i32 %31, 17
  store i32 %add.i48, ptr %y.i47, align 4
  %and.i49 = and i32 %31, 1
  %tobool.i50.not = icmp eq i32 %and.i49, 0
  br i1 %tobool.i50.not, label %if.else.i55, label %if.then.i53

if.then.i53:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit
  %32 = load i32, ptr %x.addr.i46, align 4
  %shr.i51 = ashr i32 %32, 1
  %33 = load i32, ptr %y.i47, align 4
  %add1.i52 = add nsw i32 %33, %shr.i51
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_6.exit

if.else.i55:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit
  %34 = load i32, ptr %y.i47, align 4
  %sub.i54 = add nsw i32 %34, -7
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_6.exit: ; preds = %if.then.i53, %if.else.i55
  %storemerge137 = phi i32 [ %sub.i54, %if.else.i55 ], [ %add1.i52, %if.then.i53 ]
  store i32 %storemerge137, ptr %y.i47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i47)
  %35 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %35, %storemerge137
  store i32 %add21, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %36, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i57)
  store i32 %add22, ptr %x.addr.i56, align 4
  %add.i58 = add nsw i32 %36, 19
  store i32 %add.i58, ptr %y.i57, align 4
  %and.i59 = and i32 %add22, 1
  %tobool.i60.not = icmp eq i32 %and.i59, 0
  br i1 %tobool.i60.not, label %if.else.i65, label %if.then.i63

if.then.i63:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_6.exit
  %37 = load i32, ptr %x.addr.i56, align 4
  %shr.i61 = ashr i32 %37, 1
  %38 = load i32, ptr %y.i57, align 4
  %add1.i62 = add nsw i32 %38, %shr.i61
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_7.exit

if.else.i65:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_6.exit
  %39 = load i32, ptr %y.i57, align 4
  %sub.i64 = add nsw i32 %39, -8
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_7.exit: ; preds = %if.then.i63, %if.else.i65
  %storemerge138 = phi i32 [ %sub.i64, %if.else.i65 ], [ %add1.i62, %if.then.i63 ]
  store i32 %storemerge138, ptr %y.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i57)
  %40 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %40, %storemerge138
  store i32 %add24, ptr %total, align 4
  %41 = load i32, ptr %x.addr, align 4
  %42 = mul i32 %41, 3
  %add.i68 = add i32 %42, 70
  %shr.i69 = ashr i32 %add.i68, 1
  %xor.i = xor i32 %add.i68, %shr.i69
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 47
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 48
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 49
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 50
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 51
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 52
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 53
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %43 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %43, %xor28.i
  store i32 %add27, ptr %total, align 4
  %44 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %44, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add28, ptr %x.addr.i70, align 4
  store i32 %add28, ptr %s.i71, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_7.exit
  %storemerge139 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_7.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge139, ptr %i.i, align 4
  %cmp.i72 = icmp slt i32 %storemerge139, 7
  br i1 %cmp.i72, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %45 = load i32, ptr %x.addr.i70, align 4
  %46 = load i32, ptr %i.i, align 4
  %xor.i73 = xor i32 %45, %46
  %add.i74 = add nsw i32 %xor.i73, 11
  %47 = load i32, ptr %s.i71, align 4
  %add1.i75 = add nsw i32 %47, %add.i74
  %shl.i = shl i32 %add1.i75, 1
  %shr.i76 = ashr i32 %add1.i75, 3
  %xor2.i = xor i32 %shl.i, %shr.i76
  store i32 %xor2.i, ptr %s.i71, align 4
  %48 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %48, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_9.exit: ; preds = %for.cond.i
  %49 = load i32, ptr %s.i71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %and30 = and i32 %49, 255
  %50 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %50, %and30
  store i32 %add31, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %51, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i77)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i79)
  store i32 %and32, ptr %mode.addr.i77, align 4
  %add.i80 = add nsw i32 %51, 11
  store i32 %add.i80, ptr %t.i79, align 4
  %cmp.i81 = icmp ult i32 %and32, 2
  br i1 %cmp.i81, label %cond.true.i84, label %cond.false.i86

cond.true.i84:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_9.exit
  %52 = load i32, ptr %t.i79, align 4
  %53 = load i32, ptr %mode.addr.i77, align 4
  %add1.i82 = add nsw i32 %53, 1
  %mul.i83 = mul nsw i32 %52, %add1.i82
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_10.exit

cond.false.i86:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_9.exit
  %54 = load i32, ptr %t.i79, align 4
  %55 = load i32, ptr %mode.addr.i77, align 4
  %sub.i85 = sub nsw i32 %54, %55
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_10.exit: ; preds = %cond.true.i84, %cond.false.i86
  %cond.i87 = phi i32 [ %mul.i83, %cond.true.i84 ], [ %sub.i85, %cond.false.i86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i77)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i79)
  %56 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %56, %cond.i87
  store i32 %add35, ptr %total, align 4
  %57 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %57, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i90)
  store i32 %add36, ptr %x.addr.i88, align 4
  store i32 %add36, ptr %s.i89, align 4
  br label %for.cond.i92

for.cond.i92:                                     ; preds = %for.body.i99, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_10.exit
  %storemerge140 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_10.exit ], [ %inc.i100, %for.body.i99 ]
  store i32 %storemerge140, ptr %i.i90, align 4
  %cmp.i91 = icmp slt i32 %storemerge140, 7
  br i1 %cmp.i91, label %for.body.i99, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_11.exit

for.body.i99:                                     ; preds = %for.cond.i92
  %58 = load i32, ptr %x.addr.i88, align 4
  %59 = load i32, ptr %i.i90, align 4
  %xor.i93 = xor i32 %58, %59
  %add.i94 = add nsw i32 %xor.i93, 11
  %60 = load i32, ptr %s.i89, align 4
  %add1.i95 = add nsw i32 %60, %add.i94
  %shl.i96 = shl i32 %add1.i95, 1
  %shr.i97 = ashr i32 %add1.i95, 3
  %xor2.i98 = xor i32 %shl.i96, %shr.i97
  store i32 %xor2.i98, ptr %s.i89, align 4
  %61 = load i32, ptr %i.i90, align 4
  %inc.i100 = add nsw i32 %61, 1
  br label %for.cond.i92, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_11.exit: ; preds = %for.cond.i92
  %62 = load i32, ptr %s.i89, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i88)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i89)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i90)
  %63 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %63, %62
  store i32 %add38, ptr %total, align 4
  %64 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %64, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i101)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i103)
  store i32 %and39, ptr %mode.addr.i101, align 4
  %add.i104 = add nsw i32 %64, 13
  store i32 %add.i104, ptr %t.i103, align 4
  %cmp.i105 = icmp ult i32 %and39, 2
  br i1 %cmp.i105, label %cond.true.i108, label %cond.false.i110

cond.true.i108:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_11.exit
  %65 = load i32, ptr %t.i103, align 4
  %66 = load i32, ptr %mode.addr.i101, align 4
  %add1.i106 = add nsw i32 %66, 1
  %mul.i107 = mul nsw i32 %65, %add1.i106
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_12.exit

cond.false.i110:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_11.exit
  %67 = load i32, ptr %t.i103, align 4
  %68 = load i32, ptr %mode.addr.i101, align 4
  %sub.i109 = sub nsw i32 %67, %68
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_12.exit: ; preds = %cond.true.i108, %cond.false.i110
  %cond.i111 = phi i32 [ %mul.i107, %cond.true.i108 ], [ %sub.i109, %cond.false.i110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i101)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i103)
  %69 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %69, %cond.i111
  store i32 %add42, ptr %total, align 4
  %70 = load i32, ptr %x.addr, align 4
  %and43 = and i32 %70, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i114)
  store i32 %and43, ptr %mode.addr.i112, align 4
  %add.i115 = add nsw i32 %70, 14
  store i32 %add.i115, ptr %t.i114, align 4
  %cmp.i116 = icmp ult i32 %and43, 2
  br i1 %cmp.i116, label %cond.true.i119, label %cond.false.i121

cond.true.i119:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_12.exit
  %71 = load i32, ptr %t.i114, align 4
  %72 = load i32, ptr %mode.addr.i112, align 4
  %add1.i117 = add nsw i32 %72, 1
  %mul.i118 = mul nsw i32 %71, %add1.i117
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_13.exit

cond.false.i121:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_12.exit
  %73 = load i32, ptr %t.i114, align 4
  %74 = load i32, ptr %mode.addr.i112, align 4
  %sub.i120 = sub nsw i32 %73, %74
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_13.exit: ; preds = %cond.true.i119, %cond.false.i121
  %cond.i122 = phi i32 [ %mul.i118, %cond.true.i119 ], [ %sub.i120, %cond.false.i121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i112)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i114)
  %75 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %75, %cond.i122
  store i32 %add46, ptr %total, align 4
  %call47 = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef 2)
  %and48 = and i32 %call47, 255
  %add49 = add nsw i32 %add46, %and48
  store i32 %add49, ptr %total, align 4
  %76 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %76, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i123)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i125)
  store i32 %and50, ptr %mode.addr.i123, align 4
  %add.i126 = add nsw i32 %76, 16
  store i32 %add.i126, ptr %t.i125, align 4
  %cmp.i127 = icmp ult i32 %and50, 2
  br i1 %cmp.i127, label %cond.true.i130, label %cond.false.i132

cond.true.i130:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_13.exit
  %77 = load i32, ptr %t.i125, align 4
  %78 = load i32, ptr %mode.addr.i123, align 4
  %add1.i128 = add nsw i32 %78, 1
  %mul.i129 = mul nsw i32 %77, %add1.i128
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_15.exit

cond.false.i132:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_13.exit
  %79 = load i32, ptr %t.i125, align 4
  %80 = load i32, ptr %mode.addr.i123, align 4
  %sub.i131 = sub nsw i32 %79, %80
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_15.exit: ; preds = %cond.true.i130, %cond.false.i132
  %cond.i133 = phi i32 [ %mul.i129, %cond.true.i130 ], [ %sub.i131, %cond.false.i132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i123)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i125)
  %81 = load i32, ptr %total, align 4
  %add53 = add nsw i32 %81, %cond.i133
  store i32 %add53, ptr %total, align 4
  ret i32 %add53
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_046_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef %sub)
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
