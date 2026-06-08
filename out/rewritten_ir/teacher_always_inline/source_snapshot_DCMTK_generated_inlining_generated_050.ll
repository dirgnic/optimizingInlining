; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_050.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_050.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_050_kernel(i32 noundef %x) #0 {
entry:
  %retval.i136 = alloca i32, align 4
  %mode.addr.i137 = alloca i32, align 4
  %x.addr.i138 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i129 = alloca i32, align 4
  %x.addr.i110 = alloca i32, align 4
  %s.i111 = alloca i32, align 4
  %limit.i112 = alloca i32, align 4
  %i.i113 = alloca i32, align 4
  %x.addr.i97 = alloca i32, align 4
  %s.i98 = alloca i32, align 4
  %i.i99 = alloca i32, align 4
  %x.addr.i86 = alloca i32, align 4
  %s.i87 = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i88 = alloca i32, align 4
  %x.addr.i78 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i79 = alloca i32, align 4
  %x.addr.i67 = alloca i32, align 4
  %y.i68 = alloca i32, align 4
  %i.i69 = alloca i32, align 4
  %x.addr.i56 = alloca i32, align 4
  %y.i57 = alloca i32, align 4
  %i.i58 = alloca i32, align 4
  %x.addr.i45 = alloca i32, align 4
  %y.i46 = alloca i32, align 4
  %i.i47 = alloca i32, align 4
  %x.addr.i34 = alloca i32, align 4
  %y.i35 = alloca i32, align 4
  %i.i36 = alloca i32, align 4
  %x.addr.i23 = alloca i32, align 4
  %y.i24 = alloca i32, align 4
  %i.i25 = alloca i32, align 4
  %x.addr.i12 = alloca i32, align 4
  %y.i13 = alloca i32, align 4
  %i.i14 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %i.i3 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 6, ptr %x.addr.i, align 4
  store i32 15, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 4
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %i.i, align 4
  %1 = load i32, ptr %x.addr.i, align 4
  %and.i = and i32 %1, 3
  %add1.i = add nsw i32 %0, %and.i
  %2 = load i32, ptr %y.i, align 4
  %add2.i = add nsw i32 %2, %add1.i
  store i32 %add2.i, ptr %y.i, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_0.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i3)
  store i32 7, ptr %x.addr.i1, align 4
  store i32 17, ptr %y.i2, align 4
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %for.body.i10, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_0.exit
  %storemerge152 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_0.exit ], [ %inc.i11, %for.body.i10 ]
  store i32 %storemerge152, ptr %i.i3, align 4
  %cmp.i5 = icmp slt i32 %storemerge152, 2
  br i1 %cmp.i5, label %for.body.i10, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_1.exit

for.body.i10:                                     ; preds = %for.cond.i6
  %6 = load i32, ptr %i.i3, align 4
  %7 = load i32, ptr %x.addr.i1, align 4
  %and.i7 = and i32 %7, 3
  %add1.i8 = add nsw i32 %6, %and.i7
  %8 = load i32, ptr %y.i2, align 4
  %add2.i9 = add nsw i32 %8, %add1.i8
  store i32 %add2.i9, ptr %y.i2, align 4
  %9 = load i32, ptr %i.i3, align 4
  %inc.i11 = add nsw i32 %9, 1
  br label %for.cond.i6, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_1.exit: ; preds = %for.cond.i6
  %10 = load i32, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i3)
  %11 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %11, %10
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i14)
  store i32 8, ptr %x.addr.i12, align 4
  store i32 19, ptr %y.i13, align 4
  br label %for.cond.i17

for.cond.i17:                                     ; preds = %for.body.i21, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_1.exit
  %storemerge153 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_1.exit ], [ %inc.i22, %for.body.i21 ]
  store i32 %storemerge153, ptr %i.i14, align 4
  %cmp.i16 = icmp slt i32 %storemerge153, 3
  br i1 %cmp.i16, label %for.body.i21, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_2.exit

