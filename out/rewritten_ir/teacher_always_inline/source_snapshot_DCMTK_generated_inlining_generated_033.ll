; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_033.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_033.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_033_step(i32 noundef %x) #0 {
entry:
  %x.addr.i118 = alloca i32, align 4
  %s.i119 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i103 = alloca i32, align 4
  %t.i105 = alloca i32, align 4
  %mode.addr.i92 = alloca i32, align 4
  %t.i94 = alloca i32, align 4
  %mode.addr.i81 = alloca i32, align 4
  %t.i83 = alloca i32, align 4
  %mode.addr.i70 = alloca i32, align 4
  %t.i72 = alloca i32, align 4
  %mode.addr.i60 = alloca i32, align 4
  %t.i62 = alloca i32, align 4
  %mode.addr.i48 = alloca i32, align 4
  %out.i50 = alloca i32, align 4
  %retval.i36 = alloca i32, align 4
  %x.addr.i38 = alloca i32, align 4
  %retval.i20 = alloca i32, align 4
  %mode.addr.i21 = alloca i32, align 4
  %x.addr.i22 = alloca i32, align 4
  %mode.addr.i14 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i7 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i1 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 7, ptr %x.addr.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %0, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %entry
  %1 = load i32, ptr %x.addr.i, align 4
  %mul.i = mul nsw i32 %1, 3
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

if.end3.i:                                        ; preds = %entry
  %2 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %2, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %3 = load i32, ptr %x.addr.i, align 4
  %sub.i = add nsw i32 %3, -6
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

if.end6.i:                                        ; preds = %if.end3.i
  %4 = load i32, ptr %x.addr.i, align 4
  %5 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %4, %5
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %6 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %7 = load i32, ptr %total, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and = and i32 %8, 3
  %and1 = and i32 %8, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  store i32 %and1, ptr %x.addr.i3, align 4
  switch i32 %and, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit
  %9 = load i32, ptr %x.addr.i3, align 4
  %add.i4 = add nsw i32 %9, 3
  store i32 %add.i4, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit
  %10 = load i32, ptr %x.addr.i3, align 4
  %xor.i = xor i32 %10, 5
  store i32 %xor.i, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit
  %11 = load i32, ptr %x.addr.i3, align 4
  %mul.i5 = shl nsw i32 %11, 2
  store i32 %mul.i5, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_0.exit
  %12 = load i32, ptr %x.addr.i3, align 4
  %sub.i6 = add nsw i32 %12, -7
  store i32 %sub.i6, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %13 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  %14 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %14, %13
  store i32 %add3, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %15, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit
  %16 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %16, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 3, ptr %mode.addr.i7, align 4
  store i32 %and6, ptr %out.i, align 4
  %17 = load i32, ptr %out.i, align 4
  %add.i10 = add nsw i32 %17, 4
  store i32 %add.i10, ptr %out.i, align 4
  %18 = load i32, ptr %mode.addr.i7, align 4
  %and1.i = and i32 %18, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.then
  %19 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %19, 19
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit: ; preds = %if.then, %if.then3.i
  %20 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %21 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %21, %20
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_1.exit
  %22 = load i32, ptr %x.addr, align 4
  %and9 = and i32 %22, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and9, ptr %mode.addr.i14, align 4
  store i32 11, ptr %t.i, align 4
  %cmp.i17 = icmp ult i32 %and9, 2
  br i1 %cmp.i17, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end
  %23 = load i32, ptr %t.i, align 4
  %24 = load i32, ptr %mode.addr.i14, align 4
  %add1.i = add nsw i32 %24, 1
  %mul.i18 = mul nsw i32 %23, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit

cond.false.i:                                     ; preds = %if.end
  %25 = load i32, ptr %t.i, align 4
  %26 = load i32, ptr %mode.addr.i14, align 4
  %sub.i19 = sub nsw i32 %25, %26
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i18, %cond.true.i ], [ %sub.i19, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %27 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %27, %cond.i
  store i32 %add11, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %28, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i22)
  store i32 1, ptr %mode.addr.i21, align 4
  store i32 %and12, ptr %x.addr.i22, align 4
  %29 = load i32, ptr %mode.addr.i21, align 4
  %cmp1.i26 = icmp eq i32 %29, 1
  br i1 %cmp1.i26, label %if.then2.i29, label %if.end3.i31

if.then2.i29:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit
  %30 = load i32, ptr %x.addr.i22, align 4
  %mul.i28 = mul nsw i32 %30, 3
  store i32 %mul.i28, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit

if.end3.i31:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_3.exit
  %31 = load i32, ptr %mode.addr.i21, align 4
  %cmp4.i30 = icmp eq i32 %31, 2
  br i1 %cmp4.i30, label %if.then5.i33, label %if.end6.i35

if.then5.i33:                                     ; preds = %if.end3.i31
  %32 = load i32, ptr %x.addr.i22, align 4
  %sub.i32 = add nsw i32 %32, -5
  store i32 %sub.i32, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit

