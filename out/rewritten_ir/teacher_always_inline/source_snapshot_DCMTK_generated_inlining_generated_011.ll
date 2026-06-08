; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_011.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_011.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_011_entry(i32 noundef %x) #0 {
entry:
  %retval.i223 = alloca i32, align 4
  %x.addr.i225 = alloca i32, align 4
  %x.addr.i182 = alloca i32, align 4
  %s.i183 = alloca i32, align 4
  %x.addr.i163 = alloca i32, align 4
  %s.i164 = alloca i32, align 4
  %limit.i165 = alloca i32, align 4
  %i.i166 = alloca i32, align 4
  %retval.i151 = alloca i32, align 4
  %x.addr.i153 = alloca i32, align 4
  %x.addr.i110 = alloca i32, align 4
  %s.i111 = alloca i32, align 4
  %x.addr.i91 = alloca i32, align 4
  %s.i92 = alloca i32, align 4
  %limit.i93 = alloca i32, align 4
  %i.i94 = alloca i32, align 4
  %retval.i79 = alloca i32, align 4
  %x.addr.i81 = alloca i32, align 4
  %x.addr.i38 = alloca i32, align 4
  %s.i39 = alloca i32, align 4
  %x.addr.i19 = alloca i32, align 4
  %s.i20 = alloca i32, align 4
  %limit.i21 = alloca i32, align 4
  %i.i22 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i13 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i2 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 11, ptr %x.addr.i, align 4
  store i32 11, ptr %s.i, align 4
  store i32 9, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %0 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %0
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %1 = load i32, ptr %i.i, align 4
  %mul.i = mul nsw i32 %1, %1
  %sub.i = add nsw i32 %mul.i, -4
  %2 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %2, %sub.i
  store i32 %add1.i, ptr %s.i, align 4
  %and2.i = and i32 %add1.i, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %3 = load i32, ptr %i.i, align 4
  %4 = load i32, ptr %x.addr.i, align 4
  %add4.i = add nsw i32 %3, %4
  %5 = load i32, ptr %s.i, align 4
  %xor.i = xor i32 %5, %add4.i
  store i32 %xor.i, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_0.exit: ; preds = %for.cond.i
  %7 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %8 = load i32, ptr %total, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and = and i32 %9, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i2)
  store i32 %and, ptr %x.addr.i1, align 4
  %and.i3 = and i32 %9, 3
  %mul.i4 = mul nuw nsw i32 %and.i3, 7
  %add.i5 = add nuw nsw i32 %and, %mul.i4
  store i32 %add.i5, ptr %s.i2, align 4
  %rem.i = and i32 %add.i5, 1
  %cmp.i6 = icmp eq i32 %rem.i, 0
  %10 = load i32, ptr %s.i2, align 4
  %add1.i9 = add nsw i32 %10, 1
  %11 = load i32, ptr %s.i2, align 4
  %sub.i7 = add nsw i32 %11, -3
  %storemerge235 = select i1 %cmp.i6, i32 %sub.i7, i32 %add1.i9
  store i32 %storemerge235, ptr %s.i2, align 4
  %12 = load i32, ptr %x.addr.i1, align 4
  %and2.i10 = shl i32 %12, 3
  %mul3.i = and i32 %and2.i10, 32
  %add4.i11 = add nsw i32 %storemerge235, %mul3.i
  store i32 %add4.i11, ptr %s.i2, align 4
  %rem5.i = srem i32 %add4.i11, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %13 = load i32, ptr %s.i2, align 4
  %add10.i = add nsw i32 %13, 3
  %14 = load i32, ptr %s.i2, align 4
  %sub8.i = add nsw i32 %14, -4
  %storemerge236 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge236, ptr %s.i2, align 4
  %15 = load i32, ptr %x.addr.i1, align 4
  %and12.i = and i32 %15, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 9
  %add14.i = add nsw i32 %storemerge236, %mul13.i
  store i32 %add14.i, ptr %s.i2, align 4
  %16 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %16, 0
  %17 = load i32, ptr %s.i2, align 4
  %add20.i = add nsw i32 %17, 5
  %18 = load i32, ptr %s.i2, align 4
  %sub18.i = add nsw i32 %18, -5
  %storemerge237 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge237, ptr %s.i2, align 4
  %19 = load i32, ptr %x.addr.i1, align 4
  %and22.i = and i32 %19, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 10
  %add24.i = add nsw i32 %storemerge237, %mul23.i
  store i32 %add24.i, ptr %s.i2, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %20 = load i32, ptr %s.i2, align 4
  %add30.i = add nsw i32 %20, 7
  %21 = load i32, ptr %s.i2, align 4
  %sub28.i = add nsw i32 %21, -6
  %storemerge238 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge238, ptr %s.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i2)
  %22 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %22, %storemerge238
  store i32 %add2, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 %and3, ptr %x.addr.i13, align 4
  %24 = load i32, ptr %x.addr.i13, align 4
  %xor.i16 = xor i32 %24, 16
  store i32 %xor.i16, ptr %retval.i, align 4
  %25 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %26 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %26, %25
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_011_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %27, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i22)
  store i32 %and8, ptr %x.addr.i19, align 4
  store i32 %and8, ptr %s.i20, align 4
  %and.i23 = and i32 %27, 3
  %add.i24 = add nuw nsw i32 %and.i23, 6
  store i32 %add.i24, ptr %limit.i21, align 4
  br label %for.cond.i26

