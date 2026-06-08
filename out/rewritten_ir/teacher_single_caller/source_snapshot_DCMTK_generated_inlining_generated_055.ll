; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_055.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_055.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_055_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i26 = alloca i32, align 4
  %t.i28 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i11 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i, align 4
  %add.i = add nsw i32 %x, 2
  store i32 %add.i, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i2 = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %2, %mul.i2
  %add5 = add nsw i32 %add3, 37
  store i32 %add5, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %3, 3
  %call7 = call noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %add6)
  %add8 = add nsw i32 %add5, %call7
  store i32 %add8, ptr %total, align 4
  %call9 = call noundef i32 @_ZL26matrix_055_branch_variableii(i32 noundef 1, i32 noundef 4)
  %and = and i32 %call9, 255
  %add10 = add nsw i32 %add8, %and
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef 1)
  %add12 = add nsw i32 %add10, %call11
  %add14 = add nsw i32 %add12, 30
  store i32 %add14, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %4, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i11)
  store i32 %add15, ptr %x.addr.i11, align 4
  %5 = load i32, ptr %x.addr.i11, align 4
  %xor.i13 = xor i32 %5, 16
  store i32 %xor.i13, ptr %retval.i, align 4
  %6 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i11)
  %7 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %7, %6
  %add19 = add nsw i32 %add17, 14
  store i32 %add19, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %8, 9
  %call21 = call noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %add20)
  %and22 = and i32 %call21, 255
  %add23 = add nsw i32 %add19, %and22
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL26matrix_055_branch_variableii(i32 noundef 1, i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef 3)
  %add27 = add nsw i32 %add25, %call26
  %add29 = add nsw i32 %add27, 14
  store i32 %add29, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %9, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i28)
  store i32 1, ptr %mode.addr.i26, align 4
  store i32 %add30, ptr %t.i28, align 4
  %10 = load i32, ptr %t.i28, align 4
  %11 = load i32, ptr %mode.addr.i26, align 4
  %add1.i30 = add nsw i32 %11, 1
  %mul.i31 = mul nsw i32 %10, %add1.i30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i28)
  %12 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %12, %mul.i31
  %add35 = add nsw i32 %add32, 41
  store i32 %add35, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %13, 15
  %call37 = call noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  store i32 %add38, ptr %total, align 4
  ret i32 %add38
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %2, -2
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
  %sub8 = add nsw i32 %5, -3
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
  %sub18 = add nsw i32 %9, -4
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
  %sub28 = add nsw i32 %12, -5
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26matrix_055_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %mode, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 9
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 2
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -7
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_055_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef %sub)
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
