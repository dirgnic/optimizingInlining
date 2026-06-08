; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_037.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_037.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_037_step(i32 noundef %x) #0 {
entry:
  %x.addr.i115 = alloca i32, align 4
  %s.i116 = alloca i32, align 4
  %limit.i117 = alloca i32, align 4
  %i.i118 = alloca i32, align 4
  %x.addr.i104 = alloca i32, align 4
  %y.i105 = alloca i32, align 4
  %i.i106 = alloca i32, align 4
  %mode.addr.i92 = alloca i32, align 4
  %out.i94 = alloca i32, align 4
  %retval.i74 = alloca i32, align 4
  %mode.addr.i75 = alloca i32, align 4
  %x.addr.i76 = alloca i32, align 4
  %x.addr.i55 = alloca i32, align 4
  %s.i56 = alloca i32, align 4
  %limit.i57 = alloca i32, align 4
  %i.i58 = alloca i32, align 4
  %x.addr.i44 = alloca i32, align 4
  %y.i45 = alloca i32, align 4
  %i.i46 = alloca i32, align 4
  %retval.i28 = alloca i32, align 4
  %mode.addr.i29 = alloca i32, align 4
  %x.addr.i30 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i18 = alloca i32, align 4
  %x.addr.i19 = alloca i32, align 4
  %x.addr.i6 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i7 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 45, ptr %total, align 4
  %and = and i32 %x, 3
  %and1 = and i32 %x, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %and1, ptr %out.i, align 4
  %and.i = and i32 %x, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 7
  store i32 %add.i, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = load i32, ptr %out.i, align 4
  %xor.i2 = xor i32 %2, 3
  store i32 %xor.i2, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit: ; preds = %if.end.i, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %4, %3
  store i32 %add3, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %5, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit
  %6 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %6, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %and6, ptr %x.addr.i3, align 4
  %add.i4 = add nuw nsw i32 %and6, 9
  store i32 %add.i4, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then
  %storemerge138 = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i ]
  store i32 %storemerge138, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge138, 2
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_2.exit

for.body.i:                                       ; preds = %for.cond.i
  %7 = load i32, ptr %i.i, align 4
  %8 = load i32, ptr %x.addr.i3, align 4
  %and.i5 = and i32 %8, 3
  %add1.i = add nsw i32 %7, %and.i5
  %9 = load i32, ptr %y.i, align 4
  %add2.i = add nsw i32 %9, %add1.i
  store i32 %add2.i, ptr %y.i, align 4
  %10 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %10, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_2.exit: ; preds = %for.cond.i
  %11 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %12 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %12, %11
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i7)
  store i32 1, ptr %x.addr.i6, align 4
  store i32 1, ptr %s.i, align 4
  store i32 6, ptr %limit.i, align 4
  br label %for.cond.i11

for.cond.i11:                                     ; preds = %if.end.i16, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc.i17, %if.end.i16 ]
  store i32 %storemerge, ptr %i.i7, align 4
  %13 = load i32, ptr %limit.i, align 4
  %cmp.i10 = icmp slt i32 %storemerge, %13
  br i1 %cmp.i10, label %for.body.i13, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit

for.body.i13:                                     ; preds = %for.cond.i11
  %14 = load i32, ptr %i.i7, align 4
  %mul.i = mul nsw i32 %14, %14
  %sub.i = add nsw i32 %mul.i, -5
  %15 = load i32, ptr %s.i, align 4
  %add1.i12 = add nsw i32 %15, %sub.i
  store i32 %add1.i12, ptr %s.i, align 4
  %and2.i = and i32 %add1.i12, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i15, label %if.end.i16

if.then.i15:                                      ; preds = %for.body.i13
  %16 = load i32, ptr %i.i7, align 4
  %17 = load i32, ptr %x.addr.i6, align 4
  %add4.i = add nsw i32 %16, %17
  %18 = load i32, ptr %s.i, align 4
  %xor.i14 = xor i32 %18, %add4.i
  store i32 %xor.i14, ptr %s.i, align 4
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i15, %for.body.i13
  %19 = load i32, ptr %i.i7, align 4
  %inc.i17 = add nsw i32 %19, 1
  br label %for.cond.i11, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit: ; preds = %for.cond.i11
  %20 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i7)
  %21 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %21, %20
  store i32 %add10, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %22, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i19)
  store i32 1, ptr %mode.addr.i18, align 4
  store i32 %and11, ptr %x.addr.i19, align 4
  %23 = load i32, ptr %mode.addr.i18, align 4
  %cmp1.i = icmp eq i32 %23, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit
  %24 = load i32, ptr %x.addr.i19, align 4
  %mul.i24 = mul nsw i32 %24, 3
  store i32 %mul.i24, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

