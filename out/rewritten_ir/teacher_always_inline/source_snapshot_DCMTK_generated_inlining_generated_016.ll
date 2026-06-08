; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_016.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_016.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_016_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i74 = alloca i32, align 4
  %t.i76 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i56 = alloca i32, align 4
  %s.i57 = alloca i32, align 4
  %i.i58 = alloca i32, align 4
  %x.addr.i17 = alloca i32, align 4
  %s.i18 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 43406594, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 3, ptr %x.addr.i17, align 4
  store i32 3, ptr %s.i18, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 7
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_016_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %x.addr.i17, align 4
  %1 = load i32, ptr %i.i, align 4
  %xor.i19 = xor i32 %0, %1
  %add.i20 = add nsw i32 %xor.i19, 7
  %2 = load i32, ptr %s.i18, align 4
  %add1.i = add nsw i32 %2, %add.i20
  %shl.i = shl i32 %add1.i, 1
  %shr.i21 = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i21
  store i32 %xor2.i, ptr %s.i18, align 4
  %3 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %3, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_016_9.exit: ; preds = %for.cond.i
  %4 = load i32, ptr %s.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %5 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %5, %4
  %add19 = add nsw i32 %add17, 25506058
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i58)
  store i32 5, ptr %x.addr.i56, align 4
  store i32 5, ptr %s.i57, align 4
  br label %for.cond.i60

for.cond.i60:                                     ; preds = %for.body.i67, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_016_9.exit
  %storemerge85 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_016_9.exit ], [ %inc.i68, %for.body.i67 ]
  store i32 %storemerge85, ptr %i.i58, align 4
  %cmp.i59 = icmp slt i32 %storemerge85, 7
  br i1 %cmp.i59, label %for.body.i67, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_016_11.exit

for.body.i67:                                     ; preds = %for.cond.i60
  %6 = load i32, ptr %x.addr.i56, align 4
  %7 = load i32, ptr %i.i58, align 4
  %xor.i61 = xor i32 %6, %7
  %add.i62 = add nsw i32 %xor.i61, 7
  %8 = load i32, ptr %s.i57, align 4
  %add1.i63 = add nsw i32 %8, %add.i62
  %shl.i64 = shl i32 %add1.i63, 1
  %shr.i65 = ashr i32 %add1.i63, 3
  %xor2.i66 = xor i32 %shl.i64, %shr.i65
  store i32 %xor2.i66, ptr %s.i57, align 4
  %9 = load i32, ptr %i.i58, align 4
  %inc.i68 = add nsw i32 %9, 1
  br label %for.cond.i60, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_016_11.exit: ; preds = %for.cond.i60
  %10 = load i32, ptr %s.i57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i58)
  %11 = load i32, ptr %total, align 4
  %xor21 = xor i32 %11, %10
  store i32 %xor21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 7, ptr %t.i, align 4
  %12 = load i32, ptr %t.i, align 4
  %13 = load i32, ptr %mode.addr.i, align 4
  %add1.i72 = add nsw i32 %13, 1
  %mul.i73 = mul nsw i32 %12, %add1.i72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %14 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %14, %mul.i73
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i74)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i76)
  store i32 1, ptr %mode.addr.i74, align 4
  store i32 8, ptr %t.i76, align 4
  %15 = load i32, ptr %t.i76, align 4
  %16 = load i32, ptr %mode.addr.i74, align 4
  %add1.i79 = add nsw i32 %16, 1
  %mul.i80 = mul nsw i32 %15, %add1.i79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i74)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i76)
  %17 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %17, %mul.i80
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL18game_016_recursivei(i32 noundef 2)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL18game_016_recursivei(i32 noundef 3)
  %xor29 = xor i32 %add27, %call28
  store i32 %xor29, ptr %total, align 4
  ret i32 %xor29
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_016_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_016_recursivei(i32 noundef %sub)
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
