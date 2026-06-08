; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_025.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_025.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_025_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr.i92 = alloca i32, align 4
  %s.i93 = alloca i32, align 4
  %x.addr.i82 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %retval.i70 = alloca i32, align 4
  %x.addr.i72 = alloca i32, align 4
  %retval.i58 = alloca i32, align 4
  %x.addr.i60 = alloca i32, align 4
  %retval.i50 = alloca i32, align 4
  %x.addr.i52 = alloca i32, align 4
  %retval.i34 = alloca i32, align 4
  %x.addr.i36 = alloca i32, align 4
  %mode.addr.i24 = alloca i32, align 4
  %t.i26 = alloca i32, align 4
  %mode.addr.i12 = alloca i32, align 4
  %out.i14 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i4 = alloca i32, align 4
  %x.addr.i5 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 0, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 9
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i1, align 4
  %add.i3 = add nsw i32 %4, 2
  store i32 %add.i3, ptr %t.i, align 4
  %5 = load i32, ptr %t.i, align 4
  %6 = load i32, ptr %mode.addr.i1, align 4
  %add1.i = add nsw i32 %6, 1
  %mul.i = mul nsw i32 %5, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %7 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %7, %mul.i
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i5)
  store i32 2, ptr %mode.addr.i4, align 4
  store i32 2, ptr %x.addr.i5, align 4
  %8 = load i32, ptr %mode.addr.i4, align 4
  %cmp1.i = icmp eq i32 %8, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_0.exit
  %9 = load i32, ptr %x.addr.i5, align 4
  %mul.i10 = mul nsw i32 %9, 5
  store i32 %mul.i10, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_2.exit

if.end3.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_0.exit
  %10 = load i32, ptr %mode.addr.i4, align 4
  %cmp4.i = icmp eq i32 %10, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %11 = load i32, ptr %x.addr.i5, align 4
  %sub.i11 = add nsw i32 %11, -5
  store i32 %sub.i11, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_2.exit

if.end6.i:                                        ; preds = %if.end3.i
  %12 = load i32, ptr %x.addr.i5, align 4
  %13 = load i32, ptr %mode.addr.i4, align 4
  %add7.i = add nsw i32 %12, %13
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_2.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %14 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i5)
  %15 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %15, %14
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL19image_025_recursivei(i32 noundef 3)
  %xor = xor i32 %add5, %call6
  store i32 %xor, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i14)
  store i32 1, ptr %mode.addr.i12, align 4
  store i32 4, ptr %out.i14, align 4
  %16 = load i32, ptr %out.i14, align 4
  %add.i17 = add nsw i32 %16, 6
  store i32 %add.i17, ptr %out.i14, align 4
  %17 = load i32, ptr %mode.addr.i12, align 4
  %and1.i19 = and i32 %17, 2
  %tobool2.i20.not = icmp eq i32 %and1.i19, 0
  br i1 %tobool2.i20.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_4.exit, label %if.then3.i23

if.then3.i23:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_2.exit
  %18 = load i32, ptr %out.i14, align 4
  %xor.i22 = xor i32 %18, 13
  store i32 %xor.i22, ptr %out.i14, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_4.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_2.exit, %if.then3.i23
  %19 = load i32, ptr %out.i14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i14)
  %20 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %20, %19
  store i32 %add8, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add9 = add nsw i32 %21, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i26)
  store i32 2, ptr %mode.addr.i24, align 4
  store i32 %add9, ptr %t.i26, align 4
  %22 = load i32, ptr %t.i26, align 4
  %23 = load i32, ptr %mode.addr.i24, align 4
  %sub.i31 = sub nsw i32 %22, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i26)
  %24 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %24, %sub.i31
  store i32 %add11, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  store i32 6, ptr %x.addr.i36, align 4
  %25 = load i32, ptr %x.addr.i36, align 4
  %add.i38 = add nsw i32 %25, 5
  store i32 %add.i38, ptr %retval.i34, align 4
  %26 = load i32, ptr %retval.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  %27 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %27, %26
  store i32 %add13, ptr %total, align 4
  %call14 = call noundef i32 @_ZL19image_025_recursivei(i32 noundef 3)
  %xor15 = xor i32 %add13, %call14
  store i32 %xor15, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i52)
  store i32 1, ptr %x.addr.i52, align 4
  %28 = load i32, ptr %x.addr.i52, align 4
  %mul.i56 = shl nsw i32 %28, 2
  store i32 %mul.i56, ptr %retval.i50, align 4
  %29 = load i32, ptr %retval.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i52)
  %30 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %30, %29
  store i32 %add17, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %add18 = add nsw i32 %31, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i58)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i60)
  store i32 %add18, ptr %x.addr.i60, align 4
  %32 = load i32, ptr %x.addr.i60, align 4
  %add.i62 = add nsw i32 %32, 5
  store i32 %add.i62, ptr %retval.i58, align 4
  %33 = load i32, ptr %retval.i58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i58)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i60)
  %34 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %34, %33
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i72)
  store i32 3, ptr %x.addr.i72, align 4
  %35 = load i32, ptr %x.addr.i72, align 4
  %xor.i76 = xor i32 %35, 13
  store i32 %xor.i76, ptr %retval.i70, align 4
  %36 = load i32, ptr %retval.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i72)
  %37 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %37, %36
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL19image_025_recursivei(i32 noundef 3)
  %xor24 = xor i32 %add22, %call23
  store i32 %xor24, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i82)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 5, ptr %x.addr.i82, align 4
  store i32 5, ptr %s.i, align 4
  store i32 5, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i91, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_4.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_4.exit ], [ %inc.i, %if.end.i91 ]
  store i32 %storemerge, ptr %i.i, align 4
  %38 = load i32, ptr %limit.i, align 4
  %cmp.i85 = icmp slt i32 %storemerge, %38
  br i1 %cmp.i85, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_12.exit