for.cond.i26:                                     ; preds = %if.end.i36, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_0.exit
  %storemerge239 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_0.exit ], [ %inc.i37, %if.end.i36 ]
  store i32 %storemerge239, ptr %i.i22, align 4
  %28 = load i32, ptr %limit.i21, align 4
  %cmp.i25 = icmp slt i32 %storemerge239, %28
  br i1 %cmp.i25, label %for.body.i32, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_4.exit

for.body.i32:                                     ; preds = %for.cond.i26
  %29 = load i32, ptr %i.i22, align 4
  %mul.i27 = mul nsw i32 %29, %29
  %sub.i28 = add nsw i32 %mul.i27, -4
  %30 = load i32, ptr %s.i20, align 4
  %add1.i29 = add nsw i32 %30, %sub.i28
  store i32 %add1.i29, ptr %s.i20, align 4
  %and2.i30 = and i32 %add1.i29, 1
  %cmp3.i31 = icmp eq i32 %and2.i30, 0
  br i1 %cmp3.i31, label %if.then.i35, label %if.end.i36

if.then.i35:                                      ; preds = %for.body.i32
  %31 = load i32, ptr %i.i22, align 4
  %32 = load i32, ptr %x.addr.i19, align 4
  %add4.i33 = add nsw i32 %31, %32
  %33 = load i32, ptr %s.i20, align 4
  %xor.i34 = xor i32 %33, %add4.i33
  store i32 %xor.i34, ptr %s.i20, align 4
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then.i35, %for.body.i32
  %34 = load i32, ptr %i.i22, align 4
  %inc.i37 = add nsw i32 %34, 1
  br label %for.cond.i26, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_4.exit: ; preds = %for.cond.i26
  %35 = load i32, ptr %s.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i22)
  %36 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %36, %35
  store i32 %add10, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %37, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i39)
  store i32 %and11, ptr %x.addr.i38, align 4
  %and.i40 = and i32 %37, 3
  %mul.i41 = mul nuw nsw i32 %and.i40, 7
  %add.i42 = add nuw nsw i32 %and11, %mul.i41
  store i32 %add.i42, ptr %s.i39, align 4
  %rem.i43 = and i32 %add.i42, 1
  %cmp.i44 = icmp eq i32 %rem.i43, 0
  %38 = load i32, ptr %s.i39, align 4
  %add1.i47 = add nsw i32 %38, 1
  %39 = load i32, ptr %s.i39, align 4
  %sub.i45 = add nsw i32 %39, -3
  %storemerge240 = select i1 %cmp.i44, i32 %sub.i45, i32 %add1.i47
  store i32 %storemerge240, ptr %s.i39, align 4
  %40 = load i32, ptr %x.addr.i38, align 4
  %and2.i49 = shl i32 %40, 3
  %mul3.i50 = and i32 %and2.i49, 32
  %add4.i51 = add nsw i32 %storemerge240, %mul3.i50
  store i32 %add4.i51, ptr %s.i39, align 4
  %rem5.i52 = srem i32 %add4.i51, 3
  %cmp6.i53 = icmp eq i32 %rem5.i52, 0
  %41 = load i32, ptr %s.i39, align 4
  %add10.i57 = add nsw i32 %41, 3
  %42 = load i32, ptr %s.i39, align 4
  %sub8.i55 = add nsw i32 %42, -4
  %storemerge241 = select i1 %cmp6.i53, i32 %sub8.i55, i32 %add10.i57
  store i32 %storemerge241, ptr %s.i39, align 4
  %43 = load i32, ptr %x.addr.i38, align 4
  %and12.i59 = and i32 %43, 5
  %mul13.i60 = mul nuw nsw i32 %and12.i59, 9
  %add14.i61 = add nsw i32 %storemerge241, %mul13.i60
  store i32 %add14.i61, ptr %s.i39, align 4
  %44 = and i32 %add14.i61, 3
  %cmp16.i63 = icmp eq i32 %44, 0
  %45 = load i32, ptr %s.i39, align 4
  %add20.i67 = add nsw i32 %45, 5
  %46 = load i32, ptr %s.i39, align 4
  %sub18.i65 = add nsw i32 %46, -5
  %storemerge242 = select i1 %cmp16.i63, i32 %sub18.i65, i32 %add20.i67
  store i32 %storemerge242, ptr %s.i39, align 4
  %47 = load i32, ptr %x.addr.i38, align 4
  %and22.i69 = and i32 %47, 6
  %mul23.i70 = mul nuw nsw i32 %and22.i69, 10
  %add24.i71 = add nsw i32 %storemerge242, %mul23.i70
  store i32 %add24.i71, ptr %s.i39, align 4
  %rem25.i72 = srem i32 %add24.i71, 5
  %cmp26.i73 = icmp eq i32 %rem25.i72, 0
  %48 = load i32, ptr %s.i39, align 4
  %add30.i77 = add nsw i32 %48, 7
  %49 = load i32, ptr %s.i39, align 4
  %sub28.i75 = add nsw i32 %49, -6
  %storemerge243 = select i1 %cmp26.i73, i32 %sub28.i75, i32 %add30.i77
  store i32 %storemerge243, ptr %s.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i39)
  %50 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %50, %storemerge243
  store i32 %add13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i79)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i81)
  store i32 4, ptr %x.addr.i81, align 4
  %51 = load i32, ptr %x.addr.i81, align 4
  %xor.i85 = xor i32 %51, 16
  store i32 %xor.i85, ptr %retval.i79, align 4
  %52 = load i32, ptr %retval.i79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i79)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i81)
  %53 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %53, %52
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL20matrix_011_recursivei(i32 noundef 3)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %54 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %54, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i91)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i93)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i94)
  store i32 %and18, ptr %x.addr.i91, align 4
  store i32 %and18, ptr %s.i92, align 4
  %and.i95 = and i32 %54, 3
  %add.i96 = add nuw nsw i32 %and.i95, 6
  store i32 %add.i96, ptr %limit.i93, align 4
  br label %for.cond.i98

