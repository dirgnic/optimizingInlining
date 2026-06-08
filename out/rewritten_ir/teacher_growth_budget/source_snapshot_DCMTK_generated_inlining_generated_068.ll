; ModuleID = './out/rewritten_ir/teacher_growth_budget/source_snapshot_DCMTK_generated_inlining_generated_068.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_068.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_068_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i22 = alloca i32, align 4
  %t.i24 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 6
  store i32 %add.i, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  %add.i2 = add nsw i32 %x, 5
  store i32 %add.i2, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i3 = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i3, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %cond.i
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %add.i5 = add nsw i32 %5, 9
  %mul.i6 = shl nsw i32 %add.i5, 1
  %shr.i = ashr i32 %add.i5, 1
  %xor.i = xor i32 %mul.i6, %shr.i
  %add1.i7 = add nsw i32 %xor.i, 2
  %and.i = and i32 %add5, 3
  %add3.i = add nsw i32 %add1.i7, %and.i
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %add3.i
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  %call9 = call noundef i32 @_ZL16game_068_large_bi(i32 noundef %add8)
  %add10 = add nsw i32 %add7, %call9
  store i32 %add10, ptr %total, align 4
  %and11 = and i32 %7, 3
  %add12 = add nsw i32 %7, 4
  %call13 = call noundef i32 @_ZL24game_068_branch_variableii(i32 noundef %and11, i32 noundef %add12)
  %add14 = add nsw i32 %add10, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18game_068_recursivei(i32 noundef 1)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add17 = shl i32 %8, 1
  %add.i10 = add i32 %add17, 17
  %add19 = add nsw i32 %add16, %add.i10
  store i32 %add19, ptr %total, align 4
  %and20 = and i32 %8, 3
  %add21 = add nsw i32 %8, 7
  %call22 = call noundef i32 @_ZL17game_068_branch_7ii(i32 noundef %and20, i32 noundef %add21)
  %add23 = add nsw i32 %add19, %call22
  store i32 %add23, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add.i13 = add nsw i32 %9, 13
  %mul.i14 = mul nsw i32 %add.i13, 5
  %shr.i15 = ashr i32 %add.i13, 1
  %xor.i16 = xor i32 %mul.i14, %shr.i15
  %and.i17 = and i32 %9, 3
  %mul2.i = mul nuw nsw i32 %and.i17, 6
  %add3.i18 = add nsw i32 %xor.i16, %mul2.i
  %10 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %10, %add3.i18
  store i32 %add26, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %11, 9
  %call28 = call noundef i32 @_ZL16game_068_large_bi(i32 noundef %add27)
  %add29 = add nsw i32 %add26, %call28
  store i32 %add29, ptr %total, align 4
  %and30 = and i32 %11, 3
  %add31 = add nsw i32 %11, 10
  %call32 = call noundef i32 @_ZL24game_068_branch_variableii(i32 noundef %and30, i32 noundef %add31)
  %add33 = add nsw i32 %add29, %call32
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL18game_068_recursivei(i32 noundef 3)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %13 = mul i32 %12, 5
  %add.i21 = add i32 %13, 63
  %add38 = add nsw i32 %add35, %add.i21
  store i32 %add38, ptr %total, align 4
  %and39 = and i32 %12, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i24)
  store i32 %and39, ptr %mode.addr.i22, align 4
  %add.i25 = add nsw i32 %12, 16
  store i32 %add.i25, ptr %t.i24, align 4
  %cmp.i26 = icmp ult i32 %and39, 2
  br i1 %cmp.i26, label %cond.true.i29, label %cond.false.i31

cond.true.i29:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %14 = load i32, ptr %t.i24, align 4
  %15 = load i32, ptr %mode.addr.i22, align 4
  %add1.i27 = add nsw i32 %15, 1
  %mul.i28 = mul nsw i32 %14, %add1.i27
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit

cond.false.i31:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_1.exit
  %16 = load i32, ptr %t.i24, align 4
  %17 = load i32, ptr %mode.addr.i22, align 4
  %sub.i30 = sub nsw i32 %16, %17
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_068_6.exit: ; preds = %cond.true.i29, %cond.false.i31
  %cond.i32 = phi i32 [ %mul.i28, %cond.true.i29 ], [ %sub.i30, %cond.false.i31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i24)
  %18 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %18, %cond.i32
  store i32 %add42, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %add43 = add i32 %19, 2
  %add.i35 = add nsw i32 %19, 25
  %mul.i36 = mul nsw i32 %add.i35, 6
  %shr.i37 = ashr i32 %add.i35, 1
  %xor.i38 = xor i32 %mul.i36, %shr.i37
  %add1.i39 = add nsw i32 %xor.i38, 6
  %and.i40 = and i32 %add43, 3
  %mul2.i41 = mul nuw nsw i32 %and.i40, 5
  %add3.i42 = add nsw i32 %add1.i39, %mul2.i41
  %20 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %20, %add3.i42
  store i32 %add45, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %21, 15
  %call47 = call noundef i32 @_ZL16game_068_large_bi(i32 noundef %add46)
  %add48 = add nsw i32 %add45, %call47
  store i32 %add48, ptr %total, align 4
  ret i32 %add48
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_068_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 9
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 10
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -1
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 11
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -2
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 12
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -3
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %13, 7
  %mul33 = mul nuw nsw i32 %and32, 13
  %add34 = add nsw i32 %storemerge3, %mul33
  store i32 %add34, ptr %s, align 4
  %rem35 = srem i32 %add34, 6
  %cmp36 = icmp eq i32 %rem35, 0
  %14 = load i32, ptr %s, align 4
  %add40 = add nsw i32 %14, 9
  %15 = load i32, ptr %s, align 4
  %sub38 = add nsw i32 %15, -4
  %storemerge4 = select i1 %cmp36, i32 %sub38, i32 %add40
  store i32 %storemerge4, ptr %s, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %16, 8
  %mul43 = mul nuw nsw i32 %and42, 14
  %add44 = add nsw i32 %storemerge4, %mul43
  store i32 %add44, ptr %s, align 4
  %rem45 = srem i32 %add44, 7
  %cmp46 = icmp eq i32 %rem45, 0
  %17 = load i32, ptr %s, align 4
  %add50 = add nsw i32 %17, 11
  %18 = load i32, ptr %s, align 4
  %sub48 = add nsw i32 %18, -5
  %storemerge5 = select i1 %cmp46, i32 %sub48, i32 %add50
  store i32 %storemerge5, ptr %s, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and52 = and i32 %19, 9
  %mul53 = mul nuw nsw i32 %and52, 15
  %add54 = add nsw i32 %storemerge5, %mul53
  store i32 %add54, ptr %s, align 4
  %20 = and i32 %add54, 7
  %cmp56 = icmp eq i32 %20, 0
  %21 = load i32, ptr %s, align 4
  %add60 = add nsw i32 %21, 13
  %22 = load i32, ptr %s, align 4
  %sub58 = add nsw i32 %22, -6
  %storemerge6 = select i1 %cmp56, i32 %sub58, i32 %add60
  store i32 %storemerge6, ptr %s, align 4
  ret i32 %storemerge6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_068_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 4
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 5
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -6
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_068_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_068_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17game_068_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 11
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 12
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -6
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
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
