; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_024.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_024.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_024_dispatch(i32 noundef %x) #0 {
entry:
  %retval.i56 = alloca i32, align 4
  %x.addr.i58 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i50 = alloca i32, align 4
  %x.addr.i31 = alloca i32, align 4
  %s.i32 = alloca i32, align 4
  %limit.i33 = alloca i32, align 4
  %i.i34 = alloca i32, align 4
  %x.addr.i19 = alloca i32, align 4
  %s.i20 = alloca i32, align 4
  %x.addr.i16 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 44, ptr %total, align 4
  %call5 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor = xor i32 %call5, 44
  %add11 = add nsw i32 %xor, 80
  store i32 %add11, ptr %total, align 4
  %call12 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor13 = xor i32 %add11, %call12
  store i32 %xor13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 10, ptr %x.addr.i16, align 4
  store i32 10, ptr %s.i, align 4
  store i32 5, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %0 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %0
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_024_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %1 = load i32, ptr %i.i, align 4
  %mul.i18 = mul nsw i32 %1, %1
  %sub.i = add nsw i32 %mul.i18, -3
  %2 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %2, %sub.i
  store i32 %add1.i, ptr %s.i, align 4
  %and2.i = and i32 %add1.i, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %3 = load i32, ptr %i.i, align 4
  %4 = load i32, ptr %x.addr.i16, align 4
  %add4.i = add nsw i32 %3, %4
  %5 = load i32, ptr %s.i, align 4
  %xor.i = xor i32 %5, %add4.i
  store i32 %xor.i, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_024_8.exit: ; preds = %for.cond.i
  %7 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %8 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %8, %7
  store i32 %add15, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i20)
  store i32 0, ptr %x.addr.i19, align 4
  store i32 0, ptr %s.i20, align 4
  %9 = load i32, ptr %s.i20, align 4
  %sub.i25 = add nsw i32 %9, -1
  store i32 %sub.i25, ptr %s.i20, align 4
  %10 = load i32, ptr %x.addr.i19, align 4
  %and2.i28 = and i32 %10, 4
  %mul3.i = mul nuw nsw i32 %and2.i28, 10
  %add4.i29 = add nsw i32 %sub.i25, %mul3.i
  store i32 %add4.i29, ptr %s.i20, align 4
  %rem5.i = srem i32 %add4.i29, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %11 = load i32, ptr %s.i20, align 4
  %add10.i = add nsw i32 %11, 3
  %12 = load i32, ptr %s.i20, align 4
  %sub8.i = add nsw i32 %12, -2
  %storemerge69 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge69, ptr %s.i20, align 4
  %13 = load i32, ptr %x.addr.i19, align 4
  %and12.i = and i32 %13, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 11
  %add14.i = add nsw i32 %storemerge69, %mul13.i
  store i32 %add14.i, ptr %s.i20, align 4
  %14 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %14, 0
  %15 = load i32, ptr %s.i20, align 4
  %add20.i = add nsw i32 %15, 5
  %16 = load i32, ptr %s.i20, align 4
  %sub18.i = add nsw i32 %16, -3
  %storemerge70 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge70, ptr %s.i20, align 4
  %17 = load i32, ptr %x.addr.i19, align 4
  %and22.i = and i32 %17, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 12
  %add24.i = add nsw i32 %storemerge70, %mul23.i
  store i32 %add24.i, ptr %s.i20, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %18 = load i32, ptr %s.i20, align 4
  %add30.i = add nsw i32 %18, 7
  %19 = load i32, ptr %s.i20, align 4
  %sub28.i = add nsw i32 %19, -4
  %storemerge71 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge71, ptr %s.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i20)
  %20 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %20, %storemerge71
  store i32 %add17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i34)
  store i32 1, ptr %x.addr.i31, align 4
  store i32 1, ptr %s.i32, align 4
  store i32 4, ptr %limit.i33, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %if.end.i48, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_024_8.exit
  %storemerge72 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_024_8.exit ], [ %inc.i49, %if.end.i48 ]
  store i32 %storemerge72, ptr %i.i34, align 4
  %21 = load i32, ptr %limit.i33, align 4
  %cmp.i37 = icmp slt i32 %storemerge72, %21
  br i1 %cmp.i37, label %for.body.i44, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_024_10.exit

for.body.i44:                                     ; preds = %for.cond.i38
  %22 = load i32, ptr %i.i34, align 4
  %mul.i39 = mul nsw i32 %22, %22
  %sub.i40 = add nsw i32 %mul.i39, -3
  %23 = load i32, ptr %s.i32, align 4
  %add1.i41 = add nsw i32 %23, %sub.i40
  store i32 %add1.i41, ptr %s.i32, align 4
  %and2.i42 = and i32 %add1.i41, 1
  %cmp3.i43 = icmp eq i32 %and2.i42, 0
  br i1 %cmp3.i43, label %if.then.i47, label %if.end.i48

if.then.i47:                                      ; preds = %for.body.i44
  %24 = load i32, ptr %i.i34, align 4
  %25 = load i32, ptr %x.addr.i31, align 4
  %add4.i45 = add nsw i32 %24, %25
  %26 = load i32, ptr %s.i32, align 4
  %xor.i46 = xor i32 %26, %add4.i45
  store i32 %xor.i46, ptr %s.i32, align 4
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i47, %for.body.i44
  %27 = load i32, ptr %i.i34, align 4
  %inc.i49 = add nsw i32 %27, 1
  br label %for.cond.i38, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_024_10.exit: ; preds = %for.cond.i38
  %28 = load i32, ptr %s.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i34)
  %29 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %29, %28
  store i32 %add19, ptr %total, align 4
  %call20 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor21 = xor i32 %add19, %call20
  store i32 %xor21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i50)
  store i32 3, ptr %x.addr.i50, align 4
  %30 = load i32, ptr %x.addr.i50, align 4
  %add.i52 = add nsw i32 %30, 4
  store i32 %add.i52, ptr %retval.i, align 4
  %31 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i50)
  %32 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %32, %31
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i58)
  store i32 4, ptr %x.addr.i58, align 4
  %33 = load i32, ptr %x.addr.i58, align 4
  %xor.i62 = xor i32 %33, 12
  store i32 %xor.i62, ptr %retval.i56, align 4
  %34 = load i32, ptr %retval.i56, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i58)
  %35 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %35, %34
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 2)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor29 = xor i32 %add27, %call28
  store i32 %xor29, ptr %total, align 4
  ret i32 %xor29
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_024_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_024_recursivei(i32 noundef %sub)
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
