; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_035.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_035.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_035_step(i32 noundef %x) #0 {
entry:
  %retval.i146 = alloca i32, align 4
  %mode.addr.i147 = alloca i32, align 4
  %x.addr.i148 = alloca i32, align 4
  %x.addr.i127 = alloca i32, align 4
  %s.i128 = alloca i32, align 4
  %limit.i129 = alloca i32, align 4
  %i.i130 = alloca i32, align 4
  %x.addr.i114 = alloca i32, align 4
  %s.i115 = alloca i32, align 4
  %i.i116 = alloca i32, align 4
  %retval.i98 = alloca i32, align 4
  %mode.addr.i99 = alloca i32, align 4
  %x.addr.i100 = alloca i32, align 4
  %x.addr.i79 = alloca i32, align 4
  %s.i80 = alloca i32, align 4
  %limit.i81 = alloca i32, align 4
  %i.i82 = alloca i32, align 4
  %x.addr.i66 = alloca i32, align 4
  %s.i67 = alloca i32, align 4
  %i.i68 = alloca i32, align 4
  %retval.i50 = alloca i32, align 4
  %x.addr.i52 = alloca i32, align 4
  %x.addr.i31 = alloca i32, align 4
  %s.i32 = alloca i32, align 4
  %limit.i33 = alloca i32, align 4
  %i.i34 = alloca i32, align 4
  %x.addr.i18 = alloca i32, align 4
  %s.i19 = alloca i32, align 4
  %i.i20 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %x.addr.i11 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i2 = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i3 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 2, ptr %x.addr.i, align 4
  store i32 2, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 4
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %x.addr.i, align 4
  %1 = load i32, ptr %i.i, align 4
  %xor.i = xor i32 %0, %1
  %add.i = add nsw i32 %xor.i, 9
  %2 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %2, %add.i
  %shl.i = shl i32 %add1.i, 1
  %shr.i = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_0.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i3)
  store i32 3, ptr %x.addr.i1, align 4
  store i32 3, ptr %s.i2, align 4
  store i32 6, ptr %limit.i, align 4
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %if.end.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_0.exit
  %storemerge162 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_0.exit ], [ %inc.i10, %if.end.i ]
  store i32 %storemerge162, ptr %i.i3, align 4
  %6 = load i32, ptr %limit.i, align 4
  %cmp.i5 = icmp slt i32 %storemerge162, %6
  br i1 %cmp.i5, label %for.body.i8, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_1.exit

for.body.i8:                                      ; preds = %for.cond.i6
  %7 = load i32, ptr %i.i3, align 4
  %mul.i = mul nsw i32 %7, %7
  %sub.i = add nsw i32 %mul.i, -3
  %8 = load i32, ptr %s.i2, align 4
  %add1.i7 = add nsw i32 %8, %sub.i
  store i32 %add1.i7, ptr %s.i2, align 4
  %and2.i = and i32 %add1.i7, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i8
  %9 = load i32, ptr %i.i3, align 4
  %10 = load i32, ptr %x.addr.i1, align 4
  %add4.i = add nsw i32 %9, %10
  %11 = load i32, ptr %s.i2, align 4
  %xor.i9 = xor i32 %11, %add4.i
  store i32 %xor.i9, ptr %s.i2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i8
  %12 = load i32, ptr %i.i3, align 4
  %inc.i10 = add nsw i32 %12, 1
  br label %for.cond.i6, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_1.exit: ; preds = %for.cond.i6
  %13 = load i32, ptr %s.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i3)
  %14 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %14, %13
  store i32 %add2, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and = and i32 %15, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_1.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i11)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 4, ptr %x.addr.i11, align 4
  %16 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %16, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.then
  %17 = load i32, ptr %x.addr.i11, align 4
  %mul.i16 = mul nsw i32 %17, 5
  store i32 %mul.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_2.exit

if.end3.i:                                        ; preds = %if.then
  %18 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %18, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %19 = load i32, ptr %x.addr.i11, align 4
  %sub.i17 = add nsw i32 %19, -3
  store i32 %sub.i17, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_2.exit