for.body.i21:                                     ; preds = %for.cond.i17
  %12 = load i32, ptr %i.i14, align 4
  %13 = load i32, ptr %x.addr.i12, align 4
  %and.i18 = and i32 %13, 3
  %add1.i19 = add nsw i32 %12, %and.i18
  %14 = load i32, ptr %y.i13, align 4
  %add2.i20 = add nsw i32 %14, %add1.i19
  store i32 %add2.i20, ptr %y.i13, align 4
  %15 = load i32, ptr %i.i14, align 4
  %inc.i22 = add nsw i32 %15, 1
  br label %for.cond.i17, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_2.exit: ; preds = %for.cond.i17
  %16 = load i32, ptr %y.i13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i14)
  %17 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %17, %16
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i25)
  store i32 9, ptr %x.addr.i23, align 4
  store i32 21, ptr %y.i24, align 4
  br label %for.cond.i28

for.cond.i28:                                     ; preds = %for.body.i32, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_2.exit
  %storemerge154 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_2.exit ], [ %inc.i33, %for.body.i32 ]
  store i32 %storemerge154, ptr %i.i25, align 4
  %cmp.i27 = icmp slt i32 %storemerge154, 4
  br i1 %cmp.i27, label %for.body.i32, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_3.exit

for.body.i32:                                     ; preds = %for.cond.i28
  %18 = load i32, ptr %i.i25, align 4
  %19 = load i32, ptr %x.addr.i23, align 4
  %and.i29 = and i32 %19, 3
  %add1.i30 = add nsw i32 %18, %and.i29
  %20 = load i32, ptr %y.i24, align 4
  %add2.i31 = add nsw i32 %20, %add1.i30
  store i32 %add2.i31, ptr %y.i24, align 4
  %21 = load i32, ptr %i.i25, align 4
  %inc.i33 = add nsw i32 %21, 1
  br label %for.cond.i28, !llvm.loop !10

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_3.exit: ; preds = %for.cond.i28
  %22 = load i32, ptr %y.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i25)
  %23 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %23, %22
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i36)
  store i32 10, ptr %x.addr.i34, align 4
  store i32 23, ptr %y.i35, align 4
  br label %for.cond.i39

for.cond.i39:                                     ; preds = %for.body.i43, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_3.exit
  %storemerge155 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_3.exit ], [ %inc.i44, %for.body.i43 ]
  store i32 %storemerge155, ptr %i.i36, align 4
  %cmp.i38 = icmp slt i32 %storemerge155, 2
  br i1 %cmp.i38, label %for.body.i43, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_4.exit

for.body.i43:                                     ; preds = %for.cond.i39
  %24 = load i32, ptr %i.i36, align 4
  %25 = load i32, ptr %x.addr.i34, align 4
  %and.i40 = and i32 %25, 3
  %add1.i41 = add nsw i32 %24, %and.i40
  %26 = load i32, ptr %y.i35, align 4
  %add2.i42 = add nsw i32 %26, %add1.i41
  store i32 %add2.i42, ptr %y.i35, align 4
  %27 = load i32, ptr %i.i36, align 4
  %inc.i44 = add nsw i32 %27, 1
  br label %for.cond.i39, !llvm.loop !11

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_4.exit: ; preds = %for.cond.i39
  %28 = load i32, ptr %y.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i36)
  %and = and i32 %28, 255
  %29 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %29, %and
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i46)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i47)
  store i32 0, ptr %x.addr.i45, align 4
  store i32 3, ptr %y.i46, align 4
  br label %for.cond.i50

for.cond.i50:                                     ; preds = %for.body.i54, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_4.exit
  %storemerge156 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_4.exit ], [ %inc.i55, %for.body.i54 ]
  store i32 %storemerge156, ptr %i.i47, align 4
  %cmp.i49 = icmp slt i32 %storemerge156, 3
  br i1 %cmp.i49, label %for.body.i54, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_5.exit

