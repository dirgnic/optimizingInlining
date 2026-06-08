; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_034.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_034.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_034_step(i32 noundef %x) #0 {
entry:
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
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %x, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %x, 4
  store i32 %add.i, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 3
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_0.exit

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

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_0.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i3)
  store i32 %add2, ptr %x.addr.i1, align 4
  %add.i4 = add nsw i32 %6, 6
  store i32 %add.i4, ptr %y.i2, align 4
  br label %for.cond.i6

for.cond.i6:                                      ; preds = %for.body.i10, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_0.exit
  %storemerge78 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_0.exit ], [ %inc.i11, %for.body.i10 ]
  store i32 %storemerge78, ptr %i.i3, align 4
  %cmp.i5 = icmp slt i32 %storemerge78, 4
  br i1 %cmp.i5, label %for.body.i10, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_1.exit

for.body.i10:                                     ; preds = %for.cond.i6
  %7 = load i32, ptr %i.i3, align 4
  %8 = load i32, ptr %x.addr.i1, align 4
  %and.i7 = and i32 %8, 3
  %add1.i8 = add nsw i32 %7, %and.i7
  %9 = load i32, ptr %y.i2, align 4
  %add2.i9 = add nsw i32 %9, %add1.i8
  store i32 %add2.i9, ptr %y.i2, align 4
  %10 = load i32, ptr %i.i3, align 4
  %inc.i11 = add nsw i32 %10, 1
  br label %for.cond.i6, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_1.exit: ; preds = %for.cond.i6
  %11 = load i32, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i3)
  %12 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %12, %11
  store i32 %add4, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and = and i32 %13, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_1.exit
  %14 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %14, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i14)
  store i32 %add6, ptr %x.addr.i12, align 4
  %add.i15 = add nsw i32 %14, 8
  store i32 %add.i15, ptr %y.i13, align 4
  br label %for.cond.i17

for.cond.i17:                                     ; preds = %for.body.i21, %if.then
  %storemerge84 = phi i32 [ 0, %if.then ], [ %inc.i22, %for.body.i21 ]
  store i32 %storemerge84, ptr %i.i14, align 4
  %cmp.i16 = icmp slt i32 %storemerge84, 2
  br i1 %cmp.i16, label %for.body.i21, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_2.exit

for.body.i21:                                     ; preds = %for.cond.i17
  %15 = load i32, ptr %i.i14, align 4
  %16 = load i32, ptr %x.addr.i12, align 4
  %and.i18 = and i32 %16, 3
  %add1.i19 = add nsw i32 %15, %and.i18
  %17 = load i32, ptr %y.i13, align 4
  %add2.i20 = add nsw i32 %17, %add1.i19
  store i32 %add2.i20, ptr %y.i13, align 4
  %18 = load i32, ptr %i.i14, align 4
  %inc.i22 = add nsw i32 %18, 1
  br label %for.cond.i17, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_2.exit: ; preds = %for.cond.i17
  %19 = load i32, ptr %y.i13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i14)
  %20 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %20, %19
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_2.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_1.exit
  %21 = load i32, ptr %x.addr, align 4
  %add9 = add nsw i32 %21, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i25)
  store i32 %add9, ptr %x.addr.i23, align 4
  %add.i26 = add nsw i32 %21, 10
  store i32 %add.i26, ptr %y.i24, align 4
  br label %for.cond.i28

for.cond.i28:                                     ; preds = %for.body.i32, %if.end
  %storemerge79 = phi i32 [ 0, %if.end ], [ %inc.i33, %for.body.i32 ]
  store i32 %storemerge79, ptr %i.i25, align 4
  %cmp.i27 = icmp slt i32 %storemerge79, 3
  br i1 %cmp.i27, label %for.body.i32, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_3.exit

for.body.i32:                                     ; preds = %for.cond.i28
  %22 = load i32, ptr %i.i25, align 4
  %23 = load i32, ptr %x.addr.i23, align 4
  %and.i29 = and i32 %23, 3
  %add1.i30 = add nsw i32 %22, %and.i29
  %24 = load i32, ptr %y.i24, align 4
  %add2.i31 = add nsw i32 %24, %add1.i30
  store i32 %add2.i31, ptr %y.i24, align 4
  %25 = load i32, ptr %i.i25, align 4
  %inc.i33 = add nsw i32 %25, 1
  br label %for.cond.i28, !llvm.loop !10

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_3.exit: ; preds = %for.cond.i28
  %26 = load i32, ptr %y.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i25)
  %27 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %27, %26
  store i32 %add11, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %add12 = add nsw i32 %28, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i36)
  store i32 %add12, ptr %x.addr.i34, align 4
  %add.i37 = add nsw i32 %28, 12
  store i32 %add.i37, ptr %y.i35, align 4
  br label %for.cond.i39

