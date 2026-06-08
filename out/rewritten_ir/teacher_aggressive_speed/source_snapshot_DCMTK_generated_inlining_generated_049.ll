; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_049.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_049.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_049_kernel(i32 noundef %x) #0 {
entry:
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
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 %x, ptr %x.addr.i, align 4
  switch i32 %and, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 7
  store i32 %add.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

sw.bb1.i:                                         ; preds = %entry
  %1 = load i32, ptr %x.addr.i, align 4
  %xor.i = xor i32 %1, 20
  store i32 %xor.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

sw.bb2.i:                                         ; preds = %entry
  %2 = load i32, ptr %x.addr.i, align 4
  %mul.i = shl nsw i32 %2, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

sw.default.i:                                     ; preds = %entry
  %3 = load i32, ptr %x.addr.i, align 4
  %sub.i = add nsw i32 %3, -1
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %4 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %5 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %6, 3
  %add3 = add nsw i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and2, ptr %mode.addr.i1, align 4
  store i32 %add3, ptr %out.i, align 4
  %and.i3 = and i32 %6, 1
  %tobool.i.not = icmp eq i32 %and.i3, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit
  %7 = load i32, ptr %out.i, align 4
  %add.i4 = add nsw i32 %7, 3
  store i32 %add.i4, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_0.exit
  %8 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %8, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %9 = load i32, ptr %out.i, align 4
  %xor.i5 = xor i32 %9, 15
  store i32 %xor.i5, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit: ; preds = %if.end.i, %if.then3.i
  %10 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %11 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %11, %10
  store i32 %add5, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and6, ptr %mode.addr.i6, align 4
  %add.i8 = add nsw i32 %12, 3
  store i32 %add.i8, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and6, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit
  %13 = load i32, ptr %t.i, align 4
  %14 = load i32, ptr %mode.addr.i6, align 4
  %add1.i = add nsw i32 %14, 1
  %mul.i9 = mul nsw i32 %13, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit

cond.false.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_1.exit
  %15 = load i32, ptr %t.i, align 4
  %16 = load i32, ptr %mode.addr.i6, align 4
  %sub.i10 = sub nsw i32 %15, %16
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i9, %cond.true.i ], [ %sub.i10, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %17 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %17, %cond.i
  store i32 %add9, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %18, 3
  %add11 = add nsw i32 %18, 3
  %call12 = call noundef i32 @_ZL18image_049_branch_3ii(i32 noundef %and10, i32 noundef %add11)
  %add13 = add nsw i32 %add9, %call12
  store i32 %add13, ptr %total, align 4
  %and14 = and i32 %18, 3
  %19 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %19, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 %add15, ptr %x.addr.i13, align 4
  switch i32 %and14, label %sw.default.i22 [
    i32 0, label %sw.bb.i16
    i32 1, label %sw.bb1.i18
    i32 2, label %sw.bb2.i20
  ]

sw.bb.i16:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit
  %20 = load i32, ptr %x.addr.i13, align 4
  %add.i15 = add nsw i32 %20, 11
  store i32 %add.i15, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

sw.bb1.i18:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit
  %21 = load i32, ptr %x.addr.i13, align 4
  %xor.i17 = xor i32 %21, 7
  store i32 %xor.i17, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

sw.bb2.i20:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit
  %22 = load i32, ptr %x.addr.i13, align 4
  %mul.i19 = mul nsw i32 %22, 5
  store i32 %mul.i19, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

sw.default.i22:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_2.exit
  %23 = load i32, ptr %x.addr.i13, align 4
  %sub.i21 = add nsw i32 %23, -5
  store i32 %sub.i21, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit: ; preds = %sw.bb.i16, %sw.bb1.i18, %sw.bb2.i20, %sw.default.i22
  %24 = load i32, ptr %retval.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %and17 = and i32 %24, 255
  %25 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %25, %and17
  store i32 %add18, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %26, 3
  %add20 = add nsw i32 %26, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i25)
  store i32 %and19, ptr %mode.addr.i23, align 4
  store i32 %add20, ptr %out.i25, align 4
  %and.i26 = and i32 %26, 1
  %tobool.i27.not = icmp eq i32 %and.i26, 0
  br i1 %tobool.i27.not, label %if.end.i32, label %if.then.i29

if.then.i29:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit
  %27 = load i32, ptr %out.i25, align 4
  %add.i28 = add nsw i32 %27, 7
  store i32 %add.i28, ptr %out.i25, align 4
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then.i29, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_3.exit
  %28 = load i32, ptr %mode.addr.i23, align 4
  %and1.i30 = and i32 %28, 2
  %tobool2.i31.not = icmp eq i32 %and1.i30, 0
  br i1 %tobool2.i31.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit, label %if.then3.i34