for.body.i54:                                     ; preds = %for.cond.i50
  %30 = load i32, ptr %i.i47, align 4
  %31 = load i32, ptr %x.addr.i45, align 4
  %and.i51 = and i32 %31, 3
  %add1.i52 = add nsw i32 %30, %and.i51
  %32 = load i32, ptr %y.i46, align 4
  %add2.i53 = add nsw i32 %32, %add1.i52
  store i32 %add2.i53, ptr %y.i46, align 4
  %33 = load i32, ptr %i.i47, align 4
  %inc.i55 = add nsw i32 %33, 1
  br label %for.cond.i50, !llvm.loop !12

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_5.exit: ; preds = %for.cond.i50
  %34 = load i32, ptr %y.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i47)
  %35 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %35, %34
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i58)
  store i32 1, ptr %x.addr.i56, align 4
  store i32 5, ptr %y.i57, align 4
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %for.body.i65, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_5.exit
  %storemerge157 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_5.exit ], [ %inc.i66, %for.body.i65 ]
  store i32 %storemerge157, ptr %i.i58, align 4
  %cmp.i60 = icmp slt i32 %storemerge157, 4
  br i1 %cmp.i60, label %for.body.i65, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_6.exit

for.body.i65:                                     ; preds = %for.cond.i61
  %36 = load i32, ptr %i.i58, align 4
  %37 = load i32, ptr %x.addr.i56, align 4
  %and.i62 = and i32 %37, 3
  %add1.i63 = add nsw i32 %36, %and.i62
  %38 = load i32, ptr %y.i57, align 4
  %add2.i64 = add nsw i32 %38, %add1.i63
  store i32 %add2.i64, ptr %y.i57, align 4
  %39 = load i32, ptr %i.i58, align 4
  %inc.i66 = add nsw i32 %39, 1
  br label %for.cond.i61, !llvm.loop !13

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_6.exit: ; preds = %for.cond.i61
  %40 = load i32, ptr %y.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i58)
  %41 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %41, %40
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i69)
  store i32 2, ptr %x.addr.i67, align 4
  store i32 7, ptr %y.i68, align 4
  br label %for.cond.i72

for.cond.i72:                                     ; preds = %for.body.i76, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_6.exit
  %storemerge158 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_6.exit ], [ %inc.i77, %for.body.i76 ]
  store i32 %storemerge158, ptr %i.i69, align 4
  %cmp.i71 = icmp slt i32 %storemerge158, 2
  br i1 %cmp.i71, label %for.body.i76, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_7.exit

for.body.i76:                                     ; preds = %for.cond.i72
  %42 = load i32, ptr %i.i69, align 4
  %43 = load i32, ptr %x.addr.i67, align 4
  %and.i73 = and i32 %43, 3
  %add1.i74 = add nsw i32 %42, %and.i73
  %44 = load i32, ptr %y.i68, align 4
  %add2.i75 = add nsw i32 %44, %add1.i74
  store i32 %add2.i75, ptr %y.i68, align 4
  %45 = load i32, ptr %i.i69, align 4
  %inc.i77 = add nsw i32 %45, 1
  br label %for.cond.i72, !llvm.loop !14

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_7.exit: ; preds = %for.cond.i72
  %46 = load i32, ptr %y.i68, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i69)
  %47 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %47, %46
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i79)
  store i32 3, ptr %x.addr.i78, align 4
  store i32 3, ptr %s.i, align 4
  br label %for.cond.i81

for.cond.i81:                                     ; preds = %for.body.i84, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_7.exit
  %storemerge159 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_7.exit ], [ %inc.i85, %for.body.i84 ]
  store i32 %storemerge159, ptr %i.i79, align 4
  %cmp.i80 = icmp slt i32 %storemerge159, 4
  br i1 %cmp.i80, label %for.body.i84, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_8.exit

