; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_040.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_040.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_040_step(i32 noundef %x) #0 {
entry:
  %retval.i55 = alloca i32, align 4
  %x.addr.i57 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i49 = alloca i32, align 4
  %x.addr.i30 = alloca i32, align 4
  %s.i31 = alloca i32, align 4
  %limit.i32 = alloca i32, align 4
  %i.i33 = alloca i32, align 4
  %x.addr.i18 = alloca i32, align 4
  %s.i19 = alloca i32, align 4
  %x.addr.i15 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %limit.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add1 = shl i32 %x, 2
  %add3 = add i32 %add1, 10
  store i32 %add3, ptr %total, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %0, 11
  store i32 %add6, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %1 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %1, %call7
  %add10 = add nsw i32 %add8, 11
  store i32 %add10, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = and i32 %2, 1
  %tobool13.not.not = icmp eq i32 %3, 0
  br i1 %tobool13.not.not, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %5 = mul i32 %4, 3
  %add.i11 = add i32 %5, 19
  %6 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %6, %add.i11
  store i32 %add17, ptr %total, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end
  %7 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %7, 29
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and24 = and i32 %8, 1
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 1, ptr %x.addr.i15, align 4
  store i32 1, ptr %s.i, align 4
  store i32 4, ptr %limit.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %if.then26
  %storemerge71 = phi i32 [ 0, %if.then26 ], [ %inc.i, %if.end.i ]
  store i32 %storemerge71, ptr %i.i, align 4
  %9 = load i32, ptr %limit.i, align 4
  %cmp.i = icmp slt i32 %storemerge71, %9
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_8.exit

for.body.i:                                       ; preds = %for.cond.i
  %10 = load i32, ptr %i.i, align 4
  %mul.i17 = mul nsw i32 %10, %10
  %sub.i = add nsw i32 %mul.i17, -5
  %11 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %11, %sub.i
  store i32 %add1.i, ptr %s.i, align 4
  %and2.i = and i32 %add1.i, 1
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %12 = load i32, ptr %i.i, align 4
  %13 = load i32, ptr %x.addr.i15, align 4
  %add4.i = add nsw i32 %12, %13
  %14 = load i32, ptr %s.i, align 4
  %xor.i = xor i32 %14, %add4.i
  store i32 %xor.i, ptr %s.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %15 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %15, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_8.exit: ; preds = %for.cond.i
  %16 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %17 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %17, %16
  store i32 %add28, ptr %total, align 4
  br label %if.end29

if.end29:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_8.exit, %if.end18
  %18 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %18, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i19)
  store i32 %add30, ptr %x.addr.i18, align 4
  %and.i20 = and i32 %add30, 3
  %mul.i21 = mul nuw nsw i32 %and.i20, 3
  %add.i22 = add nsw i32 %add30, %mul.i21
  store i32 %add.i22, ptr %s.i19, align 4
  %19 = and i32 %add.i22, 1
  %cmp.i23 = icmp eq i32 %19, 0
  %20 = load i32, ptr %s.i19, align 4
  %add1.i26 = add nsw i32 %20, 1
  %21 = load i32, ptr %s.i19, align 4
  %sub.i24 = add nsw i32 %21, -2
  %storemerge = select i1 %cmp.i23, i32 %sub.i24, i32 %add1.i26
  store i32 %storemerge, ptr %s.i19, align 4
  %22 = load i32, ptr %x.addr.i18, align 4
  %and2.i27 = shl i32 %22, 2
  %mul3.i = and i32 %and2.i27, 16
  %add4.i28 = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i28, ptr %s.i19, align 4
  %rem5.i = srem i32 %add4.i28, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %23 = load i32, ptr %s.i19, align 4
  %add10.i = add nsw i32 %23, 3
  %24 = load i32, ptr %s.i19, align 4
  %sub8.i = add nsw i32 %24, -3
  %storemerge67 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge67, ptr %s.i19, align 4
  %25 = load i32, ptr %x.addr.i18, align 4
  %and12.i = and i32 %25, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 5
  %add14.i = add nsw i32 %storemerge67, %mul13.i
  store i32 %add14.i, ptr %s.i19, align 4
  %26 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %26, 0
  %27 = load i32, ptr %s.i19, align 4
  %add20.i = add nsw i32 %27, 5
  %28 = load i32, ptr %s.i19, align 4
  %sub18.i = add nsw i32 %28, -4
  %storemerge68 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge68, ptr %s.i19, align 4
  %29 = load i32, ptr %x.addr.i18, align 4
  %and22.i = and i32 %29, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 6
  %add24.i = add nsw i32 %storemerge68, %mul23.i
  store i32 %add24.i, ptr %s.i19, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %30 = load i32, ptr %s.i19, align 4
  %add30.i = add nsw i32 %30, 7
  %31 = load i32, ptr %s.i19, align 4
  %sub28.i = add nsw i32 %31, -5
  %storemerge69 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge69, ptr %s.i19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i19)
  %32 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %32, %storemerge69
  store i32 %add32, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i33)
  store i32 3, ptr %x.addr.i30, align 4
  store i32 3, ptr %s.i31, align 4
  store i32 6, ptr %limit.i32, align 4
  br label %for.cond.i37

