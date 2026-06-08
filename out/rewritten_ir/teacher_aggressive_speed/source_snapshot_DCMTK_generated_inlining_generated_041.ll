; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_041.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_041.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_041_step(i32 noundef %x) #0 {
entry:
  %retval.i46 = alloca i32, align 4
  %x.addr.i48 = alloca i32, align 4
  %retval.i34 = alloca i32, align 4
  %x.addr.i36 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i28 = alloca i32, align 4
  %mode.addr.i16 = alloca i32, align 4
  %t.i18 = alloca i32, align 4
  %mode.addr.i4 = alloca i32, align 4
  %out.i6 = alloca i32, align 4
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
  %call7 = call noundef i32 @_ZL18image_041_branch_2ii(i32 noundef 3, i32 noundef %and6)
  %13 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %13, %call7
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_1.exit
  %call9 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %14 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %14, %call9
  store i32 %add10, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %15, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i6)
  store i32 1, ptr %mode.addr.i4, align 4
  store i32 %and11, ptr %out.i6, align 4
  %16 = load i32, ptr %out.i6, align 4
  %add.i9 = add nsw i32 %16, 6
  store i32 %add.i9, ptr %out.i6, align 4
  %17 = load i32, ptr %mode.addr.i4, align 4
  %and1.i11 = and i32 %17, 2
  %tobool2.i12.not = icmp eq i32 %and1.i11, 0
  br i1 %tobool2.i12.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_3.exit, label %if.then3.i15

if.then3.i15:                                     ; preds = %if.end
  %18 = load i32, ptr %out.i6, align 4
  %xor.i14 = xor i32 %18, 10
  store i32 %xor.i14, ptr %out.i6, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_3.exit: ; preds = %if.end, %if.then3.i15
  %19 = load i32, ptr %out.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i6)
  %20 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %20, %19
  store i32 %add13, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %22 = and i32 %21, 1
  %tobool16.not.not = icmp eq i32 %22, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end22

if.then17:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_3.exit
  %23 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %23, 3
  %and19 = and i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i18)
  store i32 %and18, ptr %mode.addr.i16, align 4
  %add.i19 = add nuw nsw i32 %and19, 1
  store i32 %add.i19, ptr %t.i18, align 4
  %cmp.i20 = icmp ult i32 %and18, 2
  br i1 %cmp.i20, label %cond.true.i23, label %cond.false.i25

cond.true.i23:                                    ; preds = %if.then17
  %24 = load i32, ptr %t.i18, align 4
  %25 = load i32, ptr %mode.addr.i16, align 4
  %add1.i21 = add nsw i32 %25, 1
  %mul.i22 = mul nsw i32 %24, %add1.i21
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit

cond.false.i25:                                   ; preds = %if.then17
  %26 = load i32, ptr %t.i18, align 4
  %27 = load i32, ptr %mode.addr.i16, align 4
  %sub.i24 = sub nsw i32 %26, %27
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit: ; preds = %cond.true.i23, %cond.false.i25
  %cond.i26 = phi i32 [ %mul.i22, %cond.true.i23 ], [ %sub.i24, %cond.false.i25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i18)
  %28 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %28, %cond.i26
  store i32 %add21, ptr %total, align 4
  br label %if.end22

if.end22:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_4.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_3.exit
  %call23 = call noundef i32 @_ZL18image_041_branch_6ii(i32 noundef 3, i32 noundef 8)
  %29 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %29, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %30, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end22
  %31 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %31, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i28)
  store i32 %and31, ptr %x.addr.i28, align 4
  %32 = load i32, ptr %x.addr.i28, align 4
  %xor.i31 = xor i32 %32, 12
  store i32 %xor.i31, ptr %retval.i, align 4
  %33 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i28)
  %34 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %34, %33
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end22
  %35 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %35, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  store i32 11, ptr %x.addr.i36, align 4
  switch i32 %and35, label %sw.default.i45 [
    i32 0, label %sw.bb.i39
    i32 1, label %sw.bb1.i41
    i32 2, label %sw.bb2.i43
  ]

sw.bb.i39:                                        ; preds = %if.end34
  %36 = load i32, ptr %x.addr.i36, align 4
  %add.i38 = add nsw i32 %36, 10
  store i32 %add.i38, ptr %retval.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit

sw.bb1.i41:                                       ; preds = %if.end34
  %37 = load i32, ptr %x.addr.i36, align 4
  %xor.i40 = xor i32 %37, 12
  store i32 %xor.i40, ptr %retval.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit

sw.bb2.i43:                                       ; preds = %if.end34
  %38 = load i32, ptr %x.addr.i36, align 4
  %mul.i42 = mul nsw i32 %38, 5
  store i32 %mul.i42, ptr %retval.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit

sw.default.i45:                                   ; preds = %if.end34
  %39 = load i32, ptr %x.addr.i36, align 4
  %sub.i44 = add nsw i32 %39, -7
  store i32 %sub.i44, ptr %retval.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit: ; preds = %sw.bb.i39, %sw.bb1.i41, %sw.bb2.i43, %sw.default.i45
  %40 = load i32, ptr %retval.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  %41 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %41, %40
  store i32 %add37, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %42, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i46)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i48)
  store i32 %and38, ptr %x.addr.i48, align 4
  %43 = load i32, ptr %x.addr.i48, align 4
  %sub.i56 = add nsw i32 %43, -7
  store i32 %sub.i56, ptr %retval.i46, align 4
  %44 = load i32, ptr %retval.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i48)
  %45 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %45, %44
  store i32 %add40, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %47 = and i32 %46, 1
  %tobool43.not.not = icmp eq i32 %47, 0
  br i1 %tobool43.not.not, label %if.then44, label %if.end47

if.then44:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit
  %call45 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %48 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %48, %call45
  store i32 %add46, ptr %total, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_041_7.exit
  %call48 = call noundef i32 @_ZL17image_041_large_ai(i32 noundef 1)
  %49 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %49, %call48
  store i32 %add49, ptr %total, align 4
  %50 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %50, 7
  %call51 = call noundef i32 @_ZL17image_041_large_bi(i32 noundef %and50)
  %add52 = add nsw i32 %add49, %call51
  store i32 %add52, ptr %total, align 4
  %and54 = and i32 %50, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end47
  %call57 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 2)
  %51 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %51, %call57
  store i32 %add58, ptr %total, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end47
  %call60 = call noundef i32 @_ZL19image_041_recursivei(i32 noundef 3)
  %52 = load i32, ptr %total, align 4
  %add61 = add nsw i32 %52, %call60
  store i32 %add61, ptr %total, align 4
  ret i32 %add61
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_041_branch_2ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = mul nsw i32 %2, 5
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_041_branch_6ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = mul nsw i32 %2, 5
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
define internal noundef i32 @_ZL17image_041_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = or i32 %and, 4
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
  %sub = add nsw i32 %mul, -6
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_041_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 2
  %mul = and i32 %and, 12
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
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 5
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
  %mul13 = mul nuw nsw i32 %and12, 6
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
  %mul23 = mul nuw nsw i32 %and22, 7
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