for.body.i84:                                     ; preds = %for.cond.i81
  %48 = load i32, ptr %x.addr.i78, align 4
  %49 = load i32, ptr %i.i79, align 4
  %xor.i = xor i32 %48, %49
  %add.i82 = add nsw i32 %xor.i, 11
  %50 = load i32, ptr %s.i, align 4
  %add1.i83 = add nsw i32 %50, %add.i82
  %shl.i = shl i32 %add1.i83, 1
  %shr.i = ashr i32 %add1.i83, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %51 = load i32, ptr %i.i79, align 4
  %inc.i85 = add nsw i32 %51, 1
  br label %for.cond.i81, !llvm.loop !15

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_8.exit: ; preds = %for.cond.i81
  %52 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i79)
  %53 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %53, %52
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i86)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i87)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i88)
  store i32 4, ptr %x.addr.i86, align 4
  store i32 4, ptr %s.i87, align 4
  store i32 6, ptr %limit.i, align 4
  br label %for.cond.i92

for.cond.i92:                                     ; preds = %if.end.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_8.exit
  %storemerge160 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_8.exit ], [ %inc.i96, %if.end.i ]
  store i32 %storemerge160, ptr %i.i88, align 4
  %54 = load i32, ptr %limit.i, align 4
  %cmp.i91 = icmp slt i32 %storemerge160, %54
  br i1 %cmp.i91, label %for.body.i94, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_9.exit

for.body.i94:                                     ; preds = %for.cond.i92
  %55 = load i32, ptr %i.i88, align 4
  %mul.i = mul nsw i32 %55, %55
  %sub.i = add nsw i32 %mul.i, -4
  %56 = load i32, ptr %s.i87, align 4
  %add1.i93 = add nsw i32 %56, %sub.i
  store i32 %add1.i93, ptr %s.i87, align 4
  %and2.i = and i32 %add1.i93, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i94
  %57 = load i32, ptr %i.i88, align 4
  %58 = load i32, ptr %x.addr.i86, align 4
  %add4.i = add nsw i32 %57, %58
  %59 = load i32, ptr %s.i87, align 4
  %xor.i95 = xor i32 %59, %add4.i
  store i32 %xor.i95, ptr %s.i87, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i94
  %60 = load i32, ptr %i.i88, align 4
  %inc.i96 = add nsw i32 %60, 1
  br label %for.cond.i92, !llvm.loop !16

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_9.exit: ; preds = %for.cond.i92
  %61 = load i32, ptr %s.i87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i86)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i87)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i88)
  %and18 = and i32 %61, 255
  %62 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %62, %and18
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i97)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i99)
  store i32 5, ptr %x.addr.i97, align 4
  store i32 5, ptr %s.i98, align 4
  br label %for.cond.i101

for.cond.i101:                                    ; preds = %for.body.i108, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_9.exit
  %storemerge161 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_9.exit ], [ %inc.i109, %for.body.i108 ]
  store i32 %storemerge161, ptr %i.i99, align 4
  %cmp.i100 = icmp slt i32 %storemerge161, 4
  br i1 %cmp.i100, label %for.body.i108, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_10.exit

for.body.i108:                                    ; preds = %for.cond.i101
  %63 = load i32, ptr %x.addr.i97, align 4
  %64 = load i32, ptr %i.i99, align 4
  %xor.i102 = xor i32 %63, %64
  %add.i103 = add nsw i32 %xor.i102, 11
  %65 = load i32, ptr %s.i98, align 4
  %add1.i104 = add nsw i32 %65, %add.i103
  %shl.i105 = shl i32 %add1.i104, 1
  %shr.i106 = ashr i32 %add1.i104, 3
  %xor2.i107 = xor i32 %shl.i105, %shr.i106
  store i32 %xor2.i107, ptr %s.i98, align 4
  %66 = load i32, ptr %i.i99, align 4
  %inc.i109 = add nsw i32 %66, 1
  br label %for.cond.i101, !llvm.loop !15

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_10.exit: ; preds = %for.cond.i101
  %67 = load i32, ptr %s.i98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i97)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i99)
  %68 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %68, %67
  store i32 %add21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i110)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i111)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i113)
  store i32 6, ptr %x.addr.i110, align 4
  store i32 6, ptr %s.i111, align 4
  store i32 8, ptr %limit.i112, align 4
  br label %for.cond.i117

