; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_045.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_045.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_045_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i32 = alloca i32, align 4
  %out.i34 = alloca i32, align 4
  %retval.i20 = alloca i32, align 4
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
  %call = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef 1, i32 noundef 6)
  store i32 %call, ptr %total, align 4
  %and = and i32 %x, 3
  %and1 = and i32 %x, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %and1, ptr %x.addr.i, align 4
  %cmp.i = icmp eq i32 %and, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 2
  store i32 %add.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit

if.end.i:                                         ; preds = %entry
  %1 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %1, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %2 = load i32, ptr %x.addr.i, align 4
  %mul.i = shl nsw i32 %2, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit

if.end3.i:                                        ; preds = %if.end.i
  %3 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %3, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %4 = load i32, ptr %x.addr.i, align 4
  %sub.i = add nsw i32 %4, -4
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit

if.end6.i:                                        ; preds = %if.end3.i
  %5 = load i32, ptr %x.addr.i, align 4
  %6 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %5, %6
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit: ; preds = %if.then.i, %if.then2.i, %if.then5.i, %if.end6.i
  %7 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %8 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %8, %7
  store i32 %add3, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %9, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit
  %10 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %10, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  store i32 %and6, ptr %x.addr.i3, align 4
  %11 = load i32, ptr %x.addr.i3, align 4
  %sub.i6 = add nsw i32 %11, -6
  store i32 %sub.i6, ptr %retval.i1, align 4
  %12 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  %13 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %13, %12
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit
  %14 = load i32, ptr %x.addr, align 4
  %and9 = and i32 %14, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and9, ptr %mode.addr.i7, align 4
  store i32 9, ptr %out.i, align 4
  %and.i9 = and i32 %14, 1
  %tobool.i.not = icmp eq i32 %and.i9, 0
  br i1 %tobool.i.not, label %if.end.i12, label %if.then.i11

if.then.i11:                                      ; preds = %if.end
  %15 = load i32, ptr %out.i, align 4
  %add.i10 = add nsw i32 %15, 1
  store i32 %add.i10, ptr %out.i, align 4
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.then.i11, %if.end
  %16 = load i32, ptr %mode.addr.i7, align 4
  %and1.i = and i32 %16, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i12
  %17 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %17, 13
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_2.exit: ; preds = %if.end.i12, %if.then3.i
  %18 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %19 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %19, %18
  store i32 %add11, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %20, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i14, align 4
  %add.i16 = add nuw nsw i32 %and12, 4
  store i32 %add.i16, ptr %t.i, align 4
  %21 = load i32, ptr %t.i, align 4
  %22 = load i32, ptr %mode.addr.i14, align 4
  %add1.i = add nsw i32 %22, 1
  %mul.i18 = mul nsw i32 %21, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %23 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %23, %mul.i18
  store i32 %add14, ptr %total, align 4
  %24 = load i32, ptr %x.addr, align 4
  %25 = and i32 %24, 1
  %tobool17.not.not = icmp eq i32 %25, 0
  br i1 %tobool17.not.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_2.exit
  %26 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %26, 3
  %and20 = and i32 %26, 7
  %call21 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %and19, i32 noundef %and20)
  %27 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %27, %call21
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_2.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i22)
  store i32 12, ptr %x.addr.i22, align 4
  %28 = load i32, ptr %x.addr.i22, align 4
  %sub.i30 = add nsw i32 %28, -3
  store i32 %sub.i30, ptr %retval.i20, align 4
  %29 = load i32, ptr %retval.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i22)
  %30 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %30, %29
  store i32 %add25, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %31, 3
  %and27 = and i32 %31, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i34)
  store i32 %and26, ptr %mode.addr.i32, align 4
  store i32 %and27, ptr %out.i34, align 4
  %and.i35 = and i32 %31, 1
  %tobool.i36.not = icmp eq i32 %and.i35, 0
  br i1 %tobool.i36.not, label %if.end.i41, label %if.then.i38

if.then.i38:                                      ; preds = %if.end23
  %32 = load i32, ptr %out.i34, align 4
  %add.i37 = add nsw i32 %32, 5
  store i32 %add.i37, ptr %out.i34, align 4
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.then.i38, %if.end23
  %33 = load i32, ptr %mode.addr.i32, align 4
  %and1.i39 = and i32 %33, 2
  %tobool2.i40.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.i40.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit, label %if.then3.i43

if.then3.i43:                                     ; preds = %if.end.i41
  %34 = load i32, ptr %out.i34, align 4
  %xor.i42 = xor i32 %34, 17
  store i32 %xor.i42, ptr %out.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit: ; preds = %if.end.i41, %if.then3.i43
  %35 = load i32, ptr %out.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i34)
  %36 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %36, %35
  store i32 %add29, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %37, 1
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit
  %38 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %38, 7
  %call35 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef 1, i32 noundef %and34)
  %39 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %39, %call35
  store i32 %add36, ptr %total, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit
  %40 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %40, 3
  %call39 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %and38, i32 noundef 2)
  %41 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %41, %call39
  store i32 %add40, ptr %total, align 4
  %and41 = and i32 %40, 7
  %call42 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef 3, i32 noundef %and41)
  %add43 = add nsw i32 %add40, %call42
  store i32 %add43, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %43 = and i32 %42, 1
  %tobool46.not.not = icmp eq i32 %43, 0
  br i1 %tobool46.not.not, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end37
  %44 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %44, 3
  %and49 = and i32 %44, 7
  %call50 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %and48, i32 noundef %and49)
  %45 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %45, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end37
  %call53 = call noundef i32 @_ZL17image_045_large_ai(i32 noundef 5)
  %46 = load i32, ptr %total, align 4
  %add54 = add nsw i32 %46, %call53
  store i32 %add54, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %and55 = and i32 %47, 7
  %call56 = call noundef i32 @_ZL17image_045_large_bi(i32 noundef %and55)
  %add57 = add nsw i32 %add54, %call56
  store i32 %add57, ptr %total, align 4
  %and59 = and i32 %47, 1
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end52
  %call62 = call noundef i32 @_ZL19image_045_recursivei(i32 noundef 2)
  %48 = load i32, ptr %total, align 4
  %add63 = add nsw i32 %48, %call62
  store i32 %add63, ptr %total, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end52
  %49 = load i32, ptr %x.addr, align 4
  %and65 = and i32 %49, 3
  %call66 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %and65, i32 noundef 8)
  %50 = load i32, ptr %total, align 4
  %add67 = add nsw i32 %50, %call66
  store i32 %add67, ptr %total, align 4
  ret i32 %add67
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 6
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 10
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_045_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 1
  %mul = and i32 %and, 6
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 3
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -1
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = shl i32 %6, 2
  %mul13 = and i32 %and12, 20
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -2
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 5
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -3
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_045_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 62
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 63
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 64
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 65
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 66
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 67
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 68
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 69
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_045_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_045_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_045_recursivei(i32 noundef %sub1)
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
