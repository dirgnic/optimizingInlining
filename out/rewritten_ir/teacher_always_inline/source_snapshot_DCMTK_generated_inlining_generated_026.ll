; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_026.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_026.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_026_dispatch(i32 noundef %x) #0 {
entry:
  %retval.i78 = alloca i32, align 4
  %x.addr.i80 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i72 = alloca i32, align 4
  %x.addr.i53 = alloca i32, align 4
  %s.i54 = alloca i32, align 4
  %limit.i55 = alloca i32, align 4
  %i.i56 = alloca i32, align 4
  %x.addr.i41 = alloca i32, align 4
  %s.i42 = alloca i32, align 4
  %x.addr.i36 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 31, ptr %total, align 4
  %and = and i32 %x, 7
  %add.i3 = or i32 %and, 8
  %mul.i4 = shl nuw nsw i32 %add.i3, 2
  %0 = lshr i32 %add.i3, 1
  %xor.i6 = xor i32 %mul.i4, %0
  %add1.i7 = add nuw nsw i32 %xor.i6, 10
  %1 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %1, %add1.i7
  store i32 %add2, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %2, 7
  %add.i10 = add nuw nsw i32 %and3, 9
  %mul.i11 = mul nuw nsw i32 %add.i10, 5
  %3 = lshr i32 %add.i10, 1
  %xor.i13 = xor i32 %mul.i11, %3
  %add1.i14 = add nuw nsw i32 %xor.i13, 11
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, %add1.i14
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor = xor i32 %add5, %call6
  store i32 %xor, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %5, 7
  %add.i17 = add nuw nsw i32 %and7, 11
  %mul.i18 = shl nuw nsw i32 %add.i17, 1
  %6 = lshr i32 %add.i17, 1
  %xor.i20 = xor i32 %mul.i18, %6
  %add1.i21 = add nuw nsw i32 %xor.i20, 13
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %add1.i21
  store i32 %add9, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %8, 7
  %add.i24 = add nuw nsw i32 %and10, 12
  %mul.i25 = mul nuw nsw i32 %add.i24, 3
  %9 = lshr i32 %add.i24, 1
  %xor.i27 = xor i32 %mul.i25, %9
  %add1.i28 = add nuw nsw i32 %xor.i27, 14
  %10 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %10, %add1.i28
  %add14 = add nsw i32 %add12, 84
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor16 = xor i32 %add14, %call15
  store i32 %xor16, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %11, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %and17, ptr %x.addr.i36, align 4
  store i32 %and17, ptr %s.i, align 4
  %and.i = and i32 %11, 3
  %add.i37 = add nuw nsw i32 %and.i, 5
  store i32 %add.i37, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %12 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %12
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %13 = load i32, ptr %i.i, align 4
  %mul.i38 = mul nsw i32 %13, %13
  %sub.i = add nsw i32 %mul.i38, -5
  %14 = load i32, ptr %s.i, align 4
  %add1.i39 = add nsw i32 %14, %sub.i
  store i32 %add1.i39, ptr %s.i, align 4
  %and2.i = and i32 %add1.i39, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %15 = load i32, ptr %i.i, align 4
  %16 = load i32, ptr %x.addr.i36, align 4
  %add4.i = add nsw i32 %15, %16
  %17 = load i32, ptr %s.i, align 4
  %xor.i40 = xor i32 %17, %add4.i
  store i32 %xor.i40, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %18 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %18, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_8.exit: ; preds = %for.cond.i
  %19 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %20 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %20, %19
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i42)
  store i32 9, ptr %x.addr.i41, align 4
  store i32 20, ptr %s.i42, align 4
  %21 = load i32, ptr %s.i42, align 4
  %sub.i47 = add nsw i32 %21, -3
  store i32 %sub.i47, ptr %s.i42, align 4
  %22 = load i32, ptr %x.addr.i41, align 4
  %and2.i50 = and i32 %22, 4
  %mul3.i = mul nuw nsw i32 %and2.i50, 12
  %add4.i51 = add nsw i32 %sub.i47, %mul3.i
  store i32 %add4.i51, ptr %s.i42, align 4
  %rem5.i = srem i32 %add4.i51, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %23 = load i32, ptr %s.i42, align 4
  %add10.i = add nsw i32 %23, 3
  %24 = load i32, ptr %s.i42, align 4
  %sub8.i = add nsw i32 %24, -4
  %storemerge91 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge91, ptr %s.i42, align 4
  %25 = load i32, ptr %x.addr.i41, align 4
  %and12.i = and i32 %25, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 13
  %add14.i = add nsw i32 %storemerge91, %mul13.i
  store i32 %add14.i, ptr %s.i42, align 4
  %26 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %26, 0
  %27 = load i32, ptr %s.i42, align 4
  %add20.i = add nsw i32 %27, 5
  %28 = load i32, ptr %s.i42, align 4
  %sub18.i = add nsw i32 %28, -5
  %storemerge92 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge92, ptr %s.i42, align 4
  %29 = load i32, ptr %x.addr.i41, align 4
  %and22.i = and i32 %29, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 14
  %add24.i = add nsw i32 %storemerge92, %mul23.i
  store i32 %add24.i, ptr %s.i42, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %30 = load i32, ptr %s.i42, align 4
  %add30.i = add nsw i32 %30, 7
  %31 = load i32, ptr %s.i42, align 4
  %sub28.i = add nsw i32 %31, -6
  %storemerge93 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge93, ptr %s.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i42)
  %32 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %32, %storemerge93
  store i32 %add21, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %33, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i53)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i56)
  store i32 %and22, ptr %x.addr.i53, align 4
  store i32 %and22, ptr %s.i54, align 4
  %and.i57 = and i32 %33, 3
  %add.i58 = add nuw nsw i32 %and.i57, 5
  store i32 %add.i58, ptr %limit.i55, align 4
  br label %for.cond.i60

