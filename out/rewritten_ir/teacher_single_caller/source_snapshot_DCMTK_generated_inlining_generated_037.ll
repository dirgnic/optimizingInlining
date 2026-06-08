; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_037.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_037.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_037_step(i32 noundef %x) #0 {
entry:
  %x.addr.i39 = alloca i32, align 4
  %y.i40 = alloca i32, align 4
  %i.i41 = alloca i32, align 4
  %mode.addr.i27 = alloca i32, align 4
  %out.i29 = alloca i32, align 4
  %x.addr.i14 = alloca i32, align 4
  %y.i15 = alloca i32, align 4
  %i.i16 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i8 = alloca i32, align 4
  %x.addr.i9 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 45, ptr %total, align 4
  %and = and i32 %x, 3
  %and1 = and i32 %x, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %and1, ptr %out.i, align 4
  %and.i = and i32 %x, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 7
  store i32 %add.i, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = load i32, ptr %out.i, align 4
  %xor.i2 = xor i32 %2, 3
  store i32 %xor.i2, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit: ; preds = %if.end.i, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %4, %3
  store i32 %add3, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %5, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit
  %6 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %6, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %and6, ptr %x.addr.i3, align 4
  %add.i4 = add nuw nsw i32 %and6, 9
  store i32 %add.i4, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then
  %storemerge51 = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i ]
  store i32 %storemerge51, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge51, 2
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_2.exit

for.body.i:                                       ; preds = %for.cond.i
  %7 = load i32, ptr %i.i, align 4
  %8 = load i32, ptr %x.addr.i3, align 4
  %and.i5 = and i32 %8, 3
  %add1.i = add nsw i32 %7, %and.i5
  %9 = load i32, ptr %y.i, align 4
  %add2.i = add nsw i32 %9, %add1.i
  store i32 %add2.i, ptr %y.i, align 4
  %10 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %10, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_2.exit: ; preds = %for.cond.i
  %11 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %12 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %12, %11
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_1.exit
  %call9 = call noundef i32 @_ZL17image_037_large_bi(i32 noundef 1)
  %13 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %13, %call9
  store i32 %add10, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %14, 7
  %call12 = call noundef i32 @_ZL25image_037_branch_variableii(i32 noundef 1, i32 noundef %and11)
  %add13 = add nsw i32 %add10, %call12
  store i32 %add13, ptr %total, align 4
  %15 = and i32 %14, 1
  %tobool16.not.not = icmp eq i32 %15, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end
  %call18 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef 1)
  %16 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %16, %call18
  store i32 %add19, ptr %total, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end
  %17 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %17, 40
  store i32 %add22, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %18, 3
  %and24 = and i32 %18, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i9)
  store i32 %and23, ptr %mode.addr.i8, align 4
  store i32 %and24, ptr %x.addr.i9, align 4
  %cmp.i10 = icmp eq i32 %and23, 0
  br i1 %cmp.i10, label %if.then.i12, label %if.end.i13

if.then.i12:                                      ; preds = %if.end20
  %19 = load i32, ptr %x.addr.i9, align 4
  %add.i11 = add nsw i32 %19, 9
  store i32 %add.i11, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

if.end.i13:                                       ; preds = %if.end20
  %20 = load i32, ptr %mode.addr.i8, align 4
  %cmp1.i = icmp eq i32 %20, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i13
  %21 = load i32, ptr %x.addr.i9, align 4
  %mul.i = shl nsw i32 %21, 1
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

if.end3.i:                                        ; preds = %if.end.i13
  %22 = load i32, ptr %mode.addr.i8, align 4
  %cmp4.i = icmp eq i32 %22, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %23 = load i32, ptr %x.addr.i9, align 4
  %sub.i = add nsw i32 %23, -7
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

if.end6.i:                                        ; preds = %if.end3.i
  %24 = load i32, ptr %x.addr.i9, align 4
  %25 = load i32, ptr %mode.addr.i8, align 4
  %add7.i = add nsw i32 %24, %25
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit: ; preds = %if.then.i12, %if.then2.i, %if.then5.i, %if.end6.i
  %26 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i9)
  %27 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %27, %26
  store i32 %add26, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %28, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit
  %29 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %29, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i16)
  store i32 %and31, ptr %x.addr.i14, align 4
  %add.i17 = add nuw nsw i32 %and31, 7
  store i32 %add.i17, ptr %y.i15, align 4
  br label %for.cond.i19

for.cond.i19:                                     ; preds = %for.body.i23, %if.then30
  %storemerge50 = phi i32 [ 0, %if.then30 ], [ %inc.i24, %for.body.i23 ]
  store i32 %storemerge50, ptr %i.i16, align 4
  %cmp.i18 = icmp slt i32 %storemerge50, 3
  br i1 %cmp.i18, label %for.body.i23, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_5.exit