for.body.i:                                       ; preds = %for.cond.i
  %39 = load i32, ptr %i.i, align 4
  %mul.i86 = mul nsw i32 %39, %39
  %sub.i87 = add nsw i32 %mul.i86, -4
  %40 = load i32, ptr %s.i, align 4
  %add1.i88 = add nsw i32 %40, %sub.i87
  store i32 %add1.i88, ptr %s.i, align 4
  %and2.i = and i32 %add1.i88, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i90, label %if.end.i91

if.then.i90:                                      ; preds = %for.body.i
  %41 = load i32, ptr %i.i, align 4
  %42 = load i32, ptr %x.addr.i82, align 4
  %add4.i = add nsw i32 %41, %42
  %43 = load i32, ptr %s.i, align 4
  %xor.i89 = xor i32 %43, %add4.i
  store i32 %xor.i89, ptr %s.i, align 4
  br label %if.end.i91

if.end.i91:                                       ; preds = %if.then.i90, %for.body.i
  %44 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %44, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_025_12.exit: ; preds = %for.cond.i
  %45 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i82)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %46 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %46, %45
  store i32 %add26, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %add27 = add nsw i32 %47, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i93)
  store i32 %add27, ptr %x.addr.i92, align 4
  %and.i94 = and i32 %add27, 3
  %mul.i95 = mul nuw nsw i32 %and.i94, 10
  %add.i96 = add nsw i32 %add27, %mul.i95
  store i32 %add.i96, ptr %s.i93, align 4
  %48 = and i32 %add.i96, 1
  %cmp.i97 = icmp eq i32 %48, 0
  %49 = load i32, ptr %s.i93, align 4
  %add1.i100 = add nsw i32 %49, 1
  %50 = load i32, ptr %s.i93, align 4
  %sub.i98 = add nsw i32 %50, -2
  %storemerge104 = select i1 %cmp.i97, i32 %sub.i98, i32 %add1.i100
  store i32 %storemerge104, ptr %s.i93, align 4
  %51 = load i32, ptr %x.addr.i92, align 4
  %and2.i101 = and i32 %51, 4
  %mul3.i = mul nuw nsw i32 %and2.i101, 11
  %add4.i102 = add nsw i32 %storemerge104, %mul3.i
  store i32 %add4.i102, ptr %s.i93, align 4
  %rem5.i = srem i32 %add4.i102, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %52 = load i32, ptr %s.i93, align 4
  %add10.i = add nsw i32 %52, 3
  %53 = load i32, ptr %s.i93, align 4
  %sub8.i = add nsw i32 %53, -3
  %storemerge105 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge105, ptr %s.i93, align 4
  %54 = load i32, ptr %x.addr.i92, align 4
  %and12.i = and i32 %54, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 12
  %add14.i = add nsw i32 %storemerge105, %mul13.i
  store i32 %add14.i, ptr %s.i93, align 4
  %55 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %55, 0
  %56 = load i32, ptr %s.i93, align 4
  %add20.i = add nsw i32 %56, 5
  %57 = load i32, ptr %s.i93, align 4
  %sub18.i = add nsw i32 %57, -4
  %storemerge106 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge106, ptr %s.i93, align 4
  %58 = load i32, ptr %x.addr.i92, align 4
  %and22.i = and i32 %58, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 13
  %add24.i = add nsw i32 %storemerge106, %mul23.i
  store i32 %add24.i, ptr %s.i93, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %59 = load i32, ptr %s.i93, align 4
  %add30.i = add nsw i32 %59, 7
  %60 = load i32, ptr %s.i93, align 4
  %sub28.i = add nsw i32 %60, -5
  %storemerge107 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge107, ptr %s.i93, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i93)
  %61 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %61, %storemerge107
  store i32 %add29, ptr %total, align 4
  %call30 = call noundef i32 @_ZL19image_025_recursivei(i32 noundef 2)
  %add31 = add nsw i32 %add29, %call30
  store i32 %add31, ptr %total, align 4
  %call32 = call noundef i32 @_ZL19image_025_recursivei(i32 noundef 3)
  %xor33 = xor i32 %add31, %call32
  store i32 %xor33, ptr %total, align 4
  ret i32 %xor33
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_025_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_025_recursivei(i32 noundef %sub)
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
