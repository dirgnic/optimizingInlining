; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_053.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_053.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_053_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i27 = alloca i32, align 4
  %t.i29 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i12 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 5
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
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i3, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %cond.i
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add.i5 = add nsw i32 %5, 5
  %mul.i6 = shl nsw i32 %add.i5, 1
  %shr.i = ashr i32 %add.i5, 1
  %xor.i = xor i32 %mul.i6, %shr.i
  %add1.i7 = add nsw i32 %xor.i, 4
  %6 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %6, %add1.i7
  store i32 %add7, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 3
  %call9 = call noundef i32 @_ZL17image_053_large_bi(i32 noundef %add8)
  %add10 = add nsw i32 %add7, %call9
  store i32 %add10, ptr %total, align 4
  %and11 = and i32 %7, 3
  %add12 = add nsw i32 %7, 4
  %call13 = call noundef i32 @_ZL25image_053_branch_variableii(i32 noundef %and11, i32 noundef %add12)
  %and14 = and i32 %call13, 255
  %add15 = add nsw i32 %add10, %and14
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL19image_053_recursivei(i32 noundef 1)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add18 = shl i32 %8, 1
  %add.i10 = add i32 %add18, 16
  %add20 = add nsw i32 %add17, %add.i10
  store i32 %add20, ptr %total, align 4
  %and21 = and i32 %8, 3
  %add22 = add nsw i32 %8, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i12)
  store i32 %add22, ptr %x.addr.i12, align 4
  switch i32 %and21, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %9 = load i32, ptr %x.addr.i12, align 4
  %add.i13 = add nsw i32 %9, 7
  store i32 %add.i13, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

sw.bb1.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %10 = load i32, ptr %x.addr.i12, align 4
  %xor.i14 = xor i32 %10, 14
  store i32 %xor.i14, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

sw.bb2.i:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %11 = load i32, ptr %x.addr.i12, align 4
  %mul.i15 = mul nsw i32 %11, 3
  store i32 %mul.i15, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

sw.default.i:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_1.exit
  %12 = load i32, ptr %x.addr.i12, align 4
  %sub.i16 = add nsw i32 %12, -5
  store i32 %sub.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %13 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i12)
  %14 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %14, %13
  store i32 %add24, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %add.i19 = add nsw i32 %15, 20
  %mul.i20 = mul nsw i32 %add.i19, 5
  %shr.i21 = ashr i32 %add.i19, 1
  %xor.i22 = xor i32 %mul.i20, %shr.i21
  %add1.i23 = add nsw i32 %xor.i22, 2
  %16 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %16, %add1.i23
  store i32 %add27, ptr %total, align 4
  %17 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %17, 9
  %call29 = call noundef i32 @_ZL17image_053_large_bi(i32 noundef %add28)
  %and30 = and i32 %call29, 255
  %add31 = add nsw i32 %add27, %and30
  store i32 %add31, ptr %total, align 4
  %and32 = and i32 %17, 3
  %18 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %18, 10
  %call34 = call noundef i32 @_ZL25image_053_branch_variableii(i32 noundef %and32, i32 noundef %add33)
  %add35 = add nsw i32 %add31, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL19image_053_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %20 = mul i32 %19, 5
  %add.i26 = add i32 %20, 62
  %add40 = add nsw i32 %add37, %add.i26
  store i32 %add40, ptr %total, align 4
  %and41 = and i32 %19, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i29)
  store i32 %and41, ptr %mode.addr.i27, align 4
  %add.i30 = add nsw i32 %19, 16
  store i32 %add.i30, ptr %t.i29, align 4
  %cmp.i31 = icmp ult i32 %and41, 2
  br i1 %cmp.i31, label %cond.true.i34, label %cond.false.i36

cond.true.i34:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit
  %21 = load i32, ptr %t.i29, align 4
  %22 = load i32, ptr %mode.addr.i27, align 4
  %add1.i32 = add nsw i32 %22, 1
  %mul.i33 = mul nsw i32 %21, %add1.i32
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit

cond.false.i36:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_4.exit
  %23 = load i32, ptr %t.i29, align 4
  %24 = load i32, ptr %mode.addr.i27, align 4
  %sub.i35 = sub nsw i32 %23, %24
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_053_7.exit: ; preds = %cond.true.i34, %cond.false.i36
  %cond.i37 = phi i32 [ %mul.i33, %cond.true.i34 ], [ %sub.i35, %cond.false.i36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i29)
  %25 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %25, %cond.i37
  store i32 %add44, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %add.i40 = add nsw i32 %26, 21
  %mul.i41 = mul nsw i32 %add.i40, 6
  %27 = lshr i32 %add.i40, 1
  %xor.i43 = xor i32 %mul.i41, %27
  %add1.i44 = add i32 %xor.i43, 8
  %and47 = and i32 %add1.i44, 255
  %28 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %28, %and47
  store i32 %add48, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %add49 = add nsw i32 %29, 15
  %call50 = call noundef i32 @_ZL17image_053_large_bi(i32 noundef %add49)
  %add51 = add nsw i32 %add48, %call50
  store i32 %add51, ptr %total, align 4
  ret i32 %add51
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_053_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 5
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
  %mul3 = mul nuw nsw i32 %and2, 6
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
  %mul13 = mul nuw nsw i32 %and12, 7
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
  %and22 = shl i32 %10, 3
  %mul23 = and i32 %and22, 48
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
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_053_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %1, 7
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -5
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_053_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_053_recursivei(i32 noundef %sub)
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
