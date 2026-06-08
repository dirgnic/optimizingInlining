; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_057.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_057.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_057_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i46 = alloca i32, align 4
  %out.i48 = alloca i32, align 4
  %mode.addr.i34 = alloca i32, align 4
  %out.i36 = alloca i32, align 4
  %mode.addr.i29 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i17 = alloca i32, align 4
  %x.addr.i19 = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %t.i8 = alloca i32, align 4
  %retval.i = alloca i32, align 4
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
  %call4 = call noundef i32 @_ZL18image_057_branch_1ii(i32 noundef %and2, i32 noundef %add3)
  %add5 = add nsw i32 %add1, %call4
  store i32 %add5, ptr %total, align 4
  %and6 = and i32 %5, 3
  %6 = load i32, ptr %x.addr, align 4
  %add7 = add nsw i32 %6, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 %add7, ptr %x.addr.i2, align 4
  switch i32 %and6, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %7 = load i32, ptr %x.addr.i2, align 4
  %add.i3 = add nsw i32 %7, 6
  store i32 %add.i3, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %8 = load i32, ptr %x.addr.i2, align 4
  %xor.i = xor i32 %8, 13
  store i32 %xor.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %9 = load i32, ptr %x.addr.i2, align 4
  %mul.i4 = mul nsw i32 %9, 5
  store i32 %mul.i4, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_0.exit
  %10 = load i32, ptr %x.addr.i2, align 4
  %sub.i5 = add nsw i32 %10, -4
  store i32 %sub.i5, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %11 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %12 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %12, %11
  store i32 %add9, ptr %total, align 4
  %call10 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add11 = add nsw i32 %add9, %call10
  store i32 %add11, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %13, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i8)
  store i32 %and12, ptr %mode.addr.i6, align 4
  %add.i9 = add nsw i32 %13, 5
  store i32 %add.i9, ptr %t.i8, align 4
  %cmp.i10 = icmp ult i32 %and12, 2
  br i1 %cmp.i10, label %cond.true.i13, label %cond.false.i15

cond.true.i13:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %14 = load i32, ptr %t.i8, align 4
  %15 = load i32, ptr %mode.addr.i6, align 4
  %add1.i11 = add nsw i32 %15, 1
  %mul.i12 = mul nsw i32 %14, %add1.i11
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit

cond.false.i15:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_1.exit
  %16 = load i32, ptr %t.i8, align 4
  %17 = load i32, ptr %mode.addr.i6, align 4
  %sub.i14 = sub nsw i32 %16, %17
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit: ; preds = %cond.true.i13, %cond.false.i15
  %cond.i16 = phi i32 [ %mul.i12, %cond.true.i13 ], [ %sub.i14, %cond.false.i15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i8)
  %and15 = and i32 %cond.i16, 255
  %18 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %18, %and15
  store i32 %add16, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %19, 3
  %add18 = add nsw i32 %19, 5
  %call19 = call noundef i32 @_ZL18image_057_branch_5ii(i32 noundef %and17, i32 noundef %add18)
  %add20 = add nsw i32 %add16, %call19
  store i32 %add20, ptr %total, align 4
  %and21 = and i32 %19, 3
  %20 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %20, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i19)
  store i32 %add22, ptr %x.addr.i19, align 4
  switch i32 %and21, label %sw.default.i28 [
    i32 0, label %sw.bb.i22
    i32 1, label %sw.bb1.i24
    i32 2, label %sw.bb2.i26
  ]

sw.bb.i22:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit
  %21 = load i32, ptr %x.addr.i19, align 4
  %add.i21 = add nsw i32 %21, 10
  store i32 %add.i21, ptr %retval.i17, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

sw.bb1.i24:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit
  %22 = load i32, ptr %x.addr.i19, align 4
  %xor.i23 = xor i32 %22, 17
  store i32 %xor.i23, ptr %retval.i17, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

sw.bb2.i26:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit
  %23 = load i32, ptr %x.addr.i19, align 4
  %mul.i25 = mul nsw i32 %23, 3
  store i32 %mul.i25, ptr %retval.i17, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

