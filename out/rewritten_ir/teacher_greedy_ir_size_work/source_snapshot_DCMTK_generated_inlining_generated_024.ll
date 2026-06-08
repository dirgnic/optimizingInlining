; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_DCMTK_generated_inlining_generated_024.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_024.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_024_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr.i16 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 44, ptr %total, align 4
  %call5 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor = xor i32 %call5, 44
  %add11 = add nsw i32 %xor, 80
  store i32 %add11, ptr %total, align 4
  %call12 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor13 = xor i32 %add11, %call12
  store i32 %xor13, ptr %total, align 4
  %call14 = call noundef i32 @_ZL16game_024_large_ai(i32 noundef 10)
  %add15 = add nsw i32 %xor13, %call14
  store i32 %add15, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 0, ptr %x.addr.i16, align 4
  store i32 0, ptr %s.i, align 4
  %0 = load i32, ptr %s.i, align 4
  %sub.i = add nsw i32 %0, -1
  store i32 %sub.i, ptr %s.i, align 4
  %1 = load i32, ptr %x.addr.i16, align 4
  %and2.i = and i32 %1, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 10
  %add4.i = add nsw i32 %sub.i, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %2 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %2, 3
  %3 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %3, -2
  %storemerge19 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge19, ptr %s.i, align 4
  %4 = load i32, ptr %x.addr.i16, align 4
  %and12.i = and i32 %4, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 11
  %add14.i = add nsw i32 %storemerge19, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %5 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %5, 0
  %6 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %6, 5
  %7 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %7, -3
  %storemerge20 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge20, ptr %s.i, align 4
  %8 = load i32, ptr %x.addr.i16, align 4
  %and22.i = and i32 %8, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 12
  %add24.i = add nsw i32 %storemerge20, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %9 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %9, 7
  %10 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %10, -4
  %storemerge21 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge21, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %11 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %11, %storemerge21
  store i32 %add17, ptr %total, align 4
  %call18 = call noundef i32 @_ZL16game_024_large_ai(i32 noundef 1)
  %add19 = add nsw i32 %add17, %call18
  store i32 %add19, ptr %total, align 4
  %call20 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor21 = xor i32 %add19, %call20
  store i32 %xor21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL24game_024_branch_variableii(i32 noundef 0, i32 noundef 3)
  %add23 = add nsw i32 %xor21, %call22
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL24game_024_branch_variableii(i32 noundef 1, i32 noundef 4)
  %add25 = add nsw i32 %add23, %call24
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 2)
  %add27 = add nsw i32 %add25, %call26
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL18game_024_recursivei(i32 noundef 3)
  %xor29 = xor i32 %add27, %call28
  store i32 %xor29, ptr %total, align 4
  ret i32 %xor29
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_024_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_024_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_024_large_ai(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %mul, -3
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
define internal noundef i32 @_ZL24game_024_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %sub = add nsw i32 %3, -4
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
