; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_031.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_031.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_031_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i160 = alloca i32, align 4
  %t.i162 = alloca i32, align 4
  %mode.addr.i149 = alloca i32, align 4
  %t.i151 = alloca i32, align 4
  %x.addr.i136 = alloca i32, align 4
  %s.i137 = alloca i32, align 4
  %i.i138 = alloca i32, align 4
  %mode.addr.i91 = alloca i32, align 4
  %t.i93 = alloca i32, align 4
  %x.addr.i78 = alloca i32, align 4
  %s.i79 = alloca i32, align 4
  %i.i80 = alloca i32, align 4
  %mode.addr.i33 = alloca i32, align 4
  %t.i35 = alloca i32, align 4
  %mode.addr.i22 = alloca i32, align 4
  %t.i24 = alloca i32, align 4
  %mode.addr.i5 = alloca i32, align 4
  %t.i7 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
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
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %4, %cond.i
  store i32 %add1, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add2, ptr %x.addr.i1, align 4
  store i32 %add2, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i2 = icmp slt i32 %storemerge, 7
  br i1 %cmp.i2, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit

for.body.i:                                       ; preds = %for.cond.i
  %6 = load i32, ptr %x.addr.i1, align 4
  %7 = load i32, ptr %i.i, align 4
  %xor.i = xor i32 %6, %7
  %add.i3 = add nsw i32 %xor.i, 9
  %8 = load i32, ptr %s.i, align 4
  %add1.i4 = add nsw i32 %8, %add.i3
  %shl.i = shl i32 %add1.i4, 1
  %shr.i = ashr i32 %add1.i4, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %9 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %9, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit: ; preds = %for.cond.i
  %10 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %11 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %11, %10
  store i32 %add4, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %12, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit
  %13 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %13, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i7)
  store i32 %and7, ptr %mode.addr.i5, align 4
  %add.i8 = add nsw i32 %13, 3
  store i32 %add.i8, ptr %t.i7, align 4
  %cmp.i9 = icmp ult i32 %and7, 2
  br i1 %cmp.i9, label %cond.true.i12, label %cond.false.i14

cond.true.i12:                                    ; preds = %if.then
  %14 = load i32, ptr %t.i7, align 4
  %15 = load i32, ptr %mode.addr.i5, align 4
  %add1.i10 = add nsw i32 %15, 1
  %mul.i11 = mul nsw i32 %14, %add1.i10
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_2.exit

cond.false.i14:                                   ; preds = %if.then
  %16 = load i32, ptr %t.i7, align 4
  %17 = load i32, ptr %mode.addr.i5, align 4
  %sub.i13 = sub nsw i32 %16, %17
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_2.exit: ; preds = %cond.true.i12, %cond.false.i14
  %cond.i15 = phi i32 [ %mul.i11, %cond.true.i12 ], [ %sub.i13, %cond.false.i14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i7)
  %18 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %18, %cond.i15
  store i32 %add10, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit
  %call11 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %19 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %19, %call11
  store i32 %add12, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %21 = mul i32 %20, 3
  %add.i19 = add i32 %21, 43
  %shr.i20 = ashr i32 %add.i19, 1
  %xor.i21 = xor i32 %add.i19, %shr.i20
  %mul1.i = shl nsw i32 %xor.i21, 2
  %add2.i = add nsw i32 %mul1.i, 32
  %shr3.i = ashr exact i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 33
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 34
  %shr11.i = ashr exact i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 35
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
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
  %22 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %22, %xor28.i
  store i32 %add15, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %24 = and i32 %23, 1
  %tobool18.not.not = icmp eq i32 %24, 0
  br i1 %tobool18.not.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %25 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %25, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i24)
  store i32 %and20, ptr %mode.addr.i22, align 4
  %add.i25 = add nsw i32 %25, 6
  store i32 %add.i25, ptr %t.i24, align 4
  %cmp.i26 = icmp ult i32 %and20, 2
  br i1 %cmp.i26, label %cond.true.i29, label %cond.false.i31

cond.true.i29:                                    ; preds = %if.then19
  %26 = load i32, ptr %t.i24, align 4
  %27 = load i32, ptr %mode.addr.i22, align 4
  %add1.i27 = add nsw i32 %27, 1
  %mul.i28 = mul nsw i32 %26, %add1.i27
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_5.exit

