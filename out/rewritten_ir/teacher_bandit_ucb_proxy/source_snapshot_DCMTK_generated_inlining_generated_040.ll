; ModuleID = './out/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_DCMTK_generated_inlining_generated_040.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_040.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_040_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add1 = shl i32 %x, 2
  %add3 = add i32 %add1, 10
  store i32 %add3, ptr %total, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %0, 11
  store i32 %add6, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %1 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %1, %call7
  %add10 = add nsw i32 %add8, 11
  store i32 %add10, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = and i32 %2, 1
  %tobool13.not.not = icmp eq i32 %3, 0
  br i1 %tobool13.not.not, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %5 = mul i32 %4, 3
  %add.i11 = add i32 %5, 19
  %6 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %6, %add.i11
  store i32 %add17, ptr %total, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end
  %7 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %7, 29
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and24 = and i32 %8, 1
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end18
  %call27 = call noundef i32 @_ZL16game_040_large_ai(i32 noundef 1)
  %9 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %9, %call27
  store i32 %add28, ptr %total, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end18
  %10 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %10, 9
  %call31 = call noundef i32 @_ZL16game_040_large_bi(i32 noundef %add30)
  %11 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %11, %call31
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL16game_040_large_ai(i32 noundef 3)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %13 = and i32 %12, 1
  %tobool37.not.not = icmp eq i32 %13, 0
  br i1 %tobool37.not.not, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end29
  %call39 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %14 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %14, %call39
  store i32 %add40, ptr %total, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end29
  %call42 = call noundef i32 @_ZL24game_040_branch_variableii(i32 noundef 0, i32 noundef 5)
  %15 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %15, %call42
  store i32 %add43, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add44 = add nsw i32 %16, 13
  %call45 = call noundef i32 @_ZL24game_040_branch_variableii(i32 noundef 1, i32 noundef %add44)
  %add46 = add nsw i32 %add43, %call45
  store i32 %add46, ptr %total, align 4
  %and48 = and i32 %16, 1
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.end41
  %call51 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 2)
  %17 = load i32, ptr %total, align 4
  %add52 = add nsw i32 %17, %call51
  store i32 %add52, ptr %total, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end41
  %call54 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %18 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %18, %call54
  store i32 %add55, ptr %total, align 4
  ret i32 %add55
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_040_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_040_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_040_large_ai(i32 noundef %x) #1 {
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
  %sub = add nsw i32 %mul, -5
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
define internal noundef i32 @_ZL16game_040_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 3
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
  %and2 = shl i32 %3, 2
  %mul3 = and i32 %and2, 16
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
  %mul13 = mul nuw nsw i32 %and12, 5
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
  %mul23 = mul nuw nsw i32 %and22, 6
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
define internal noundef i32 @_ZL24game_040_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 9
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 11
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 2
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