for.cond.i37:                                     ; preds = %if.end.i47, %if.end29
  %storemerge70 = phi i32 [ 0, %if.end29 ], [ %inc.i48, %if.end.i47 ]
  store i32 %storemerge70, ptr %i.i33, align 4
  %33 = load i32, ptr %limit.i32, align 4
  %cmp.i36 = icmp slt i32 %storemerge70, %33
  br i1 %cmp.i36, label %for.body.i43, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_10.exit

for.body.i43:                                     ; preds = %for.cond.i37
  %34 = load i32, ptr %i.i33, align 4
  %mul.i38 = mul nsw i32 %34, %34
  %sub.i39 = add nsw i32 %mul.i38, -5
  %35 = load i32, ptr %s.i31, align 4
  %add1.i40 = add nsw i32 %35, %sub.i39
  store i32 %add1.i40, ptr %s.i31, align 4
  %and2.i41 = and i32 %add1.i40, 1
  %cmp3.i42 = icmp eq i32 %and2.i41, 0
  br i1 %cmp3.i42, label %if.then.i46, label %if.end.i47

if.then.i46:                                      ; preds = %for.body.i43
  %36 = load i32, ptr %i.i33, align 4
  %37 = load i32, ptr %x.addr.i30, align 4
  %add4.i44 = add nsw i32 %36, %37
  %38 = load i32, ptr %s.i31, align 4
  %xor.i45 = xor i32 %38, %add4.i44
  store i32 %xor.i45, ptr %s.i31, align 4
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i46, %for.body.i43
  %39 = load i32, ptr %i.i33, align 4
  %inc.i48 = add nsw i32 %39, 1
  br label %for.cond.i37, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_10.exit: ; preds = %for.cond.i37
  %40 = load i32, ptr %s.i31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i33)
  %41 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %41, %40
  store i32 %add34, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %43 = and i32 %42, 1
  %tobool37.not.not = icmp eq i32 %43, 0
  br i1 %tobool37.not.not, label %if.then38, label %if.end41

if.then38:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_10.exit
  %call39 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %44 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %44, %call39
  store i32 %add40, ptr %total, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_040_10.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i49)
  store i32 5, ptr %x.addr.i49, align 4
  %45 = load i32, ptr %x.addr.i49, align 4
  %add.i51 = add nsw i32 %45, 9
  store i32 %add.i51, ptr %retval.i, align 4
  %46 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i49)
  %47 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %47, %46
  store i32 %add43, ptr %total, align 4
  %48 = load i32, ptr %x.addr, align 4
  %add44 = add nsw i32 %48, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i57)
  store i32 %add44, ptr %x.addr.i57, align 4
  %49 = load i32, ptr %x.addr.i57, align 4
  %xor.i61 = xor i32 %49, 11
  store i32 %xor.i61, ptr %retval.i55, align 4
  %50 = load i32, ptr %retval.i55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i57)
  %51 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %51, %50
  store i32 %add46, ptr %total, align 4
  %52 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %52, 1
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.end41
  %call51 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 2)
  %53 = load i32, ptr %total, align 4
  %add52 = add nsw i32 %53, %call51
  store i32 %add52, ptr %total, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end41
  %call54 = call noundef i32 @_ZL18game_040_recursivei(i32 noundef 3)
  %54 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %54, %call54
  store i32 %add55, ptr %total, align 4
  ret i32 %add55
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_040_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL18game_040_recursivei(i32 noundef %sub)
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
