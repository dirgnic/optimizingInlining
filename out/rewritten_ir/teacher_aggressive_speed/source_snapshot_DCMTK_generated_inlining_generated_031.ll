; ModuleID = './out/rewritten_ir/teacher_aggressive_speed/source_snapshot_DCMTK_generated_inlining_generated_031.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_031.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_031_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i56 = alloca i32, align 4
  %t.i58 = alloca i32, align 4
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
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 %and, ptr %mode.addr.i, align 4
  %add.i = add nsw i32 %x, 1
  store i32 %add.i, ptr %t.i, align 4
  %cmp.i = icmp ult i32 %and, 2
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %t.i, align 4
  %3 = load i32, ptr %mode.addr.i, align 4
  %sub.i = sub nsw i32 %2, %3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %mul.i, %cond.true.i ], [ %sub.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %4 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %4, %cond.i
  store i32 %add1, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %5, 1
  %call3 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add2)
  %add4 = add nsw i32 %add1, %call3
  store i32 %add4, ptr %total, align 4
  %and6 = and i32 %5, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit
  %6 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %6, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i3)
  store i32 %and7, ptr %mode.addr.i1, align 4
  %add.i4 = add nsw i32 %6, 3
  store i32 %add.i4, ptr %t.i3, align 4
  %cmp.i5 = icmp ult i32 %and7, 2
  br i1 %cmp.i5, label %cond.true.i8, label %cond.false.i10

cond.true.i8:                                     ; preds = %if.then
  %7 = load i32, ptr %t.i3, align 4
  %8 = load i32, ptr %mode.addr.i1, align 4
  %add1.i6 = add nsw i32 %8, 1
  %mul.i7 = mul nsw i32 %7, %add1.i6
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit

cond.false.i10:                                   ; preds = %if.then
  %9 = load i32, ptr %t.i3, align 4
  %10 = load i32, ptr %mode.addr.i1, align 4
  %sub.i9 = sub nsw i32 %9, %10
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit: ; preds = %cond.true.i8, %cond.false.i10
  %cond.i11 = phi i32 [ %mul.i7, %cond.true.i8 ], [ %sub.i9, %cond.false.i10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i3)
  %11 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %11, %cond.i11
  store i32 %add10, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_1.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_0.exit
  %call11 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %12 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %12, %call11
  store i32 %add12, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add13 = add nsw i32 %13, 4
  %call14 = call noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %add13)
  %add15 = add nsw i32 %add12, %call14
  store i32 %add15, ptr %total, align 4
  %14 = and i32 %13, 1
  %tobool18.not.not = icmp eq i32 %14, 0
  br i1 %tobool18.not.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %15 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %15, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i14)
  store i32 %and20, ptr %mode.addr.i12, align 4
  %add.i15 = add nsw i32 %15, 6
  store i32 %add.i15, ptr %t.i14, align 4
  %cmp.i16 = icmp ult i32 %and20, 2
  br i1 %cmp.i16, label %cond.true.i19, label %cond.false.i21

cond.true.i19:                                    ; preds = %if.then19
  %16 = load i32, ptr %t.i14, align 4
  %17 = load i32, ptr %mode.addr.i12, align 4
  %add1.i17 = add nsw i32 %17, 1
  %mul.i18 = mul nsw i32 %16, %add1.i17
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_3.exit

cond.false.i21:                                   ; preds = %if.then19
  %18 = load i32, ptr %t.i14, align 4
  %19 = load i32, ptr %mode.addr.i12, align 4
  %sub.i20 = sub nsw i32 %18, %19
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_3.exit: ; preds = %cond.true.i19, %cond.false.i21
  %cond.i22 = phi i32 [ %mul.i18, %cond.true.i19 ], [ %sub.i20, %cond.false.i21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i14)
  %20 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %20, %cond.i22
  store i32 %add23, ptr %total, align 4
  br label %if.end24

if.end24:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_3.exit, %if.end
  %21 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %21, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i25)
  store i32 %and25, ptr %mode.addr.i23, align 4
  %add.i26 = add nsw i32 %21, 7
  store i32 %add.i26, ptr %t.i25, align 4
  %cmp.i27 = icmp ult i32 %and25, 2
  br i1 %cmp.i27, label %cond.true.i30, label %cond.false.i32

cond.true.i30:                                    ; preds = %if.end24
  %22 = load i32, ptr %t.i25, align 4
  %23 = load i32, ptr %mode.addr.i23, align 4
  %add1.i28 = add nsw i32 %23, 1
  %mul.i29 = mul nsw i32 %22, %add1.i28
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_4.exit

