; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_028.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_028.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_028_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i59 = alloca i32, align 4
  %out.i61 = alloca i32, align 4
  %mode.addr.i47 = alloca i32, align 4
  %out.i49 = alloca i32, align 4
  %mode.addr.i35 = alloca i32, align 4
  %out.i37 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %out.i25 = alloca i32, align 4
  %mode.addr.i7 = alloca i32, align 4
  %out.i9 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 6, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 12
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  %add7 = sub i32 11, %add
  store i32 %add7, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i9)
  store i32 2, ptr %mode.addr.i7, align 4
  store i32 0, ptr %out.i9, align 4
  %4 = load i32, ptr %mode.addr.i7, align 4
  %and1.i14 = and i32 %4, 2
  %tobool2.i15.not = icmp eq i32 %and1.i14, 0
  br i1 %tobool2.i15.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit, label %if.then3.i18

if.then3.i18:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_0.exit
  %5 = load i32, ptr %out.i9, align 4
  %xor.i17 = xor i32 %5, 12
  store i32 %xor.i17, ptr %out.i9, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_0.exit, %if.then3.i18
  %6 = load i32, ptr %out.i9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i9)
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %6
  %xor13 = sub i32 0, %add9
  store i32 %xor13, ptr %total, align 4
  %call14 = call noundef i32 @_ZL16game_028_large_ai(i32 noundef 3)
  %add15 = sub i32 %call14, %add9
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL16game_028_large_bi(i32 noundef 4)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i25)
  store i32 1, ptr %mode.addr.i23, align 4
  store i32 5, ptr %out.i25, align 4
  %8 = load i32, ptr %out.i25, align 4
  %add.i28 = add nsw i32 %8, 5
  store i32 %add.i28, ptr %out.i25, align 4
  %9 = load i32, ptr %mode.addr.i23, align 4
  %and1.i30 = and i32 %9, 2
  %tobool2.i31.not = icmp eq i32 %and1.i30, 0
  br i1 %tobool2.i31.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_8.exit, label %if.then3.i34

if.then3.i34:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit
  %10 = load i32, ptr %out.i25, align 4
  %xor.i33 = xor i32 %10, 12
  store i32 %xor.i33, ptr %out.i25, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_8.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit, %if.then3.i34
  %11 = load i32, ptr %out.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i25)
  %12 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %12, %11
  store i32 %add19, ptr %total, align 4
  %call20 = call noundef i32 @_ZL16game_028_large_bi(i32 noundef 6)
  %xor21 = xor i32 %add19, %call20
  store i32 %xor21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i37)
  store i32 0, ptr %mode.addr.i35, align 4
  store i32 7, ptr %out.i37, align 4
  %13 = load i32, ptr %mode.addr.i35, align 4
  %and1.i42 = and i32 %13, 2
  %tobool2.i43.not = icmp eq i32 %and1.i42, 0
  br i1 %tobool2.i43.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_9.exit, label %if.then3.i46

if.then3.i46:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_8.exit
  %14 = load i32, ptr %out.i37, align 4
  %xor.i45 = xor i32 %14, 12
  store i32 %xor.i45, ptr %out.i37, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_9.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_8.exit, %if.then3.i46
  %15 = load i32, ptr %out.i37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i37)
  %16 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %16, %15
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i49)
  store i32 1, ptr %mode.addr.i47, align 4
  store i32 8, ptr %out.i49, align 4
  %17 = load i32, ptr %out.i49, align 4
  %add.i52 = add nsw i32 %17, 5
  store i32 %add.i52, ptr %out.i49, align 4
  %18 = load i32, ptr %mode.addr.i47, align 4
  %and1.i54 = and i32 %18, 2
  %tobool2.i55.not = icmp eq i32 %and1.i54, 0
  br i1 %tobool2.i55.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit, label %if.then3.i58

if.then3.i58:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_9.exit
  %19 = load i32, ptr %out.i49, align 4
  %xor.i57 = xor i32 %19, 12
  store i32 %xor.i57, ptr %out.i49, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_9.exit, %if.then3.i58
  %20 = load i32, ptr %out.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i49)
  %21 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %21, %20
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL18game_028_recursivei(i32 noundef 2)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i61)
  store i32 0, ptr %mode.addr.i59, align 4
  store i32 10, ptr %out.i61, align 4
  %22 = load i32, ptr %mode.addr.i59, align 4
  %and1.i66 = and i32 %22, 2
  %tobool2.i67.not = icmp eq i32 %and1.i66, 0
  br i1 %tobool2.i67.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit, label %if.then3.i70

if.then3.i70:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit
  %23 = load i32, ptr %out.i61, align 4
  %xor.i69 = xor i32 %23, 12
  store i32 %xor.i69, ptr %out.i61, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit, %if.then3.i70
  %24 = load i32, ptr %out.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i61)
  %25 = load i32, ptr %total, align 4
  %xor29 = xor i32 %25, %24
  store i32 %xor29, ptr %total, align 4
  ret i32 %xor29
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_028_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 7
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
  %and2 = shl i32 %3, 3
  %mul3 = and i32 %and2, 32
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
  %mul13 = mul nuw nsw i32 %and12, 9
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
  %mul23 = mul nuw nsw i32 %and22, 10
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_028_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 45
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 46
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 47
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 48
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 49
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 50
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 51
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 52
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_028_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_028_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_028_recursivei(i32 noundef %sub1)
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
