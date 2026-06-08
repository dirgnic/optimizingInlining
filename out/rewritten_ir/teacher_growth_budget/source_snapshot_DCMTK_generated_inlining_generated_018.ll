; ModuleID = './out/rewritten_ir/teacher_growth_budget/source_snapshot_DCMTK_generated_inlining_generated_018.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_018.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_018_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr.i60 = alloca i32, align 4
  %y.i61 = alloca i32, align 4
  %x.addr.i50 = alloca i32, align 4
  %y.i51 = alloca i32, align 4
  %x.addr.i40 = alloca i32, align 4
  %y.i41 = alloca i32, align 4
  %x.addr.i30 = alloca i32, align 4
  %y.i31 = alloca i32, align 4
  %y.i21 = alloca i32, align 4
  %x.addr.i10 = alloca i32, align 4
  %y.i11 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 5, ptr %x.addr.i, align 4
  store i32 15, ptr %y.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %shr.i = ashr i32 %0, 1
  %1 = load i32, ptr %y.i, align 4
  %add1.i = add nsw i32 %1, %shr.i
  store i32 %add1.i, ptr %y.i, align 4
  %2 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  store i32 %and, ptr %x.addr.i1, align 4
  %add.i3 = add nuw nsw i32 %and, 11
  store i32 %add.i3, ptr %y.i2, align 4
  %and.i4 = and i32 %4, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.else.i9, label %if.then.i8

if.then.i8:                                       ; preds = %entry
  %5 = load i32, ptr %x.addr.i1, align 4
  %shr.i6 = ashr i32 %5, 1
  %6 = load i32, ptr %y.i2, align 4
  %add1.i7 = add nsw i32 %6, %shr.i6
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit

if.else.i9:                                       ; preds = %entry
  %7 = load i32, ptr %y.i2, align 4
  %sub.i = add nsw i32 %7, -1
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit: ; preds = %if.then.i8, %if.else.i9
  %storemerge = phi i32 [ %sub.i, %if.else.i9 ], [ %add1.i7, %if.then.i8 ]
  store i32 %storemerge, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  %8 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %8, %storemerge
  store i32 %add2, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %9, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i11)
  store i32 %and3, ptr %x.addr.i10, align 4
  %add.i12 = add nuw nsw i32 %and3, 12
  store i32 %add.i12, ptr %y.i11, align 4
  %and.i13 = and i32 %9, 1
  %tobool.i14.not = icmp eq i32 %and.i13, 0
  br i1 %tobool.i14.not, label %if.else.i19, label %if.then.i17

if.then.i17:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit
  %10 = load i32, ptr %x.addr.i10, align 4
  %shr.i15 = ashr i32 %10, 1
  %11 = load i32, ptr %y.i11, align 4
  %add1.i16 = add nsw i32 %11, %shr.i15
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit

if.else.i19:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_1.exit
  %12 = load i32, ptr %y.i11, align 4
  %sub.i18 = add nsw i32 %12, -2
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit: ; preds = %if.then.i17, %if.else.i19
  %storemerge70 = phi i32 [ %sub.i18, %if.else.i19 ], [ %add1.i16, %if.then.i17 ]
  store i32 %storemerge70, ptr %y.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i11)
  %13 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %13, %storemerge70
  store i32 %add5, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i21)
  store i32 21, ptr %y.i21, align 4
  %14 = load i32, ptr %y.i21, align 4
  %sub.i28 = add nsw i32 %14, -3
  store i32 %sub.i28, ptr %y.i21, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i21)
  %15 = load i32, ptr %total, align 4
  %xor = xor i32 %15, %sub.i28
  store i32 %xor, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %16, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i31)
  store i32 %and7, ptr %x.addr.i30, align 4
  %add.i32 = add nuw nsw i32 %and7, 3
  store i32 %add.i32, ptr %y.i31, align 4
  %and.i33 = and i32 %16, 1
  %tobool.i34.not = icmp eq i32 %and.i33, 0
  br i1 %tobool.i34.not, label %if.else.i39, label %if.then.i37

if.then.i37:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit
  %17 = load i32, ptr %x.addr.i30, align 4
  %shr.i35 = ashr i32 %17, 1
  %18 = load i32, ptr %y.i31, align 4
  %add1.i36 = add nsw i32 %18, %shr.i35
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit

