; ModuleID = './out/rewritten_ir/student_deep_forest/source_snapshot_DCMTK_generated_inlining_generated_069.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_069.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_069_entry(i32 noundef %x) #0 {
entry:
  %call1 = call noundef i32 @_ZL18image_069_branch_1ii(i32 noundef 1, i32 noundef 4)
  %add2 = add nsw i32 %call1, 6
  %call3 = call noundef i32 @_ZL18image_069_medium_2i(i32 noundef 5)
  %add4 = add nsw i32 %add2, %call3
  %call5 = call noundef i32 @_ZL17image_069_large_bi(i32 noundef 6)
  %add6 = add nsw i32 %add4, %call5
  %call7 = call noundef i32 @_ZL25image_069_branch_variableii(i32 noundef 1, i32 noundef 7)
  %add8 = add nsw i32 %add6, %call7
  %call9 = call noundef i32 @_ZL19image_069_recursivei(i32 noundef 1)
  %add10 = add nsw i32 %add8, %call9
  %add12 = add nsw i32 %add10, 33
  %call13 = call noundef i32 @_ZL18image_069_branch_7ii(i32 noundef 1, i32 noundef 10)
  %add14 = add nsw i32 %add12, %call13
  %call15 = call noundef i32 @_ZL18image_069_medium_0i(i32 noundef 0)
  %add16 = add nsw i32 %add14, %call15
  %call17 = call noundef i32 @_ZL17image_069_large_bi(i32 noundef 1)
  %add18 = add nsw i32 %add16, %call17
  %call19 = call noundef i32 @_ZL25image_069_branch_variableii(i32 noundef 1, i32 noundef 2)
  %add20 = add nsw i32 %add18, %call19
  %call21 = call noundef i32 @_ZL19image_069_recursivei(i32 noundef 3)
  %add22 = add nsw i32 %add20, %call21
  %add24 = add nsw i32 %add22, 28
  %call25 = call noundef i32 @_ZL18image_069_branch_5ii(i32 noundef 1, i32 noundef 5)
  %add26 = add nsw i32 %add24, %call25
  %call27 = call noundef i32 @_ZL18image_069_medium_6i(i32 noundef 6)
  %add28 = add nsw i32 %add26, %call27
  %call29 = call noundef i32 @_ZL17image_069_large_bi(i32 noundef 7)
  %add30 = add nsw i32 %add28, %call29
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_069_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %t, align 4
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
define internal noundef i32 @_ZL18image_069_medium_2i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 8
  %mul = mul nsw i32 %add, 3
  %shr = ashr i32 %add, 1
  %xor = xor i32 %mul, %shr
  %add1 = add nsw i32 %xor, 3
  %and = shl i32 %x, 1
  %mul2 = and i32 %and, 6
  %add3 = add nsw i32 %add1, %mul2
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_069_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 10
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -1
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 11
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -2
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 12
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -3
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 13
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -4
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %13, 7
  %mul33 = mul nuw nsw i32 %and32, 14
  %add34 = add nsw i32 %storemerge3, %mul33
  store i32 %add34, ptr %s, align 4
  %rem35 = srem i32 %add34, 6
  %cmp36 = icmp eq i32 %rem35, 0
  %14 = load i32, ptr %s, align 4
  %add40 = add nsw i32 %14, 9
  %15 = load i32, ptr %s, align 4
  %sub38 = add nsw i32 %15, -5
  %storemerge4 = select i1 %cmp36, i32 %sub38, i32 %add40
  store i32 %storemerge4, ptr %s, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %16, 8
  %mul43 = mul nuw nsw i32 %and42, 15
  %add44 = add nsw i32 %storemerge4, %mul43
  store i32 %add44, ptr %s, align 4
  %rem45 = srem i32 %add44, 7
  %cmp46 = icmp eq i32 %rem45, 0
  %17 = load i32, ptr %s, align 4
  %add50 = add nsw i32 %17, 11
  %18 = load i32, ptr %s, align 4
  %sub48 = add nsw i32 %18, -6
  %storemerge5 = select i1 %cmp46, i32 %sub48, i32 %add50
  store i32 %storemerge5, ptr %s, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and52 = shl i32 %19, 4
  %mul53 = and i32 %and52, 144
  %add54 = add nsw i32 %storemerge5, %mul53
  store i32 %add54, ptr %s, align 4
  %20 = and i32 %add54, 7
  %cmp56 = icmp eq i32 %20, 0
  %21 = load i32, ptr %s, align 4
  %add60 = add nsw i32 %21, 13
  %22 = load i32, ptr %s, align 4
  %sub58 = add nsw i32 %22, -7
  %storemerge6 = select i1 %cmp56, i32 %sub58, i32 %add60
  store i32 %storemerge6, ptr %s, align 4
  ret i32 %storemerge6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_069_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 6
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
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
define internal noundef i32 @_ZL19image_069_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_069_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_069_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 12
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 13
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_069_medium_0i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 6
  %mul = mul nsw i32 %add, 6
  %shr = ashr i32 %add, 1
  %xor = xor i32 %mul, %shr
  %add1 = add nsw i32 %xor, 1
  %and = and i32 %x, 3
  %mul2 = mul nuw nsw i32 %and, 7
  %add3 = add nsw i32 %add1, %mul2
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_069_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL18image_069_medium_6i(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 12
  %mul = shl nsw i32 %add, 1
  %shr = ashr i32 %add, 1
  %xor = xor i32 %mul, %shr
  %add1 = add nsw i32 %xor, 7
  %and = and i32 %x, 3
  %mul2 = mul nuw nsw i32 %and, 6
  %add3 = add nsw i32 %add1, %mul2
  ret i32 %add3
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
