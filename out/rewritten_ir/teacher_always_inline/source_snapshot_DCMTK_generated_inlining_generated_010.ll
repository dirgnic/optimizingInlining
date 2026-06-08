; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_010.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_010.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_010_entry(i32 noundef %x) #0 {
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
  %add.i3 = add nsw i32 %x, 4
  %mul.i4 = mul nsw i32 %add.i3, 3
  %shr.i5 = ashr i32 %add.i3, 1
  %xor.i6 = xor i32 %mul.i4, %shr.i5
  %add5 = add nsw i32 %xor.i6, 88
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20packet_010_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  %add9 = add nsw i32 %add7, 71
  store i32 %add9, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add.i24 = add nsw i32 %0, 12
  %mul.i25 = shl nsw i32 %add.i24, 1
  %shr.i26 = ashr i32 %add.i24, 1
  %xor.i27 = xor i32 %mul.i25, %shr.i26
  %add1.i28 = add nsw i32 %xor.i27, 15
  %1 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %1, %add1.i28
  %add14 = add nsw i32 %add12, 61
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20packet_010_recursivei(i32 noundef 3)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 1, ptr %x.addr.i36, align 4
  store i32 1, ptr %s.i, align 4
  store i32 6, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %2 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge, %2
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_010_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = load i32, ptr %i.i, align 4
  %mul.i38 = mul nsw i32 %3, %3
  %sub.i = add nsw i32 %mul.i38, -3
  %4 = load i32, ptr %s.i, align 4
  %add1.i39 = add nsw i32 %4, %sub.i
  store i32 %add1.i39, ptr %s.i, align 4
  %and2.i = and i32 %add1.i39, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %5 = load i32, ptr %i.i, align 4
  %6 = load i32, ptr %x.addr.i36, align 4
  %add4.i = add nsw i32 %5, %6
  %7 = load i32, ptr %s.i, align 4
  %xor.i40 = xor i32 %7, %add4.i
  store i32 %xor.i40, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %8 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %8, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_010_8.exit: ; preds = %for.cond.i
  %9 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %10 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %10, %9
  store i32 %add18, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %11, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i42)
  store i32 %add19, ptr %x.addr.i41, align 4
  %and.i43 = and i32 %add19, 3
  %mul.i44 = mul nuw nsw i32 %and.i43, 6
  %add.i45 = add nsw i32 %add19, %mul.i44
  store i32 %add.i45, ptr %s.i42, align 4
  %12 = and i32 %add.i45, 1
  %cmp.i46 = icmp eq i32 %12, 0
  %13 = load i32, ptr %s.i42, align 4
  %add1.i49 = add nsw i32 %13, 1
  %14 = load i32, ptr %s.i42, align 4
  %sub.i47 = add nsw i32 %14, -2
  %storemerge90 = select i1 %cmp.i46, i32 %sub.i47, i32 %add1.i49
  store i32 %storemerge90, ptr %s.i42, align 4
  %15 = load i32, ptr %x.addr.i41, align 4
  %and2.i50 = and i32 %15, 4
  %mul3.i = mul nuw nsw i32 %and2.i50, 7
  %add4.i51 = add nsw i32 %storemerge90, %mul3.i
  store i32 %add4.i51, ptr %s.i42, align 4
  %rem5.i = srem i32 %add4.i51, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %16 = load i32, ptr %s.i42, align 4
  %add10.i = add nsw i32 %16, 3
  %17 = load i32, ptr %s.i42, align 4
  %sub8.i = add nsw i32 %17, -3
  %storemerge91 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge91, ptr %s.i42, align 4
  %18 = load i32, ptr %x.addr.i41, align 4
  %and12.i = shl i32 %18, 3
  %mul13.i = and i32 %and12.i, 40
  %add14.i = add nsw i32 %storemerge91, %mul13.i
  store i32 %add14.i, ptr %s.i42, align 4
  %19 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %19, 0
  %20 = load i32, ptr %s.i42, align 4
  %add20.i = add nsw i32 %20, 5
  %21 = load i32, ptr %s.i42, align 4
  %sub18.i = add nsw i32 %21, -4
  %storemerge92 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge92, ptr %s.i42, align 4
  %22 = load i32, ptr %x.addr.i41, align 4
  %and22.i = and i32 %22, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 9
  %add24.i = add nsw i32 %storemerge92, %mul23.i
  store i32 %add24.i, ptr %s.i42, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %23 = load i32, ptr %s.i42, align 4
  %add30.i = add nsw i32 %23, 7
  %24 = load i32, ptr %s.i42, align 4
  %sub28.i = add nsw i32 %24, -5
  %storemerge93 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge93, ptr %s.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i42)
  %25 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %25, %storemerge93
  store i32 %add21, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i53)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i56)
  store i32 3, ptr %x.addr.i53, align 4
  store i32 3, ptr %s.i54, align 4
  store i32 8, ptr %limit.i55, align 4
  br label %for.cond.i60

