; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_030.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_030.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_030_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i88 = alloca i32, align 4
  %out.i90 = alloca i32, align 4
  %mode.addr.i76 = alloca i32, align 4
  %out.i78 = alloca i32, align 4
  %mode.addr.i64 = alloca i32, align 4
  %out.i66 = alloca i32, align 4
  %mode.addr.i52 = alloca i32, align 4
  %out.i54 = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %out.i28 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 4, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 14
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 7
  %add.i2 = shl nuw nsw i32 %and, 2
  %sub.i = add nuw nsw i32 %add.i2, 43
  %xor.i4 = xor i32 %sub.i, %and
  %add2 = add nsw i32 %add, %xor.i4
  store i32 %add2, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %5, 7
  %add.i7 = shl nuw nsw i32 %and3, 2
  %sub.i9 = add nuw nsw i32 %add.i7, 46
  %xor.i11 = xor i32 %sub.i9, %and3
  %add5 = add nsw i32 %add2, %xor.i11
  %xor = xor i32 %add5, 38
  store i32 %xor, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %6, 7
  %add.i21 = shl nuw nsw i32 %and7, 2
  %sub.i23 = add nuw nsw i32 %add.i21, 8
  %xor.i25 = xor i32 %sub.i23, %and7
  %add9 = add nsw i32 %xor, %xor.i25
  store i32 %add9, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %7, 3
  %and11 = and i32 %7, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i28)
  store i32 %and10, ptr %mode.addr.i26, align 4
  store i32 %and11, ptr %out.i28, align 4
  %and.i29 = and i32 %7, 1
  %tobool.i30.not = icmp eq i32 %and.i29, 0
  br i1 %tobool.i30.not, label %if.end.i35, label %if.then.i32

if.then.i32:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit
  %8 = load i32, ptr %out.i28, align 4
  %add.i31 = add nsw i32 %8, 7
  store i32 %add.i31, ptr %out.i28, align 4
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.then.i32, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_0.exit
  %9 = load i32, ptr %mode.addr.i26, align 4
  %and1.i33 = and i32 %9, 2
  %tobool2.i34.not = icmp eq i32 %and1.i33, 0
  br i1 %tobool2.i34.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i35
  %10 = load i32, ptr %out.i28, align 4
  %xor.i36 = xor i32 %10, 14
  store i32 %xor.i36, ptr %out.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit: ; preds = %if.end.i35, %if.then3.i37
  %11 = load i32, ptr %out.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i28)
  %12 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %12, %11
  %add15 = add nsw i32 %add13, 60
  store i32 %add15, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and16 = and i32 %13, 7
  %add.i47 = shl nuw nsw i32 %and16, 2
  %sub.i49 = add nuw nsw i32 %add.i47, 17
  %xor.i51 = xor i32 %sub.i49, %and16
  %xor18 = xor i32 %add15, %xor.i51
  store i32 %xor18, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %14, 7
  %call20 = call noundef i32 @_ZL18packet_030_large_ai(i32 noundef %and19)
  %add21 = add nsw i32 %xor18, %call20
  store i32 %add21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL18packet_030_large_bi(i32 noundef 0)
  %add23 = add nsw i32 %add21, %call22
  store i32 %add23, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and24 = and i32 %15, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i54)
  store i32 0, ptr %mode.addr.i52, align 4
  store i32 %and24, ptr %out.i54, align 4
  %16 = load i32, ptr %mode.addr.i52, align 4
  %and1.i59 = and i32 %16, 2
  %tobool2.i60.not = icmp eq i32 %and1.i59, 0
  br i1 %tobool2.i60.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_8.exit, label %if.then3.i63

