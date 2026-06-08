; ModuleID = './out/rewritten_ir/student_knn/source_snapshot_DCMTK_generated_inlining_generated_017.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_017.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_017_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i22 = alloca i32, align 4
  %out.i24 = alloca i32, align 4
  %retval.i6 = alloca i32, align 4
  %mode.addr.i7 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 0, ptr %x.addr.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 9
  store i32 %add.i, ptr %retval.i, align 4
  %1 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %3, 1
  %call2 = call noundef i32 @_ZL18image_017_branch_1ii(i32 noundef 1, i32 noundef %add1)
  %add3 = add nsw i32 %add, %call2
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i1, align 4
  store i32 2, ptr %out.i, align 4
  %4 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %4, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %5 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %5, 3
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit: ; preds = %entry, %if.then3.i
  %6 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %7 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %7, %6
  store i32 %add5, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %8, 3
  %call7 = call noundef i32 @_ZL18image_017_branch_3ii(i32 noundef 0, i32 noundef %add6)
  %xor = xor i32 %add5, %call7
  store i32 %xor, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  store i32 1, ptr %mode.addr.i7, align 4
  store i32 4, ptr %x.addr.i8, align 4
  %9 = load i32, ptr %mode.addr.i7, align 4
  %cmp1.i12 = icmp eq i32 %9, 1
  br i1 %cmp1.i12, label %if.then2.i15, label %if.end3.i17

if.then2.i15:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit
  %10 = load i32, ptr %x.addr.i8, align 4
  %mul.i14 = mul nsw i32 %10, 3
  store i32 %mul.i14, ptr %retval.i6, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit

if.end3.i17:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit
  %11 = load i32, ptr %mode.addr.i7, align 4
  %cmp4.i16 = icmp eq i32 %11, 2
  br i1 %cmp4.i16, label %if.then5.i19, label %if.end6.i21

if.then5.i19:                                     ; preds = %if.end3.i17
  %12 = load i32, ptr %x.addr.i8, align 4
  %sub.i18 = add nsw i32 %12, -4
  store i32 %sub.i18, ptr %retval.i6, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit

if.end6.i21:                                      ; preds = %if.end3.i17
  %13 = load i32, ptr %x.addr.i8, align 4
  %14 = load i32, ptr %mode.addr.i7, align 4
  %add7.i20 = add nsw i32 %13, %14
  store i32 %add7.i20, ptr %retval.i6, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit: ; preds = %if.then2.i15, %if.then5.i19, %if.end6.i21
  %15 = load i32, ptr %retval.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  %16 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %16, %15
  store i32 %add9, ptr %total, align 4
  %17 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %17, 5
  %call11 = call noundef i32 @_ZL18image_017_branch_5ii(i32 noundef 2, i32 noundef %add10)
  %add12 = add nsw i32 %add9, %call11
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i24)
  store i32 0, ptr %mode.addr.i22, align 4
  store i32 6, ptr %out.i24, align 4
  %18 = load i32, ptr %mode.addr.i22, align 4
  %and1.i29 = and i32 %18, 2
  %tobool2.i30.not = icmp eq i32 %and1.i29, 0
  br i1 %tobool2.i30.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit, label %if.then3.i33

if.then3.i33:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit
  %19 = load i32, ptr %out.i24, align 4
  %xor.i32 = xor i32 %19, 7
  store i32 %xor.i32, ptr %out.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit, %if.then3.i33
  %20 = load i32, ptr %out.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i24)
  %21 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %21, %20
  store i32 %add14, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %22, 7
  %call16 = call noundef i32 @_ZL18image_017_branch_7ii(i32 noundef 1, i32 noundef %add15)
  %xor17 = xor i32 %add14, %call16
  store i32 %xor17, ptr %total, align 4
  %call18 = call noundef i32 @_ZL25image_017_branch_variableii(i32 noundef 2, i32 noundef 1)
  %add19 = add nsw i32 %xor17, %call18
  store i32 %add19, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %23, 9
  %call21 = call noundef i32 @_ZL25image_017_branch_variableii(i32 noundef 0, i32 noundef %add20)
  %add22 = add nsw i32 %add19, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL25image_017_branch_variableii(i32 noundef 1, i32 noundef 3)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %24 = load i32, ptr %x.addr, align 4
  %add25 = add nsw i32 %24, 11
  %call26 = call noundef i32 @_ZL25image_017_branch_variableii(i32 noundef 2, i32 noundef %add25)
  %xor27 = xor i32 %add24, %call26
  %add29 = add nsw i32 %xor27, 27316206
  store i32 %add29, ptr %total, align 4
  %add30 = add nsw i32 %24, 13
  %call31 = call noundef i32 @_ZL17image_017_large_bi(i32 noundef %add30)
  %add32 = add nsw i32 %add29, %call31
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL19image_017_recursivei(i32 noundef 2)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL19image_017_recursivei(i32 noundef 3)
  %xor36 = xor i32 %add34, %call35
  store i32 %xor36, ptr %total, align 4
  ret i32 %xor36
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_017_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %sub = add nsw i32 %3, -5
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_017_branch_3ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL18image_017_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %1, 10
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %2, 2
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_017_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL25image_017_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_017_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 8
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_017_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_017_recursivei(i32 noundef %sub)
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
