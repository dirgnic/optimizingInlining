; ModuleID = './out/rewritten_ir/teacher_growth_budget/source_snapshot_DCMTK_generated_inlining_generated_046.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_046.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_046_kernel(i32 noundef %x) #0 {
entry:
  %x.addr.i41 = alloca i32, align 4
  %y.i42 = alloca i32, align 4
  %x.addr.i31 = alloca i32, align 4
  %y.i32 = alloca i32, align 4
  %x.addr.i21 = alloca i32, align 4
  %y.i22 = alloca i32, align 4
  %x.addr.i11 = alloca i32, align 4
  %y.i12 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %y.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  %call = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and, i32 noundef %x)
  store i32 %call, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 %add2, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %x, 7
  store i32 %add.i, ptr %y.i, align 4
  %and.i = and i32 %add2, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr %x.addr.i, align 4
  %shr.i = ashr i32 %0, 1
  %1 = load i32, ptr %y.i, align 4
  %add1.i = add nsw i32 %1, %shr.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit

if.else.i:                                        ; preds = %entry
  %2 = load i32, ptr %y.i, align 4
  %sub.i = add nsw i32 %2, -2
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit: ; preds = %if.then.i, %if.else.i
  %storemerge = phi i32 [ %sub.i, %if.else.i ], [ %add1.i, %if.then.i ]
  store i32 %storemerge, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %3 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %3, %storemerge
  store i32 %add4, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %4, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  store i32 %add5, ptr %x.addr.i1, align 4
  %add.i3 = add nsw i32 %4, 9
  store i32 %add.i3, ptr %y.i2, align 4
  %and.i4 = and i32 %4, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.else.i10, label %if.then.i8

if.then.i8:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit
  %5 = load i32, ptr %x.addr.i1, align 4
  %shr.i6 = ashr i32 %5, 1
  %6 = load i32, ptr %y.i2, align 4
  %add1.i7 = add nsw i32 %6, %shr.i6
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit

if.else.i10:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_0.exit
  %7 = load i32, ptr %y.i2, align 4
  %sub.i9 = add nsw i32 %7, -3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit: ; preds = %if.then.i8, %if.else.i10
  %storemerge51 = phi i32 [ %sub.i9, %if.else.i10 ], [ %add1.i7, %if.then.i8 ]
  store i32 %storemerge51, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  %8 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %8, %storemerge51
  store i32 %add7, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %9, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i12)
  store i32 %add8, ptr %x.addr.i11, align 4
  %add.i13 = add nsw i32 %9, 11
  store i32 %add.i13, ptr %y.i12, align 4
  %and.i14 = and i32 %add8, 1
  %tobool.i15.not = icmp eq i32 %and.i14, 0
  br i1 %tobool.i15.not, label %if.else.i20, label %if.then.i18

if.then.i18:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit
  %10 = load i32, ptr %x.addr.i11, align 4
  %shr.i16 = ashr i32 %10, 1
  %11 = load i32, ptr %y.i12, align 4
  %add1.i17 = add nsw i32 %11, %shr.i16
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit

if.else.i20:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_1.exit
  %12 = load i32, ptr %y.i12, align 4
  %sub.i19 = add nsw i32 %12, -4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit: ; preds = %if.then.i18, %if.else.i20
  %storemerge52 = phi i32 [ %sub.i19, %if.else.i20 ], [ %add1.i17, %if.then.i18 ]
  store i32 %storemerge52, ptr %y.i12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i12)
  %13 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %13, %storemerge52
  store i32 %add10, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %14, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i22)
  store i32 %add11, ptr %x.addr.i21, align 4
  %add.i23 = add nsw i32 %14, 13
  store i32 %add.i23, ptr %y.i22, align 4
  %and.i24 = and i32 %14, 1
  %tobool.i25.not = icmp eq i32 %and.i24, 0
  br i1 %tobool.i25.not, label %if.else.i30, label %if.then.i28

if.then.i28:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit
  %15 = load i32, ptr %x.addr.i21, align 4
  %shr.i26 = ashr i32 %15, 1
  %16 = load i32, ptr %y.i22, align 4
  %add1.i27 = add nsw i32 %16, %shr.i26
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit

if.else.i30:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_2.exit
  %17 = load i32, ptr %y.i22, align 4
  %sub.i29 = add nsw i32 %17, -5
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit: ; preds = %if.then.i28, %if.else.i30
  %storemerge53 = phi i32 [ %sub.i29, %if.else.i30 ], [ %add1.i27, %if.then.i28 ]
  store i32 %storemerge53, ptr %y.i22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i22)
  %and13 = and i32 %storemerge53, 255
  %18 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %18, %and13
  store i32 %add14, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %19, 3
  %add16 = add nsw i32 %19, 5
  %call17 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and15, i32 noundef %add16)
  %add18 = add nsw i32 %add14, %call17
  store i32 %add18, ptr %total, align 4
  %add19 = add nsw i32 %19, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i32)
  store i32 %add19, ptr %x.addr.i31, align 4
  %add.i33 = add nsw i32 %19, 17
  store i32 %add.i33, ptr %y.i32, align 4
  %and.i34 = and i32 %19, 1
  %tobool.i35.not = icmp eq i32 %and.i34, 0
  br i1 %tobool.i35.not, label %if.else.i40, label %if.then.i38

