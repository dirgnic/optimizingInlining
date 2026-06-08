; ModuleID = './out/rewritten_ir/student_small_mlp/source_snapshot_DCMTK_generated_inlining_generated_063.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_063.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_063_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i145 = alloca i32, align 4
  %t.i147 = alloca i32, align 4
  %mode.addr.i80 = alloca i32, align 4
  %t.i82 = alloca i32, align 4
  %mode.addr.i15 = alloca i32, align 4
  %t.i17 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %t.i3 = alloca i32, align 4
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
  %call2 = call noundef i32 @_ZL18matrix_063_large_bi(i32 noundef %add1)
  %add3 = add nsw i32 %add, %call2
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i3)
  store i32 2, ptr %mode.addr.i1, align 4
  store i32 5, ptr %t.i3, align 4
  %4 = load i32, ptr %t.i3, align 4
  %5 = load i32, ptr %mode.addr.i1, align 4
  %sub.i9 = sub nsw i32 %4, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i3)
  %6 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %6, %sub.i9
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  %add9 = add nsw i32 %add7, 989754789
  store i32 %add9, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %7, 5
  %call11 = call noundef i32 @_ZL26matrix_063_branch_variableii(i32 noundef 2, i32 noundef %add10)
  %add12 = add nsw i32 %add9, %call11
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i17)
  store i32 0, ptr %mode.addr.i15, align 4
  store i32 9, ptr %t.i17, align 4
  %8 = load i32, ptr %t.i17, align 4
  %9 = load i32, ptr %mode.addr.i15, align 4
  %add1.i20 = add nsw i32 %9, 1
  %mul.i21 = mul nsw i32 %8, %add1.i20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i17)
  %10 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %10, %mul.i21
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef 3)
  %add16 = add nsw i32 %add14, %call15
  %add18 = add nsw i32 %add16, 297392777
  store i32 %add18, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %11, 9
  %call20 = call noundef i32 @_ZL18matrix_063_large_bi(i32 noundef %add19)
  %add21 = add nsw i32 %add18, %call20
  store i32 %add21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i82)
  store i32 1, ptr %mode.addr.i80, align 4
  store i32 6, ptr %t.i82, align 4
  %12 = load i32, ptr %t.i82, align 4
  %13 = load i32, ptr %mode.addr.i80, align 4
  %add1.i85 = add nsw i32 %13, 1
  %mul.i86 = mul nsw i32 %12, %add1.i85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i82)
  %14 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %14, %mul.i86
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL20matrix_063_recursivei(i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  %add27 = add nsw i32 %add25, 1291364996
  store i32 %add27, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %15, 13
  %call29 = call noundef i32 @_ZL18matrix_063_large_bi(i32 noundef %add28)
  %add30 = add nsw i32 %add27, %call29
  store i32 %add30, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i145)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i147)
  store i32 2, ptr %mode.addr.i145, align 4
  store i32 3, ptr %t.i147, align 4
  %16 = load i32, ptr %t.i147, align 4
  %17 = load i32, ptr %mode.addr.i145, align 4
  %sub.i153 = sub nsw i32 %16, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i145)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i147)
  %18 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %18, %sub.i153
  store i32 %add32, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %19, 15
  %call34 = call noundef i32 @_ZL26matrix_063_branch_variableii(i32 noundef 0, i32 noundef %add33)
  %add35 = add nsw i32 %add32, %call34
  store i32 %add35, ptr %total, align 4
  ret i32 %add35
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26matrix_063_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_063_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 2
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
