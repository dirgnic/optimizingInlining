; ModuleID = './out/rewritten_ir/teacher_rl_value_proxy/source_snapshot_DCMTK_generated_inlining_generated_009.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_009.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_009_entry(i32 noundef %x) #0 {
entry:
  %retval.i70 = alloca i32, align 4
  %x.addr.i72 = alloca i32, align 4
  %retval.i58 = alloca i32, align 4
  %x.addr.i60 = alloca i32, align 4
  %retval.i50 = alloca i32, align 4
  %x.addr.i52 = alloca i32, align 4
  %retval.i34 = alloca i32, align 4
  %x.addr.i36 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %t.i25 = alloca i32, align 4
  %mode.addr.i11 = alloca i32, align 4
  %out.i13 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i3 = alloca i32, align 4
  %x.addr.i4 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 9, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 12
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i1, align 4
  store i32 10, ptr %t.i, align 4
  %4 = load i32, ptr %t.i, align 4
  %5 = load i32, ptr %mode.addr.i1, align 4
  %add1.i = add nsw i32 %5, 1
  %mul.i = mul nsw i32 %4, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %6 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %6, %mul.i
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i4)
  store i32 2, ptr %mode.addr.i3, align 4
  store i32 0, ptr %x.addr.i4, align 4
  %7 = load i32, ptr %mode.addr.i3, align 4
  %cmp1.i = icmp eq i32 %7, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_0.exit
  %8 = load i32, ptr %x.addr.i4, align 4
  %mul.i9 = mul nsw i32 %8, 5
  store i32 %mul.i9, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_2.exit

if.end3.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_0.exit
  %9 = load i32, ptr %mode.addr.i3, align 4
  %cmp4.i = icmp eq i32 %9, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %10 = load i32, ptr %x.addr.i4, align 4
  %sub.i10 = add nsw i32 %10, -4
  store i32 %sub.i10, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_2.exit

if.end6.i:                                        ; preds = %if.end3.i
  %11 = load i32, ptr %x.addr.i4, align 4
  %12 = load i32, ptr %mode.addr.i3, align 4
  %add7.i = add nsw i32 %11, %12
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_2.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %13 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i4)
  %14 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %14, %13
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL19image_009_recursivei(i32 noundef 3)
  %add6 = add nsw i32 %add4, %call5
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i13)
  store i32 1, ptr %mode.addr.i11, align 4
  store i32 2, ptr %out.i13, align 4
  %15 = load i32, ptr %out.i13, align 4
  %add.i16 = add nsw i32 %15, 6
  store i32 %add.i16, ptr %out.i13, align 4
  %16 = load i32, ptr %mode.addr.i11, align 4
  %and1.i18 = and i32 %16, 2
  %tobool2.i19.not = icmp eq i32 %and1.i18, 0
  br i1 %tobool2.i19.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_3.exit, label %if.then3.i22

if.then3.i22:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_2.exit
  %17 = load i32, ptr %out.i13, align 4
  %xor.i21 = xor i32 %17, 16
  store i32 %xor.i21, ptr %out.i13, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_3.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_009_2.exit, %if.then3.i22
  %18 = load i32, ptr %out.i13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i13)
  %19 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %19, %18
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i25)
  store i32 2, ptr %mode.addr.i23, align 4
  store i32 7, ptr %t.i25, align 4
  %20 = load i32, ptr %t.i25, align 4
  %21 = load i32, ptr %mode.addr.i23, align 4
  %sub.i31 = sub nsw i32 %20, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i25)
  %22 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %22, %sub.i31
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  store i32 4, ptr %x.addr.i36, align 4
  %23 = load i32, ptr %x.addr.i36, align 4
  %add.i38 = add nsw i32 %23, 7
  store i32 %add.i38, ptr %retval.i34, align 4
  %24 = load i32, ptr %retval.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  %25 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %25, %24
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL19image_009_recursivei(i32 noundef 3)
  %add14 = add nsw i32 %add12, %call13
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i52)
  store i32 6, ptr %x.addr.i52, align 4
  %26 = load i32, ptr %x.addr.i52, align 4
  %mul.i56 = mul nsw i32 %26, 3
  store i32 %mul.i56, ptr %retval.i50, align 4
  %27 = load i32, ptr %retval.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i50)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i52)
  %28 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %28, %27
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i58)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i60)
  store i32 7, ptr %x.addr.i60, align 4
  %29 = load i32, ptr %x.addr.i60, align 4
  %add.i62 = add nsw i32 %29, 11
  store i32 %add.i62, ptr %retval.i58, align 4
  %30 = load i32, ptr %retval.i58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i58)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i60)
  %31 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %31, %30
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i72)
  store i32 8, ptr %x.addr.i72, align 4
  %32 = load i32, ptr %x.addr.i72, align 4
  %xor.i76 = xor i32 %32, 14
  store i32 %xor.i76, ptr %retval.i70, align 4
  %33 = load i32, ptr %retval.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i72)
  %34 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %34, %33
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL19image_009_recursivei(i32 noundef 3)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL17image_009_large_ai(i32 noundef 10)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL17image_009_large_bi(i32 noundef 0)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL19image_009_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL19image_009_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_009_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_009_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_009_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = or i32 %and, 4
  store i32 %add, ptr %limit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %1
  %sub = add nsw i32 %mul, -2
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %sub
  store i32 %add1, ptr %s, align 4
  %and2 = and i32 %add1, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %3, %4
  %5 = load i32, ptr %s, align 4
  %xor = xor i32 %5, %add4
  store i32 %xor, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_009_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 5
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -1
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 6
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -2
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 7
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -3
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = shl i32 %10, 3
  %mul23 = and i32 %and22, 48
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -4
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
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