if.else.i39:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_2.exit
  %19 = load i32, ptr %y.i31, align 4
  %sub.i38 = add nsw i32 %19, -4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit: ; preds = %if.then.i37, %if.else.i39
  %storemerge72 = phi i32 [ %sub.i38, %if.else.i39 ], [ %add1.i36, %if.then.i37 ]
  store i32 %storemerge72, ptr %y.i31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i31)
  %20 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %20, %storemerge72
  store i32 %add9, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %21, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i41)
  store i32 %and10, ptr %x.addr.i40, align 4
  %add.i42 = add nuw nsw i32 %and10, 4
  store i32 %add.i42, ptr %y.i41, align 4
  %and.i43 = and i32 %21, 1
  %tobool.i44.not = icmp eq i32 %and.i43, 0
  br i1 %tobool.i44.not, label %if.else.i49, label %if.then.i47

if.then.i47:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit
  %22 = load i32, ptr %x.addr.i40, align 4
  %shr.i45 = ashr i32 %22, 1
  %23 = load i32, ptr %y.i41, align 4
  %add1.i46 = add nsw i32 %23, %shr.i45
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit

if.else.i49:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_4.exit
  %24 = load i32, ptr %y.i41, align 4
  %sub.i48 = add nsw i32 %24, -5
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit: ; preds = %if.then.i47, %if.else.i49
  %storemerge73 = phi i32 [ %sub.i48, %if.else.i49 ], [ %add1.i46, %if.then.i47 ]
  store i32 %storemerge73, ptr %y.i41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i41)
  %25 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %25, %storemerge73
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i51)
  store i32 11, ptr %x.addr.i50, align 4
  store i32 16, ptr %y.i51, align 4
  %26 = load i32, ptr %x.addr.i50, align 4
  %shr.i55 = ashr i32 %26, 1
  %27 = load i32, ptr %y.i51, align 4
  %add1.i56 = add nsw i32 %27, %shr.i55
  store i32 %add1.i56, ptr %y.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i51)
  %28 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %28, %add1.i56
  store i32 %add14, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %29, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i61)
  store i32 %and15, ptr %x.addr.i60, align 4
  %add.i62 = add nuw nsw i32 %and15, 6
  store i32 %add.i62, ptr %y.i61, align 4
  %and.i63 = and i32 %29, 1
  %tobool.i64.not = icmp eq i32 %and.i63, 0
  br i1 %tobool.i64.not, label %if.else.i69, label %if.then.i67

if.then.i67:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit
  %30 = load i32, ptr %x.addr.i60, align 4
  %shr.i65 = ashr i32 %30, 1
  %31 = load i32, ptr %y.i61, align 4
  %add1.i66 = add nsw i32 %31, %shr.i65
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit

if.else.i69:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_5.exit
  %32 = load i32, ptr %y.i61, align 4
  %sub.i68 = add nsw i32 %32, -7
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_018_7.exit: ; preds = %if.then.i67, %if.else.i69
  %storemerge75 = phi i32 [ %sub.i68, %if.else.i69 ], [ %add1.i66, %if.then.i67 ]
  store i32 %storemerge75, ptr %y.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i60)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i61)
  %33 = load i32, ptr %total, align 4
  %xor17 = xor i32 %33, %storemerge75
  store i32 %xor17, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %34, 7
  %call19 = call noundef i32 @_ZL18packet_018_large_ai(i32 noundef %and18)
  %add20 = add nsw i32 %xor17, %call19
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL18packet_018_large_bi(i32 noundef 1)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  %35 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %35, 7
  %call24 = call noundef i32 @_ZL18packet_018_large_ai(i32 noundef %and23)
  %add25 = add nsw i32 %add22, %call24
  store i32 %add25, ptr %total, align 4
  %and26 = and i32 %35, 7
  %call27 = call noundef i32 @_ZL18packet_018_large_bi(i32 noundef %and26)
  %xor28 = xor i32 %add25, %call27
  store i32 %xor28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL26packet_018_branch_variableii(i32 noundef 2, i32 noundef 4)
  %add30 = add nsw i32 %xor28, %call29
  store i32 %add30, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %36, 3
  %and32 = and i32 %36, 7
  %call33 = call noundef i32 @_ZL26packet_018_branch_variableii(i32 noundef %and31, i32 noundef %and32)
  %add34 = add nsw i32 %add30, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef 2)
  %add36 = add nsw i32 %add34, %call35
  store i32 %add36, ptr %total, align 4
  %call37 = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef 3)
  %xor38 = xor i32 %add36, %call37
  store i32 %xor38, ptr %total, align 4
  ret i32 %xor38
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_018_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 18
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 19
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 20
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 21
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 22
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 23
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 24
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 25
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_018_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 9
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %add
  %shl = shl i32 %add1, 1
  %shr = ashr i32 %add1, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %s, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_018_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 3
  store i32 %add, ptr %t, align 4
  %cmp = icmp slt i32 %mode, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %1, 1
  %mul = mul nsw i32 %0, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_018_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_018_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
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