for.cond.i39:                                     ; preds = %for.body.i43, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_3.exit
  %storemerge80 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_3.exit ], [ %inc.i44, %for.body.i43 ]
  store i32 %storemerge80, ptr %i.i36, align 4
  %cmp.i38 = icmp slt i32 %storemerge80, 4
  br i1 %cmp.i38, label %for.body.i43, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_4.exit

for.body.i43:                                     ; preds = %for.cond.i39
  %29 = load i32, ptr %i.i36, align 4
  %30 = load i32, ptr %x.addr.i34, align 4
  %and.i40 = and i32 %30, 3
  %add1.i41 = add nsw i32 %29, %and.i40
  %31 = load i32, ptr %y.i35, align 4
  %add2.i42 = add nsw i32 %31, %add1.i41
  store i32 %add2.i42, ptr %y.i35, align 4
  %32 = load i32, ptr %i.i36, align 4
  %inc.i44 = add nsw i32 %32, 1
  br label %for.cond.i39, !llvm.loop !11

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_4.exit: ; preds = %for.cond.i39
  %33 = load i32, ptr %y.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i36)
  %34 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %34, %33
  store i32 %add14, ptr %total, align 4
  %35 = load i32, ptr %x.addr, align 4
  %36 = and i32 %35, 1
  %tobool17.not.not = icmp eq i32 %36, 0
  br i1 %tobool17.not.not, label %if.then18, label %if.end22

if.then18:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_4.exit
  %37 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %37, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i46)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i47)
  store i32 %add19, ptr %x.addr.i45, align 4
  %add.i48 = add nsw i32 %37, 14
  store i32 %add.i48, ptr %y.i46, align 4
  br label %for.cond.i50

for.cond.i50:                                     ; preds = %for.body.i54, %if.then18
  %storemerge83 = phi i32 [ 0, %if.then18 ], [ %inc.i55, %for.body.i54 ]
  store i32 %storemerge83, ptr %i.i47, align 4
  %cmp.i49 = icmp slt i32 %storemerge83, 2
  br i1 %cmp.i49, label %for.body.i54, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_5.exit

for.body.i54:                                     ; preds = %for.cond.i50
  %38 = load i32, ptr %i.i47, align 4
  %39 = load i32, ptr %x.addr.i45, align 4
  %and.i51 = and i32 %39, 3
  %add1.i52 = add nsw i32 %38, %and.i51
  %40 = load i32, ptr %y.i46, align 4
  %add2.i53 = add nsw i32 %40, %add1.i52
  store i32 %add2.i53, ptr %y.i46, align 4
  %41 = load i32, ptr %i.i47, align 4
  %inc.i55 = add nsw i32 %41, 1
  br label %for.cond.i50, !llvm.loop !12

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_5.exit: ; preds = %for.cond.i50
  %42 = load i32, ptr %y.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i47)
  %43 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %43, %42
  store i32 %add21, ptr %total, align 4
  br label %if.end22

if.end22:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_5.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_4.exit
  %44 = load i32, ptr %x.addr, align 4
  %add23 = add nsw i32 %44, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i58)
  store i32 %add23, ptr %x.addr.i56, align 4
  %add.i59 = add nsw i32 %44, 16
  store i32 %add.i59, ptr %y.i57, align 4
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %for.body.i65, %if.end22
  %storemerge81 = phi i32 [ 0, %if.end22 ], [ %inc.i66, %for.body.i65 ]
  store i32 %storemerge81, ptr %i.i58, align 4
  %cmp.i60 = icmp slt i32 %storemerge81, 3
  br i1 %cmp.i60, label %for.body.i65, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_6.exit

for.body.i65:                                     ; preds = %for.cond.i61
  %45 = load i32, ptr %i.i58, align 4
  %46 = load i32, ptr %x.addr.i56, align 4
  %and.i62 = and i32 %46, 3
  %add1.i63 = add nsw i32 %45, %and.i62
  %47 = load i32, ptr %y.i57, align 4
  %add2.i64 = add nsw i32 %47, %add1.i63
  store i32 %add2.i64, ptr %y.i57, align 4
  %48 = load i32, ptr %i.i58, align 4
  %inc.i66 = add nsw i32 %48, 1
  br label %for.cond.i61, !llvm.loop !13

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_6.exit: ; preds = %for.cond.i61
  %49 = load i32, ptr %y.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i58)
  %50 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %50, %49
  store i32 %add25, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %51, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i69)
  store i32 %add26, ptr %x.addr.i67, align 4
  %add.i70 = add nsw i32 %51, 18
  store i32 %add.i70, ptr %y.i68, align 4
  br label %for.cond.i72