if.end3.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit
  %25 = load i32, ptr %mode.addr.i18, align 4
  %cmp4.i = icmp eq i32 %25, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %26 = load i32, ptr %x.addr.i19, align 4
  %sub.i25 = add nsw i32 %26, -5
  store i32 %sub.i25, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

if.end6.i:                                        ; preds = %if.end3.i
  %27 = load i32, ptr %x.addr.i19, align 4
  %28 = load i32, ptr %mode.addr.i18, align 4
  %add7.i = add nsw i32 %27, %28
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %29 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i19)
  %30 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %30, %29
  store i32 %add13, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %32 = and i32 %31, 1
  %tobool16.not.not = icmp eq i32 %32, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit
  %call18 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef 1)
  %33 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %33, %call18
  store i32 %add19, ptr %total, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit
  %34 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %34, 40
  store i32 %add22, ptr %total, align 4
  %35 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %35, 3
  %and24 = and i32 %35, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i29)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i30)
  store i32 %and23, ptr %mode.addr.i29, align 4
  store i32 %and24, ptr %x.addr.i30, align 4
  %cmp.i31 = icmp eq i32 %and23, 0
  br i1 %cmp.i31, label %if.then.i33, label %if.end.i35

if.then.i33:                                      ; preds = %if.end20
  %36 = load i32, ptr %x.addr.i30, align 4
  %add.i32 = add nsw i32 %36, 9
  store i32 %add.i32, ptr %retval.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit

if.end.i35:                                       ; preds = %if.end20
  %37 = load i32, ptr %mode.addr.i29, align 4
  %cmp1.i34 = icmp eq i32 %37, 1
  br i1 %cmp1.i34, label %if.then2.i37, label %if.end3.i39

if.then2.i37:                                     ; preds = %if.end.i35
  %38 = load i32, ptr %x.addr.i30, align 4
  %mul.i36 = shl nsw i32 %38, 1
  store i32 %mul.i36, ptr %retval.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit

if.end3.i39:                                      ; preds = %if.end.i35
  %39 = load i32, ptr %mode.addr.i29, align 4
  %cmp4.i38 = icmp eq i32 %39, 2
  br i1 %cmp4.i38, label %if.then5.i41, label %if.end6.i43

if.then5.i41:                                     ; preds = %if.end3.i39
  %40 = load i32, ptr %x.addr.i30, align 4
  %sub.i40 = add nsw i32 %40, -7
  store i32 %sub.i40, ptr %retval.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit

if.end6.i43:                                      ; preds = %if.end3.i39
  %41 = load i32, ptr %x.addr.i30, align 4
  %42 = load i32, ptr %mode.addr.i29, align 4
  %add7.i42 = add nsw i32 %41, %42
  store i32 %add7.i42, ptr %retval.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit: ; preds = %if.then.i33, %if.then2.i37, %if.then5.i41, %if.end6.i43
  %43 = load i32, ptr %retval.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i30)
  %44 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %44, %43
  store i32 %add26, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %45, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit
  %46 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %46, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i46)
  store i32 %and31, ptr %x.addr.i44, align 4
  %add.i47 = add nuw nsw i32 %and31, 7
  store i32 %add.i47, ptr %y.i45, align 4
  br label %for.cond.i49

for.cond.i49:                                     ; preds = %for.body.i53, %if.then30
  %storemerge137 = phi i32 [ 0, %if.then30 ], [ %inc.i54, %for.body.i53 ]
  store i32 %storemerge137, ptr %i.i46, align 4
  %cmp.i48 = icmp slt i32 %storemerge137, 3
  br i1 %cmp.i48, label %for.body.i53, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_8.exit

for.body.i53:                                     ; preds = %for.cond.i49
  %47 = load i32, ptr %i.i46, align 4
  %48 = load i32, ptr %x.addr.i44, align 4
  %and.i50 = and i32 %48, 3
  %add1.i51 = add nsw i32 %47, %and.i50
  %49 = load i32, ptr %y.i45, align 4
  %add2.i52 = add nsw i32 %49, %add1.i51
  store i32 %add2.i52, ptr %y.i45, align 4
  %50 = load i32, ptr %i.i46, align 4
  %inc.i54 = add nsw i32 %50, 1
  br label %for.cond.i49, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_8.exit: ; preds = %for.cond.i49
  %51 = load i32, ptr %y.i45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i46)
  %52 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %52, %51
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_8.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i58)
  store i32 7, ptr %x.addr.i55, align 4
  store i32 7, ptr %s.i56, align 4
  store i32 8, ptr %limit.i57, align 4
  br label %for.cond.i62

