; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_DCMTK_generated_inlining_generated_008.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_008.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_008_entry(i32 noundef %x) #0 {
entry:
  %x.addr.i15 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add.i3 = shl i32 %x, 3
  %add4 = or i32 %add.i3, 7
  %0 = mul i32 %x, 3
  %add.i6 = add i32 %0, 10
  %add7 = add nsw i32 %add4, %add.i6
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add9 = add nsw i32 %add7, %call8
  store i32 %add9, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %2 = mul i32 %1, 5
  %add.i9 = add i32 %2, 26
  %add12 = add nsw i32 %add9, %add.i9
  %3 = mul i32 %1, 6
  %mul.i11 = add i32 %3, 30
  %add15 = add nsw i32 %add12, %mul.i11
  store i32 %add15, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add16 = shl i32 %4, 1
  %add.i14 = add i32 %add16, 13
  %add18 = add nsw i32 %add15, %add.i14
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %5, 8
  %call22 = call noundef i32 @_ZL16game_008_large_ai(i32 noundef %add21)
  %add23 = add nsw i32 %add20, %call22
  store i32 %add23, ptr %total, align 4
  %add24 = add nsw i32 %5, 9
  %call25 = call noundef i32 @_ZL16game_008_large_bi(i32 noundef %add24)
  %add26 = add nsw i32 %add23, %call25
  store i32 %add26, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %6, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add27, ptr %x.addr.i15, align 4
  store i32 %add27, ptr %s.i, align 4
  %and.i = and i32 %add27, 3
  %add.i16 = add nuw nsw i32 %and.i, 3
  store i32 %add.i16, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %7 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %7
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_6.exit

for.body.i:                                       ; preds = %for.cond.i
  %8 = load i32, ptr %i.i, align 4
  %mul.i17 = mul nsw i32 %8, %8
  %sub.i = add nsw i32 %mul.i17, -1
  %9 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %9, %sub.i
  store i32 %add1.i, ptr %s.i, align 4
  %and2.i = and i32 %add1.i, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %10 = load i32, ptr %i.i, align 4
  %11 = load i32, ptr %x.addr.i15, align 4
  %add4.i = add nsw i32 %10, %11
  %12 = load i32, ptr %s.i, align 4
  %xor.i = xor i32 %12, %add4.i
  store i32 %xor.i, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %13 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %13, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_008_6.exit: ; preds = %for.cond.i
  %14 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %15 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %15, %14
  store i32 %add29, ptr %total, align 4
  %call30 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add31 = add nsw i32 %add29, %call30
  store i32 %add31, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %and = and i32 %16, 3
  %add32 = add nsw i32 %16, 12
  %call33 = call noundef i32 @_ZL24game_008_branch_variableii(i32 noundef %and, i32 noundef %add32)
  %add34 = add nsw i32 %add31, %call33
  store i32 %add34, ptr %total, align 4
  %and35 = and i32 %16, 3
  %17 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %17, 13
  %call37 = call noundef i32 @_ZL24game_008_branch_variableii(i32 noundef %and35, i32 noundef %add36)
  %add38 = add nsw i32 %add34, %call37
  store i32 %add38, ptr %total, align 4
  %call39 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 2)
  %add40 = add nsw i32 %add38, %call39
  store i32 %add40, ptr %total, align 4
  %call41 = call noundef i32 @_ZL18game_008_recursivei(i32 noundef 3)
  %add42 = add nsw i32 %add40, %call41
  store i32 %add42, ptr %total, align 4
  ret i32 %add42
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_008_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_008_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_008_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 3
  store i32 %add, ptr %limit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %1
  %sub = add nsw i32 %mul, -1
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %sub
  store i32 %add1, ptr %s, align 4
  %and2 = and i32 %add1, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %3, %4
  %5 = load i32, ptr %s, align 4
  %xor = xor i32 %5, %add4
  store i32 %xor, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_008_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 2
  %mul = and i32 %and, 12
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
  %mul3 = mul nuw nsw i32 %and2, 5
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
  %mul13 = mul nuw nsw i32 %and12, 6
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
  %mul23 = mul nuw nsw i32 %and22, 7
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
define internal noundef i32 @_ZL24game_008_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %1, 13
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -2
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
