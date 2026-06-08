; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_041.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_041.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_041_step(i32 noundef %x) #0 {
entry:
  %x.addr.i93 = alloca i32, align 4
  %s.i94 = alloca i32, align 4
  %x.addr.i83 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %retval.i71 = alloca i32, align 4
  %x.addr.i73 = alloca i32, align 4
  %retval.i59 = alloca i32, align 4
  %x.addr.i61 = alloca i32, align 4
  %retval.i51 = alloca i32, align 4
  %x.addr.i53 = alloca i32, align 4
  %retval.i35 = alloca i32, align 4
  %mode.addr.i36 = alloca i32, align 4
  %x.addr.i37 = alloca i32, align 4
  %mode.addr.i24 = alloca i32, align 4
  %t.i26 = alloca i32, align 4
  %mode.addr.i12 = alloca i32, align 4
  %out.i14 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i4 = alloca i32, align 4
  %x.addr.i5 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 2, ptr %out.i, align 4
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 2
  store i32 %add.i, ptr %out.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %2 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %2, 6
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_0.exit: ; preds = %entry, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and = and i32 %5, 3
  %and1 = and i32 %5, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i1, align 4
  %add.i3 = add nuw nsw i32 %and1, 2
  store i32 %add.i3, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_0.exit
  %6 = load i32, ptr %t.i, align 4
  %7 = load i32, ptr %mode.addr.i1, align 4
  %add1.i = add nsw i32 %7, 1
  %mul.i = mul nsw i32 %6, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_1.exit

cond.false.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_0.exit
  %8 = load i32, ptr %t.i, align 4
  %9 = load i32, ptr %mode.addr.i1, align 4
  %sub.i = sub nsw i32 %8, %9
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %10 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %10, %cond.i
  store i32 %add3, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %11, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_1.exit
  %12 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %12, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i5)
  store i32 3, ptr %mode.addr.i4, align 4
  store i32 %and6, ptr %x.addr.i5, align 4
  %13 = load i32, ptr %mode.addr.i4, align 4
  %cmp1.i = icmp eq i32 %13, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.then
  %14 = load i32, ptr %x.addr.i5, align 4
  %mul.i10 = mul nsw i32 %14, 5
  store i32 %mul.i10, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_2.exit

if.end3.i:                                        ; preds = %if.then
  %15 = load i32, ptr %mode.addr.i4, align 4
  %cmp4.i = icmp eq i32 %15, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %16 = load i32, ptr %x.addr.i5, align 4
  %sub.i11 = add nsw i32 %16, -6
  store i32 %sub.i11, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_2.exit

if.end6.i:                                        ; preds = %if.end3.i
  %17 = load i32, ptr %x.addr.i5, align 4
  %18 = load i32, ptr %mode.addr.i4, align 4
  %add7.i = add nsw i32 %17, %18
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_2.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %19 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i5)
  %20 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %20, %19
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_1.exit
  %call9 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %21 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %21, %call9
  store i32 %add10, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %22, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i14)
  store i32 1, ptr %mode.addr.i12, align 4
  store i32 %and11, ptr %out.i14, align 4
  %23 = load i32, ptr %out.i14, align 4
  %add.i17 = add nsw i32 %23, 6
  store i32 %add.i17, ptr %out.i14, align 4
  %24 = load i32, ptr %mode.addr.i12, align 4
  %and1.i19 = and i32 %24, 2
  %tobool2.i20.not = icmp eq i32 %and1.i19, 0
  br i1 %tobool2.i20.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit, label %if.then3.i23

if.then3.i23:                                     ; preds = %if.end
  %25 = load i32, ptr %out.i14, align 4
  %xor.i22 = xor i32 %25, 10
  store i32 %xor.i22, ptr %out.i14, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit: ; preds = %if.end, %if.then3.i23
  %26 = load i32, ptr %out.i14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i14)
  %27 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %27, %26
  store i32 %add13, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %29 = and i32 %28, 1
  %tobool16.not.not = icmp eq i32 %29, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end22

if.then17:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit
  %30 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %30, 3
  %and19 = and i32 %30, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i26)
  store i32 %and18, ptr %mode.addr.i24, align 4
  %add.i27 = add nuw nsw i32 %and19, 1
  store i32 %add.i27, ptr %t.i26, align 4
  %cmp.i28 = icmp ult i32 %and18, 2
  br i1 %cmp.i28, label %cond.true.i31, label %cond.false.i33

cond.true.i31:                                    ; preds = %if.then17
  %31 = load i32, ptr %t.i26, align 4
  %32 = load i32, ptr %mode.addr.i24, align 4
  %add1.i29 = add nsw i32 %32, 1
  %mul.i30 = mul nsw i32 %31, %add1.i29
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_5.exit

