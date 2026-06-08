; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_013.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_013.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_013_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i107 = alloca i32, align 4
  %out.i109 = alloca i32, align 4
  %mode.addr.i95 = alloca i32, align 4
  %out.i97 = alloca i32, align 4
  %mode.addr.i83 = alloca i32, align 4
  %out.i85 = alloca i32, align 4
  %mode.addr.i71 = alloca i32, align 4
  %out.i73 = alloca i32, align 4
  %mode.addr.i59 = alloca i32, align 4
  %out.i61 = alloca i32, align 4
  %mode.addr.i47 = alloca i32, align 4
  %out.i49 = alloca i32, align 4
  %retval.i35 = alloca i32, align 4
  %x.addr.i37 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %out.i25 = alloca i32, align 4
  %mode.addr.i18 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %out.i8 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i2 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 2, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 16
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %call1 = call noundef i32 @_ZL18image_013_branch_1ii(i32 noundef 1, i32 noundef 3)
  %add2 = add nsw i32 %add, %call1
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 4, ptr %x.addr.i2, align 4
  %4 = load i32, ptr %x.addr.i2, align 4
  %mul.i = mul nsw i32 %4, 3
  store i32 %mul.i, ptr %retval.i, align 4
  %5 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %6 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %6, %5
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i8)
  store i32 0, ptr %mode.addr.i6, align 4
  store i32 5, ptr %out.i8, align 4
  %7 = load i32, ptr %mode.addr.i6, align 4
  %and1.i13 = and i32 %7, 2
  %tobool2.i14.not = icmp eq i32 %and1.i13, 0
  br i1 %tobool2.i14.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_2.exit, label %if.then3.i17

if.then3.i17:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit
  %8 = load i32, ptr %out.i8, align 4
  %xor.i16 = xor i32 %8, 19
  store i32 %xor.i16, ptr %out.i8, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_2.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit, %if.then3.i17
  %9 = load i32, ptr %out.i8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i8)
  %10 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %10, %9
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i18, align 4
  store i32 8, ptr %t.i, align 4
  %11 = load i32, ptr %t.i, align 4
  %12 = load i32, ptr %mode.addr.i18, align 4
  %add1.i = add nsw i32 %12, 1
  %mul.i21 = mul nsw i32 %11, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %13 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %13, %mul.i21
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i25)
  store i32 2, ptr %mode.addr.i23, align 4
  store i32 7, ptr %out.i25, align 4
  %14 = load i32, ptr %mode.addr.i23, align 4
  %and1.i30 = and i32 %14, 2
  %tobool2.i31.not = icmp eq i32 %and1.i30, 0
  br i1 %tobool2.i31.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_4.exit, label %if.then3.i34

if.then3.i34:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_2.exit
  %15 = load i32, ptr %out.i25, align 4
  %xor.i33 = xor i32 %15, 16
  store i32 %xor.i33, ptr %out.i25, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_4.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_2.exit, %if.then3.i34
  %16 = load i32, ptr %out.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i25)
  %17 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %17, %16
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i37)
  store i32 8, ptr %x.addr.i37, align 4
  %18 = load i32, ptr %x.addr.i37, align 4
  %add.i39 = add nsw i32 %18, 10
  store i32 %add.i39, ptr %retval.i35, align 4
  %19 = load i32, ptr %retval.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i37)
  %20 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %20, %19
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i49)
  store i32 1, ptr %mode.addr.i47, align 4
  store i32 9, ptr %out.i49, align 4
  %21 = load i32, ptr %out.i49, align 4
  %add.i52 = add nsw i32 %21, 5
  store i32 %add.i52, ptr %out.i49, align 4
  %22 = load i32, ptr %mode.addr.i47, align 4
  %and1.i54 = and i32 %22, 2
  %tobool2.i55.not = icmp eq i32 %and1.i54, 0
  br i1 %tobool2.i55.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_6.exit, label %if.then3.i58

