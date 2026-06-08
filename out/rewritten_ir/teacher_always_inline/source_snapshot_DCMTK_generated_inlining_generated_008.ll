; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_008.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_008.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_008_entry(i32 noundef %x) #0 {
entry:
  %retval.i54 = alloca i32, align 4
  %x.addr.i56 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i48 = alloca i32, align 4
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
  %add.i3 = shl i32 %x, 3
  %add4 = or i32 %add.i3, 7
  %0 = mul i32 %x, 3
  %add.i6 = add i32 %0, 10
  %add7 = add nsw i32 %add4, %add.i6
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add9 = add nsw i32 %add7, %call8
  store i32 %add9, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %2 = mul i32 %1, 5
  %add.i9 = add i32 %2, 26
  %add12 = add nsw i32 %add9, %add.i9
  %3 = mul i32 %1, 6
  %mul.i11 = add i32 %3, 30
  %add15 = add nsw i32 %add12, %mul.i11
  store i32 %add15, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add16 = shl i32 %4, 1
  %add.i14 = add i32 %add16, 13
  %add18 = add nsw i32 %add15, %add.i14
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %5, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add21, ptr %x.addr.i15, align 4
  store i32 %add21, ptr %s.i, align 4
  %and.i = and i32 %5, 3
  %add.i16 = add nuw nsw i32 %and.i, 3
  store i32 %add.i16, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %6 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %6
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %7 = load i32, ptr %i.i, align 4
  %mul.i17 = mul nsw i32 %7, %7
  %sub.i = add nsw i32 %mul.i17, -1
  %8 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %8, %sub.i
  store i32 %add1.i, ptr %s.i, align 4
  %and2.i = and i32 %add1.i, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %9 = load i32, ptr %i.i, align 4
  %10 = load i32, ptr %x.addr.i15, align 4
  %add4.i = add nsw i32 %9, %10
  %11 = load i32, ptr %s.i, align 4
  %xor.i = xor i32 %11, %add4.i
  store i32 %xor.i, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %12 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %12, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_8.exit: ; preds = %for.cond.i
  %13 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %14 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %14, %13
  store i32 %add23, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %add24 = add nsw i32 %15, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i19)
  store i32 %add24, ptr %x.addr.i18, align 4
  %and.i20 = shl i32 %add24, 2
  %mul.i21 = and i32 %and.i20, 12
  %add.i22 = add nsw i32 %add24, %mul.i21
  store i32 %add.i22, ptr %s.i19, align 4
  %16 = and i32 %add.i22, 1
  %cmp.i23 = icmp eq i32 %16, 0
  %17 = load i32, ptr %s.i19, align 4
  %add1.i25 = add nsw i32 %17, 1
  %18 = load i32, ptr %s.i19, align 4
  %storemerge66 = select i1 %cmp.i23, i32 %18, i32 %add1.i25
  store i32 %storemerge66, ptr %s.i19, align 4
  %19 = load i32, ptr %x.addr.i18, align 4
  %and2.i26 = and i32 %19, 4
  %mul3.i = mul nuw nsw i32 %and2.i26, 5
  %add4.i27 = add nsw i32 %storemerge66, %mul3.i
  store i32 %add4.i27, ptr %s.i19, align 4
  %rem5.i = srem i32 %add4.i27, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %20 = load i32, ptr %s.i19, align 4
  %add10.i = add nsw i32 %20, 3
  %21 = load i32, ptr %s.i19, align 4
  %sub8.i = add nsw i32 %21, -1
  %storemerge67 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge67, ptr %s.i19, align 4
  %22 = load i32, ptr %x.addr.i18, align 4
  %and12.i = and i32 %22, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 6
  %add14.i = add nsw i32 %storemerge67, %mul13.i
  store i32 %add14.i, ptr %s.i19, align 4
  %23 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %23, 0
  %24 = load i32, ptr %s.i19, align 4
  %add20.i = add nsw i32 %24, 5
  %25 = load i32, ptr %s.i19, align 4
  %sub18.i = add nsw i32 %25, -2
  %storemerge68 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge68, ptr %s.i19, align 4
  %26 = load i32, ptr %x.addr.i18, align 4
  %and22.i = and i32 %26, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 7
  %add24.i = add nsw i32 %storemerge68, %mul23.i
  store i32 %add24.i, ptr %s.i19, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %27 = load i32, ptr %s.i19, align 4
  %add30.i = add nsw i32 %27, 7
  %28 = load i32, ptr %s.i19, align 4
  %sub28.i = add nsw i32 %28, -3
  %storemerge69 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge69, ptr %s.i19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i19)
  %29 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %29, %storemerge69
  store i32 %add26, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %30, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i29)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i32)
  store i32 %add27, ptr %x.addr.i29, align 4
  store i32 %add27, ptr %s.i30, align 4
  %and.i33 = and i32 %add27, 3
  %add.i34 = add nuw nsw i32 %and.i33, 3
  store i32 %add.i34, ptr %limit.i31, align 4
  br label %for.cond.i36