if.end6.i:                                        ; preds = %if.end3.i
  %20 = load i32, ptr %x.addr.i11, align 4
  %21 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %20, %21
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_2.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %22 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i11)
  %23 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %23, %22
  store i32 %add5, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_1.exit
  %call6 = call noundef i32 @_ZL20matrix_035_recursivei(i32 noundef 3)
  %24 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %24, %call6
  store i32 %add7, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i20)
  store i32 6, ptr %x.addr.i18, align 4
  store i32 6, ptr %s.i19, align 4
  br label %for.cond.i22

for.cond.i22:                                     ; preds = %for.body.i29, %if.end
  %storemerge163 = phi i32 [ 0, %if.end ], [ %inc.i30, %for.body.i29 ]
  store i32 %storemerge163, ptr %i.i20, align 4
  %cmp.i21 = icmp slt i32 %storemerge163, 4
  br i1 %cmp.i21, label %for.body.i29, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_4.exit

for.body.i29:                                     ; preds = %for.cond.i22
  %25 = load i32, ptr %x.addr.i18, align 4
  %26 = load i32, ptr %i.i20, align 4
  %xor.i23 = xor i32 %25, %26
  %add.i24 = add nsw i32 %xor.i23, 9
  %27 = load i32, ptr %s.i19, align 4
  %add1.i25 = add nsw i32 %27, %add.i24
  %shl.i26 = shl i32 %add1.i25, 1
  %shr.i27 = ashr i32 %add1.i25, 3
  %xor2.i28 = xor i32 %shl.i26, %shr.i27
  store i32 %xor2.i28, ptr %s.i19, align 4
  %28 = load i32, ptr %i.i20, align 4
  %inc.i30 = add nsw i32 %28, 1
  br label %for.cond.i22, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_4.exit: ; preds = %for.cond.i22
  %29 = load i32, ptr %s.i19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i20)
  %30 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %30, %29
  store i32 %add9, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %32 = and i32 %31, 1
  %tobool12.not.not = icmp eq i32 %32, 0
  br i1 %tobool12.not.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_4.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i34)
  store i32 7, ptr %x.addr.i31, align 4
  store i32 7, ptr %s.i32, align 4
  store i32 6, ptr %limit.i33, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %if.end.i48, %if.then13
  %storemerge168 = phi i32 [ 0, %if.then13 ], [ %inc.i49, %if.end.i48 ]
  store i32 %storemerge168, ptr %i.i34, align 4
  %33 = load i32, ptr %limit.i33, align 4
  %cmp.i37 = icmp slt i32 %storemerge168, %33
  br i1 %cmp.i37, label %for.body.i44, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_5.exit

for.body.i44:                                     ; preds = %for.cond.i38
  %34 = load i32, ptr %i.i34, align 4
  %mul.i39 = mul nsw i32 %34, %34
  %sub.i40 = add nsw i32 %mul.i39, -3
  %35 = load i32, ptr %s.i32, align 4
  %add1.i41 = add nsw i32 %35, %sub.i40
  store i32 %add1.i41, ptr %s.i32, align 4
  %and2.i42 = and i32 %add1.i41, 1
  %cmp3.i43 = icmp eq i32 %and2.i42, 0
  br i1 %cmp3.i43, label %if.then.i47, label %if.end.i48

if.then.i47:                                      ; preds = %for.body.i44
  %36 = load i32, ptr %i.i34, align 4
  %37 = load i32, ptr %x.addr.i31, align 4
  %add4.i45 = add nsw i32 %36, %37
  %38 = load i32, ptr %s.i32, align 4
  %xor.i46 = xor i32 %38, %add4.i45
  store i32 %xor.i46, ptr %s.i32, align 4
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i47, %for.body.i44
  %39 = load i32, ptr %i.i34, align 4
  %inc.i49 = add nsw i32 %39, 1
  br label %for.cond.i38, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_5.exit: ; preds = %for.cond.i38
  %40 = load i32, ptr %s.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i34)
  %41 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %41, %40
  store i32 %add15, ptr %total, align 4
  br label %if.end16