for.cond.i62:                                     ; preds = %if.end.i72, %if.end34
  %storemerge134 = phi i32 [ 0, %if.end34 ], [ %inc.i73, %if.end.i72 ]
  store i32 %storemerge134, ptr %i.i58, align 4
  %53 = load i32, ptr %limit.i57, align 4
  %cmp.i61 = icmp slt i32 %storemerge134, %53
  br i1 %cmp.i61, label %for.body.i68, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_9.exit

for.body.i68:                                     ; preds = %for.cond.i62
  %54 = load i32, ptr %i.i58, align 4
  %mul.i63 = mul nsw i32 %54, %54
  %sub.i64 = add nsw i32 %mul.i63, -5
  %55 = load i32, ptr %s.i56, align 4
  %add1.i65 = add nsw i32 %55, %sub.i64
  store i32 %add1.i65, ptr %s.i56, align 4
  %and2.i66 = and i32 %add1.i65, 1
  %cmp3.i67 = icmp eq i32 %and2.i66, 0
  br i1 %cmp3.i67, label %if.then.i71, label %if.end.i72

if.then.i71:                                      ; preds = %for.body.i68
  %56 = load i32, ptr %i.i58, align 4
  %57 = load i32, ptr %x.addr.i55, align 4
  %add4.i69 = add nsw i32 %56, %57
  %58 = load i32, ptr %s.i56, align 4
  %xor.i70 = xor i32 %58, %add4.i69
  store i32 %xor.i70, ptr %s.i56, align 4
  br label %if.end.i72

if.end.i72:                                       ; preds = %if.then.i71, %for.body.i68
  %59 = load i32, ptr %i.i58, align 4
  %inc.i73 = add nsw i32 %59, 1
  br label %for.cond.i62, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_9.exit: ; preds = %for.cond.i62
  %60 = load i32, ptr %s.i56, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i58)
  %61 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %61, %60
  store i32 %add36, ptr %total, align 4
  %62 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %62, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i74)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i75)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i76)
  store i32 3, ptr %mode.addr.i75, align 4
  store i32 %and37, ptr %x.addr.i76, align 4
  %63 = load i32, ptr %mode.addr.i75, align 4
  %cmp1.i80 = icmp eq i32 %63, 1
  br i1 %cmp1.i80, label %if.then2.i83, label %if.end3.i85

if.then2.i83:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_9.exit
  %64 = load i32, ptr %x.addr.i76, align 4
  %mul.i82 = mul nsw i32 %64, 3
  store i32 %mul.i82, ptr %retval.i74, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_10.exit

if.end3.i85:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_9.exit
  %65 = load i32, ptr %mode.addr.i75, align 4
  %cmp4.i84 = icmp eq i32 %65, 2
  br i1 %cmp4.i84, label %if.then5.i87, label %if.end6.i89

if.then5.i87:                                     ; preds = %if.end3.i85
  %66 = load i32, ptr %x.addr.i76, align 4
  %sub.i86 = add nsw i32 %66, -5
  store i32 %sub.i86, ptr %retval.i74, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_10.exit

if.end6.i89:                                      ; preds = %if.end3.i85
  %67 = load i32, ptr %x.addr.i76, align 4
  %68 = load i32, ptr %mode.addr.i75, align 4
  %add7.i88 = add nsw i32 %67, %68
  store i32 %add7.i88, ptr %retval.i74, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_10.exit: ; preds = %if.then2.i83, %if.then5.i87, %if.end6.i89
  %69 = load i32, ptr %retval.i74, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i74)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i75)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i76)
  %70 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %70, %69
  store i32 %add39, ptr %total, align 4
  %71 = load i32, ptr %x.addr, align 4
  %72 = and i32 %71, 1
  %tobool42.not.not = icmp eq i32 %72, 0
  br i1 %tobool42.not.not, label %if.then43, label %if.end46

if.then43:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_10.exit
  %call44 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef 3)
  %73 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %73, %call44
  store i32 %add45, ptr %total, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_10.exit
  %74 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %74, 32
  store i32 %add48, ptr %total, align 4
  %75 = load i32, ptr %x.addr, align 4
  %and49 = and i32 %75, 3
  %and50 = and i32 %75, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i94)
  store i32 %and49, ptr %mode.addr.i92, align 4
  store i32 %and50, ptr %out.i94, align 4
  %and.i95 = and i32 %75, 1
  %tobool.i96.not = icmp eq i32 %and.i95, 0
  br i1 %tobool.i96.not, label %if.end.i101, label %if.then.i98

if.then.i98:                                      ; preds = %if.end46
  %76 = load i32, ptr %out.i94, align 4
  %add.i97 = add nsw i32 %76, 3
  store i32 %add.i97, ptr %out.i94, align 4
  br label %if.end.i101