for.cond.i72:                                     ; preds = %for.body.i76, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_6.exit
  %storemerge82 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_6.exit ], [ %inc.i77, %for.body.i76 ]
  store i32 %storemerge82, ptr %i.i69, align 4
  %cmp.i71 = icmp slt i32 %storemerge82, 4
  br i1 %cmp.i71, label %for.body.i76, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_7.exit

for.body.i76:                                     ; preds = %for.cond.i72
  %52 = load i32, ptr %i.i69, align 4
  %53 = load i32, ptr %x.addr.i67, align 4
  %and.i73 = and i32 %53, 3
  %add1.i74 = add nsw i32 %52, %and.i73
  %54 = load i32, ptr %y.i68, align 4
  %add2.i75 = add nsw i32 %54, %add1.i74
  store i32 %add2.i75, ptr %y.i68, align 4
  %55 = load i32, ptr %i.i69, align 4
  %inc.i77 = add nsw i32 %55, 1
  br label %for.cond.i72, !llvm.loop !14

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_7.exit: ; preds = %for.cond.i72
  %56 = load i32, ptr %y.i68, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i69)
  %57 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %57, %56
  store i32 %add28, ptr %total, align 4
  %58 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %58, 1
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end36, label %if.then32

if.then32:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_7.exit
  %59 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %59, 8
  %call34 = call noundef i32 @_ZL18packet_034_large_ai(i32 noundef %add33)
  %60 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %60, %call34
  store i32 %add35, ptr %total, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_034_7.exit
  %61 = load i32, ptr %x.addr, align 4
  %add37 = add nsw i32 %61, 9
  %call38 = call noundef i32 @_ZL18packet_034_large_bi(i32 noundef %add37)
  %62 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %62, %call38
  store i32 %add39, ptr %total, align 4
  %add40 = add nsw i32 %61, 10
  %call41 = call noundef i32 @_ZL18packet_034_large_ai(i32 noundef %add40)
  %add42 = add nsw i32 %add39, %call41
  store i32 %add42, ptr %total, align 4
  %63 = load i32, ptr %x.addr, align 4
  %64 = and i32 %63, 1
  %tobool45.not.not = icmp eq i32 %64, 0
  br i1 %tobool45.not.not, label %if.then46, label %if.end50

if.then46:                                        ; preds = %if.end36
  %65 = load i32, ptr %x.addr, align 4
  %add47 = add nsw i32 %65, 11
  %call48 = call noundef i32 @_ZL18packet_034_large_bi(i32 noundef %add47)
  %66 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %66, %call48
  store i32 %add49, ptr %total, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end36
  %67 = load i32, ptr %x.addr, align 4
  %and51 = and i32 %67, 3
  %add52 = add nsw i32 %67, 12
  %call53 = call noundef i32 @_ZL26packet_034_branch_variableii(i32 noundef %and51, i32 noundef %add52)
  %68 = load i32, ptr %total, align 4
  %add54 = add nsw i32 %68, %call53
  store i32 %add54, ptr %total, align 4
  %69 = load i32, ptr %x.addr, align 4
  %and55 = and i32 %69, 3
  %add56 = add nsw i32 %69, 13
  %call57 = call noundef i32 @_ZL26packet_034_branch_variableii(i32 noundef %and55, i32 noundef %add56)
  %add58 = add nsw i32 %add54, %call57
  store i32 %add58, ptr %total, align 4
  %and60 = and i32 %69, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %if.end50
  %call63 = call noundef i32 @_ZL20packet_034_recursivei(i32 noundef 2)
  %70 = load i32, ptr %total, align 4
  %add64 = add nsw i32 %70, %call63
  store i32 %add64, ptr %total, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end50
  %call66 = call noundef i32 @_ZL20packet_034_recursivei(i32 noundef 3)
  %71 = load i32, ptr %total, align 4
  %add67 = add nsw i32 %71, %call66
  store i32 %add67, ptr %total, align 4
  ret i32 %add67
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_034_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 8
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %add
  %shl = shl i32 %add1, 1
  %shr = ashr i32 %add1, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %s, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_034_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 6
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
  %sub = add nsw i32 %mul, -2
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
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_034_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_034_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_034_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_034_recursivei(i32 noundef %sub1)
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