if.end16:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_5.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_4.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i52)
  store i32 8, ptr %x.addr.i52, align 4
  %42 = load i32, ptr %x.addr.i52, align 4
  %add.i54 = add nsw i32 %42, 9
  store i32 %add.i54, ptr %retval.i50, align 4
  %43 = load i32, ptr %retval.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i52)
  %44 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %44, %43
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_035_recursivei(i32 noundef 3)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %45, 1
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i66)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i68)
  store i32 10, ptr %x.addr.i66, align 4
  store i32 10, ptr %s.i67, align 4
  br label %for.cond.i70

for.cond.i70:                                     ; preds = %for.body.i77, %if.then24
  %storemerge167 = phi i32 [ 0, %if.then24 ], [ %inc.i78, %for.body.i77 ]
  store i32 %storemerge167, ptr %i.i68, align 4
  %cmp.i69 = icmp slt i32 %storemerge167, 4
  br i1 %cmp.i69, label %for.body.i77, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_8.exit

for.body.i77:                                     ; preds = %for.cond.i70
  %46 = load i32, ptr %x.addr.i66, align 4
  %47 = load i32, ptr %i.i68, align 4
  %xor.i71 = xor i32 %46, %47
  %add.i72 = add nsw i32 %xor.i71, 9
  %48 = load i32, ptr %s.i67, align 4
  %add1.i73 = add nsw i32 %48, %add.i72
  %shl.i74 = shl i32 %add1.i73, 1
  %shr.i75 = ashr i32 %add1.i73, 3
  %xor2.i76 = xor i32 %shl.i74, %shr.i75
  store i32 %xor2.i76, ptr %s.i67, align 4
  %49 = load i32, ptr %i.i68, align 4
  %inc.i78 = add nsw i32 %49, 1
  br label %for.cond.i70, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_8.exit: ; preds = %for.cond.i70
  %50 = load i32, ptr %s.i67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i66)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i68)
  %51 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %51, %50
  store i32 %add26, ptr %total, align 4
  br label %if.end27

if.end27:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_8.exit, %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i79)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i82)
  store i32 0, ptr %x.addr.i79, align 4
  store i32 0, ptr %s.i80, align 4
  store i32 3, ptr %limit.i81, align 4
  br label %for.cond.i86

for.cond.i86:                                     ; preds = %if.end.i96, %if.end27
  %storemerge164 = phi i32 [ 0, %if.end27 ], [ %inc.i97, %if.end.i96 ]
  store i32 %storemerge164, ptr %i.i82, align 4
  %52 = load i32, ptr %limit.i81, align 4
  %cmp.i85 = icmp slt i32 %storemerge164, %52
  br i1 %cmp.i85, label %for.body.i92, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_9.exit

for.body.i92:                                     ; preds = %for.cond.i86
  %53 = load i32, ptr %i.i82, align 4
  %mul.i87 = mul nsw i32 %53, %53
  %sub.i88 = add nsw i32 %mul.i87, -3
  %54 = load i32, ptr %s.i80, align 4
  %add1.i89 = add nsw i32 %54, %sub.i88
  store i32 %add1.i89, ptr %s.i80, align 4
  %and2.i90 = and i32 %add1.i89, 1
  %cmp3.i91 = icmp eq i32 %and2.i90, 0
  br i1 %cmp3.i91, label %if.then.i95, label %if.end.i96

if.then.i95:                                      ; preds = %for.body.i92
  %55 = load i32, ptr %i.i82, align 4
  %56 = load i32, ptr %x.addr.i79, align 4
  %add4.i93 = add nsw i32 %55, %56
  %57 = load i32, ptr %s.i80, align 4
  %xor.i94 = xor i32 %57, %add4.i93
  store i32 %xor.i94, ptr %s.i80, align 4
  br label %if.end.i96

