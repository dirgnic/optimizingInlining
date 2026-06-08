; ModuleID = './out/rewritten_ir/teacher_constant_argument/source_snapshot_DCMTK_generated_inlining_generated_045.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_045.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_045_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i59 = alloca i32, align 4
  %out.i61 = alloca i32, align 4
  %mode.addr.i47 = alloca i32, align 4
  %out.i49 = alloca i32, align 4
  %mode.addr.i35 = alloca i32, align 4
  %out.i37 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %out.i25 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i17 = alloca i32, align 4
  %mode.addr.i13 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i3 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 6, ptr %out.i, align 4
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 6
  store i32 %add.i, ptr %out.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %2 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %2, 10
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit: ; preds = %entry, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and = and i32 %5, 3
  %and1 = and i32 %5, 7
  %call2 = call noundef i32 @_ZL18image_045_branch_1ii(i32 noundef %and, i32 noundef %and1)
  %add3 = add nsw i32 %add, %call2
  store i32 %add3, ptr %total, align 4
  %and5 = and i32 %5, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit
  %6 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %6, 7
  %call7 = call noundef i32 @_ZL18image_045_branch_2ii(i32 noundef 3, i32 noundef %and6)
  %7 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %7, %call7
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit
  %8 = load i32, ptr %x.addr, align 4
  %and9 = and i32 %8, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i3)
  store i32 %and9, ptr %mode.addr.i1, align 4
  store i32 9, ptr %out.i3, align 4
  %and.i4 = and i32 %8, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.end.i10, label %if.then.i7

if.then.i7:                                       ; preds = %if.end
  %9 = load i32, ptr %out.i3, align 4
  %add.i6 = add nsw i32 %9, 1
  store i32 %add.i6, ptr %out.i3, align 4
  br label %if.end.i10

if.end.i10:                                       ; preds = %if.then.i7, %if.end
  %10 = load i32, ptr %mode.addr.i1, align 4
  %and1.i8 = and i32 %10, 2
  %tobool2.i9.not = icmp eq i32 %and1.i8, 0
  br i1 %tobool2.i9.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit, label %if.then3.i12

if.then3.i12:                                     ; preds = %if.end.i10
  %11 = load i32, ptr %out.i3, align 4
  %xor.i11 = xor i32 %11, 13
  store i32 %xor.i11, ptr %out.i3, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit: ; preds = %if.end.i10, %if.then3.i12
  %12 = load i32, ptr %out.i3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i3)
  %13 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %13, %12
  store i32 %add11, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %14, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i13, align 4
  %add.i15 = add nuw nsw i32 %and12, 4
  store i32 %add.i15, ptr %t.i, align 4
  %15 = load i32, ptr %t.i, align 4
  %16 = load i32, ptr %mode.addr.i13, align 4
  %add1.i = add nsw i32 %16, 1
  %mul.i = mul nsw i32 %15, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %17 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %17, %mul.i
  store i32 %add14, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %19 = and i32 %18, 1
  %tobool17.not.not = icmp eq i32 %19, 0
  br i1 %tobool17.not.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit
  %20 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %20, 3
  %and20 = and i32 %20, 7
  %call21 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %and19, i32 noundef %and20)
  %21 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %21, %call21
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i17)
  store i32 12, ptr %x.addr.i17, align 4
  %22 = load i32, ptr %x.addr.i17, align 4
  %sub.i22 = add nsw i32 %22, -3
  store i32 %sub.i22, ptr %retval.i, align 4
  %23 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i17)
  %24 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %24, %23
  store i32 %add25, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %25, 3
  %and27 = and i32 %25, 7
  %call28 = call noundef i32 @_ZL18image_045_branch_7ii(i32 noundef %and26, i32 noundef %and27)
  %add29 = add nsw i32 %add25, %call28
  store i32 %add29, ptr %total, align 4
  %and31 = and i32 %25, 1
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end23
  %26 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %26, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i25)
  store i32 1, ptr %mode.addr.i23, align 4
  store i32 %and34, ptr %out.i25, align 4
  %27 = load i32, ptr %out.i25, align 4
  %add.i28 = add nsw i32 %27, 6
  store i32 %add.i28, ptr %out.i25, align 4
  %28 = load i32, ptr %mode.addr.i23, align 4
  %and1.i30 = and i32 %28, 2
  %tobool2.i31.not = icmp eq i32 %and1.i30, 0
  br i1 %tobool2.i31.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_4.exit, label %if.then3.i34

if.then3.i34:                                     ; preds = %if.then33
  %29 = load i32, ptr %out.i25, align 4
  %xor.i33 = xor i32 %29, 10
  store i32 %xor.i33, ptr %out.i25, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_4.exit: ; preds = %if.then33, %if.then3.i34
  %30 = load i32, ptr %out.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i25)
  %31 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %31, %30
  store i32 %add36, ptr %total, align 4
  br label %if.end37