for.body.i23:                                     ; preds = %for.cond.i19
  %30 = load i32, ptr %i.i16, align 4
  %31 = load i32, ptr %x.addr.i14, align 4
  %and.i20 = and i32 %31, 3
  %add1.i21 = add nsw i32 %30, %and.i20
  %32 = load i32, ptr %y.i15, align 4
  %add2.i22 = add nsw i32 %32, %add1.i21
  store i32 %add2.i22, ptr %y.i15, align 4
  %33 = load i32, ptr %i.i16, align 4
  %inc.i24 = add nsw i32 %33, 1
  br label %for.cond.i19, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_5.exit: ; preds = %for.cond.i19
  %34 = load i32, ptr %y.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i16)
  %35 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %35, %34
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_5.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_4.exit
  %call35 = call noundef i32 @_ZL17image_037_large_bi(i32 noundef 7)
  %36 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %36, %call35
  store i32 %add36, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %37, 7
  %call38 = call noundef i32 @_ZL25image_037_branch_variableii(i32 noundef 3, i32 noundef %and37)
  %add39 = add nsw i32 %add36, %call38
  store i32 %add39, ptr %total, align 4
  %38 = and i32 %37, 1
  %tobool42.not.not = icmp eq i32 %38, 0
  br i1 %tobool42.not.not, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end34
  %call44 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef 3)
  %39 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %39, %call44
  store i32 %add45, ptr %total, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end34
  %40 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %40, 32
  store i32 %add48, ptr %total, align 4
  %41 = load i32, ptr %x.addr, align 4
  %and49 = and i32 %41, 3
  %and50 = and i32 %41, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i29)
  store i32 %and49, ptr %mode.addr.i27, align 4
  store i32 %and50, ptr %out.i29, align 4
  %and.i30 = and i32 %41, 1
  %tobool.i31.not = icmp eq i32 %and.i30, 0
  br i1 %tobool.i31.not, label %if.end.i36, label %if.then.i33

if.then.i33:                                      ; preds = %if.end46
  %42 = load i32, ptr %out.i29, align 4
  %add.i32 = add nsw i32 %42, 3
  store i32 %add.i32, ptr %out.i29, align 4
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then.i33, %if.end46
  %43 = load i32, ptr %mode.addr.i27, align 4
  %and1.i34 = and i32 %43, 2
  %tobool2.i35.not = icmp eq i32 %and1.i34, 0
  br i1 %tobool2.i35.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit, label %if.then3.i38

if.then3.i38:                                     ; preds = %if.end.i36
  %44 = load i32, ptr %out.i29, align 4
  %xor.i37 = xor i32 %44, 7
  store i32 %xor.i37, ptr %out.i29, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit: ; preds = %if.end.i36, %if.then3.i38
  %45 = load i32, ptr %out.i29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i29)
  %46 = load i32, ptr %total, align 4
  %add52 = add nsw i32 %46, %45
  store i32 %add52, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %and54 = and i32 %47, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit
  %48 = load i32, ptr %x.addr, align 4
  %and57 = and i32 %48, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i39)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i41)
  store i32 %and57, ptr %x.addr.i39, align 4
  %add.i42 = add nuw nsw i32 %and57, 13
  store i32 %add.i42, ptr %y.i40, align 4
  br label %for.cond.i44

for.cond.i44:                                     ; preds = %for.body.i48, %if.then56
  %storemerge = phi i32 [ 0, %if.then56 ], [ %inc.i49, %for.body.i48 ]
  store i32 %storemerge, ptr %i.i41, align 4
  %cmp.i43 = icmp slt i32 %storemerge, 3
  br i1 %cmp.i43, label %for.body.i48, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_8.exit

for.body.i48:                                     ; preds = %for.cond.i44
  %49 = load i32, ptr %i.i41, align 4
  %50 = load i32, ptr %x.addr.i39, align 4
  %and.i45 = and i32 %50, 3
  %add1.i46 = add nsw i32 %49, %and.i45
  %51 = load i32, ptr %y.i40, align 4
  %add2.i47 = add nsw i32 %51, %add1.i46
  store i32 %add2.i47, ptr %y.i40, align 4
  %52 = load i32, ptr %i.i41, align 4
  %inc.i49 = add nsw i32 %52, 1
  br label %for.cond.i44, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_8.exit: ; preds = %for.cond.i44
  %53 = load i32, ptr %y.i40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i39)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i41)
  %54 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %54, %53
  store i32 %add59, ptr %total, align 4
  br label %if.end60

if.end60:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_8.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_7.exit
  %call61 = call noundef i32 @_ZL17image_037_large_bi(i32 noundef 0)
  %55 = load i32, ptr %total, align 4
  %add62 = add nsw i32 %55, %call61
  store i32 %add62, ptr %total, align 4
  ret i32 %add62
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_037_large_bi(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %mul, -5
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
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_037_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %mul = mul nsw i32 %2, 3
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_037_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_037_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef %sub1)
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