for.cond.i36:                                     ; preds = %if.end.i46, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_8.exit
  %storemerge70 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_8.exit ], [ %inc.i47, %if.end.i46 ]
  store i32 %storemerge70, ptr %i.i32, align 4
  %31 = load i32, ptr %limit.i31, align 4
  %cmp.i35 = icmp slt i32 %storemerge70, %31
  br i1 %cmp.i35, label %for.body.i42, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_10.exit

for.body.i42:                                     ; preds = %for.cond.i36
  %32 = load i32, ptr %i.i32, align 4
  %mul.i37 = mul nsw i32 %32, %32
  %sub.i38 = add nsw i32 %mul.i37, -1
  %33 = load i32, ptr %s.i30, align 4
  %add1.i39 = add nsw i32 %33, %sub.i38
  store i32 %add1.i39, ptr %s.i30, align 4
  %and2.i40 = and i32 %add1.i39, 1
  %cmp3.i41 = icmp eq i32 %and2.i40, 0
  br i1 %cmp3.i41, label %if.then.i45, label %if.end.i46

if.then.i45:                                      ; preds = %for.body.i42
  %34 = load i32, ptr %i.i32, align 4
  %35 = load i32, ptr %x.addr.i29, align 4
  %add4.i43 = add nsw i32 %34, %35
  %36 = load i32, ptr %s.i30, align 4
  %xor.i44 = xor i32 %36, %add4.i43
  store i32 %xor.i44, ptr %s.i30, align 4
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i45, %for.body.i42
  %37 = load i32, ptr %i.i32, align 4
  %inc.i47 = add nsw i32 %37, 1
  br label %for.cond.i36, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_10.exit: ; preds = %for.cond.i36
  %38 = load i32, ptr %s.i30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i32)
  %39 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %39, %38
  store i32 %add29, ptr %total, align 4
  %call30 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add31 = add nsw i32 %add29, %call30
  store i32 %add31, ptr %total, align 4
  %40 = load i32, ptr %x.addr, align 4
  %and = and i32 %40, 3
  %add32 = add nsw i32 %40, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i48)
  store i32 %add32, ptr %x.addr.i48, align 4
  switch i32 %and, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_10.exit
  %41 = load i32, ptr %x.addr.i48, align 4
  %add.i50 = add nsw i32 %41, 10
  store i32 %add.i50, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_10.exit
  %42 = load i32, ptr %x.addr.i48, align 4
  %xor.i51 = xor i32 %42, 13
  store i32 %xor.i51, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_10.exit
  %43 = load i32, ptr %x.addr.i48, align 4
  %mul.i52 = mul nsw i32 %43, 5
  store i32 %mul.i52, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_10.exit
  %44 = load i32, ptr %x.addr.i48, align 4
  %sub.i53 = add nsw i32 %44, -2
  store i32 %sub.i53, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %45 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i48)
  %46 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %46, %45
  store i32 %add34, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %47, 3
  %add36 = add nsw i32 %47, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  store i32 %add36, ptr %x.addr.i56, align 4
  switch i32 %and35, label %sw.default.i65 [
    i32 0, label %sw.bb.i59
    i32 1, label %sw.bb1.i61
    i32 2, label %sw.bb2.i63
  ]

sw.bb.i59:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit
  %48 = load i32, ptr %x.addr.i56, align 4
  %add.i58 = add nsw i32 %48, 10
  store i32 %add.i58, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_13.exit

sw.bb1.i61:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit
  %49 = load i32, ptr %x.addr.i56, align 4
  %xor.i60 = xor i32 %49, 13
  store i32 %xor.i60, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_13.exit

sw.bb2.i63:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit
  %50 = load i32, ptr %x.addr.i56, align 4
  %mul.i62 = mul nsw i32 %50, 5
  store i32 %mul.i62, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_13.exit

sw.default.i65:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_12.exit
  %51 = load i32, ptr %x.addr.i56, align 4
  %sub.i64 = add nsw i32 %51, -2
  store i32 %sub.i64, ptr %retval.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_13.exit: ; preds = %sw.bb.i59, %sw.bb1.i61, %sw.bb2.i63, %sw.default.i65
  %52 = load i32, ptr %retval.i54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  %53 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %53, %52
  store i32 %add38, ptr %total, align 4
  %call39 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 2)
  %add40 = add nsw i32 %add38, %call39
  store i32 %add40, ptr %total, align 4
  %call41 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add42 = add nsw i32 %add40, %call41
  store i32 %add42, ptr %total, align 4
  ret i32 %add42
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_008_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_008_recursivei(i32 noundef %sub)
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