sw.default.i28:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_3.exit
  %24 = load i32, ptr %x.addr.i19, align 4
  %sub.i27 = add nsw i32 %24, -1
  store i32 %sub.i27, ptr %retval.i17, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit: ; preds = %sw.bb.i22, %sw.bb1.i24, %sw.bb2.i26, %sw.default.i28
  %25 = load i32, ptr %retval.i17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i19)
  %26 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %26, %25
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %27, 3
  %add28 = add nsw i32 %27, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i29)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and27, ptr %mode.addr.i29, align 4
  store i32 %add28, ptr %out.i, align 4
  %and.i31 = and i32 %27, 1
  %tobool.i.not = icmp eq i32 %and.i31, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %28 = load i32, ptr %out.i, align 4
  %add.i32 = add nsw i32 %28, 2
  store i32 %add.i32, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_4.exit
  %29 = load i32, ptr %mode.addr.i29, align 4
  %and1.i = and i32 %29, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %30 = load i32, ptr %out.i, align 4
  %xor.i33 = xor i32 %30, 3
  store i32 %xor.i33, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit: ; preds = %if.end.i, %if.then3.i
  %31 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %32 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %32, %31
  store i32 %add30, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %33, 3
  %add32 = add nsw i32 %33, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i36)
  store i32 %and31, ptr %mode.addr.i34, align 4
  store i32 %add32, ptr %out.i36, align 4
  %and.i37 = and i32 %33, 1
  %tobool.i38.not = icmp eq i32 %and.i37, 0
  br i1 %tobool.i38.not, label %if.end.i43, label %if.then.i40

if.then.i40:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit
  %34 = load i32, ptr %out.i36, align 4
  %add.i39 = add nsw i32 %34, 2
  store i32 %add.i39, ptr %out.i36, align 4
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i40, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_6.exit
  %35 = load i32, ptr %mode.addr.i34, align 4
  %and1.i41 = and i32 %35, 2
  %tobool2.i42.not = icmp eq i32 %and1.i41, 0
  br i1 %tobool2.i42.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_7.exit, label %if.then3.i45

if.then3.i45:                                     ; preds = %if.end.i43
  %36 = load i32, ptr %out.i36, align 4
  %xor.i44 = xor i32 %36, 3
  store i32 %xor.i44, ptr %out.i36, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_7.exit: ; preds = %if.end.i43, %if.then3.i45
  %37 = load i32, ptr %out.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i36)
  %and34 = and i32 %37, 255
  %38 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %38, %and34
  store i32 %add35, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %and36 = and i32 %39, 3
  %add37 = add nsw i32 %39, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i46)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i48)
  store i32 %and36, ptr %mode.addr.i46, align 4
  store i32 %add37, ptr %out.i48, align 4
  %and.i49 = and i32 %39, 1
  %tobool.i50.not = icmp eq i32 %and.i49, 0
  br i1 %tobool.i50.not, label %if.end.i55, label %if.then.i52

if.then.i52:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_7.exit
  %40 = load i32, ptr %out.i48, align 4
  %add.i51 = add nsw i32 %40, 2
  store i32 %add.i51, ptr %out.i48, align 4
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.then.i52, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_7.exit
  %41 = load i32, ptr %mode.addr.i46, align 4
  %and1.i53 = and i32 %41, 2
  %tobool2.i54.not = icmp eq i32 %and1.i53, 0
  br i1 %tobool2.i54.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit, label %if.then3.i57

if.then3.i57:                                     ; preds = %if.end.i55
  %42 = load i32, ptr %out.i48, align 4
  %xor.i56 = xor i32 %42, 3
  store i32 %xor.i56, ptr %out.i48, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_057_8.exit: ; preds = %if.end.i55, %if.then3.i57
  %43 = load i32, ptr %out.i48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i48)
  %44 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %44, %43
  store i32 %add39, ptr %total, align 4
  %call40 = call noundef i32 @_ZL19image_057_recursivei(i32 noundef 3)
  %add41 = add nsw i32 %add39, %call40
  store i32 %add41, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %add42 = add nsw i32 %45, 12
  %call43 = call noundef i32 @_ZL17image_057_large_ai(i32 noundef %add42)
  %add44 = add nsw i32 %add41, %call43
  store i32 %add44, ptr %total, align 4
  %add45 = add nsw i32 %45, 13
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_057_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = shl nsw i32 %2, 2
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
define internal noundef i32 @_ZL18image_057_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 9
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