for.cond.i98:                                     ; preds = %if.end.i108, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_4.exit
  %storemerge244 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_4.exit ], [ %inc.i109, %if.end.i108 ]
  store i32 %storemerge244, ptr %i.i94, align 4
  %55 = load i32, ptr %limit.i93, align 4
  %cmp.i97 = icmp slt i32 %storemerge244, %55
  br i1 %cmp.i97, label %for.body.i104, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_8.exit

for.body.i104:                                    ; preds = %for.cond.i98
  %56 = load i32, ptr %i.i94, align 4
  %mul.i99 = mul nsw i32 %56, %56
  %sub.i100 = add nsw i32 %mul.i99, -4
  %57 = load i32, ptr %s.i92, align 4
  %add1.i101 = add nsw i32 %57, %sub.i100
  store i32 %add1.i101, ptr %s.i92, align 4
  %and2.i102 = and i32 %add1.i101, 1
  %cmp3.i103 = icmp eq i32 %and2.i102, 0
  br i1 %cmp3.i103, label %if.then.i107, label %if.end.i108

if.then.i107:                                     ; preds = %for.body.i104
  %58 = load i32, ptr %i.i94, align 4
  %59 = load i32, ptr %x.addr.i91, align 4
  %add4.i105 = add nsw i32 %58, %59
  %60 = load i32, ptr %s.i92, align 4
  %xor.i106 = xor i32 %60, %add4.i105
  store i32 %xor.i106, ptr %s.i92, align 4
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.then.i107, %for.body.i104
  %61 = load i32, ptr %i.i94, align 4
  %inc.i109 = add nsw i32 %61, 1
  br label %for.cond.i98, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_8.exit: ; preds = %for.cond.i98
  %62 = load i32, ptr %s.i92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i93)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i94)
  %63 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %63, %62
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i110)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i111)
  store i32 7, ptr %x.addr.i110, align 4
  store i32 28, ptr %s.i111, align 4
  %64 = load i32, ptr %s.i111, align 4
  %sub.i117 = add nsw i32 %64, -3
  store i32 %sub.i117, ptr %s.i111, align 4
  %65 = load i32, ptr %x.addr.i110, align 4
  %and2.i121 = shl i32 %65, 3
  %mul3.i122 = and i32 %and2.i121, 32
  %add4.i123 = add nsw i32 %sub.i117, %mul3.i122
  store i32 %add4.i123, ptr %s.i111, align 4
  %rem5.i124 = srem i32 %add4.i123, 3
  %cmp6.i125 = icmp eq i32 %rem5.i124, 0
  %66 = load i32, ptr %s.i111, align 4
  %add10.i129 = add nsw i32 %66, 3
  %67 = load i32, ptr %s.i111, align 4
  %sub8.i127 = add nsw i32 %67, -4
  %storemerge246 = select i1 %cmp6.i125, i32 %sub8.i127, i32 %add10.i129
  store i32 %storemerge246, ptr %s.i111, align 4
  %68 = load i32, ptr %x.addr.i110, align 4
  %and12.i131 = and i32 %68, 5
  %mul13.i132 = mul nuw nsw i32 %and12.i131, 9
  %add14.i133 = add nsw i32 %storemerge246, %mul13.i132
  store i32 %add14.i133, ptr %s.i111, align 4
  %69 = and i32 %add14.i133, 3
  %cmp16.i135 = icmp eq i32 %69, 0
  %70 = load i32, ptr %s.i111, align 4
  %add20.i139 = add nsw i32 %70, 5
  %71 = load i32, ptr %s.i111, align 4
  %sub18.i137 = add nsw i32 %71, -5
  %storemerge247 = select i1 %cmp16.i135, i32 %sub18.i137, i32 %add20.i139
  store i32 %storemerge247, ptr %s.i111, align 4
  %72 = load i32, ptr %x.addr.i110, align 4
  %and22.i141 = and i32 %72, 6
  %mul23.i142 = mul nuw nsw i32 %and22.i141, 10
  %add24.i143 = add nsw i32 %storemerge247, %mul23.i142
  store i32 %add24.i143, ptr %s.i111, align 4
  %rem25.i144 = srem i32 %add24.i143, 5
  %cmp26.i145 = icmp eq i32 %rem25.i144, 0
  %73 = load i32, ptr %s.i111, align 4
  %add30.i149 = add nsw i32 %73, 7
  %74 = load i32, ptr %s.i111, align 4
  %sub28.i147 = add nsw i32 %74, -6
  %storemerge248 = select i1 %cmp26.i145, i32 %sub28.i147, i32 %add30.i149
  store i32 %storemerge248, ptr %s.i111, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i110)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i111)
  %75 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %75, %storemerge248
  store i32 %add22, ptr %total, align 4
  %76 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %76, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i151)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i153)
  store i32 %and23, ptr %x.addr.i153, align 4
  %77 = load i32, ptr %x.addr.i153, align 4
  %xor.i157 = xor i32 %77, 16
  store i32 %xor.i157, ptr %retval.i151, align 4
  %78 = load i32, ptr %retval.i151, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i151)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i153)
  %79 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %79, %78
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_011_recursivei(i32 noundef 3)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i163)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i164)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i165)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i166)
  store i32 10, ptr %x.addr.i163, align 4
  store i32 10, ptr %s.i164, align 4
  store i32 8, ptr %limit.i165, align 4
  br label %for.cond.i170

