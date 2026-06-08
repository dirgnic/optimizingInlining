; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_063.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_063.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_063_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i200 = alloca i32, align 4
  %t.i202 = alloca i32, align 4
  %mode.addr.i189 = alloca i32, align 4
  %t.i191 = alloca i32, align 4
  %x.addr.i176 = alloca i32, align 4
  %s.i177 = alloca i32, align 4
  %i.i178 = alloca i32, align 4
  %mode.addr.i111 = alloca i32, align 4
  %t.i113 = alloca i32, align 4
  %x.addr.i98 = alloca i32, align 4
  %s.i99 = alloca i32, align 4
  %i.i100 = alloca i32, align 4
  %mode.addr.i33 = alloca i32, align 4
  %t.i35 = alloca i32, align 4
  %mode.addr.i22 = alloca i32, align 4
  %t.i24 = alloca i32, align 4
  %mode.addr.i5 = alloca i32, align 4
  %t.i7 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 3, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %mul.i
  store i32 %add, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %3, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add1, ptr %x.addr.i1, align 4
  store i32 %add1, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i2 = icmp slt i32 %storemerge, 6
  br i1 %cmp.i2, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_1.exit

for.body.i:                                       ; preds = %for.cond.i
  %4 = load i32, ptr %x.addr.i1, align 4
  %5 = load i32, ptr %i.i, align 4
  %xor.i = xor i32 %4, %5
  %add.i3 = add nsw i32 %xor.i, 2
  %6 = load i32, ptr %s.i, align 4
  %add1.i4 = add nsw i32 %6, %add.i3
  %shl.i = shl i32 %add1.i4, 1
  %shr.i = ashr i32 %add1.i4, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %7 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %7, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_1.exit: ; preds = %for.cond.i
  %8 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %9 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %9, %8
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i7)
  store i32 2, ptr %mode.addr.i5, align 4
  store i32 5, ptr %t.i7, align 4
  %10 = load i32, ptr %t.i7, align 4
  %11 = load i32, ptr %mode.addr.i5, align 4
  %sub.i13 = sub nsw i32 %10, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i7)
  %12 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %12, %sub.i13
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  %add9 = add nsw i32 %add7, 989754789
  store i32 %add9, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i24)
  store i32 2, ptr %mode.addr.i22, align 4
  %add.i25 = add nsw i32 %13, 8
  store i32 %add.i25, ptr %t.i24, align 4
  %14 = load i32, ptr %t.i24, align 4
  %15 = load i32, ptr %mode.addr.i22, align 4
  %sub.i30 = sub nsw i32 %14, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i24)
  %16 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %16, %sub.i30
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i35)
  store i32 0, ptr %mode.addr.i33, align 4
  store i32 9, ptr %t.i35, align 4
  %17 = load i32, ptr %t.i35, align 4
  %18 = load i32, ptr %mode.addr.i33, align 4
  %add1.i38 = add nsw i32 %18, 1
  %mul.i39 = mul nsw i32 %17, %add1.i38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i35)
  %19 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %19, %mul.i39
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef 3)
  %add16 = add nsw i32 %add14, %call15
  %add18 = add nsw i32 %add16, 297392777
  store i32 %add18, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %20, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i99)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i100)
  store i32 %add19, ptr %x.addr.i98, align 4
  store i32 %add19, ptr %s.i99, align 4
  br label %for.cond.i102

for.cond.i102:                                    ; preds = %for.body.i109, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_1.exit
  %storemerge211 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_1.exit ], [ %inc.i110, %for.body.i109 ]
  store i32 %storemerge211, ptr %i.i100, align 4
  %cmp.i101 = icmp slt i32 %storemerge211, 6
  br i1 %cmp.i101, label %for.body.i109, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_9.exit

