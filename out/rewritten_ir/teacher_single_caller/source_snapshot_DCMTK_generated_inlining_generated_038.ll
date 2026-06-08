; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_DCMTK_generated_inlining_generated_038.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_038.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_038_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i27 = alloca i32, align 4
  %t.i29 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i12 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %mul.i = mul nsw i32 %x, 6
  %add.i = add nsw i32 %mul.i, 4
  store i32 %add.i, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  %add.i2 = add nsw i32 %x, 5
  store i32 %add.i2, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i3 = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i3, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %cond.i
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %5, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit
  %6 = load i32, ptr %x.addr, align 4
  %add.i5 = add nsw i32 %6, 12
  %mul.i6 = shl nsw i32 %add.i5, 1
  %shr.i = ashr i32 %add.i5, 1
  %xor.i = xor i32 %mul.i6, %shr.i
  %add1.i7 = add nsw i32 %xor.i, 6
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %add1.i7
  store i32 %add9, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_1.exit
  %8 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %8, 3
  %call11 = call noundef i32 @_ZL18packet_038_large_bi(i32 noundef %add10)
  %9 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %9, %call11
  store i32 %add12, ptr %total, align 4
  %and13 = and i32 %8, 3
  %10 = load i32, ptr %x.addr, align 4
  %add14 = add nsw i32 %10, 4
  %call15 = call noundef i32 @_ZL26packet_038_branch_variableii(i32 noundef %and13, i32 noundef %add14)
  %add16 = add nsw i32 %add12, %call15
  store i32 %add16, ptr %total, align 4
  %11 = and i32 %10, 1
  %tobool19.not.not = icmp eq i32 %11, 0
  br i1 %tobool19.not.not, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end
  %call21 = call noundef i32 @_ZL20packet_038_recursivei(i32 noundef 1)
  %12 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %12, %call21
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end
  %13 = load i32, ptr %x.addr, align 4
  %add24 = shl i32 %13, 1
  %add.i10 = add i32 %add24, 15
  %14 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %14, %add.i10
  store i32 %add26, ptr %total, align 4
  %and27 = and i32 %13, 3
  %15 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %15, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i12)
  store i32 %add28, ptr %x.addr.i12, align 4
  switch i32 %and27, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end23
  %16 = load i32, ptr %x.addr.i12, align 4
  %add.i13 = add nsw i32 %16, 3
  store i32 %add.i13, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

sw.bb1.i:                                         ; preds = %if.end23
  %17 = load i32, ptr %x.addr.i12, align 4
  %xor.i14 = xor i32 %17, 16
  store i32 %xor.i14, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

sw.bb2.i:                                         ; preds = %if.end23
  %18 = load i32, ptr %x.addr.i12, align 4
  %mul.i15 = mul nsw i32 %18, 3
  store i32 %mul.i15, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

sw.default.i:                                     ; preds = %if.end23
  %19 = load i32, ptr %x.addr.i12, align 4
  %sub.i16 = add nsw i32 %19, -4
  store i32 %sub.i16, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.bb2.i, %sw.default.i
  %20 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i12)
  %21 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %21, %20
  store i32 %add30, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %22, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit
  %23 = load i32, ptr %x.addr, align 4
  %add.i19 = add nsw i32 %23, 16
  %mul.i20 = mul nsw i32 %add.i19, 5
  %shr.i21 = ashr i32 %add.i19, 1
  %xor.i22 = xor i32 %mul.i20, %shr.i21
  %add1.i23 = add nsw i32 %xor.i22, 4
  %24 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %24, %add1.i23
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_4.exit
  %25 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %25, 9
  %call40 = call noundef i32 @_ZL18packet_038_large_bi(i32 noundef %add39)
  %26 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %26, %call40
  store i32 %add41, ptr %total, align 4
  %and42 = and i32 %25, 3
  %27 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %27, 10
  %call44 = call noundef i32 @_ZL26packet_038_branch_variableii(i32 noundef %and42, i32 noundef %add43)
  %add45 = add nsw i32 %add41, %call44
  store i32 %add45, ptr %total, align 4
  %28 = and i32 %27, 1
  %tobool48.not.not = icmp eq i32 %28, 0
  br i1 %tobool48.not.not, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end38
  %call50 = call noundef i32 @_ZL20packet_038_recursivei(i32 noundef 3)
  %29 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %29, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38
  %30 = load i32, ptr %x.addr, align 4
  %31 = mul i32 %30, 5
  %add.i26 = add i32 %31, 61
  %32 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %32, %add.i26
  store i32 %add55, ptr %total, align 4
  %and56 = and i32 %30, 3
  %33 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i29)
  store i32 %and56, ptr %mode.addr.i27, align 4
  %add.i30 = add nsw i32 %33, 16
  store i32 %add.i30, ptr %t.i29, align 4
  %cmp.i31 = icmp ult i32 %and56, 2
  br i1 %cmp.i31, label %cond.true.i34, label %cond.false.i36

cond.true.i34:                                    ; preds = %if.end52
  %34 = load i32, ptr %t.i29, align 4
  %35 = load i32, ptr %mode.addr.i27, align 4
  %add1.i32 = add nsw i32 %35, 1
  %mul.i33 = mul nsw i32 %34, %add1.i32
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit

cond.false.i36:                                   ; preds = %if.end52
  %36 = load i32, ptr %t.i29, align 4
  %37 = load i32, ptr %mode.addr.i27, align 4
  %sub.i35 = sub nsw i32 %36, %37
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit: ; preds = %cond.true.i34, %cond.false.i36
  %cond.i37 = phi i32 [ %mul.i33, %cond.true.i34 ], [ %sub.i35, %cond.false.i36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i29)
  %38 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %38, %cond.i37
  store i32 %add59, ptr %total, align 4
  %39 = load i32, ptr %x.addr, align 4
  %and61 = and i32 %39, 1
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end67, label %if.then63

if.then63:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit
  %40 = load i32, ptr %x.addr, align 4
  %add.i40 = add nsw i32 %40, 17
  %mul.i41 = mul nsw i32 %add.i40, 6
  %shr.i42 = ashr i32 %add.i40, 1
  %xor.i43 = xor i32 %mul.i41, %shr.i42
  %add1.i44 = add nsw i32 %xor.i43, 10
  %41 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %41, %add1.i44
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_038_7.exit
  %42 = load i32, ptr %x.addr, align 4
  %add68 = add nsw i32 %42, 15
  %call69 = call noundef i32 @_ZL18packet_038_large_bi(i32 noundef %add68)
  %43 = load i32, ptr %total, align 4
  %add70 = add nsw i32 %43, %call69
  store i32 %add70, ptr %total, align 4
  ret i32 %add70
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_038_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %add = add nsw i32 %and, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 1
  %mul3 = and i32 %and2, 8
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
  %mul13 = mul nuw nsw i32 %and12, 3
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
  %and22 = shl i32 %10, 2
  %mul23 = and i32 %and22, 24
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
define internal noundef i32 @_ZL26packet_038_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 9
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_038_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_038_recursivei(i32 noundef %sub)
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