for.cond.i60:                                     ; preds = %if.end.i70, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_010_8.exit
  %storemerge94 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_010_8.exit ], [ %inc.i71, %if.end.i70 ]
  store i32 %storemerge94, ptr %i.i56, align 4
  %26 = load i32, ptr %limit.i55, align 4
  %cmp.i59 = icmp slt i32 %storemerge94, %26
  br i1 %cmp.i59, label %for.body.i66, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_010_10.exit

for.body.i66:                                     ; preds = %for.cond.i60
  %27 = load i32, ptr %i.i56, align 4
  %mul.i61 = mul nsw i32 %27, %27
  %sub.i62 = add nsw i32 %mul.i61, -3
  %28 = load i32, ptr %s.i54, align 4
  %add1.i63 = add nsw i32 %28, %sub.i62
  store i32 %add1.i63, ptr %s.i54, align 4
  %and2.i64 = and i32 %add1.i63, 1
  %cmp3.i65 = icmp eq i32 %and2.i64, 0
  br i1 %cmp3.i65, label %if.then.i69, label %if.end.i70

if.then.i69:                                      ; preds = %for.body.i66
  %29 = load i32, ptr %i.i56, align 4
  %30 = load i32, ptr %x.addr.i53, align 4
  %add4.i67 = add nsw i32 %29, %30
  %31 = load i32, ptr %s.i54, align 4
  %xor.i68 = xor i32 %31, %add4.i67
  store i32 %xor.i68, ptr %s.i54, align 4
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i69, %for.body.i66
  %32 = load i32, ptr %i.i56, align 4
  %inc.i71 = add nsw i32 %32, 1
  br label %for.cond.i60, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_010_10.exit: ; preds = %for.cond.i60
  %33 = load i32, ptr %s.i54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i53)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i56)
  %34 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %34, %33
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL20packet_010_recursivei(i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  store i32 %add25, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i72)
  store i32 5, ptr %x.addr.i72, align 4
  %35 = load i32, ptr %x.addr.i72, align 4
  %add.i74 = add nsw i32 %35, 12
  store i32 %add.i74, ptr %retval.i, align 4
  %36 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i72)
  %37 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %37, %36
  store i32 %add27, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %add28 = add nsw i32 %38, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i80)
  store i32 %add28, ptr %x.addr.i80, align 4
  %39 = load i32, ptr %x.addr.i80, align 4
  %xor.i84 = xor i32 %39, 15
  store i32 %xor.i84, ptr %retval.i78, align 4
  %40 = load i32, ptr %retval.i78, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i80)
  %41 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %41, %40
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL20packet_010_recursivei(i32 noundef 2)
  %add32 = add nsw i32 %add30, %call31
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL20packet_010_recursivei(i32 noundef 3)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  ret i32 %add34
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_010_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_010_recursivei(i32 noundef %sub)
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
