; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_044.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_044.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_044_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i107 = alloca i32, align 4
  %out.i109 = alloca i32, align 4
  %mode.addr.i95 = alloca i32, align 4
  %out.i97 = alloca i32, align 4
  %mode.addr.i83 = alloca i32, align 4
  %out.i85 = alloca i32, align 4
  %mode.addr.i37 = alloca i32, align 4
  %out.i39 = alloca i32, align 4
  %x.addr.i24 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i8 = alloca i32, align 4
  %out.i10 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 0, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 9
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %sub.i = add nsw i32 %4, -1
  %add3 = add nsw i32 %add, %sub.i
  store i32 %add3, ptr %total, align 4
  %and = and i32 %4, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_0.exit
  %5 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %5, -1
  store i32 %add6, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_0.exit
  %6 = load i32, ptr %x.addr, align 4
  %sub.i5 = add nsw i32 %6, -1
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %sub.i5
  %add11 = add nsw i32 %add9, -1
  store i32 %add11, ptr %total, align 4
  %8 = and i32 %6, 1
  %tobool14.not.not = icmp eq i32 %8, 0
  br i1 %tobool14.not.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %9 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %9, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i10)
  store i32 2, ptr %mode.addr.i8, align 4
  store i32 %add16, ptr %out.i10, align 4
  %10 = load i32, ptr %mode.addr.i8, align 4
  %and1.i15 = and i32 %10, 2
  %tobool2.i16.not = icmp eq i32 %and1.i15, 0
  br i1 %tobool2.i16.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_5.exit, label %if.then3.i19

if.then3.i19:                                     ; preds = %if.then15
  %11 = load i32, ptr %out.i10, align 4
  %xor.i18 = xor i32 %11, 9
  store i32 %xor.i18, ptr %out.i10, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_5.exit: ; preds = %if.then15, %if.then3.i19
  %12 = load i32, ptr %out.i10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i10)
  %13 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %13, %12
  store i32 %add18, ptr %total, align 4
  br label %if.end19

if.end19:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_5.exit, %if.end
  %14 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %14, -1
  store i32 %add21, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %sub.i23 = add nsw i32 %15, -1
  %add24 = add nsw i32 %add21, %sub.i23
  store i32 %add24, ptr %total, align 4
  %and26 = and i32 %15, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 1, ptr %x.addr.i24, align 4
  store i32 2, ptr %s.i, align 4
  %16 = load i32, ptr %s.i, align 4
  %sub.i27 = add nsw i32 %16, -4
  store i32 %sub.i27, ptr %s.i, align 4
  %17 = load i32, ptr %x.addr.i24, align 4
  %and2.i = shl i32 %17, 1
  %mul3.i = and i32 %and2.i, 8
  %add4.i = add nsw i32 %sub.i27, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %18 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %18, 3
  %19 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %19, -5
  %storemerge119 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge119, ptr %s.i, align 4
  %20 = load i32, ptr %x.addr.i24, align 4
  %and12.i = and i32 %20, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 3
  %add14.i = add nsw i32 %storemerge119, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %21 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %21, 0
  %22 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %22, 5
  %23 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %23, -6
  %storemerge120 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge120, ptr %s.i, align 4
  %24 = load i32, ptr %x.addr.i24, align 4
  %and22.i = shl i32 %24, 2
  %mul23.i = and i32 %and22.i, 24
  %add24.i = add nsw i32 %storemerge120, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %25 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %25, 7
  %26 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %26, -7
  %storemerge121 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge121, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %27 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %27, %storemerge121
  store i32 %add30, ptr %total, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end19
  %28 = load i32, ptr %x.addr, align 4
  %29 = mul i32 %28, 3
  %add.i32 = add i32 %29, 88
  %shr.i = ashr i32 %add.i32, 1
  %xor.i33 = xor i32 %add.i32, %shr.i
  %mul1.i = shl nsw i32 %xor.i33, 2
  %add2.i = add nsw i32 %mul1.i, 62
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 63
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i34 = add nsw i32 %mul9.i, 64
  %shr11.i = ashr exact i32 %add10.i34, 1
  %xor12.i = xor i32 %add10.i34, %shr11.i
  %mul13.i35 = mul nsw i32 %xor12.i, 7
  %add14.i36 = add nsw i32 %mul13.i35, 65
  %shr15.i = ashr i32 %add14.i36, 2
  %xor16.i = xor i32 %add14.i36, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 66
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 67
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 68
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %30 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %30, %xor28.i
  store i32 %add34, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i37)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i39)
  store i32 1, ptr %mode.addr.i37, align 4
  store i32 3, ptr %out.i39, align 4
  %31 = load i32, ptr %out.i39, align 4
  %add.i42 = add nsw i32 %31, 5
  store i32 %add.i42, ptr %out.i39, align 4
  %32 = load i32, ptr %mode.addr.i37, align 4
  %and1.i44 = and i32 %32, 2
  %tobool2.i45.not = icmp eq i32 %and1.i44, 0
  br i1 %tobool2.i45.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_10.exit, label %if.then3.i48

if.then3.i48:                                     ; preds = %if.end31
  %33 = load i32, ptr %out.i39, align 4
  %xor.i47 = xor i32 %33, 9
  store i32 %xor.i47, ptr %out.i39, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_10.exit: ; preds = %if.end31, %if.then3.i48
  %34 = load i32, ptr %out.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i37)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i39)
  %35 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %35, %34
  store i32 %add36, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %37 = and i32 %36, 1
  %tobool39.not.not = icmp eq i32 %37, 0
  br i1 %tobool39.not.not, label %if.then40, label %if.end44