if.then3.i34:                                     ; preds = %if.end.i32
  %29 = load i32, ptr %out.i25, align 4
  %xor.i33 = xor i32 %29, 19
  store i32 %xor.i33, ptr %out.i25, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit: ; preds = %if.end.i32, %if.then3.i34
  %30 = load i32, ptr %out.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i25)
  %31 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %31, %30
  store i32 %add22, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %32, 3
  %add24 = add nsw i32 %32, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i37)
  store i32 %and23, ptr %mode.addr.i35, align 4
  store i32 %add24, ptr %t.i37, align 4
  %cmp.i38 = icmp ult i32 %and23, 2
  br i1 %cmp.i38, label %cond.true.i41, label %cond.false.i43

cond.true.i41:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit
  %33 = load i32, ptr %t.i37, align 4
  %34 = load i32, ptr %mode.addr.i35, align 4
  %add1.i39 = add nsw i32 %34, 1
  %mul.i40 = mul nsw i32 %33, %add1.i39
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit

cond.false.i43:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_4.exit
  %35 = load i32, ptr %t.i37, align 4
  %36 = load i32, ptr %mode.addr.i35, align 4
  %sub.i42 = sub nsw i32 %35, %36
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_049_5.exit: ; preds = %cond.true.i41, %cond.false.i43
  %cond.i44 = phi i32 [ %mul.i40, %cond.true.i41 ], [ %sub.i42, %cond.false.i43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i37)
  %37 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %37, %cond.i44
  store i32 %add26, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %38, 3
  %add28 = add nsw i32 %38, 7
  %call29 = call noundef i32 @_ZL18image_049_branch_7ii(i32 noundef %and27, i32 noundef %add28)
  %add30 = add nsw i32 %add26, %call29
  store i32 %add30, ptr %total, align 4
  %and31 = and i32 %38, 3
  %39 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %39, 8
  %call33 = call noundef i32 @_ZL25image_049_branch_variableii(i32 noundef %and31, i32 noundef %add32)
  %add34 = add nsw i32 %add30, %call33
  store i32 %add34, ptr %total, align 4
  %and35 = and i32 %39, 3
  %add36 = add nsw i32 %39, 9
  %call37 = call noundef i32 @_ZL25image_049_branch_variableii(i32 noundef %and35, i32 noundef %add36)
  %and38 = and i32 %call37, 255
  %add39 = add nsw i32 %add34, %and38
  store i32 %add39, ptr %total, align 4
  %40 = load i32, ptr %x.addr, align 4
  %and40 = and i32 %40, 3
  %add41 = add nsw i32 %40, 10
  %call42 = call noundef i32 @_ZL25image_049_branch_variableii(i32 noundef %and40, i32 noundef %add41)
  %add43 = add nsw i32 %add39, %call42
  store i32 %add43, ptr %total, align 4
  %and44 = and i32 %40, 3
  %41 = load i32, ptr %x.addr, align 4
  %add45 = add nsw i32 %41, 11
  %call46 = call noundef i32 @_ZL25image_049_branch_variableii(i32 noundef %and44, i32 noundef %add45)
  %add47 = add nsw i32 %add43, %call46
  store i32 %add47, ptr %total, align 4
  %add48 = add nsw i32 %41, 12
  %call49 = call noundef i32 @_ZL17image_049_large_ai(i32 noundef %add48)
  %add50 = add nsw i32 %add47, %call49
  store i32 %add50, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %add51 = add nsw i32 %42, 13
  %call52 = call noundef i32 @_ZL17image_049_large_bi(i32 noundef %add51)
  %add53 = add nsw i32 %add50, %call52
  store i32 %add53, ptr %total, align 4
  %call54 = call noundef i32 @_ZL19image_049_recursivei(i32 noundef 2)
  %and55 = and i32 %call54, 255
  %add56 = add nsw i32 %add53, %and55
  store i32 %add56, ptr %total, align 4
  %call57 = call noundef i32 @_ZL19image_049_recursivei(i32 noundef 3)
  %add58 = add nsw i32 %add56, %call57
  store i32 %add58, ptr %total, align 4
  ret i32 %add58
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_049_branch_3ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 8
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 1
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
define internal noundef i32 @_ZL18image_049_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 1
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_049_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 5
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
  %sub = add nsw i32 %4, -7
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
define internal noundef i32 @_ZL17image_049_large_ai(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 10
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_049_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 5
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
  %sub = add nsw i32 %mul, -3
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_049_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_049_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_049_recursivei(i32 noundef %sub1)
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