cond.false.i33:                                   ; preds = %if.then17
  %33 = load i32, ptr %t.i26, align 4
  %34 = load i32, ptr %mode.addr.i24, align 4
  %sub.i32 = sub nsw i32 %33, %34
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_5.exit: ; preds = %cond.true.i31, %cond.false.i33
  %cond.i34 = phi i32 [ %mul.i30, %cond.true.i31 ], [ %sub.i32, %cond.false.i33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i26)
  %35 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %35, %cond.i34
  store i32 %add21, ptr %total, align 4
  br label %if.end22

if.end22:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_5.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i37)
  store i32 3, ptr %mode.addr.i36, align 4
  store i32 8, ptr %x.addr.i37, align 4
  %36 = load i32, ptr %mode.addr.i36, align 4
  %cmp1.i41 = icmp eq i32 %36, 1
  br i1 %cmp1.i41, label %if.then2.i44, label %if.end3.i46

if.then2.i44:                                     ; preds = %if.end22
  %37 = load i32, ptr %x.addr.i37, align 4
  %mul.i43 = mul nsw i32 %37, 5
  store i32 %mul.i43, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_6.exit

if.end3.i46:                                      ; preds = %if.end22
  %38 = load i32, ptr %mode.addr.i36, align 4
  %cmp4.i45 = icmp eq i32 %38, 2
  br i1 %cmp4.i45, label %if.then5.i48, label %if.end6.i50

if.then5.i48:                                     ; preds = %if.end3.i46
  %39 = load i32, ptr %x.addr.i37, align 4
  %sub.i47 = add nsw i32 %39, -5
  store i32 %sub.i47, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_6.exit

if.end6.i50:                                      ; preds = %if.end3.i46
  %40 = load i32, ptr %x.addr.i37, align 4
  %41 = load i32, ptr %mode.addr.i36, align 4
  %add7.i49 = add nsw i32 %40, %41
  store i32 %add7.i49, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_6.exit: ; preds = %if.then2.i44, %if.then5.i48, %if.end6.i50
  %42 = load i32, ptr %retval.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i37)
  %43 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %43, %42
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %44 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %44, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_6.exit
  %45 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %45, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i53)
  store i32 %and31, ptr %x.addr.i53, align 4
  %46 = load i32, ptr %x.addr.i53, align 4
  %xor.i56 = xor i32 %46, 12
  store i32 %xor.i56, ptr %retval.i51, align 4
  %47 = load i32, ptr %retval.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i53)
  %48 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %48, %47
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_6.exit
  %49 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %49, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i61)
  store i32 11, ptr %x.addr.i61, align 4
  switch i32 %and35, label %sw.default.i70 [
    i32 0, label %sw.bb.i64
    i32 1, label %sw.bb1.i66
    i32 2, label %sw.bb2.i68
  ]

sw.bb.i64:                                        ; preds = %if.end34
  %50 = load i32, ptr %x.addr.i61, align 4
  %add.i63 = add nsw i32 %50, 10
  store i32 %add.i63, ptr %retval.i59, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit

sw.bb1.i66:                                       ; preds = %if.end34
  %51 = load i32, ptr %x.addr.i61, align 4
  %xor.i65 = xor i32 %51, 12
  store i32 %xor.i65, ptr %retval.i59, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit

sw.bb2.i68:                                       ; preds = %if.end34
  %52 = load i32, ptr %x.addr.i61, align 4
  %mul.i67 = mul nsw i32 %52, 5
  store i32 %mul.i67, ptr %retval.i59, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit

sw.default.i70:                                   ; preds = %if.end34
  %53 = load i32, ptr %x.addr.i61, align 4
  %sub.i69 = add nsw i32 %53, -7
  store i32 %sub.i69, ptr %retval.i59, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit: ; preds = %sw.bb.i64, %sw.bb1.i66, %sw.bb2.i68, %sw.default.i70
  %54 = load i32, ptr %retval.i59, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i61)
  %55 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %55, %54
  store i32 %add37, ptr %total, align 4
  %56 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %56, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i73)
  store i32 %and38, ptr %x.addr.i73, align 4
  %57 = load i32, ptr %x.addr.i73, align 4
  %sub.i81 = add nsw i32 %57, -7
  store i32 %sub.i81, ptr %retval.i71, align 4
  %58 = load i32, ptr %retval.i71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i73)
  %59 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %59, %58
  store i32 %add40, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %61 = and i32 %60, 1
  %tobool43.not.not = icmp eq i32 %61, 0
  br i1 %tobool43.not.not, label %if.then44, label %if.end47

