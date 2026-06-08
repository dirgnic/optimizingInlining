; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_027.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_027.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_027_dispatch(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18matrix_027_large_ai(i32 noundef %x)
  store i32 %call, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL18matrix_027_large_bi(i32 noundef %add2)
  %add4 = add nsw i32 %call, %call3
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 3
  %add5 = add nsw i32 %0, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %add5, ptr %out.i, align 4
  %and.i = and i32 %0, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %1, 4
  store i32 %add.i, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %2 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %2, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %3 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %3, 11
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_0.exit: ; preds = %if.end.i, %if.then3.i
  %4 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %4
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor = xor i32 %add7, %call8
  store i32 %xor, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add9 = add nsw i32 %6, 4
  %call10 = call noundef i32 @_ZL18matrix_027_large_ai(i32 noundef %add9)
  %add11 = add nsw i32 %xor, %call10
  store i32 %add11, ptr %total, align 4
  %add12 = add nsw i32 %6, 5
  %call13 = call noundef i32 @_ZL18matrix_027_large_bi(i32 noundef %add12)
  %add14 = add nsw i32 %add11, %call13
  store i32 %add14, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %7, 3
  %add16 = add nsw i32 %7, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i3)
  store i32 %and15, ptr %mode.addr.i1, align 4
  store i32 %add16, ptr %out.i3, align 4
  %and.i4 = and i32 %7, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.end.i10, label %if.then.i7

if.then.i7:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_0.exit
  %8 = load i32, ptr %out.i3, align 4
  %add.i6 = add nsw i32 %8, 4
  store i32 %add.i6, ptr %out.i3, align 4
  br label %if.end.i10

if.end.i10:                                       ; preds = %if.then.i7, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_0.exit
  %9 = load i32, ptr %mode.addr.i1, align 4
  %and1.i8 = and i32 %9, 2
  %tobool2.i9.not = icmp eq i32 %and1.i8, 0
  br i1 %tobool2.i9.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit, label %if.then3.i12

if.then3.i12:                                     ; preds = %if.end.i10
  %10 = load i32, ptr %out.i3, align 4
  %xor.i11 = xor i32 %10, 11
  store i32 %xor.i11, ptr %out.i3, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit: ; preds = %if.end.i10, %if.then3.i12
  %11 = load i32, ptr %out.i3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i3)
  %12 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %12, %11
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor20 = xor i32 %add18, %call19
  store i32 %xor20, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %13, 8
  %call22 = call noundef i32 @_ZL18matrix_027_large_ai(i32 noundef %add21)
  %add23 = add nsw i32 %xor20, %call22
  store i32 %add23, ptr %total, align 4
  %add24 = add nsw i32 %13, 9
  %call25 = call noundef i32 @_ZL18matrix_027_large_bi(i32 noundef %add24)
  %add26 = add nsw i32 %add23, %call25
  store i32 %add26, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %14, 3
  %add28 = add nsw i32 %14, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i15)
  store i32 %and27, ptr %mode.addr.i13, align 4
  store i32 %add28, ptr %out.i15, align 4
  %and.i16 = and i32 %14, 1
  %tobool.i17.not = icmp eq i32 %and.i16, 0
  br i1 %tobool.i17.not, label %if.end.i22, label %if.then.i19

if.then.i19:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit
  %15 = load i32, ptr %out.i15, align 4
  %add.i18 = add nsw i32 %15, 4
  store i32 %add.i18, ptr %out.i15, align 4
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i19, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit
  %16 = load i32, ptr %mode.addr.i13, align 4
  %and1.i20 = and i32 %16, 2
  %tobool2.i21.not = icmp eq i32 %and1.i20, 0
  br i1 %tobool2.i21.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_4.exit, label %if.then3.i24

if.then3.i24:                                     ; preds = %if.end.i22
  %17 = load i32, ptr %out.i15, align 4
  %xor.i23 = xor i32 %17, 11
  store i32 %xor.i23, ptr %out.i15, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_4.exit: ; preds = %if.end.i22, %if.then3.i24
  %18 = load i32, ptr %out.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i15)
  %19 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %19, %18
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor32 = xor i32 %add30, %call31
  store i32 %xor32, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %20, 12
  %call34 = call noundef i32 @_ZL18matrix_027_large_ai(i32 noundef %add33)
  %add35 = add nsw i32 %xor32, %call34
  store i32 %add35, ptr %total, align 4
  %add36 = add nsw i32 %20, 13
  %call37 = call noundef i32 @_ZL18matrix_027_large_bi(i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  store i32 %add38, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %21, 3
  %add40 = add nsw i32 %21, 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i27)
  store i32 %and39, ptr %mode.addr.i25, align 4
  store i32 %add40, ptr %out.i27, align 4
  %and.i28 = and i32 %21, 1
  %tobool.i29.not = icmp eq i32 %and.i28, 0
  br i1 %tobool.i29.not, label %if.end.i34, label %if.then.i31

if.then.i31:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_4.exit
  %22 = load i32, ptr %out.i27, align 4
  %add.i30 = add nsw i32 %22, 4
  store i32 %add.i30, ptr %out.i27, align 4
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then.i31, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_4.exit
  %23 = load i32, ptr %mode.addr.i25, align 4
  %and1.i32 = and i32 %23, 2
  %tobool2.i33.not = icmp eq i32 %and1.i32, 0
  br i1 %tobool2.i33.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit, label %if.then3.i36

if.then3.i36:                                     ; preds = %if.end.i34
  %24 = load i32, ptr %out.i27, align 4
  %xor.i35 = xor i32 %24, 11
  store i32 %xor.i35, ptr %out.i27, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit: ; preds = %if.end.i34, %if.then3.i36
  %25 = load i32, ptr %out.i27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i27)
  %26 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %26, %25
  store i32 %add42, ptr %total, align 4
  %call43 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor44 = xor i32 %add42, %call43
  store i32 %xor44, ptr %total, align 4
  ret i32 %xor44
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_027_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 6
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -2
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 7
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -3
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = shl i32 %6, 3
  %mul13 = and i32 %and12, 40
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -4
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 9
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -5
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_027_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 44
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 45
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 46
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 47
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 48
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 49
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 50
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 51
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_027_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef %sub1)
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