for.cond.i170:                                    ; preds = %if.end.i180, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_8.exit
  %storemerge249 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_8.exit ], [ %inc.i181, %if.end.i180 ]
  store i32 %storemerge249, ptr %i.i166, align 4
  %80 = load i32, ptr %limit.i165, align 4
  %cmp.i169 = icmp slt i32 %storemerge249, %80
  br i1 %cmp.i169, label %for.body.i176, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_12.exit

for.body.i176:                                    ; preds = %for.cond.i170
  %81 = load i32, ptr %i.i166, align 4
  %mul.i171 = mul nsw i32 %81, %81
  %sub.i172 = add nsw i32 %mul.i171, -4
  %82 = load i32, ptr %s.i164, align 4
  %add1.i173 = add nsw i32 %82, %sub.i172
  store i32 %add1.i173, ptr %s.i164, align 4
  %and2.i174 = and i32 %add1.i173, 1
  %cmp3.i175 = icmp eq i32 %and2.i174, 0
  br i1 %cmp3.i175, label %if.then.i179, label %if.end.i180

if.then.i179:                                     ; preds = %for.body.i176
  %83 = load i32, ptr %i.i166, align 4
  %84 = load i32, ptr %x.addr.i163, align 4
  %add4.i177 = add nsw i32 %83, %84
  %85 = load i32, ptr %s.i164, align 4
  %xor.i178 = xor i32 %85, %add4.i177
  store i32 %xor.i178, ptr %s.i164, align 4
  br label %if.end.i180

