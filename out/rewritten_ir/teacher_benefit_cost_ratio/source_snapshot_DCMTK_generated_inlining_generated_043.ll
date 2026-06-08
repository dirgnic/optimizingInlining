; ModuleID = './out/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_DCMTK_generated_inlining_generated_043.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_043.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_043_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i25 = alloca i32, align 4
  %out.i27 = alloca i32, align 4
  %mode.addr.i13 = alloca i32, align 4
  %out.i15 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i3 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL18matrix_043_large_ai(i32 noundef 10)
  store i32 %call, ptr %total, align 4
  %call1 = call noundef i32 @_ZL18matrix_043_large_bi(i32 noundef 0)
  %add2 = add nsw i32 %call, %call1
  store i32 %add2, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 1, ptr %out.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.then
  %2 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %2, 8
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_0.exit: ; preds = %if.then, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, %3
  store i32 %add5, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_0.exit, %entry
  %call6 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %call6
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL18matrix_043_large_ai(i32 noundef 3)
  %add9 = add nsw i32 %add7, %call8
  store i32 %add9, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %7 = and i32 %6, 1
  %tobool12.not.not = icmp eq i32 %7, 0
  br i1 %tobool12.not.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %call14 = call noundef i32 @_ZL18matrix_043_large_bi(i32 noundef 4)
  %8 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %8, %call14
  store i32 %add15, ptr %total, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i3)
  store i32 0, ptr %mode.addr.i1, align 4
  store i32 5, ptr %out.i3, align 4
  %9 = load i32, ptr %mode.addr.i1, align 4
  %and1.i8 = and i32 %9, 2
  %tobool2.i9.not = icmp eq i32 %and1.i8, 0
  br i1 %tobool2.i9.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1.exit, label %if.then3.i12

if.then3.i12:                                     ; preds = %if.end16
  %10 = load i32, ptr %out.i3, align 4
  %xor.i11 = xor i32 %10, 8
  store i32 %xor.i11, ptr %out.i3, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1.exit: ; preds = %if.end16, %if.then3.i12
  %11 = load i32, ptr %out.i3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i3)
  %12 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %12, %11
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %13, 1
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1.exit
  %call25 = call noundef i32 @_ZL18matrix_043_large_ai(i32 noundef 7)
  %14 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %14, %call25
  store i32 %add26, ptr %total, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1.exit
  %call28 = call noundef i32 @_ZL18matrix_043_large_bi(i32 noundef 8)
  %15 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %15, %call28
  store i32 %add29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i15)
  store i32 1, ptr %mode.addr.i13, align 4
  store i32 9, ptr %out.i15, align 4
  %16 = load i32, ptr %out.i15, align 4
  %add.i18 = add nsw i32 %16, 4
  store i32 %add.i18, ptr %out.i15, align 4
  %17 = load i32, ptr %mode.addr.i13, align 4
  %and1.i20 = and i32 %17, 2
  %tobool2.i21.not = icmp eq i32 %and1.i20, 0
  br i1 %tobool2.i21.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit, label %if.then3.i24

if.then3.i24:                                     ; preds = %if.end27
  %18 = load i32, ptr %out.i15, align 4
  %xor.i23 = xor i32 %18, 8
  store i32 %xor.i23, ptr %out.i15, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit: ; preds = %if.end27, %if.then3.i24
  %19 = load i32, ptr %out.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i15)
  %20 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %20, %19
  store i32 %add31, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %22 = and i32 %21, 1
  %tobool34.not.not = icmp eq i32 %22, 0
  br i1 %tobool34.not.not, label %if.then35, label %if.end38

if.then35:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit
  %call36 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %23 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %23, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit
  %call39 = call noundef i32 @_ZL18matrix_043_large_ai(i32 noundef 0)
  %24 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %24, %call39
  store i32 %add40, ptr %total, align 4
  %call41 = call noundef i32 @_ZL18matrix_043_large_bi(i32 noundef 1)
  %add42 = add nsw i32 %add40, %call41
  store i32 %add42, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and44 = and i32 %25, 1
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i27)
  store i32 2, ptr %mode.addr.i25, align 4
  store i32 2, ptr %out.i27, align 4
  %26 = load i32, ptr %mode.addr.i25, align 4
  %and1.i32 = and i32 %26, 2
  %tobool2.i33.not = icmp eq i32 %and1.i32, 0
  br i1 %tobool2.i33.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_3.exit, label %if.then3.i36

if.then3.i36:                                     ; preds = %if.then46
  %27 = load i32, ptr %out.i27, align 4
  %xor.i35 = xor i32 %27, 8
  store i32 %xor.i35, ptr %out.i27, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_3.exit: ; preds = %if.then46, %if.then3.i36
  %28 = load i32, ptr %out.i27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i27)
  %29 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %29, %28
  store i32 %add48, ptr %total, align 4
  br label %if.end49

if.end49:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_3.exit, %if.end38
  %call50 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %30 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %30, %call50
  store i32 %add51, ptr %total, align 4
  ret i32 %add51
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_043_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 11
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -3
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 12
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -4
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 13
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -5
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 14
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -6
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_043_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 60
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 61
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 62
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 63
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 64
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 65
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 66
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 67
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %sub1)
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