cond.false.i31:                                   ; preds = %if.then19
  %28 = load i32, ptr %t.i24, align 4
  %29 = load i32, ptr %mode.addr.i22, align 4
  %sub.i30 = sub nsw i32 %28, %29
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_5.exit: ; preds = %cond.true.i29, %cond.false.i31
  %cond.i32 = phi i32 [ %mul.i28, %cond.true.i29 ], [ %sub.i30, %cond.false.i31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i24)
  %30 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %30, %cond.i32
  store i32 %add23, ptr %total, align 4
  br label %if.end24

if.end24:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_5.exit, %if.end
  %31 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %31, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i35)
  store i32 %and25, ptr %mode.addr.i33, align 4
  %add.i36 = add nsw i32 %31, 7
  store i32 %add.i36, ptr %t.i35, align 4
  %cmp.i37 = icmp ult i32 %and25, 2
  br i1 %cmp.i37, label %cond.true.i40, label %cond.false.i42

cond.true.i40:                                    ; preds = %if.end24
  %32 = load i32, ptr %t.i35, align 4
  %33 = load i32, ptr %mode.addr.i33, align 4
  %add1.i38 = add nsw i32 %33, 1
  %mul.i39 = mul nsw i32 %32, %add1.i38
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit

cond.false.i42:                                   ; preds = %if.end24
  %34 = load i32, ptr %t.i35, align 4
  %35 = load i32, ptr %mode.addr.i33, align 4
  %sub.i41 = sub nsw i32 %34, %35
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit: ; preds = %cond.true.i40, %cond.false.i42
  %cond.i43 = phi i32 [ %mul.i39, %cond.true.i40 ], [ %sub.i41, %cond.false.i42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i35)
  %36 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %36, %cond.i43
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %37, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit
  %38 = load i32, ptr %x.addr, align 4
  %39 = mul i32 %38, 3
  %add.i47 = add i32 %39, 55
  %shr.i48 = ashr i32 %add.i47, 1
  %xor.i49 = xor i32 %add.i47, %shr.i48
  %mul1.i50 = shl nsw i32 %xor.i49, 2
  %add2.i51 = add nsw i32 %mul1.i50, 32
  %shr3.i52 = ashr exact i32 %add2.i51, 2
  %xor4.i53 = xor i32 %add2.i51, %shr3.i52
  %mul5.i54 = mul nsw i32 %xor4.i53, 5
  %add6.i55 = add nsw i32 %mul5.i54, 33
  %shr7.i56 = ashr i32 %add6.i55, 3
  %xor8.i57 = xor i32 %add6.i55, %shr7.i56
  %mul9.i58 = mul nsw i32 %xor8.i57, 6
  %add10.i59 = add nsw i32 %mul9.i58, 34
  %shr11.i60 = ashr exact i32 %add10.i59, 1
  %xor12.i61 = xor i32 %add10.i59, %shr11.i60
  %mul13.i62 = mul nsw i32 %xor12.i61, 7
  %add14.i63 = add nsw i32 %mul13.i62, 35
  %shr15.i64 = ashr i32 %add14.i63, 2
  %xor16.i65 = xor i32 %add14.i63, %shr15.i64
  %mul17.i66 = shl nsw i32 %xor16.i65, 3
  %add18.i67 = add nsw i32 %mul17.i66, 36
  %shr19.i68 = ashr i32 %add18.i67, 3
  %xor20.i69 = xor i32 %add18.i67, %shr19.i68
  %mul21.i70 = mul nsw i32 %xor20.i69, 9
  %add22.i71 = add nsw i32 %mul21.i70, 37
  %shr23.i72 = ashr i32 %add22.i71, 1
  %xor24.i73 = xor i32 %add22.i71, %shr23.i72
  %mul25.i74 = mul nsw i32 %xor24.i73, 10
  %add26.i75 = add nsw i32 %mul25.i74, 38
  %shr27.i76 = ashr i32 %add26.i75, 2
  %xor28.i77 = xor i32 %add26.i75, %shr27.i76
  %40 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %40, %xor28.i77
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit
  %41 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %41, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i79)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i80)
  store i32 %add39, ptr %x.addr.i78, align 4
  store i32 %add39, ptr %s.i79, align 4
  br label %for.cond.i82

for.cond.i82:                                     ; preds = %for.body.i89, %if.end38
  %storemerge171 = phi i32 [ 0, %if.end38 ], [ %inc.i90, %for.body.i89 ]
  store i32 %storemerge171, ptr %i.i80, align 4
  %cmp.i81 = icmp slt i32 %storemerge171, 7
  br i1 %cmp.i81, label %for.body.i89, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit

