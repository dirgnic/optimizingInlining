; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_002.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_002.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_002_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i74 = alloca i32, align 4
  %t.i76 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i61 = alloca i32, align 4
  %y.i62 = alloca i32, align 4
  %y.i52 = alloca i32, align 4
  %x.addr.i41 = alloca i32, align 4
  %y.i42 = alloca i32, align 4
  %y.i32 = alloca i32, align 4
  %x.addr.i21 = alloca i32, align 4
  %y.i22 = alloca i32, align 4
  %y.i12 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 5, ptr %y.i, align 4
  %0 = load i32, ptr %y.i, align 4
  %sub.i = add nsw i32 %0, -2
  store i32 %sub.i, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %1 = load i32, ptr %total, align 4
  %add = add nsw i32 %1, %sub.i
  store i32 %add, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %2, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  store i32 %add1, ptr %x.addr.i1, align 4
  %add.i3 = add nsw i32 %2, 7
  store i32 %add.i3, ptr %y.i2, align 4
  %and.i4 = and i32 %add1, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.else.i10, label %if.then.i8

if.then.i8:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr.i1, align 4
  %shr.i6 = ashr i32 %3, 1
  %4 = load i32, ptr %y.i2, align 4
  %add1.i7 = add nsw i32 %4, %shr.i6
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit

if.else.i10:                                      ; preds = %entry
  %5 = load i32, ptr %y.i2, align 4
  %sub.i9 = add nsw i32 %5, -3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit: ; preds = %if.then.i8, %if.else.i10
  %storemerge85 = phi i32 [ %sub.i9, %if.else.i10 ], [ %add1.i7, %if.then.i8 ]
  store i32 %storemerge85, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  %6 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %6, %storemerge85
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i12)
  store i32 9, ptr %y.i12, align 4
  %7 = load i32, ptr %y.i12, align 4
  %sub.i19 = add nsw i32 %7, -4
  store i32 %sub.i19, ptr %y.i12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i12)
  %8 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %8, %sub.i19
  store i32 %add5, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %9, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i22)
  store i32 %add6, ptr %x.addr.i21, align 4
  %add.i23 = add nsw i32 %9, 11
  store i32 %add.i23, ptr %y.i22, align 4
  %and.i24 = and i32 %add6, 1
  %tobool.i25.not = icmp eq i32 %and.i24, 0
  br i1 %tobool.i25.not, label %if.else.i30, label %if.then.i28

if.then.i28:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit
  %10 = load i32, ptr %x.addr.i21, align 4
  %shr.i26 = ashr i32 %10, 1
  %11 = load i32, ptr %y.i22, align 4
  %add1.i27 = add nsw i32 %11, %shr.i26
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit

if.else.i30:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit
  %12 = load i32, ptr %y.i22, align 4
  %sub.i29 = add nsw i32 %12, -5
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit: ; preds = %if.then.i28, %if.else.i30
  %storemerge87 = phi i32 [ %sub.i29, %if.else.i30 ], [ %add1.i27, %if.then.i28 ]
  store i32 %storemerge87, ptr %y.i22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i22)
  %13 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %13, %storemerge87
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i32)
  store i32 13, ptr %y.i32, align 4
  %14 = load i32, ptr %y.i32, align 4
  %sub.i39 = add nsw i32 %14, -6
  store i32 %sub.i39, ptr %y.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i32)
  %15 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %15, %sub.i39
  store i32 %add10, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %16, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i42)
  store i32 %add11, ptr %x.addr.i41, align 4
  %add.i43 = add nsw i32 %16, 15
  store i32 %add.i43, ptr %y.i42, align 4
  %and.i44 = and i32 %add11, 1
  %tobool.i45.not = icmp eq i32 %and.i44, 0
  br i1 %tobool.i45.not, label %if.else.i50, label %if.then.i48

if.then.i48:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit
  %17 = load i32, ptr %x.addr.i41, align 4
  %shr.i46 = ashr i32 %17, 1
  %18 = load i32, ptr %y.i42, align 4
  %add1.i47 = add nsw i32 %18, %shr.i46
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit

if.else.i50:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit
  %19 = load i32, ptr %y.i42, align 4
  %sub.i49 = add nsw i32 %19, -7
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit: ; preds = %if.then.i48, %if.else.i50
  %storemerge89 = phi i32 [ %sub.i49, %if.else.i50 ], [ %add1.i47, %if.then.i48 ]
  store i32 %storemerge89, ptr %y.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i42)
  %20 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %20, %storemerge89
  store i32 %add13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i52)
  store i32 17, ptr %y.i52, align 4
  %21 = load i32, ptr %y.i52, align 4
  %sub.i59 = add nsw i32 %21, -8
  store i32 %sub.i59, ptr %y.i52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i52)
  %22 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %22, %sub.i59
  store i32 %add15, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i61)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i62)
  store i32 %add16, ptr %x.addr.i61, align 4
  %add.i63 = add nsw i32 %23, 19
  store i32 %add.i63, ptr %y.i62, align 4
  %and.i64 = and i32 %add16, 1
  %tobool.i65.not = icmp eq i32 %and.i64, 0
  br i1 %tobool.i65.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit, label %if.then.i68

if.then.i68:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit
  %24 = load i32, ptr %x.addr.i61, align 4
  %shr.i66 = ashr i32 %24, 1
  %25 = load i32, ptr %y.i62, align 4
  %add1.i67 = add nsw i32 %25, %shr.i66
  store i32 %add1.i67, ptr %y.i62, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit, %if.then.i68
  %26 = load i32, ptr %y.i62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i61)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i62)
  %27 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %27, %26
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL18packet_002_large_ai(i32 noundef 1)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %28, 9
  %call22 = call noundef i32 @_ZL18packet_002_large_bi(i32 noundef %add21)
  %add23 = add nsw i32 %add20, %call22
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL18packet_002_large_ai(i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  store i32 %add25, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %29, 11
  %call27 = call noundef i32 @_ZL18packet_002_large_bi(i32 noundef %add26)
  %add28 = add nsw i32 %add25, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 7, ptr %t.i, align 4
  %30 = load i32, ptr %t.i, align 4
  %31 = load i32, ptr %mode.addr.i, align 4
  %add1.i72 = add nsw i32 %31, 1
  %mul.i = mul nsw i32 %30, %add1.i72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %32 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %32, %mul.i
  store i32 %add30, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i74)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i76)
  store i32 1, ptr %mode.addr.i74, align 4
  %add.i77 = add nsw i32 %33, 15
  store i32 %add.i77, ptr %t.i76, align 4
  %34 = load i32, ptr %t.i76, align 4
  %35 = load i32, ptr %mode.addr.i74, align 4
  %add1.i79 = add nsw i32 %35, 1
  %mul.i80 = mul nsw i32 %34, %add1.i79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i74)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i76)
  %36 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %36, %mul.i80
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL20packet_002_recursivei(i32 noundef 2)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20packet_002_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_002_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 2
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = or i32 %mul1, 3
  %xor4 = xor i32 %add2, %xor
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 4
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 5
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 6
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = or i32 %mul17, 7
  %xor20 = xor i32 %add18, %xor16
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 8
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 9
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_002_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 6
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
define internal noundef i32 @_ZL20packet_002_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_002_recursivei(i32 noundef %sub)
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