for.body.i109:                                    ; preds = %for.cond.i102
  %21 = load i32, ptr %x.addr.i98, align 4
  %22 = load i32, ptr %i.i100, align 4
  %xor.i103 = xor i32 %21, %22
  %add.i104 = add nsw i32 %xor.i103, 2
  %23 = load i32, ptr %s.i99, align 4
  %add1.i105 = add nsw i32 %23, %add.i104
  %shl.i106 = shl i32 %add1.i105, 1
  %shr.i107 = ashr i32 %add1.i105, 3
  %xor2.i108 = xor i32 %shl.i106, %shr.i107
  store i32 %xor2.i108, ptr %s.i99, align 4
  %24 = load i32, ptr %i.i100, align 4
  %inc.i110 = add nsw i32 %24, 1
  br label %for.cond.i102, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_9.exit: ; preds = %for.cond.i102
  %25 = load i32, ptr %s.i99, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i99)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i100)
  %26 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %26, %25
  store i32 %add21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i111)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i113)
  store i32 1, ptr %mode.addr.i111, align 4
  store i32 6, ptr %t.i113, align 4
  %27 = load i32, ptr %t.i113, align 4
  %28 = load i32, ptr %mode.addr.i111, align 4
  %add1.i116 = add nsw i32 %28, 1
  %mul.i117 = mul nsw i32 %27, %add1.i116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i111)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i113)
  %29 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %29, %mul.i117
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  %add27 = add nsw i32 %add25, 1291364996
  store i32 %add27, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %30, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i176)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i177)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i178)
  store i32 %add28, ptr %x.addr.i176, align 4
  store i32 %add28, ptr %s.i177, align 4
  br label %for.cond.i180

for.cond.i180:                                    ; preds = %for.body.i187, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_9.exit
  %storemerge212 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_9.exit ], [ %inc.i188, %for.body.i187 ]
  store i32 %storemerge212, ptr %i.i178, align 4
  %cmp.i179 = icmp slt i32 %storemerge212, 6
  br i1 %cmp.i179, label %for.body.i187, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_13.exit

for.body.i187:                                    ; preds = %for.cond.i180
  %31 = load i32, ptr %x.addr.i176, align 4
  %32 = load i32, ptr %i.i178, align 4
  %xor.i181 = xor i32 %31, %32
  %add.i182 = add nsw i32 %xor.i181, 2
  %33 = load i32, ptr %s.i177, align 4
  %add1.i183 = add nsw i32 %33, %add.i182
  %shl.i184 = shl i32 %add1.i183, 1
  %shr.i185 = ashr i32 %add1.i183, 3
  %xor2.i186 = xor i32 %shl.i184, %shr.i185
  store i32 %xor2.i186, ptr %s.i177, align 4
  %34 = load i32, ptr %i.i178, align 4
  %inc.i188 = add nsw i32 %34, 1
  br label %for.cond.i180, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_063_13.exit: ; preds = %for.cond.i180
  %35 = load i32, ptr %s.i177, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i176)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i177)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i178)
  %36 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %36, %35
  store i32 %add30, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i189)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i191)
  store i32 2, ptr %mode.addr.i189, align 4
  store i32 3, ptr %t.i191, align 4
  %37 = load i32, ptr %t.i191, align 4
  %38 = load i32, ptr %mode.addr.i189, align 4
  %sub.i197 = sub nsw i32 %37, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i189)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i191)
  %39 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %39, %sub.i197
  store i32 %add32, ptr %total, align 4
  %40 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i200)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i202)
  store i32 0, ptr %mode.addr.i200, align 4
  %add.i203 = add nsw i32 %40, 18
  store i32 %add.i203, ptr %t.i202, align 4
  %41 = load i32, ptr %t.i202, align 4
  %42 = load i32, ptr %mode.addr.i200, align 4
  %add1.i205 = add nsw i32 %42, 1
  %mul.i206 = mul nsw i32 %41, %add1.i205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i200)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i202)
  %43 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %43, %mul.i206
  store i32 %add35, ptr %total, align 4
  ret i32 %add35
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_063_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef %sub)
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
