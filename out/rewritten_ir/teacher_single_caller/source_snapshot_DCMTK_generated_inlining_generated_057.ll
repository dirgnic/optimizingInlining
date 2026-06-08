; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_057.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_057.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_057_kernel(i32 noundef %x) #0 {
entry:
  %retval.i40 = alloca i32, align 4
  %x.addr.i42 = alloca i32, align 4
  %retval.i24 = alloca i32, align 4
  %mode.addr.i25 = alloca i32, align 4
  %x.addr.i26 = alloca i32, align 4
  %mode.addr.i13 = alloca i32, align 4
  %t.i15 = alloca i32, align 4
  %retval.i7 = alloca i32, align 4
  %x.addr.i9 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %x.addr.i2 = alloca i32, align 4
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
  %add.i = add nsw i32 %x, 2
  store i32 %add.i, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %4, %cond.i
  store i32 %add1, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %5, 3
  %add3 = add nsw i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 %and2, ptr %mode.addr.i1, align 4
  store i32 %add3, ptr %x.addr.i2, align 4
  %cmp.i3 = icmp eq i32 %and2, 0
  br i1 %cmp.i3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %6 = load i32, ptr %x.addr.i2, align 4
  %add.i4 = add nsw i32 %6, 5
  store i32 %add.i4, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

if.end.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %7 = load i32, ptr %mode.addr.i1, align 4
  %cmp1.i = icmp eq i32 %7, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %8 = load i32, ptr %x.addr.i2, align 4
  %mul.i5 = shl nsw i32 %8, 2
  store i32 %mul.i5, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = load i32, ptr %mode.addr.i1, align 4
  %cmp4.i = icmp eq i32 %9, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %10 = load i32, ptr %x.addr.i2, align 4
  %sub.i6 = add nsw i32 %10, -6
  store i32 %sub.i6, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

if.end6.i:                                        ; preds = %if.end3.i
  %11 = load i32, ptr %x.addr.i2, align 4
  %12 = load i32, ptr %mode.addr.i1, align 4
  %add7.i = add nsw i32 %11, %12
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit: ; preds = %if.then.i, %if.then2.i, %if.then5.i, %if.end6.i
  %13 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %14 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %14, %13
  store i32 %add5, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %15, 3
  %add7 = add nsw i32 %15, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i9)
  store i32 %add7, ptr %x.addr.i9, align 4
  switch i32 %and6, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %16 = load i32, ptr %x.addr.i9, align 4
  %add.i10 = add nsw i32 %16, 6
  store i32 %add.i10, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %17 = load i32, ptr %x.addr.i9, align 4
  %xor.i = xor i32 %17, 13
  store i32 %xor.i, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %18 = load i32, ptr %x.addr.i9, align 4
  %mul.i11 = mul nsw i32 %18, 5
  store i32 %mul.i11, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %19 = load i32, ptr %x.addr.i9, align 4
  %sub.i12 = add nsw i32 %19, -4
  store i32 %sub.i12, ptr %retval.i7, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %20 = load i32, ptr %retval.i7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i9)
  %21 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %21, %20
  store i32 %add9, ptr %total, align 4
  %call10 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add11 = add nsw i32 %add9, %call10
  store i32 %add11, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %22, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i15)
  store i32 %and12, ptr %mode.addr.i13, align 4
  %add.i16 = add nsw i32 %22, 5
  store i32 %add.i16, ptr %t.i15, align 4
  %cmp.i17 = icmp ult i32 %and12, 2
  br i1 %cmp.i17, label %cond.true.i20, label %cond.false.i22

cond.true.i20:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit
  %23 = load i32, ptr %t.i15, align 4
  %24 = load i32, ptr %mode.addr.i13, align 4
  %add1.i18 = add nsw i32 %24, 1
  %mul.i19 = mul nsw i32 %23, %add1.i18
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit

cond.false.i22:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_2.exit
  %25 = load i32, ptr %t.i15, align 4
  %26 = load i32, ptr %mode.addr.i13, align 4
  %sub.i21 = sub nsw i32 %25, %26
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit: ; preds = %cond.true.i20, %cond.false.i22
  %cond.i23 = phi i32 [ %mul.i19, %cond.true.i20 ], [ %sub.i21, %cond.false.i22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i15)
  %and15 = and i32 %cond.i23, 255
  %27 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %27, %and15
  store i32 %add16, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %28, 3
  %add18 = add nsw i32 %28, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i26)
  store i32 %and17, ptr %mode.addr.i25, align 4
  store i32 %add18, ptr %x.addr.i26, align 4
  %cmp.i27 = icmp eq i32 %and17, 0
  br i1 %cmp.i27, label %if.then.i29, label %if.end.i31

if.then.i29:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit
  %29 = load i32, ptr %x.addr.i26, align 4
  %add.i28 = add nsw i32 %29, 9
  store i32 %add.i28, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

