; ModuleID = './out/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_DCMTK_generated_inlining_generated_062.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_062.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_062_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i45 = alloca i32, align 4
  %t.i47 = alloca i32, align 4
  %mode.addr.i34 = alloca i32, align 4
  %t.i36 = alloca i32, align 4
  %mode.addr.i23 = alloca i32, align 4
  %t.i25 = alloca i32, align 4
  %mode.addr.i12 = alloca i32, align 4
  %t.i14 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %t.i3 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 9, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %mul.i
  store i32 %add, ptr %total, align 4
  %call1 = call noundef i32 @_ZL19packet_062_medium_1i(i32 noundef 8)
  %add2 = add nsw i32 %add, %call1
  store i32 %add2, ptr %total, align 4
  %call3 = call noundef i32 @_ZL19packet_062_medium_2i(i32 noundef 9)
  %add4 = add nsw i32 %add2, %call3
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL19packet_062_medium_3i(i32 noundef 10)
  %add6 = add nsw i32 %add4, %call5
  store i32 %add6, ptr %total, align 4
  %call7 = call noundef i32 @_ZL19packet_062_medium_4i(i32 noundef 0)
  %add8 = add nsw i32 %add6, %call7
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i3)
  store i32 2, ptr %mode.addr.i1, align 4
  store i32 3, ptr %t.i3, align 4
  %3 = load i32, ptr %t.i3, align 4
  %4 = load i32, ptr %mode.addr.i1, align 4
  %sub.i9 = sub nsw i32 %3, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i3)
  %5 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %5, %sub.i9
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL19packet_062_medium_6i(i32 noundef 2)
  %add12 = add nsw i32 %add10, %call11
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL19packet_062_medium_7i(i32 noundef 3)
  %add14 = add nsw i32 %add12, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18packet_062_large_ai(i32 noundef 4)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 5)
  %add18 = add nsw i32 %add16, %call17
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i14)
  store i32 1, ptr %mode.addr.i12, align 4
  store i32 8, ptr %t.i14, align 4
  %6 = load i32, ptr %t.i14, align 4
  %7 = load i32, ptr %mode.addr.i12, align 4
  %add1.i17 = add nsw i32 %7, 1
  %mul.i18 = mul nsw i32 %6, %add1.i17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i14)
  %8 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %8, %mul.i18
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 7)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i25)
  store i32 0, ptr %mode.addr.i23, align 4
  store i32 10, ptr %t.i25, align 4
  %9 = load i32, ptr %t.i25, align 4
  %10 = load i32, ptr %mode.addr.i23, align 4
  %add1.i28 = add nsw i32 %10, 1
  %mul.i29 = mul nsw i32 %9, %add1.i28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i25)
  %11 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %11, %mul.i29
  store i32 %add24, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i36)
  store i32 1, ptr %mode.addr.i34, align 4
  store i32 11, ptr %t.i36, align 4
  %12 = load i32, ptr %t.i36, align 4
  %13 = load i32, ptr %mode.addr.i34, align 4
  %add1.i39 = add nsw i32 %13, 1
  %mul.i40 = mul nsw i32 %12, %add1.i39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i36)
  %14 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %14, %mul.i40
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i47)
  store i32 0, ptr %mode.addr.i45, align 4
  store i32 2, ptr %t.i47, align 4
  %15 = load i32, ptr %t.i47, align 4
  %16 = load i32, ptr %mode.addr.i45, align 4
  %add1.i50 = add nsw i32 %16, 1
  %mul.i51 = mul nsw i32 %15, %add1.i50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i47)
  %17 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %17, %mul.i51
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 11
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  store i32 %add1, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %2, 3
  %3 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %3, %and2
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 12
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 1
  %mul = and i32 %and2, 6
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 13
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 3
  %mul = mul nuw nsw i32 %and2, 3
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 3
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 2
  %mul = and i32 %and2, 12
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 5
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 3
  %mul = mul nuw nsw i32 %and2, 6
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 6
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 3
  %mul = mul nuw nsw i32 %and2, 7
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_062_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 62
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 63
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 64
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 65
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 66
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 67
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 68
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 69
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  %mul29 = mul nsw i32 %xor28, 11
  %add30 = add nsw i32 %mul29, 70
  %shr31 = ashr i32 %add30, 3
  %xor32 = xor i32 %add30, %shr31
  %mul33 = mul nsw i32 %xor32, 12
  %add34 = add nsw i32 %mul33, 71
  %shr35 = ashr i32 %add34, 1
  %xor36 = xor i32 %add34, %shr35
  %mul37 = mul nsw i32 %xor36, 13
  %add38 = add nsw i32 %mul37, 72
  %shr39 = ashr i32 %add38, 2
  %xor40 = xor i32 %add38, %shr39
  %mul41 = mul nsw i32 %xor40, 14
  %add42 = add nsw i32 %mul41, 73
  %shr43 = ashr i32 %add42, 3
  %xor44 = xor i32 %add42, %shr43
  %mul45 = mul nsw i32 %xor44, 15
  %add46 = add nsw i32 %mul45, 74
  %shr47 = ashr i32 %add46, 1
  %xor48 = xor i32 %add46, %shr47
  ret i32 %xor48
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_062_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 1
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
define internal noundef i32 @_ZL20packet_062_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef %sub)
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
