; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_017.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_017.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_017_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i78 = alloca i32, align 4
  %t.i80 = alloca i32, align 4
  %mode.addr.i67 = alloca i32, align 4
  %t.i69 = alloca i32, align 4
  %mode.addr.i56 = alloca i32, align 4
  %t.i58 = alloca i32, align 4
  %mode.addr.i45 = alloca i32, align 4
  %t.i47 = alloca i32, align 4
  %mode.addr.i34 = alloca i32, align 4
  %t.i36 = alloca i32, align 4
  %mode.addr.i22 = alloca i32, align 4
  %out.i24 = alloca i32, align 4
  %retval.i10 = alloca i32, align 4
  %x.addr.i12 = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL18image_017_branch_0ii(i32 noundef 0, i32 noundef 0)
  store i32 %call, ptr %total, align 4
  %add1 = add nsw i32 %x, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 %add1, ptr %x.addr.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %xor.i = xor i32 %0, 6
  store i32 %xor.i, ptr %retval.i, align 4
  %1 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %2 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %2, %1
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i1, align 4
  store i32 2, ptr %out.i, align 4
  %3 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %3, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %4 = load i32, ptr %out.i, align 4
  %xor.i5 = xor i32 %4, 3
  store i32 %xor.i5, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit: ; preds = %entry, %if.then3.i
  %5 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %6 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %6, %5
  store i32 %add5, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %7, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i6, align 4
  store i32 %add6, ptr %t.i, align 4
  %8 = load i32, ptr %t.i, align 4
  %9 = load i32, ptr %mode.addr.i6, align 4
  %add1.i = add nsw i32 %9, 1
  %mul.i8 = mul nsw i32 %8, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %10 = load i32, ptr %total, align 4
  %xor = xor i32 %10, %mul.i8
  store i32 %xor, ptr %total, align 4
  %call8 = call noundef i32 @_ZL18image_017_branch_4ii(i32 noundef 1, i32 noundef 4)
  %add9 = add nsw i32 %xor, %call8
  store i32 %add9, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %11, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i12)
  store i32 %add10, ptr %x.addr.i12, align 4
  %12 = load i32, ptr %x.addr.i12, align 4
  %mul.i18 = shl nsw i32 %12, 2
  store i32 %mul.i18, ptr %retval.i10, align 4
  %13 = load i32, ptr %retval.i10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i12)
  %14 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %14, %13
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i24)
  store i32 0, ptr %mode.addr.i22, align 4
  store i32 6, ptr %out.i24, align 4
  %15 = load i32, ptr %mode.addr.i22, align 4
  %and1.i29 = and i32 %15, 2
  %tobool2.i30.not = icmp eq i32 %and1.i29, 0
  br i1 %tobool2.i30.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit, label %if.then3.i33

if.then3.i33:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit
  %16 = load i32, ptr %out.i24, align 4
  %xor.i32 = xor i32 %16, 7
  store i32 %xor.i32, ptr %out.i24, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit, %if.then3.i33
  %17 = load i32, ptr %out.i24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i24)
  %18 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %18, %17
  store i32 %add14, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i36)
  store i32 1, ptr %mode.addr.i34, align 4
  %add.i37 = add nsw i32 %19, 11
  store i32 %add.i37, ptr %t.i36, align 4
  %20 = load i32, ptr %t.i36, align 4
  %21 = load i32, ptr %mode.addr.i34, align 4
  %add1.i39 = add nsw i32 %21, 1
  %mul.i40 = mul nsw i32 %20, %add1.i39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i36)
  %22 = load i32, ptr %total, align 4
  %xor17 = xor i32 %22, %mul.i40
  store i32 %xor17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i47)
  store i32 2, ptr %mode.addr.i45, align 4
  store i32 3, ptr %t.i47, align 4
  %23 = load i32, ptr %t.i47, align 4
  %24 = load i32, ptr %mode.addr.i45, align 4
  %sub.i53 = sub nsw i32 %23, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i47)
  %25 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %25, %sub.i53
  store i32 %add19, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i58)
  store i32 0, ptr %mode.addr.i56, align 4
  %add.i59 = add nsw i32 %26, 11
  store i32 %add.i59, ptr %t.i58, align 4
  %27 = load i32, ptr %t.i58, align 4
  %28 = load i32, ptr %mode.addr.i56, align 4
  %add1.i61 = add nsw i32 %28, 1
  %mul.i62 = mul nsw i32 %27, %add1.i61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i58)
  %29 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %29, %mul.i62
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i69)
  store i32 1, ptr %mode.addr.i67, align 4
  store i32 5, ptr %t.i69, align 4
  %30 = load i32, ptr %t.i69, align 4
  %31 = load i32, ptr %mode.addr.i67, align 4
  %add1.i72 = add nsw i32 %31, 1
  %mul.i73 = mul nsw i32 %30, %add1.i72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i69)
  %32 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %32, %mul.i73
  store i32 %add24, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i80)
  store i32 2, ptr %mode.addr.i78, align 4
  %add.i81 = add nsw i32 %33, 13
  store i32 %add.i81, ptr %t.i80, align 4
  %34 = load i32, ptr %t.i80, align 4
  %35 = load i32, ptr %mode.addr.i78, align 4
  %sub.i86 = sub nsw i32 %34, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i80)
  %36 = load i32, ptr %total, align 4
  %xor27 = xor i32 %36, %sub.i86
  store i32 %xor27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL17image_017_large_ai(i32 noundef 5)
  %add29 = add nsw i32 %xor27, %call28
  store i32 %add29, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %37, 13
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
define internal noundef i32 @_ZL18image_017_branch_0ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 9
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_017_branch_4ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 4
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -4
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_017_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 17
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 18
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 19
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 20
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 21
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 22
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 23
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 24
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
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
