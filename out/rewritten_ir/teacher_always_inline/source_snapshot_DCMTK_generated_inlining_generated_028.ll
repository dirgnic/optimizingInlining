; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_028.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_028.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_028_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i107 = alloca i32, align 4
  %out.i109 = alloca i32, align 4
  %mode.addr.i95 = alloca i32, align 4
  %out.i97 = alloca i32, align 4
  %mode.addr.i83 = alloca i32, align 4
  %out.i85 = alloca i32, align 4
  %mode.addr.i37 = alloca i32, align 4
  %out.i39 = alloca i32, align 4
  %x.addr.i23 = alloca i32, align 4
  %s.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 3, ptr %x.addr.i23, align 4
  store i32 24, ptr %s.i, align 4
  %8 = load i32, ptr %s.i, align 4
  %sub.i26 = add nsw i32 %8, -3
  store i32 %sub.i26, ptr %s.i, align 4
  %9 = load i32, ptr %x.addr.i23, align 4
  %and2.i = shl i32 %9, 3
  %mul3.i = and i32 %and2.i, 32
  %add4.i = add nsw i32 %sub.i26, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %10 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %10, 3
  %11 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %11, -4
  %storemerge119 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge119, ptr %s.i, align 4
  %12 = load i32, ptr %x.addr.i23, align 4
  %and12.i = and i32 %12, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 9
  %add14.i = add nsw i32 %storemerge119, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %13 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %13, 0
  %14 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %14, 5
  %15 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %15, -5
  %storemerge120 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge120, ptr %s.i, align 4
  %16 = load i32, ptr %x.addr.i23, align 4
  %and22.i = and i32 %16, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 10
  %add24.i = add nsw i32 %storemerge120, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %17 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %17, 7
  %18 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %18, -6
  %storemerge121 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge121, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %19 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %19, %storemerge121
  %add17 = add nsw i32 %add15, 47884621
  store i32 %add17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i37)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i39)
  store i32 1, ptr %mode.addr.i37, align 4
  store i32 5, ptr %out.i39, align 4
  %20 = load i32, ptr %out.i39, align 4
  %add.i42 = add nsw i32 %20, 5
  store i32 %add.i42, ptr %out.i39, align 4
  %21 = load i32, ptr %mode.addr.i37, align 4
  %and1.i44 = and i32 %21, 2
  %tobool2.i45.not = icmp eq i32 %and1.i44, 0
  br i1 %tobool2.i45.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit, label %if.then3.i48

if.then3.i48:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit
  %22 = load i32, ptr %out.i39, align 4
  %xor.i47 = xor i32 %22, 12
  store i32 %xor.i47, ptr %out.i39, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_5.exit, %if.then3.i48
  %23 = load i32, ptr %out.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i37)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i39)
  %24 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %24, %23
  %xor21 = xor i32 %add19, 5087369
  store i32 %xor21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i85)
  store i32 0, ptr %mode.addr.i83, align 4
  store i32 7, ptr %out.i85, align 4
  %25 = load i32, ptr %mode.addr.i83, align 4
  %and1.i90 = and i32 %25, 2
  %tobool2.i91.not = icmp eq i32 %and1.i90, 0
  br i1 %tobool2.i91.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit, label %if.then3.i94

if.then3.i94:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit
  %26 = load i32, ptr %out.i85, align 4
  %xor.i93 = xor i32 %26, 12
  store i32 %xor.i93, ptr %out.i85, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_10.exit, %if.then3.i94
  %27 = load i32, ptr %out.i85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i85)
  %28 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %28, %27
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i97)
  store i32 1, ptr %mode.addr.i95, align 4
  store i32 8, ptr %out.i97, align 4
  %29 = load i32, ptr %out.i97, align 4
  %add.i100 = add nsw i32 %29, 5
  store i32 %add.i100, ptr %out.i97, align 4
  %30 = load i32, ptr %mode.addr.i95, align 4
  %and1.i102 = and i32 %30, 2
  %tobool2.i103.not = icmp eq i32 %and1.i102, 0
  br i1 %tobool2.i103.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_13.exit, label %if.then3.i106

if.then3.i106:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit
  %31 = load i32, ptr %out.i97, align 4
  %xor.i105 = xor i32 %31, 12
  store i32 %xor.i105, ptr %out.i97, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_13.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_12.exit, %if.then3.i106
  %32 = load i32, ptr %out.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i97)
  %33 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %33, %32
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL18game_028_recursivei(i32 noundef 2)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i109)
  store i32 0, ptr %mode.addr.i107, align 4
  store i32 10, ptr %out.i109, align 4
  %34 = load i32, ptr %mode.addr.i107, align 4
  %and1.i114 = and i32 %34, 2
  %tobool2.i115.not = icmp eq i32 %and1.i114, 0
  br i1 %tobool2.i115.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_15.exit, label %if.then3.i118

if.then3.i118:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_13.exit
  %35 = load i32, ptr %out.i109, align 4
  %xor.i117 = xor i32 %35, 12
  store i32 %xor.i117, ptr %out.i109, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_15.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_028_13.exit, %if.then3.i118
  %36 = load i32, ptr %out.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i109)
  %37 = load i32, ptr %total, align 4
  %xor29 = xor i32 %37, %36
  store i32 %xor29, ptr %total, align 4
  ret i32 %xor29
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