if.end.i96:                                       ; preds = %if.then.i95, %for.body.i92
  %58 = load i32, ptr %i.i82, align 4
  %inc.i97 = add nsw i32 %58, 1
  br label %for.cond.i86, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_9.exit: ; preds = %for.cond.i86
  %59 = load i32, ptr %s.i80, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i79)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i81)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i82)
  %60 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %60, %59
  store i32 %add29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i99)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i100)
  store i32 1, ptr %mode.addr.i99, align 4
  store i32 1, ptr %x.addr.i100, align 4
  %61 = load i32, ptr %mode.addr.i99, align 4
  %cmp1.i104 = icmp eq i32 %61, 1
  br i1 %cmp1.i104, label %if.then2.i107, label %if.end3.i109

if.then2.i107:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_9.exit
  %62 = load i32, ptr %x.addr.i100, align 4
  %mul.i106 = mul nsw i32 %62, 5
  store i32 %mul.i106, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_10.exit

if.end3.i109:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_9.exit
  %63 = load i32, ptr %mode.addr.i99, align 4
  %cmp4.i108 = icmp eq i32 %63, 2
  br i1 %cmp4.i108, label %if.then5.i111, label %if.end6.i113

if.then5.i111:                                    ; preds = %if.end3.i109
  %64 = load i32, ptr %x.addr.i100, align 4
  %sub.i110 = add nsw i32 %64, -3
  store i32 %sub.i110, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_10.exit

if.end6.i113:                                     ; preds = %if.end3.i109
  %65 = load i32, ptr %x.addr.i100, align 4
  %66 = load i32, ptr %mode.addr.i99, align 4
  %add7.i112 = add nsw i32 %65, %66
  store i32 %add7.i112, ptr %retval.i98, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_10.exit: ; preds = %if.then2.i107, %if.then5.i111, %if.end6.i113
  %67 = load i32, ptr %retval.i98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i99)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i100)
  %68 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %68, %67
  store i32 %add31, ptr %total, align 4
  %69 = load i32, ptr %x.addr, align 4
  %70 = and i32 %69, 1
  %tobool34.not.not = icmp eq i32 %70, 0
  br i1 %tobool34.not.not, label %if.then35, label %if.end38

if.then35:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_10.exit
  %call36 = call noundef i32 @_ZL20matrix_035_recursivei(i32 noundef 3)
  %71 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %71, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_10.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i116)
  store i32 3, ptr %x.addr.i114, align 4
  store i32 3, ptr %s.i115, align 4
  br label %for.cond.i118

for.cond.i118:                                    ; preds = %for.body.i125, %if.end38
  %storemerge165 = phi i32 [ 0, %if.end38 ], [ %inc.i126, %for.body.i125 ]
  store i32 %storemerge165, ptr %i.i116, align 4
  %cmp.i117 = icmp slt i32 %storemerge165, 4
  br i1 %cmp.i117, label %for.body.i125, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_12.exit

for.body.i125:                                    ; preds = %for.cond.i118
  %72 = load i32, ptr %x.addr.i114, align 4
  %73 = load i32, ptr %i.i116, align 4
  %xor.i119 = xor i32 %72, %73
  %add.i120 = add nsw i32 %xor.i119, 9
  %74 = load i32, ptr %s.i115, align 4
  %add1.i121 = add nsw i32 %74, %add.i120
  %shl.i122 = shl i32 %add1.i121, 1
  %shr.i123 = ashr i32 %add1.i121, 3
  %xor2.i124 = xor i32 %shl.i122, %shr.i123
  store i32 %xor2.i124, ptr %s.i115, align 4
  %75 = load i32, ptr %i.i116, align 4
  %inc.i126 = add nsw i32 %75, 1
  br label %for.cond.i118, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_12.exit: ; preds = %for.cond.i118
  %76 = load i32, ptr %s.i115, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i116)
  %77 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %77, %76
  store i32 %add40, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i127)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i129)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i130)
  store i32 4, ptr %x.addr.i127, align 4
  store i32 4, ptr %s.i128, align 4
  store i32 3, ptr %limit.i129, align 4
  br label %for.cond.i134