if.then3.i58:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_4.exit
  %23 = load i32, ptr %out.i49, align 4
  %xor.i57 = xor i32 %23, 4
  store i32 %xor.i57, ptr %out.i49, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_4.exit, %if.then3.i58
  %24 = load i32, ptr %out.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i49)
  %25 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %25, %24
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i61)
  store i32 2, ptr %mode.addr.i59, align 4
  store i32 10, ptr %out.i61, align 4
  %26 = load i32, ptr %mode.addr.i59, align 4
  %and1.i66 = and i32 %26, 2
  %tobool2.i67.not = icmp eq i32 %and1.i66, 0
  br i1 %tobool2.i67.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit, label %if.then3.i70

if.then3.i70:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_6.exit
  %27 = load i32, ptr %out.i61, align 4
  %xor.i69 = xor i32 %27, 16
  store i32 %xor.i69, ptr %out.i61, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_6.exit, %if.then3.i70
  %28 = load i32, ptr %out.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i61)
  %29 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %29, %28
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i73)
  store i32 0, ptr %mode.addr.i71, align 4
  store i32 0, ptr %out.i73, align 4
  %30 = load i32, ptr %mode.addr.i71, align 4
  %and1.i78 = and i32 %30, 2
  %tobool2.i79.not = icmp eq i32 %and1.i78, 0
  br i1 %tobool2.i79.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit, label %if.then3.i82

if.then3.i82:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit
  %31 = load i32, ptr %out.i73, align 4
  %xor.i81 = xor i32 %31, 16
  store i32 %xor.i81, ptr %out.i73, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit, %if.then3.i82
  %32 = load i32, ptr %out.i73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i73)
  %33 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %33, %32
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i85)
  store i32 1, ptr %mode.addr.i83, align 4
  store i32 1, ptr %out.i85, align 4
  %34 = load i32, ptr %out.i85, align 4
  %add.i88 = add nsw i32 %34, 6
  store i32 %add.i88, ptr %out.i85, align 4
  %35 = load i32, ptr %mode.addr.i83, align 4
  %and1.i90 = and i32 %35, 2
  %tobool2.i91.not = icmp eq i32 %and1.i90, 0
  br i1 %tobool2.i91.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit, label %if.then3.i94

if.then3.i94:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit
  %36 = load i32, ptr %out.i85, align 4
  %xor.i93 = xor i32 %36, 16
  store i32 %xor.i93, ptr %out.i85, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit, %if.then3.i94
  %37 = load i32, ptr %out.i85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i85)
  %38 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %38, %37
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i97)
  store i32 2, ptr %mode.addr.i95, align 4
  store i32 2, ptr %out.i97, align 4
  %39 = load i32, ptr %mode.addr.i95, align 4
  %and1.i102 = and i32 %39, 2
  %tobool2.i103.not = icmp eq i32 %and1.i102, 0
  br i1 %tobool2.i103.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit, label %if.then3.i106

if.then3.i106:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit
  %40 = load i32, ptr %out.i97, align 4
  %xor.i105 = xor i32 %40, 16
  store i32 %xor.i105, ptr %out.i97, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit, %if.then3.i106
  %41 = load i32, ptr %out.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i97)
  %42 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %42, %41
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL17image_013_large_ai(i32 noundef 3)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL17image_013_large_bi(i32 noundef 4)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL19image_013_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i109)
  store i32 0, ptr %mode.addr.i107, align 4
  store i32 6, ptr %out.i109, align 4
  %43 = load i32, ptr %mode.addr.i107, align 4
  %and1.i114 = and i32 %43, 2
  %tobool2.i115.not = icmp eq i32 %and1.i114, 0
  br i1 %tobool2.i115.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_12.exit, label %if.then3.i118

if.then3.i118:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit
  %44 = load i32, ptr %out.i109, align 4
  %xor.i117 = xor i32 %44, 16
  store i32 %xor.i117, ptr %out.i109, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_12.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit, %if.then3.i118
  %45 = load i32, ptr %out.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i109)
  %46 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %46, %45
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_013_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 6
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
define internal noundef i32 @_ZL17image_013_large_ai(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %2, -3
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
  %sub8 = add nsw i32 %5, -4
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
  %sub18 = add nsw i32 %9, -5
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
  %sub28 = add nsw i32 %12, -6
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_013_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 30
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 31
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 32
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 33
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 34
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 35
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 36
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 37
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_013_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_013_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_013_recursivei(i32 noundef %sub1)
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