for.body.i89:                                     ; preds = %for.cond.i82
  %42 = load i32, ptr %x.addr.i78, align 4
  %43 = load i32, ptr %i.i80, align 4
  %xor.i83 = xor i32 %42, %43
  %add.i84 = add nsw i32 %xor.i83, 9
  %44 = load i32, ptr %s.i79, align 4
  %add1.i85 = add nsw i32 %44, %add.i84
  %shl.i86 = shl i32 %add1.i85, 1
  %shr.i87 = ashr i32 %add1.i85, 3
  %xor2.i88 = xor i32 %shl.i86, %shr.i87
  store i32 %xor2.i88, ptr %s.i79, align 4
  %45 = load i32, ptr %i.i80, align 4
  %inc.i90 = add nsw i32 %45, 1
  br label %for.cond.i82, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit: ; preds = %for.cond.i82
  %46 = load i32, ptr %s.i79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i79)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i80)
  %47 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %47, %46
  store i32 %add41, ptr %total, align 4
  %48 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %48, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i93)
  store i32 %and42, ptr %mode.addr.i91, align 4
  %add.i94 = add nsw i32 %48, 11
  store i32 %add.i94, ptr %t.i93, align 4
  %cmp.i95 = icmp ult i32 %and42, 2
  br i1 %cmp.i95, label %cond.true.i98, label %cond.false.i100

cond.true.i98:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit
  %49 = load i32, ptr %t.i93, align 4
  %50 = load i32, ptr %mode.addr.i91, align 4
  %add1.i96 = add nsw i32 %50, 1
  %mul.i97 = mul nsw i32 %49, %add1.i96
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_10.exit

cond.false.i100:                                  ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit
  %51 = load i32, ptr %t.i93, align 4
  %52 = load i32, ptr %mode.addr.i91, align 4
  %sub.i99 = sub nsw i32 %51, %52
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_10.exit: ; preds = %cond.true.i98, %cond.false.i100
  %cond.i101 = phi i32 [ %mul.i97, %cond.true.i98 ], [ %sub.i99, %cond.false.i100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i93)
  %53 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %53, %cond.i101
  store i32 %add45, ptr %total, align 4
  %54 = load i32, ptr %x.addr, align 4
  %55 = and i32 %54, 1
  %tobool48.not.not = icmp eq i32 %55, 0
  br i1 %tobool48.not.not, label %if.then49, label %if.end52

if.then49:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_10.exit
  %call50 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %56 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %56, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_10.exit
  %57 = load i32, ptr %x.addr, align 4
  %58 = mul i32 %57, 3
  %add.i105 = add i32 %58, 67
  %shr.i106 = ashr i32 %add.i105, 1
  %xor.i107 = xor i32 %add.i105, %shr.i106
  %mul1.i108 = shl nsw i32 %xor.i107, 2
  %add2.i109 = add nsw i32 %mul1.i108, 32
  %shr3.i110 = ashr exact i32 %add2.i109, 2
  %xor4.i111 = xor i32 %add2.i109, %shr3.i110
  %mul5.i112 = mul nsw i32 %xor4.i111, 5
  %add6.i113 = add nsw i32 %mul5.i112, 33
  %shr7.i114 = ashr i32 %add6.i113, 3
  %xor8.i115 = xor i32 %add6.i113, %shr7.i114
  %mul9.i116 = mul nsw i32 %xor8.i115, 6
  %add10.i117 = add nsw i32 %mul9.i116, 34
  %shr11.i118 = ashr exact i32 %add10.i117, 1
  %xor12.i119 = xor i32 %add10.i117, %shr11.i118
  %mul13.i120 = mul nsw i32 %xor12.i119, 7
  %add14.i121 = add nsw i32 %mul13.i120, 35
  %shr15.i122 = ashr i32 %add14.i121, 2
  %xor16.i123 = xor i32 %add14.i121, %shr15.i122
  %mul17.i124 = shl nsw i32 %xor16.i123, 3
  %add18.i125 = add nsw i32 %mul17.i124, 36
  %shr19.i126 = ashr i32 %add18.i125, 3
  %xor20.i127 = xor i32 %add18.i125, %shr19.i126
  %mul21.i128 = mul nsw i32 %xor20.i127, 9
  %add22.i129 = add nsw i32 %mul21.i128, 37
  %shr23.i130 = ashr i32 %add22.i129, 1
  %xor24.i131 = xor i32 %add22.i129, %shr23.i130
  %mul25.i132 = mul nsw i32 %xor24.i131, 10
  %add26.i133 = add nsw i32 %mul25.i132, 38
  %shr27.i134 = ashr i32 %add26.i133, 2
  %xor28.i135 = xor i32 %add26.i133, %shr27.i134
  %59 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %59, %xor28.i135
  store i32 %add55, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %add56 = add nsw i32 %60, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i137)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i138)
  store i32 %add56, ptr %x.addr.i136, align 4
  store i32 %add56, ptr %s.i137, align 4
  br label %for.cond.i140

