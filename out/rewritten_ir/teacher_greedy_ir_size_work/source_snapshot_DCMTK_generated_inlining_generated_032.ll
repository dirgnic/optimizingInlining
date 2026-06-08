; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_DCMTK_generated_inlining_generated_032.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_032.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_032_step(i32 noundef %x) #0 {
entry:
  %x.addr.i51 = alloca i32, align 4
  %s.i52 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add3 = add nsw i32 %x, 68
  store i32 %add3, ptr %total, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %0, 37
  store i32 %add6, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %x.addr, align 4
  %add.i10 = add nsw i32 %1, 39
  %2 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %2, %add.i10
  %add11 = add nsw i32 %add9, 41
  store i32 %add11, ptr %total, align 4
  %3 = and i32 %1, 1
  %tobool14.not.not = icmp eq i32 %3, 0
  br i1 %tobool14.not.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %add.i12 = add nsw i32 %4, 43
  %5 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %5, %add.i12
  store i32 %add18, ptr %total, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  %6 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %6, 45
  store i32 %add21, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add.i14 = add nsw i32 %7, 47
  %add24 = add nsw i32 %add21, %add.i14
  store i32 %add24, ptr %total, align 4
  %and26 = and i32 %7, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end19
  %8 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %8, 29546997
  store i32 %add30, ptr %total, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end19
  %9 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %9, 9
  %call33 = call noundef i32 @_ZL16game_032_large_bi(i32 noundef %add32)
  %10 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %10, %call33
  %add36 = add nsw i32 %add34, 90052700
  store i32 %add36, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %12 = and i32 %11, 1
  %tobool39.not.not = icmp eq i32 %12, 0
  br i1 %tobool39.not.not, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end31
  %13 = load i32, ptr %x.addr, align 4
  %add41 = add nsw i32 %13, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add41, ptr %x.addr.i51, align 4
  store i32 %add41, ptr %s.i52, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then40
  %storemerge = phi i32 [ 0, %if.then40 ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 8
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_032_10.exit

for.body.i:                                       ; preds = %for.cond.i
  %14 = load i32, ptr %x.addr.i51, align 4
  %15 = load i32, ptr %i.i, align 4
  %xor.i53 = xor i32 %14, %15
  %add.i54 = add nsw i32 %xor.i53, 10
  %16 = load i32, ptr %s.i52, align 4
  %add1.i = add nsw i32 %16, %add.i54
  %shl.i = shl i32 %add1.i, 1
  %shr.i55 = ashr i32 %add1.i, 3
  %xor2.i = xor i32 %shl.i, %shr.i55
  store i32 %xor2.i, ptr %s.i52, align 4
  %17 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %17, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_032_10.exit: ; preds = %for.cond.i
  %18 = load i32, ptr %s.i52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %19 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %19, %18
  store i32 %add43, ptr %total, align 4
  br label %if.end44

if.end44:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_032_10.exit, %if.end31
  %call45 = call noundef i32 @_ZL24game_032_branch_variableii(i32 noundef 0, i32 noundef 5)
  %20 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %20, %call45
  store i32 %add46, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add47 = add nsw i32 %21, 13
  %call48 = call noundef i32 @_ZL24game_032_branch_variableii(i32 noundef 1, i32 noundef %add47)
  %add49 = add nsw i32 %add46, %call48
  store i32 %add49, ptr %total, align 4
  %and51 = and i32 %21, 1
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.end44
  %call54 = call noundef i32 @_ZL18game_032_recursivei(i32 noundef 2)
  %22 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %22, %call54
  store i32 %add55, ptr %total, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end44
  %call57 = call noundef i32 @_ZL18game_032_recursivei(i32 noundef 3)
  %23 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %23, %call57
  store i32 %add58, ptr %total, align 4
  ret i32 %add58
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_032_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 10
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_032_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 2
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_032_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_032_recursivei(i32 noundef %sub)
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
