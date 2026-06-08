; ModuleID = './out/rewritten_ir/student_small_mlp/source_snapshot_DCMTK_generated_inlining_generated_017.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_017.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_017_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i83 = alloca i32, align 4
  %t.i85 = alloca i32, align 4
  %mode.addr.i72 = alloca i32, align 4
  %t.i74 = alloca i32, align 4
  %mode.addr.i61 = alloca i32, align 4
  %t.i63 = alloca i32, align 4
  %mode.addr.i50 = alloca i32, align 4
  %t.i52 = alloca i32, align 4
  %mode.addr.i39 = alloca i32, align 4
  %t.i41 = alloca i32, align 4
  %mode.addr.i27 = alloca i32, align 4
  %out.i29 = alloca i32, align 4
  %retval.i11 = alloca i32, align 4
  %mode.addr.i12 = alloca i32, align 4
  %x.addr.i13 = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i6, align 4
  store i32 %add6, ptr %t.i, align 4
  %9 = load i32, ptr %t.i, align 4
  %10 = load i32, ptr %mode.addr.i6, align 4
  %add1.i = add nsw i32 %10, 1
  %mul.i9 = mul nsw i32 %9, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %11 = load i32, ptr %total, align 4
  %xor = xor i32 %11, %mul.i9
  store i32 %xor, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 1, ptr %mode.addr.i12, align 4
  store i32 4, ptr %x.addr.i13, align 4
  %12 = load i32, ptr %mode.addr.i12, align 4
  %cmp1.i17 = icmp eq i32 %12, 1
  br i1 %cmp1.i17, label %if.then2.i20, label %if.end3.i22

if.then2.i20:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit
  %13 = load i32, ptr %x.addr.i13, align 4
  %mul.i19 = mul nsw i32 %13, 3
  store i32 %mul.i19, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit

if.end3.i22:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_1.exit
  %14 = load i32, ptr %mode.addr.i12, align 4
  %cmp4.i21 = icmp eq i32 %14, 2
  br i1 %cmp4.i21, label %if.then5.i24, label %if.end6.i26

if.then5.i24:                                     ; preds = %if.end3.i22
  %15 = load i32, ptr %x.addr.i13, align 4
  %sub.i23 = add nsw i32 %15, -4
  store i32 %sub.i23, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit

if.end6.i26:                                      ; preds = %if.end3.i22
  %16 = load i32, ptr %x.addr.i13, align 4
  %17 = load i32, ptr %mode.addr.i12, align 4
  %add7.i25 = add nsw i32 %16, %17
  store i32 %add7.i25, ptr %retval.i11, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit: ; preds = %if.then2.i20, %if.then5.i24, %if.end6.i26
  %18 = load i32, ptr %retval.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %19 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %19, %18
  store i32 %add9, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %20, 5
  %call11 = call noundef i32 @_ZL18image_017_branch_5ii(i32 noundef 2, i32 noundef %add10)
  %add12 = add nsw i32 %add9, %call11
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i29)
  store i32 0, ptr %mode.addr.i27, align 4
  store i32 6, ptr %out.i29, align 4
  %21 = load i32, ptr %mode.addr.i27, align 4
  %and1.i34 = and i32 %21, 2
  %tobool2.i35.not = icmp eq i32 %and1.i34, 0
  br i1 %tobool2.i35.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit, label %if.then3.i38

if.then3.i38:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit
  %22 = load i32, ptr %out.i29, align 4
  %xor.i37 = xor i32 %22, 7
  store i32 %xor.i37, ptr %out.i29, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_3.exit, %if.then3.i38
  %23 = load i32, ptr %out.i29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i29)
  %24 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %24, %23
  store i32 %add14, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i39)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i41)
  store i32 1, ptr %mode.addr.i39, align 4
  %add.i42 = add nsw i32 %25, 11
  store i32 %add.i42, ptr %t.i41, align 4
  %26 = load i32, ptr %t.i41, align 4
  %27 = load i32, ptr %mode.addr.i39, align 4
  %add1.i44 = add nsw i32 %27, 1
  %mul.i45 = mul nsw i32 %26, %add1.i44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i39)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i41)
  %28 = load i32, ptr %total, align 4
  %xor17 = xor i32 %28, %mul.i45
  store i32 %xor17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i52)
  store i32 2, ptr %mode.addr.i50, align 4
  store i32 3, ptr %t.i52, align 4
  %29 = load i32, ptr %t.i52, align 4
  %30 = load i32, ptr %mode.addr.i50, align 4
  %sub.i58 = sub nsw i32 %29, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i52)
  %31 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %31, %sub.i58
  store i32 %add19, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i61)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i63)
  store i32 0, ptr %mode.addr.i61, align 4
  %add.i64 = add nsw i32 %32, 11
  store i32 %add.i64, ptr %t.i63, align 4
  %33 = load i32, ptr %t.i63, align 4
  %34 = load i32, ptr %mode.addr.i61, align 4
  %add1.i66 = add nsw i32 %34, 1
  %mul.i67 = mul nsw i32 %33, %add1.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i61)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i63)
  %35 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %35, %mul.i67
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i74)
  store i32 1, ptr %mode.addr.i72, align 4
  store i32 5, ptr %t.i74, align 4
  %36 = load i32, ptr %t.i74, align 4
  %37 = load i32, ptr %mode.addr.i72, align 4
  %add1.i77 = add nsw i32 %37, 1
  %mul.i78 = mul nsw i32 %36, %add1.i77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i72)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i74)
  %38 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %38, %mul.i78
  store i32 %add24, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i85)
  store i32 2, ptr %mode.addr.i83, align 4
  %add.i86 = add nsw i32 %39, 13
  store i32 %add.i86, ptr %t.i85, align 4
  %40 = load i32, ptr %t.i85, align 4
  %41 = load i32, ptr %mode.addr.i83, align 4
  %sub.i91 = sub nsw i32 %40, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i85)
  %42 = load i32, ptr %total, align 4
  %xor27 = xor i32 %42, %sub.i91
  %add29 = add nsw i32 %xor27, 27316206
  store i32 %add29, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %43, 13
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