for.cond.i140:                                    ; preds = %for.body.i147, %if.end52
  %storemerge172 = phi i32 [ 0, %if.end52 ], [ %inc.i148, %for.body.i147 ]
  store i32 %storemerge172, ptr %i.i138, align 4
  %cmp.i139 = icmp slt i32 %storemerge172, 7
  br i1 %cmp.i139, label %for.body.i147, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_13.exit

for.body.i147:                                    ; preds = %for.cond.i140
  %61 = load i32, ptr %x.addr.i136, align 4
  %62 = load i32, ptr %i.i138, align 4
  %xor.i141 = xor i32 %61, %62
  %add.i142 = add nsw i32 %xor.i141, 9
  %63 = load i32, ptr %s.i137, align 4
  %add1.i143 = add nsw i32 %63, %add.i142
  %shl.i144 = shl i32 %add1.i143, 1
  %shr.i145 = ashr i32 %add1.i143, 3
  %xor2.i146 = xor i32 %shl.i144, %shr.i145
  store i32 %xor2.i146, ptr %s.i137, align 4
  %64 = load i32, ptr %i.i138, align 4
  %inc.i148 = add nsw i32 %64, 1
  br label %for.cond.i140, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_13.exit: ; preds = %for.cond.i140
  %65 = load i32, ptr %s.i137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i136)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i137)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i138)
  %66 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %66, %65
  store i32 %add58, ptr %total, align 4
  %67 = load i32, ptr %x.addr, align 4
  %and60 = and i32 %67, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_13.exit
  %68 = load i32, ptr %x.addr, align 4
  %and63 = and i32 %68, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i149)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i151)
  store i32 %and63, ptr %mode.addr.i149, align 4
  %add.i152 = add nsw i32 %68, 15
  store i32 %add.i152, ptr %t.i151, align 4
  %cmp.i153 = icmp ult i32 %and63, 2
  br i1 %cmp.i153, label %cond.true.i156, label %cond.false.i158

cond.true.i156:                                   ; preds = %if.then62
  %69 = load i32, ptr %t.i151, align 4
  %70 = load i32, ptr %mode.addr.i149, align 4
  %add1.i154 = add nsw i32 %70, 1
  %mul.i155 = mul nsw i32 %69, %add1.i154
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_14.exit

cond.false.i158:                                  ; preds = %if.then62
  %71 = load i32, ptr %t.i151, align 4
  %72 = load i32, ptr %mode.addr.i149, align 4
  %sub.i157 = sub nsw i32 %71, %72
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_14.exit: ; preds = %cond.true.i156, %cond.false.i158
  %cond.i159 = phi i32 [ %mul.i155, %cond.true.i156 ], [ %sub.i157, %cond.false.i158 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i149)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i151)
  %73 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %73, %cond.i159
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_14.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_13.exit
  %74 = load i32, ptr %x.addr, align 4
  %and68 = and i32 %74, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i160)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i162)
  store i32 %and68, ptr %mode.addr.i160, align 4
  %add.i163 = add nsw i32 %74, 16
  store i32 %add.i163, ptr %t.i162, align 4
  %cmp.i164 = icmp ult i32 %and68, 2
  br i1 %cmp.i164, label %cond.true.i167, label %cond.false.i169

cond.true.i167:                                   ; preds = %if.end67
  %75 = load i32, ptr %t.i162, align 4
  %76 = load i32, ptr %mode.addr.i160, align 4
  %add1.i165 = add nsw i32 %76, 1
  %mul.i166 = mul nsw i32 %75, %add1.i165
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_15.exit

cond.false.i169:                                  ; preds = %if.end67
  %77 = load i32, ptr %t.i162, align 4
  %78 = load i32, ptr %mode.addr.i160, align 4
  %sub.i168 = sub nsw i32 %77, %78
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_15.exit: ; preds = %cond.true.i167, %cond.false.i169
  %cond.i170 = phi i32 [ %mul.i166, %cond.true.i167 ], [ %sub.i168, %cond.false.i169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i160)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i162)
  %79 = load i32, ptr %total, align 4
  %add71 = add nsw i32 %79, %cond.i170
  store i32 %add71, ptr %total, align 4
  ret i32 %add71
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %sub)
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
