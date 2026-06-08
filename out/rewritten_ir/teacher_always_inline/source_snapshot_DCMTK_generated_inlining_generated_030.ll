; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_030.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_030.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_030_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i135 = alloca i32, align 4
  %out.i137 = alloca i32, align 4
  %mode.addr.i123 = alloca i32, align 4
  %out.i125 = alloca i32, align 4
  %mode.addr.i111 = alloca i32, align 4
  %out.i113 = alloca i32, align 4
  %mode.addr.i65 = alloca i32, align 4
  %out.i67 = alloca i32, align 4
  %x.addr.i52 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %out.i28 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 4, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 14
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 7
  %add.i2 = shl nuw nsw i32 %and, 2
  %sub.i = add nuw nsw i32 %add.i2, 43
  %xor.i4 = xor i32 %sub.i, %and
  %add2 = add nsw i32 %add, %xor.i4
  store i32 %add2, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %5, 7
  %add.i7 = shl nuw nsw i32 %and3, 2
  %sub.i9 = add nuw nsw i32 %add.i7, 46
  %xor.i11 = xor i32 %sub.i9, %and3
  %add5 = add nsw i32 %add2, %xor.i11
  %xor = xor i32 %add5, 38
  store i32 %xor, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %6, 7
  %add.i21 = shl nuw nsw i32 %and7, 2
  %sub.i23 = add nuw nsw i32 %add.i21, 8
  %xor.i25 = xor i32 %sub.i23, %and7
  %add9 = add nsw i32 %xor, %xor.i25
  store i32 %add9, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %7, 3
  %and11 = and i32 %7, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i28)
  store i32 %and10, ptr %mode.addr.i26, align 4
  store i32 %and11, ptr %out.i28, align 4
  %and.i29 = and i32 %7, 1
  %tobool.i30.not = icmp eq i32 %and.i29, 0
  br i1 %tobool.i30.not, label %if.end.i35, label %if.then.i32

if.then.i32:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit
  %8 = load i32, ptr %out.i28, align 4
  %add.i31 = add nsw i32 %8, 7
  store i32 %add.i31, ptr %out.i28, align 4
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.then.i32, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit
  %9 = load i32, ptr %mode.addr.i26, align 4
  %and1.i33 = and i32 %9, 2
  %tobool2.i34.not = icmp eq i32 %and1.i33, 0
  br i1 %tobool2.i34.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i35
  %10 = load i32, ptr %out.i28, align 4
  %xor.i36 = xor i32 %10, 14
  store i32 %xor.i36, ptr %out.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit: ; preds = %if.end.i35, %if.then3.i37
  %11 = load i32, ptr %out.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i28)
  %12 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %12, %11
  %add15 = add nsw i32 %add13, 60
  store i32 %add15, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and16 = and i32 %13, 7
  %add.i47 = shl nuw nsw i32 %and16, 2
  %sub.i49 = add nuw nsw i32 %add.i47, 17
  %xor.i51 = xor i32 %sub.i49, %and16
  %xor18 = xor i32 %add15, %xor.i51
  store i32 %xor18, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %14, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %and19, ptr %x.addr.i52, align 4
  %and.i53 = and i32 %14, 3
  %mul.i = mul nuw nsw i32 %and.i53, 9
  %add.i54 = add nuw nsw i32 %and19, %mul.i
  store i32 %add.i54, ptr %s.i, align 4
  %rem.i = and i32 %add.i54, 1
  %cmp.i = icmp eq i32 %rem.i, 0
  %15 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %15, 1
  %16 = load i32, ptr %s.i, align 4
  %storemerge = select i1 %cmp.i, i32 %16, i32 %add1.i
  store i32 %storemerge, ptr %s.i, align 4
  %17 = load i32, ptr %x.addr.i52, align 4
  %and2.i = and i32 %17, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 10
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %18 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %18, 3
  %19 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %19, -1
  %storemerge147 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge147, ptr %s.i, align 4
  %20 = load i32, ptr %x.addr.i52, align 4
  %and12.i = and i32 %20, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 11
  %add14.i = add nsw i32 %storemerge147, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %21 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %21, 0
  %22 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %22, 5
  %23 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %23, -2
  %storemerge148 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge148, ptr %s.i, align 4
  %24 = load i32, ptr %x.addr.i52, align 4
  %and22.i = and i32 %24, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 12
  %add24.i = add nsw i32 %storemerge148, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %25 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %25, 7
  %26 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %26, -3
  %storemerge149 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge149, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %27 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %27, %storemerge149
  %add23 = add nsw i32 %add21, 89813340
  store i32 %add23, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %and24 = and i32 %28, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i65)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i67)
  store i32 0, ptr %mode.addr.i65, align 4
  store i32 %and24, ptr %out.i67, align 4
  %29 = load i32, ptr %mode.addr.i65, align 4
  %and1.i72 = and i32 %29, 2
  %tobool2.i73.not = icmp eq i32 %and1.i72, 0
  br i1 %tobool2.i73.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit, label %if.then3.i76

