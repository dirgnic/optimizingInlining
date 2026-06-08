; ModuleID = './out/rewritten_ir/student_small_mlp/source_snapshot_DCMTK_generated_inlining_generated_047.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_047.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_047_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i127 = alloca i32, align 4
  %t.i129 = alloca i32, align 4
  %mode.addr.i116 = alloca i32, align 4
  %t.i118 = alloca i32, align 4
  %mode.addr.i71 = alloca i32, align 4
  %t.i73 = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %t.i28 = alloca i32, align 4
  %mode.addr.i15 = alloca i32, align 4
  %t.i17 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %t.i3 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 5, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %mul.i
  store i32 %add, ptr %total, align 4
  %call1 = call noundef i32 @_ZL18matrix_047_large_bi(i32 noundef 4)
  %add2 = add nsw i32 %add, %call1
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i3)
  store i32 2, ptr %mode.addr.i1, align 4
  store i32 7, ptr %t.i3, align 4
  %3 = load i32, ptr %t.i3, align 4
  %4 = load i32, ptr %mode.addr.i1, align 4
  %sub.i9 = sub nsw i32 %3, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i3)
  %5 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %5, %sub.i9
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef 3)
  %add6 = add nsw i32 %add4, %call5
  %add8 = add nsw i32 %add6, 246
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i17)
  store i32 2, ptr %mode.addr.i15, align 4
  store i32 10, ptr %t.i17, align 4
  %6 = load i32, ptr %t.i17, align 4
  %7 = load i32, ptr %mode.addr.i15, align 4
  %sub.i23 = sub nsw i32 %6, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i17)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %sub.i23
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i28)
  store i32 0, ptr %mode.addr.i26, align 4
  store i32 11, ptr %t.i28, align 4
  %9 = load i32, ptr %t.i28, align 4
  %10 = load i32, ptr %mode.addr.i26, align 4
  %add1.i31 = add nsw i32 %10, 1
  %mul.i32 = mul nsw i32 %9, %add1.i31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i28)
  %11 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %11, %mul.i32
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef 3)
  %add14 = add nsw i32 %add12, %call13
  %add16 = add nsw i32 %add14, 89813340
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18matrix_047_large_bi(i32 noundef 1)
  %and18 = and i32 %call17, 255
  %add19 = add nsw i32 %add16, %and18
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i73)
  store i32 1, ptr %mode.addr.i71, align 4
  store i32 4, ptr %t.i73, align 4
  %12 = load i32, ptr %t.i73, align 4
  %13 = load i32, ptr %mode.addr.i71, align 4
  %add1.i76 = add nsw i32 %13, 1
  %mul.i77 = mul nsw i32 %12, %add1.i76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i73)
  %14 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %14, %mul.i77
  store i32 %add21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef 3)
  %add23 = add nsw i32 %add21, %call22
  %add25 = add nsw i32 %add23, 88006827
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL18matrix_047_large_bi(i32 noundef 5)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i118)
  store i32 2, ptr %mode.addr.i116, align 4
  store i32 8, ptr %t.i118, align 4
  %15 = load i32, ptr %t.i118, align 4
  %16 = load i32, ptr %mode.addr.i116, align 4
  %sub.i124 = sub nsw i32 %15, %16
  %phi.bo = and i32 %sub.i124, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i118)
  %17 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %17, %phi.bo
  store i32 %add30, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i127)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i129)
  store i32 0, ptr %mode.addr.i127, align 4
  store i32 9, ptr %t.i129, align 4
  %18 = load i32, ptr %t.i129, align 4
  %19 = load i32, ptr %mode.addr.i127, align 4
  %add1.i132 = add nsw i32 %19, 1
  %mul.i133 = mul nsw i32 %18, %add1.i132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i127)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i129)
  %20 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %20, %mul.i133
  store i32 %add32, ptr %total, align 4
  ret i32 %add32
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_047_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 12
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
define internal noundef i32 @_ZL20matrix_047_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef %sub)
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