if.end6.i35:                                      ; preds = %if.end3.i31
  %33 = load i32, ptr %x.addr.i22, align 4
  %34 = load i32, ptr %mode.addr.i21, align 4
  %add7.i34 = add nsw i32 %33, %34
  store i32 %add7.i34, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit: ; preds = %if.then2.i29, %if.then5.i33, %if.end6.i35
  %35 = load i32, ptr %retval.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i22)
  %36 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %36, %35
  store i32 %add14, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %38 = and i32 %37, 1
  %tobool17.not.not = icmp eq i32 %38, 0
  br i1 %tobool17.not.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit
  %39 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %39, 3
  %and20 = and i32 %39, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i38)
  store i32 %and20, ptr %x.addr.i38, align 4
  switch i32 %and19, label %sw.default.i47 [
    i32 0, label %sw.bb.i41
    i32 1, label %sw.bb1.i43
    i32 2, label %sw.bb2.i45
  ]

sw.bb.i41:                                        ; preds = %if.then18
  %40 = load i32, ptr %x.addr.i38, align 4
  %add.i40 = add nsw i32 %40, 7
  store i32 %add.i40, ptr %retval.i36, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit

sw.bb1.i43:                                       ; preds = %if.then18
  %41 = load i32, ptr %x.addr.i38, align 4
  %xor.i42 = xor i32 %41, 9
  store i32 %xor.i42, ptr %retval.i36, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit

sw.bb2.i45:                                       ; preds = %if.then18
  %42 = load i32, ptr %x.addr.i38, align 4
  %mul.i44 = mul nsw i32 %42, 5
  store i32 %mul.i44, ptr %retval.i36, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit

sw.default.i47:                                   ; preds = %if.then18
  %43 = load i32, ptr %x.addr.i38, align 4
  %sub.i46 = add nsw i32 %43, -4
  store i32 %sub.i46, ptr %retval.i36, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit: ; preds = %sw.bb.i41, %sw.bb1.i43, %sw.bb2.i45, %sw.default.i47
  %44 = load i32, ptr %retval.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i38)
  %45 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %45, %44
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_5.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_4.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i50)
  store i32 3, ptr %mode.addr.i48, align 4
  store i32 0, ptr %out.i50, align 4
  %46 = load i32, ptr %out.i50, align 4
  %add.i53 = add nsw i32 %46, 8
  store i32 %add.i53, ptr %out.i50, align 4
  %47 = load i32, ptr %mode.addr.i48, align 4
  %and1.i55 = and i32 %47, 2
  %tobool2.i56.not = icmp eq i32 %and1.i55, 0
  br i1 %tobool2.i56.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_6.exit, label %if.then3.i59

if.then3.i59:                                     ; preds = %if.end23
  %48 = load i32, ptr %out.i50, align 4
  %xor.i58 = xor i32 %48, 4
  store i32 %xor.i58, ptr %out.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_6.exit: ; preds = %if.end23, %if.then3.i59
  %49 = load i32, ptr %out.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i50)
  %50 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %50, %49
  store i32 %add25, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %51, 3
  %and27 = and i32 %51, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i62)
  store i32 %and26, ptr %mode.addr.i60, align 4
  store i32 %and27, ptr %t.i62, align 4
  %cmp.i63 = icmp ult i32 %and26, 2
  br i1 %cmp.i63, label %cond.true.i66, label %cond.false.i68

cond.true.i66:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_6.exit
  %52 = load i32, ptr %t.i62, align 4
  %53 = load i32, ptr %mode.addr.i60, align 4
  %add1.i64 = add nsw i32 %53, 1
  %mul.i65 = mul nsw i32 %52, %add1.i64
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit

cond.false.i68:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_6.exit
  %54 = load i32, ptr %t.i62, align 4
  %55 = load i32, ptr %mode.addr.i60, align 4
  %sub.i67 = sub nsw i32 %54, %55
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit: ; preds = %cond.true.i66, %cond.false.i68
  %cond.i69 = phi i32 [ %mul.i65, %cond.true.i66 ], [ %sub.i67, %cond.false.i68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i60)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i62)
  %56 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %56, %cond.i69
  store i32 %add29, ptr %total, align 4
  %57 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %57, 1
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit
  %58 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %58, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i72)
  store i32 1, ptr %mode.addr.i70, align 4
  %add.i73 = add nuw nsw i32 %and34, 3
  store i32 %add.i73, ptr %t.i72, align 4
  %59 = load i32, ptr %t.i72, align 4
  %60 = load i32, ptr %mode.addr.i70, align 4
  %add1.i75 = add nsw i32 %60, 1
  %mul.i76 = mul nsw i32 %59, %add1.i75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i72)
  %61 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %61, %mul.i76
  store i32 %add36, ptr %total, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_7.exit
  %62 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %62, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i83)
  store i32 %and38, ptr %mode.addr.i81, align 4
  store i32 6, ptr %t.i83, align 4
  %cmp.i85 = icmp ult i32 %and38, 2
  br i1 %cmp.i85, label %cond.true.i88, label %cond.false.i90

