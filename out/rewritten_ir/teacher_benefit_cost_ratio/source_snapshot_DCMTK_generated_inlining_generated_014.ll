; ModuleID = './out/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_DCMTK_generated_inlining_generated_014.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_014.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_014_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i52 = alloca i32, align 4
  %out.i54 = alloca i32, align 4
  %mode.addr.i40 = alloca i32, align 4
  %out.i42 = alloca i32, align 4
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
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 17
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %4, 1
  %add.i2 = shl i32 %4, 2
  %sub.i = add i32 %add.i2, 30
  %and.i3 = and i32 %add1, 15
  %xor.i4 = xor i32 %sub.i, %and.i3
  %5 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %5, %xor.i4
  %add5 = add nsw i32 %add3, 39
  store i32 %add5, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %6, 3
  %add.i14 = shl i32 %6, 2
  %sub.i16 = add i32 %add.i14, 44
  %and.i17 = and i32 %add6, 15
  %xor.i18 = xor i32 %sub.i16, %and.i17
  %7 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %7, %xor.i18
  %add10 = add nsw i32 %add8, 55
  store i32 %add10, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %8, 5
  %call12 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 2, i32 noundef %add11)
  %add13 = add nsw i32 %add10, %call12
  %add15 = add nsw i32 %add13, 71
  store i32 %add15, ptr %total, align 4
  %add16 = add nsw i32 %8, 7
  %add.i35 = shl i32 %8, 2
  %sub.i37 = add i32 %add.i35, 72
  %and.i38 = and i32 %add16, 15
  %xor.i39 = xor i32 %sub.i37, %and.i38
  %add18 = add nsw i32 %add15, %xor.i39
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL18packet_014_large_ai(i32 noundef 1)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %9, 9
  %call22 = call noundef i32 @_ZL18packet_014_large_bi(i32 noundef %add21)
  %add23 = add nsw i32 %add20, %call22
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i42)
  store i32 1, ptr %mode.addr.i40, align 4
  store i32 3, ptr %out.i42, align 4
  %10 = load i32, ptr %out.i42, align 4
  %add.i45 = add nsw i32 %10, 7
  store i32 %add.i45, ptr %out.i42, align 4
  %11 = load i32, ptr %mode.addr.i40, align 4
  %and1.i47 = and i32 %11, 2
  %tobool2.i48.not = icmp eq i32 %and1.i47, 0
  br i1 %tobool2.i48.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_7.exit, label %if.then3.i51

if.then3.i51:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit
  %12 = load i32, ptr %out.i42, align 4
  %xor.i50 = xor i32 %12, 17
  store i32 %xor.i50, ptr %out.i42, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_7.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_0.exit, %if.then3.i51
  %13 = load i32, ptr %out.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i42)
  %14 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %14, %13
  store i32 %add25, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %15, 11
  %call27 = call noundef i32 @_ZL18packet_014_large_bi(i32 noundef %add26)
  %add28 = add nsw i32 %add25, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i54)
  store i32 0, ptr %mode.addr.i52, align 4
  store i32 5, ptr %out.i54, align 4
  %16 = load i32, ptr %mode.addr.i52, align 4
  %and1.i59 = and i32 %16, 2
  %tobool2.i60.not = icmp eq i32 %and1.i59, 0
  br i1 %tobool2.i60.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_8.exit, label %if.then3.i63

if.then3.i63:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_7.exit
  %17 = load i32, ptr %out.i54, align 4
  %xor.i62 = xor i32 %17, 17
  store i32 %xor.i62, ptr %out.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_8.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_014_7.exit, %if.then3.i63
  %18 = load i32, ptr %out.i54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i54)
  %19 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %19, %18
  store i32 %add30, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %20, 13
  %call32 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 1, i32 noundef %add31)
  %add33 = add nsw i32 %add30, %call32
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef 2)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %21, 15
  %call37 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 0, i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  store i32 %add38, ptr %total, align 4
  ret i32 %add38
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %out, align 4
  %and = and i32 %mode, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %out, align 4
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 17
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_014_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 2
  %mul = and i32 %and, 12
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -4
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 5
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -5
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 6
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -6
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 7
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -7
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_014_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 31
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 32
  %shr3 = ashr exact i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 33
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 34
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 35
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 36
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 37
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 38
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_014_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
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