if.then3.i63:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit
  %17 = load i32, ptr %out.i54, align 4
  %xor.i62 = xor i32 %17, 14
  store i32 %xor.i62, ptr %out.i54, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_8.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_5.exit, %if.then3.i63
  %18 = load i32, ptr %out.i54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i52)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i54)
  %19 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %19, %18
  store i32 %add26, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %20, 7
  %call28 = call noundef i32 @_ZL18packet_030_large_bi(i32 noundef %and27)
  %xor29 = xor i32 %add26, %call28
  store i32 %xor29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i66)
  store i32 2, ptr %mode.addr.i64, align 4
  store i32 3, ptr %out.i66, align 4
  %21 = load i32, ptr %mode.addr.i64, align 4
  %and1.i71 = and i32 %21, 2
  %tobool2.i72.not = icmp eq i32 %and1.i71, 0
  br i1 %tobool2.i72.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_9.exit, label %if.then3.i75

if.then3.i75:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_8.exit
  %22 = load i32, ptr %out.i66, align 4
  %xor.i74 = xor i32 %22, 14
  store i32 %xor.i74, ptr %out.i66, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_9.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_8.exit, %if.then3.i75
  %23 = load i32, ptr %out.i66, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i64)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i66)
  %24 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %24, %23
  store i32 %add31, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %25, 3
  %and33 = and i32 %25, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i78)
  store i32 %and32, ptr %mode.addr.i76, align 4
  store i32 %and33, ptr %out.i78, align 4
  %and.i79 = and i32 %25, 1
  %tobool.i80.not = icmp eq i32 %and.i79, 0
  br i1 %tobool.i80.not, label %if.end.i85, label %if.then.i82

if.then.i82:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_9.exit
  %26 = load i32, ptr %out.i78, align 4
  %add.i81 = add nsw i32 %26, 7
  store i32 %add.i81, ptr %out.i78, align 4
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then.i82, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_9.exit
  %27 = load i32, ptr %mode.addr.i76, align 4
  %and1.i83 = and i32 %27, 2
  %tobool2.i84.not = icmp eq i32 %and1.i83, 0
  br i1 %tobool2.i84.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit, label %if.then3.i87

if.then3.i87:                                     ; preds = %if.end.i85
  %28 = load i32, ptr %out.i78, align 4
  %xor.i86 = xor i32 %28, 14
  store i32 %xor.i86, ptr %out.i78, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit: ; preds = %if.end.i85, %if.then3.i87
  %29 = load i32, ptr %out.i78, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i76)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i78)
  %30 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %30, %29
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef 2)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %31, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i90)
  store i32 %and38, ptr %mode.addr.i88, align 4
  store i32 6, ptr %out.i90, align 4
  %and.i91 = and i32 %31, 1
  %tobool.i92.not = icmp eq i32 %and.i91, 0
  br i1 %tobool.i92.not, label %if.end.i97, label %if.then.i94

if.then.i94:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit
  %32 = load i32, ptr %out.i90, align 4
  %add.i93 = add nsw i32 %32, 7
  store i32 %add.i93, ptr %out.i90, align 4
  br label %if.end.i97

if.end.i97:                                       ; preds = %if.then.i94, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_10.exit
  %33 = load i32, ptr %mode.addr.i88, align 4
  %and1.i95 = and i32 %33, 2
  %tobool2.i96.not = icmp eq i32 %and1.i95, 0
  br i1 %tobool2.i96.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit, label %if.then3.i99

if.then3.i99:                                     ; preds = %if.end.i97
  %34 = load i32, ptr %out.i90, align 4
  %xor.i98 = xor i32 %34, 14
  store i32 %xor.i98, ptr %out.i90, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_030_12.exit: ; preds = %if.end.i97, %if.then3.i99
  %35 = load i32, ptr %out.i90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i88)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i90)
  %36 = load i32, ptr %total, align 4
  %xor40 = xor i32 %36, %35
  store i32 %xor40, ptr %total, align 4
  ret i32 %xor40
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_030_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 9
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 10
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -1
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 11
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -2
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 12
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -3
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_030_large_bi(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 47
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 48
  %shr3 = ashr exact i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 49
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 50
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 51
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 52
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 53
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 54
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_030_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef %sub1)
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
