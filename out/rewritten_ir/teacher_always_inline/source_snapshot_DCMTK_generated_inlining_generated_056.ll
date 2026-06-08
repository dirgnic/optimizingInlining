; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_056.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_056.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_056_kernel(i32 noundef %x) #0 {
entry:
  %retval.i53 = alloca i32, align 4
  %x.addr.i55 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i47 = alloca i32, align 4
  %x.addr.i29 = alloca i32, align 4
  %s.i30 = alloca i32, align 4
  %limit.i31 = alloca i32, align 4
  %i.i32 = alloca i32, align 4
  %x.addr.i18 = alloca i32, align 4
  %s.i19 = alloca i32, align 4
  %x.addr.i15 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 7
  %mul.i2 = mul nuw nsw i32 %and, 5
  %and3 = and i32 %x, 7
  %mul.i5 = mul nuw nsw i32 %and3, 6
  %add.i6 = add nuw nsw i32 %mul.i2, %mul.i5
  %add5 = add nuw nsw i32 %add.i6, 22
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %0, 7
  %mul.i8 = mul nuw nsw i32 %and8, 3
  %add.i9 = add nuw nsw i32 %mul.i8, 5
  %add11 = add nsw i32 %add7, %add.i9
  %and12 = shl i32 %0, 2
  %mul.i11 = and i32 %and12, 28
  %add.i12 = add nuw nsw i32 %mul.i11, 6
  %add14 = add nsw i32 %add11, %add.i12
  %add16 = add nsw i32 %add14, 50
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %add18 = add nsw i32 %add16, %call17
  store i32 %add18, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %1, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %and19, ptr %x.addr.i15, align 4
  store i32 %and19, ptr %s.i, align 4
  %and.i = and i32 %1, 3
  %add.i16 = add nuw nsw i32 %and.i, 3
  store i32 %add.i16, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %2 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %2
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = load i32, ptr %i.i, align 4
  %mul.i17 = mul nsw i32 %3, %3
  %4 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %4, %mul.i17
  store i32 %add1.i, ptr %s.i, align 4
  %and2.i = and i32 %add1.i, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %5 = load i32, ptr %i.i, align 4
  %6 = load i32, ptr %x.addr.i15, align 4
  %add4.i = add nsw i32 %5, %6
  %7 = load i32, ptr %s.i, align 4
  %xor.i = xor i32 %7, %add4.i
  store i32 %xor.i, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %8 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %8, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_8.exit: ; preds = %for.cond.i
  %9 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %10 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %10, %9
  store i32 %add21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i19)
  store i32 0, ptr %x.addr.i18, align 4
  store i32 0, ptr %s.i19, align 4
  %11 = load i32, ptr %s.i19, align 4
  %sub.i = add nsw i32 %11, -3
  store i32 %sub.i, ptr %s.i19, align 4
  %12 = load i32, ptr %x.addr.i18, align 4
  %and2.i26 = and i32 %12, 4
  %mul3.i = mul nuw nsw i32 %and2.i26, 9
  %add4.i27 = add nsw i32 %sub.i, %mul3.i
  store i32 %add4.i27, ptr %s.i19, align 4
  %rem5.i = srem i32 %add4.i27, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %13 = load i32, ptr %s.i19, align 4
  %add10.i = add nsw i32 %13, 3
  %14 = load i32, ptr %s.i19, align 4
  %sub8.i = add nsw i32 %14, -4
  %storemerge66 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge66, ptr %s.i19, align 4
  %15 = load i32, ptr %x.addr.i18, align 4
  %and12.i = and i32 %15, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 10
  %add14.i = add nsw i32 %storemerge66, %mul13.i
  store i32 %add14.i, ptr %s.i19, align 4
  %16 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %16, 0
  %17 = load i32, ptr %s.i19, align 4
  %add20.i = add nsw i32 %17, 5
  %18 = load i32, ptr %s.i19, align 4
  %sub18.i = add nsw i32 %18, -5
  %storemerge67 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge67, ptr %s.i19, align 4
  %19 = load i32, ptr %x.addr.i18, align 4
  %and22.i = and i32 %19, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 11
  %add24.i = add nsw i32 %storemerge67, %mul23.i
  store i32 %add24.i, ptr %s.i19, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %20 = load i32, ptr %s.i19, align 4
  %add30.i = add nsw i32 %20, 7
  %21 = load i32, ptr %s.i19, align 4
  %sub28.i = add nsw i32 %21, -6
  %storemerge68 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge68, ptr %s.i19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i19)
  %and23 = and i32 %storemerge68, 255
  %22 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %22, %and23
  store i32 %add24, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i29)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i32)
  store i32 %and25, ptr %x.addr.i29, align 4
  store i32 %and25, ptr %s.i30, align 4
  %and.i33 = and i32 %23, 3
  %add.i34 = add nuw nsw i32 %and.i33, 3
  store i32 %add.i34, ptr %limit.i31, align 4
  br label %for.cond.i36