if.end37:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_4.exit, %if.end23
  %32 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %32, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i37)
  store i32 %and38, ptr %mode.addr.i35, align 4
  store i32 2, ptr %out.i37, align 4
  %and.i38 = and i32 %32, 1
  %tobool.i39.not = icmp eq i32 %and.i38, 0
  br i1 %tobool.i39.not, label %if.end.i44, label %if.then.i41

if.then.i41:                                      ; preds = %if.end37
  %33 = load i32, ptr %out.i37, align 4
  %add.i40 = add nsw i32 %33, 6
  store i32 %add.i40, ptr %out.i37, align 4
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.then.i41, %if.end37
  %34 = load i32, ptr %mode.addr.i35, align 4
  %and1.i42 = and i32 %34, 2
  %tobool2.i43.not = icmp eq i32 %and1.i42, 0
  br i1 %tobool2.i43.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit, label %if.then3.i46

if.then3.i46:                                     ; preds = %if.end.i44
  %35 = load i32, ptr %out.i37, align 4
  %xor.i45 = xor i32 %35, 10
  store i32 %xor.i45, ptr %out.i37, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit: ; preds = %if.end.i44, %if.then3.i46
  %36 = load i32, ptr %out.i37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i37)
  %37 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %37, %36
  store i32 %add40, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %and41 = and i32 %38, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i49)
  store i32 3, ptr %mode.addr.i47, align 4
  store i32 %and41, ptr %out.i49, align 4
  %39 = load i32, ptr %out.i49, align 4
  %add.i52 = add nsw i32 %39, 6
  store i32 %add.i52, ptr %out.i49, align 4
  %40 = load i32, ptr %mode.addr.i47, align 4
  %and1.i54 = and i32 %40, 2
  %tobool2.i55.not = icmp eq i32 %and1.i54, 0
  br i1 %tobool2.i55.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_6.exit, label %if.then3.i58

if.then3.i58:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit
  %41 = load i32, ptr %out.i49, align 4
  %xor.i57 = xor i32 %41, 10
  store i32 %xor.i57, ptr %out.i49, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit, %if.then3.i58
  %42 = load i32, ptr %out.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i49)
  %43 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %43, %42
  store i32 %add43, ptr %total, align 4
  %44 = load i32, ptr %x.addr, align 4
  %45 = and i32 %44, 1
  %tobool46.not.not = icmp eq i32 %45, 0
  br i1 %tobool46.not.not, label %if.then47, label %if.end52

if.then47:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_6.exit
  %46 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %46, 3
  %and49 = and i32 %46, 7
  %call50 = call noundef i32 @_ZL25image_045_branch_variableii(i32 noundef %and48, i32 noundef %and49)
  %47 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %47, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_6.exit
  %call53 = call noundef i32 @_ZL17image_045_large_ai(i32 noundef 5)
  %48 = load i32, ptr %total, align 4
  %add54 = add nsw i32 %48, %call53
  store i32 %add54, ptr %total, align 4
  %49 = load i32, ptr %x.addr, align 4
  %and55 = and i32 %49, 7
  %call56 = call noundef i32 @_ZL17image_045_large_bi(i32 noundef %and55)
  %add57 = add nsw i32 %add54, %call56
  store i32 %add57, ptr %total, align 4
  %and59 = and i32 %49, 1
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end52
  %call62 = call noundef i32 @_ZL19image_045_recursivei(i32 noundef 2)
  %50 = load i32, ptr %total, align 4
  %add63 = add nsw i32 %50, %call62
  store i32 %add63, ptr %total, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end52
  %51 = load i32, ptr %x.addr, align 4
  %and65 = and i32 %51, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i61)
  store i32 %and65, ptr %mode.addr.i59, align 4
  store i32 8, ptr %out.i61, align 4
  %and.i62 = and i32 %51, 1
  %tobool.i63.not = icmp eq i32 %and.i62, 0
  br i1 %tobool.i63.not, label %if.end.i68, label %if.then.i65

if.then.i65:                                      ; preds = %if.end64
  %52 = load i32, ptr %out.i61, align 4
  %add.i64 = add nsw i32 %52, 6
  store i32 %add.i64, ptr %out.i61, align 4
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i65, %if.end64
  %53 = load i32, ptr %mode.addr.i59, align 4
  %and1.i66 = and i32 %53, 2
  %tobool2.i67.not = icmp eq i32 %and1.i66, 0
  br i1 %tobool2.i67.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit, label %if.then3.i70

if.then3.i70:                                     ; preds = %if.end.i68
  %54 = load i32, ptr %out.i61, align 4
  %xor.i69 = xor i32 %54, 10
  store i32 %xor.i69, ptr %out.i61, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit: ; preds = %if.end.i68, %if.then3.i70
  %55 = load i32, ptr %out.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i61)
  %56 = load i32, ptr %total, align 4
  %add67 = add nsw i32 %56, %55
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
define internal noundef i32 @_ZL18image_045_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = shl nsw i32 %2, 2
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
define internal noundef i32 @_ZL18image_045_branch_2ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %mode, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 18
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -6
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_045_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 17
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