if.then40:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_10.exit
  %38 = load i32, ptr %x.addr, align 4
  %39 = mul i32 %38, 3
  %add.i52 = add i32 %39, 94
  %shr.i53 = ashr i32 %add.i52, 1
  %xor.i54 = xor i32 %add.i52, %shr.i53
  %mul1.i55 = shl nsw i32 %xor.i54, 2
  %add2.i56 = add nsw i32 %mul1.i55, 62
  %shr3.i57 = ashr i32 %add2.i56, 2
  %xor4.i58 = xor i32 %add2.i56, %shr3.i57
  %mul5.i59 = mul nsw i32 %xor4.i58, 5
  %add6.i60 = add nsw i32 %mul5.i59, 63
  %shr7.i61 = ashr i32 %add6.i60, 3
  %xor8.i62 = xor i32 %add6.i60, %shr7.i61
  %mul9.i63 = mul nsw i32 %xor8.i62, 6
  %add10.i64 = add nsw i32 %mul9.i63, 64
  %shr11.i65 = ashr exact i32 %add10.i64, 1
  %xor12.i66 = xor i32 %add10.i64, %shr11.i65
  %mul13.i67 = mul nsw i32 %xor12.i66, 7
  %add14.i68 = add nsw i32 %mul13.i67, 65
  %shr15.i69 = ashr i32 %add14.i68, 2
  %xor16.i70 = xor i32 %add14.i68, %shr15.i69
  %mul17.i71 = shl nsw i32 %xor16.i70, 3
  %add18.i72 = add nsw i32 %mul17.i71, 66
  %shr19.i73 = ashr i32 %add18.i72, 3
  %xor20.i74 = xor i32 %add18.i72, %shr19.i73
  %mul21.i75 = mul nsw i32 %xor20.i74, 9
  %add22.i76 = add nsw i32 %mul21.i75, 67
  %shr23.i77 = ashr i32 %add22.i76, 1
  %xor24.i78 = xor i32 %add22.i76, %shr23.i77
  %mul25.i79 = mul nsw i32 %xor24.i78, 10
  %add26.i80 = add nsw i32 %mul25.i79, 68
  %shr27.i81 = ashr i32 %add26.i80, 2
  %xor28.i82 = xor i32 %add26.i80, %shr27.i81
  %40 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %40, %xor28.i82
  store i32 %add43, ptr %total, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_10.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i85)
  store i32 0, ptr %mode.addr.i83, align 4
  store i32 5, ptr %out.i85, align 4
  %41 = load i32, ptr %mode.addr.i83, align 4
  %and1.i90 = and i32 %41, 2
  %tobool2.i91.not = icmp eq i32 %and1.i90, 0
  br i1 %tobool2.i91.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_12.exit, label %if.then3.i94

if.then3.i94:                                     ; preds = %if.end44
  %42 = load i32, ptr %out.i85, align 4
  %xor.i93 = xor i32 %42, 9
  store i32 %xor.i93, ptr %out.i85, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_12.exit: ; preds = %if.end44, %if.then3.i94
  %43 = load i32, ptr %out.i85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i85)
  %44 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %44, %43
  store i32 %add46, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %add47 = add nsw i32 %45, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i97)
  store i32 1, ptr %mode.addr.i95, align 4
  store i32 %add47, ptr %out.i97, align 4
  %46 = load i32, ptr %out.i97, align 4
  %add.i100 = add nsw i32 %46, 5
  store i32 %add.i100, ptr %out.i97, align 4
  %47 = load i32, ptr %mode.addr.i95, align 4
  %and1.i102 = and i32 %47, 2
  %tobool2.i103.not = icmp eq i32 %and1.i102, 0
  br i1 %tobool2.i103.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_13.exit, label %if.then3.i106

if.then3.i106:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_12.exit
  %48 = load i32, ptr %out.i97, align 4
  %xor.i105 = xor i32 %48, 9
  store i32 %xor.i105, ptr %out.i97, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_13.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_12.exit, %if.then3.i106
  %49 = load i32, ptr %out.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i97)
  %50 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %50, %49
  store i32 %add49, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %and51 = and i32 %51, 1
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_13.exit
  %call54 = call noundef i32 @_ZL18game_044_recursivei(i32 noundef 2)
  %52 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %52, %call54
  store i32 %add55, ptr %total, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_13.exit
  %53 = load i32, ptr %x.addr, align 4
  %add57 = add nsw i32 %53, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i109)
  store i32 0, ptr %mode.addr.i107, align 4
  store i32 %add57, ptr %out.i109, align 4
  %54 = load i32, ptr %mode.addr.i107, align 4
  %and1.i114 = and i32 %54, 2
  %tobool2.i115.not = icmp eq i32 %and1.i114, 0
  br i1 %tobool2.i115.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_15.exit, label %if.then3.i118

if.then3.i118:                                    ; preds = %if.end56
  %55 = load i32, ptr %out.i109, align 4
  %xor.i117 = xor i32 %55, 9
  store i32 %xor.i117, ptr %out.i109, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_044_15.exit: ; preds = %if.end56, %if.then3.i118
  %56 = load i32, ptr %out.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i109)
  %57 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %57, %56
  store i32 %add59, ptr %total, align 4
  ret i32 %add59
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_044_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_044_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_044_recursivei(i32 noundef %sub1)
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