if.end.i101:                                      ; preds = %if.then.i98, %if.end46
  %77 = load i32, ptr %mode.addr.i92, align 4
  %and1.i99 = and i32 %77, 2
  %tobool2.i100.not = icmp eq i32 %and1.i99, 0
  br i1 %tobool2.i100.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_13.exit, label %if.then3.i103

if.then3.i103:                                    ; preds = %if.end.i101
  %78 = load i32, ptr %out.i94, align 4
  %xor.i102 = xor i32 %78, 7
  store i32 %xor.i102, ptr %out.i94, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_13.exit: ; preds = %if.end.i101, %if.then3.i103
  %79 = load i32, ptr %out.i94, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i94)
  %80 = load i32, ptr %total, align 4
  %add52 = add nsw i32 %80, %79
  store i32 %add52, ptr %total, align 4
  %81 = load i32, ptr %x.addr, align 4
  %and54 = and i32 %81, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_13.exit
  %82 = load i32, ptr %x.addr, align 4
  %and57 = and i32 %82, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i105)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i106)
  store i32 %and57, ptr %x.addr.i104, align 4
  %add.i107 = add nuw nsw i32 %and57, 13
  store i32 %add.i107, ptr %y.i105, align 4
  br label %for.cond.i109

for.cond.i109:                                    ; preds = %for.body.i113, %if.then56
  %storemerge136 = phi i32 [ 0, %if.then56 ], [ %inc.i114, %for.body.i113 ]
  store i32 %storemerge136, ptr %i.i106, align 4
  %cmp.i108 = icmp slt i32 %storemerge136, 3
  br i1 %cmp.i108, label %for.body.i113, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_14.exit

for.body.i113:                                    ; preds = %for.cond.i109
  %83 = load i32, ptr %i.i106, align 4
  %84 = load i32, ptr %x.addr.i104, align 4
  %and.i110 = and i32 %84, 3
  %add1.i111 = add nsw i32 %83, %and.i110
  %85 = load i32, ptr %y.i105, align 4
  %add2.i112 = add nsw i32 %85, %add1.i111
  store i32 %add2.i112, ptr %y.i105, align 4
  %86 = load i32, ptr %i.i106, align 4
  %inc.i114 = add nsw i32 %86, 1
  br label %for.cond.i109, !llvm.loop !10

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_14.exit: ; preds = %for.cond.i109
  %87 = load i32, ptr %y.i105, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i105)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i106)
  %88 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %88, %87
  store i32 %add59, ptr %total, align 4
  br label %if.end60

if.end60:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_14.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_13.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i117)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i118)
  store i32 0, ptr %x.addr.i115, align 4
  store i32 0, ptr %s.i116, align 4
  store i32 5, ptr %limit.i117, align 4
  br label %for.cond.i122

for.cond.i122:                                    ; preds = %if.end.i132, %if.end60
  %storemerge135 = phi i32 [ 0, %if.end60 ], [ %inc.i133, %if.end.i132 ]
  store i32 %storemerge135, ptr %i.i118, align 4
  %89 = load i32, ptr %limit.i117, align 4
  %cmp.i121 = icmp slt i32 %storemerge135, %89
  br i1 %cmp.i121, label %for.body.i128, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_15.exit

for.body.i128:                                    ; preds = %for.cond.i122
  %90 = load i32, ptr %i.i118, align 4
  %mul.i123 = mul nsw i32 %90, %90
  %sub.i124 = add nsw i32 %mul.i123, -5
  %91 = load i32, ptr %s.i116, align 4
  %add1.i125 = add nsw i32 %91, %sub.i124
  store i32 %add1.i125, ptr %s.i116, align 4
  %and2.i126 = and i32 %add1.i125, 1
  %cmp3.i127 = icmp eq i32 %and2.i126, 0
  br i1 %cmp3.i127, label %if.then.i131, label %if.end.i132

if.then.i131:                                     ; preds = %for.body.i128
  %92 = load i32, ptr %i.i118, align 4
  %93 = load i32, ptr %x.addr.i115, align 4
  %add4.i129 = add nsw i32 %92, %93
  %94 = load i32, ptr %s.i116, align 4
  %xor.i130 = xor i32 %94, %add4.i129
  store i32 %xor.i130, ptr %s.i116, align 4
  br label %if.end.i132

if.end.i132:                                      ; preds = %if.then.i131, %for.body.i128
  %95 = load i32, ptr %i.i118, align 4
  %inc.i133 = add nsw i32 %95, 1
  br label %for.cond.i122, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_15.exit: ; preds = %for.cond.i122
  %96 = load i32, ptr %s.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i117)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i118)
  %97 = load i32, ptr %total, align 4
  %add62 = add nsw i32 %97, %96
  store i32 %add62, ptr %total, align 4
  ret i32 %add62
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_037_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_037_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef %sub1)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
