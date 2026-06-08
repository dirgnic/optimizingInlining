; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_033.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_033.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_033_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i78 = alloca i32, align 4
  %t.i80 = alloca i32, align 4
  %mode.addr.i67 = alloca i32, align 4
  %t.i69 = alloca i32, align 4
  %mode.addr.i56 = alloca i32, align 4
  %t.i58 = alloca i32, align 4
  %mode.addr.i45 = alloca i32, align 4
  %t.i47 = alloca i32, align 4
  %mode.addr.i35 = alloca i32, align 4
  %t.i37 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %out.i25 = alloca i32, align 4
  %retval.i11 = alloca i32, align 4
  %x.addr.i13 = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL18image_033_branch_0ii(i32 noundef 1, i32 noundef 7)
  store i32 %call, ptr %total, align 4
  %and = and i32 %x, 3
  %and1 = and i32 %x, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 %and1, ptr %x.addr.i, align 4
  switch i32 %and, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 3
  store i32 %add.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

sw.bb1.i:                                         ; preds = %entry
  %1 = load i32, ptr %x.addr.i, align 4
  %xor.i = xor i32 %1, 5
  store i32 %xor.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

sw.bb2.i:                                         ; preds = %entry
  %2 = load i32, ptr %x.addr.i, align 4
  %mul.i = shl nsw i32 %2, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

sw.default.i:                                     ; preds = %entry
  %3 = load i32, ptr %x.addr.i, align 4
  %sub.i = add nsw i32 %3, -7
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %4 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %5 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %5, %4
  store i32 %add3, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %6, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit
  %7 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %7, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 3, ptr %mode.addr.i1, align 4
  store i32 %and6, ptr %out.i, align 4
  %8 = load i32, ptr %out.i, align 4
  %add.i4 = add nsw i32 %8, 4
  store i32 %add.i4, ptr %out.i, align 4
  %9 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %9, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.then
  %10 = load i32, ptr %out.i, align 4
  %xor.i5 = xor i32 %10, 19
  store i32 %xor.i5, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit: ; preds = %if.then, %if.then3.i
  %11 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %12 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %12, %11
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit
  %13 = load i32, ptr %x.addr, align 4
  %and9 = and i32 %13, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and9, ptr %mode.addr.i6, align 4
  store i32 11, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and9, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end
  %14 = load i32, ptr %t.i, align 4
  %15 = load i32, ptr %mode.addr.i6, align 4
  %add1.i = add nsw i32 %15, 1
  %mul.i9 = mul nsw i32 %14, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit

cond.false.i:                                     ; preds = %if.end
  %16 = load i32, ptr %t.i, align 4
  %17 = load i32, ptr %mode.addr.i6, align 4
  %sub.i10 = sub nsw i32 %16, %17
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i9, %cond.true.i ], [ %sub.i10, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %18 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %18, %cond.i
  store i32 %add11, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %19, 7
  %call13 = call noundef i32 @_ZL18image_033_branch_4ii(i32 noundef 1, i32 noundef %and12)
  %add14 = add nsw i32 %add11, %call13
  store i32 %add14, ptr %total, align 4
  %20 = and i32 %19, 1
  %tobool17.not.not = icmp eq i32 %20, 0
  br i1 %tobool17.not.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit
  %21 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %21, 3
  %and20 = and i32 %21, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 %and20, ptr %x.addr.i13, align 4
  switch i32 %and19, label %sw.default.i22 [
    i32 0, label %sw.bb.i16
    i32 1, label %sw.bb1.i18
    i32 2, label %sw.bb2.i20
  ]

sw.bb.i16:                                        ; preds = %if.then18
  %22 = load i32, ptr %x.addr.i13, align 4
  %add.i15 = add nsw i32 %22, 7
  store i32 %add.i15, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit

sw.bb1.i18:                                       ; preds = %if.then18
  %23 = load i32, ptr %x.addr.i13, align 4
  %xor.i17 = xor i32 %23, 9
  store i32 %xor.i17, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit

sw.bb2.i20:                                       ; preds = %if.then18
  %24 = load i32, ptr %x.addr.i13, align 4
  %mul.i19 = mul nsw i32 %24, 5
  store i32 %mul.i19, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit

sw.default.i22:                                   ; preds = %if.then18
  %25 = load i32, ptr %x.addr.i13, align 4
  %sub.i21 = add nsw i32 %25, -4
  store i32 %sub.i21, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit: ; preds = %sw.bb.i16, %sw.bb1.i18, %sw.bb2.i20, %sw.default.i22
  %26 = load i32, ptr %retval.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %27 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %27, %26
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i25)
  store i32 3, ptr %mode.addr.i23, align 4
  store i32 0, ptr %out.i25, align 4
  %28 = load i32, ptr %out.i25, align 4
  %add.i28 = add nsw i32 %28, 8
  store i32 %add.i28, ptr %out.i25, align 4
  %29 = load i32, ptr %mode.addr.i23, align 4
  %and1.i30 = and i32 %29, 2
  %tobool2.i31.not = icmp eq i32 %and1.i30, 0
  br i1 %tobool2.i31.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit, label %if.then3.i34