for.cond.i134:                                    ; preds = %if.end.i144, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_12.exit
  %storemerge166 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_12.exit ], [ %inc.i145, %if.end.i144 ]
  store i32 %storemerge166, ptr %i.i130, align 4
  %78 = load i32, ptr %limit.i129, align 4
  %cmp.i133 = icmp slt i32 %storemerge166, %78
  br i1 %cmp.i133, label %for.body.i140, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_13.exit

for.body.i140:                                    ; preds = %for.cond.i134
  %79 = load i32, ptr %i.i130, align 4
  %mul.i135 = mul nsw i32 %79, %79
  %sub.i136 = add nsw i32 %mul.i135, -3
  %80 = load i32, ptr %s.i128, align 4
  %add1.i137 = add nsw i32 %80, %sub.i136
  store i32 %add1.i137, ptr %s.i128, align 4
  %and2.i138 = and i32 %add1.i137, 1
  %cmp3.i139 = icmp eq i32 %and2.i138, 0
  br i1 %cmp3.i139, label %if.then.i143, label %if.end.i144

if.then.i143:                                     ; preds = %for.body.i140
  %81 = load i32, ptr %i.i130, align 4
  %82 = load i32, ptr %x.addr.i127, align 4
  %add4.i141 = add nsw i32 %81, %82
  %83 = load i32, ptr %s.i128, align 4
  %xor.i142 = xor i32 %83, %add4.i141
  store i32 %xor.i142, ptr %s.i128, align 4
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.then.i143, %for.body.i140
  %84 = load i32, ptr %i.i130, align 4
  %inc.i145 = add nsw i32 %84, 1
  br label %for.cond.i134, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_13.exit: ; preds = %for.cond.i134
  %85 = load i32, ptr %s.i128, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i127)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i128)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i129)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i130)
  %86 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %86, %85
  store i32 %add42, ptr %total, align 4
  %87 = load i32, ptr %x.addr, align 4
  %and44 = and i32 %87, 1
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_13.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i146)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i147)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i148)
  store i32 2, ptr %mode.addr.i147, align 4
  store i32 5, ptr %x.addr.i148, align 4
  %88 = load i32, ptr %mode.addr.i147, align 4
  %cmp1.i152 = icmp eq i32 %88, 1
  br i1 %cmp1.i152, label %if.then2.i155, label %if.end3.i157

if.then2.i155:                                    ; preds = %if.then46
  %89 = load i32, ptr %x.addr.i148, align 4
  %mul.i154 = mul nsw i32 %89, 5
  store i32 %mul.i154, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_14.exit

if.end3.i157:                                     ; preds = %if.then46
  %90 = load i32, ptr %mode.addr.i147, align 4
  %cmp4.i156 = icmp eq i32 %90, 2
  br i1 %cmp4.i156, label %if.then5.i159, label %if.end6.i161

if.then5.i159:                                    ; preds = %if.end3.i157
  %91 = load i32, ptr %x.addr.i148, align 4
  %sub.i158 = add nsw i32 %91, -3
  store i32 %sub.i158, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_14.exit

if.end6.i161:                                     ; preds = %if.end3.i157
  %92 = load i32, ptr %x.addr.i148, align 4
  %93 = load i32, ptr %mode.addr.i147, align 4
  %add7.i160 = add nsw i32 %92, %93
  store i32 %add7.i160, ptr %retval.i146, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_14.exit: ; preds = %if.then2.i155, %if.then5.i159, %if.end6.i161
  %94 = load i32, ptr %retval.i146, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i146)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i147)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i148)
  %95 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %95, %94
  store i32 %add48, ptr %total, align 4
  br label %if.end49

if.end49:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_14.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_035_13.exit
  %call50 = call noundef i32 @_ZL20matrix_035_recursivei(i32 noundef 3)
  %96 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %96, %call50
  store i32 %add51, ptr %total, align 4
  ret i32 %add51
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_035_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_035_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_035_recursivei(i32 noundef %sub1)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