for.cond.i60:                                     ; preds = %if.end.i70, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_8.exit
  %storemerge94 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_8.exit ], [ %inc.i71, %if.end.i70 ]
  store i32 %storemerge94, ptr %i.i56, align 4
  %34 = load i32, ptr %limit.i55, align 4
  %cmp.i59 = icmp slt i32 %storemerge94, %34
  br i1 %cmp.i59, label %for.body.i66, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_10.exit

for.body.i66:                                     ; preds = %for.cond.i60
  %35 = load i32, ptr %i.i56, align 4
  %mul.i61 = mul nsw i32 %35, %35
  %sub.i62 = add nsw i32 %mul.i61, -5
  %36 = load i32, ptr %s.i54, align 4
  %add1.i63 = add nsw i32 %36, %sub.i62
  store i32 %add1.i63, ptr %s.i54, align 4
  %and2.i64 = and i32 %add1.i63, 1
  %cmp3.i65 = icmp eq i32 %and2.i64, 0
  br i1 %cmp3.i65, label %if.then.i69, label %if.end.i70

if.then.i69:                                      ; preds = %for.body.i66
  %37 = load i32, ptr %i.i56, align 4
  %38 = load i32, ptr %x.addr.i53, align 4
  %add4.i67 = add nsw i32 %37, %38
  %39 = load i32, ptr %s.i54, align 4
  %xor.i68 = xor i32 %39, %add4.i67
  store i32 %xor.i68, ptr %s.i54, align 4
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i69, %for.body.i66
  %40 = load i32, ptr %i.i56, align 4
  %inc.i71 = add nsw i32 %40, 1
  br label %for.cond.i60, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_10.exit: ; preds = %for.cond.i60
  %41 = load i32, ptr %s.i54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i53)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i56)
  %42 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %42, %41
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor26 = xor i32 %add24, %call25
  store i32 %xor26, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i72)
  store i32 12, ptr %x.addr.i72, align 4
  %43 = load i32, ptr %x.addr.i72, align 4
  %mul.i76 = mul nsw i32 %43, 5
  store i32 %mul.i76, ptr %retval.i, align 4
  %44 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i72)
  %45 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %45, %44
  store i32 %add28, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %46, 3
  %and30 = and i32 %46, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i80)
  store i32 %and30, ptr %x.addr.i80, align 4
  switch i32 %and29, label %sw.default.i89 [
    i32 0, label %sw.bb.i83
    i32 1, label %sw.bb1.i85
    i32 2, label %sw.bb2.i87
  ]

sw.bb.i83:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_10.exit
  %47 = load i32, ptr %x.addr.i80, align 4
  %add.i82 = add nsw i32 %47, 6
  store i32 %add.i82, ptr %retval.i78, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_13.exit

sw.bb1.i85:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_10.exit
  %48 = load i32, ptr %x.addr.i80, align 4
  %xor.i84 = xor i32 %48, 14
  store i32 %xor.i84, ptr %retval.i78, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_13.exit

sw.bb2.i87:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_10.exit
  %49 = load i32, ptr %x.addr.i80, align 4
  %mul.i86 = mul nsw i32 %49, 5
  store i32 %mul.i86, ptr %retval.i78, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_13.exit

sw.default.i89:                                   ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_10.exit
  %50 = load i32, ptr %x.addr.i80, align 4
  %sub.i88 = add nsw i32 %50, -6
  store i32 %sub.i88, ptr %retval.i78, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_026_13.exit: ; preds = %sw.bb.i83, %sw.bb1.i85, %sw.bb2.i87, %sw.default.i89
  %51 = load i32, ptr %retval.i78, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i80)
  %52 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %52, %51
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 2)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor36 = xor i32 %add34, %call35
  store i32 %xor36, ptr %total, align 4
  ret i32 %xor36
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_026_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }

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