if.then44:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit
  %call45 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %62 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %62, %call45
  store i32 %add46, ptr %total, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_9.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 1, ptr %x.addr.i83, align 4
  store i32 1, ptr %s.i, align 4
  store i32 5, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i92, %if.end47
  %storemerge = phi i32 [ 0, %if.end47 ], [ %inc.i, %if.end.i92 ]
  store i32 %storemerge, ptr %i.i, align 4
  %63 = load i32, ptr %limit.i, align 4
  %cmp.i86 = icmp slt i32 %storemerge, %63
  br i1 %cmp.i86, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_12.exit

for.body.i:                                       ; preds = %for.cond.i
  %64 = load i32, ptr %i.i, align 4
  %mul.i87 = mul nsw i32 %64, %64
  %sub.i88 = add nsw i32 %mul.i87, -6
  %65 = load i32, ptr %s.i, align 4
  %add1.i89 = add nsw i32 %65, %sub.i88
  store i32 %add1.i89, ptr %s.i, align 4
  %and2.i = and i32 %add1.i89, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i91, label %if.end.i92

if.then.i91:                                      ; preds = %for.body.i
  %66 = load i32, ptr %i.i, align 4
  %67 = load i32, ptr %x.addr.i83, align 4
  %add4.i = add nsw i32 %66, %67
  %68 = load i32, ptr %s.i, align 4
  %xor.i90 = xor i32 %68, %add4.i
  store i32 %xor.i90, ptr %s.i, align 4
  br label %if.end.i92

if.end.i92:                                       ; preds = %if.then.i91, %for.body.i
  %69 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %69, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_12.exit: ; preds = %for.cond.i
  %70 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %71 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %71, %70
  store i32 %add49, ptr %total, align 4
  %72 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %72, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i93)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i94)
  store i32 %and50, ptr %x.addr.i93, align 4
  %and.i95 = shl i32 %72, 2
  %mul.i96 = and i32 %and.i95, 12
  %add.i97 = add nuw nsw i32 %and50, %mul.i96
  store i32 %add.i97, ptr %s.i94, align 4
  %rem.i = and i32 %add.i97, 1
  %cmp.i98 = icmp eq i32 %rem.i, 0
  %73 = load i32, ptr %s.i94, align 4
  %add1.i101 = add nsw i32 %73, 1
  %74 = load i32, ptr %s.i94, align 4
  %sub.i99 = add nsw i32 %74, -3
  %storemerge105 = select i1 %cmp.i98, i32 %sub.i99, i32 %add1.i101
  store i32 %storemerge105, ptr %s.i94, align 4
  %75 = load i32, ptr %x.addr.i93, align 4
  %and2.i102 = and i32 %75, 4
  %mul3.i = mul nuw nsw i32 %and2.i102, 5
  %add4.i103 = add nsw i32 %storemerge105, %mul3.i
  store i32 %add4.i103, ptr %s.i94, align 4
  %rem5.i = srem i32 %add4.i103, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %76 = load i32, ptr %s.i94, align 4
  %add10.i = add nsw i32 %76, 3
  %77 = load i32, ptr %s.i94, align 4
  %sub8.i = add nsw i32 %77, -4
  %storemerge106 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge106, ptr %s.i94, align 4
  %78 = load i32, ptr %x.addr.i93, align 4
  %and12.i = and i32 %78, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 6
  %add14.i = add nsw i32 %storemerge106, %mul13.i
  store i32 %add14.i, ptr %s.i94, align 4
  %79 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %79, 0
  %80 = load i32, ptr %s.i94, align 4
  %add20.i = add nsw i32 %80, 5
  %81 = load i32, ptr %s.i94, align 4
  %sub18.i = add nsw i32 %81, -5
  %storemerge107 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge107, ptr %s.i94, align 4
  %82 = load i32, ptr %x.addr.i93, align 4
  %and22.i = and i32 %82, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 7
  %add24.i = add nsw i32 %storemerge107, %mul23.i
  store i32 %add24.i, ptr %s.i94, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %83 = load i32, ptr %s.i94, align 4
  %add30.i = add nsw i32 %83, 7
  %84 = load i32, ptr %s.i94, align 4
  %sub28.i = add nsw i32 %84, -6
  %storemerge108 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge108, ptr %s.i94, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i93)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i94)
  %85 = load i32, ptr %total, align 4
  %add52 = add nsw i32 %85, %storemerge108
  store i32 %add52, ptr %total, align 4
  %86 = load i32, ptr %x.addr, align 4
  %and54 = and i32 %86, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_12.exit
  %call57 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 2)
  %87 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %87, %call57
  store i32 %add58, ptr %total, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_12.exit
  %call60 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %88 = load i32, ptr %total, align 4
  %add61 = add nsw i32 %88, %call60
  store i32 %add61, ptr %total, align 4
  ret i32 %add61
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_041_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_041_recursivei(i32 noundef %sub)
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