if.then3.i34:                                     ; preds = %if.end23
  %30 = load i32, ptr %out.i25, align 4
  %xor.i33 = xor i32 %30, 4
  store i32 %xor.i33, ptr %out.i25, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit: ; preds = %if.end23, %if.then3.i34
  %31 = load i32, ptr %out.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i25)
  %32 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %32, %31
  store i32 %add25, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %33, 3
  %and27 = and i32 %33, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i37)
  store i32 %and26, ptr %mode.addr.i35, align 4
  store i32 %and27, ptr %t.i37, align 4
  %cmp.i38 = icmp ult i32 %and26, 2
  br i1 %cmp.i38, label %cond.true.i41, label %cond.false.i43

cond.true.i41:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit
  %34 = load i32, ptr %t.i37, align 4
  %35 = load i32, ptr %mode.addr.i35, align 4
  %add1.i39 = add nsw i32 %35, 1
  %mul.i40 = mul nsw i32 %34, %add1.i39
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit

cond.false.i43:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit
  %36 = load i32, ptr %t.i37, align 4
  %37 = load i32, ptr %mode.addr.i35, align 4
  %sub.i42 = sub nsw i32 %36, %37
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit: ; preds = %cond.true.i41, %cond.false.i43
  %cond.i44 = phi i32 [ %mul.i40, %cond.true.i41 ], [ %sub.i42, %cond.false.i43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i37)
  %38 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %38, %cond.i44
  store i32 %add29, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %39, 1
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit
  %40 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %40, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i47)
  store i32 1, ptr %mode.addr.i45, align 4
  %add.i48 = add nuw nsw i32 %and34, 3
  store i32 %add.i48, ptr %t.i47, align 4
  %41 = load i32, ptr %t.i47, align 4
  %42 = load i32, ptr %mode.addr.i45, align 4
  %add1.i50 = add nsw i32 %42, 1
  %mul.i51 = mul nsw i32 %41, %add1.i50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i47)
  %43 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %43, %mul.i51
  store i32 %add36, ptr %total, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit
  %44 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %44, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i58)
  store i32 %and38, ptr %mode.addr.i56, align 4
  store i32 6, ptr %t.i58, align 4
  %cmp.i60 = icmp ult i32 %and38, 2
  br i1 %cmp.i60, label %cond.true.i63, label %cond.false.i65

cond.true.i63:                                    ; preds = %if.end37
  %45 = load i32, ptr %t.i58, align 4
  %46 = load i32, ptr %mode.addr.i56, align 4
  %add1.i61 = add nsw i32 %46, 1
  %mul.i62 = mul nsw i32 %45, %add1.i61
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit

