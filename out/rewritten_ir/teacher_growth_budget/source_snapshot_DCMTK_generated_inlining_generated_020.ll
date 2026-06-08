; ModuleID = './out/rewritten_ir/teacher_growth_budget/source_snapshot_DCMTK_generated_inlining_generated_020.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_020.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_020_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr.i33 = alloca i32, align 4
  %y.i34 = alloca i32, align 4
  %i.i35 = alloca i32, align 4
  %mode.addr.i21 = alloca i32, align 4
  %out.i23 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %y.i9 = alloca i32, align 4
  %i.i10 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 10, ptr %out.i, align 4
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 6
  store i32 %add.i, ptr %out.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %2 = load i32, ptr %out.i, align 4
  %xor.i2 = xor i32 %2, 5
  store i32 %xor.i2, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_1.exit: ; preds = %entry, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %4, %3
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 0, ptr %x.addr.i3, align 4
  store i32 3, ptr %y.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_1.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_1.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 3
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_2.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = load i32, ptr %i.i, align 4
  %6 = load i32, ptr %x.addr.i3, align 4
  %and.i5 = and i32 %6, 3
  %add1.i = add nsw i32 %5, %and.i5
  %7 = load i32, ptr %y.i, align 4
  %add2.i = add nsw i32 %7, %add1.i
  store i32 %add2.i, ptr %y.i, align 4
  %8 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %8, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_2.exit: ; preds = %for.cond.i
  %9 = load i32, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %10 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %10, %9
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL16game_020_large_bi(i32 noundef 1)
  %xor = xor i32 %add4, %call5
  store i32 %xor, ptr %total, align 4
  %call6 = call noundef i32 @_ZL24game_020_branch_variableii(i32 noundef 1, i32 noundef 2)
  %add7 = add nsw i32 %xor, %call6
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL18game_020_recursivei(i32 noundef 1)
  %add9 = add nsw i32 %add7, %call8
  %add11 = add nsw i32 %add9, 31
  store i32 %add11, ptr %total, align 4
  %call12 = call noundef i32 @_ZL17game_020_branch_7ii(i32 noundef 1, i32 noundef 5)
  %xor13 = xor i32 %add11, %call12
  store i32 %xor13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i10)
  store i32 6, ptr %x.addr.i8, align 4
  store i32 18, ptr %y.i9, align 4
  br label %for.cond.i13

for.cond.i13:                                     ; preds = %for.body.i17, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_2.exit
  %storemerge44 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_2.exit ], [ %inc.i18, %for.body.i17 ]
  store i32 %storemerge44, ptr %i.i10, align 4
  %cmp.i12 = icmp slt i32 %storemerge44, 4
  br i1 %cmp.i12, label %for.body.i17, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_4.exit

for.body.i17:                                     ; preds = %for.cond.i13
  %11 = load i32, ptr %i.i10, align 4
  %12 = load i32, ptr %x.addr.i8, align 4
  %and.i14 = and i32 %12, 3
  %add1.i15 = add nsw i32 %11, %and.i14
  %13 = load i32, ptr %y.i9, align 4
  %add2.i16 = add nsw i32 %13, %add1.i15
  store i32 %add2.i16, ptr %y.i9, align 4
  %14 = load i32, ptr %i.i10, align 4
  %inc.i18 = add nsw i32 %14, 1
  br label %for.cond.i13, !llvm.loop !8

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_4.exit: ; preds = %for.cond.i13
  %15 = load i32, ptr %y.i9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i10)
  %16 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %16, %15
  store i32 %add15, ptr %total, align 4
  %call16 = call noundef i32 @_ZL16game_020_large_bi(i32 noundef 7)
  %add17 = add nsw i32 %add15, %call16
  store i32 %add17, ptr %total, align 4
  %call18 = call noundef i32 @_ZL24game_020_branch_variableii(i32 noundef 1, i32 noundef 8)
  %add19 = add nsw i32 %add17, %call18
  store i32 %add19, ptr %total, align 4
  %call20 = call noundef i32 @_ZL18game_020_recursivei(i32 noundef 3)
  %xor21 = xor i32 %add19, %call20
  %add23 = add nsw i32 %xor21, 19
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i23)
  store i32 1, ptr %mode.addr.i21, align 4
  store i32 0, ptr %out.i23, align 4
  %17 = load i32, ptr %out.i23, align 4
  %add.i26 = add nsw i32 %17, 2
  store i32 %add.i26, ptr %out.i23, align 4
  %18 = load i32, ptr %mode.addr.i21, align 4
  %and1.i28 = and i32 %18, 2
  %tobool2.i29.not = icmp eq i32 %and1.i28, 0
  br i1 %tobool2.i29.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_6.exit, label %if.then3.i32

if.then3.i32:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_4.exit
  %19 = load i32, ptr %out.i23, align 4
  %xor.i31 = xor i32 %19, 9
  store i32 %xor.i31, ptr %out.i23, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_4.exit, %if.then3.i32
  %20 = load i32, ptr %out.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i23)
  %21 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %21, %20
  store i32 %add25, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i35)
  store i32 1, ptr %x.addr.i33, align 4
  store i32 8, ptr %y.i34, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %for.body.i42, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_6.exit
  %storemerge45 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_6.exit ], [ %inc.i43, %for.body.i42 ]
  store i32 %storemerge45, ptr %i.i35, align 4
  %cmp.i37 = icmp slt i32 %storemerge45, 4
  br i1 %cmp.i37, label %for.body.i42, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_7.exit

for.body.i42:                                     ; preds = %for.cond.i38
  %22 = load i32, ptr %i.i35, align 4
  %23 = load i32, ptr %x.addr.i33, align 4
  %and.i39 = and i32 %23, 3
  %add1.i40 = add nsw i32 %22, %and.i39
  %24 = load i32, ptr %y.i34, align 4
  %add2.i41 = add nsw i32 %24, %add1.i40
  store i32 %add2.i41, ptr %y.i34, align 4
  %25 = load i32, ptr %i.i35, align 4
  %inc.i43 = add nsw i32 %25, 1
  br label %for.cond.i38, !llvm.loop !9

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_020_7.exit: ; preds = %for.cond.i38
  %26 = load i32, ptr %y.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i35)
  %27 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %27, %26
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL16game_020_large_bi(i32 noundef 2)
  %xor29 = xor i32 %add27, %call28
  store i32 %xor29, ptr %total, align 4
  ret i32 %xor29
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_020_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = or i32 %and, 4
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
  %sub = add nsw i32 %mul, -2
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
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_020_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -3
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %5, %6
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_020_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %1 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %1, -2
  %call = call noundef i32 @_ZL18game_020_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_020_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17game_020_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -5
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %5, %6
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