if.then.i38:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit
  %20 = load i32, ptr %x.addr.i31, align 4
  %shr.i36 = ashr i32 %20, 1
  %21 = load i32, ptr %y.i32, align 4
  %add1.i37 = add nsw i32 %21, %shr.i36
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit

if.else.i40:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_3.exit
  %22 = load i32, ptr %y.i32, align 4
  %sub.i39 = add nsw i32 %22, -7
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit: ; preds = %if.then.i38, %if.else.i40
  %storemerge54 = phi i32 [ %sub.i39, %if.else.i40 ], [ %add1.i37, %if.then.i38 ]
  store i32 %storemerge54, ptr %y.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i32)
  %23 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %23, %storemerge54
  store i32 %add21, ptr %total, align 4
  %24 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %24, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i42)
  store i32 %add22, ptr %x.addr.i41, align 4
  %add.i43 = add nsw i32 %24, 19
  store i32 %add.i43, ptr %y.i42, align 4
  %and.i44 = and i32 %add22, 1
  %tobool.i45.not = icmp eq i32 %and.i44, 0
  br i1 %tobool.i45.not, label %if.else.i50, label %if.then.i48

if.then.i48:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit
  %25 = load i32, ptr %x.addr.i41, align 4
  %shr.i46 = ashr i32 %25, 1
  %26 = load i32, ptr %y.i42, align 4
  %add1.i47 = add nsw i32 %26, %shr.i46
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit

if.else.i50:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_4.exit
  %27 = load i32, ptr %y.i42, align 4
  %sub.i49 = add nsw i32 %27, -8
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_046_5.exit: ; preds = %if.then.i48, %if.else.i50
  %storemerge55 = phi i32 [ %sub.i49, %if.else.i50 ], [ %add1.i47, %if.then.i48 ]
  store i32 %storemerge55, ptr %y.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i42)
  %28 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %28, %storemerge55
  store i32 %add24, ptr %total, align 4
  %29 = load i32, ptr %x.addr, align 4
  %add25 = add nsw i32 %29, 8
  %call26 = call noundef i32 @_ZL18packet_046_large_ai(i32 noundef %add25)
  %add27 = add nsw i32 %add24, %call26
  store i32 %add27, ptr %total, align 4
  %add28 = add nsw i32 %29, 9
  %call29 = call noundef i32 @_ZL18packet_046_large_bi(i32 noundef %add28)
  %and30 = and i32 %call29, 255
  %add31 = add nsw i32 %add27, %and30
  store i32 %add31, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %30, 3
  %add33 = add nsw i32 %30, 10
  %call34 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and32, i32 noundef %add33)
  %add35 = add nsw i32 %add31, %call34
  store i32 %add35, ptr %total, align 4
  %add36 = add nsw i32 %30, 11
  %call37 = call noundef i32 @_ZL18packet_046_large_bi(i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  store i32 %add38, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %31, 3
  %add40 = add nsw i32 %31, 12
  %call41 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and39, i32 noundef %add40)
  %add42 = add nsw i32 %add38, %call41
  store i32 %add42, ptr %total, align 4
  %and43 = and i32 %31, 3
  %32 = load i32, ptr %x.addr, align 4
  %add44 = add nsw i32 %32, 13
  %call45 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and43, i32 noundef %add44)
  %add46 = add nsw i32 %add42, %call45
  store i32 %add46, ptr %total, align 4
  %call47 = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef 2)
  %and48 = and i32 %call47, 255
  %add49 = add nsw i32 %add46, %and48
  store i32 %add49, ptr %total, align 4
  %33 = load i32, ptr %x.addr, align 4
  %and50 = and i32 %33, 3
  %add51 = add nsw i32 %33, 15
  %call52 = call noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %and50, i32 noundef %add51)
  %add53 = add nsw i32 %add49, %call52
  store i32 %add53, ptr %total, align 4
  ret i32 %add53
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_046_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 1
  store i32 %add, ptr %t, align 4
  %cmp = icmp slt i32 %mode, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %1, 1
  %mul = mul nsw i32 %0, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_046_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 46
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 47
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 48
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 49
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 50
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 51
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 52
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 53
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  ret i32 %xor28
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_046_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 11
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
define internal noundef i32 @_ZL20packet_046_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_046_recursivei(i32 noundef %sub)
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
