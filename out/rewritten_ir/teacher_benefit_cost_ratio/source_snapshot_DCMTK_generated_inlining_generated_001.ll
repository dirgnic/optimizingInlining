; ModuleID = './out/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_DCMTK_generated_inlining_generated_001.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_001.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_001_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i104 = alloca i32, align 4
  %t.i106 = alloca i32, align 4
  %mode.addr.i93 = alloca i32, align 4
  %t.i95 = alloca i32, align 4
  %mode.addr.i82 = alloca i32, align 4
  %t.i84 = alloca i32, align 4
  %mode.addr.i71 = alloca i32, align 4
  %t.i73 = alloca i32, align 4
  %mode.addr.i60 = alloca i32, align 4
  %t.i62 = alloca i32, align 4
  %mode.addr.i48 = alloca i32, align 4
  %out.i50 = alloca i32, align 4
  %retval.i36 = alloca i32, align 4
  %x.addr.i38 = alloca i32, align 4
  %retval.i20 = alloca i32, align 4
  %mode.addr.i21 = alloca i32, align 4
  %x.addr.i22 = alloca i32, align 4
  %mode.addr.i14 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i7 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i1 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 1, ptr %x.addr.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 2
  store i32 %add.i, ptr %retval.i, align 4
  %1 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  store i32 2, ptr %x.addr.i3, align 4
  %3 = load i32, ptr %x.addr.i3, align 4
  %xor.i = xor i32 %3, 7
  store i32 %xor.i, ptr %retval.i1, align 4
  %4 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  %5 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i7, align 4
  store i32 3, ptr %out.i, align 4
  %6 = load i32, ptr %mode.addr.i7, align 4
  %and1.i = and i32 %6, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %7 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %7, 6
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_2.exit: ; preds = %entry, %if.then3.i
  %8 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %9 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %9, %8
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i14, align 4
  store i32 8, ptr %t.i, align 4
  %10 = load i32, ptr %t.i, align 4
  %11 = load i32, ptr %mode.addr.i14, align 4
  %add1.i = add nsw i32 %11, 1
  %mul.i18 = mul nsw i32 %10, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %12 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %12, %mul.i18
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i22)
  store i32 1, ptr %mode.addr.i21, align 4
  store i32 5, ptr %x.addr.i22, align 4
  %13 = load i32, ptr %mode.addr.i21, align 4
  %cmp1.i26 = icmp eq i32 %13, 1
  br i1 %cmp1.i26, label %if.then2.i29, label %if.end3.i31

if.then2.i29:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_2.exit
  %14 = load i32, ptr %x.addr.i22, align 4
  %mul.i28 = mul nsw i32 %14, 3
  store i32 %mul.i28, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_4.exit

if.end3.i31:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_2.exit
  %15 = load i32, ptr %mode.addr.i21, align 4
  %cmp4.i30 = icmp eq i32 %15, 2
  br i1 %cmp4.i30, label %if.then5.i33, label %if.end6.i35

if.then5.i33:                                     ; preds = %if.end3.i31
  %16 = load i32, ptr %x.addr.i22, align 4
  %sub.i32 = add nsw i32 %16, -3
  store i32 %sub.i32, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_4.exit

if.end6.i35:                                      ; preds = %if.end3.i31
  %17 = load i32, ptr %x.addr.i22, align 4
  %18 = load i32, ptr %mode.addr.i21, align 4
  %add7.i34 = add nsw i32 %17, %18
  store i32 %add7.i34, ptr %retval.i20, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_4.exit: ; preds = %if.then2.i29, %if.then5.i33, %if.end6.i35
  %19 = load i32, ptr %retval.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i22)
  %20 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %20, %19
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i38)
  store i32 6, ptr %x.addr.i38, align 4
  %21 = load i32, ptr %x.addr.i38, align 4
  %mul.i44 = mul nsw i32 %21, 3
  store i32 %mul.i44, ptr %retval.i36, align 4
  %22 = load i32, ptr %retval.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i38)
  %23 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %23, %22
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i50)
  store i32 0, ptr %mode.addr.i48, align 4
  store i32 7, ptr %out.i50, align 4
  %24 = load i32, ptr %mode.addr.i48, align 4
  %and1.i55 = and i32 %24, 2
  %tobool2.i56.not = icmp eq i32 %and1.i55, 0
  br i1 %tobool2.i56.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_6.exit, label %if.then3.i59

if.then3.i59:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_4.exit
  %25 = load i32, ptr %out.i50, align 4
  %xor.i58 = xor i32 %25, 10
  store i32 %xor.i58, ptr %out.i50, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_001_4.exit, %if.then3.i59
  %26 = load i32, ptr %out.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i50)
  %27 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %27, %26
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i62)
  store i32 1, ptr %mode.addr.i60, align 4
  store i32 11, ptr %t.i62, align 4
  %28 = load i32, ptr %t.i62, align 4
  %29 = load i32, ptr %mode.addr.i60, align 4
  %add1.i65 = add nsw i32 %29, 1
  %mul.i66 = mul nsw i32 %28, %add1.i65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i60)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i62)
  %30 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %30, %mul.i66
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i73)
  store i32 2, ptr %mode.addr.i71, align 4
  store i32 10, ptr %t.i73, align 4
  %31 = load i32, ptr %t.i73, align 4
  %32 = load i32, ptr %mode.addr.i71, align 4
  %sub.i79 = sub nsw i32 %31, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i73)
  %33 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %33, %sub.i79
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i82)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i84)
  store i32 0, ptr %mode.addr.i82, align 4
  store i32 11, ptr %t.i84, align 4
  %34 = load i32, ptr %t.i84, align 4
  %35 = load i32, ptr %mode.addr.i82, align 4
  %add1.i87 = add nsw i32 %35, 1
  %mul.i88 = mul nsw i32 %34, %add1.i87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i82)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i84)
  %36 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %36, %mul.i88
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i93)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i95)
  store i32 1, ptr %mode.addr.i93, align 4
  store i32 1, ptr %t.i95, align 4
  %37 = load i32, ptr %t.i95, align 4
  %38 = load i32, ptr %mode.addr.i93, align 4
  %add1.i98 = add nsw i32 %38, 1
  %mul.i99 = mul nsw i32 %37, %add1.i98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i93)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i95)
  %39 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %39, %mul.i99
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i106)
  store i32 2, ptr %mode.addr.i104, align 4
  store i32 2, ptr %t.i106, align 4
  %40 = load i32, ptr %t.i106, align 4
  %41 = load i32, ptr %mode.addr.i104, align 4
  %sub.i112 = sub nsw i32 %40, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i106)
  %42 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %42, %sub.i112
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL17image_001_large_ai(i32 noundef 2)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL17image_001_large_bi(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL19image_001_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL19image_001_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_001_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 1
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = or i32 %mul1, 2
  %xor4 = xor i32 %add2, %xor
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 3
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 4
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 5
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = or i32 %mul17, 6
  %xor20 = xor i32 %add18, %xor16
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 7
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 8
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_001_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 5
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
define internal noundef i32 @_ZL19image_001_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_001_recursivei(i32 noundef %sub)
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