if.end.i31:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit
  %30 = load i32, ptr %mode.addr.i25, align 4
  %cmp1.i30 = icmp eq i32 %30, 1
  br i1 %cmp1.i30, label %if.then2.i33, label %if.end3.i35

if.then2.i33:                                     ; preds = %if.end.i31
  %31 = load i32, ptr %x.addr.i26, align 4
  %mul.i32 = shl nsw i32 %31, 2
  store i32 %mul.i32, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

if.end3.i35:                                      ; preds = %if.end.i31
  %32 = load i32, ptr %mode.addr.i25, align 4
  %cmp4.i34 = icmp eq i32 %32, 2
  br i1 %cmp4.i34, label %if.then5.i37, label %if.end6.i39

if.then5.i37:                                     ; preds = %if.end3.i35
  %33 = load i32, ptr %x.addr.i26, align 4
  %sub.i36 = add nsw i32 %33, -5
  store i32 %sub.i36, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

if.end6.i39:                                      ; preds = %if.end3.i35
  %34 = load i32, ptr %x.addr.i26, align 4
  %35 = load i32, ptr %mode.addr.i25, align 4
  %add7.i38 = add nsw i32 %34, %35
  store i32 %add7.i38, ptr %retval.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit: ; preds = %if.then.i29, %if.then2.i33, %if.then5.i37, %if.end6.i39
  %36 = load i32, ptr %retval.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i26)
  %37 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %37, %36
  store i32 %add20, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %and21 = and i32 %38, 3
  %add22 = add nsw i32 %38, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i42)
  store i32 %add22, ptr %x.addr.i42, align 4
  switch i32 %and21, label %sw.default.i51 [
    i32 0, label %sw.bb.i45
    i32 1, label %sw.bb1.i47
    i32 2, label %sw.bb2.i49
  ]

sw.bb.i45:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %39 = load i32, ptr %x.addr.i42, align 4
  %add.i44 = add nsw i32 %39, 10
  store i32 %add.i44, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

sw.bb1.i47:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %40 = load i32, ptr %x.addr.i42, align 4
  %xor.i46 = xor i32 %40, 17
  store i32 %xor.i46, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

sw.bb2.i49:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %41 = load i32, ptr %x.addr.i42, align 4
  %mul.i48 = mul nsw i32 %41, 3
  store i32 %mul.i48, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

sw.default.i51:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %42 = load i32, ptr %x.addr.i42, align 4
  %sub.i50 = add nsw i32 %42, -1
  store i32 %sub.i50, ptr %retval.i40, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_5.exit: ; preds = %sw.bb.i45, %sw.bb1.i47, %sw.bb2.i49, %sw.default.i51
  %43 = load i32, ptr %retval.i40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i42)
  %44 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %44, %43
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %45, 3
  %add28 = add nsw i32 %45, 8
  %call29 = call noundef i32 @_ZL25image_057_branch_variableii(i32 noundef %and27, i32 noundef %add28)
  %add30 = add nsw i32 %add26, %call29
  store i32 %add30, ptr %total, align 4
  %and31 = and i32 %45, 3
  %46 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %46, 9
  %call33 = call noundef i32 @_ZL25image_057_branch_variableii(i32 noundef %and31, i32 noundef %add32)
  %and34 = and i32 %call33, 255
  %add35 = add nsw i32 %add30, %and34
  store i32 %add35, ptr %total, align 4
  %and36 = and i32 %46, 3
  %47 = load i32, ptr %x.addr, align 4
  %add37 = add nsw i32 %47, 10
  %call38 = call noundef i32 @_ZL25image_057_branch_variableii(i32 noundef %and36, i32 noundef %add37)
  %add39 = add nsw i32 %add35, %call38
  store i32 %add39, ptr %total, align 4
  %call40 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add41 = add nsw i32 %add39, %call40
  store i32 %add41, ptr %total, align 4
  %48 = load i32, ptr %x.addr, align 4
  %add42 = add nsw i32 %48, 12
  %call43 = call noundef i32 @_ZL17image_057_large_ai(i32 noundef %add42)
  %add44 = add nsw i32 %add41, %call43
  store i32 %add44, ptr %total, align 4
  %add45 = add nsw i32 %48, 13
  %call46 = call noundef i32 @_ZL17image_057_large_bi(i32 noundef %add45)
  %add47 = add nsw i32 %add44, %call46
  store i32 %add47, ptr %total, align 4
  %call48 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 2)
  %and49 = and i32 %call48, 255
  %add50 = add nsw i32 %add47, %and49
  store i32 %add50, ptr %total, align 4
  %call51 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add52 = add nsw i32 %add50, %call51
  store i32 %add52, ptr %total, align 4
  ret i32 %add52
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_057_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_057_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_057_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %out, align 4
  %and = and i32 %mode, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %out, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 3
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_057_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 3
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -2
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 2
  %mul3 = and i32 %and2, 16
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -3
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 5
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -4
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 6
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -5
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_057_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 74
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 75
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 76
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 77
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 78
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 79
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 80
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 81
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
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
