; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_042.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_042.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_042_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i40 = alloca i32, align 4
  %out.i42 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add.i = shl i32 %x, 2
  %sub.i = add i32 %add.i, 45
  %and.i = and i32 %x, 15
  %xor.i = xor i32 %sub.i, %and.i
  store i32 %xor.i, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  %add.i3 = shl i32 %x, 2
  %sub.i5 = add i32 %add.i3, 52
  %and.i6 = and i32 %add2, 15
  %xor.i7 = xor i32 %sub.i5, %and.i6
  %add4 = add nsw i32 %xor.i, %xor.i7
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %1, 2
  %add.i10 = shl i32 %1, 2
  %sub.i12 = add i32 %add.i10, 15
  %and.i13 = and i32 %add6, 15
  %xor.i14 = xor i32 %sub.i12, %and.i13
  %2 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %2, %xor.i14
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call9 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %3 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %3, %call9
  store i32 %add10, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %4, 4
  %add.i17 = shl i32 %4, 2
  %sub.i19 = add i32 %add.i17, 29
  %and.i20 = and i32 %add11, 15
  %xor.i21 = xor i32 %sub.i19, %and.i20
  %5 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %5, %xor.i21
  store i32 %add13, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %7 = and i32 %6, 1
  %tobool16.not.not = icmp eq i32 %7, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end
  %8 = load i32, ptr %x.addr, align 4
  %add18 = add nsw i32 %8, 5
  %add.i24 = shl i32 %8, 2
  %sub.i26 = add i32 %add.i24, 36
  %and.i27 = and i32 %add18, 15
  %xor.i28 = xor i32 %sub.i26, %and.i27
  %9 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %9, %xor.i28
  store i32 %add20, ptr %total, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end
  %10 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %10, 6
  %add.i31 = shl i32 %10, 2
  %sub.i33 = add i32 %add.i31, 43
  %and.i34 = and i32 %add22, 15
  %xor.i35 = xor i32 %sub.i33, %and.i34
  %11 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %11, %xor.i35
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %12, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end21
  %13 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %13, 8
  %call32 = call noundef i32 @_ZL18packet_042_large_ai(i32 noundef %add31)
  %14 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %14, %call32
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end21
  %15 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %15, 9
  %call36 = call noundef i32 @_ZL18packet_042_large_bi(i32 noundef %add35)
  %16 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %16, %call36
  store i32 %add37, ptr %total, align 4
  %add38 = add nsw i32 %15, 10
  %call39 = call noundef i32 @_ZL18packet_042_large_ai(i32 noundef %add38)
  %add40 = add nsw i32 %add37, %call39
  store i32 %add40, ptr %total, align 4
  %17 = load i32, ptr %x.addr, align 4
  %18 = and i32 %17, 1
  %tobool43.not.not = icmp eq i32 %18, 0
  br i1 %tobool43.not.not, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end34
  %call45 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %19 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %19, %call45
  store i32 %add46, ptr %total, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end34
  %20 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %20, 3
  %add49 = add nsw i32 %20, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and48, ptr %mode.addr.i, align 4
  store i32 %add49, ptr %out.i, align 4
  %and.i37 = and i32 %20, 1
  %tobool.i.not = icmp eq i32 %and.i37, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end47
  %21 = load i32, ptr %out.i, align 4
  %add.i38 = add nsw i32 %21, 3
  store i32 %add.i38, ptr %out.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end47
  %22 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %22, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_9.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %23 = load i32, ptr %out.i, align 4
  %xor.i39 = xor i32 %23, 7
  store i32 %xor.i39, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_9.exit: ; preds = %if.end.i, %if.then3.i
  %24 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %25 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %25, %24
  store i32 %add51, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and52 = and i32 %26, 3
  %add53 = add nsw i32 %26, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i42)
  store i32 %and52, ptr %mode.addr.i40, align 4
  store i32 %add53, ptr %out.i42, align 4
  %and.i43 = and i32 %26, 1
  %tobool.i44.not = icmp eq i32 %and.i43, 0
  br i1 %tobool.i44.not, label %if.end.i49, label %if.then.i46

if.then.i46:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_9.exit
  %27 = load i32, ptr %out.i42, align 4
  %add.i45 = add nsw i32 %27, 3
  store i32 %add.i45, ptr %out.i42, align 4
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then.i46, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_9.exit
  %28 = load i32, ptr %mode.addr.i40, align 4
  %and1.i47 = and i32 %28, 2
  %tobool2.i48.not = icmp eq i32 %and1.i47, 0
  br i1 %tobool2.i48.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_10.exit, label %if.then3.i51

if.then3.i51:                                     ; preds = %if.end.i49
  %29 = load i32, ptr %out.i42, align 4
  %xor.i50 = xor i32 %29, 7
  store i32 %xor.i50, ptr %out.i42, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_10.exit: ; preds = %if.end.i49, %if.then3.i51
  %30 = load i32, ptr %out.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i42)
  %31 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %31, %30
  store i32 %add55, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %and57 = and i32 %32, 1
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end62, label %if.then59

if.then59:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_10.exit
  %call60 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 2)
  %33 = load i32, ptr %total, align 4
  %add61 = add nsw i32 %33, %call60
  store i32 %add61, ptr %total, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_10.exit
  %call63 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %34 = load i32, ptr %total, align 4
  %add64 = add nsw i32 %34, %call63
  store i32 %add64, ptr %total, align 4
  ret i32 %add64
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_042_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_042_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 10
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
  %mul3 = mul nuw nsw i32 %and2, 11
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
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 12
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
  %mul23 = mul nuw nsw i32 %and22, 13
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
define internal noundef i32 @_ZL18packet_042_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 59
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 60
  %shr3 = ashr exact i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 61
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 62
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 63
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 64
  %shr19 = ashr exact i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 65
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 66
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
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