if.end.i180:                                      ; preds = %if.then.i179, %for.body.i176
  %86 = load i32, ptr %i.i166, align 4
  %inc.i181 = add nsw i32 %86, 1
  br label %for.cond.i170, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_011_12.exit: ; preds = %for.cond.i170
  %87 = load i32, ptr %s.i164, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i163)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i164)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i165)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i166)
  %88 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %88, %87
  store i32 %add29, ptr %total, align 4
  %89 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %89, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i182)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i183)
  store i32 %and30, ptr %x.addr.i182, align 4
  %and.i184 = and i32 %89, 3
  %mul.i185 = mul nuw nsw i32 %and.i184, 7
  %add.i186 = add nuw nsw i32 %and30, %mul.i185
  store i32 %add.i186, ptr %s.i183, align 4
  %rem.i187 = and i32 %add.i186, 1
  %cmp.i188 = icmp eq i32 %rem.i187, 0
  %90 = load i32, ptr %s.i183, align 4
  %add1.i191 = add nsw i32 %90, 1
  %91 = load i32, ptr %s.i183, align 4
  %sub.i189 = add nsw i32 %91, -3
  %storemerge250 = select i1 %cmp.i188, i32 %sub.i189, i32 %add1.i191
  store i32 %storemerge250, ptr %s.i183, align 4
  %92 = load i32, ptr %x.addr.i182, align 4
  %and2.i193 = shl i32 %92, 3
  %mul3.i194 = and i32 %and2.i193, 32
  %add4.i195 = add nsw i32 %storemerge250, %mul3.i194
  store i32 %add4.i195, ptr %s.i183, align 4
  %rem5.i196 = srem i32 %add4.i195, 3
  %cmp6.i197 = icmp eq i32 %rem5.i196, 0
  %93 = load i32, ptr %s.i183, align 4
  %add10.i201 = add nsw i32 %93, 3
  %94 = load i32, ptr %s.i183, align 4
  %sub8.i199 = add nsw i32 %94, -4
  %storemerge251 = select i1 %cmp6.i197, i32 %sub8.i199, i32 %add10.i201
  store i32 %storemerge251, ptr %s.i183, align 4
  %95 = load i32, ptr %x.addr.i182, align 4
  %and12.i203 = and i32 %95, 5
  %mul13.i204 = mul nuw nsw i32 %and12.i203, 9
  %add14.i205 = add nsw i32 %storemerge251, %mul13.i204
  store i32 %add14.i205, ptr %s.i183, align 4
  %96 = and i32 %add14.i205, 3
  %cmp16.i207 = icmp eq i32 %96, 0
  %97 = load i32, ptr %s.i183, align 4
  %add20.i211 = add nsw i32 %97, 5
  %98 = load i32, ptr %s.i183, align 4
  %sub18.i209 = add nsw i32 %98, -5
  %storemerge252 = select i1 %cmp16.i207, i32 %sub18.i209, i32 %add20.i211
  store i32 %storemerge252, ptr %s.i183, align 4
  %99 = load i32, ptr %x.addr.i182, align 4
  %and22.i213 = and i32 %99, 6
  %mul23.i214 = mul nuw nsw i32 %and22.i213, 10
  %add24.i215 = add nsw i32 %storemerge252, %mul23.i214
  store i32 %add24.i215, ptr %s.i183, align 4
  %rem25.i216 = srem i32 %add24.i215, 5
  %cmp26.i217 = icmp eq i32 %rem25.i216, 0
  %100 = load i32, ptr %s.i183, align 4
  %add30.i221 = add nsw i32 %100, 7
  %101 = load i32, ptr %s.i183, align 4
  %sub28.i219 = add nsw i32 %101, -6
  %storemerge253 = select i1 %cmp26.i217, i32 %sub28.i219, i32 %add30.i221
  store i32 %storemerge253, ptr %s.i183, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i182)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i183)
  %102 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %102, %storemerge253
  store i32 %add32, ptr %total, align 4
  %103 = load i32, ptr %x.addr, align 4
  %and33 = and i32 %103, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i223)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i225)
  store i32 %and33, ptr %x.addr.i225, align 4
  %104 = load i32, ptr %x.addr.i225, align 4
  %xor.i229 = xor i32 %104, 16
  store i32 %xor.i229, ptr %retval.i223, align 4
  %105 = load i32, ptr %retval.i223, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i223)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i225)
  %106 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %106, %105
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20matrix_011_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_011_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_011_recursivei(i32 noundef %sub)
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