for.cond.i117:                                    ; preds = %if.end.i127, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_10.exit
  %storemerge162 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_10.exit ], [ %inc.i128, %if.end.i127 ]
  store i32 %storemerge162, ptr %i.i113, align 4
  %69 = load i32, ptr %limit.i112, align 4
  %cmp.i116 = icmp slt i32 %storemerge162, %69
  br i1 %cmp.i116, label %for.body.i123, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_11.exit

for.body.i123:                                    ; preds = %for.cond.i117
  %70 = load i32, ptr %i.i113, align 4
  %mul.i118 = mul nsw i32 %70, %70
  %sub.i119 = add nsw i32 %mul.i118, -4
  %71 = load i32, ptr %s.i111, align 4
  %add1.i120 = add nsw i32 %71, %sub.i119
  store i32 %add1.i120, ptr %s.i111, align 4
  %and2.i121 = and i32 %add1.i120, 1
  %cmp3.i122 = icmp eq i32 %and2.i121, 0
  br i1 %cmp3.i122, label %if.then.i126, label %if.end.i127

if.then.i126:                                     ; preds = %for.body.i123
  %72 = load i32, ptr %i.i113, align 4
  %73 = load i32, ptr %x.addr.i110, align 4
  %add4.i124 = add nsw i32 %72, %73
  %74 = load i32, ptr %s.i111, align 4
  %xor.i125 = xor i32 %74, %add4.i124
  store i32 %xor.i125, ptr %s.i111, align 4
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.then.i126, %for.body.i123
  %75 = load i32, ptr %i.i113, align 4
  %inc.i128 = add nsw i32 %75, 1
  br label %for.cond.i117, !llvm.loop !16

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_11.exit: ; preds = %for.cond.i117
  %76 = load i32, ptr %s.i111, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i110)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i111)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i112)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i113)
  %77 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %77, %76
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i129)
  store i32 7, ptr %x.addr.i129, align 4
  %78 = load i32, ptr %x.addr.i129, align 4
  %add.i131 = add nsw i32 %78, 6
  store i32 %add.i131, ptr %retval.i, align 4
  %79 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i129)
  %80 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %80, %79
  store i32 %add25, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i137)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i138)
  store i32 1, ptr %mode.addr.i137, align 4
  store i32 8, ptr %x.addr.i138, align 4
  %81 = load i32, ptr %mode.addr.i137, align 4
  %cmp1.i142 = icmp eq i32 %81, 1
  br i1 %cmp1.i142, label %if.then2.i145, label %if.end3.i147

if.then2.i145:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_11.exit
  %82 = load i32, ptr %x.addr.i138, align 4
  %mul.i144 = shl nsw i32 %82, 2
  store i32 %mul.i144, ptr %retval.i136, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_13.exit

if.end3.i147:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_11.exit
  %83 = load i32, ptr %mode.addr.i137, align 4
  %cmp4.i146 = icmp eq i32 %83, 2
  br i1 %cmp4.i146, label %if.then5.i149, label %if.end6.i151

if.then5.i149:                                    ; preds = %if.end3.i147
  %84 = load i32, ptr %x.addr.i138, align 4
  %sub.i148 = add nsw i32 %84, -3
  store i32 %sub.i148, ptr %retval.i136, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_13.exit

if.end6.i151:                                     ; preds = %if.end3.i147
  %85 = load i32, ptr %x.addr.i138, align 4
  %86 = load i32, ptr %mode.addr.i137, align 4
  %add7.i150 = add nsw i32 %85, %86
  store i32 %add7.i150, ptr %retval.i136, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_050_13.exit: ; preds = %if.then2.i145, %if.then5.i149, %if.end6.i151
  %87 = load i32, ptr %retval.i136, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i136)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i137)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i138)
  %88 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %88, %87
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL20packet_050_recursivei(i32 noundef 2)
  %and29 = and i32 %call28, 255
  %add30 = add nsw i32 %add27, %and29
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL20packet_050_recursivei(i32 noundef 3)
  %add32 = add nsw i32 %add30, %call31
  store i32 %add32, ptr %total, align 4
  ret i32 %add32
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_050_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_050_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_050_recursivei(i32 noundef %sub1)
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