cond.false.i65:                                   ; preds = %if.end37
  %47 = load i32, ptr %t.i58, align 4
  %48 = load i32, ptr %mode.addr.i56, align 4
  %sub.i64 = sub nsw i32 %47, %48
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit: ; preds = %cond.true.i63, %cond.false.i65
  %cond.i66 = phi i32 [ %mul.i62, %cond.true.i63 ], [ %sub.i64, %cond.false.i65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i58)
  %49 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %49, %cond.i66
  store i32 %add40, ptr %total, align 4
  %50 = load i32, ptr %x.addr, align 4
  %and41 = and i32 %50, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i69)
  store i32 3, ptr %mode.addr.i67, align 4
  %add.i70 = add nuw nsw i32 %and41, 3
  store i32 %add.i70, ptr %t.i69, align 4
  %51 = load i32, ptr %t.i69, align 4
  %52 = load i32, ptr %mode.addr.i67, align 4
  %sub.i75 = sub nsw i32 %51, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i69)
  %53 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %53, %sub.i75
  store i32 %add43, ptr %total, align 4
  %54 = load i32, ptr %x.addr, align 4
  %55 = and i32 %54, 1
  %tobool46.not.not = icmp eq i32 %55, 0
  br i1 %tobool46.not.not, label %if.then47, label %if.end52

if.then47:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit
  %56 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %56, 3
  %and49 = and i32 %56, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i80)
  store i32 %and48, ptr %mode.addr.i78, align 4
  %add.i81 = add nuw nsw i32 %and49, 3
  store i32 %add.i81, ptr %t.i80, align 4
  %cmp.i82 = icmp ult i32 %and48, 2
  br i1 %cmp.i82, label %cond.true.i85, label %cond.false.i87

cond.true.i85:                                    ; preds = %if.then47
  %57 = load i32, ptr %t.i80, align 4
  %58 = load i32, ptr %mode.addr.i78, align 4
  %add1.i83 = add nsw i32 %58, 1
  %mul.i84 = mul nsw i32 %57, %add1.i83
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit

cond.false.i87:                                   ; preds = %if.then47
  %59 = load i32, ptr %t.i80, align 4
  %60 = load i32, ptr %mode.addr.i78, align 4
  %sub.i86 = sub nsw i32 %59, %60
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit: ; preds = %cond.true.i85, %cond.false.i87
  %cond.i88 = phi i32 [ %mul.i84, %cond.true.i85 ], [ %sub.i86, %cond.false.i87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i80)
  %61 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %61, %cond.i88
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit
  %call53 = call noundef i32 @_ZL17image_033_large_ai(i32 noundef 6)
  %62 = load i32, ptr %total, align 4
  %add54 = add nsw i32 %62, %call53
  store i32 %add54, ptr %total, align 4
  %63 = load i32, ptr %x.addr, align 4
  %and55 = and i32 %63, 7
  %call56 = call noundef i32 @_ZL17image_033_large_bi(i32 noundef %and55)
  %add57 = add nsw i32 %add54, %call56
  store i32 %add57, ptr %total, align 4
  %and59 = and i32 %63, 1
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end52
  %call62 = call noundef i32 @_ZL19image_033_recursivei(i32 noundef 2)
  %64 = load i32, ptr %total, align 4
  %add63 = add nsw i32 %64, %call62
  store i32 %add63, ptr %total, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end52
  %call65 = call noundef i32 @_ZL19image_033_recursivei(i32 noundef 3)
  %65 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %65, %call65
  store i32 %add66, ptr %total, align 4
  ret i32 %add66
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_033_branch_0ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -6
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_033_branch_4ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 2
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -5
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_033_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 33
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 34
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 35
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 36
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 37
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 38
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 39
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 40
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_033_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 11
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %add
  %shl = shl i32 %add1, 1
  %shr = ashr i32 %add1, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %s, align 4
  ret i32 %4
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_033_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_033_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
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