if.then3.i76:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit
  %30 = load i32, ptr %out.i67, align 4
  %xor.i75 = xor i32 %30, 14
  store i32 %xor.i75, ptr %out.i67, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit, %if.then3.i76
  %31 = load i32, ptr %out.i67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i65)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i67)
  %32 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %32, %31
  store i32 %add26, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %33, 7
  %mul.i79 = mul nuw nsw i32 %and27, 3
  %add.i80 = add nuw nsw i32 %mul.i79, 47
  %34 = lshr i32 %add.i80, 1
  %xor.i82 = xor i32 %add.i80, %34
  %mul1.i83 = shl nuw nsw i32 %xor.i82, 2
  %add2.i84 = add nuw nsw i32 %mul1.i83, 48
  %shr3.i85 = lshr exact i32 %add2.i84, 2
  %xor4.i86 = xor i32 %add2.i84, %shr3.i85
  %mul5.i87 = mul nsw i32 %xor4.i86, 5
  %add6.i88 = add nsw i32 %mul5.i87, 49
  %shr7.i89 = ashr i32 %add6.i88, 3
  %xor8.i90 = xor i32 %add6.i88, %shr7.i89
  %mul9.i91 = mul nsw i32 %xor8.i90, 6
  %add10.i92 = add nsw i32 %mul9.i91, 50
  %shr11.i93 = ashr exact i32 %add10.i92, 1
  %xor12.i94 = xor i32 %add10.i92, %shr11.i93
  %mul13.i95 = mul nsw i32 %xor12.i94, 7
  %add14.i96 = add nsw i32 %mul13.i95, 51
  %shr15.i97 = ashr i32 %add14.i96, 2
  %xor16.i98 = xor i32 %add14.i96, %shr15.i97
  %mul17.i99 = shl nsw i32 %xor16.i98, 3
  %add18.i100 = add nsw i32 %mul17.i99, 52
  %shr19.i101 = ashr i32 %add18.i100, 3
  %xor20.i102 = xor i32 %add18.i100, %shr19.i101
  %mul21.i103 = mul nsw i32 %xor20.i102, 9
  %add22.i104 = add nsw i32 %mul21.i103, 53
  %shr23.i105 = ashr i32 %add22.i104, 1
  %xor24.i106 = xor i32 %add22.i104, %shr23.i105
  %mul25.i107 = mul nsw i32 %xor24.i106, 10
  %add26.i108 = add nsw i32 %mul25.i107, 54
  %shr27.i109 = ashr i32 %add26.i108, 2
  %xor28.i110 = xor i32 %add26.i108, %shr27.i109
  %35 = load i32, ptr %total, align 4
  %xor29 = xor i32 %35, %xor28.i110
  store i32 %xor29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i111)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i113)
  store i32 2, ptr %mode.addr.i111, align 4
  store i32 3, ptr %out.i113, align 4
  %36 = load i32, ptr %mode.addr.i111, align 4
  %and1.i118 = and i32 %36, 2
  %tobool2.i119.not = icmp eq i32 %and1.i118, 0
  br i1 %tobool2.i119.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit, label %if.then3.i122

if.then3.i122:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit
  %37 = load i32, ptr %out.i113, align 4
  %xor.i121 = xor i32 %37, 14
  store i32 %xor.i121, ptr %out.i113, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit, %if.then3.i122
  %38 = load i32, ptr %out.i113, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i111)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i113)
  %39 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %39, %38
  store i32 %add31, ptr %total, align 4
  %40 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %40, 3
  %and33 = and i32 %40, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i123)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i125)
  store i32 %and32, ptr %mode.addr.i123, align 4
  store i32 %and33, ptr %out.i125, align 4
  %and.i126 = and i32 %40, 1
  %tobool.i127.not = icmp eq i32 %and.i126, 0
  br i1 %tobool.i127.not, label %if.end.i132, label %if.then.i129

if.then.i129:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit
  %41 = load i32, ptr %out.i125, align 4
  %add.i128 = add nsw i32 %41, 7
  store i32 %add.i128, ptr %out.i125, align 4
  br label %if.end.i132

if.end.i132:                                      ; preds = %if.then.i129, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit
  %42 = load i32, ptr %mode.addr.i123, align 4
  %and1.i130 = and i32 %42, 2
  %tobool2.i131.not = icmp eq i32 %and1.i130, 0
  br i1 %tobool2.i131.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_13.exit, label %if.then3.i134

if.then3.i134:                                    ; preds = %if.end.i132
  %43 = load i32, ptr %out.i125, align 4
  %xor.i133 = xor i32 %43, 14
  store i32 %xor.i133, ptr %out.i125, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_13.exit: ; preds = %if.end.i132, %if.then3.i134
  %44 = load i32, ptr %out.i125, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i123)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i125)
  %45 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %45, %44
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef 2)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %46, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i135)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i137)
  store i32 %and38, ptr %mode.addr.i135, align 4
  store i32 6, ptr %out.i137, align 4
  %and.i138 = and i32 %46, 1
  %tobool.i139.not = icmp eq i32 %and.i138, 0
  br i1 %tobool.i139.not, label %if.end.i144, label %if.then.i141

if.then.i141:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_13.exit
  %47 = load i32, ptr %out.i137, align 4
  %add.i140 = add nsw i32 %47, 7
  store i32 %add.i140, ptr %out.i137, align 4
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.then.i141, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_13.exit
  %48 = load i32, ptr %mode.addr.i135, align 4
  %and1.i142 = and i32 %48, 2
  %tobool2.i143.not = icmp eq i32 %and1.i142, 0
  br i1 %tobool2.i143.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_15.exit, label %if.then3.i146

if.then3.i146:                                    ; preds = %if.end.i144
  %49 = load i32, ptr %out.i137, align 4
  %xor.i145 = xor i32 %49, 14
  store i32 %xor.i145, ptr %out.i137, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_15.exit: ; preds = %if.end.i144, %if.then3.i146
  %50 = load i32, ptr %out.i137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i135)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i137)
  %51 = load i32, ptr %total, align 4
  %xor40 = xor i32 %51, %50
  store i32 %xor40, ptr %total, align 4
  ret i32 %xor40
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_030_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef %sub1)
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