cond.true.i88:                                    ; preds = %if.end37
  %63 = load i32, ptr %t.i83, align 4
  %64 = load i32, ptr %mode.addr.i81, align 4
  %add1.i86 = add nsw i32 %64, 1
  %mul.i87 = mul nsw i32 %63, %add1.i86
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit

cond.false.i90:                                   ; preds = %if.end37
  %65 = load i32, ptr %t.i83, align 4
  %66 = load i32, ptr %mode.addr.i81, align 4
  %sub.i89 = sub nsw i32 %65, %66
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit: ; preds = %cond.true.i88, %cond.false.i90
  %cond.i91 = phi i32 [ %mul.i87, %cond.true.i88 ], [ %sub.i89, %cond.false.i90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i81)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i83)
  %67 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %67, %cond.i91
  store i32 %add40, ptr %total, align 4
  %68 = load i32, ptr %x.addr, align 4
  %and41 = and i32 %68, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i94)
  store i32 3, ptr %mode.addr.i92, align 4
  %add.i95 = add nuw nsw i32 %and41, 3
  store i32 %add.i95, ptr %t.i94, align 4
  %69 = load i32, ptr %t.i94, align 4
  %70 = load i32, ptr %mode.addr.i92, align 4
  %sub.i100 = sub nsw i32 %69, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i94)
  %71 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %71, %sub.i100
  store i32 %add43, ptr %total, align 4
  %72 = load i32, ptr %x.addr, align 4
  %73 = and i32 %72, 1
  %tobool46.not.not = icmp eq i32 %73, 0
  br i1 %tobool46.not.not, label %if.then47, label %if.end52

if.then47:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit
  %74 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %74, 3
  %and49 = and i32 %74, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i105)
  store i32 %and48, ptr %mode.addr.i103, align 4
  %add.i106 = add nuw nsw i32 %and49, 3
  store i32 %add.i106, ptr %t.i105, align 4
  %cmp.i107 = icmp ult i32 %and48, 2
  br i1 %cmp.i107, label %cond.true.i110, label %cond.false.i112

cond.true.i110:                                   ; preds = %if.then47
  %75 = load i32, ptr %t.i105, align 4
  %76 = load i32, ptr %mode.addr.i103, align 4
  %add1.i108 = add nsw i32 %76, 1
  %mul.i109 = mul nsw i32 %75, %add1.i108
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_11.exit

cond.false.i112:                                  ; preds = %if.then47
  %77 = load i32, ptr %t.i105, align 4
  %78 = load i32, ptr %mode.addr.i103, align 4
  %sub.i111 = sub nsw i32 %77, %78
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_11.exit: ; preds = %cond.true.i110, %cond.false.i112
  %cond.i113 = phi i32 [ %mul.i109, %cond.true.i110 ], [ %sub.i111, %cond.false.i112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i105)
  %79 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %79, %cond.i113
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_11.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_9.exit
  %80 = load i32, ptr %total, align 4
  %add54 = add nsw i32 %80, 49603579
  store i32 %add54, ptr %total, align 4
  %81 = load i32, ptr %x.addr, align 4
  %and55 = and i32 %81, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i118)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i119)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %and55, ptr %x.addr.i118, align 4
  store i32 %and55, ptr %s.i119, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.end52
  %storemerge = phi i32 [ 0, %if.end52 ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i120 = icmp slt i32 %storemerge, 4
  br i1 %cmp.i120, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_13.exit

for.body.i:                                       ; preds = %for.cond.i
  %82 = load i32, ptr %x.addr.i118, align 4
  %83 = load i32, ptr %i.i, align 4
  %xor.i121 = xor i32 %82, %83
  %add.i122 = add nsw i32 %xor.i121, 11
  %84 = load i32, ptr %s.i119, align 4
  %add1.i123 = add nsw i32 %84, %add.i122
  %shl.i = shl i32 %add1.i123, 1
  %shr.i124 = ashr i32 %add1.i123, 3
  %xor2.i = xor i32 %shl.i, %shr.i124
  store i32 %xor2.i, ptr %s.i119, align 4
  %85 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %85, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_13.exit: ; preds = %for.cond.i
  %86 = load i32, ptr %s.i119, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i118)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i119)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %87 = load i32, ptr %total, align 4
  %add57 = add nsw i32 %87, %86
  store i32 %add57, ptr %total, align 4
  %88 = load i32, ptr %x.addr, align 4
  %and59 = and i32 %88, 1
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_13.exit
  %call62 = call noundef i32 @_ZL19image_033_recursivei(i32 noundef 2)
  %89 = load i32, ptr %total, align 4
  %add63 = add nsw i32 %89, %call62
  store i32 %add63, ptr %total, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_033_13.exit
  %call65 = call noundef i32 @_ZL19image_033_recursivei(i32 noundef 3)
  %90 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %90, %call65
  store i32 %add66, ptr %total, align 4
  ret i32 %add66
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
