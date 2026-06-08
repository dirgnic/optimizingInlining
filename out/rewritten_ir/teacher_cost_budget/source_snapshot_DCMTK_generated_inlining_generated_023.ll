; ModuleID = './out/rewritten_ir/teacher_cost_budget/source_snapshot_DCMTK_generated_inlining_generated_023.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_023.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_023_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 3
  %and = and i32 %x, 3
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL19matrix_023_branch_1ii(i32 noundef %and, i32 noundef %add2)
  %add4 = add nsw i32 %add.i, %call3
  %0 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %0, 2
  %call6 = call noundef i32 @_ZL19matrix_023_medium_2i(i32 noundef %add5)
  %add7 = add nsw i32 %add4, %call6
  %add8 = add nsw i32 %0, 3
  %call9 = call noundef i32 @_ZL18matrix_023_large_bi(i32 noundef %add8)
  %xor = xor i32 %add7, %call9
  %1 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %1, 3
  %add11 = add nsw i32 %1, 4
  %call12 = call noundef i32 @_ZL26matrix_023_branch_variableii(i32 noundef %and10, i32 noundef %add11)
  %add13 = add nsw i32 %xor, %call12
  %call14 = call noundef i32 @_ZL20matrix_023_recursivei(i32 noundef 1)
  %add15 = add nsw i32 %add13, %call14
  %2 = load i32, ptr %x.addr, align 4
  %add16 = shl i32 %2, 1
  %add.i3 = add i32 %add16, 14
  %add18 = add nsw i32 %add15, %add.i3
  %and19 = and i32 %2, 3
  %add20 = add nsw i32 %2, 7
  %call21 = call noundef i32 @_ZL19matrix_023_branch_7ii(i32 noundef %and19, i32 noundef %add20)
  %xor22 = xor i32 %add18, %call21
  %3 = load i32, ptr %x.addr, align 4
  %add23 = add nsw i32 %3, 8
  %call24 = call noundef i32 @_ZL19matrix_023_medium_0i(i32 noundef %add23)
  %add25 = add nsw i32 %xor22, %call24
  %add26 = add nsw i32 %3, 9
  %call27 = call noundef i32 @_ZL18matrix_023_large_bi(i32 noundef %add26)
  %add28 = add nsw i32 %add25, %call27
  %4 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %4, 3
  %add30 = add nsw i32 %4, 10
  %call31 = call noundef i32 @_ZL26matrix_023_branch_variableii(i32 noundef %and29, i32 noundef %add30)
  %add32 = add nsw i32 %add28, %call31
  %call33 = call noundef i32 @_ZL20matrix_023_recursivei(i32 noundef 3)
  %xor34 = xor i32 %add32, %call33
  %5 = load i32, ptr %x.addr, align 4
  %6 = mul i32 %5, 5
  %mul.i5 = add i32 %6, 60
  %add37 = add nsw i32 %xor34, %mul.i5
  %and38 = and i32 %5, 3
  %add39 = add nsw i32 %5, 13
  %call40 = call noundef i32 @_ZL19matrix_023_branch_5ii(i32 noundef %and38, i32 noundef %add39)
  %add41 = add nsw i32 %add37, %call40
  %7 = load i32, ptr %x.addr, align 4
  %add42 = add nsw i32 %7, 14
  %call43 = call noundef i32 @_ZL19matrix_023_medium_6i(i32 noundef %add42)
  %add44 = add nsw i32 %add41, %call43
  %add45 = add nsw i32 %7, 15
  %call46 = call noundef i32 @_ZL18matrix_023_large_bi(i32 noundef %add45)
  %xor47 = xor i32 %add44, %call46
  ret i32 %xor47
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_023_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 4
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
define internal noundef i32 @_ZL19matrix_023_medium_2i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 6
  %mul = shl nsw i32 %add, 1
  %shr = ashr i32 %add, 1
  %xor = xor i32 %mul, %shr
  %add1 = add nsw i32 %xor, 8
  ret i32 %add1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_023_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 3
  %mul = and i32 %and, 24
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
  %mul3 = mul nuw nsw i32 %and2, 9
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
  %mul13 = mul nuw nsw i32 %and12, 10
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
  %mul23 = mul nuw nsw i32 %and22, 11
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
define internal noundef i32 @_ZL26matrix_023_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 11
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -3
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_023_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_023_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_023_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 10
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 18
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -3
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_023_medium_0i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 4
  %mul = mul nsw i32 %add, 5
  %shr = ashr i32 %add, 1
  %xor = xor i32 %mul, %shr
  %add1 = add nsw i32 %xor, 6
  ret i32 %add1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_023_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL19matrix_023_medium_6i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 10
  %mul = mul nsw i32 %add, 6
  %shr = ashr i32 %add, 1
  %xor = xor i32 %mul, %shr
  %add1 = add nsw i32 %xor, 12
  ret i32 %add1
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