for.cond.i36:                                     ; preds = %if.end.i45, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_8.exit
  %storemerge69 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_8.exit ], [ %inc.i46, %if.end.i45 ]
  store i32 %storemerge69, ptr %i.i32, align 4
  %24 = load i32, ptr %limit.i31, align 4
  %cmp.i35 = icmp slt i32 %storemerge69, %24
  br i1 %cmp.i35, label %for.body.i41, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10.exit

for.body.i41:                                     ; preds = %for.cond.i36
  %25 = load i32, ptr %i.i32, align 4
  %mul.i37 = mul nsw i32 %25, %25
  %26 = load i32, ptr %s.i30, align 4
  %add1.i38 = add nsw i32 %26, %mul.i37
  store i32 %add1.i38, ptr %s.i30, align 4
  %and2.i39 = and i32 %add1.i38, 1
  %cmp3.i40 = icmp eq i32 %and2.i39, 0
  br i1 %cmp3.i40, label %if.then.i44, label %if.end.i45

if.then.i44:                                      ; preds = %for.body.i41
  %27 = load i32, ptr %i.i32, align 4
  %28 = load i32, ptr %x.addr.i29, align 4
  %add4.i42 = add nsw i32 %27, %28
  %29 = load i32, ptr %s.i30, align 4
  %xor.i43 = xor i32 %29, %add4.i42
  store i32 %xor.i43, ptr %s.i30, align 4
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then.i44, %for.body.i41
  %30 = load i32, ptr %i.i32, align 4
  %inc.i46 = add nsw i32 %30, 1
  br label %for.cond.i36, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10.exit: ; preds = %for.cond.i36
  %31 = load i32, ptr %s.i30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i32)
  %32 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %32, %31
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %add29 = add nsw i32 %add27, %call28
  store i32 %add29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i47)
  store i32 3, ptr %x.addr.i47, align 4
  %33 = load i32, ptr %x.addr.i47, align 4
  %add.i49 = add nsw i32 %33, 3
  store i32 %add.i49, ptr %retval.i, align 4
  %34 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i47)
  %35 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %35, %34
  store i32 %add31, ptr %total, align 4
  %36 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %36, 3
  %and33 = and i32 %36, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i53)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i55)
  store i32 %and33, ptr %x.addr.i55, align 4
  switch i32 %and32, label %sw.default.i64 [
    i32 0, label %sw.bb.i58
    i32 1, label %sw.bb1.i60
    i32 2, label %sw.bb2.i62
  ]

sw.bb.i58:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10.exit
  %37 = load i32, ptr %x.addr.i55, align 4
  %add.i57 = add nsw i32 %37, 3
  store i32 %add.i57, ptr %retval.i53, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_13.exit

sw.bb1.i60:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10.exit
  %38 = load i32, ptr %x.addr.i55, align 4
  %xor.i59 = xor i32 %38, 10
  store i32 %xor.i59, ptr %retval.i53, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_13.exit

sw.bb2.i62:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10.exit
  %39 = load i32, ptr %x.addr.i55, align 4
  %mul.i61 = mul nsw i32 %39, 5
  store i32 %mul.i61, ptr %retval.i53, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_13.exit

sw.default.i64:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10.exit
  %40 = load i32, ptr %x.addr.i55, align 4
  %sub.i63 = add nsw i32 %40, -1
  store i32 %sub.i63, ptr %retval.i53, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_13.exit: ; preds = %sw.bb.i58, %sw.bb1.i60, %sw.bb2.i62, %sw.default.i64
  %41 = load i32, ptr %retval.i53, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i53)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i55)
  %42 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %42, %41
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 2)
  %and37 = and i32 %call36, 255
  %add38 = add nsw i32 %add35, %and37
  store i32 %add38, ptr %total, align 4
  %call39 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %add40 = add nsw i32 %add38, %call39
  store i32 %add40, ptr %total, align 4
  ret i32 %add40
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_056_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_056_recursivei(i32 noundef %sub)
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