cond.false.i32:                                   ; preds = %if.end24
  %24 = load i32, ptr %t.i25, align 4
  %25 = load i32, ptr %mode.addr.i23, align 4
  %sub.i31 = sub nsw i32 %24, %25
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_4.exit: ; preds = %cond.true.i30, %cond.false.i32
  %cond.i33 = phi i32 [ %mul.i29, %cond.true.i30 ], [ %sub.i31, %cond.false.i32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i25)
  %26 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %26, %cond.i33
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %27, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_4.exit
  %28 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %28, 8
  %call36 = call noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %add35)
  %29 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %29, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_4.exit
  %30 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %30, 9
  %call40 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add39)
  %31 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %31, %call40
  store i32 %add41, ptr %total, align 4
  %and42 = and i32 %30, 3
  %32 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i36)
  store i32 %and42, ptr %mode.addr.i34, align 4
  %add.i37 = add nsw i32 %32, 11
  store i32 %add.i37, ptr %t.i36, align 4
  %cmp.i38 = icmp ult i32 %and42, 2
  br i1 %cmp.i38, label %cond.true.i41, label %cond.false.i43

cond.true.i41:                                    ; preds = %if.end38
  %33 = load i32, ptr %t.i36, align 4
  %34 = load i32, ptr %mode.addr.i34, align 4
  %add1.i39 = add nsw i32 %34, 1
  %mul.i40 = mul nsw i32 %33, %add1.i39
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit

cond.false.i43:                                   ; preds = %if.end38
  %35 = load i32, ptr %t.i36, align 4
  %36 = load i32, ptr %mode.addr.i34, align 4
  %sub.i42 = sub nsw i32 %35, %36
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit: ; preds = %cond.true.i41, %cond.false.i43
  %cond.i44 = phi i32 [ %mul.i40, %cond.true.i41 ], [ %sub.i42, %cond.false.i43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i36)
  %37 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %37, %cond.i44
  store i32 %add45, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %39 = and i32 %38, 1
  %tobool48.not.not = icmp eq i32 %39, 0
  br i1 %tobool48.not.not, label %if.then49, label %if.end52

if.then49:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit
  %call50 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %40 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %40, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_6.exit
  %41 = load i32, ptr %x.addr, align 4
  %add53 = add nsw i32 %41, 12
  %call54 = call noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %add53)
  %42 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %42, %call54
  store i32 %add55, ptr %total, align 4
  %add56 = add nsw i32 %41, 13
  %call57 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add56)
  %add58 = add nsw i32 %add55, %call57
  store i32 %add58, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %and60 = and i32 %43, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.end52
  %44 = load i32, ptr %x.addr, align 4
  %and63 = and i32 %44, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i47)
  store i32 %and63, ptr %mode.addr.i45, align 4
  %add.i48 = add nsw i32 %44, 15
  store i32 %add.i48, ptr %t.i47, align 4
  %cmp.i49 = icmp ult i32 %and63, 2
  br i1 %cmp.i49, label %cond.true.i52, label %cond.false.i54

cond.true.i52:                                    ; preds = %if.then62
  %45 = load i32, ptr %t.i47, align 4
  %46 = load i32, ptr %mode.addr.i45, align 4
  %add1.i50 = add nsw i32 %46, 1
  %mul.i51 = mul nsw i32 %45, %add1.i50
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_8.exit

cond.false.i54:                                   ; preds = %if.then62
  %47 = load i32, ptr %t.i47, align 4
  %48 = load i32, ptr %mode.addr.i45, align 4
  %sub.i53 = sub nsw i32 %47, %48
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_8.exit: ; preds = %cond.true.i52, %cond.false.i54
  %cond.i55 = phi i32 [ %mul.i51, %cond.true.i52 ], [ %sub.i53, %cond.false.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i47)
  %49 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %49, %cond.i55
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_8.exit, %if.end52
  %50 = load i32, ptr %x.addr, align 4
  %and68 = and i32 %50, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i58)
  store i32 %and68, ptr %mode.addr.i56, align 4
  %add.i59 = add nsw i32 %50, 16
  store i32 %add.i59, ptr %t.i58, align 4
  %cmp.i60 = icmp ult i32 %and68, 2
  br i1 %cmp.i60, label %cond.true.i63, label %cond.false.i65

cond.true.i63:                                    ; preds = %if.end67
  %51 = load i32, ptr %t.i58, align 4
  %52 = load i32, ptr %mode.addr.i56, align 4
  %add1.i61 = add nsw i32 %52, 1
  %mul.i62 = mul nsw i32 %51, %add1.i61
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit

cond.false.i65:                                   ; preds = %if.end67
  %53 = load i32, ptr %t.i58, align 4
  %54 = load i32, ptr %mode.addr.i56, align 4
  %sub.i64 = sub nsw i32 %53, %54
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_031_9.exit: ; preds = %cond.true.i63, %cond.false.i65
  %cond.i66 = phi i32 [ %mul.i62, %cond.true.i63 ], [ %sub.i64, %cond.false.i65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i58)
  %55 = load i32, ptr %total, align 4
  %add71 = add nsw i32 %55, %cond.i66
  store i32 %add71, ptr %total, align 4
  ret i32 %add71
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %xor, 9
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
define internal noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_031_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 31
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 32
  %shr3 = ashr exact i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 33
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 34
  %shr11 = ashr exact i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 35
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 36
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 37
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 38
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
